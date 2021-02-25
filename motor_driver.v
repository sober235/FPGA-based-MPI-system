`timescale 1ns/1ps

module motor_driver(
    input clk,
	output reg ENA,
	output reg DIR,
	output reg PUL
    );	
	
always @( posedge clk )
	begin
		if(time_cnt <= 65300)
		time_cnt <= time_cnt + 1;
		else
		time_cnt <= 0;	
	end
	
	
 reg [15:0] time_cnt = 0 ;
 
	always @( posedge clk )
	   begin 
	          if ((time_cnt >= 1'b1) & (time_cnt <= 3200)) begin  // 左转5mm
			    ENA <= 1'b1;
				DIR <= 1'b1;
			    end
			  else if ((time_cnt > 3200) & (time_cnt <= 5700)) begin  //stop 1s
			    ENA <= 0;  //无脉冲输出
				DIR <= 0;
			    end
			  else if ((time_cnt > 5700) & (time_cnt <= 6020)) begin  //return direction run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			    end 
			  else if ((time_cnt > 6020) & (time_cnt <= 8520)) begin  //stop 1s
			    ENA <= 0; //无脉冲输出
				DIR <= 0;
			    end
			  else if ((time_cnt > 8520) & (time_cnt <= 8840)) begin  // run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			    end
			  else if ((time_cnt > 8840) & (time_cnt <= 11340)) begin  // stop 1s
			    ENA <= 0;
				DIR <= 0;
			    end
			  else if ((time_cnt > 11340) & (time_cnt <= 11660)) begin  // run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			    end
			  else if ((time_cnt > 11660) & (time_cnt <= 14160)) begin   //stop 1s
			    ENA <= 0;
				DIR <= 0;
			   end
			  else if ((time_cnt > 14160) & (time_cnt <= 14480)) begin    //run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			    end
			  else if ((time_cnt > 14480) & (time_cnt <= 16980)) begin   //stop 1s
			    ENA <= 0;
				DIR <= 0;
			    end
			  else if ((time_cnt > 16980) & (time_cnt <= 17300)) begin   //run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			    end
			  else if ((time_cnt > 17300) & (time_cnt <= 19800)) begin  //stop 1s
			    ENA <= 0;
				DIR <= 0;
			    end
			  else if ((time_cnt > 19800) & (time_cnt <= 20120)) begin  //run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			    end
			  else if ((time_cnt > 20120) & (time_cnt <= 22620)) begin  // stop 1s
			    ENA <= 0;
				DIR <= 0;
			    end
			  else if ((time_cnt > 22620) & (time_cnt <= 22940)) begin  // run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			    end
			  else if ((time_cnt > 22940) & (time_cnt <= 25440)) begin  // stop 1s
			    ENA <= 0;
			 	DIR <= 0;
			   end
			  else if ((time_cnt > 25440) & (time_cnt <= 25760)) begin  // run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			 end
			  else if ((time_cnt > 25760) & (time_cnt <= 28260)) begin  // stop 1s
			    ENA <= 0;
				DIR <= 0;
			   end 
			  else if ((time_cnt > 28260) & (time_cnt <= 28580)) begin  //run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			   end
			  else if ((time_cnt > 28580) & (time_cnt <= 31080)) begin  //stop 1s
			    ENA <= 0;
				DIR <= 0;
			   end
			  else if ((time_cnt > 31080) & (time_cnt <= 31400)) begin  //run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			   end
			  else if ((time_cnt > 31400) & (time_cnt <= 33900)) begin  //stop 1s
			    ENA <= 0;
				DIR <= 0;
			   end
			  else if ((time_cnt > 33900) & (time_cnt <= 34220)) begin  //run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			   end
			  else if ((time_cnt > 34220) & (time_cnt <= 36720)) begin  //stop 1s
			    ENA <= 0;
				DIR <= 0;
			   end
			  else if ((time_cnt > 36720) & (time_cnt <= 37040)) begin  //run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			   end
			  else if ((time_cnt > 37040) & (time_cnt <= 39540)) begin  //stop 1s
			    ENA <= 0;
				DIR <= 0;
			   end
			  else if ((time_cnt > 39540) & (time_cnt <= 39860)) begin // run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			   end
			  else if ((time_cnt > 39860) & (time_cnt <= 42360)) begin  //stop 1s
			    ENA <= 0;
				DIR <= 0;
			   end
			  else if ((time_cnt > 42360) & (time_cnt <= 42680)) begin  // run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			   end
			  else if ((time_cnt > 42680) & (time_cnt <= 45180)) begin  // stop 1s  
			    ENA <= 0;
				DIR <= 0;
			   end
			  else if ((time_cnt > 45180) & (time_cnt <= 45500)) begin  // run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			   end
			  else if ((time_cnt > 45500) & (time_cnt <= 48000)) begin // stop 1s
			    ENA <= 0;
				DIR <= 0;
			   end
			  else if ((time_cnt > 48000) & (time_cnt <= 48320)) begin  //run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			   end
			  else if ((time_cnt > 48320) & (time_cnt <= 50820)) begin  //stop 1s
			    ENA <= 0;
				DIR <= 0;
			   end
			  else if ((time_cnt > 50820) & (time_cnt <= 51140)) begin  // run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			   end
			  else if ((time_cnt > 51140) & (time_cnt <= 53640)) begin  //stop 1s
			    ENA <= 0;
				DIR <= 0;
			   end
			  else if ((time_cnt > 53640) & (time_cnt <= 53960)) begin  //run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			   end
			  else if ((time_cnt > 53960) & (time_cnt <= 56460)) begin  //stop 1s
			    ENA <= 0;
				DIR <= 0;
			   end
			  else if ((time_cnt > 56460) & (time_cnt <= 56780)) begin  //run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			   end
			  else if ((time_cnt > 56780) & (time_cnt <= 59280)) begin  //stop 1s
			    ENA <= 0;
				DIR <= 0;
			   end
			  else if ((time_cnt > 59280) & (time_cnt <= 59600)) begin  //  run 0.5mm
			    ENA <= 1'b1;
				DIR <= 0;
			   end
			   else if ((time_cnt > 59600) & (time_cnt <= 62100)) begin  // stop 1s
			    ENA <= 0;
				DIR <= 0;
			   end
			  else if((time_cnt > 62100) & (time_cnt <= 65300)) begin  //left run 5mm
			    ENA <= 1;
				DIR <= 1;
			  end
			  else			    
			    ENA <= 0;	
	end	
endmodule
