# RAM-DESIGN-USING-VLSI

COMPANY: CODTECH IT SOLUTIONS

NAME: POTHURAJU PRAKASH

INTERN ID: CTIS3676

DOMAIN: VLSIRATION

DURATION: 6 MONTHS

MENTOR: NEELA SANTOSH KUMAR

Description:

The waveform shown represents the simulation of a **synchronous RAM module** with both read and write operations, visualized using the EPWave tool. The signals displayed include `clk` (clock), `we` (write enable), `addr` (address), `din` (data input), and `dout` (data output). The simulation timeline spans from time 0 to 90,000 ps, clearly illustrating how the RAM behaves during write and read cycles.

At the beginning of the simulation (Time = 0), the write enable (`we`) is low, indicating that the RAM is in **read mode**. However, since no prior data has been written into memory, the output `dout` is undefined and represented as `xx`. The address is set to 0 and the input data is `00`, but no write operation occurs at this stage.

At Time = 10,000 ps, the write enable signal transitions to high (`we = 1`), initiating the **write operation phase**. At this moment, the address is 0 and the input data (`din`) is `A1`. On the rising edge of the clock, this value is written into memory location 0. However, because this is a synchronous RAM, the output does not immediately reflect the written data, and `dout` remains undefined (`xx`).

Similarly, at Time = 20,000 ps and 30,000 ps, additional write operations occur. At address 1, the value `B2` is written, and at address 2, the value `C3` is stored. During all these write cycles, `dout` remains undefined because the module prioritizes writing when `we` is high, and the read operation does not produce a valid output simultaneously.

At Time = 40,000 ps, the write enable signal is deasserted (`we = 0`), marking the transition from write mode to **read mode**. The address remains at 2, and the system prepares to read the stored data. Due to synchronous behavior, the output does not change immediately.

At Time = 45,000 ps, the first valid read occurs. The data stored at address 2, which is `C3`, appears at the output `dout`. This confirms that the previous write operation was successful. The delay between disabling write enable and observing valid output highlights the clock-dependent nature of synchronous RAM.

Subsequent time intervals demonstrate multiple read operations. At Time = 50,000 ps, the address changes to 0, but the output still shows the previous value (`C3`) due to the clock cycle delay. At Time = 55,000 ps, the correct value stored at address 0 (`A1`) appears at the output. This pattern continues for other addresses as well.

At Time = 60,000 ps and 65,000 ps, the address is set to 1, and the corresponding stored value `B2` is retrieved after one clock cycle delay. Similarly, at Time = 70,000 ps and 75,000 ps, the address is switched back to 2, and the output correctly reflects the value `C3`.

The waveform clearly demonstrates the fundamental characteristics of synchronous RAM:

* Write operations occur only when `we` is high.
* Read operations occur when `we` is low.
* Both read and write operations are synchronized with the clock.
* Output data is delayed by one clock cycle during read operations.

The presence of `xx` values during initial and write phases indicates undefined or uninitialized memory states, which is expected in simulation unless explicitly initialized.

Finally, the simulation ends at Time = 90,000 ps with the `$finish` command, indicating successful completion of the testbench execution.

Overall, this waveform effectively validates the correct functionality of the synchronous RAM design, confirming proper data storage and retrieval behavior across different memory addresses.

OUTPUT:
<img width="1774" height="887" alt="Image" src="https://github.com/user-attachments/assets/9378ce78-d375-4c64-913e-25fbfd8c7d0d" />

