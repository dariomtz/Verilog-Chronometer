`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: ITESO 
// Engineer:  dariomtz
//////////////////////////////////////////////////////////////////////////////////
module tensCounter(
        input clk, 
        input reset, 
        output [3:0] out
    );
	
    reg [3 : 0] counter;
	reg [3:0] num;

    always @ (negedge clk or posedge reset) begin

        if (reset) begin
            counter <= 0;
            num <= 0;

        end else begin
            counter <= counter + 1;

            if (counter == 4) begin
                counter <= 0;

                if (num == 5) begin
                    num <= 0;

                end else begin
                    num <= num + 1;
                end

            end

        end

    end
	
    assign out = num;
                      
endmodule