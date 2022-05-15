VERILOG = iverilog
TARGET = LFSR.vcd
TEMP = temp.vvp

$(TARGET) : $(TEMP)
	vvp $(TEMP)
	
$(TEMP): LFSR_tb.v LFSR.v 
	$(VERILOG) -o $(TEMP) LFSR_tb.v 
	
clean:
	-del $(TARGET)
	-del $(TEMP)