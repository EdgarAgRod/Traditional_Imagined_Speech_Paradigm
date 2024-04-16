function initialize(box)
	io.write("initialize has been called\n");
	dofile(box:get_config("${Path_Data}") .. "/plugins/stimulation/lua-stimulator-stim-codes.lua")
	box:log("Info", string.format('begin'))
end

-- Numeros Random
	nr = {0, 14, 36, 29, 10, 5, 26, 32, 12, 20, 38, 21, 8, 7, 3, 16, 39, 28, 18, 23, 19, 31, 15, 30, 34, 37, 9, 1, 11, 25, 2, 35, 6, 24, 13, 27, 22, 4, 40, 17, 33};


function process(box)
	-- Etiquetas
	local imagenes ={OVTK_StimulationId_Label_01,OVTK_StimulationId_Label_02,OVTK_StimulationId_Label_03,OVTK_StimulationId_Label_04,OVTK_StimulationId_Label_05}
	local sonido = {OVTK_StimulationId_Label_10}
	
	for i=1, 41, 1 do
		if nr[i]<1 then
			box:send_stimulation(1,imagenes[5], i*11.8 - 11.8, 1)   --Start stimulus image
		elseif nr[i]<11 then
			box:send_stimulation(1,imagenes[1], i*11.8 - 11.8, 1)   --Start stimulus image
		elseif nr[i]<21 then
			box:send_stimulation(1,imagenes[2], i*11.8 - 11.8, 1)   --Start stimulus image
		elseif nr[i]<31 then
			box:send_stimulation(1,imagenes[3], i*11.8 - 11.8, 1)   --Start stimulus image
		elseif nr[i]<41 then
			box:send_stimulation(1,imagenes[4], i*11.8 - 11.8, 1)   --Start stimulus image
		else
			error("invalid operation")
		end

		box:send_stimulation(1,imagenes[5],i*11.8 - 2, 0)   --Start black image ("word" image lasts 11.8-2 seconds)
		-- Beeps
		box:send_stimulation(1,sonido[1],i*11.8 - 11.8,0)   --Beep at 0s
		box:send_stimulation(1,sonido[1],i*11.8 -10.4,0)   --Beep at 1.4s
		box:send_stimulation(1,sonido[1],i*11.8 -9,0)   --Beep at 2.8s
		box:send_stimulation(1,sonido[1],i*11.8 -7.6,0) --Beep at 4.2s
		box:send_stimulation(1,sonido[1],i*11.8 -6.2,0) --Beep at 5.6s
	end
end