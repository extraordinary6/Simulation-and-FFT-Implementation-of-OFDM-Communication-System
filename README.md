![image](https://github.com/user-attachments/assets/46caa529-50df-4993-90f9-0073cbeced15)

# FFT Module Circuit Design

## 1. Original Circuit Design of the FFT Module
In this experiment, the original circuit design of the 64-point FFT module references Figure 12. The circuit is a 6-stage design, performing 64-, 32-, 16-, 8-, 4-, and 2-point FFT computations at each stage, with each stage comprising 32 butterfly operations.  
Since FFT requires complex number computations, the circuit separately processes the real and imaginary components.

---

## 2. Folded Set Design
To minimize the hardware area, a single folded set is used, consisting of a butterfly operation unit. This establishes a folding order of 32×6. The folding indices are arranged directly based on the computation sequence.

---

## 3. Folded Structure Data Path Design

### Data Input Design
- **Buffering:** A buffering mechanism is adopted for the 64 input data points. Separate buffers are used for the real and imaginary components.  
- **Quantization:** Input data is quantized using a (1-7-8) format.

### Twiddle Factor Design
- **Implementation:** Twiddle factors, which are trigonometric functions, are implemented using a lookup table (LUT).  
- **Quantization:** Twiddle factors are quantized in a (1-7-8) format.  
- **Optimization:** To reduce hardware usage, the LUT stores only 17 cosine values, with other trigonometric values derived using trigonometric transformations.

### Butterfly Operation Unit Design
- **Precision:** Full-width data representation is used, with a quantization format of (1-61-56).  
- **Operations:** Each butterfly unit performs one complex multiplication and two complex additions.  
- **Control Logic:** Data is retrieved from the input buffer and the twiddle factor LUT via control logic. The results (two complex numbers) are stored in specific positions in the data buffer.

### Data Output Design
- **Order:** Sequential input results in scrambled output, following a bit-reversed order.  
- **Control Logic:** The control logic ensures correct retrieval from the data buffer during output.  
- **Quantization:** FFT output is quantized as (1-13-2), while IFFT uses (1-7-8).

---

## 4. Control Logic Design for the Folded Structure
The control logic manages:
- **Data Buffer Indexing:** Accessing data in the buffer.  
- **Twiddle Factor Indexing:** Accessing values in the twiddle factor LUT.  
- **Output Management:** Managing output buffer indices during the output stage.  

### Counter Design
- **Intra-Stage Counter:** Counts the 32 butterfly operations within a stage.  
- **Inter-Stage Counter:** Counts the 6 FFT computation stages.

---

## 5. Key Path Optimization of the Folded Structure

### Key Path Components
The key path includes:
1. Data input module.  
2. Butterfly operation module.  
3. Data access module.  

This path is lengthy, especially with the folded structure, making the overall computation time excessive. 

### Pipelined Structure
A four-stage pipeline is implemented to optimize the critical path. The butterfly operation is divided into:
1. **Data Input:** Retrieving data for computation.  
2. **Multiplication:** Fixed-point multiplication of input data and twiddle factors (4 multiplications).  
3. **Addition:** Fixed-point addition (8 additions).  
4. **Data Write-Back:** Storing results in the data buffer.  

This four-stage pipeline effectively reduces the critical path length and improves computation efficiency.

# Interface define:

![image](https://github.com/user-attachments/assets/4e120318-040b-4afc-b75e-1646508d589d)
![image](https://github.com/user-attachments/assets/726f8b07-f4e1-438d-9ba4-ab270a6b45ea)

# Internal Signal Design for the FFT/IFFT Module

## 1. Control Counter Design
In the architecture, two counters—**intra-stage counter** and **inter-stage counter**—are used to control the module's state.  
- **Intra-Stage Counter:** Counts from 1 to 32 to manage operations within a stage.  
- **Inter-Stage Counter:** Counts from 0 to 5 to track progress across stages.  

These counters work together to control:  
- Input data indices.  
- Twiddle factor indices.  
- Data write-back indices for each stage's 32 butterfly operations.  

When the inter-stage counter reaches 6 and the intra-stage counter reaches 4, internal computations are complete. At this point:  
- The results are quantized (with IFFT requiring an additional conjugate operation).  
- Results are stored in `data_out_re` and `data_out_im` before output.  

An extra 64 cycles are required for this process, during which the inter-stage counter reaches 8, and the intra-stage counter reaches 4. Finally, the signal `data_out_valid` is asserted, indicating that the module can produce valid outputs.

---

## 2. Twiddle Factor Signal Design
Twiddle factors are implemented using a **lookup table (LUT)**, and the design includes two parts:  
- **LUT Design:** Stores cosine values for indices `x = 0–16` (corresponding to the range \( 0 \) to \( \frac{\pi}{2} \)).  
  - For the **real part**, when `x > 16`, the value is `-lut[32-x]`.  
  - For the **imaginary part**, when `x = 0–16`, the value is `-lut[16-x]`; when `x > 16`, it is `-lut[x-16]`.  
  - This approach minimizes storage requirements.  
- **Index Design:** Twiddle factor indices for each butterfly operation are determined jointly by the intra-stage and inter-stage counters.

---

## 3. Data Buffer Design
Buffers are used to store input data and intermediate computation results. The design includes:  

### Buffer Structure Design
- Separate buffers for real and imaginary parts, each with a width of **118 × 64 bits**.  

### Buffer Operation
- **Input Stage:** Input data is sequentially stored in the buffers under the control of input signals.  
- **Computation Stage:** Butterfly operation results are stored at indices specified by control signals.  
- **Output Stage:** Data is retrieved from buffer positions specified by reverse-bit order indices and sent to the output ports.  

### Index Design
The indices for data buffering are determined by the intra-stage and inter-stage counters.

---

## 4. Pipeline Design
A **four-stage pipeline structure** is introduced to optimize the architecture. The pipeline includes:

### Index Control Design
Manages buffer indices at each stage of the pipeline, ensuring proper data flow.

### Pipeline Registers Design
- **Data Preparation Registers:** Store four input data values (two real and two imaginary parts) for butterfly operations.  
- **Delay Registers:** Hold intermediate results (`re1` and `im1`) for synchronization.  
- **Multiplication Registers:** Store results of four fixed-point multiplications in the butterfly operation.  
- **Addition Registers:** Store results of eight fixed-point additions in the butterfly operation.

---

## 5. Output Signal Design
A **scrambled reverse-bit order output** method is adopted, with IFFT requiring an additional conjugate operation.  

### Index Design
- Output indices are determined by the intra-stage and inter-stage counters.  
- The indices are arranged in reverse-bit order to map to corresponding buffer data.  
- Once all data is processed and stored in the output port registers, the `data_out_valid` signal is asserted, indicating readiness for valid output.


