`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO 
// Engineer:  dariomtz
//////////////////////////////////////////////////////////////////////////////////
module minsCounter(
        input clk, 
        input reset, 
        output [3:0] out
    );
	
    reg [2 : 0] counter;
	reg [3:0] num;

    always @ (negedge clk or posedge reset) begin

        if (reset) begin
            counter <= 0;
            num <= 0;

        end else begin
            counter <= counter + 1;
            if (counter == 2) begin
                counter <= 0;

                if (num == 9) begin
                    num <= 0;

                end else begin
                    num <= num + 1;
                end

            end

        end

    end
	
    assign out = num;
                      
endmodule