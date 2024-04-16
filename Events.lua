function initialize(box)
	io.write("initialize has been called\n");
	dofile(box:get_config("${Path_Data}") .. "/plugins/stimulation/lua-stimulator-stim-codes.lua")
	box:log("Info", string.format('begin'))
end


-- Orden de las palabras
nr = {0, 14, 36, 29, 10, 5, 26, 32, 12, 20, 38, 21, 8, 7, 3, 16, 39, 28, 18, 23, 19, 31, 15, 30, 34, 37, 9, 1, 11, 25, 2, 35, 6, 24, 13, 27, 22, 4, 40, 17, 33};



function process(box)
	-- Etiquetas
    for i=1, 41, 1 do
      if nr[i]<1 then
		    box:send_stimulation(1, OVTK_StimulationId_Label_05 ,  i*11.8 - 6.2, 0)
            box:send_stimulation(1, OVTK_StimulationId_Label_05 , i*11.8 - 4.8, 0)
            box:send_stimulation(1, OVTK_StimulationId_Label_05 , i*11.8 - 3.4, 0)
		elseif nr[i]<11 then
			box:send_stimulation(1, OVTK_StimulationId_Label_01 ,  i*11.8 - 6.2, 0)
            box:send_stimulation(1, OVTK_StimulationId_Label_01 , i*11.8 - 4.8, 0)
            box:send_stimulation(1, OVTK_StimulationId_Label_01 , i*11.8 - 3.4, 0)
		elseif nr[i]<21 then
			box:send_stimulation(1, OVTK_StimulationId_Label_02 ,  i*11.8 - 6.2, 0)
            box:send_stimulation(1, OVTK_StimulationId_Label_02 , i*11.8 - 4.8, 0)
            box:send_stimulation(1, OVTK_StimulationId_Label_02 , i*11.8 - 3.4, 0)
		elseif nr[i]<31 then
			box:send_stimulation(1, OVTK_StimulationId_Label_03 ,  i*11.8 - 6.2, 0)
            box:send_stimulation(1, OVTK_StimulationId_Label_03 , i*11.8 - 4.8, 0)
            box:send_stimulation(1, OVTK_StimulationId_Label_03 , i*11.8 - 3.4, 0)
		elseif nr[i]<41 then
			box:send_stimulation(1, OVTK_StimulationId_Label_04 ,  i*11.8 - 6.2, 0)
            box:send_stimulation(1, OVTK_StimulationId_Label_04 , i*11.8 - 4.8, 0)
            box:send_stimulation(1, OVTK_StimulationId_Label_04 , i*11.8 - 3.4, 0)
		else
			error("invalid operation")
		end
    end

	-- used to cause the acquisition scenario to stop
	box:send_stimulation(1, OVTK_StimulationId_ExperimentStop, 500 , 0)
end