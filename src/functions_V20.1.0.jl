# Julia wrapper for header: NIDAQmx.h
# Automatically generated using Clang.jl


function DAQmxLoadTask(taskName, taskHandle)
    @threadcall((:DAQmxLoadTask, NIDAQmx), int32, (Ptr{UInt8}, Ptr{TaskHandle}), taskName, taskHandle)
end

function DAQmxCreateTask(taskName, taskHandle)
    @threadcall((:DAQmxCreateTask, NIDAQmx), int32, (Ptr{UInt8}, Ptr{TaskHandle}), taskName, taskHandle)
end

function DAQmxAddGlobalChansToTask(taskHandle, channelNames)
    @threadcall((:DAQmxAddGlobalChansToTask, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channelNames)
end

function DAQmxStartTask(taskHandle)
    @threadcall((:DAQmxStartTask, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxStopTask(taskHandle)
    @threadcall((:DAQmxStopTask, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxClearTask(taskHandle)
    @threadcall((:DAQmxClearTask, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxWaitUntilTaskDone(taskHandle, timeToWait)
    @threadcall((:DAQmxWaitUntilTaskDone, NIDAQmx), int32, (TaskHandle, float64), taskHandle, timeToWait)
end

function DAQmxWaitForValidTimestamp(taskHandle, timestampEvent, timeout, timestamp)
    @threadcall((:DAQmxWaitForValidTimestamp, NIDAQmx), int32, (TaskHandle, int32, float64, Ptr{CVIAbsoluteTime}), taskHandle, timestampEvent, timeout, timestamp)
end

function DAQmxIsTaskDone(taskHandle, isTaskDone)
    @threadcall((:DAQmxIsTaskDone, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, isTaskDone)
end

function DAQmxTaskControl(taskHandle, action)
    @threadcall((:DAQmxTaskControl, NIDAQmx), int32, (TaskHandle, int32), taskHandle, action)
end

function DAQmxGetNthTaskChannel(taskHandle, index, buffer, bufferSize)
    @threadcall((:DAQmxGetNthTaskChannel, NIDAQmx), int32, (TaskHandle, uInt32, Ptr{UInt8}, int32), taskHandle, index, buffer, bufferSize)
end

function DAQmxGetNthTaskDevice(taskHandle, index, buffer, bufferSize)
    @threadcall((:DAQmxGetNthTaskDevice, NIDAQmx), int32, (TaskHandle, uInt32, Ptr{UInt8}, int32), taskHandle, index, buffer, bufferSize)
end

function DAQmxRegisterEveryNSamplesEvent(task, everyNsamplesEventType, nSamples, options, callbackFunction, callbackData)
    @threadcall((:DAQmxRegisterEveryNSamplesEvent, NIDAQmx), int32, (TaskHandle, int32, uInt32, uInt32, DAQmxEveryNSamplesEventCallbackPtr, Ptr{Cvoid}), task, everyNsamplesEventType, nSamples, options, callbackFunction, callbackData)
end

function DAQmxRegisterDoneEvent(task, options, callbackFunction, callbackData)
    @threadcall((:DAQmxRegisterDoneEvent, NIDAQmx), int32, (TaskHandle, uInt32, DAQmxDoneEventCallbackPtr, Ptr{Cvoid}), task, options, callbackFunction, callbackData)
end

function DAQmxRegisterSignalEvent(task, signalID, options, callbackFunction, callbackData)
    @threadcall((:DAQmxRegisterSignalEvent, NIDAQmx), int32, (TaskHandle, int32, uInt32, DAQmxSignalEventCallbackPtr, Ptr{Cvoid}), task, signalID, options, callbackFunction, callbackData)
end

function DAQmxCreateAIVoltageChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, customScaleName)
    @threadcall((:DAQmxCreateAIVoltageChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, customScaleName)
end

function DAQmxCreateAICurrentChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, shuntResistorLoc, extShuntResistorVal, customScaleName)
    @threadcall((:DAQmxCreateAICurrentChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, shuntResistorLoc, extShuntResistorVal, customScaleName)
end

function DAQmxCreateAIVoltageRMSChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, customScaleName)
    @threadcall((:DAQmxCreateAIVoltageRMSChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, customScaleName)
end

function DAQmxCreateAICurrentRMSChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, shuntResistorLoc, extShuntResistorVal, customScaleName)
    @threadcall((:DAQmxCreateAICurrentRMSChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, shuntResistorLoc, extShuntResistorVal, customScaleName)
end

function DAQmxCreateAIThrmcplChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, thermocoupleType, cjcSource, cjcVal, cjcChannel)
    @threadcall((:DAQmxCreateAIThrmcplChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, thermocoupleType, cjcSource, cjcVal, cjcChannel)
end

function DAQmxCreateAIRTDChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, rtdType, resistanceConfig, currentExcitSource, currentExcitVal, r0)
    @threadcall((:DAQmxCreateAIRTDChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, int32, float64, float64), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, rtdType, resistanceConfig, currentExcitSource, currentExcitVal, r0)
end

function DAQmxCreateAIThrmstrChanIex(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal, a, b, c)
    @threadcall((:DAQmxCreateAIThrmstrChanIex, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, float64, float64, float64), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal, a, b, c)
end

function DAQmxCreateAIThrmstrChanVex(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, voltageExcitSource, voltageExcitVal, a, b, c, r1)
    @threadcall((:DAQmxCreateAIThrmstrChanVex, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, float64, float64, float64, float64), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, voltageExcitSource, voltageExcitVal, a, b, c, r1)
end

function DAQmxCreateAIFreqVoltageChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, thresholdLevel, hysteresis, customScaleName)
    @threadcall((:DAQmxCreateAIFreqVoltageChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, float64, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, thresholdLevel, hysteresis, customScaleName)
end

function DAQmxCreateAIResistanceChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal, customScaleName)
    @threadcall((:DAQmxCreateAIResistanceChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateAIStrainGageChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, strainConfig, voltageExcitSource, voltageExcitVal, gageFactor, initialBridgeVoltage, nominalGageResistance, poissonRatio, leadWireResistance, customScaleName)
    @threadcall((:DAQmxCreateAIStrainGageChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, float64, float64, float64, float64, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, strainConfig, voltageExcitSource, voltageExcitVal, gageFactor, initialBridgeVoltage, nominalGageResistance, poissonRatio, leadWireResistance, customScaleName)
end

function DAQmxCreateAIRosetteStrainGageChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, rosetteType, gageOrientation, rosetteMeasTypes, numRosetteMeasTypes, strainConfig, voltageExcitSource, voltageExcitVal, gageFactor, nominalGageResistance, poissonRatio, leadWireResistance)
    @threadcall((:DAQmxCreateAIRosetteStrainGageChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, float64, Ptr{int32}, uInt32, int32, int32, float64, float64, float64, float64, float64), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, rosetteType, gageOrientation, rosetteMeasTypes, numRosetteMeasTypes, strainConfig, voltageExcitSource, voltageExcitVal, gageFactor, nominalGageResistance, poissonRatio, leadWireResistance)
end

function DAQmxCreateAIForceBridgeTwoPointLinChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, firstElectricalVal, secondElectricalVal, electricalUnits, firstPhysicalVal, secondPhysicalVal, physicalUnits, customScaleName)
    @threadcall((:DAQmxCreateAIForceBridgeTwoPointLinChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, float64, float64, float64, int32, float64, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, firstElectricalVal, secondElectricalVal, electricalUnits, firstPhysicalVal, secondPhysicalVal, physicalUnits, customScaleName)
end

function DAQmxCreateAIForceBridgeTableChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, electricalVals, numElectricalVals, electricalUnits, physicalVals, numPhysicalVals, physicalUnits, customScaleName)
    @threadcall((:DAQmxCreateAIForceBridgeTableChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, float64, Ptr{float64}, uInt32, int32, Ptr{float64}, uInt32, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, electricalVals, numElectricalVals, electricalUnits, physicalVals, numPhysicalVals, physicalUnits, customScaleName)
end

function DAQmxCreateAIForceBridgePolynomialChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, forwardCoeffs, numForwardCoeffs, reverseCoeffs, numReverseCoeffs, electricalUnits, physicalUnits, customScaleName)
    @threadcall((:DAQmxCreateAIForceBridgePolynomialChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, float64, Ptr{float64}, uInt32, Ptr{float64}, uInt32, int32, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, forwardCoeffs, numForwardCoeffs, reverseCoeffs, numReverseCoeffs, electricalUnits, physicalUnits, customScaleName)
end

function DAQmxCreateAIPressureBridgeTwoPointLinChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, firstElectricalVal, secondElectricalVal, electricalUnits, firstPhysicalVal, secondPhysicalVal, physicalUnits, customScaleName)
    @threadcall((:DAQmxCreateAIPressureBridgeTwoPointLinChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, float64, float64, float64, int32, float64, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, firstElectricalVal, secondElectricalVal, electricalUnits, firstPhysicalVal, secondPhysicalVal, physicalUnits, customScaleName)
end

function DAQmxCreateAIPressureBridgeTableChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, electricalVals, numElectricalVals, electricalUnits, physicalVals, numPhysicalVals, physicalUnits, customScaleName)
    @threadcall((:DAQmxCreateAIPressureBridgeTableChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, float64, Ptr{float64}, uInt32, int32, Ptr{float64}, uInt32, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, electricalVals, numElectricalVals, electricalUnits, physicalVals, numPhysicalVals, physicalUnits, customScaleName)
end

function DAQmxCreateAIPressureBridgePolynomialChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, forwardCoeffs, numForwardCoeffs, reverseCoeffs, numReverseCoeffs, electricalUnits, physicalUnits, customScaleName)
    @threadcall((:DAQmxCreateAIPressureBridgePolynomialChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, float64, Ptr{float64}, uInt32, Ptr{float64}, uInt32, int32, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, forwardCoeffs, numForwardCoeffs, reverseCoeffs, numReverseCoeffs, electricalUnits, physicalUnits, customScaleName)
end

function DAQmxCreateAITorqueBridgeTwoPointLinChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, firstElectricalVal, secondElectricalVal, electricalUnits, firstPhysicalVal, secondPhysicalVal, physicalUnits, customScaleName)
    @threadcall((:DAQmxCreateAITorqueBridgeTwoPointLinChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, float64, float64, float64, int32, float64, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, firstElectricalVal, secondElectricalVal, electricalUnits, firstPhysicalVal, secondPhysicalVal, physicalUnits, customScaleName)
end

function DAQmxCreateAITorqueBridgeTableChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, electricalVals, numElectricalVals, electricalUnits, physicalVals, numPhysicalVals, physicalUnits, customScaleName)
    @threadcall((:DAQmxCreateAITorqueBridgeTableChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, float64, Ptr{float64}, uInt32, int32, Ptr{float64}, uInt32, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, electricalVals, numElectricalVals, electricalUnits, physicalVals, numPhysicalVals, physicalUnits, customScaleName)
end

function DAQmxCreateAITorqueBridgePolynomialChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, forwardCoeffs, numForwardCoeffs, reverseCoeffs, numReverseCoeffs, electricalUnits, physicalUnits, customScaleName)
    @threadcall((:DAQmxCreateAITorqueBridgePolynomialChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, float64, Ptr{float64}, uInt32, Ptr{float64}, uInt32, int32, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, forwardCoeffs, numForwardCoeffs, reverseCoeffs, numReverseCoeffs, electricalUnits, physicalUnits, customScaleName)
end

function DAQmxCreateAIBridgeChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, customScaleName)
    @threadcall((:DAQmxCreateAIBridgeChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, nominalBridgeResistance, customScaleName)
end

function DAQmxCreateAIVoltageChanWithExcit(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, useExcitForScaling, customScaleName)
    @threadcall((:DAQmxCreateAIVoltageChanWithExcit, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, int32, int32, float64, bool32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, bridgeConfig, voltageExcitSource, voltageExcitVal, useExcitForScaling, customScaleName)
end

function DAQmxCreateAITempBuiltInSensorChan(taskHandle, physicalChannel, nameToAssignToChannel, units)
    @threadcall((:DAQmxCreateAITempBuiltInSensorChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32), taskHandle, physicalChannel, nameToAssignToChannel, units)
end

function DAQmxCreateAIAccelChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, currentExcitSource, currentExcitVal, customScaleName)
    @threadcall((:DAQmxCreateAIAccelChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateAIVelocityIEPEChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, currentExcitSource, currentExcitVal, customScaleName)
    @threadcall((:DAQmxCreateAIVelocityIEPEChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateAIForceIEPEChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, currentExcitSource, currentExcitVal, customScaleName)
    @threadcall((:DAQmxCreateAIForceIEPEChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateAIMicrophoneChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, units, micSensitivity, maxSndPressLevel, currentExcitSource, currentExcitVal, customScaleName)
    @threadcall((:DAQmxCreateAIMicrophoneChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, int32, float64, float64, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, units, micSensitivity, maxSndPressLevel, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateAIChargeChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, customScaleName)
    @threadcall((:DAQmxCreateAIChargeChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, customScaleName)
end

function DAQmxCreateAIAccelChargeChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, customScaleName)
    @threadcall((:DAQmxCreateAIAccelChargeChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, customScaleName)
end

function DAQmxCreateAIAccel4WireDCVoltageChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, voltageExcitSource, voltageExcitVal, useExcitForScaling, customScaleName)
    @threadcall((:DAQmxCreateAIAccel4WireDCVoltageChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, float64, int32, int32, float64, bool32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, sensitivity, sensitivityUnits, voltageExcitSource, voltageExcitVal, useExcitForScaling, customScaleName)
end

function DAQmxCreateAIPosLVDTChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, sensitivity, sensitivityUnits, voltageExcitSource, voltageExcitVal, voltageExcitFreq, ACExcitWireMode, customScaleName)
    @threadcall((:DAQmxCreateAIPosLVDTChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, float64, int32, int32, float64, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, sensitivity, sensitivityUnits, voltageExcitSource, voltageExcitVal, voltageExcitFreq, ACExcitWireMode, customScaleName)
end

function DAQmxCreateAIPosRVDTChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, sensitivity, sensitivityUnits, voltageExcitSource, voltageExcitVal, voltageExcitFreq, ACExcitWireMode, customScaleName)
    @threadcall((:DAQmxCreateAIPosRVDTChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, float64, int32, int32, float64, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, sensitivity, sensitivityUnits, voltageExcitSource, voltageExcitVal, voltageExcitFreq, ACExcitWireMode, customScaleName)
end

function DAQmxCreateAIPosEddyCurrProxProbeChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, sensitivity, sensitivityUnits, customScaleName)
    @threadcall((:DAQmxCreateAIPosEddyCurrProxProbeChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, sensitivity, sensitivityUnits, customScaleName)
end

function DAQmxCreateAIDeviceTempChan(taskHandle, physicalChannel, nameToAssignToChannel, units)
    @threadcall((:DAQmxCreateAIDeviceTempChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32), taskHandle, physicalChannel, nameToAssignToChannel, units)
end

function DAQmxCreateTEDSAIVoltageChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, customScaleName)
    @threadcall((:DAQmxCreateTEDSAIVoltageChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, customScaleName)
end

function DAQmxCreateTEDSAICurrentChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, shuntResistorLoc, extShuntResistorVal, customScaleName)
    @threadcall((:DAQmxCreateTEDSAICurrentChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, shuntResistorLoc, extShuntResistorVal, customScaleName)
end

function DAQmxCreateTEDSAIThrmcplChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, cjcSource, cjcVal, cjcChannel)
    @threadcall((:DAQmxCreateTEDSAIThrmcplChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, cjcSource, cjcVal, cjcChannel)
end

function DAQmxCreateTEDSAIRTDChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal)
    @threadcall((:DAQmxCreateTEDSAIRTDChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal)
end

function DAQmxCreateTEDSAIThrmstrChanIex(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal)
    @threadcall((:DAQmxCreateTEDSAIThrmstrChanIex, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal)
end

function DAQmxCreateTEDSAIThrmstrChanVex(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, voltageExcitSource, voltageExcitVal, r1)
    @threadcall((:DAQmxCreateTEDSAIThrmstrChanVex, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, float64), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, voltageExcitSource, voltageExcitVal, r1)
end

function DAQmxCreateTEDSAIResistanceChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal, customScaleName)
    @threadcall((:DAQmxCreateTEDSAIResistanceChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, resistanceConfig, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIStrainGageChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, initialBridgeVoltage, leadWireResistance, customScaleName)
    @threadcall((:DAQmxCreateTEDSAIStrainGageChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, float64, float64, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, initialBridgeVoltage, leadWireResistance, customScaleName)
end

function DAQmxCreateTEDSAIForceBridgeChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
    @threadcall((:DAQmxCreateTEDSAIForceBridgeChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIPressureBridgeChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
    @threadcall((:DAQmxCreateTEDSAIPressureBridgeChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
end

function DAQmxCreateTEDSAITorqueBridgeChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
    @threadcall((:DAQmxCreateTEDSAITorqueBridgeChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIBridgeChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
    @threadcall((:DAQmxCreateTEDSAIBridgeChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIVoltageChanWithExcit(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
    @threadcall((:DAQmxCreateTEDSAIVoltageChanWithExcit, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIAccelChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, currentExcitSource, currentExcitVal, customScaleName)
    @threadcall((:DAQmxCreateTEDSAIAccelChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIForceIEPEChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, currentExcitSource, currentExcitVal, customScaleName)
    @threadcall((:DAQmxCreateTEDSAIForceIEPEChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, minVal, maxVal, units, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIMicrophoneChan(taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, units, maxSndPressLevel, currentExcitSource, currentExcitVal, customScaleName)
    @threadcall((:DAQmxCreateTEDSAIMicrophoneChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, int32, float64, int32, float64, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, terminalConfig, units, maxSndPressLevel, currentExcitSource, currentExcitVal, customScaleName)
end

function DAQmxCreateTEDSAIPosLVDTChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, voltageExcitFreq, ACExcitWireMode, customScaleName)
    @threadcall((:DAQmxCreateTEDSAIPosLVDTChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, float64, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, voltageExcitFreq, ACExcitWireMode, customScaleName)
end

function DAQmxCreateTEDSAIPosRVDTChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, voltageExcitFreq, ACExcitWireMode, customScaleName)
    @threadcall((:DAQmxCreateTEDSAIPosRVDTChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, float64, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, voltageExcitSource, voltageExcitVal, voltageExcitFreq, ACExcitWireMode, customScaleName)
end

function DAQmxCreateAOVoltageChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, customScaleName)
    @threadcall((:DAQmxCreateAOVoltageChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, customScaleName)
end

function DAQmxCreateAOCurrentChan(taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, customScaleName)
    @threadcall((:DAQmxCreateAOCurrentChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, Ptr{UInt8}), taskHandle, physicalChannel, nameToAssignToChannel, minVal, maxVal, units, customScaleName)
end

function DAQmxCreateAOFuncGenChan(taskHandle, physicalChannel, nameToAssignToChannel, type, freq, amplitude, offset)
    @threadcall((:DAQmxCreateAOFuncGenChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, float64, float64, float64), taskHandle, physicalChannel, nameToAssignToChannel, type, freq, amplitude, offset)
end

function DAQmxCreateDIChan(taskHandle, lines, nameToAssignToLines, lineGrouping)
    @threadcall((:DAQmxCreateDIChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32), taskHandle, lines, nameToAssignToLines, lineGrouping)
end

function DAQmxCreateDOChan(taskHandle, lines, nameToAssignToLines, lineGrouping)
    @threadcall((:DAQmxCreateDOChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32), taskHandle, lines, nameToAssignToLines, lineGrouping)
end

function DAQmxCreateCIFreqChan(taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, edge, measMethod, measTime, divisor, customScaleName)
    @threadcall((:DAQmxCreateCIFreqChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, uInt32, Ptr{UInt8}), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, edge, measMethod, measTime, divisor, customScaleName)
end

function DAQmxCreateCIPeriodChan(taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, edge, measMethod, measTime, divisor, customScaleName)
    @threadcall((:DAQmxCreateCIPeriodChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, float64, uInt32, Ptr{UInt8}), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, edge, measMethod, measTime, divisor, customScaleName)
end

function DAQmxCreateCICountEdgesChan(taskHandle, counter, nameToAssignToChannel, edge, initialCount, countDirection)
    @threadcall((:DAQmxCreateCICountEdgesChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, uInt32, int32), taskHandle, counter, nameToAssignToChannel, edge, initialCount, countDirection)
end

function DAQmxCreateCIDutyCycleChan(taskHandle, counter, nameToAssignToChannel, minFreq, maxFreq, edge, customScaleName)
    @threadcall((:DAQmxCreateCIDutyCycleChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, Ptr{UInt8}), taskHandle, counter, nameToAssignToChannel, minFreq, maxFreq, edge, customScaleName)
end

function DAQmxCreateCIPulseWidthChan(taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, startingEdge, customScaleName)
    @threadcall((:DAQmxCreateCIPulseWidthChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, Ptr{UInt8}), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, startingEdge, customScaleName)
end

function DAQmxCreateCISemiPeriodChan(taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, customScaleName)
    @threadcall((:DAQmxCreateCISemiPeriodChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, Ptr{UInt8}), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, customScaleName)
end

function DAQmxCreateCITwoEdgeSepChan(taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, firstEdge, secondEdge, customScaleName)
    @threadcall((:DAQmxCreateCITwoEdgeSepChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, int32, Ptr{UInt8}), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units, firstEdge, secondEdge, customScaleName)
end

function DAQmxCreateCIPulseChanFreq(taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units)
    @threadcall((:DAQmxCreateCIPulseChanFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units)
end

function DAQmxCreateCIPulseChanTime(taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units)
    @threadcall((:DAQmxCreateCIPulseChanTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, units)
end

function DAQmxCreateCIPulseChanTicks(taskHandle, counter, nameToAssignToChannel, sourceTerminal, minVal, maxVal)
    @threadcall((:DAQmxCreateCIPulseChanTicks, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, Ptr{UInt8}, float64, float64), taskHandle, counter, nameToAssignToChannel, sourceTerminal, minVal, maxVal)
end

function DAQmxCreateCILinEncoderChan(taskHandle, counter, nameToAssignToChannel, decodingType, ZidxEnable, ZidxVal, ZidxPhase, units, distPerPulse, initialPos, customScaleName)
    @threadcall((:DAQmxCreateCILinEncoderChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, bool32, float64, int32, int32, float64, float64, Ptr{UInt8}), taskHandle, counter, nameToAssignToChannel, decodingType, ZidxEnable, ZidxVal, ZidxPhase, units, distPerPulse, initialPos, customScaleName)
end

function DAQmxCreateCIAngEncoderChan(taskHandle, counter, nameToAssignToChannel, decodingType, ZidxEnable, ZidxVal, ZidxPhase, units, pulsesPerRev, initialAngle, customScaleName)
    @threadcall((:DAQmxCreateCIAngEncoderChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, bool32, float64, int32, int32, uInt32, float64, Ptr{UInt8}), taskHandle, counter, nameToAssignToChannel, decodingType, ZidxEnable, ZidxVal, ZidxPhase, units, pulsesPerRev, initialAngle, customScaleName)
end

function DAQmxCreateCILinVelocityChan(taskHandle, counter, nameToAssignToChannel, minVal, maxVal, decodingType, units, distPerPulse, customScaleName)
    @threadcall((:DAQmxCreateCILinVelocityChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, float64, Ptr{UInt8}), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, decodingType, units, distPerPulse, customScaleName)
end

function DAQmxCreateCIAngVelocityChan(taskHandle, counter, nameToAssignToChannel, minVal, maxVal, decodingType, units, pulsesPerRev, customScaleName)
    @threadcall((:DAQmxCreateCIAngVelocityChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, float64, float64, int32, int32, uInt32, Ptr{UInt8}), taskHandle, counter, nameToAssignToChannel, minVal, maxVal, decodingType, units, pulsesPerRev, customScaleName)
end

function DAQmxCreateCIGPSTimestampChan(taskHandle, counter, nameToAssignToChannel, units, syncMethod, customScaleName)
    @threadcall((:DAQmxCreateCIGPSTimestampChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, int32, Ptr{UInt8}), taskHandle, counter, nameToAssignToChannel, units, syncMethod, customScaleName)
end

function DAQmxCreateCOPulseChanFreq(taskHandle, counter, nameToAssignToChannel, units, idleState, initialDelay, freq, dutyCycle)
    @threadcall((:DAQmxCreateCOPulseChanFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, int32, float64, float64, float64), taskHandle, counter, nameToAssignToChannel, units, idleState, initialDelay, freq, dutyCycle)
end

function DAQmxCreateCOPulseChanTime(taskHandle, counter, nameToAssignToChannel, units, idleState, initialDelay, lowTime, highTime)
    @threadcall((:DAQmxCreateCOPulseChanTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, int32, float64, float64, float64), taskHandle, counter, nameToAssignToChannel, units, idleState, initialDelay, lowTime, highTime)
end

function DAQmxCreateCOPulseChanTicks(taskHandle, counter, nameToAssignToChannel, sourceTerminal, idleState, initialDelay, lowTicks, highTicks)
    @threadcall((:DAQmxCreateCOPulseChanTicks, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, Ptr{UInt8}, int32, int32, int32, int32), taskHandle, counter, nameToAssignToChannel, sourceTerminal, idleState, initialDelay, lowTicks, highTicks)
end

function DAQmxGetAIChanCalCalDate(taskHandle, channelName, year, month, day, hour, minute)
    @threadcall((:DAQmxGetAIChanCalCalDate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}, Ptr{uInt32}, Ptr{uInt32}, Ptr{uInt32}, Ptr{uInt32}), taskHandle, channelName, year, month, day, hour, minute)
end

function DAQmxSetAIChanCalCalDate(taskHandle, channelName, year, month, day, hour, minute)
    @threadcall((:DAQmxSetAIChanCalCalDate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32, uInt32, uInt32, uInt32, uInt32), taskHandle, channelName, year, month, day, hour, minute)
end

function DAQmxGetAIChanCalExpDate(taskHandle, channelName, year, month, day, hour, minute)
    @threadcall((:DAQmxGetAIChanCalExpDate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}, Ptr{uInt32}, Ptr{uInt32}, Ptr{uInt32}, Ptr{uInt32}), taskHandle, channelName, year, month, day, hour, minute)
end

function DAQmxSetAIChanCalExpDate(taskHandle, channelName, year, month, day, hour, minute)
    @threadcall((:DAQmxSetAIChanCalExpDate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32, uInt32, uInt32, uInt32, uInt32), taskHandle, channelName, year, month, day, hour, minute)
end

function DAQmxResetChanAttribute(taskHandle, channel, attribute)
    @threadcall((:DAQmxResetChanAttribute, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, attribute)
end

function DAQmxCfgSampClkTiming(taskHandle, source, rate, activeEdge, sampleMode, sampsPerChan)
    @threadcall((:DAQmxCfgSampClkTiming, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64, int32, int32, uInt64), taskHandle, source, rate, activeEdge, sampleMode, sampsPerChan)
end

function DAQmxCfgHandshakingTiming(taskHandle, sampleMode, sampsPerChan)
    @threadcall((:DAQmxCfgHandshakingTiming, NIDAQmx), int32, (TaskHandle, int32, uInt64), taskHandle, sampleMode, sampsPerChan)
end

function DAQmxCfgBurstHandshakingTimingImportClock(taskHandle, sampleMode, sampsPerChan, sampleClkRate, sampleClkSrc, sampleClkActiveEdge, pauseWhen, readyEventActiveLevel)
    @threadcall((:DAQmxCfgBurstHandshakingTimingImportClock, NIDAQmx), int32, (TaskHandle, int32, uInt64, float64, Ptr{UInt8}, int32, int32, int32), taskHandle, sampleMode, sampsPerChan, sampleClkRate, sampleClkSrc, sampleClkActiveEdge, pauseWhen, readyEventActiveLevel)
end

function DAQmxCfgBurstHandshakingTimingExportClock(taskHandle, sampleMode, sampsPerChan, sampleClkRate, sampleClkOutpTerm, sampleClkPulsePolarity, pauseWhen, readyEventActiveLevel)
    @threadcall((:DAQmxCfgBurstHandshakingTimingExportClock, NIDAQmx), int32, (TaskHandle, int32, uInt64, float64, Ptr{UInt8}, int32, int32, int32), taskHandle, sampleMode, sampsPerChan, sampleClkRate, sampleClkOutpTerm, sampleClkPulsePolarity, pauseWhen, readyEventActiveLevel)
end

function DAQmxCfgChangeDetectionTiming(taskHandle, risingEdgeChan, fallingEdgeChan, sampleMode, sampsPerChan)
    @threadcall((:DAQmxCfgChangeDetectionTiming, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, uInt64), taskHandle, risingEdgeChan, fallingEdgeChan, sampleMode, sampsPerChan)
end

function DAQmxCfgImplicitTiming(taskHandle, sampleMode, sampsPerChan)
    @threadcall((:DAQmxCfgImplicitTiming, NIDAQmx), int32, (TaskHandle, int32, uInt64), taskHandle, sampleMode, sampsPerChan)
end

function DAQmxCfgPipelinedSampClkTiming(taskHandle, source, rate, activeEdge, sampleMode, sampsPerChan)
    @threadcall((:DAQmxCfgPipelinedSampClkTiming, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64, int32, int32, uInt64), taskHandle, source, rate, activeEdge, sampleMode, sampsPerChan)
end

function DAQmxResetTimingAttribute(taskHandle, attribute)
    @threadcall((:DAQmxResetTimingAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxResetTimingAttributeEx(taskHandle, deviceNames, attribute)
    @threadcall((:DAQmxResetTimingAttributeEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, deviceNames, attribute)
end

function DAQmxDisableStartTrig(taskHandle)
    @threadcall((:DAQmxDisableStartTrig, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxCfgDigEdgeStartTrig(taskHandle, triggerSource, triggerEdge)
    @threadcall((:DAQmxCfgDigEdgeStartTrig, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, triggerSource, triggerEdge)
end

function DAQmxCfgAnlgEdgeStartTrig(taskHandle, triggerSource, triggerSlope, triggerLevel)
    @threadcall((:DAQmxCfgAnlgEdgeStartTrig, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32, float64), taskHandle, triggerSource, triggerSlope, triggerLevel)
end

function DAQmxCfgAnlgMultiEdgeStartTrig(taskHandle, triggerSources, triggerSlopeArray, triggerLevelArray, arraySize)
    @threadcall((:DAQmxCfgAnlgMultiEdgeStartTrig, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}, Ptr{float64}, uInt32), taskHandle, triggerSources, triggerSlopeArray, triggerLevelArray, arraySize)
end

function DAQmxCfgAnlgWindowStartTrig(taskHandle, triggerSource, triggerWhen, windowTop, windowBottom)
    @threadcall((:DAQmxCfgAnlgWindowStartTrig, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32, float64, float64), taskHandle, triggerSource, triggerWhen, windowTop, windowBottom)
end

function DAQmxCfgTimeStartTrig(taskHandle, when, timescale)
    @threadcall((:DAQmxCfgTimeStartTrig, NIDAQmx), int32, (TaskHandle, CVIAbsoluteTime, int32), taskHandle, when, timescale)
end

function DAQmxCfgDigPatternStartTrig(taskHandle, triggerSource, triggerPattern, triggerWhen)
    @threadcall((:DAQmxCfgDigPatternStartTrig, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32), taskHandle, triggerSource, triggerPattern, triggerWhen)
end

function DAQmxDisableRefTrig(taskHandle)
    @threadcall((:DAQmxDisableRefTrig, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxCfgDigEdgeRefTrig(taskHandle, triggerSource, triggerEdge, pretriggerSamples)
    @threadcall((:DAQmxCfgDigEdgeRefTrig, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32, uInt32), taskHandle, triggerSource, triggerEdge, pretriggerSamples)
end

function DAQmxCfgAnlgEdgeRefTrig(taskHandle, triggerSource, triggerSlope, triggerLevel, pretriggerSamples)
    @threadcall((:DAQmxCfgAnlgEdgeRefTrig, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32, float64, uInt32), taskHandle, triggerSource, triggerSlope, triggerLevel, pretriggerSamples)
end

function DAQmxCfgAnlgMultiEdgeRefTrig(taskHandle, triggerSources, triggerSlopeArray, triggerLevelArray, pretriggerSamples, arraySize)
    @threadcall((:DAQmxCfgAnlgMultiEdgeRefTrig, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}, Ptr{float64}, uInt32, uInt32), taskHandle, triggerSources, triggerSlopeArray, triggerLevelArray, pretriggerSamples, arraySize)
end

function DAQmxCfgAnlgWindowRefTrig(taskHandle, triggerSource, triggerWhen, windowTop, windowBottom, pretriggerSamples)
    @threadcall((:DAQmxCfgAnlgWindowRefTrig, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32, float64, float64, uInt32), taskHandle, triggerSource, triggerWhen, windowTop, windowBottom, pretriggerSamples)
end

function DAQmxCfgDigPatternRefTrig(taskHandle, triggerSource, triggerPattern, triggerWhen, pretriggerSamples)
    @threadcall((:DAQmxCfgDigPatternRefTrig, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, int32, uInt32), taskHandle, triggerSource, triggerPattern, triggerWhen, pretriggerSamples)
end

function DAQmxResetTrigAttribute(taskHandle, attribute)
    @threadcall((:DAQmxResetTrigAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxReadAnalogF64(taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadAnalogF64, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ptr{float64}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadAnalogScalarF64(taskHandle, timeout, value, reserved)
    @threadcall((:DAQmxReadAnalogScalarF64, NIDAQmx), int32, (TaskHandle, float64, Ptr{float64}, Ptr{bool32}), taskHandle, timeout, value, reserved)
end

function DAQmxReadBinaryI16(taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadBinaryI16, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ptr{int16}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadBinaryU16(taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadBinaryU16, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ptr{uInt16}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadBinaryI32(taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadBinaryI32, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ptr{int32}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadBinaryU32(taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadBinaryU32, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ptr{uInt32}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadDigitalU8(taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadDigitalU8, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ptr{uInt8}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadDigitalU16(taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadDigitalU16, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ptr{uInt16}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadDigitalU32(taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadDigitalU32, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ptr{uInt32}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadDigitalScalarU32(taskHandle, timeout, value, reserved)
    @threadcall((:DAQmxReadDigitalScalarU32, NIDAQmx), int32, (TaskHandle, float64, Ptr{uInt32}, Ptr{bool32}), taskHandle, timeout, value, reserved)
end

function DAQmxReadDigitalLines(taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInBytes, sampsPerChanRead, numBytesPerSamp, reserved)
    @threadcall((:DAQmxReadDigitalLines, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ptr{uInt8}, uInt32, Ptr{int32}, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInBytes, sampsPerChanRead, numBytesPerSamp, reserved)
end

function DAQmxReadCounterF64(taskHandle, numSampsPerChan, timeout, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadCounterF64, NIDAQmx), int32, (TaskHandle, int32, float64, Ptr{float64}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadCounterU32(taskHandle, numSampsPerChan, timeout, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadCounterU32, NIDAQmx), int32, (TaskHandle, int32, float64, Ptr{uInt32}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadCounterF64Ex(taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadCounterF64Ex, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ptr{float64}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadCounterU32Ex(taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadCounterU32Ex, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ptr{uInt32}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, fillMode, readArray, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadCounterScalarF64(taskHandle, timeout, value, reserved)
    @threadcall((:DAQmxReadCounterScalarF64, NIDAQmx), int32, (TaskHandle, float64, Ptr{float64}, Ptr{bool32}), taskHandle, timeout, value, reserved)
end

function DAQmxReadCounterScalarU32(taskHandle, timeout, value, reserved)
    @threadcall((:DAQmxReadCounterScalarU32, NIDAQmx), int32, (TaskHandle, float64, Ptr{uInt32}, Ptr{bool32}), taskHandle, timeout, value, reserved)
end

function DAQmxReadCtrFreq(taskHandle, numSampsPerChan, timeout, interleaved, readArrayFrequency, readArrayDutyCycle, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadCtrFreq, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ptr{float64}, Ptr{float64}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, interleaved, readArrayFrequency, readArrayDutyCycle, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadCtrTime(taskHandle, numSampsPerChan, timeout, interleaved, readArrayHighTime, readArrayLowTime, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadCtrTime, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ptr{float64}, Ptr{float64}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, interleaved, readArrayHighTime, readArrayLowTime, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadCtrTicks(taskHandle, numSampsPerChan, timeout, interleaved, readArrayHighTicks, readArrayLowTicks, arraySizeInSamps, sampsPerChanRead, reserved)
    @threadcall((:DAQmxReadCtrTicks, NIDAQmx), int32, (TaskHandle, int32, float64, bool32, Ptr{uInt32}, Ptr{uInt32}, uInt32, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, interleaved, readArrayHighTicks, readArrayLowTicks, arraySizeInSamps, sampsPerChanRead, reserved)
end

function DAQmxReadCtrFreqScalar(taskHandle, timeout, frequency, dutyCycle, reserved)
    @threadcall((:DAQmxReadCtrFreqScalar, NIDAQmx), int32, (TaskHandle, float64, Ptr{float64}, Ptr{float64}, Ptr{bool32}), taskHandle, timeout, frequency, dutyCycle, reserved)
end

function DAQmxReadCtrTimeScalar(taskHandle, timeout, highTime, lowTime, reserved)
    @threadcall((:DAQmxReadCtrTimeScalar, NIDAQmx), int32, (TaskHandle, float64, Ptr{float64}, Ptr{float64}, Ptr{bool32}), taskHandle, timeout, highTime, lowTime, reserved)
end

function DAQmxReadCtrTicksScalar(taskHandle, timeout, highTicks, lowTicks, reserved)
    @threadcall((:DAQmxReadCtrTicksScalar, NIDAQmx), int32, (TaskHandle, float64, Ptr{uInt32}, Ptr{uInt32}, Ptr{bool32}), taskHandle, timeout, highTicks, lowTicks, reserved)
end

function DAQmxReadRaw(taskHandle, numSampsPerChan, timeout, readArray, arraySizeInBytes, sampsRead, numBytesPerSamp, reserved)
    @threadcall((:DAQmxReadRaw, NIDAQmx), int32, (TaskHandle, int32, float64, Ptr{Cvoid}, uInt32, Ptr{int32}, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, timeout, readArray, arraySizeInBytes, sampsRead, numBytesPerSamp, reserved)
end

function DAQmxGetNthTaskReadChannel(taskHandle, index, buffer, bufferSize)
    @threadcall((:DAQmxGetNthTaskReadChannel, NIDAQmx), int32, (TaskHandle, uInt32, Ptr{UInt8}, int32), taskHandle, index, buffer, bufferSize)
end

function DAQmxResetReadAttribute(taskHandle, attribute)
    @threadcall((:DAQmxResetReadAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxConfigureLogging(taskHandle, filePath, loggingMode, groupName, operation)
    @threadcall((:DAQmxConfigureLogging, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32, Ptr{UInt8}, int32), taskHandle, filePath, loggingMode, groupName, operation)
end

function DAQmxStartNewFile(taskHandle, filePath)
    @threadcall((:DAQmxStartNewFile, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, filePath)
end

function DAQmxWriteAnalogF64(taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
    @threadcall((:DAQmxWriteAnalogF64, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ptr{float64}, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteAnalogScalarF64(taskHandle, autoStart, timeout, value, reserved)
    @threadcall((:DAQmxWriteAnalogScalarF64, NIDAQmx), int32, (TaskHandle, bool32, float64, float64, Ptr{bool32}), taskHandle, autoStart, timeout, value, reserved)
end

function DAQmxWriteBinaryI16(taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
    @threadcall((:DAQmxWriteBinaryI16, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ptr{int16}, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteBinaryU16(taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
    @threadcall((:DAQmxWriteBinaryU16, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ptr{uInt16}, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteBinaryI32(taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
    @threadcall((:DAQmxWriteBinaryI32, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ptr{int32}, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteBinaryU32(taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
    @threadcall((:DAQmxWriteBinaryU32, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ptr{uInt32}, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteDigitalU8(taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
    @threadcall((:DAQmxWriteDigitalU8, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ptr{uInt8}, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteDigitalU16(taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
    @threadcall((:DAQmxWriteDigitalU16, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ptr{uInt16}, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteDigitalU32(taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
    @threadcall((:DAQmxWriteDigitalU32, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ptr{uInt32}, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteDigitalScalarU32(taskHandle, autoStart, timeout, value, reserved)
    @threadcall((:DAQmxWriteDigitalScalarU32, NIDAQmx), int32, (TaskHandle, bool32, float64, uInt32, Ptr{bool32}), taskHandle, autoStart, timeout, value, reserved)
end

function DAQmxWriteDigitalLines(taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
    @threadcall((:DAQmxWriteDigitalLines, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ptr{uInt8}, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxWriteCtrFreq(taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, frequency, dutyCycle, numSampsPerChanWritten, reserved)
    @threadcall((:DAQmxWriteCtrFreq, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ptr{float64}, Ptr{float64}, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, frequency, dutyCycle, numSampsPerChanWritten, reserved)
end

function DAQmxWriteCtrFreqScalar(taskHandle, autoStart, timeout, frequency, dutyCycle, reserved)
    @threadcall((:DAQmxWriteCtrFreqScalar, NIDAQmx), int32, (TaskHandle, bool32, float64, float64, float64, Ptr{bool32}), taskHandle, autoStart, timeout, frequency, dutyCycle, reserved)
end

function DAQmxWriteCtrTime(taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, highTime, lowTime, numSampsPerChanWritten, reserved)
    @threadcall((:DAQmxWriteCtrTime, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ptr{float64}, Ptr{float64}, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, highTime, lowTime, numSampsPerChanWritten, reserved)
end

function DAQmxWriteCtrTimeScalar(taskHandle, autoStart, timeout, highTime, lowTime, reserved)
    @threadcall((:DAQmxWriteCtrTimeScalar, NIDAQmx), int32, (TaskHandle, bool32, float64, float64, float64, Ptr{bool32}), taskHandle, autoStart, timeout, highTime, lowTime, reserved)
end

function DAQmxWriteCtrTicks(taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, highTicks, lowTicks, numSampsPerChanWritten, reserved)
    @threadcall((:DAQmxWriteCtrTicks, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, bool32, Ptr{uInt32}, Ptr{uInt32}, Ptr{int32}, Ptr{bool32}), taskHandle, numSampsPerChan, autoStart, timeout, dataLayout, highTicks, lowTicks, numSampsPerChanWritten, reserved)
end

function DAQmxWriteCtrTicksScalar(taskHandle, autoStart, timeout, highTicks, lowTicks, reserved)
    @threadcall((:DAQmxWriteCtrTicksScalar, NIDAQmx), int32, (TaskHandle, bool32, float64, uInt32, uInt32, Ptr{bool32}), taskHandle, autoStart, timeout, highTicks, lowTicks, reserved)
end

function DAQmxWriteRaw(taskHandle, numSamps, autoStart, timeout, writeArray, sampsPerChanWritten, reserved)
    @threadcall((:DAQmxWriteRaw, NIDAQmx), int32, (TaskHandle, int32, bool32, float64, Ptr{Cvoid}, Ptr{int32}, Ptr{bool32}), taskHandle, numSamps, autoStart, timeout, writeArray, sampsPerChanWritten, reserved)
end

function DAQmxResetWriteAttribute(taskHandle, attribute)
    @threadcall((:DAQmxResetWriteAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxExportSignal(taskHandle, signalID, outputTerminal)
    @threadcall((:DAQmxExportSignal, NIDAQmx), int32, (TaskHandle, int32, Ptr{UInt8}), taskHandle, signalID, outputTerminal)
end

function DAQmxResetExportedSignalAttribute(taskHandle, attribute)
    @threadcall((:DAQmxResetExportedSignalAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxCreateLinScale(name, slope, yIntercept, preScaledUnits, scaledUnits)
    @threadcall((:DAQmxCreateLinScale, NIDAQmx), int32, (Ptr{UInt8}, float64, float64, int32, Ptr{UInt8}), name, slope, yIntercept, preScaledUnits, scaledUnits)
end

function DAQmxCreateMapScale(name, prescaledMin, prescaledMax, scaledMin, scaledMax, preScaledUnits, scaledUnits)
    @threadcall((:DAQmxCreateMapScale, NIDAQmx), int32, (Ptr{UInt8}, float64, float64, float64, float64, int32, Ptr{UInt8}), name, prescaledMin, prescaledMax, scaledMin, scaledMax, preScaledUnits, scaledUnits)
end

function DAQmxCreatePolynomialScale(name, forwardCoeffs, numForwardCoeffsIn, reverseCoeffs, numReverseCoeffsIn, preScaledUnits, scaledUnits)
    @threadcall((:DAQmxCreatePolynomialScale, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32, Ptr{float64}, uInt32, int32, Ptr{UInt8}), name, forwardCoeffs, numForwardCoeffsIn, reverseCoeffs, numReverseCoeffsIn, preScaledUnits, scaledUnits)
end

function DAQmxCreateTableScale(name, prescaledVals, numPrescaledValsIn, scaledVals, numScaledValsIn, preScaledUnits, scaledUnits)
    @threadcall((:DAQmxCreateTableScale, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32, Ptr{float64}, uInt32, int32, Ptr{UInt8}), name, prescaledVals, numPrescaledValsIn, scaledVals, numScaledValsIn, preScaledUnits, scaledUnits)
end

function DAQmxCalculateReversePolyCoeff(forwardCoeffs, numForwardCoeffsIn, minValX, maxValX, numPointsToCompute, reversePolyOrder, reverseCoeffs)
    @threadcall((:DAQmxCalculateReversePolyCoeff, NIDAQmx), int32, (Ptr{float64}, uInt32, float64, float64, int32, int32, Ptr{float64}), forwardCoeffs, numForwardCoeffsIn, minValX, maxValX, numPointsToCompute, reversePolyOrder, reverseCoeffs)
end

function DAQmxCfgInputBuffer(taskHandle, numSampsPerChan)
    @threadcall((:DAQmxCfgInputBuffer, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, numSampsPerChan)
end

function DAQmxCfgOutputBuffer(taskHandle, numSampsPerChan)
    @threadcall((:DAQmxCfgOutputBuffer, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, numSampsPerChan)
end

function DAQmxGetBufferAttribute(taskHandle, attribute, value)
    @threadcall((:DAQmxGetBufferAttribute, NIDAQmx), int32, (TaskHandle, int32, Ptr{Cvoid}), taskHandle, attribute, value)
end

function DAQmxResetBufferAttribute(taskHandle, attribute)
    @threadcall((:DAQmxResetBufferAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxSwitchCreateScanList(scanList, taskHandle)
    @threadcall((:DAQmxSwitchCreateScanList, NIDAQmx), int32, (Ptr{UInt8}, Ptr{TaskHandle}), scanList, taskHandle)
end

function DAQmxSwitchConnect(switchChannel1, switchChannel2, waitForSettling)
    @threadcall((:DAQmxSwitchConnect, NIDAQmx), int32, (Ptr{UInt8}, Ptr{UInt8}, bool32), switchChannel1, switchChannel2, waitForSettling)
end

function DAQmxSwitchConnectMulti(connectionList, waitForSettling)
    @threadcall((:DAQmxSwitchConnectMulti, NIDAQmx), int32, (Ptr{UInt8}, bool32), connectionList, waitForSettling)
end

function DAQmxSwitchDisconnect(switchChannel1, switchChannel2, waitForSettling)
    @threadcall((:DAQmxSwitchDisconnect, NIDAQmx), int32, (Ptr{UInt8}, Ptr{UInt8}, bool32), switchChannel1, switchChannel2, waitForSettling)
end

function DAQmxSwitchDisconnectMulti(connectionList, waitForSettling)
    @threadcall((:DAQmxSwitchDisconnectMulti, NIDAQmx), int32, (Ptr{UInt8}, bool32), connectionList, waitForSettling)
end

function DAQmxSwitchDisconnectAll(deviceName, waitForSettling)
    @threadcall((:DAQmxSwitchDisconnectAll, NIDAQmx), int32, (Ptr{UInt8}, bool32), deviceName, waitForSettling)
end

function DAQmxSwitchSetTopologyAndReset(deviceName, newTopology)
    @threadcall((:DAQmxSwitchSetTopologyAndReset, NIDAQmx), int32, (Ptr{UInt8}, Ptr{UInt8}), deviceName, newTopology)
end

function DAQmxSwitchFindPath(switchChannel1, switchChannel2, path, pathBufferSize, pathStatus)
    @threadcall((:DAQmxSwitchFindPath, NIDAQmx), int32, (Ptr{UInt8}, Ptr{UInt8}, Ptr{UInt8}, uInt32, Ptr{int32}), switchChannel1, switchChannel2, path, pathBufferSize, pathStatus)
end

function DAQmxSwitchOpenRelays(relayList, waitForSettling)
    @threadcall((:DAQmxSwitchOpenRelays, NIDAQmx), int32, (Ptr{UInt8}, bool32), relayList, waitForSettling)
end

function DAQmxSwitchCloseRelays(relayList, waitForSettling)
    @threadcall((:DAQmxSwitchCloseRelays, NIDAQmx), int32, (Ptr{UInt8}, bool32), relayList, waitForSettling)
end

function DAQmxSwitchGetSingleRelayCount(relayName, count)
    @threadcall((:DAQmxSwitchGetSingleRelayCount, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), relayName, count)
end

function DAQmxSwitchGetMultiRelayCount(relayList, count, countArraySize, numRelayCountsRead)
    @threadcall((:DAQmxSwitchGetMultiRelayCount, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}, uInt32, Ptr{uInt32}), relayList, count, countArraySize, numRelayCountsRead)
end

function DAQmxSwitchGetSingleRelayPos(relayName, relayPos)
    @threadcall((:DAQmxSwitchGetSingleRelayPos, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), relayName, relayPos)
end

function DAQmxSwitchGetMultiRelayPos(relayList, relayPos, relayPosArraySize, numRelayPossRead)
    @threadcall((:DAQmxSwitchGetMultiRelayPos, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}, uInt32, Ptr{uInt32}), relayList, relayPos, relayPosArraySize, numRelayPossRead)
end

function DAQmxSwitchWaitForSettling(deviceName)
    @threadcall((:DAQmxSwitchWaitForSettling, NIDAQmx), int32, (Ptr{UInt8},), deviceName)
end

function DAQmxGetSwitchChanAttribute(switchChannelName, attribute, value)
    @threadcall((:DAQmxGetSwitchChanAttribute, NIDAQmx), int32, (Ptr{UInt8}, int32, Ptr{Cvoid}), switchChannelName, attribute, value)
end

function DAQmxGetSwitchScanAttribute(taskHandle, attribute, value)
    @threadcall((:DAQmxGetSwitchScanAttribute, NIDAQmx), int32, (TaskHandle, int32, Ptr{Cvoid}), taskHandle, attribute, value)
end

function DAQmxResetSwitchScanAttribute(taskHandle, attribute)
    @threadcall((:DAQmxResetSwitchScanAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxDisableAdvTrig(taskHandle)
    @threadcall((:DAQmxDisableAdvTrig, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxCfgDigEdgeAdvTrig(taskHandle, triggerSource, triggerEdge)
    @threadcall((:DAQmxCfgDigEdgeAdvTrig, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, triggerSource, triggerEdge)
end

function DAQmxSendSoftwareTrigger(taskHandle, triggerID)
    @threadcall((:DAQmxSendSoftwareTrigger, NIDAQmx), int32, (TaskHandle, int32), taskHandle, triggerID)
end

function DAQmxConnectTerms(sourceTerminal, destinationTerminal, signalModifiers)
    @threadcall((:DAQmxConnectTerms, NIDAQmx), int32, (Ptr{UInt8}, Ptr{UInt8}, int32), sourceTerminal, destinationTerminal, signalModifiers)
end

function DAQmxDisconnectTerms(sourceTerminal, destinationTerminal)
    @threadcall((:DAQmxDisconnectTerms, NIDAQmx), int32, (Ptr{UInt8}, Ptr{UInt8}), sourceTerminal, destinationTerminal)
end

function DAQmxTristateOutputTerm(outputTerminal)
    @threadcall((:DAQmxTristateOutputTerm, NIDAQmx), int32, (Ptr{UInt8},), outputTerminal)
end

function DAQmxResetDevice(deviceName)
    @threadcall((:DAQmxResetDevice, NIDAQmx), int32, (Ptr{UInt8},), deviceName)
end

function DAQmxSelfTestDevice(deviceName)
    @threadcall((:DAQmxSelfTestDevice, NIDAQmx), int32, (Ptr{UInt8},), deviceName)
end

function DAQmxCreateWatchdogTimerTaskEx(deviceName, taskName, taskHandle, timeout)
    @threadcall((:DAQmxCreateWatchdogTimerTaskEx, NIDAQmx), int32, (Ptr{UInt8}, Ptr{UInt8}, Ptr{TaskHandle}, float64), deviceName, taskName, taskHandle, timeout)
end

function DAQmxControlWatchdogTask(taskHandle, action)
    @threadcall((:DAQmxControlWatchdogTask, NIDAQmx), int32, (TaskHandle, int32), taskHandle, action)
end

function DAQmxCfgWatchdogAOExpirStates(taskHandle, channelNames, expirStateArray, outputTypeArray, arraySize)
    @threadcall((:DAQmxCfgWatchdogAOExpirStates, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, Ptr{int32}, uInt32), taskHandle, channelNames, expirStateArray, outputTypeArray, arraySize)
end

function DAQmxCfgWatchdogCOExpirStates(taskHandle, channelNames, expirStateArray, arraySize)
    @threadcall((:DAQmxCfgWatchdogCOExpirStates, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}, uInt32), taskHandle, channelNames, expirStateArray, arraySize)
end

function DAQmxCfgWatchdogDOExpirStates(taskHandle, channelNames, expirStateArray, arraySize)
    @threadcall((:DAQmxCfgWatchdogDOExpirStates, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}, uInt32), taskHandle, channelNames, expirStateArray, arraySize)
end

function DAQmxResetWatchdogAttribute(taskHandle, lines, attribute)
    @threadcall((:DAQmxResetWatchdogAttribute, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, lines, attribute)
end

function DAQmxSelfCal(deviceName)
    @threadcall((:DAQmxSelfCal, NIDAQmx), int32, (Ptr{UInt8},), deviceName)
end

function DAQmxPerformBridgeOffsetNullingCal(taskHandle, channel)
    @threadcall((:DAQmxPerformBridgeOffsetNullingCal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxPerformBridgeOffsetNullingCalEx(taskHandle, channel, skipUnsupportedChannels)
    @threadcall((:DAQmxPerformBridgeOffsetNullingCalEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, skipUnsupportedChannels)
end

function DAQmxPerformThrmcplLeadOffsetNullingCal(taskHandle, channel, skipUnsupportedChannels)
    @threadcall((:DAQmxPerformThrmcplLeadOffsetNullingCal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, skipUnsupportedChannels)
end

function DAQmxPerformStrainShuntCal(taskHandle, channel, shuntResistorValue, shuntResistorLocation, skipUnsupportedChannels)
    @threadcall((:DAQmxPerformStrainShuntCal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64, int32, bool32), taskHandle, channel, shuntResistorValue, shuntResistorLocation, skipUnsupportedChannels)
end

function DAQmxPerformStrainShuntCalEx(taskHandle, channel, shuntResistorValue, shuntResistorLocation, shuntResistorSelect, shuntResistorSource, skipUnsupportedChannels)
    @threadcall((:DAQmxPerformStrainShuntCalEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64, int32, int32, int32, bool32), taskHandle, channel, shuntResistorValue, shuntResistorLocation, shuntResistorSelect, shuntResistorSource, skipUnsupportedChannels)
end

function DAQmxPerformBridgeShuntCal(taskHandle, channel, shuntResistorValue, shuntResistorLocation, bridgeResistance, skipUnsupportedChannels)
    @threadcall((:DAQmxPerformBridgeShuntCal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64, int32, float64, bool32), taskHandle, channel, shuntResistorValue, shuntResistorLocation, bridgeResistance, skipUnsupportedChannels)
end

function DAQmxPerformBridgeShuntCalEx(taskHandle, channel, shuntResistorValue, shuntResistorLocation, shuntResistorSelect, shuntResistorSource, bridgeResistance, skipUnsupportedChannels)
    @threadcall((:DAQmxPerformBridgeShuntCalEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64, int32, int32, int32, float64, bool32), taskHandle, channel, shuntResistorValue, shuntResistorLocation, shuntResistorSelect, shuntResistorSource, bridgeResistance, skipUnsupportedChannels)
end

function DAQmxGetSelfCalLastDateAndTime(deviceName, year, month, day, hour, minute)
    @threadcall((:DAQmxGetSelfCalLastDateAndTime, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}, Ptr{uInt32}, Ptr{uInt32}, Ptr{uInt32}, Ptr{uInt32}), deviceName, year, month, day, hour, minute)
end

function DAQmxGetExtCalLastDateAndTime(deviceName, year, month, day, hour, minute)
    @threadcall((:DAQmxGetExtCalLastDateAndTime, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}, Ptr{uInt32}, Ptr{uInt32}, Ptr{uInt32}, Ptr{uInt32}), deviceName, year, month, day, hour, minute)
end

function DAQmxRestoreLastExtCalConst(deviceName)
    @threadcall((:DAQmxRestoreLastExtCalConst, NIDAQmx), int32, (Ptr{UInt8},), deviceName)
end

function DAQmxESeriesCalAdjust(calHandle, referenceVoltage)
    @threadcall((:DAQmxESeriesCalAdjust, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceVoltage)
end

function DAQmxMSeriesCalAdjust(calHandle, referenceVoltage)
    @threadcall((:DAQmxMSeriesCalAdjust, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceVoltage)
end

function DAQmxSSeriesCalAdjust(calHandle, referenceVoltage)
    @threadcall((:DAQmxSSeriesCalAdjust, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceVoltage)
end

function DAQmxSCBaseboardCalAdjust(calHandle, referenceVoltage)
    @threadcall((:DAQmxSCBaseboardCalAdjust, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceVoltage)
end

function DAQmxAOSeriesCalAdjust(calHandle, referenceVoltage)
    @threadcall((:DAQmxAOSeriesCalAdjust, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceVoltage)
end

function DAQmxXSeriesCalAdjust(calHandle, referenceVoltage)
    @threadcall((:DAQmxXSeriesCalAdjust, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceVoltage)
end

function DAQmxDeviceSupportsCal(deviceName, calSupported)
    @threadcall((:DAQmxDeviceSupportsCal, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), deviceName, calSupported)
end

function DAQmxInitExtCal(deviceName, password, calHandle)
    @threadcall((:DAQmxInitExtCal, NIDAQmx), int32, (Ptr{UInt8}, Ptr{UInt8}, Ptr{CalHandle}), deviceName, password, calHandle)
end

function DAQmxCloseExtCal(calHandle, action)
    @threadcall((:DAQmxCloseExtCal, NIDAQmx), int32, (CalHandle, int32), calHandle, action)
end

function DAQmxChangeExtCalPassword(deviceName, password, newPassword)
    @threadcall((:DAQmxChangeExtCalPassword, NIDAQmx), int32, (Ptr{UInt8}, Ptr{UInt8}, Ptr{UInt8}), deviceName, password, newPassword)
end

function DAQmxDSASetCalTemp(calHandle, temperature)
    @threadcall((:DAQmxDSASetCalTemp, NIDAQmx), int32, (CalHandle, float64), calHandle, temperature)
end

function DAQmxAdjustDSAAICal(calHandle, referenceVoltage)
    @threadcall((:DAQmxAdjustDSAAICal, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceVoltage)
end

function DAQmxAdjustDSAAICalEx(calHandle, referenceVoltage, inputsShorted)
    @threadcall((:DAQmxAdjustDSAAICalEx, NIDAQmx), int32, (CalHandle, float64, bool32), calHandle, referenceVoltage, inputsShorted)
end

function DAQmxAdjustDSAAICalWithGainAndCoupling(calHandle, coupling, gain, referenceVoltage)
    @threadcall((:DAQmxAdjustDSAAICalWithGainAndCoupling, NIDAQmx), int32, (CalHandle, int32, float64, float64), calHandle, coupling, gain, referenceVoltage)
end

function DAQmxAdjustDSAAOCal(calHandle, channel, requestedLowVoltage, actualLowVoltage, requestedHighVoltage, actualHighVoltage, gainSetting)
    @threadcall((:DAQmxAdjustDSAAOCal, NIDAQmx), int32, (CalHandle, uInt32, float64, float64, float64, float64, float64), calHandle, channel, requestedLowVoltage, actualLowVoltage, requestedHighVoltage, actualHighVoltage, gainSetting)
end

function DAQmxAdjust4610Cal(calHandle, channelName, gain, offset)
    @threadcall((:DAQmxAdjust4610Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64), calHandle, channelName, gain, offset)
end

function DAQmxAdjustDSATimebaseCal(calHandle, referenceFrequency)
    @threadcall((:DAQmxAdjustDSATimebaseCal, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceFrequency)
end

function DAQmxAdjustDSAAOTimebaseCal(calHandle, measuredFrequency, calComplete)
    @threadcall((:DAQmxAdjustDSAAOTimebaseCal, NIDAQmx), int32, (CalHandle, float64, Ptr{bool32}), calHandle, measuredFrequency, calComplete)
end

function DAQmxSetupDSAAOTimebaseCal(calHandle, expectedFrequency)
    @threadcall((:DAQmxSetupDSAAOTimebaseCal, NIDAQmx), int32, (CalHandle, Ptr{float64}), calHandle, expectedFrequency)
end

function DAQmxGet4463AdjustPoints(calHandle, terminalConfig, gain, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet4463AdjustPoints, NIDAQmx), int32, (CalHandle, int32, float64, Ptr{float64}, uInt32), calHandle, terminalConfig, gain, adjustmentPoints, bufferSize)
end

function DAQmxAdjust4463Cal(calHandle, channelNames, referenceVoltage)
    @threadcall((:DAQmxAdjust4463Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, referenceVoltage)
end

function DAQmxSetup4463Cal(calHandle, channelNames, terminalConfig, gain, outputVoltage)
    @threadcall((:DAQmxSetup4463Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32, float64, float64), calHandle, channelNames, terminalConfig, gain, outputVoltage)
end

function DAQmxSetup4480Cal(calHandle, channelNames, calMode)
    @threadcall((:DAQmxSetup4480Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32), calHandle, channelNames, calMode)
end

function DAQmxAdjustTIOTimebaseCal(calHandle, referenceFrequency)
    @threadcall((:DAQmxAdjustTIOTimebaseCal, NIDAQmx), int32, (CalHandle, float64), calHandle, referenceFrequency)
end

function DAQmxAdjust4204Cal(calHandle, channelNames, lowPassFreq, trackHoldEnabled, inputVal)
    @threadcall((:DAQmxAdjust4204Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, bool32, float64), calHandle, channelNames, lowPassFreq, trackHoldEnabled, inputVal)
end

function DAQmxAdjust4220Cal(calHandle, channelNames, gain, inputVal)
    @threadcall((:DAQmxAdjust4220Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64), calHandle, channelNames, gain, inputVal)
end

function DAQmxAdjust4224Cal(calHandle, channelNames, gain, inputVal)
    @threadcall((:DAQmxAdjust4224Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64), calHandle, channelNames, gain, inputVal)
end

function DAQmxAdjust4225Cal(calHandle, channelNames, gain, inputVal)
    @threadcall((:DAQmxAdjust4225Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64), calHandle, channelNames, gain, inputVal)
end

function DAQmxSetup433xCal(calHandle, channelNames, excitationVoltage)
    @threadcall((:DAQmxSetup433xCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, excitationVoltage)
end

function DAQmxAdjust433xCal(calHandle, refVoltage, refExcitation, shuntLocation)
    @threadcall((:DAQmxAdjust433xCal, NIDAQmx), int32, (CalHandle, float64, float64, int32), calHandle, refVoltage, refExcitation, shuntLocation)
end

function DAQmxSetup4339Cal(calHandle, channelNames, calMode, rangeMax, rangeMin, excitationVoltage)
    @threadcall((:DAQmxSetup4339Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32, float64, float64, float64), calHandle, channelNames, calMode, rangeMax, rangeMin, excitationVoltage)
end

function DAQmxAdjust4339Cal(calHandle, refVoltage)
    @threadcall((:DAQmxAdjust4339Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxGet4339CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet4339CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust4300Cal(calHandle, refVoltage)
    @threadcall((:DAQmxAdjust4300Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxSetup4302Cal(calHandle, channelNames, rangeMin, rangeMax)
    @threadcall((:DAQmxSetup4302Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64), calHandle, channelNames, rangeMin, rangeMax)
end

function DAQmxGet4302CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet4302CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust4302Cal(calHandle, refVoltage)
    @threadcall((:DAQmxAdjust4302Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxSetup4303Cal(calHandle, channelNames, rangeMin, rangeMax)
    @threadcall((:DAQmxSetup4303Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64), calHandle, channelNames, rangeMin, rangeMax)
end

function DAQmxGet4303CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet4303CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust4303Cal(calHandle, refVoltage)
    @threadcall((:DAQmxAdjust4303Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxSetup4304Cal(calHandle, channelNames, rangeMin, rangeMax)
    @threadcall((:DAQmxSetup4304Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64), calHandle, channelNames, rangeMin, rangeMax)
end

function DAQmxGet4304CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet4304CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust4304Cal(calHandle, refVoltage)
    @threadcall((:DAQmxAdjust4304Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxSetup4305Cal(calHandle, channelNames, rangeMin, rangeMax)
    @threadcall((:DAQmxSetup4305Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64), calHandle, channelNames, rangeMin, rangeMax)
end

function DAQmxGet4305CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet4305CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust4305Cal(calHandle, refVoltage)
    @threadcall((:DAQmxAdjust4305Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxAdjust4309Cal(calHandle, refVoltage)
    @threadcall((:DAQmxAdjust4309Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxAdjust4310Cal(calHandle, refVoltage)
    @threadcall((:DAQmxAdjust4310Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, refVoltage)
end

function DAQmxAdjust4353Cal(calHandle, channelNames, refVal)
    @threadcall((:DAQmxAdjust4353Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, refVal)
end

function DAQmxAdjust4357Cal(calHandle, channelNames, refVals, numRefVals)
    @threadcall((:DAQmxAdjust4357Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, Ptr{float64}, int32), calHandle, channelNames, refVals, numRefVals)
end

function DAQmxSetup4322Cal(calHandle, channelNames, outputType, outputVal)
    @threadcall((:DAQmxSetup4322Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32, float64), calHandle, channelNames, outputType, outputVal)
end

function DAQmxAdjust4322Cal(calHandle, channelNames, refVal)
    @threadcall((:DAQmxAdjust4322Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, refVal)
end

function DAQmxGet4322CalAdjustPoints(calHandle, outputType, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet4322CalAdjustPoints, NIDAQmx), int32, (CalHandle, int32, Ptr{float64}, uInt32), calHandle, outputType, adjustmentPoints, bufferSize)
end

function DAQmxConnectSCExpressCalAccChans(calHandle, channelNames, connection)
    @threadcall((:DAQmxConnectSCExpressCalAccChans, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, Ptr{UInt8}), calHandle, channelNames, connection)
end

function DAQmxDisconnectSCExpressCalAccChans(calHandle)
    @threadcall((:DAQmxDisconnectSCExpressCalAccChans, NIDAQmx), int32, (CalHandle,), calHandle)
end

function DAQmxGetPossibleSCExpressCalAccConnections(deviceName, channelNames, connections, connectionsBufferSize)
    @threadcall((:DAQmxGetPossibleSCExpressCalAccConnections, NIDAQmx), int32, (Ptr{UInt8}, Ptr{UInt8}, SafeCstring, uInt32), deviceName, channelNames, connections, connectionsBufferSize)
end

function DAQmxSetSCExpressCalAccBridgeOutput(calHandle, voltsPerVolt)
    @threadcall((:DAQmxSetSCExpressCalAccBridgeOutput, NIDAQmx), int32, (CalHandle, float64), calHandle, voltsPerVolt)
end

function DAQmxFieldDAQSetCalTemp(calHandle, temperature)
    @threadcall((:DAQmxFieldDAQSetCalTemp, NIDAQmx), int32, (CalHandle, float64), calHandle, temperature)
end

function DAQmxGet11601CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet11601CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust11601Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust11601Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet11603CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet11603CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust11603Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust11603Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxSetup11605Cal(calHandle, rangeMin, rangeMax)
    @threadcall((:DAQmxSetup11605Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, rangeMin, rangeMax)
end

function DAQmxGet11605CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet11605CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust11605Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust11605Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet11613CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet11613CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust11613Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust11613Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet11614CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet11614CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust11614Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust11614Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxSetup11634Cal(calHandle, rangeMin, rangeMax)
    @threadcall((:DAQmxSetup11634Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, rangeMin, rangeMax)
end

function DAQmxGet11634CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet11634CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust11634Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust11634Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxSetup11637Cal(calHandle, channelNames, bridgeConfig, voltageExcitation)
    @threadcall((:DAQmxSetup11637Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32, float64), calHandle, channelNames, bridgeConfig, voltageExcitation)
end

function DAQmxAdjust11637Cal(calHandle, value, actualReading, asFoundGainError, asFoundOffsetError)
    @threadcall((:DAQmxAdjust11637Cal, NIDAQmx), int32, (CalHandle, float64, Ptr{float64}, Ptr{float64}, Ptr{float64}), calHandle, value, actualReading, asFoundGainError, asFoundOffsetError)
end

function DAQmxGet9201CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9201CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxCSeriesSetCalTemp(calHandle, temperature)
    @threadcall((:DAQmxCSeriesSetCalTemp, NIDAQmx), int32, (CalHandle, float64), calHandle, temperature)
end

function DAQmxAdjust9201Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9201Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9202CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9202CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9202Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9202Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9203CalAdjustPoints(calHandle, rangeMin, rangeMax, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9203CalAdjustPoints, NIDAQmx), int32, (CalHandle, float64, float64, Ptr{float64}, uInt32), calHandle, rangeMin, rangeMax, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9203GainCal(calHandle, channelNames, rangeMin, rangeMax, value)
    @threadcall((:DAQmxAdjust9203GainCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64, float64), calHandle, channelNames, rangeMin, rangeMax, value)
end

function DAQmxAdjust9203OffsetCal(calHandle, channelNames, rangeMin, rangeMax)
    @threadcall((:DAQmxAdjust9203OffsetCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64), calHandle, channelNames, rangeMin, rangeMax)
end

function DAQmxAdjust9205Cal(calHandle, value)
    @threadcall((:DAQmxAdjust9205Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, value)
end

function DAQmxAdjust9206Cal(calHandle, value)
    @threadcall((:DAQmxAdjust9206Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, value)
end

function DAQmxGet9207CalAdjustPoints(calHandle, channelNames, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9207CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, Ptr{float64}, uInt32), calHandle, channelNames, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9207GainCal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9207GainCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxAdjust9207OffsetCal(calHandle, channelNames)
    @threadcall((:DAQmxAdjust9207OffsetCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}), calHandle, channelNames)
end

function DAQmxGet9208CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9208CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9208GainCal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9208GainCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxAdjust9208OffsetCal(calHandle, channelNames)
    @threadcall((:DAQmxAdjust9208OffsetCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}), calHandle, channelNames)
end

function DAQmxGet9209CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9209CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9209GainCal(calHandle, channelNames, terminalConfig, value)
    @threadcall((:DAQmxAdjust9209GainCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32, float64), calHandle, channelNames, terminalConfig, value)
end

function DAQmxAdjust9209OffsetCal(calHandle, channelNames)
    @threadcall((:DAQmxAdjust9209OffsetCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}), calHandle, channelNames)
end

function DAQmxAdjust9210Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9210Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxAdjust9211Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9211Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9212CalAdjustPoints(calHandle, channelNames, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9212CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, Ptr{float64}, uInt32), calHandle, channelNames, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9212Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9212Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9213CalAdjustPoints(calHandle, rangeMin, rangeMax, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9213CalAdjustPoints, NIDAQmx), int32, (CalHandle, float64, float64, Ptr{float64}, uInt32), calHandle, rangeMin, rangeMax, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9213Cal(calHandle, channelNames, rangeMin, rangeMax, value)
    @threadcall((:DAQmxAdjust9213Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64, float64), calHandle, channelNames, rangeMin, rangeMax, value)
end

function DAQmxGet9214CalAdjustPoints(calHandle, channelNames, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9214CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, Ptr{float64}, uInt32), calHandle, channelNames, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9214Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9214Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9215CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9215CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9215Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9215Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9216CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9216CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9216Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9216Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9217CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9217CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9217Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9217Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxSetup9218Cal(calHandle, channelNames, rangeMin, rangeMax, measType)
    @threadcall((:DAQmxSetup9218Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64, int32), calHandle, channelNames, rangeMin, rangeMax, measType)
end

function DAQmxGet9218CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9218CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9218Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9218Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxSetup9219Cal(calHandle, channelNames, rangeMin, rangeMax, measType, bridgeConfig)
    @threadcall((:DAQmxSetup9219Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64, int32, int32), calHandle, channelNames, rangeMin, rangeMax, measType, bridgeConfig)
end

function DAQmxGet9219CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9219CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9219Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9219Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9220CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9220CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9220Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9220Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9221CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9221CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9221Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9221Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9222CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9222CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9222Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9222Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9223CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9223CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9223Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9223Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9224CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9224CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9224Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9224Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9225CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9225CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9225Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9225Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9226CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9226CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9226Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9226Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9227CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9227CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9227Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9227Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9228CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9228CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9228Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9228Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9229CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9229CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9229Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9229Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9230CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9230CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9230Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9230Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9231CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9231CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9231Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9231Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9232CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9232CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9232Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9232Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9234CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9234CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9234GainCal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9234GainCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxAdjust9234OffsetCal(calHandle, channelNames)
    @threadcall((:DAQmxAdjust9234OffsetCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}), calHandle, channelNames)
end

function DAQmxGet9238CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9238CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9238Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9238Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9239CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9239CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9239Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9239Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9242CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9242CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9242Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxSetup9242Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxAdjust9242Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9242Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9244CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9244CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9244Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxSetup9244Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxAdjust9244Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9244Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9246CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9246CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9246Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9246Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9247CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9247CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9247Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9247Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9250CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9250CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9250Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9250Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9251CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9251CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9251Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9251Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9252CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9252CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9252Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9252Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9253CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9253CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{float64}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9253Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9253Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9260CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9260CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9260Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxSetup9260Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9260Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9260Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9262CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9262CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9262Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxSetup9262Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9262Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9262Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9263CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9263CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9263Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxSetup9263Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9263Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9263Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9264CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9264CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9264Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxSetup9264Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9264Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9264Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9265CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9265CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9265Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxSetup9265Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9265Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9265Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9266CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9266CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9266Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxSetup9266Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9266Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9266Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9269CalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9269CalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9269Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxSetup9269Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9269Cal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9269Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9628AICalAdjustPoints(calHandle, rangeMin, rangeMax, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9628AICalAdjustPoints, NIDAQmx), int32, (CalHandle, float64, float64, Ptr{float64}, uInt32), calHandle, rangeMin, rangeMax, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9628AICal(calHandle, channelNames, rangeMin, rangeMax, value)
    @threadcall((:DAQmxAdjust9628AICal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64, float64), calHandle, channelNames, rangeMin, rangeMax, value)
end

function DAQmxGet9629AICalAdjustPoints(calHandle, rangeMin, rangeMax, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9629AICalAdjustPoints, NIDAQmx), int32, (CalHandle, float64, float64, Ptr{float64}, uInt32), calHandle, rangeMin, rangeMax, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9629AICal(calHandle, channelNames, rangeMin, rangeMax, value)
    @threadcall((:DAQmxAdjust9629AICal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64, float64), calHandle, channelNames, rangeMin, rangeMax, value)
end

function DAQmxGet9638AICalAdjustPoints(calHandle, rangeMin, rangeMax, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9638AICalAdjustPoints, NIDAQmx), int32, (CalHandle, float64, float64, Ptr{float64}, uInt32), calHandle, rangeMin, rangeMax, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9638AICal(calHandle, channelNames, rangeMin, rangeMax, value)
    @threadcall((:DAQmxAdjust9638AICal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64, float64), calHandle, channelNames, rangeMin, rangeMax, value)
end

function DAQmxGet9628AOCalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9628AOCalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9628AOCal(calHandle, channelNames, value)
    @threadcall((:DAQmxSetup9628AOCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9628AOCal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9628AOCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9629AOCalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9629AOCalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9629AOCal(calHandle, channelNames, value)
    @threadcall((:DAQmxSetup9629AOCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9629AOCal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9629AOCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9638AOCalAdjustPoints(calHandle, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9638AOCalAdjustPoints, NIDAQmx), int32, (CalHandle, Ptr{int32}, uInt32), calHandle, adjustmentPoints, bufferSize)
end

function DAQmxSetup9638AOCal(calHandle, channelNames, value)
    @threadcall((:DAQmxSetup9638AOCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32), calHandle, channelNames, value)
end

function DAQmxAdjust9638AOCal(calHandle, channelNames, value)
    @threadcall((:DAQmxAdjust9638AOCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelNames, value)
end

function DAQmxGet9775CalAdjustPoints(calHandle, coupling, adjustmentPoints, bufferSize)
    @threadcall((:DAQmxGet9775CalAdjustPoints, NIDAQmx), int32, (CalHandle, uInt32, Ptr{float64}, uInt32), calHandle, coupling, adjustmentPoints, bufferSize)
end

function DAQmxAdjust9775Cal(calHandle, channelNames, value, coupling)
    @threadcall((:DAQmxAdjust9775Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, uInt32), calHandle, channelNames, value, coupling)
end

function DAQmxSetup1102Cal(calHandle, channelName, gain)
    @threadcall((:DAQmxSetup1102Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1102Cal(calHandle, refVoltage, measOutput)
    @threadcall((:DAQmxAdjust1102Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1104Cal(calHandle, channelName)
    @threadcall((:DAQmxSetup1104Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}), calHandle, channelName)
end

function DAQmxAdjust1104Cal(calHandle, refVoltage, measOutput)
    @threadcall((:DAQmxAdjust1104Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1112Cal(calHandle, channelName)
    @threadcall((:DAQmxSetup1112Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}), calHandle, channelName)
end

function DAQmxAdjust1112Cal(calHandle, refVoltage, measOutput)
    @threadcall((:DAQmxAdjust1112Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1122Cal(calHandle, channelName, gain)
    @threadcall((:DAQmxSetup1122Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1122Cal(calHandle, refVoltage, measOutput)
    @threadcall((:DAQmxAdjust1122Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1124Cal(calHandle, channelName, range, dacValue)
    @threadcall((:DAQmxSetup1124Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, int32, uInt32), calHandle, channelName, range, dacValue)
end

function DAQmxAdjust1124Cal(calHandle, measOutput)
    @threadcall((:DAQmxAdjust1124Cal, NIDAQmx), int32, (CalHandle, float64), calHandle, measOutput)
end

function DAQmxSetup1125Cal(calHandle, channelName, gain)
    @threadcall((:DAQmxSetup1125Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1125Cal(calHandle, refVoltage, measOutput)
    @threadcall((:DAQmxAdjust1125Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1126Cal(calHandle, channelName, upperFreqLimit)
    @threadcall((:DAQmxSetup1126Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelName, upperFreqLimit)
end

function DAQmxAdjust1126Cal(calHandle, refFreq, measOutput)
    @threadcall((:DAQmxAdjust1126Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refFreq, measOutput)
end

function DAQmxSetup1141Cal(calHandle, channelName, gain)
    @threadcall((:DAQmxSetup1141Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1141Cal(calHandle, refVoltage, measOutput)
    @threadcall((:DAQmxAdjust1141Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1142Cal(calHandle, channelName, gain)
    @threadcall((:DAQmxSetup1142Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1142Cal(calHandle, refVoltage, measOutput)
    @threadcall((:DAQmxAdjust1142Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1143Cal(calHandle, channelName, gain)
    @threadcall((:DAQmxSetup1143Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1143Cal(calHandle, refVoltage, measOutput)
    @threadcall((:DAQmxAdjust1143Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1502Cal(calHandle, channelName, gain)
    @threadcall((:DAQmxSetup1502Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1502Cal(calHandle, refVoltage, measOutput)
    @threadcall((:DAQmxAdjust1502Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1503Cal(calHandle, channelName, gain)
    @threadcall((:DAQmxSetup1503Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1503Cal(calHandle, refVoltage, measOutput)
    @threadcall((:DAQmxAdjust1503Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxAdjust1503CurrentCal(calHandle, channelName, measCurrent)
    @threadcall((:DAQmxAdjust1503CurrentCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelName, measCurrent)
end

function DAQmxSetup1520Cal(calHandle, channelName, gain)
    @threadcall((:DAQmxSetup1520Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust1520Cal(calHandle, refVoltage, measOutput)
    @threadcall((:DAQmxAdjust1520Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1521Cal(calHandle, channelName)
    @threadcall((:DAQmxSetup1521Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}), calHandle, channelName)
end

function DAQmxAdjust1521Cal(calHandle, refVoltage, measOutput)
    @threadcall((:DAQmxAdjust1521Cal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup153xCal(calHandle, channelName, gain)
    @threadcall((:DAQmxSetup153xCal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64), calHandle, channelName, gain)
end

function DAQmxAdjust153xCal(calHandle, refVoltage, measOutput)
    @threadcall((:DAQmxAdjust153xCal, NIDAQmx), int32, (CalHandle, float64, float64), calHandle, refVoltage, measOutput)
end

function DAQmxSetup1540Cal(calHandle, channelName, excitationVoltage, excitationFreq)
    @threadcall((:DAQmxSetup1540Cal, NIDAQmx), int32, (CalHandle, Ptr{UInt8}, float64, float64), calHandle, channelName, excitationVoltage, excitationFreq)
end

function DAQmxAdjust1540Cal(calHandle, refVoltage, measOutput, inputCalSource)
    @threadcall((:DAQmxAdjust1540Cal, NIDAQmx), int32, (CalHandle, float64, float64, int32), calHandle, refVoltage, measOutput, inputCalSource)
end

function DAQmxConfigureTEDS(physicalChannel, filePath)
    @threadcall((:DAQmxConfigureTEDS, NIDAQmx), int32, (Ptr{UInt8}, Ptr{UInt8}), physicalChannel, filePath)
end

function DAQmxClearTEDS(physicalChannel)
    @threadcall((:DAQmxClearTEDS, NIDAQmx), int32, (Ptr{UInt8},), physicalChannel)
end

function DAQmxWriteToTEDSFromArray(physicalChannel, bitStream, arraySize, basicTEDSOptions)
    @threadcall((:DAQmxWriteToTEDSFromArray, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt8}, uInt32, int32), physicalChannel, bitStream, arraySize, basicTEDSOptions)
end

function DAQmxWriteToTEDSFromFile(physicalChannel, filePath, basicTEDSOptions)
    @threadcall((:DAQmxWriteToTEDSFromFile, NIDAQmx), int32, (Ptr{UInt8}, Ptr{UInt8}, int32), physicalChannel, filePath, basicTEDSOptions)
end

function DAQmxWaitForNextSampleClock(taskHandle, timeout, isLate)
    @threadcall((:DAQmxWaitForNextSampleClock, NIDAQmx), int32, (TaskHandle, float64, Ptr{bool32}), taskHandle, timeout, isLate)
end

function DAQmxResetRealTimeAttribute(taskHandle, attribute)
    @threadcall((:DAQmxResetRealTimeAttribute, NIDAQmx), int32, (TaskHandle, int32), taskHandle, attribute)
end

function DAQmxIsReadOrWriteLate(errorCode)
    @threadcall((:DAQmxIsReadOrWriteLate, NIDAQmx), bool32, (int32,), errorCode)
end

function DAQmxSaveTask(taskHandle, saveAs, author, options)
    @threadcall((:DAQmxSaveTask, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, uInt32), taskHandle, saveAs, author, options)
end

function DAQmxSaveGlobalChan(taskHandle, channelName, saveAs, author, options)
    @threadcall((:DAQmxSaveGlobalChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{UInt8}, Ptr{UInt8}, uInt32), taskHandle, channelName, saveAs, author, options)
end

function DAQmxSaveScale(scaleName, saveAs, author, options)
    @threadcall((:DAQmxSaveScale, NIDAQmx), int32, (Ptr{UInt8}, Ptr{UInt8}, Ptr{UInt8}, uInt32), scaleName, saveAs, author, options)
end

function DAQmxDeleteSavedTask(taskName)
    @threadcall((:DAQmxDeleteSavedTask, NIDAQmx), int32, (Ptr{UInt8},), taskName)
end

function DAQmxDeleteSavedGlobalChan(channelName)
    @threadcall((:DAQmxDeleteSavedGlobalChan, NIDAQmx), int32, (Ptr{UInt8},), channelName)
end

function DAQmxDeleteSavedScale(scaleName)
    @threadcall((:DAQmxDeleteSavedScale, NIDAQmx), int32, (Ptr{UInt8},), scaleName)
end

function DAQmxSetAnalogPowerUpStatesWithOutputType(channelNames, stateArray, channelTypeArray, arraySize)
    @threadcall((:DAQmxSetAnalogPowerUpStatesWithOutputType, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, Ptr{int32}, uInt32), channelNames, stateArray, channelTypeArray, arraySize)
end

function DAQmxGetAnalogPowerUpStatesWithOutputType(channelNames, stateArray, channelTypeArray, arraySizePtr)
    @threadcall((:DAQmxGetAnalogPowerUpStatesWithOutputType, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, Ptr{int32}, Ptr{uInt32}), channelNames, stateArray, channelTypeArray, arraySizePtr)
end

function DAQmxSetDigitalLogicFamilyPowerUpState(deviceName, logicFamily)
    @threadcall((:DAQmxSetDigitalLogicFamilyPowerUpState, NIDAQmx), int32, (Ptr{UInt8}, int32), deviceName, logicFamily)
end

function DAQmxGetDigitalLogicFamilyPowerUpState(deviceName, logicFamily)
    @threadcall((:DAQmxGetDigitalLogicFamilyPowerUpState, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), deviceName, logicFamily)
end

function DAQmxAddNetworkDevice(IPAddress, deviceName, attemptReservation, timeout, deviceNameOut, deviceNameOutBufferSize)
    @threadcall((:DAQmxAddNetworkDevice, NIDAQmx), int32, (Ptr{UInt8}, Ptr{UInt8}, bool32, float64, Ptr{UInt8}, uInt32), IPAddress, deviceName, attemptReservation, timeout, deviceNameOut, deviceNameOutBufferSize)
end

function DAQmxDeleteNetworkDevice(deviceName)
    @threadcall((:DAQmxDeleteNetworkDevice, NIDAQmx), int32, (Ptr{UInt8},), deviceName)
end

function DAQmxReserveNetworkDevice(deviceName, overrideReservation)
    @threadcall((:DAQmxReserveNetworkDevice, NIDAQmx), int32, (Ptr{UInt8}, bool32), deviceName, overrideReservation)
end

function DAQmxUnreserveNetworkDevice(deviceName)
    @threadcall((:DAQmxUnreserveNetworkDevice, NIDAQmx), int32, (Ptr{UInt8},), deviceName)
end

function DAQmxAutoConfigureCDAQSyncConnections(chassisDevicesPorts, timeout)
    @threadcall((:DAQmxAutoConfigureCDAQSyncConnections, NIDAQmx), int32, (Ptr{UInt8}, float64), chassisDevicesPorts, timeout)
end

function DAQmxGetAutoConfiguredCDAQSyncConnections(portList, portListSize)
    @threadcall((:DAQmxGetAutoConfiguredCDAQSyncConnections, NIDAQmx), int32, (Ptr{UInt8}, uInt32), portList, portListSize)
end

function DAQmxAreConfiguredCDAQSyncPortsDisconnected(chassisDevicesPorts, timeout, disconnectedPortsExist)
    @threadcall((:DAQmxAreConfiguredCDAQSyncPortsDisconnected, NIDAQmx), int32, (Ptr{UInt8}, float64, Ptr{bool32}), chassisDevicesPorts, timeout, disconnectedPortsExist)
end

function DAQmxGetDisconnectedCDAQSyncPorts(portList, portListSize)
    @threadcall((:DAQmxGetDisconnectedCDAQSyncPorts, NIDAQmx), int32, (Ptr{UInt8}, uInt32), portList, portListSize)
end

function DAQmxAddCDAQSyncConnection(portList)
    @threadcall((:DAQmxAddCDAQSyncConnection, NIDAQmx), int32, (Ptr{UInt8},), portList)
end

function DAQmxRemoveCDAQSyncConnection(portList)
    @threadcall((:DAQmxRemoveCDAQSyncConnection, NIDAQmx), int32, (Ptr{UInt8},), portList)
end

function DAQmxGetErrorString(errorCode, errorString, bufferSize)
    @threadcall((:DAQmxGetErrorString, NIDAQmx), int32, (int32, Ptr{UInt8}, uInt32), errorCode, errorString, bufferSize)
end

function DAQmxGetExtendedErrorInfo(errorString, bufferSize)
    @threadcall((:DAQmxGetExtendedErrorInfo, NIDAQmx), int32, (Ptr{UInt8}, uInt32), errorString, bufferSize)
end

function DAQmxGetBufInputBufSize(taskHandle, data)
    @threadcall((:DAQmxGetBufInputBufSize, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxSetBufInputBufSize(taskHandle, data)
    @threadcall((:DAQmxSetBufInputBufSize, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetBufInputBufSize(taskHandle)
    @threadcall((:DAQmxResetBufInputBufSize, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetBufInputOnbrdBufSize(taskHandle, data)
    @threadcall((:DAQmxGetBufInputOnbrdBufSize, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxGetBufOutputBufSize(taskHandle, data)
    @threadcall((:DAQmxGetBufOutputBufSize, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxSetBufOutputBufSize(taskHandle, data)
    @threadcall((:DAQmxSetBufOutputBufSize, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetBufOutputBufSize(taskHandle)
    @threadcall((:DAQmxResetBufOutputBufSize, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetBufOutputOnbrdBufSize(taskHandle, data)
    @threadcall((:DAQmxGetBufOutputOnbrdBufSize, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxSetBufOutputOnbrdBufSize(taskHandle, data)
    @threadcall((:DAQmxSetBufOutputOnbrdBufSize, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetBufOutputOnbrdBufSize(taskHandle)
    @threadcall((:DAQmxResetBufOutputOnbrdBufSize, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSelfCalSupported(deviceName, data)
    @threadcall((:DAQmxGetSelfCalSupported, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), deviceName, data)
end

function DAQmxGetSelfCalLastTemp(deviceName, data)
    @threadcall((:DAQmxGetSelfCalLastTemp, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), deviceName, data)
end

function DAQmxGetExtCalRecommendedInterval(deviceName, data)
    @threadcall((:DAQmxGetExtCalRecommendedInterval, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), deviceName, data)
end

function DAQmxGetExtCalLastTemp(deviceName, data)
    @threadcall((:DAQmxGetExtCalLastTemp, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), deviceName, data)
end

function DAQmxGetCalUserDefinedInfo(deviceName, data, bufferSize)
    @threadcall((:DAQmxGetCalUserDefinedInfo, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), deviceName, data, bufferSize)
end

function DAQmxSetCalUserDefinedInfo(deviceName, data)
    @threadcall((:DAQmxSetCalUserDefinedInfo, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring), deviceName, data)
end

function DAQmxGetCalUserDefinedInfoMaxSize(deviceName, data)
    @threadcall((:DAQmxGetCalUserDefinedInfoMaxSize, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), deviceName, data)
end

function DAQmxGetCalDevTemp(deviceName, data)
    @threadcall((:DAQmxGetCalDevTemp, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), deviceName, data)
end

function DAQmxGetCalAccConnectionCount(deviceName, data)
    @threadcall((:DAQmxGetCalAccConnectionCount, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), deviceName, data)
end

function DAQmxSetCalAccConnectionCount(deviceName, data)
    @threadcall((:DAQmxSetCalAccConnectionCount, NIDAQmx), int32, (Ptr{UInt8}, uInt32), deviceName, data)
end

function DAQmxGetCalRecommendedAccConnectionCountLimit(deviceName, data)
    @threadcall((:DAQmxGetCalRecommendedAccConnectionCountLimit, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), deviceName, data)
end

function DAQmxGetAIMax(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIMax, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIMax(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIMax, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIMax(taskHandle, channel)
    @threadcall((:DAQmxResetAIMax, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIMin(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIMin, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIMin(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIMin, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIMin(taskHandle, channel)
    @threadcall((:DAQmxResetAIMin, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAICustomScaleName(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetAICustomScaleName, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetAICustomScaleName(taskHandle, channel, data)
    @threadcall((:DAQmxSetAICustomScaleName, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetAICustomScaleName(taskHandle, channel)
    @threadcall((:DAQmxResetAICustomScaleName, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIMeasType(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIMeasType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxGetAIVoltageUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIVoltageUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIVoltageUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIVoltageUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIVoltageUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIVoltageUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIVoltagedBRef(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIVoltagedBRef, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIVoltagedBRef(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIVoltagedBRef, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIVoltagedBRef(taskHandle, channel)
    @threadcall((:DAQmxResetAIVoltagedBRef, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIVoltageACRMSUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIVoltageACRMSUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIVoltageACRMSUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIVoltageACRMSUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIVoltageACRMSUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIVoltageACRMSUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAITempUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAITempUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAITempUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAITempUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAITempUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAITempUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmcplType(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIThrmcplType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIThrmcplType(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIThrmcplType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIThrmcplType(taskHandle, channel)
    @threadcall((:DAQmxResetAIThrmcplType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmcplScaleType(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIThrmcplScaleType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIThrmcplScaleType(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIThrmcplScaleType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIThrmcplScaleType(taskHandle, channel)
    @threadcall((:DAQmxResetAIThrmcplScaleType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmcplCJCSrc(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIThrmcplCJCSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxGetAIThrmcplCJCVal(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIThrmcplCJCVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIThrmcplCJCVal(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIThrmcplCJCVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIThrmcplCJCVal(taskHandle, channel)
    @threadcall((:DAQmxResetAIThrmcplCJCVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmcplCJCChan(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetAIThrmcplCJCChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxGetAIRTDType(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRTDType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIRTDType(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIRTDType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIRTDType(taskHandle, channel)
    @threadcall((:DAQmxResetAIRTDType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRTDR0(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRTDR0, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRTDR0(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIRTDR0, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRTDR0(taskHandle, channel)
    @threadcall((:DAQmxResetAIRTDR0, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRTDA(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRTDA, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRTDA(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIRTDA, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRTDA(taskHandle, channel)
    @threadcall((:DAQmxResetAIRTDA, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRTDB(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRTDB, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRTDB(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIRTDB, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRTDB(taskHandle, channel)
    @threadcall((:DAQmxResetAIRTDB, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRTDC(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRTDC, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRTDC(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIRTDC, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRTDC(taskHandle, channel)
    @threadcall((:DAQmxResetAIRTDC, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmstrA(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIThrmstrA, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIThrmstrA(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIThrmstrA, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIThrmstrA(taskHandle, channel)
    @threadcall((:DAQmxResetAIThrmstrA, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmstrB(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIThrmstrB, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIThrmstrB(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIThrmstrB, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIThrmstrB(taskHandle, channel)
    @threadcall((:DAQmxResetAIThrmstrB, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmstrC(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIThrmstrC, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIThrmstrC(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIThrmstrC, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIThrmstrC(taskHandle, channel)
    @threadcall((:DAQmxResetAIThrmstrC, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmstrR1(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIThrmstrR1, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIThrmstrR1(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIThrmstrR1, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIThrmstrR1(taskHandle, channel)
    @threadcall((:DAQmxResetAIThrmstrR1, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIForceReadFromChan(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIForceReadFromChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIForceReadFromChan(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIForceReadFromChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIForceReadFromChan(taskHandle, channel)
    @threadcall((:DAQmxResetAIForceReadFromChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAICurrentUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAICurrentUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAICurrentUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAICurrentUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAICurrentUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAICurrentUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAICurrentACRMSUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAICurrentACRMSUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAICurrentACRMSUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAICurrentACRMSUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAICurrentACRMSUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAICurrentACRMSUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIStrainUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIStrainUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIStrainUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIStrainUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIStrainUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIStrainUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIStrainGageForceReadFromChan(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIStrainGageForceReadFromChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIStrainGageForceReadFromChan(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIStrainGageForceReadFromChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIStrainGageForceReadFromChan(taskHandle, channel)
    @threadcall((:DAQmxResetAIStrainGageForceReadFromChan, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIStrainGageGageFactor(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIStrainGageGageFactor, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIStrainGageGageFactor(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIStrainGageGageFactor, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIStrainGageGageFactor(taskHandle, channel)
    @threadcall((:DAQmxResetAIStrainGageGageFactor, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIStrainGagePoissonRatio(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIStrainGagePoissonRatio, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIStrainGagePoissonRatio(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIStrainGagePoissonRatio, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIStrainGagePoissonRatio(taskHandle, channel)
    @threadcall((:DAQmxResetAIStrainGagePoissonRatio, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIStrainGageCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIStrainGageCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIStrainGageCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIStrainGageCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIStrainGageCfg(taskHandle, channel)
    @threadcall((:DAQmxResetAIStrainGageCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRosetteStrainGageRosetteType(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRosetteStrainGageRosetteType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxGetAIRosetteStrainGageOrientation(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRosetteStrainGageOrientation, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRosetteStrainGageOrientation(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIRosetteStrainGageOrientation, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRosetteStrainGageOrientation(taskHandle, channel)
    @threadcall((:DAQmxResetAIRosetteStrainGageOrientation, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRosetteStrainGageStrainChans(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetAIRosetteStrainGageStrainChans, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxGetAIRosetteStrainGageRosetteMeasType(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRosetteStrainGageRosetteMeasType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIRosetteStrainGageRosetteMeasType(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIRosetteStrainGageRosetteMeasType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIRosetteStrainGageRosetteMeasType(taskHandle, channel)
    @threadcall((:DAQmxResetAIRosetteStrainGageRosetteMeasType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIResistanceUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIResistanceUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIResistanceUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIResistanceUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIResistanceUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIResistanceUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIFreqUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIFreqUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIFreqUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIFreqUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIFreqUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIFreqUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIFreqThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIFreqThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIFreqThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIFreqThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIFreqThreshVoltage(taskHandle, channel)
    @threadcall((:DAQmxResetAIFreqThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIFreqHyst(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIFreqHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIFreqHyst(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIFreqHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIFreqHyst(taskHandle, channel)
    @threadcall((:DAQmxResetAIFreqHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAILVDTUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAILVDTUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAILVDTUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAILVDTUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAILVDTUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAILVDTUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAILVDTSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxGetAILVDTSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAILVDTSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxSetAILVDTSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAILVDTSensitivity(taskHandle, channel)
    @threadcall((:DAQmxResetAILVDTSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAILVDTSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAILVDTSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAILVDTSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAILVDTSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAILVDTSensitivityUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAILVDTSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRVDTUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRVDTUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIRVDTUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIRVDTUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIRVDTUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIRVDTUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRVDTSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRVDTSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRVDTSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIRVDTSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRVDTSensitivity(taskHandle, channel)
    @threadcall((:DAQmxResetAIRVDTSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRVDTSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRVDTSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIRVDTSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIRVDTSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIRVDTSensitivityUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIRVDTSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIEddyCurrentProxProbeUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIEddyCurrentProxProbeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIEddyCurrentProxProbeUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIEddyCurrentProxProbeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIEddyCurrentProxProbeUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIEddyCurrentProxProbeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIEddyCurrentProxProbeSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIEddyCurrentProxProbeSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIEddyCurrentProxProbeSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIEddyCurrentProxProbeSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIEddyCurrentProxProbeSensitivity(taskHandle, channel)
    @threadcall((:DAQmxResetAIEddyCurrentProxProbeSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIEddyCurrentProxProbeSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIEddyCurrentProxProbeSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIEddyCurrentProxProbeSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIEddyCurrentProxProbeSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIEddyCurrentProxProbeSensitivityUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIEddyCurrentProxProbeSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAISoundPressureMaxSoundPressureLvl(taskHandle, channel, data)
    @threadcall((:DAQmxGetAISoundPressureMaxSoundPressureLvl, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAISoundPressureMaxSoundPressureLvl(taskHandle, channel, data)
    @threadcall((:DAQmxSetAISoundPressureMaxSoundPressureLvl, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAISoundPressureMaxSoundPressureLvl(taskHandle, channel)
    @threadcall((:DAQmxResetAISoundPressureMaxSoundPressureLvl, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAISoundPressureUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAISoundPressureUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAISoundPressureUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAISoundPressureUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAISoundPressureUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAISoundPressureUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAISoundPressuredBRef(taskHandle, channel, data)
    @threadcall((:DAQmxGetAISoundPressuredBRef, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAISoundPressuredBRef(taskHandle, channel, data)
    @threadcall((:DAQmxSetAISoundPressuredBRef, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAISoundPressuredBRef(taskHandle, channel)
    @threadcall((:DAQmxResetAISoundPressuredBRef, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIMicrophoneSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIMicrophoneSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIMicrophoneSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIMicrophoneSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIMicrophoneSensitivity(taskHandle, channel)
    @threadcall((:DAQmxResetAIMicrophoneSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAccelUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIAccelUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIAccelUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIAccelUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIAccelUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIAccelUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAcceldBRef(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIAcceldBRef, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIAcceldBRef(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIAcceldBRef, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIAcceldBRef(taskHandle, channel)
    @threadcall((:DAQmxResetAIAcceldBRef, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAccel4WireDCVoltageSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIAccel4WireDCVoltageSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIAccel4WireDCVoltageSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIAccel4WireDCVoltageSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIAccel4WireDCVoltageSensitivity(taskHandle, channel)
    @threadcall((:DAQmxResetAIAccel4WireDCVoltageSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAccel4WireDCVoltageSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIAccel4WireDCVoltageSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIAccel4WireDCVoltageSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIAccel4WireDCVoltageSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIAccel4WireDCVoltageSensitivityUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIAccel4WireDCVoltageSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAccelSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIAccelSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIAccelSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIAccelSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIAccelSensitivity(taskHandle, channel)
    @threadcall((:DAQmxResetAIAccelSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAccelSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIAccelSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIAccelSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIAccelSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIAccelSensitivityUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIAccelSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAccelChargeSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIAccelChargeSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIAccelChargeSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIAccelChargeSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIAccelChargeSensitivity(taskHandle, channel)
    @threadcall((:DAQmxResetAIAccelChargeSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAccelChargeSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIAccelChargeSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIAccelChargeSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIAccelChargeSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIAccelChargeSensitivityUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIAccelChargeSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIVelocityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIVelocityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIVelocityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIVelocityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIVelocityUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIVelocityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIVelocityIEPESensordBRef(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIVelocityIEPESensordBRef, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIVelocityIEPESensordBRef(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIVelocityIEPESensordBRef, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIVelocityIEPESensordBRef(taskHandle, channel)
    @threadcall((:DAQmxResetAIVelocityIEPESensordBRef, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIVelocityIEPESensorSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIVelocityIEPESensorSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIVelocityIEPESensorSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIVelocityIEPESensorSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIVelocityIEPESensorSensitivity(taskHandle, channel)
    @threadcall((:DAQmxResetAIVelocityIEPESensorSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIVelocityIEPESensorSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIVelocityIEPESensorSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIVelocityIEPESensorSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIVelocityIEPESensorSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIVelocityIEPESensorSensitivityUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIVelocityIEPESensorSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIForceUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIForceUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIForceUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIForceUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIForceUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIForceUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIForceIEPESensorSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIForceIEPESensorSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIForceIEPESensorSensitivity(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIForceIEPESensorSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIForceIEPESensorSensitivity(taskHandle, channel)
    @threadcall((:DAQmxResetAIForceIEPESensorSensitivity, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIForceIEPESensorSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIForceIEPESensorSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIForceIEPESensorSensitivityUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIForceIEPESensorSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIForceIEPESensorSensitivityUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIForceIEPESensorSensitivityUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIPressureUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIPressureUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIPressureUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIPressureUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIPressureUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIPressureUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAITorqueUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAITorqueUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAITorqueUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAITorqueUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAITorqueUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAITorqueUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeElectricalUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeElectricalUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeElectricalUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeElectricalUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeElectricalUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeElectricalUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgePhysicalUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgePhysicalUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgePhysicalUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgePhysicalUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgePhysicalUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgePhysicalUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeScaleType(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeScaleType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeScaleType(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeScaleType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeScaleType(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeScaleType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeTwoPointLinFirstElectricalVal(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeTwoPointLinFirstElectricalVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeTwoPointLinFirstElectricalVal(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeTwoPointLinFirstElectricalVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeTwoPointLinFirstElectricalVal(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeTwoPointLinFirstElectricalVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeTwoPointLinFirstPhysicalVal(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeTwoPointLinFirstPhysicalVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeTwoPointLinFirstPhysicalVal(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeTwoPointLinFirstPhysicalVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeTwoPointLinFirstPhysicalVal(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeTwoPointLinFirstPhysicalVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeTwoPointLinSecondElectricalVal(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeTwoPointLinSecondElectricalVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeTwoPointLinSecondElectricalVal(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeTwoPointLinSecondElectricalVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeTwoPointLinSecondElectricalVal(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeTwoPointLinSecondElectricalVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeTwoPointLinSecondPhysicalVal(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeTwoPointLinSecondPhysicalVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeTwoPointLinSecondPhysicalVal(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeTwoPointLinSecondPhysicalVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeTwoPointLinSecondPhysicalVal(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeTwoPointLinSecondPhysicalVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeTableElectricalVals(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxGetAIBridgeTableElectricalVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIBridgeTableElectricalVals(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxSetAIBridgeTableElectricalVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIBridgeTableElectricalVals(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeTableElectricalVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeTablePhysicalVals(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxGetAIBridgeTablePhysicalVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIBridgeTablePhysicalVals(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxSetAIBridgeTablePhysicalVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIBridgeTablePhysicalVals(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeTablePhysicalVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgePolyForwardCoeff(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxGetAIBridgePolyForwardCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIBridgePolyForwardCoeff(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxSetAIBridgePolyForwardCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIBridgePolyForwardCoeff(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgePolyForwardCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgePolyReverseCoeff(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxGetAIBridgePolyReverseCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIBridgePolyReverseCoeff(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxSetAIBridgePolyReverseCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIBridgePolyReverseCoeff(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgePolyReverseCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChargeUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIChargeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIChargeUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIChargeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIChargeUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIChargeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIIsTEDS(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIIsTEDS, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxGetAITEDSUnits(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetAITEDSUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxGetAICoupling(taskHandle, channel, data)
    @threadcall((:DAQmxGetAICoupling, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAICoupling(taskHandle, channel, data)
    @threadcall((:DAQmxSetAICoupling, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAICoupling(taskHandle, channel)
    @threadcall((:DAQmxResetAICoupling, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIImpedance(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIImpedance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIImpedance(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIImpedance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIImpedance(taskHandle, channel)
    @threadcall((:DAQmxResetAIImpedance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAITermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetAITermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAITermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetAITermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAITermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetAITermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIInputSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetAIInputSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetAIInputSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIInputSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetAIInputSrc(taskHandle, channel)
    @threadcall((:DAQmxResetAIInputSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIResistanceCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIResistanceCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIResistanceCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIResistanceCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIResistanceCfg(taskHandle, channel)
    @threadcall((:DAQmxResetAIResistanceCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAILeadWireResistance(taskHandle, channel, data)
    @threadcall((:DAQmxGetAILeadWireResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAILeadWireResistance(taskHandle, channel, data)
    @threadcall((:DAQmxSetAILeadWireResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAILeadWireResistance(taskHandle, channel)
    @threadcall((:DAQmxResetAILeadWireResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeCfg(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeNomResistance(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeNomResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeNomResistance(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeNomResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeNomResistance(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeNomResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeInitialVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeInitialVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeInitialVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeInitialVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeInitialVoltage(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeInitialVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeInitialRatio(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeInitialRatio, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeInitialRatio(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeInitialRatio, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeInitialRatio(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeInitialRatio, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeShuntCalEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeShuntCalEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeShuntCalEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalSelect(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeShuntCalSelect, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalSelect(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeShuntCalSelect, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalSelect(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeShuntCalSelect, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalShuntCalASrc(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeShuntCalShuntCalASrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalShuntCalASrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeShuntCalShuntCalASrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalShuntCalASrc(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeShuntCalShuntCalASrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalGainAdjust(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeShuntCalGainAdjust, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalGainAdjust(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeShuntCalGainAdjust, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalGainAdjust(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeShuntCalGainAdjust, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalShuntCalAResistance(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeShuntCalShuntCalAResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalShuntCalAResistance(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeShuntCalShuntCalAResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalShuntCalAResistance(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeShuntCalShuntCalAResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalShuntCalAActualResistance(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeShuntCalShuntCalAActualResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalShuntCalAActualResistance(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeShuntCalShuntCalAActualResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalShuntCalAActualResistance(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeShuntCalShuntCalAActualResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalShuntCalBResistance(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeShuntCalShuntCalBResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalShuntCalBResistance(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeShuntCalShuntCalBResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalShuntCalBResistance(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeShuntCalShuntCalBResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeShuntCalShuntCalBActualResistance(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeShuntCalShuntCalBActualResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeShuntCalShuntCalBActualResistance(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeShuntCalShuntCalBActualResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIBridgeShuntCalShuntCalBActualResistance(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeShuntCalShuntCalBActualResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeBalanceCoarsePot(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeBalanceCoarsePot, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeBalanceCoarsePot(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeBalanceCoarsePot, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeBalanceCoarsePot(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeBalanceCoarsePot, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIBridgeBalanceFinePot(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIBridgeBalanceFinePot, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIBridgeBalanceFinePot(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIBridgeBalanceFinePot, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIBridgeBalanceFinePot(taskHandle, channel)
    @threadcall((:DAQmxResetAIBridgeBalanceFinePot, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAICurrentShuntLoc(taskHandle, channel, data)
    @threadcall((:DAQmxGetAICurrentShuntLoc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAICurrentShuntLoc(taskHandle, channel, data)
    @threadcall((:DAQmxSetAICurrentShuntLoc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAICurrentShuntLoc(taskHandle, channel)
    @threadcall((:DAQmxResetAICurrentShuntLoc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAICurrentShuntResistance(taskHandle, channel, data)
    @threadcall((:DAQmxGetAICurrentShuntResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAICurrentShuntResistance(taskHandle, channel, data)
    @threadcall((:DAQmxSetAICurrentShuntResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAICurrentShuntResistance(taskHandle, channel)
    @threadcall((:DAQmxResetAICurrentShuntResistance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitSense(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIExcitSense, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIExcitSense(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIExcitSense, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIExcitSense(taskHandle, channel)
    @threadcall((:DAQmxResetAIExcitSense, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitSrc(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIExcitSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIExcitSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIExcitSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIExcitSrc(taskHandle, channel)
    @threadcall((:DAQmxResetAIExcitSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitVal(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIExcitVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIExcitVal(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIExcitVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIExcitVal(taskHandle, channel)
    @threadcall((:DAQmxResetAIExcitVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitUseForScaling(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIExcitUseForScaling, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIExcitUseForScaling(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIExcitUseForScaling, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIExcitUseForScaling(taskHandle, channel)
    @threadcall((:DAQmxResetAIExcitUseForScaling, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitUseMultiplexed(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIExcitUseMultiplexed, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIExcitUseMultiplexed(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIExcitUseMultiplexed, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIExcitUseMultiplexed(taskHandle, channel)
    @threadcall((:DAQmxResetAIExcitUseMultiplexed, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitActualVal(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIExcitActualVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIExcitActualVal(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIExcitActualVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIExcitActualVal(taskHandle, channel)
    @threadcall((:DAQmxResetAIExcitActualVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitDCorAC(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIExcitDCorAC, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIExcitDCorAC(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIExcitDCorAC, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIExcitDCorAC(taskHandle, channel)
    @threadcall((:DAQmxResetAIExcitDCorAC, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitVoltageOrCurrent(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIExcitVoltageOrCurrent, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIExcitVoltageOrCurrent(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIExcitVoltageOrCurrent, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIExcitVoltageOrCurrent(taskHandle, channel)
    @threadcall((:DAQmxResetAIExcitVoltageOrCurrent, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIExcitIdleOutputBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIExcitIdleOutputBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIExcitIdleOutputBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIExcitIdleOutputBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIExcitIdleOutputBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetAIExcitIdleOutputBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIACExcitFreq(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIACExcitFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIACExcitFreq(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIACExcitFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIACExcitFreq(taskHandle, channel)
    @threadcall((:DAQmxResetAIACExcitFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIACExcitSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIACExcitSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIACExcitSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIACExcitSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIACExcitSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAIACExcitSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIACExcitWireMode(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIACExcitWireMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIACExcitWireMode(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIACExcitWireMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIACExcitWireMode(taskHandle, channel)
    @threadcall((:DAQmxResetAIACExcitWireMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAISensorPowerVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxGetAISensorPowerVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAISensorPowerVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxSetAISensorPowerVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAISensorPowerVoltage(taskHandle, channel)
    @threadcall((:DAQmxResetAISensorPowerVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAISensorPowerCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetAISensorPowerCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAISensorPowerCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetAISensorPowerCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAISensorPowerCfg(taskHandle, channel)
    @threadcall((:DAQmxResetAISensorPowerCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAISensorPowerType(taskHandle, channel, data)
    @threadcall((:DAQmxGetAISensorPowerType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAISensorPowerType(taskHandle, channel, data)
    @threadcall((:DAQmxSetAISensorPowerType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAISensorPowerType(taskHandle, channel)
    @threadcall((:DAQmxResetAISensorPowerType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIOpenThrmcplDetectEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIOpenThrmcplDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIOpenThrmcplDetectEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIOpenThrmcplDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIOpenThrmcplDetectEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAIOpenThrmcplDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIThrmcplLeadOffsetVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIThrmcplLeadOffsetVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIThrmcplLeadOffsetVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIThrmcplLeadOffsetVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIThrmcplLeadOffsetVoltage(taskHandle, channel)
    @threadcall((:DAQmxResetAIThrmcplLeadOffsetVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAtten(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIAtten, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIAtten(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIAtten, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIAtten(taskHandle, channel)
    @threadcall((:DAQmxResetAIAtten, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIProbeAtten(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIProbeAtten, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIProbeAtten(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIProbeAtten, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIProbeAtten(taskHandle, channel)
    @threadcall((:DAQmxResetAIProbeAtten, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAILowpassEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAILowpassEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAILowpassEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAILowpassEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAILowpassEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAILowpassEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAILowpassCutoffFreq(taskHandle, channel, data)
    @threadcall((:DAQmxGetAILowpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAILowpassCutoffFreq(taskHandle, channel, data)
    @threadcall((:DAQmxSetAILowpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAILowpassCutoffFreq(taskHandle, channel)
    @threadcall((:DAQmxResetAILowpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAILowpassSwitchCapClkSrc(taskHandle, channel, data)
    @threadcall((:DAQmxGetAILowpassSwitchCapClkSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAILowpassSwitchCapClkSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetAILowpassSwitchCapClkSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAILowpassSwitchCapClkSrc(taskHandle, channel)
    @threadcall((:DAQmxResetAILowpassSwitchCapClkSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAILowpassSwitchCapExtClkFreq(taskHandle, channel, data)
    @threadcall((:DAQmxGetAILowpassSwitchCapExtClkFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAILowpassSwitchCapExtClkFreq(taskHandle, channel, data)
    @threadcall((:DAQmxSetAILowpassSwitchCapExtClkFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAILowpassSwitchCapExtClkFreq(taskHandle, channel)
    @threadcall((:DAQmxResetAILowpassSwitchCapExtClkFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAILowpassSwitchCapExtClkDiv(taskHandle, channel, data)
    @threadcall((:DAQmxGetAILowpassSwitchCapExtClkDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAILowpassSwitchCapExtClkDiv(taskHandle, channel, data)
    @threadcall((:DAQmxSetAILowpassSwitchCapExtClkDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAILowpassSwitchCapExtClkDiv(taskHandle, channel)
    @threadcall((:DAQmxResetAILowpassSwitchCapExtClkDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAILowpassSwitchCapOutClkDiv(taskHandle, channel, data)
    @threadcall((:DAQmxGetAILowpassSwitchCapOutClkDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAILowpassSwitchCapOutClkDiv(taskHandle, channel, data)
    @threadcall((:DAQmxSetAILowpassSwitchCapOutClkDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAILowpassSwitchCapOutClkDiv(taskHandle, channel)
    @threadcall((:DAQmxResetAILowpassSwitchCapOutClkDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAIDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrType(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDigFltrType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrType(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDigFltrType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrType(taskHandle, channel)
    @threadcall((:DAQmxResetAIDigFltrType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrResponse(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDigFltrResponse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrResponse(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDigFltrResponse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrResponse(taskHandle, channel)
    @threadcall((:DAQmxResetAIDigFltrResponse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrOrder(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDigFltrOrder, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrOrder(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDigFltrOrder, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrOrder(taskHandle, channel)
    @threadcall((:DAQmxResetAIDigFltrOrder, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrLowpassCutoffFreq(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDigFltrLowpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrLowpassCutoffFreq(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDigFltrLowpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrLowpassCutoffFreq(taskHandle, channel)
    @threadcall((:DAQmxResetAIDigFltrLowpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrHighpassCutoffFreq(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDigFltrHighpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrHighpassCutoffFreq(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDigFltrHighpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrHighpassCutoffFreq(taskHandle, channel)
    @threadcall((:DAQmxResetAIDigFltrHighpassCutoffFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrBandpassCenterFreq(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDigFltrBandpassCenterFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrBandpassCenterFreq(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDigFltrBandpassCenterFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrBandpassCenterFreq(taskHandle, channel)
    @threadcall((:DAQmxResetAIDigFltrBandpassCenterFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrBandpassWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDigFltrBandpassWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrBandpassWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDigFltrBandpassWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrBandpassWidth(taskHandle, channel)
    @threadcall((:DAQmxResetAIDigFltrBandpassWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrNotchCenterFreq(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDigFltrNotchCenterFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrNotchCenterFreq(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDigFltrNotchCenterFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrNotchCenterFreq(taskHandle, channel)
    @threadcall((:DAQmxResetAIDigFltrNotchCenterFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrNotchWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDigFltrNotchWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDigFltrNotchWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDigFltrNotchWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDigFltrNotchWidth(taskHandle, channel)
    @threadcall((:DAQmxResetAIDigFltrNotchWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDigFltrCoeff(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxGetAIDigFltrCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIDigFltrCoeff(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxSetAIDigFltrCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIDigFltrCoeff(taskHandle, channel)
    @threadcall((:DAQmxResetAIDigFltrCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIFilterEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIFilterEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIFilterEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIFilterEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIFilterEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAIFilterEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIFilterFreq(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIFilterFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIFilterFreq(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIFilterFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIFilterFreq(taskHandle, channel)
    @threadcall((:DAQmxResetAIFilterFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIFilterResponse(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIFilterResponse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIFilterResponse(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIFilterResponse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIFilterResponse(taskHandle, channel)
    @threadcall((:DAQmxResetAIFilterResponse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIFilterOrder(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIFilterOrder, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAIFilterOrder(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIFilterOrder, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAIFilterOrder(taskHandle, channel)
    @threadcall((:DAQmxResetAIFilterOrder, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIFilterDelay(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIFilterDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxGetAIFilterDelayUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIFilterDelayUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIFilterDelayUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAIFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRemoveFilterDelay(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRemoveFilterDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIRemoveFilterDelay(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIRemoveFilterDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIRemoveFilterDelay(taskHandle, channel)
    @threadcall((:DAQmxResetAIRemoveFilterDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIFilterDelayAdjustment(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIFilterDelayAdjustment, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIFilterDelayAdjustment(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIFilterDelayAdjustment, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIFilterDelayAdjustment(taskHandle, channel)
    @threadcall((:DAQmxResetAIFilterDelayAdjustment, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAveragingWinSize(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIAveragingWinSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAIAveragingWinSize(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIAveragingWinSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAIAveragingWinSize(taskHandle, channel)
    @threadcall((:DAQmxResetAIAveragingWinSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIResolutionUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIResolutionUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxGetAIResolution(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIResolution, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxGetAIRawSampSize(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRawSampSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxGetAIRawSampJustification(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRawSampJustification, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxGetAIADCTimingMode(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIADCTimingMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIADCTimingMode(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIADCTimingMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIADCTimingMode(taskHandle, channel)
    @threadcall((:DAQmxResetAIADCTimingMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIADCCustomTimingMode(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIADCCustomTimingMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAIADCCustomTimingMode(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIADCCustomTimingMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAIADCCustomTimingMode(taskHandle, channel)
    @threadcall((:DAQmxResetAIADCCustomTimingMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDitherEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDitherEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIDitherEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDitherEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIDitherEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAIDitherEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalHasValidCalInfo(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIChanCalHasValidCalInfo, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxGetAIChanCalEnableCal(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIChanCalEnableCal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIChanCalEnableCal(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIChanCalEnableCal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIChanCalEnableCal(taskHandle, channel)
    @threadcall((:DAQmxResetAIChanCalEnableCal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalApplyCalIfExp(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIChanCalApplyCalIfExp, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIChanCalApplyCalIfExp(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIChanCalApplyCalIfExp, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIChanCalApplyCalIfExp(taskHandle, channel)
    @threadcall((:DAQmxResetAIChanCalApplyCalIfExp, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalScaleType(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIChanCalScaleType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIChanCalScaleType(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIChanCalScaleType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIChanCalScaleType(taskHandle, channel)
    @threadcall((:DAQmxResetAIChanCalScaleType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalTablePreScaledVals(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxGetAIChanCalTablePreScaledVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIChanCalTablePreScaledVals(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxSetAIChanCalTablePreScaledVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIChanCalTablePreScaledVals(taskHandle, channel)
    @threadcall((:DAQmxResetAIChanCalTablePreScaledVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalTableScaledVals(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxGetAIChanCalTableScaledVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIChanCalTableScaledVals(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxSetAIChanCalTableScaledVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIChanCalTableScaledVals(taskHandle, channel)
    @threadcall((:DAQmxResetAIChanCalTableScaledVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalPolyForwardCoeff(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxGetAIChanCalPolyForwardCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIChanCalPolyForwardCoeff(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxSetAIChanCalPolyForwardCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIChanCalPolyForwardCoeff(taskHandle, channel)
    @threadcall((:DAQmxResetAIChanCalPolyForwardCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalPolyReverseCoeff(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxGetAIChanCalPolyReverseCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIChanCalPolyReverseCoeff(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxSetAIChanCalPolyReverseCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIChanCalPolyReverseCoeff(taskHandle, channel)
    @threadcall((:DAQmxResetAIChanCalPolyReverseCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalOperatorName(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetAIChanCalOperatorName, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetAIChanCalOperatorName(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIChanCalOperatorName, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetAIChanCalOperatorName(taskHandle, channel)
    @threadcall((:DAQmxResetAIChanCalOperatorName, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalDesc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetAIChanCalDesc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetAIChanCalDesc(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIChanCalDesc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetAIChanCalDesc(taskHandle, channel)
    @threadcall((:DAQmxResetAIChanCalDesc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalVerifRefVals(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxGetAIChanCalVerifRefVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIChanCalVerifRefVals(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxSetAIChanCalVerifRefVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIChanCalVerifRefVals(taskHandle, channel)
    @threadcall((:DAQmxResetAIChanCalVerifRefVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChanCalVerifAcqVals(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxGetAIChanCalVerifAcqVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxSetAIChanCalVerifAcqVals(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxSetAIChanCalVerifAcqVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxResetAIChanCalVerifAcqVals(taskHandle, channel)
    @threadcall((:DAQmxResetAIChanCalVerifAcqVals, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRngHigh(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRngHigh, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRngHigh(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIRngHigh, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRngHigh(taskHandle, channel)
    @threadcall((:DAQmxResetAIRngHigh, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRngLow(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRngLow, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIRngLow(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIRngLow, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIRngLow(taskHandle, channel)
    @threadcall((:DAQmxResetAIRngLow, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDCOffset(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDCOffset, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDCOffset(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDCOffset, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDCOffset(taskHandle, channel)
    @threadcall((:DAQmxResetAIDCOffset, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIGain(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIGain, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIGain(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIGain, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIGain(taskHandle, channel)
    @threadcall((:DAQmxResetAIGain, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAISampAndHoldEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAISampAndHoldEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAISampAndHoldEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAISampAndHoldEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAISampAndHoldEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAISampAndHoldEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIAutoZeroMode(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIAutoZeroMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIAutoZeroMode(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIAutoZeroMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIAutoZeroMode(taskHandle, channel)
    @threadcall((:DAQmxResetAIAutoZeroMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIChopEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIChopEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIChopEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIChopEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIChopEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAIChopEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDataXferMaxRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDataXferMaxRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIDataXferMaxRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDataXferMaxRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIDataXferMaxRate(taskHandle, channel)
    @threadcall((:DAQmxResetAIDataXferMaxRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDataXferMech(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIDataXferMech(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIDataXferMech(taskHandle, channel)
    @threadcall((:DAQmxResetAIDataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDataXferReqCond(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIDataXferReqCond(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIDataXferReqCond(taskHandle, channel)
    @threadcall((:DAQmxResetAIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDataXferCustomThreshold(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIDataXferCustomThreshold, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAIDataXferCustomThreshold(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIDataXferCustomThreshold, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAIDataXferCustomThreshold(taskHandle, channel)
    @threadcall((:DAQmxResetAIDataXferCustomThreshold, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIUsbXferReqSize(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAIUsbXferReqSize(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAIUsbXferReqSize(taskHandle, channel)
    @threadcall((:DAQmxResetAIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIUsbXferReqCount(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAIUsbXferReqCount(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAIUsbXferReqCount(taskHandle, channel)
    @threadcall((:DAQmxResetAIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIMemMapEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIMemMapEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIMemMapEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIRawDataCompressionType(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIRawDataCompressionType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAIRawDataCompressionType(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIRawDataCompressionType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAIRawDataCompressionType(taskHandle, channel)
    @threadcall((:DAQmxResetAIRawDataCompressionType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAILossyLSBRemovalCompressedSampSize(taskHandle, channel, data)
    @threadcall((:DAQmxGetAILossyLSBRemovalCompressedSampSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAILossyLSBRemovalCompressedSampSize(taskHandle, channel, data)
    @threadcall((:DAQmxSetAILossyLSBRemovalCompressedSampSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAILossyLSBRemovalCompressedSampSize(taskHandle, channel)
    @threadcall((:DAQmxResetAILossyLSBRemovalCompressedSampSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIDevScalingCoeff(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxGetAIDevScalingCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxGetAIEnhancedAliasRejectionEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIEnhancedAliasRejectionEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIEnhancedAliasRejectionEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIEnhancedAliasRejectionEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIEnhancedAliasRejectionEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAIEnhancedAliasRejectionEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIOpenChanDetectEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIOpenChanDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIOpenChanDetectEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIOpenChanDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIOpenChanDetectEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAIOpenChanDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIInputLimitsFaultDetectUpperLimit(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIInputLimitsFaultDetectUpperLimit, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIInputLimitsFaultDetectUpperLimit(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIInputLimitsFaultDetectUpperLimit, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIInputLimitsFaultDetectUpperLimit(taskHandle, channel)
    @threadcall((:DAQmxResetAIInputLimitsFaultDetectUpperLimit, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIInputLimitsFaultDetectLowerLimit(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIInputLimitsFaultDetectLowerLimit, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAIInputLimitsFaultDetectLowerLimit(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIInputLimitsFaultDetectLowerLimit, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAIInputLimitsFaultDetectLowerLimit(taskHandle, channel)
    @threadcall((:DAQmxResetAIInputLimitsFaultDetectLowerLimit, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIInputLimitsFaultDetectEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIInputLimitsFaultDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIInputLimitsFaultDetectEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIInputLimitsFaultDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIInputLimitsFaultDetectEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAIInputLimitsFaultDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIPowerSupplyFaultDetectEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIPowerSupplyFaultDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIPowerSupplyFaultDetectEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIPowerSupplyFaultDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIPowerSupplyFaultDetectEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAIPowerSupplyFaultDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAIOvercurrentDetectEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAIOvercurrentDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAIOvercurrentDetectEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAIOvercurrentDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAIOvercurrentDetectEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAIOvercurrentDetectEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOMax(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOMax, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAOMax(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOMax, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOMax(taskHandle, channel)
    @threadcall((:DAQmxResetAOMax, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOMin(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOMin, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAOMin(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOMin, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOMin(taskHandle, channel)
    @threadcall((:DAQmxResetAOMin, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOCustomScaleName(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetAOCustomScaleName, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetAOCustomScaleName(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOCustomScaleName, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetAOCustomScaleName(taskHandle, channel)
    @threadcall((:DAQmxResetAOCustomScaleName, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOOutputType(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOOutputType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxGetAOVoltageUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOVoltageUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAOVoltageUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOVoltageUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOVoltageUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAOVoltageUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOVoltageCurrentLimit(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOVoltageCurrentLimit, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAOVoltageCurrentLimit(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOVoltageCurrentLimit, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOVoltageCurrentLimit(taskHandle, channel)
    @threadcall((:DAQmxResetAOVoltageCurrentLimit, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOCurrentUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOCurrentUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAOCurrentUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOCurrentUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOCurrentUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAOCurrentUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFuncGenType(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOFuncGenType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAOFuncGenType(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOFuncGenType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOFuncGenType(taskHandle, channel)
    @threadcall((:DAQmxResetAOFuncGenType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFuncGenFreq(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOFuncGenFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAOFuncGenFreq(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOFuncGenFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOFuncGenFreq(taskHandle, channel)
    @threadcall((:DAQmxResetAOFuncGenFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFuncGenAmplitude(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOFuncGenAmplitude, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAOFuncGenAmplitude(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOFuncGenAmplitude, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOFuncGenAmplitude(taskHandle, channel)
    @threadcall((:DAQmxResetAOFuncGenAmplitude, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFuncGenOffset(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOFuncGenOffset, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAOFuncGenOffset(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOFuncGenOffset, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOFuncGenOffset(taskHandle, channel)
    @threadcall((:DAQmxResetAOFuncGenOffset, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFuncGenSquareDutyCycle(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOFuncGenSquareDutyCycle, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAOFuncGenSquareDutyCycle(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOFuncGenSquareDutyCycle, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOFuncGenSquareDutyCycle(taskHandle, channel)
    @threadcall((:DAQmxResetAOFuncGenSquareDutyCycle, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFuncGenModulationType(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOFuncGenModulationType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAOFuncGenModulationType(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOFuncGenModulationType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOFuncGenModulationType(taskHandle, channel)
    @threadcall((:DAQmxResetAOFuncGenModulationType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFuncGenFMDeviation(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOFuncGenFMDeviation, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAOFuncGenFMDeviation(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOFuncGenFMDeviation, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOFuncGenFMDeviation(taskHandle, channel)
    @threadcall((:DAQmxResetAOFuncGenFMDeviation, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOOutputImpedance(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOOutputImpedance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAOOutputImpedance(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOOutputImpedance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOOutputImpedance(taskHandle, channel)
    @threadcall((:DAQmxResetAOOutputImpedance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOLoadImpedance(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOLoadImpedance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAOLoadImpedance(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOLoadImpedance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOLoadImpedance(taskHandle, channel)
    @threadcall((:DAQmxResetAOLoadImpedance, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOIdleOutputBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOIdleOutputBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAOIdleOutputBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOIdleOutputBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOIdleOutputBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetAOIdleOutputBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAOTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetAOTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOResolutionUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOResolutionUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAOResolutionUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOResolutionUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOResolutionUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAOResolutionUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOResolution(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOResolution, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxGetAODACRngHigh(taskHandle, channel, data)
    @threadcall((:DAQmxGetAODACRngHigh, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAODACRngHigh(taskHandle, channel, data)
    @threadcall((:DAQmxSetAODACRngHigh, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAODACRngHigh(taskHandle, channel)
    @threadcall((:DAQmxResetAODACRngHigh, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACRngLow(taskHandle, channel, data)
    @threadcall((:DAQmxGetAODACRngLow, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAODACRngLow(taskHandle, channel, data)
    @threadcall((:DAQmxSetAODACRngLow, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAODACRngLow(taskHandle, channel)
    @threadcall((:DAQmxResetAODACRngLow, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACRefConnToGnd(taskHandle, channel, data)
    @threadcall((:DAQmxGetAODACRefConnToGnd, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAODACRefConnToGnd(taskHandle, channel, data)
    @threadcall((:DAQmxSetAODACRefConnToGnd, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAODACRefConnToGnd(taskHandle, channel)
    @threadcall((:DAQmxResetAODACRefConnToGnd, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACRefAllowConnToGnd(taskHandle, channel, data)
    @threadcall((:DAQmxGetAODACRefAllowConnToGnd, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAODACRefAllowConnToGnd(taskHandle, channel, data)
    @threadcall((:DAQmxSetAODACRefAllowConnToGnd, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAODACRefAllowConnToGnd(taskHandle, channel)
    @threadcall((:DAQmxResetAODACRefAllowConnToGnd, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACRefSrc(taskHandle, channel, data)
    @threadcall((:DAQmxGetAODACRefSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAODACRefSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetAODACRefSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAODACRefSrc(taskHandle, channel)
    @threadcall((:DAQmxResetAODACRefSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACRefExtSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetAODACRefExtSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetAODACRefExtSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetAODACRefExtSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetAODACRefExtSrc(taskHandle, channel)
    @threadcall((:DAQmxResetAODACRefExtSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACRefVal(taskHandle, channel, data)
    @threadcall((:DAQmxGetAODACRefVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAODACRefVal(taskHandle, channel, data)
    @threadcall((:DAQmxSetAODACRefVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAODACRefVal(taskHandle, channel)
    @threadcall((:DAQmxResetAODACRefVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACOffsetSrc(taskHandle, channel, data)
    @threadcall((:DAQmxGetAODACOffsetSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAODACOffsetSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetAODACOffsetSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAODACOffsetSrc(taskHandle, channel)
    @threadcall((:DAQmxResetAODACOffsetSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACOffsetExtSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetAODACOffsetExtSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetAODACOffsetExtSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetAODACOffsetExtSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetAODACOffsetExtSrc(taskHandle, channel)
    @threadcall((:DAQmxResetAODACOffsetExtSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAODACOffsetVal(taskHandle, channel, data)
    @threadcall((:DAQmxGetAODACOffsetVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAODACOffsetVal(taskHandle, channel, data)
    @threadcall((:DAQmxSetAODACOffsetVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAODACOffsetVal(taskHandle, channel)
    @threadcall((:DAQmxResetAODACOffsetVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOReglitchEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOReglitchEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAOReglitchEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOReglitchEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAOReglitchEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAOReglitchEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFilterDelay(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOFilterDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAOFilterDelay(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOFilterDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOFilterDelay(taskHandle, channel)
    @threadcall((:DAQmxResetAOFilterDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFilterDelayUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAOFilterDelayUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAOFilterDelayUnits(taskHandle, channel)
    @threadcall((:DAQmxResetAOFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOFilterDelayAdjustment(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOFilterDelayAdjustment, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAOFilterDelayAdjustment(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOFilterDelayAdjustment, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOFilterDelayAdjustment(taskHandle, channel)
    @threadcall((:DAQmxResetAOFilterDelayAdjustment, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOGain(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOGain, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetAOGain(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOGain, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetAOGain(taskHandle, channel)
    @threadcall((:DAQmxResetAOGain, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOUseOnlyOnBrdMem(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAOUseOnlyOnBrdMem(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAOUseOnlyOnBrdMem(taskHandle, channel)
    @threadcall((:DAQmxResetAOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAODataXferMech(taskHandle, channel, data)
    @threadcall((:DAQmxGetAODataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAODataXferMech(taskHandle, channel, data)
    @threadcall((:DAQmxSetAODataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAODataXferMech(taskHandle, channel)
    @threadcall((:DAQmxResetAODataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAODataXferReqCond(taskHandle, channel, data)
    @threadcall((:DAQmxGetAODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetAODataXferReqCond(taskHandle, channel, data)
    @threadcall((:DAQmxSetAODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetAODataXferReqCond(taskHandle, channel)
    @threadcall((:DAQmxResetAODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOUsbXferReqSize(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAOUsbXferReqSize(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAOUsbXferReqSize(taskHandle, channel)
    @threadcall((:DAQmxResetAOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOUsbXferReqCount(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetAOUsbXferReqCount(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetAOUsbXferReqCount(taskHandle, channel)
    @threadcall((:DAQmxResetAOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAOMemMapEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAOMemMapEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAOMemMapEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetAODevScalingCoeff(taskHandle, channel, data, arraySizeInElements)
    @threadcall((:DAQmxGetAODevScalingCoeff, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}, uInt32), taskHandle, channel, data, arraySizeInElements)
end

function DAQmxGetAOEnhancedImageRejectionEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetAOEnhancedImageRejectionEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetAOEnhancedImageRejectionEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetAOEnhancedImageRejectionEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetAOEnhancedImageRejectionEnable(taskHandle, channel)
    @threadcall((:DAQmxResetAOEnhancedImageRejectionEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDIInvertLines(taskHandle, channel, data)
    @threadcall((:DAQmxGetDIInvertLines, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetDIInvertLines(taskHandle, channel, data)
    @threadcall((:DAQmxSetDIInvertLines, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDIInvertLines(taskHandle, channel)
    @threadcall((:DAQmxResetDIInvertLines, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDINumLines(taskHandle, channel, data)
    @threadcall((:DAQmxGetDINumLines, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxGetDIDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetDIDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetDIDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetDIDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDIDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetDIDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDIDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetDIDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetDIDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetDIDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetDIDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetDIDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDIDigFltrEnableBusMode(taskHandle, channel, data)
    @threadcall((:DAQmxGetDIDigFltrEnableBusMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetDIDigFltrEnableBusMode(taskHandle, channel, data)
    @threadcall((:DAQmxSetDIDigFltrEnableBusMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDIDigFltrEnableBusMode(taskHandle, channel)
    @threadcall((:DAQmxResetDIDigFltrEnableBusMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDIDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetDIDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetDIDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetDIDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetDIDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetDIDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDIDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetDIDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetDIDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetDIDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetDIDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetDIDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDIDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetDIDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetDIDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetDIDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDIDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetDIDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDITristate(taskHandle, channel, data)
    @threadcall((:DAQmxGetDITristate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetDITristate(taskHandle, channel, data)
    @threadcall((:DAQmxSetDITristate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDITristate(taskHandle, channel)
    @threadcall((:DAQmxResetDITristate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDILogicFamily(taskHandle, channel, data)
    @threadcall((:DAQmxGetDILogicFamily, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetDILogicFamily(taskHandle, channel, data)
    @threadcall((:DAQmxSetDILogicFamily, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDILogicFamily(taskHandle, channel)
    @threadcall((:DAQmxResetDILogicFamily, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDIDataXferMech(taskHandle, channel, data)
    @threadcall((:DAQmxGetDIDataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetDIDataXferMech(taskHandle, channel, data)
    @threadcall((:DAQmxSetDIDataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDIDataXferMech(taskHandle, channel)
    @threadcall((:DAQmxResetDIDataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDIDataXferReqCond(taskHandle, channel, data)
    @threadcall((:DAQmxGetDIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetDIDataXferReqCond(taskHandle, channel, data)
    @threadcall((:DAQmxSetDIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDIDataXferReqCond(taskHandle, channel)
    @threadcall((:DAQmxResetDIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDIUsbXferReqSize(taskHandle, channel, data)
    @threadcall((:DAQmxGetDIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetDIUsbXferReqSize(taskHandle, channel, data)
    @threadcall((:DAQmxSetDIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetDIUsbXferReqSize(taskHandle, channel)
    @threadcall((:DAQmxResetDIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDIUsbXferReqCount(taskHandle, channel, data)
    @threadcall((:DAQmxGetDIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetDIUsbXferReqCount(taskHandle, channel, data)
    @threadcall((:DAQmxSetDIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetDIUsbXferReqCount(taskHandle, channel)
    @threadcall((:DAQmxResetDIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDIMemMapEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetDIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetDIMemMapEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetDIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDIMemMapEnable(taskHandle, channel)
    @threadcall((:DAQmxResetDIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDIAcquireOn(taskHandle, channel, data)
    @threadcall((:DAQmxGetDIAcquireOn, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetDIAcquireOn(taskHandle, channel, data)
    @threadcall((:DAQmxSetDIAcquireOn, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDIAcquireOn(taskHandle, channel)
    @threadcall((:DAQmxResetDIAcquireOn, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDOOutputDriveType(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOOutputDriveType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetDOOutputDriveType(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOOutputDriveType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDOOutputDriveType(taskHandle, channel)
    @threadcall((:DAQmxResetDOOutputDriveType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDOInvertLines(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOInvertLines, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetDOInvertLines(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOInvertLines, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDOInvertLines(taskHandle, channel)
    @threadcall((:DAQmxResetDOInvertLines, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDONumLines(taskHandle, channel, data)
    @threadcall((:DAQmxGetDONumLines, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxGetDOTristate(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOTristate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetDOTristate(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOTristate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDOTristate(taskHandle, channel)
    @threadcall((:DAQmxResetDOTristate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDOLineStatesStartState(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOLineStatesStartState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetDOLineStatesStartState(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOLineStatesStartState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDOLineStatesStartState(taskHandle, channel)
    @threadcall((:DAQmxResetDOLineStatesStartState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDOLineStatesPausedState(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOLineStatesPausedState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetDOLineStatesPausedState(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOLineStatesPausedState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDOLineStatesPausedState(taskHandle, channel)
    @threadcall((:DAQmxResetDOLineStatesPausedState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDOLineStatesDoneState(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOLineStatesDoneState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetDOLineStatesDoneState(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOLineStatesDoneState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDOLineStatesDoneState(taskHandle, channel)
    @threadcall((:DAQmxResetDOLineStatesDoneState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDOLogicFamily(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOLogicFamily, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetDOLogicFamily(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOLogicFamily, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDOLogicFamily(taskHandle, channel)
    @threadcall((:DAQmxResetDOLogicFamily, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDOOvercurrentLimit(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOOvercurrentLimit, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetDOOvercurrentLimit(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOOvercurrentLimit, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetDOOvercurrentLimit(taskHandle, channel)
    @threadcall((:DAQmxResetDOOvercurrentLimit, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDOOvercurrentAutoReenable(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOOvercurrentAutoReenable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetDOOvercurrentAutoReenable(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOOvercurrentAutoReenable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDOOvercurrentAutoReenable(taskHandle, channel)
    @threadcall((:DAQmxResetDOOvercurrentAutoReenable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDOOvercurrentReenablePeriod(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOOvercurrentReenablePeriod, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetDOOvercurrentReenablePeriod(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOOvercurrentReenablePeriod, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetDOOvercurrentReenablePeriod(taskHandle, channel)
    @threadcall((:DAQmxResetDOOvercurrentReenablePeriod, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDOUseOnlyOnBrdMem(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetDOUseOnlyOnBrdMem(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDOUseOnlyOnBrdMem(taskHandle, channel)
    @threadcall((:DAQmxResetDOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDODataXferMech(taskHandle, channel, data)
    @threadcall((:DAQmxGetDODataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetDODataXferMech(taskHandle, channel, data)
    @threadcall((:DAQmxSetDODataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDODataXferMech(taskHandle, channel)
    @threadcall((:DAQmxResetDODataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDODataXferReqCond(taskHandle, channel, data)
    @threadcall((:DAQmxGetDODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetDODataXferReqCond(taskHandle, channel, data)
    @threadcall((:DAQmxSetDODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDODataXferReqCond(taskHandle, channel)
    @threadcall((:DAQmxResetDODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDOUsbXferReqSize(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetDOUsbXferReqSize(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetDOUsbXferReqSize(taskHandle, channel)
    @threadcall((:DAQmxResetDOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDOUsbXferReqCount(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetDOUsbXferReqCount(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetDOUsbXferReqCount(taskHandle, channel)
    @threadcall((:DAQmxResetDOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDOMemMapEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetDOMemMapEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetDOMemMapEnable(taskHandle, channel)
    @threadcall((:DAQmxResetDOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDOGenerateOn(taskHandle, channel, data)
    @threadcall((:DAQmxGetDOGenerateOn, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetDOGenerateOn(taskHandle, channel, data)
    @threadcall((:DAQmxSetDOGenerateOn, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetDOGenerateOn(taskHandle, channel)
    @threadcall((:DAQmxResetDOGenerateOn, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIMax(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIMax, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIMax(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIMax, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIMax(taskHandle, channel)
    @threadcall((:DAQmxResetCIMax, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIMin(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIMin, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIMin(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIMin, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIMin(taskHandle, channel)
    @threadcall((:DAQmxResetCIMin, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICustomScaleName(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCICustomScaleName, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICustomScaleName(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICustomScaleName, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCICustomScaleName(taskHandle, channel)
    @threadcall((:DAQmxResetCICustomScaleName, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIMeasType(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIMeasType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxGetCIFreqUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFreqUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIFreqUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIFreqTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIFreqTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIFreqTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFreqTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIFreqTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFreqLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIFreqLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFreqThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIFreqThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIFreqThreshVoltage(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqHyst(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFreqHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIFreqHyst(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIFreqHyst(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFreqDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIFreqDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFreqDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIFreqDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIFreqDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIFreqDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIFreqDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIFreqDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFreqDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIFreqDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIFreqDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFreqDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIFreqDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqStartingEdge(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFreqStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqStartingEdge(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIFreqStartingEdge(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqMeasMeth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFreqMeasMeth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqMeasMeth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqMeasMeth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIFreqMeasMeth(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqMeasMeth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqEnableAveraging(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFreqEnableAveraging, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqEnableAveraging(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqEnableAveraging, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIFreqEnableAveraging(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqEnableAveraging, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqMeasTime(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFreqMeasTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIFreqMeasTime(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqMeasTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIFreqMeasTime(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqMeasTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFreqDiv(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFreqDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIFreqDiv(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFreqDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIFreqDiv(taskHandle, channel)
    @threadcall((:DAQmxResetCIFreqDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPeriodUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIPeriodTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPeriodTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIPeriodTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPeriodTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPeriodLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPeriodThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPeriodThreshVoltage(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodHyst(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPeriodHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodHyst(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPeriodHyst(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPeriodDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPeriodDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPeriodDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIPeriodDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPeriodDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIPeriodDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPeriodDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPeriodDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPeriodDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodStartingEdge(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPeriodStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodStartingEdge(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodStartingEdge(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodMeasMeth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPeriodMeasMeth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodMeasMeth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodMeasMeth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodMeasMeth(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodMeasMeth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodEnableAveraging(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPeriodEnableAveraging, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodEnableAveraging(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodEnableAveraging, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodEnableAveraging(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodEnableAveraging, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodMeasTime(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPeriodMeasTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodMeasTime(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodMeasTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPeriodMeasTime(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodMeasTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPeriodDiv(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPeriodDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIPeriodDiv(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPeriodDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIPeriodDiv(taskHandle, channel)
    @threadcall((:DAQmxResetCIPeriodDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCICountEdgesTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesThreshVoltage(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesHyst(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesHyst(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesHyst(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCICountEdgesDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesDir(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesDir, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesDir(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesDir, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesDir(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesDir, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesDirTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCICountEdgesDirTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesDirTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesDirTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesDirTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesDirTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountDirTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountDirTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountDirTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountDirTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountDirLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountDirLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountDirLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountDirLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountDirThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountDirThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountDirThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirThreshVoltage(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountDirThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirHyst(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountDirHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountDirHyst(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountDirHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirHyst(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountDirHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountDirDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountDirDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountDirDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountDirDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountDirDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountDirDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountDirDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountDirDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCICountEdgesCountDirDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesCountDirDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountDirDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountDirDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountDirDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountDirDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountDirDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountDirDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountDirDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountDirDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountDirDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountDirDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountDirDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountDirDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesInitialCnt(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesInitialCnt, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesInitialCnt(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesInitialCnt, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesInitialCnt(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesInitialCnt, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesActiveEdge(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesActiveEdge(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesActiveEdge(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountResetEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountResetEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountResetEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetResetCount(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountResetResetCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetResetCount(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountResetResetCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetResetCount(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountResetResetCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCICountEdgesCountResetTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesCountResetTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountResetTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountResetTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountResetTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountResetTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountResetTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountResetLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountResetLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountResetLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountResetThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountResetThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetThreshVoltage(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountResetThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetHyst(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountResetHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetHyst(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountResetHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetHyst(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountResetHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountResetDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountResetDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountResetDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountResetDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountResetDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountResetDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCICountEdgesCountResetDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesCountResetDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountResetDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountResetDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountResetDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountResetDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountResetDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountResetDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountResetDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountResetDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesCountResetActiveEdge(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesCountResetActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesCountResetActiveEdge(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesCountResetActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesCountResetActiveEdge(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesCountResetActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesGateEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesGateEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesGateEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCICountEdgesGateTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesGateTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesGateTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesGateTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesGateTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesGateTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesGateTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesGateLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesGateLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesGateLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesGateThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesGateThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateThreshVoltage(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesGateThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateHyst(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesGateHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateHyst(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesGateHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateHyst(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesGateHyst, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesGateDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesGateDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesGateDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesGateDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesGateDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesGateDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCICountEdgesGateDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICountEdgesGateDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesGateDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesGateDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesGateDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesGateDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesGateDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICountEdgesGateWhen(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICountEdgesGateWhen, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCICountEdgesGateWhen(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICountEdgesGateWhen, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICountEdgesGateWhen(taskHandle, channel)
    @threadcall((:DAQmxResetCICountEdgesGateWhen, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIDutyCycleTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIDutyCycleTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIDutyCycleTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCIDutyCycleTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIDutyCycleTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIDutyCycleTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIDutyCycleTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCIDutyCycleTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIDutyCycleLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIDutyCycleLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIDutyCycleLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCIDutyCycleLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIDutyCycleDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIDutyCycleDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIDutyCycleDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIDutyCycleDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIDutyCycleDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIDutyCycleDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIDutyCycleDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCIDutyCycleDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIDutyCycleDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIDutyCycleDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIDutyCycleDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCIDutyCycleDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIDutyCycleDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIDutyCycleDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIDutyCycleDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCIDutyCycleDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDutyCycleStartingEdge(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIDutyCycleStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIDutyCycleStartingEdge(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIDutyCycleStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIDutyCycleStartingEdge(taskHandle, channel)
    @threadcall((:DAQmxResetCIDutyCycleStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIAngEncoderUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIAngEncoderUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIAngEncoderUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIAngEncoderUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIAngEncoderUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCIAngEncoderUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIAngEncoderPulsesPerRev(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIAngEncoderPulsesPerRev, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIAngEncoderPulsesPerRev(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIAngEncoderPulsesPerRev, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIAngEncoderPulsesPerRev(taskHandle, channel)
    @threadcall((:DAQmxResetCIAngEncoderPulsesPerRev, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIAngEncoderInitialAngle(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIAngEncoderInitialAngle, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIAngEncoderInitialAngle(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIAngEncoderInitialAngle, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIAngEncoderInitialAngle(taskHandle, channel)
    @threadcall((:DAQmxResetCIAngEncoderInitialAngle, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCILinEncoderUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCILinEncoderUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCILinEncoderUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCILinEncoderUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCILinEncoderUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCILinEncoderUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCILinEncoderDistPerPulse(taskHandle, channel, data)
    @threadcall((:DAQmxGetCILinEncoderDistPerPulse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCILinEncoderDistPerPulse(taskHandle, channel, data)
    @threadcall((:DAQmxSetCILinEncoderDistPerPulse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCILinEncoderDistPerPulse(taskHandle, channel)
    @threadcall((:DAQmxResetCILinEncoderDistPerPulse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCILinEncoderInitialPos(taskHandle, channel, data)
    @threadcall((:DAQmxGetCILinEncoderInitialPos, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCILinEncoderInitialPos(taskHandle, channel, data)
    @threadcall((:DAQmxSetCILinEncoderInitialPos, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCILinEncoderInitialPos(taskHandle, channel)
    @threadcall((:DAQmxResetCILinEncoderInitialPos, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderDecodingType(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderDecodingType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderDecodingType(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderDecodingType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderDecodingType(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderDecodingType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIEncoderAInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIEncoderAInputTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderAInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderAInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderAInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderAInputTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderAInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderAInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderAInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderAInputLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderAInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderAInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderAInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderAInputDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderAInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderAInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderAInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderAInputDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderAInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderAInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIEncoderAInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIEncoderAInputDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderAInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderAInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderAInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderAInputDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderAInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderAInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderAInputDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderAInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderAInputDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderAInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderAInputDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderAInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIEncoderBInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIEncoderBInputTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderBInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderBInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderBInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderBInputTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderBInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderBInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderBInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderBInputLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderBInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderBInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderBInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderBInputDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderBInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderBInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderBInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderBInputDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderBInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderBInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIEncoderBInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIEncoderBInputDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderBInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderBInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderBInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderBInputDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderBInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderBInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderBInputDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderBInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderBInputDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderBInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderBInputDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderBInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIEncoderZInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIEncoderZInputTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderZInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderZInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderZInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZInputTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderZInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderZInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderZInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZInputLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderZInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderZInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderZInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZInputDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderZInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderZInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderZInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZInputDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderZInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderZInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIEncoderZInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIEncoderZInputDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderZInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderZInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderZInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZInputDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderZInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderZInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZInputDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderZInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZInputDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderZInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZInputDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderZInputDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZIndexEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderZIndexEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZIndexEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderZIndexEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZIndexEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderZIndexEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZIndexVal(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderZIndexVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZIndexVal(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderZIndexVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZIndexVal(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderZIndexVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIEncoderZIndexPhase(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIEncoderZIndexPhase, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIEncoderZIndexPhase(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIEncoderZIndexPhase, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIEncoderZIndexPhase(taskHandle, channel)
    @threadcall((:DAQmxResetCIEncoderZIndexPhase, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseWidthUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseWidthUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseWidthUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIPulseWidthTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseWidthTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseWidthTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseWidthTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseWidthTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseWidthTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseWidthTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseWidthLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseWidthLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseWidthLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseWidthDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseWidthDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseWidthDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseWidthDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseWidthDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseWidthDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIPulseWidthDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseWidthDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseWidthDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseWidthDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseWidthDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseWidthDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseWidthDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseWidthDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseWidthDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseWidthDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseWidthStartingEdge(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseWidthStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseWidthStartingEdge(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseWidthStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseWidthStartingEdge(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseWidthStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITimestampUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITimestampUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCITimestampUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITimestampUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITimestampUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCITimestampUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITimestampInitialSeconds(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITimestampInitialSeconds, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCITimestampInitialSeconds(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITimestampInitialSeconds, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCITimestampInitialSeconds(taskHandle, channel)
    @threadcall((:DAQmxResetCITimestampInitialSeconds, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIGPSSyncMethod(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIGPSSyncMethod, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIGPSSyncMethod(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIGPSSyncMethod, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIGPSSyncMethod(taskHandle, channel)
    @threadcall((:DAQmxResetCIGPSSyncMethod, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIGPSSyncSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIGPSSyncSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIGPSSyncSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIGPSSyncSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIGPSSyncSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCIGPSSyncSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityAngEncoderUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityAngEncoderUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityAngEncoderUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityAngEncoderUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityAngEncoderUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityAngEncoderUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityAngEncoderPulsesPerRev(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityAngEncoderPulsesPerRev, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityAngEncoderPulsesPerRev(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityAngEncoderPulsesPerRev, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityAngEncoderPulsesPerRev(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityAngEncoderPulsesPerRev, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityLinEncoderUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityLinEncoderUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityLinEncoderUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityLinEncoderUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityLinEncoderUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityLinEncoderUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityLinEncoderDistPerPulse(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityLinEncoderDistPerPulse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityLinEncoderDistPerPulse(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityLinEncoderDistPerPulse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIVelocityLinEncoderDistPerPulse(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityLinEncoderDistPerPulse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderDecodingType(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityEncoderDecodingType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderDecodingType(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderDecodingType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderDecodingType(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderDecodingType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderAInputTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIVelocityEncoderAInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIVelocityEncoderAInputTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderAInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderAInputTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderAInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderAInputTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityEncoderAInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderAInputTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderAInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderAInputTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderAInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderAInputLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityEncoderAInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderAInputLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderAInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderAInputLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderAInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderAInputDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityEncoderAInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderAInputDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderAInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderAInputDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderAInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderAInputDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityEncoderAInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderAInputDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderAInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderAInputDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderAInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderAInputDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIVelocityEncoderAInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIVelocityEncoderAInputDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderAInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderAInputDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderAInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderAInputDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityEncoderAInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderAInputDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderAInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderAInputDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderAInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderBInputTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIVelocityEncoderBInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIVelocityEncoderBInputTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderBInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderBInputTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderBInputTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderBInputTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityEncoderBInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderBInputTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderBInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderBInputTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderBInputTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderBInputLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityEncoderBInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderBInputLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderBInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderBInputLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderBInputLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderBInputDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityEncoderBInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderBInputDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderBInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderBInputDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderBInputDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderBInputDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityEncoderBInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderBInputDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderBInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderBInputDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderBInputDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderBInputDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIVelocityEncoderBInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIVelocityEncoderBInputDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderBInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderBInputDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderBInputDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityEncoderBInputDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityEncoderBInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityEncoderBInputDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityEncoderBInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIVelocityEncoderBInputDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityEncoderBInputDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityMeasTime(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityMeasTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityMeasTime(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityMeasTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIVelocityMeasTime(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityMeasTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIVelocityDiv(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIVelocityDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIVelocityDiv(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIVelocityDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIVelocityDiv(taskHandle, channel)
    @threadcall((:DAQmxResetCIVelocityDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCITwoEdgeSepFirstTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCITwoEdgeSepFirstTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepFirstTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepFirstTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepFirstTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepFirstTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepFirstTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepFirstTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepFirstLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepFirstLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepFirstLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepFirstLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepFirstDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepFirstDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepFirstDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepFirstDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepFirstDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepFirstDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepFirstDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepFirstDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepFirstDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepFirstDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepFirstDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepFirstDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepFirstDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepFirstEdge(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepFirstEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepFirstEdge(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepFirstEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepFirstEdge(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepFirstEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCITwoEdgeSepSecondTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCITwoEdgeSepSecondTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepSecondTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepSecondTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepSecondTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepSecondTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepSecondTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepSecondTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepSecondLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepSecondLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepSecondLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepSecondLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepSecondDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepSecondDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepSecondDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepSecondDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepSecondDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepSecondDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepSecondDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepSecondDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepSecondDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepSecondDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepSecondDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepSecondDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepSecondDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCITwoEdgeSepSecondEdge(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITwoEdgeSepSecondEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCITwoEdgeSepSecondEdge(taskHandle, channel, data)
    @threadcall((:DAQmxSetCITwoEdgeSepSecondEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCITwoEdgeSepSecondEdge(taskHandle, channel)
    @threadcall((:DAQmxResetCITwoEdgeSepSecondEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCISemiPeriodUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCISemiPeriodUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCISemiPeriodUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCISemiPeriodTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCISemiPeriodTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCISemiPeriodTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCISemiPeriodTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCISemiPeriodTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCISemiPeriodTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCISemiPeriodTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCISemiPeriodLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCISemiPeriodLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCISemiPeriodLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCISemiPeriodDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCISemiPeriodDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCISemiPeriodDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCISemiPeriodDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCISemiPeriodDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCISemiPeriodDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCISemiPeriodDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCISemiPeriodDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCISemiPeriodDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCISemiPeriodDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCISemiPeriodDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCISemiPeriodDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCISemiPeriodDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCISemiPeriodDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCISemiPeriodDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCISemiPeriodDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCISemiPeriodStartingEdge(taskHandle, channel, data)
    @threadcall((:DAQmxGetCISemiPeriodStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCISemiPeriodStartingEdge(taskHandle, channel, data)
    @threadcall((:DAQmxSetCISemiPeriodStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCISemiPeriodStartingEdge(taskHandle, channel)
    @threadcall((:DAQmxResetCISemiPeriodStartingEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseFreqUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseFreqUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseFreqUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIPulseFreqTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseFreqTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseFreqTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseFreqTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseFreqTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseFreqTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseFreqTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseFreqLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseFreqLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseFreqLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseFreqDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseFreqDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseFreqDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseFreqDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseFreqDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseFreqDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIPulseFreqDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseFreqDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseFreqDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseFreqDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseFreqDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseFreqDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseFreqDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseFreqDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseFreqDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseFreqDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseFreqStartEdge(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseFreqStartEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseFreqStartEdge(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseFreqStartEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseFreqStartEdge(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseFreqStartEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTimeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTimeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTimeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIPulseTimeTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseTimeTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTimeTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTimeTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTimeTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTimeTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTimeTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTimeLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTimeLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTimeLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTimeDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTimeDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTimeDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTimeDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTimeDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTimeDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIPulseTimeDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseTimeDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTimeDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTimeDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTimeDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTimeDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTimeDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTimeDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTimeDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTimeDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTimeStartEdge(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTimeStartEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTimeStartEdge(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTimeStartEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTimeStartEdge(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTimeStartEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIPulseTicksTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseTicksTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTicksTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTicksTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTicksTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTicksTermCfg(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTicksTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksTermCfg(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTicksTermCfg, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTicksLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTicksLogicLvlBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTicksLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksLogicLvlBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTicksLogicLvlBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTicksDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTicksDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTicksDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTicksDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTicksDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTicksDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTicksDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTicksDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCIPulseTicksDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCIPulseTicksDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTicksDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTicksDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTicksDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTicksDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTicksDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTicksDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTicksDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTicksDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTicksDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTicksDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPulseTicksStartEdge(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPulseTicksStartEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIPulseTicksStartEdge(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPulseTicksStartEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIPulseTicksStartEdge(taskHandle, channel)
    @threadcall((:DAQmxResetCIPulseTicksStartEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCICtrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICtrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICtrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCICtrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICtrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICtrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICtrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCICtrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseActiveEdge(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICtrTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCICtrTimebaseActiveEdge(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICtrTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseActiveEdge(taskHandle, channel)
    @threadcall((:DAQmxResetCICtrTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICtrTimebaseDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICtrTimebaseDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICtrTimebaseDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCICtrTimebaseDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICtrTimebaseDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICtrTimebaseDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICtrTimebaseDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCICtrTimebaseDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCICtrTimebaseDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCICtrTimebaseDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICtrTimebaseDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCICtrTimebaseDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICtrTimebaseDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCICtrTimebaseDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICtrTimebaseDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCICtrTimebaseDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICtrTimebaseDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICtrTimebaseDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCICtrTimebaseDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICtrTimebaseDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCICtrTimebaseDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIThreshVoltage(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIThreshVoltage(taskHandle, channel)
    @threadcall((:DAQmxResetCIThreshVoltage, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFilterEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFilterEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIFilterEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFilterEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIFilterEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIFilterEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFilterFreq(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFilterFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIFilterFreq(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFilterFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIFilterFreq(taskHandle, channel)
    @threadcall((:DAQmxResetCIFilterFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFilterResponse(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFilterResponse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIFilterResponse(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFilterResponse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIFilterResponse(taskHandle, channel)
    @threadcall((:DAQmxResetCIFilterResponse, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFilterOrder(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFilterOrder, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIFilterOrder(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFilterOrder, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIFilterOrder(taskHandle, channel)
    @threadcall((:DAQmxResetCIFilterOrder, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIFilterDelay(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFilterDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxGetCIFilterDelayUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIFilterDelayUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIFilterDelayUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCIFilterDelayUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCICount(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxGetCIOutputState(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIOutputState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxGetCITCReached(taskHandle, channel, data)
    @threadcall((:DAQmxGetCITCReached, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxGetCICtrTimebaseMasterTimebaseDiv(taskHandle, channel, data)
    @threadcall((:DAQmxGetCICtrTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCICtrTimebaseMasterTimebaseDiv(taskHandle, channel, data)
    @threadcall((:DAQmxSetCICtrTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCICtrTimebaseMasterTimebaseDiv(taskHandle, channel)
    @threadcall((:DAQmxResetCICtrTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCISampClkOverrunBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetCISampClkOverrunBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCISampClkOverrunBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetCISampClkOverrunBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCISampClkOverrunBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetCISampClkOverrunBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCISampClkOverrunSentinelVal(taskHandle, channel, data)
    @threadcall((:DAQmxGetCISampClkOverrunSentinelVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCISampClkOverrunSentinelVal(taskHandle, channel, data)
    @threadcall((:DAQmxSetCISampClkOverrunSentinelVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCISampClkOverrunSentinelVal(taskHandle, channel)
    @threadcall((:DAQmxResetCISampClkOverrunSentinelVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDataXferMech(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIDataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIDataXferMech(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIDataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIDataXferMech(taskHandle, channel)
    @threadcall((:DAQmxResetCIDataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIDataXferReqCond(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCIDataXferReqCond(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCIDataXferReqCond(taskHandle, channel)
    @threadcall((:DAQmxResetCIDataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIUsbXferReqSize(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIUsbXferReqSize(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIUsbXferReqSize(taskHandle, channel)
    @threadcall((:DAQmxResetCIUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIUsbXferReqCount(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIUsbXferReqCount(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIUsbXferReqCount(taskHandle, channel)
    @threadcall((:DAQmxResetCIUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIMemMapEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIMemMapEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIMemMapEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCIMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCINumPossiblyInvalidSamps(taskHandle, channel, data)
    @threadcall((:DAQmxGetCINumPossiblyInvalidSamps, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxGetCIDupCountPrevent(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIDupCountPrevent, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCIDupCountPrevent(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIDupCountPrevent, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCIDupCountPrevent(taskHandle, channel)
    @threadcall((:DAQmxResetCIDupCountPrevent, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIPrescaler(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIPrescaler, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCIPrescaler(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIPrescaler, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCIPrescaler(taskHandle, channel)
    @threadcall((:DAQmxResetCIPrescaler, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCIMaxMeasPeriod(taskHandle, channel, data)
    @threadcall((:DAQmxGetCIMaxMeasPeriod, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCIMaxMeasPeriod(taskHandle, channel, data)
    @threadcall((:DAQmxSetCIMaxMeasPeriod, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCIMaxMeasPeriod(taskHandle, channel)
    @threadcall((:DAQmxResetCIMaxMeasPeriod, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOOutputType(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOOutputType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxGetCOPulseIdleState(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOPulseIdleState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCOPulseIdleState(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOPulseIdleState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCOPulseIdleState(taskHandle, channel)
    @threadcall((:DAQmxResetCOPulseIdleState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseTerm(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCOPulseTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCOPulseTerm(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOPulseTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCOPulseTerm(taskHandle, channel)
    @threadcall((:DAQmxResetCOPulseTerm, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseTimeUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOPulseTimeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCOPulseTimeUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOPulseTimeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCOPulseTimeUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCOPulseTimeUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseHighTime(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOPulseHighTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCOPulseHighTime(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOPulseHighTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOPulseHighTime(taskHandle, channel)
    @threadcall((:DAQmxResetCOPulseHighTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseLowTime(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOPulseLowTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCOPulseLowTime(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOPulseLowTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOPulseLowTime(taskHandle, channel)
    @threadcall((:DAQmxResetCOPulseLowTime, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseTimeInitialDelay(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOPulseTimeInitialDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCOPulseTimeInitialDelay(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOPulseTimeInitialDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOPulseTimeInitialDelay(taskHandle, channel)
    @threadcall((:DAQmxResetCOPulseTimeInitialDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseDutyCyc(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOPulseDutyCyc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCOPulseDutyCyc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOPulseDutyCyc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOPulseDutyCyc(taskHandle, channel)
    @threadcall((:DAQmxResetCOPulseDutyCyc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseFreqUnits(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOPulseFreqUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCOPulseFreqUnits(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOPulseFreqUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCOPulseFreqUnits(taskHandle, channel)
    @threadcall((:DAQmxResetCOPulseFreqUnits, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseFreq(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOPulseFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCOPulseFreq(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOPulseFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOPulseFreq(taskHandle, channel)
    @threadcall((:DAQmxResetCOPulseFreq, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseFreqInitialDelay(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOPulseFreqInitialDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCOPulseFreqInitialDelay(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOPulseFreqInitialDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOPulseFreqInitialDelay(taskHandle, channel)
    @threadcall((:DAQmxResetCOPulseFreqInitialDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseHighTicks(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOPulseHighTicks, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOPulseHighTicks(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOPulseHighTicks, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOPulseHighTicks(taskHandle, channel)
    @threadcall((:DAQmxResetCOPulseHighTicks, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseLowTicks(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOPulseLowTicks, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOPulseLowTicks(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOPulseLowTicks, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOPulseLowTicks(taskHandle, channel)
    @threadcall((:DAQmxResetCOPulseLowTicks, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseTicksInitialDelay(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOPulseTicksInitialDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOPulseTicksInitialDelay(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOPulseTicksInitialDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOPulseTicksInitialDelay(taskHandle, channel)
    @threadcall((:DAQmxResetCOPulseTicksInitialDelay, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCOCtrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCOCtrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOCtrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCOCtrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOCtrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCOCtrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOCtrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCOCtrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseActiveEdge(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOCtrTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCOCtrTimebaseActiveEdge(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOCtrTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseActiveEdge(taskHandle, channel)
    @threadcall((:DAQmxResetCOCtrTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOCtrTimebaseDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCOCtrTimebaseDigFltrEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOCtrTimebaseDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseDigFltrEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCOCtrTimebaseDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOCtrTimebaseDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCOCtrTimebaseDigFltrMinPulseWidth(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOCtrTimebaseDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseDigFltrMinPulseWidth(taskHandle, channel)
    @threadcall((:DAQmxResetCOCtrTimebaseDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseDigFltrTimebaseSrc(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetCOCtrTimebaseDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetCOCtrTimebaseDigFltrTimebaseSrc(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOCtrTimebaseDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseDigFltrTimebaseSrc(taskHandle, channel)
    @threadcall((:DAQmxResetCOCtrTimebaseDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOCtrTimebaseDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, channel, data)
end

function DAQmxSetCOCtrTimebaseDigFltrTimebaseRate(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOCtrTimebaseDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseDigFltrTimebaseRate(taskHandle, channel)
    @threadcall((:DAQmxResetCOCtrTimebaseDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOCtrTimebaseDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCOCtrTimebaseDigSyncEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOCtrTimebaseDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseDigSyncEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCOCtrTimebaseDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCount(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxGetCOOutputState(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOOutputState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxGetCOAutoIncrCnt(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOAutoIncrCnt, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOAutoIncrCnt(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOAutoIncrCnt, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOAutoIncrCnt(taskHandle, channel)
    @threadcall((:DAQmxResetCOAutoIncrCnt, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOCtrTimebaseMasterTimebaseDiv(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOCtrTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOCtrTimebaseMasterTimebaseDiv(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOCtrTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOCtrTimebaseMasterTimebaseDiv(taskHandle, channel)
    @threadcall((:DAQmxResetCOCtrTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPulseDone(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOPulseDone, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxGetCOEnableInitialDelayOnRetrigger(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOEnableInitialDelayOnRetrigger, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCOEnableInitialDelayOnRetrigger(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOEnableInitialDelayOnRetrigger, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCOEnableInitialDelayOnRetrigger(taskHandle, channel)
    @threadcall((:DAQmxResetCOEnableInitialDelayOnRetrigger, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOConstrainedGenMode(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOConstrainedGenMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCOConstrainedGenMode(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOConstrainedGenMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCOConstrainedGenMode(taskHandle, channel)
    @threadcall((:DAQmxResetCOConstrainedGenMode, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOUseOnlyOnBrdMem(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCOUseOnlyOnBrdMem(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCOUseOnlyOnBrdMem(taskHandle, channel)
    @threadcall((:DAQmxResetCOUseOnlyOnBrdMem, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCODataXferMech(taskHandle, channel, data)
    @threadcall((:DAQmxGetCODataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCODataXferMech(taskHandle, channel, data)
    @threadcall((:DAQmxSetCODataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCODataXferMech(taskHandle, channel)
    @threadcall((:DAQmxResetCODataXferMech, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCODataXferReqCond(taskHandle, channel, data)
    @threadcall((:DAQmxGetCODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetCODataXferReqCond(taskHandle, channel, data)
    @threadcall((:DAQmxSetCODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetCODataXferReqCond(taskHandle, channel)
    @threadcall((:DAQmxResetCODataXferReqCond, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOUsbXferReqSize(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOUsbXferReqSize(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOUsbXferReqSize(taskHandle, channel)
    @threadcall((:DAQmxResetCOUsbXferReqSize, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOUsbXferReqCount(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOUsbXferReqCount(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOUsbXferReqCount(taskHandle, channel)
    @threadcall((:DAQmxResetCOUsbXferReqCount, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOMemMapEnable(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxSetCOMemMapEnable(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, channel, data)
end

function DAQmxResetCOMemMapEnable(taskHandle, channel)
    @threadcall((:DAQmxResetCOMemMapEnable, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCOPrescaler(taskHandle, channel, data)
    @threadcall((:DAQmxGetCOPrescaler, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, channel, data)
end

function DAQmxSetCOPrescaler(taskHandle, channel, data)
    @threadcall((:DAQmxSetCOPrescaler, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, channel, data)
end

function DAQmxResetCOPrescaler(taskHandle, channel)
    @threadcall((:DAQmxResetCOPrescaler, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetCORdyForNewVal(taskHandle, channel, data)
    @threadcall((:DAQmxGetCORdyForNewVal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxGetChanType(taskHandle, channel, data)
    @threadcall((:DAQmxGetChanType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxGetPhysicalChanName(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetPhysicalChanName, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetPhysicalChanName(taskHandle, channel, data)
    @threadcall((:DAQmxSetPhysicalChanName, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxGetChanDescr(taskHandle, channel, data, bufferSize)
    @threadcall((:DAQmxGetChanDescr, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, channel, data, bufferSize)
end

function DAQmxSetChanDescr(taskHandle, channel, data)
    @threadcall((:DAQmxSetChanDescr, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, channel, data)
end

function DAQmxResetChanDescr(taskHandle, channel)
    @threadcall((:DAQmxResetChanDescr, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetChanIsGlobal(taskHandle, channel, data)
    @threadcall((:DAQmxGetChanIsGlobal, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, channel, data)
end

function DAQmxGetChanSyncUnlockBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxGetChanSyncUnlockBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, channel, data)
end

function DAQmxSetChanSyncUnlockBehavior(taskHandle, channel, data)
    @threadcall((:DAQmxSetChanSyncUnlockBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, channel, data)
end

function DAQmxResetChanSyncUnlockBehavior(taskHandle, channel)
    @threadcall((:DAQmxResetChanSyncUnlockBehavior, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, channel)
end

function DAQmxGetDevIsSimulated(device, data)
    @threadcall((:DAQmxGetDevIsSimulated, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), device, data)
end

function DAQmxGetDevProductCategory(device, data)
    @threadcall((:DAQmxGetDevProductCategory, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), device, data)
end

function DAQmxGetDevProductType(device, data, bufferSize)
    @threadcall((:DAQmxGetDevProductType, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevProductNum(device, data)
    @threadcall((:DAQmxGetDevProductNum, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevSerialNum(device, data)
    @threadcall((:DAQmxGetDevSerialNum, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevAccessoryProductTypes(device, data, bufferSize)
    @threadcall((:DAQmxGetDevAccessoryProductTypes, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevAccessoryProductNums(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAccessoryProductNums, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAccessorySerialNums(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAccessorySerialNums, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetCarrierSerialNum(device, data)
    @threadcall((:DAQmxGetCarrierSerialNum, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetFieldDAQDevName(device, data, bufferSize)
    @threadcall((:DAQmxGetFieldDAQDevName, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetFieldDAQBankDevNames(device, data, bufferSize)
    @threadcall((:DAQmxGetFieldDAQBankDevNames, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevChassisModuleDevNames(device, data, bufferSize)
    @threadcall((:DAQmxGetDevChassisModuleDevNames, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevAnlgTrigSupported(device, data)
    @threadcall((:DAQmxGetDevAnlgTrigSupported, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), device, data)
end

function DAQmxGetDevDigTrigSupported(device, data)
    @threadcall((:DAQmxGetDevDigTrigSupported, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), device, data)
end

function DAQmxGetDevTimeTrigSupported(device, data)
    @threadcall((:DAQmxGetDevTimeTrigSupported, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), device, data)
end

function DAQmxGetDevAIPhysicalChans(device, data, bufferSize)
    @threadcall((:DAQmxGetDevAIPhysicalChans, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevAISupportedMeasTypes(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAISupportedMeasTypes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIMaxSingleChanRate(device, data)
    @threadcall((:DAQmxGetDevAIMaxSingleChanRate, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), device, data)
end

function DAQmxGetDevAIMaxMultiChanRate(device, data)
    @threadcall((:DAQmxGetDevAIMaxMultiChanRate, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), device, data)
end

function DAQmxGetDevAIMinRate(device, data)
    @threadcall((:DAQmxGetDevAIMinRate, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), device, data)
end

function DAQmxGetDevAISimultaneousSamplingSupported(device, data)
    @threadcall((:DAQmxGetDevAISimultaneousSamplingSupported, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), device, data)
end

function DAQmxGetDevAINumSampTimingEngines(device, data)
    @threadcall((:DAQmxGetDevAINumSampTimingEngines, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevAISampModes(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAISampModes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAINumSyncPulseSrcs(device, data)
    @threadcall((:DAQmxGetDevAINumSyncPulseSrcs, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevAITrigUsage(device, data)
    @threadcall((:DAQmxGetDevAITrigUsage, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), device, data)
end

function DAQmxGetDevAIVoltageRngs(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAIVoltageRngs, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIVoltageIntExcitDiscreteVals(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAIVoltageIntExcitDiscreteVals, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIVoltageIntExcitRangeVals(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAIVoltageIntExcitRangeVals, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIChargeRngs(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAIChargeRngs, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAICurrentRngs(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAICurrentRngs, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAICurrentIntExcitDiscreteVals(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAICurrentIntExcitDiscreteVals, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIBridgeRngs(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAIBridgeRngs, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIResistanceRngs(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAIResistanceRngs, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIFreqRngs(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAIFreqRngs, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIGains(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAIGains, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAICouplings(device, data)
    @threadcall((:DAQmxGetDevAICouplings, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), device, data)
end

function DAQmxGetDevAILowpassCutoffFreqDiscreteVals(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAILowpassCutoffFreqDiscreteVals, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAILowpassCutoffFreqRangeVals(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAILowpassCutoffFreqRangeVals, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetAIDigFltrTypes(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetAIDigFltrTypes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIDigFltrLowpassCutoffFreqDiscreteVals(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAIDigFltrLowpassCutoffFreqDiscreteVals, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAIDigFltrLowpassCutoffFreqRangeVals(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAIDigFltrLowpassCutoffFreqRangeVals, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAOPhysicalChans(device, data, bufferSize)
    @threadcall((:DAQmxGetDevAOPhysicalChans, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevAOSupportedOutputTypes(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAOSupportedOutputTypes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAOMaxRate(device, data)
    @threadcall((:DAQmxGetDevAOMaxRate, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), device, data)
end

function DAQmxGetDevAOMinRate(device, data)
    @threadcall((:DAQmxGetDevAOMinRate, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), device, data)
end

function DAQmxGetDevAOSampClkSupported(device, data)
    @threadcall((:DAQmxGetDevAOSampClkSupported, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), device, data)
end

function DAQmxGetDevAONumSampTimingEngines(device, data)
    @threadcall((:DAQmxGetDevAONumSampTimingEngines, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevAOSampModes(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAOSampModes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAONumSyncPulseSrcs(device, data)
    @threadcall((:DAQmxGetDevAONumSyncPulseSrcs, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevAOTrigUsage(device, data)
    @threadcall((:DAQmxGetDevAOTrigUsage, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), device, data)
end

function DAQmxGetDevAOVoltageRngs(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAOVoltageRngs, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAOCurrentRngs(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAOCurrentRngs, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevAOGains(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevAOGains, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevDILines(device, data, bufferSize)
    @threadcall((:DAQmxGetDevDILines, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevDIPorts(device, data, bufferSize)
    @threadcall((:DAQmxGetDevDIPorts, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevDIMaxRate(device, data)
    @threadcall((:DAQmxGetDevDIMaxRate, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), device, data)
end

function DAQmxGetDevDINumSampTimingEngines(device, data)
    @threadcall((:DAQmxGetDevDINumSampTimingEngines, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevDITrigUsage(device, data)
    @threadcall((:DAQmxGetDevDITrigUsage, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), device, data)
end

function DAQmxGetDevDOLines(device, data, bufferSize)
    @threadcall((:DAQmxGetDevDOLines, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevDOPorts(device, data, bufferSize)
    @threadcall((:DAQmxGetDevDOPorts, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevDOMaxRate(device, data)
    @threadcall((:DAQmxGetDevDOMaxRate, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), device, data)
end

function DAQmxGetDevDONumSampTimingEngines(device, data)
    @threadcall((:DAQmxGetDevDONumSampTimingEngines, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevDOTrigUsage(device, data)
    @threadcall((:DAQmxGetDevDOTrigUsage, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), device, data)
end

function DAQmxGetDevCIPhysicalChans(device, data, bufferSize)
    @threadcall((:DAQmxGetDevCIPhysicalChans, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevCISupportedMeasTypes(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevCISupportedMeasTypes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevCITrigUsage(device, data)
    @threadcall((:DAQmxGetDevCITrigUsage, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), device, data)
end

function DAQmxGetDevCISampClkSupported(device, data)
    @threadcall((:DAQmxGetDevCISampClkSupported, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), device, data)
end

function DAQmxGetDevCISampModes(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevCISampModes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevCIMaxSize(device, data)
    @threadcall((:DAQmxGetDevCIMaxSize, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevCIMaxTimebase(device, data)
    @threadcall((:DAQmxGetDevCIMaxTimebase, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), device, data)
end

function DAQmxGetDevCOPhysicalChans(device, data, bufferSize)
    @threadcall((:DAQmxGetDevCOPhysicalChans, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevCOSupportedOutputTypes(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevCOSupportedOutputTypes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevCOSampClkSupported(device, data)
    @threadcall((:DAQmxGetDevCOSampClkSupported, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), device, data)
end

function DAQmxGetDevCOSampModes(device, data, arraySizeInElements)
    @threadcall((:DAQmxGetDevCOSampModes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), device, data, arraySizeInElements)
end

function DAQmxGetDevCOTrigUsage(device, data)
    @threadcall((:DAQmxGetDevCOTrigUsage, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), device, data)
end

function DAQmxGetDevCOMaxSize(device, data)
    @threadcall((:DAQmxGetDevCOMaxSize, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevCOMaxTimebase(device, data)
    @threadcall((:DAQmxGetDevCOMaxTimebase, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), device, data)
end

function DAQmxGetDevTEDSHWTEDSSupported(device, data)
    @threadcall((:DAQmxGetDevTEDSHWTEDSSupported, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), device, data)
end

function DAQmxGetDevNumDMAChans(device, data)
    @threadcall((:DAQmxGetDevNumDMAChans, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevBusType(device, data)
    @threadcall((:DAQmxGetDevBusType, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), device, data)
end

function DAQmxGetDevPCIBusNum(device, data)
    @threadcall((:DAQmxGetDevPCIBusNum, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevPCIDevNum(device, data)
    @threadcall((:DAQmxGetDevPCIDevNum, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevPXIChassisNum(device, data)
    @threadcall((:DAQmxGetDevPXIChassisNum, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevPXISlotNum(device, data)
    @threadcall((:DAQmxGetDevPXISlotNum, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevCompactDAQChassisDevName(device, data, bufferSize)
    @threadcall((:DAQmxGetDevCompactDAQChassisDevName, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevCompactDAQSlotNum(device, data)
    @threadcall((:DAQmxGetDevCompactDAQSlotNum, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevCompactRIOChassisDevName(device, data, bufferSize)
    @threadcall((:DAQmxGetDevCompactRIOChassisDevName, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevCompactRIOSlotNum(device, data)
    @threadcall((:DAQmxGetDevCompactRIOSlotNum, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevTCPIPHostname(device, data, bufferSize)
    @threadcall((:DAQmxGetDevTCPIPHostname, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevTCPIPEthernetIP(device, data, bufferSize)
    @threadcall((:DAQmxGetDevTCPIPEthernetIP, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevTCPIPWirelessIP(device, data, bufferSize)
    @threadcall((:DAQmxGetDevTCPIPWirelessIP, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevTerminals(device, data, bufferSize)
    @threadcall((:DAQmxGetDevTerminals, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), device, data, bufferSize)
end

function DAQmxGetDevNumTimeTrigs(device, data)
    @threadcall((:DAQmxGetDevNumTimeTrigs, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetDevNumTimestampEngines(device, data)
    @threadcall((:DAQmxGetDevNumTimestampEngines, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), device, data)
end

function DAQmxGetExportedAIConvClkOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedAIConvClkOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedAIConvClkOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedAIConvClkOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedAIConvClkOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedAIConvClkOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAIConvClkPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxGetExportedAIConvClkPulsePolarity, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxGetExported10MHzRefClkOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExported10MHzRefClkOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExported10MHzRefClkOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExported10MHzRefClkOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExported10MHzRefClkOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExported10MHzRefClkOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExported20MHzTimebaseOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExported20MHzTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExported20MHzTimebaseOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExported20MHzTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExported20MHzTimebaseOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExported20MHzTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedSampClkOutputBehavior(taskHandle, data)
    @threadcall((:DAQmxGetExportedSampClkOutputBehavior, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedSampClkOutputBehavior(taskHandle, data)
    @threadcall((:DAQmxSetExportedSampClkOutputBehavior, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedSampClkOutputBehavior(taskHandle)
    @threadcall((:DAQmxResetExportedSampClkOutputBehavior, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedSampClkOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedSampClkOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedSampClkOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedSampClkOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedSampClkOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedSampClkOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedSampClkDelayOffset(taskHandle, data)
    @threadcall((:DAQmxGetExportedSampClkDelayOffset, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetExportedSampClkDelayOffset(taskHandle, data)
    @threadcall((:DAQmxSetExportedSampClkDelayOffset, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetExportedSampClkDelayOffset(taskHandle)
    @threadcall((:DAQmxResetExportedSampClkDelayOffset, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedSampClkPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxGetExportedSampClkPulsePolarity, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedSampClkPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxSetExportedSampClkPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedSampClkPulsePolarity(taskHandle)
    @threadcall((:DAQmxResetExportedSampClkPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedSampClkTimebaseOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedSampClkTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedSampClkTimebaseOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedSampClkTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedSampClkTimebaseOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedSampClkTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedDividedSampClkTimebaseOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedDividedSampClkTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedDividedSampClkTimebaseOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedDividedSampClkTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedDividedSampClkTimebaseOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedDividedSampClkTimebaseOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAdvTrigOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedAdvTrigOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedAdvTrigOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedAdvTrigOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedAdvTrigOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedAdvTrigOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAdvTrigPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxGetExportedAdvTrigPulsePolarity, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxGetExportedAdvTrigPulseWidthUnits(taskHandle, data)
    @threadcall((:DAQmxGetExportedAdvTrigPulseWidthUnits, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedAdvTrigPulseWidthUnits(taskHandle, data)
    @threadcall((:DAQmxSetExportedAdvTrigPulseWidthUnits, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedAdvTrigPulseWidthUnits(taskHandle)
    @threadcall((:DAQmxResetExportedAdvTrigPulseWidthUnits, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAdvTrigPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetExportedAdvTrigPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetExportedAdvTrigPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetExportedAdvTrigPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetExportedAdvTrigPulseWidth(taskHandle)
    @threadcall((:DAQmxResetExportedAdvTrigPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedPauseTrigOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedPauseTrigOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedPauseTrigOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedPauseTrigOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedPauseTrigOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedPauseTrigOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedPauseTrigLvlActiveLvl(taskHandle, data)
    @threadcall((:DAQmxGetExportedPauseTrigLvlActiveLvl, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedPauseTrigLvlActiveLvl(taskHandle, data)
    @threadcall((:DAQmxSetExportedPauseTrigLvlActiveLvl, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedPauseTrigLvlActiveLvl(taskHandle)
    @threadcall((:DAQmxResetExportedPauseTrigLvlActiveLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRefTrigOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedRefTrigOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedRefTrigOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedRefTrigOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedRefTrigOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedRefTrigOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRefTrigPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxGetExportedRefTrigPulsePolarity, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedRefTrigPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxSetExportedRefTrigPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedRefTrigPulsePolarity(taskHandle)
    @threadcall((:DAQmxResetExportedRefTrigPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedStartTrigOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedStartTrigOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedStartTrigOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedStartTrigOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedStartTrigOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedStartTrigOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedStartTrigPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxGetExportedStartTrigPulsePolarity, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedStartTrigPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxSetExportedStartTrigPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedStartTrigPulsePolarity(taskHandle)
    @threadcall((:DAQmxResetExportedStartTrigPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAdvCmpltEventOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedAdvCmpltEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedAdvCmpltEventOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedAdvCmpltEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedAdvCmpltEventOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedAdvCmpltEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAdvCmpltEventDelay(taskHandle, data)
    @threadcall((:DAQmxGetExportedAdvCmpltEventDelay, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetExportedAdvCmpltEventDelay(taskHandle, data)
    @threadcall((:DAQmxSetExportedAdvCmpltEventDelay, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetExportedAdvCmpltEventDelay(taskHandle)
    @threadcall((:DAQmxResetExportedAdvCmpltEventDelay, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAdvCmpltEventPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxGetExportedAdvCmpltEventPulsePolarity, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedAdvCmpltEventPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxSetExportedAdvCmpltEventPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedAdvCmpltEventPulsePolarity(taskHandle)
    @threadcall((:DAQmxResetExportedAdvCmpltEventPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAdvCmpltEventPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetExportedAdvCmpltEventPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetExportedAdvCmpltEventPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetExportedAdvCmpltEventPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetExportedAdvCmpltEventPulseWidth(taskHandle)
    @threadcall((:DAQmxResetExportedAdvCmpltEventPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAIHoldCmpltEventOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedAIHoldCmpltEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedAIHoldCmpltEventOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedAIHoldCmpltEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedAIHoldCmpltEventOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedAIHoldCmpltEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedAIHoldCmpltEventPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxGetExportedAIHoldCmpltEventPulsePolarity, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedAIHoldCmpltEventPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxSetExportedAIHoldCmpltEventPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedAIHoldCmpltEventPulsePolarity(taskHandle)
    @threadcall((:DAQmxResetExportedAIHoldCmpltEventPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedChangeDetectEventOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedChangeDetectEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedChangeDetectEventOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedChangeDetectEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedChangeDetectEventOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedChangeDetectEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedChangeDetectEventPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxGetExportedChangeDetectEventPulsePolarity, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedChangeDetectEventPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxSetExportedChangeDetectEventPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedChangeDetectEventPulsePolarity(taskHandle)
    @threadcall((:DAQmxResetExportedChangeDetectEventPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedCtrOutEventOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedCtrOutEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedCtrOutEventOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedCtrOutEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedCtrOutEventOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedCtrOutEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedCtrOutEventOutputBehavior(taskHandle, data)
    @threadcall((:DAQmxGetExportedCtrOutEventOutputBehavior, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedCtrOutEventOutputBehavior(taskHandle, data)
    @threadcall((:DAQmxSetExportedCtrOutEventOutputBehavior, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedCtrOutEventOutputBehavior(taskHandle)
    @threadcall((:DAQmxResetExportedCtrOutEventOutputBehavior, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedCtrOutEventPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxGetExportedCtrOutEventPulsePolarity, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedCtrOutEventPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxSetExportedCtrOutEventPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedCtrOutEventPulsePolarity(taskHandle)
    @threadcall((:DAQmxResetExportedCtrOutEventPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedCtrOutEventToggleIdleState(taskHandle, data)
    @threadcall((:DAQmxGetExportedCtrOutEventToggleIdleState, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedCtrOutEventToggleIdleState(taskHandle, data)
    @threadcall((:DAQmxSetExportedCtrOutEventToggleIdleState, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedCtrOutEventToggleIdleState(taskHandle)
    @threadcall((:DAQmxResetExportedCtrOutEventToggleIdleState, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedHshkEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedHshkEventOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedHshkEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedHshkEventOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedHshkEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventOutputBehavior(taskHandle, data)
    @threadcall((:DAQmxGetExportedHshkEventOutputBehavior, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedHshkEventOutputBehavior(taskHandle, data)
    @threadcall((:DAQmxSetExportedHshkEventOutputBehavior, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedHshkEventOutputBehavior(taskHandle)
    @threadcall((:DAQmxResetExportedHshkEventOutputBehavior, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventDelay(taskHandle, data)
    @threadcall((:DAQmxGetExportedHshkEventDelay, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetExportedHshkEventDelay(taskHandle, data)
    @threadcall((:DAQmxSetExportedHshkEventDelay, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetExportedHshkEventDelay(taskHandle)
    @threadcall((:DAQmxResetExportedHshkEventDelay, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventInterlockedAssertedLvl(taskHandle, data)
    @threadcall((:DAQmxGetExportedHshkEventInterlockedAssertedLvl, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedHshkEventInterlockedAssertedLvl(taskHandle, data)
    @threadcall((:DAQmxSetExportedHshkEventInterlockedAssertedLvl, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedHshkEventInterlockedAssertedLvl(taskHandle)
    @threadcall((:DAQmxResetExportedHshkEventInterlockedAssertedLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventInterlockedAssertOnStart(taskHandle, data)
    @threadcall((:DAQmxGetExportedHshkEventInterlockedAssertOnStart, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetExportedHshkEventInterlockedAssertOnStart(taskHandle, data)
    @threadcall((:DAQmxSetExportedHshkEventInterlockedAssertOnStart, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetExportedHshkEventInterlockedAssertOnStart(taskHandle)
    @threadcall((:DAQmxResetExportedHshkEventInterlockedAssertOnStart, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventInterlockedDeassertDelay(taskHandle, data)
    @threadcall((:DAQmxGetExportedHshkEventInterlockedDeassertDelay, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetExportedHshkEventInterlockedDeassertDelay(taskHandle, data)
    @threadcall((:DAQmxSetExportedHshkEventInterlockedDeassertDelay, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetExportedHshkEventInterlockedDeassertDelay(taskHandle)
    @threadcall((:DAQmxResetExportedHshkEventInterlockedDeassertDelay, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxGetExportedHshkEventPulsePolarity, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedHshkEventPulsePolarity(taskHandle, data)
    @threadcall((:DAQmxSetExportedHshkEventPulsePolarity, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedHshkEventPulsePolarity(taskHandle)
    @threadcall((:DAQmxResetExportedHshkEventPulsePolarity, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedHshkEventPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetExportedHshkEventPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetExportedHshkEventPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetExportedHshkEventPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetExportedHshkEventPulseWidth(taskHandle)
    @threadcall((:DAQmxResetExportedHshkEventPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRdyForXferEventOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedRdyForXferEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedRdyForXferEventOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedRdyForXferEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedRdyForXferEventOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedRdyForXferEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRdyForXferEventLvlActiveLvl(taskHandle, data)
    @threadcall((:DAQmxGetExportedRdyForXferEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedRdyForXferEventLvlActiveLvl(taskHandle, data)
    @threadcall((:DAQmxSetExportedRdyForXferEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedRdyForXferEventLvlActiveLvl(taskHandle)
    @threadcall((:DAQmxResetExportedRdyForXferEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRdyForXferEventDeassertCond(taskHandle, data)
    @threadcall((:DAQmxGetExportedRdyForXferEventDeassertCond, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedRdyForXferEventDeassertCond(taskHandle, data)
    @threadcall((:DAQmxSetExportedRdyForXferEventDeassertCond, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedRdyForXferEventDeassertCond(taskHandle)
    @threadcall((:DAQmxResetExportedRdyForXferEventDeassertCond, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRdyForXferEventDeassertCondCustomThreshold(taskHandle, data)
    @threadcall((:DAQmxGetExportedRdyForXferEventDeassertCondCustomThreshold, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxSetExportedRdyForXferEventDeassertCondCustomThreshold(taskHandle, data)
    @threadcall((:DAQmxSetExportedRdyForXferEventDeassertCondCustomThreshold, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetExportedRdyForXferEventDeassertCondCustomThreshold(taskHandle)
    @threadcall((:DAQmxResetExportedRdyForXferEventDeassertCondCustomThreshold, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedDataActiveEventOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedDataActiveEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedDataActiveEventOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedDataActiveEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedDataActiveEventOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedDataActiveEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedDataActiveEventLvlActiveLvl(taskHandle, data)
    @threadcall((:DAQmxGetExportedDataActiveEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedDataActiveEventLvlActiveLvl(taskHandle, data)
    @threadcall((:DAQmxSetExportedDataActiveEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedDataActiveEventLvlActiveLvl(taskHandle)
    @threadcall((:DAQmxResetExportedDataActiveEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRdyForStartEventOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedRdyForStartEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedRdyForStartEventOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedRdyForStartEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedRdyForStartEventOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedRdyForStartEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedRdyForStartEventLvlActiveLvl(taskHandle, data)
    @threadcall((:DAQmxGetExportedRdyForStartEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetExportedRdyForStartEventLvlActiveLvl(taskHandle, data)
    @threadcall((:DAQmxSetExportedRdyForStartEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetExportedRdyForStartEventLvlActiveLvl(taskHandle)
    @threadcall((:DAQmxResetExportedRdyForStartEventLvlActiveLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedSyncPulseEventOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedSyncPulseEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedSyncPulseEventOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedSyncPulseEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedSyncPulseEventOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedSyncPulseEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetExportedWatchdogExpiredEventOutputTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetExportedWatchdogExpiredEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetExportedWatchdogExpiredEventOutputTerm(taskHandle, data)
    @threadcall((:DAQmxSetExportedWatchdogExpiredEventOutputTerm, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetExportedWatchdogExpiredEventOutputTerm(taskHandle)
    @threadcall((:DAQmxResetExportedWatchdogExpiredEventOutputTerm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetPersistedChanAuthor(channel, data, bufferSize)
    @threadcall((:DAQmxGetPersistedChanAuthor, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), channel, data, bufferSize)
end

function DAQmxGetPersistedChanAllowInteractiveEditing(channel, data)
    @threadcall((:DAQmxGetPersistedChanAllowInteractiveEditing, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), channel, data)
end

function DAQmxGetPersistedChanAllowInteractiveDeletion(channel, data)
    @threadcall((:DAQmxGetPersistedChanAllowInteractiveDeletion, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), channel, data)
end

function DAQmxGetPersistedScaleAuthor(scaleName, data, bufferSize)
    @threadcall((:DAQmxGetPersistedScaleAuthor, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), scaleName, data, bufferSize)
end

function DAQmxGetPersistedScaleAllowInteractiveEditing(scaleName, data)
    @threadcall((:DAQmxGetPersistedScaleAllowInteractiveEditing, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), scaleName, data)
end

function DAQmxGetPersistedScaleAllowInteractiveDeletion(scaleName, data)
    @threadcall((:DAQmxGetPersistedScaleAllowInteractiveDeletion, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), scaleName, data)
end

function DAQmxGetPersistedTaskAuthor(taskName, data, bufferSize)
    @threadcall((:DAQmxGetPersistedTaskAuthor, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), taskName, data, bufferSize)
end

function DAQmxGetPersistedTaskAllowInteractiveEditing(taskName, data)
    @threadcall((:DAQmxGetPersistedTaskAllowInteractiveEditing, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), taskName, data)
end

function DAQmxGetPersistedTaskAllowInteractiveDeletion(taskName, data)
    @threadcall((:DAQmxGetPersistedTaskAllowInteractiveDeletion, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), taskName, data)
end

function DAQmxGetPhysicalChanAISupportedMeasTypes(physicalChannel, data, arraySizeInElements)
    @threadcall((:DAQmxGetPhysicalChanAISupportedMeasTypes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanAITermCfgs(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanAITermCfgs, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanAIInputSrcs(physicalChannel, data, bufferSize)
    @threadcall((:DAQmxGetPhysicalChanAIInputSrcs, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), physicalChannel, data, bufferSize)
end

function DAQmxGetPhysicalChanAISensorPowerTypes(physicalChannel, data, arraySizeInElements)
    @threadcall((:DAQmxGetPhysicalChanAISensorPowerTypes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanAISensorPowerVoltageRangeVals(physicalChannel, data, arraySizeInElements)
    @threadcall((:DAQmxGetPhysicalChanAISensorPowerVoltageRangeVals, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanAIPowerControlVoltage(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanAIPowerControlVoltage, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), physicalChannel, data)
end

function DAQmxSetPhysicalChanAIPowerControlVoltage(physicalChannel, data)
    @threadcall((:DAQmxSetPhysicalChanAIPowerControlVoltage, NIDAQmx), int32, (Ptr{UInt8}, float64), physicalChannel, data)
end

function DAQmxResetPhysicalChanAIPowerControlVoltage(physicalChannel)
    @threadcall((:DAQmxResetPhysicalChanAIPowerControlVoltage, NIDAQmx), int32, (Ptr{UInt8},), physicalChannel)
end

function DAQmxGetPhysicalChanAIPowerControlEnable(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanAIPowerControlEnable, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), physicalChannel, data)
end

function DAQmxSetPhysicalChanAIPowerControlEnable(physicalChannel, data)
    @threadcall((:DAQmxSetPhysicalChanAIPowerControlEnable, NIDAQmx), int32, (Ptr{UInt8}, bool32), physicalChannel, data)
end

function DAQmxResetPhysicalChanAIPowerControlEnable(physicalChannel)
    @threadcall((:DAQmxResetPhysicalChanAIPowerControlEnable, NIDAQmx), int32, (Ptr{UInt8},), physicalChannel)
end

function DAQmxGetPhysicalChanAIPowerControlType(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanAIPowerControlType, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), physicalChannel, data)
end

function DAQmxSetPhysicalChanAIPowerControlType(physicalChannel, data)
    @threadcall((:DAQmxSetPhysicalChanAIPowerControlType, NIDAQmx), int32, (Ptr{UInt8}, int32), physicalChannel, data)
end

function DAQmxResetPhysicalChanAIPowerControlType(physicalChannel)
    @threadcall((:DAQmxResetPhysicalChanAIPowerControlType, NIDAQmx), int32, (Ptr{UInt8},), physicalChannel)
end

function DAQmxGetPhysicalChanAISensorPowerOpenChan(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanAISensorPowerOpenChan, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanAISensorPowerOvercurrent(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanAISensorPowerOvercurrent, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanAOSupportedOutputTypes(physicalChannel, data, arraySizeInElements)
    @threadcall((:DAQmxGetPhysicalChanAOSupportedOutputTypes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanAOSupportedPowerUpOutputTypes(physicalChannel, data, arraySizeInElements)
    @threadcall((:DAQmxGetPhysicalChanAOSupportedPowerUpOutputTypes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanAOTermCfgs(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanAOTermCfgs, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanAOManualControlEnable(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanAOManualControlEnable, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), physicalChannel, data)
end

function DAQmxSetPhysicalChanAOManualControlEnable(physicalChannel, data)
    @threadcall((:DAQmxSetPhysicalChanAOManualControlEnable, NIDAQmx), int32, (Ptr{UInt8}, bool32), physicalChannel, data)
end

function DAQmxResetPhysicalChanAOManualControlEnable(physicalChannel)
    @threadcall((:DAQmxResetPhysicalChanAOManualControlEnable, NIDAQmx), int32, (Ptr{UInt8},), physicalChannel)
end

function DAQmxGetPhysicalChanAOManualControlShortDetected(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanAOManualControlShortDetected, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanAOManualControlAmplitude(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanAOManualControlAmplitude, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), physicalChannel, data)
end

function DAQmxGetPhysicalChanAOManualControlFreq(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanAOManualControlFreq, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), physicalChannel, data)
end

function DAQmxGetAOPowerAmpChannelEnable(physicalChannel, data)
    @threadcall((:DAQmxGetAOPowerAmpChannelEnable, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), physicalChannel, data)
end

function DAQmxSetAOPowerAmpChannelEnable(physicalChannel, data)
    @threadcall((:DAQmxSetAOPowerAmpChannelEnable, NIDAQmx), int32, (Ptr{UInt8}, bool32), physicalChannel, data)
end

function DAQmxResetAOPowerAmpChannelEnable(physicalChannel)
    @threadcall((:DAQmxResetAOPowerAmpChannelEnable, NIDAQmx), int32, (Ptr{UInt8},), physicalChannel)
end

function DAQmxGetAOPowerAmpScalingCoeff(physicalChannel, data, arraySizeInElements)
    @threadcall((:DAQmxGetAOPowerAmpScalingCoeff, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetAOPowerAmpOvercurrent(physicalChannel, data)
    @threadcall((:DAQmxGetAOPowerAmpOvercurrent, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), physicalChannel, data)
end

function DAQmxGetAOPowerAmpGain(physicalChannel, data)
    @threadcall((:DAQmxGetAOPowerAmpGain, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), physicalChannel, data)
end

function DAQmxGetAOPowerAmpOffset(physicalChannel, data)
    @threadcall((:DAQmxGetAOPowerAmpOffset, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), physicalChannel, data)
end

function DAQmxGetPhysicalChanDIPortWidth(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanDIPortWidth, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanDISampClkSupported(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanDISampClkSupported, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanDISampModes(physicalChannel, data, arraySizeInElements)
    @threadcall((:DAQmxGetPhysicalChanDISampModes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanDIChangeDetectSupported(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanDIChangeDetectSupported, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanDOPortWidth(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanDOPortWidth, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanDOSampClkSupported(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanDOSampClkSupported, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanDOSampModes(physicalChannel, data, arraySizeInElements)
    @threadcall((:DAQmxGetPhysicalChanDOSampModes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanCISupportedMeasTypes(physicalChannel, data, arraySizeInElements)
    @threadcall((:DAQmxGetPhysicalChanCISupportedMeasTypes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanCOSupportedOutputTypes(physicalChannel, data, arraySizeInElements)
    @threadcall((:DAQmxGetPhysicalChanCOSupportedOutputTypes, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanTEDSMfgID(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanTEDSMfgID, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanTEDSModelNum(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanTEDSModelNum, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanTEDSSerialNum(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanTEDSSerialNum, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanTEDSVersionNum(physicalChannel, data)
    @threadcall((:DAQmxGetPhysicalChanTEDSVersionNum, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), physicalChannel, data)
end

function DAQmxGetPhysicalChanTEDSVersionLetter(physicalChannel, data, bufferSize)
    @threadcall((:DAQmxGetPhysicalChanTEDSVersionLetter, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), physicalChannel, data, bufferSize)
end

function DAQmxGetPhysicalChanTEDSBitStream(physicalChannel, data, arraySizeInElements)
    @threadcall((:DAQmxGetPhysicalChanTEDSBitStream, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt8}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetPhysicalChanTEDSTemplateIDs(physicalChannel, data, arraySizeInElements)
    @threadcall((:DAQmxGetPhysicalChanTEDSTemplateIDs, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}, uInt32), physicalChannel, data, arraySizeInElements)
end

function DAQmxGetReadRelativeTo(taskHandle, data)
    @threadcall((:DAQmxGetReadRelativeTo, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetReadRelativeTo(taskHandle, data)
    @threadcall((:DAQmxSetReadRelativeTo, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetReadRelativeTo(taskHandle)
    @threadcall((:DAQmxResetReadRelativeTo, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetReadOffset(taskHandle, data)
    @threadcall((:DAQmxGetReadOffset, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetReadOffset(taskHandle, data)
    @threadcall((:DAQmxSetReadOffset, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetReadOffset(taskHandle)
    @threadcall((:DAQmxResetReadOffset, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetReadChannelsToRead(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadChannelsToRead, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetReadChannelsToRead(taskHandle, data)
    @threadcall((:DAQmxSetReadChannelsToRead, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetReadChannelsToRead(taskHandle)
    @threadcall((:DAQmxResetReadChannelsToRead, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetReadReadAllAvailSamp(taskHandle, data)
    @threadcall((:DAQmxGetReadReadAllAvailSamp, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetReadReadAllAvailSamp(taskHandle, data)
    @threadcall((:DAQmxSetReadReadAllAvailSamp, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetReadReadAllAvailSamp(taskHandle)
    @threadcall((:DAQmxResetReadReadAllAvailSamp, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetReadAutoStart(taskHandle, data)
    @threadcall((:DAQmxGetReadAutoStart, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetReadAutoStart(taskHandle, data)
    @threadcall((:DAQmxSetReadAutoStart, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetReadAutoStart(taskHandle)
    @threadcall((:DAQmxResetReadAutoStart, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetReadOverWrite(taskHandle, data)
    @threadcall((:DAQmxGetReadOverWrite, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetReadOverWrite(taskHandle, data)
    @threadcall((:DAQmxSetReadOverWrite, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetReadOverWrite(taskHandle)
    @threadcall((:DAQmxResetReadOverWrite, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingFilePath(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetLoggingFilePath, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetLoggingFilePath(taskHandle, data)
    @threadcall((:DAQmxSetLoggingFilePath, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetLoggingFilePath(taskHandle)
    @threadcall((:DAQmxResetLoggingFilePath, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingMode(taskHandle, data)
    @threadcall((:DAQmxGetLoggingMode, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetLoggingMode(taskHandle, data)
    @threadcall((:DAQmxSetLoggingMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetLoggingMode(taskHandle)
    @threadcall((:DAQmxResetLoggingMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingTDMSGroupName(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetLoggingTDMSGroupName, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetLoggingTDMSGroupName(taskHandle, data)
    @threadcall((:DAQmxSetLoggingTDMSGroupName, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetLoggingTDMSGroupName(taskHandle)
    @threadcall((:DAQmxResetLoggingTDMSGroupName, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingTDMSOperation(taskHandle, data)
    @threadcall((:DAQmxGetLoggingTDMSOperation, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetLoggingTDMSOperation(taskHandle, data)
    @threadcall((:DAQmxSetLoggingTDMSOperation, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetLoggingTDMSOperation(taskHandle)
    @threadcall((:DAQmxResetLoggingTDMSOperation, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingPause(taskHandle, data)
    @threadcall((:DAQmxGetLoggingPause, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetLoggingPause(taskHandle, data)
    @threadcall((:DAQmxSetLoggingPause, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetLoggingPause(taskHandle)
    @threadcall((:DAQmxResetLoggingPause, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingSampsPerFile(taskHandle, data)
    @threadcall((:DAQmxGetLoggingSampsPerFile, NIDAQmx), int32, (TaskHandle, Ptr{uInt64}), taskHandle, data)
end

function DAQmxSetLoggingSampsPerFile(taskHandle, data)
    @threadcall((:DAQmxSetLoggingSampsPerFile, NIDAQmx), int32, (TaskHandle, uInt64), taskHandle, data)
end

function DAQmxResetLoggingSampsPerFile(taskHandle)
    @threadcall((:DAQmxResetLoggingSampsPerFile, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingFileWriteSize(taskHandle, data)
    @threadcall((:DAQmxGetLoggingFileWriteSize, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxSetLoggingFileWriteSize(taskHandle, data)
    @threadcall((:DAQmxSetLoggingFileWriteSize, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetLoggingFileWriteSize(taskHandle)
    @threadcall((:DAQmxResetLoggingFileWriteSize, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetLoggingFilePreallocationSize(taskHandle, data)
    @threadcall((:DAQmxGetLoggingFilePreallocationSize, NIDAQmx), int32, (TaskHandle, Ptr{uInt64}), taskHandle, data)
end

function DAQmxSetLoggingFilePreallocationSize(taskHandle, data)
    @threadcall((:DAQmxSetLoggingFilePreallocationSize, NIDAQmx), int32, (TaskHandle, uInt64), taskHandle, data)
end

function DAQmxResetLoggingFilePreallocationSize(taskHandle)
    @threadcall((:DAQmxResetLoggingFilePreallocationSize, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetReadCurrReadPos(taskHandle, data)
    @threadcall((:DAQmxGetReadCurrReadPos, NIDAQmx), int32, (TaskHandle, Ptr{uInt64}), taskHandle, data)
end

function DAQmxGetReadAvailSampPerChan(taskHandle, data)
    @threadcall((:DAQmxGetReadAvailSampPerChan, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxGetReadTotalSampPerChanAcquired(taskHandle, data)
    @threadcall((:DAQmxGetReadTotalSampPerChanAcquired, NIDAQmx), int32, (TaskHandle, Ptr{uInt64}), taskHandle, data)
end

function DAQmxGetReadCommonModeRangeErrorChansExist(taskHandle, data)
    @threadcall((:DAQmxGetReadCommonModeRangeErrorChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetReadCommonModeRangeErrorChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadCommonModeRangeErrorChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadExcitFaultChansExist(taskHandle, data)
    @threadcall((:DAQmxGetReadExcitFaultChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetReadExcitFaultChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadExcitFaultChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadOvercurrentChansExist(taskHandle, data)
    @threadcall((:DAQmxGetReadOvercurrentChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetReadOvercurrentChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadOvercurrentChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadOvertemperatureChansExist(taskHandle, data)
    @threadcall((:DAQmxGetReadOvertemperatureChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetReadOvertemperatureChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadOvertemperatureChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadOpenChansExist(taskHandle, data)
    @threadcall((:DAQmxGetReadOpenChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetReadOpenChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadOpenChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadOpenChansDetails(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadOpenChansDetails, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadOpenCurrentLoopChansExist(taskHandle, data)
    @threadcall((:DAQmxGetReadOpenCurrentLoopChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetReadOpenCurrentLoopChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadOpenCurrentLoopChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadOpenThrmcplChansExist(taskHandle, data)
    @threadcall((:DAQmxGetReadOpenThrmcplChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetReadOpenThrmcplChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadOpenThrmcplChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadOverloadedChansExist(taskHandle, data)
    @threadcall((:DAQmxGetReadOverloadedChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetReadOverloadedChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadOverloadedChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadInputLimitsFaultChansExist(taskHandle, data)
    @threadcall((:DAQmxGetReadInputLimitsFaultChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetReadInputLimitsFaultChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadInputLimitsFaultChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadPLLUnlockedChansExist(taskHandle, data)
    @threadcall((:DAQmxGetReadPLLUnlockedChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetReadPLLUnlockedChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadPLLUnlockedChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadPowerSupplyFaultChansExist(taskHandle, data)
    @threadcall((:DAQmxGetReadPowerSupplyFaultChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetReadPowerSupplyFaultChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadPowerSupplyFaultChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadSyncUnlockedChansExist(taskHandle, data)
    @threadcall((:DAQmxGetReadSyncUnlockedChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetReadSyncUnlockedChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadSyncUnlockedChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadAccessoryInsertionOrRemovalDetected(taskHandle, data)
    @threadcall((:DAQmxGetReadAccessoryInsertionOrRemovalDetected, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetReadDevsWithInsertedOrRemovedAccessories(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetReadDevsWithInsertedOrRemovedAccessories, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetReadChangeDetectHasOverflowed(taskHandle, data)
    @threadcall((:DAQmxGetReadChangeDetectHasOverflowed, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetReadRawDataWidth(taskHandle, data)
    @threadcall((:DAQmxGetReadRawDataWidth, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxGetReadNumChans(taskHandle, data)
    @threadcall((:DAQmxGetReadNumChans, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxGetReadDigitalLinesBytesPerChan(taskHandle, data)
    @threadcall((:DAQmxGetReadDigitalLinesBytesPerChan, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxGetReadWaitMode(taskHandle, data)
    @threadcall((:DAQmxGetReadWaitMode, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetReadWaitMode(taskHandle, data)
    @threadcall((:DAQmxSetReadWaitMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetReadWaitMode(taskHandle)
    @threadcall((:DAQmxResetReadWaitMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetReadSleepTime(taskHandle, data)
    @threadcall((:DAQmxGetReadSleepTime, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetReadSleepTime(taskHandle, data)
    @threadcall((:DAQmxSetReadSleepTime, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetReadSleepTime(taskHandle)
    @threadcall((:DAQmxResetReadSleepTime, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRealTimeConvLateErrorsToWarnings(taskHandle, data)
    @threadcall((:DAQmxGetRealTimeConvLateErrorsToWarnings, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetRealTimeConvLateErrorsToWarnings(taskHandle, data)
    @threadcall((:DAQmxSetRealTimeConvLateErrorsToWarnings, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetRealTimeConvLateErrorsToWarnings(taskHandle)
    @threadcall((:DAQmxResetRealTimeConvLateErrorsToWarnings, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRealTimeNumOfWarmupIters(taskHandle, data)
    @threadcall((:DAQmxGetRealTimeNumOfWarmupIters, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxSetRealTimeNumOfWarmupIters(taskHandle, data)
    @threadcall((:DAQmxSetRealTimeNumOfWarmupIters, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetRealTimeNumOfWarmupIters(taskHandle)
    @threadcall((:DAQmxResetRealTimeNumOfWarmupIters, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRealTimeWaitForNextSampClkWaitMode(taskHandle, data)
    @threadcall((:DAQmxGetRealTimeWaitForNextSampClkWaitMode, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetRealTimeWaitForNextSampClkWaitMode(taskHandle, data)
    @threadcall((:DAQmxSetRealTimeWaitForNextSampClkWaitMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetRealTimeWaitForNextSampClkWaitMode(taskHandle)
    @threadcall((:DAQmxResetRealTimeWaitForNextSampClkWaitMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRealTimeReportMissedSamp(taskHandle, data)
    @threadcall((:DAQmxGetRealTimeReportMissedSamp, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetRealTimeReportMissedSamp(taskHandle, data)
    @threadcall((:DAQmxSetRealTimeReportMissedSamp, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetRealTimeReportMissedSamp(taskHandle)
    @threadcall((:DAQmxResetRealTimeReportMissedSamp, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRealTimeWriteRecoveryMode(taskHandle, data)
    @threadcall((:DAQmxGetRealTimeWriteRecoveryMode, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetRealTimeWriteRecoveryMode(taskHandle, data)
    @threadcall((:DAQmxSetRealTimeWriteRecoveryMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetRealTimeWriteRecoveryMode(taskHandle)
    @threadcall((:DAQmxResetRealTimeWriteRecoveryMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetScaleDescr(scaleName, data, bufferSize)
    @threadcall((:DAQmxGetScaleDescr, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), scaleName, data, bufferSize)
end

function DAQmxSetScaleDescr(scaleName, data)
    @threadcall((:DAQmxSetScaleDescr, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring), scaleName, data)
end

function DAQmxGetScaleScaledUnits(scaleName, data, bufferSize)
    @threadcall((:DAQmxGetScaleScaledUnits, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), scaleName, data, bufferSize)
end

function DAQmxSetScaleScaledUnits(scaleName, data)
    @threadcall((:DAQmxSetScaleScaledUnits, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring), scaleName, data)
end

function DAQmxGetScalePreScaledUnits(scaleName, data)
    @threadcall((:DAQmxGetScalePreScaledUnits, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), scaleName, data)
end

function DAQmxSetScalePreScaledUnits(scaleName, data)
    @threadcall((:DAQmxSetScalePreScaledUnits, NIDAQmx), int32, (Ptr{UInt8}, int32), scaleName, data)
end

function DAQmxGetScaleType(scaleName, data)
    @threadcall((:DAQmxGetScaleType, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), scaleName, data)
end

function DAQmxGetScaleLinSlope(scaleName, data)
    @threadcall((:DAQmxGetScaleLinSlope, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), scaleName, data)
end

function DAQmxSetScaleLinSlope(scaleName, data)
    @threadcall((:DAQmxSetScaleLinSlope, NIDAQmx), int32, (Ptr{UInt8}, float64), scaleName, data)
end

function DAQmxGetScaleLinYIntercept(scaleName, data)
    @threadcall((:DAQmxGetScaleLinYIntercept, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), scaleName, data)
end

function DAQmxSetScaleLinYIntercept(scaleName, data)
    @threadcall((:DAQmxSetScaleLinYIntercept, NIDAQmx), int32, (Ptr{UInt8}, float64), scaleName, data)
end

function DAQmxGetScaleMapScaledMax(scaleName, data)
    @threadcall((:DAQmxGetScaleMapScaledMax, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), scaleName, data)
end

function DAQmxSetScaleMapScaledMax(scaleName, data)
    @threadcall((:DAQmxSetScaleMapScaledMax, NIDAQmx), int32, (Ptr{UInt8}, float64), scaleName, data)
end

function DAQmxGetScaleMapPreScaledMax(scaleName, data)
    @threadcall((:DAQmxGetScaleMapPreScaledMax, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), scaleName, data)
end

function DAQmxSetScaleMapPreScaledMax(scaleName, data)
    @threadcall((:DAQmxSetScaleMapPreScaledMax, NIDAQmx), int32, (Ptr{UInt8}, float64), scaleName, data)
end

function DAQmxGetScaleMapScaledMin(scaleName, data)
    @threadcall((:DAQmxGetScaleMapScaledMin, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), scaleName, data)
end

function DAQmxSetScaleMapScaledMin(scaleName, data)
    @threadcall((:DAQmxSetScaleMapScaledMin, NIDAQmx), int32, (Ptr{UInt8}, float64), scaleName, data)
end

function DAQmxGetScaleMapPreScaledMin(scaleName, data)
    @threadcall((:DAQmxGetScaleMapPreScaledMin, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), scaleName, data)
end

function DAQmxSetScaleMapPreScaledMin(scaleName, data)
    @threadcall((:DAQmxSetScaleMapPreScaledMin, NIDAQmx), int32, (Ptr{UInt8}, float64), scaleName, data)
end

function DAQmxGetScalePolyForwardCoeff(scaleName, data, arraySizeInElements)
    @threadcall((:DAQmxGetScalePolyForwardCoeff, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxSetScalePolyForwardCoeff(scaleName, data, arraySizeInElements)
    @threadcall((:DAQmxSetScalePolyForwardCoeff, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxGetScalePolyReverseCoeff(scaleName, data, arraySizeInElements)
    @threadcall((:DAQmxGetScalePolyReverseCoeff, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxSetScalePolyReverseCoeff(scaleName, data, arraySizeInElements)
    @threadcall((:DAQmxSetScalePolyReverseCoeff, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxGetScaleTableScaledVals(scaleName, data, arraySizeInElements)
    @threadcall((:DAQmxGetScaleTableScaledVals, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxSetScaleTableScaledVals(scaleName, data, arraySizeInElements)
    @threadcall((:DAQmxSetScaleTableScaledVals, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxGetScaleTablePreScaledVals(scaleName, data, arraySizeInElements)
    @threadcall((:DAQmxGetScaleTablePreScaledVals, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxSetScaleTablePreScaledVals(scaleName, data, arraySizeInElements)
    @threadcall((:DAQmxSetScaleTablePreScaledVals, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}, uInt32), scaleName, data, arraySizeInElements)
end

function DAQmxGetSwitchChanUsage(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanUsage, NIDAQmx), int32, (Ptr{UInt8}, Ptr{int32}), switchChannelName, data)
end

function DAQmxSetSwitchChanUsage(switchChannelName, data)
    @threadcall((:DAQmxSetSwitchChanUsage, NIDAQmx), int32, (Ptr{UInt8}, int32), switchChannelName, data)
end

function DAQmxGetSwitchChanAnlgBusSharingEnable(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanAnlgBusSharingEnable, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), switchChannelName, data)
end

function DAQmxSetSwitchChanAnlgBusSharingEnable(switchChannelName, data)
    @threadcall((:DAQmxSetSwitchChanAnlgBusSharingEnable, NIDAQmx), int32, (Ptr{UInt8}, bool32), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxACCarryCurrent(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanMaxACCarryCurrent, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxACSwitchCurrent(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanMaxACSwitchCurrent, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxACCarryPwr(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanMaxACCarryPwr, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxACSwitchPwr(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanMaxACSwitchPwr, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxDCCarryCurrent(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanMaxDCCarryCurrent, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxDCSwitchCurrent(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanMaxDCSwitchCurrent, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxDCCarryPwr(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanMaxDCCarryPwr, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxDCSwitchPwr(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanMaxDCSwitchPwr, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxACVoltage(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanMaxACVoltage, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanMaxDCVoltage(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanMaxDCVoltage, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanWireMode(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanWireMode, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), switchChannelName, data)
end

function DAQmxGetSwitchChanBandwidth(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanBandwidth, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), switchChannelName, data)
end

function DAQmxGetSwitchChanImpedance(switchChannelName, data)
    @threadcall((:DAQmxGetSwitchChanImpedance, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), switchChannelName, data)
end

function DAQmxGetSwitchDevSettlingTime(deviceName, data)
    @threadcall((:DAQmxGetSwitchDevSettlingTime, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), deviceName, data)
end

function DAQmxSetSwitchDevSettlingTime(deviceName, data)
    @threadcall((:DAQmxSetSwitchDevSettlingTime, NIDAQmx), int32, (Ptr{UInt8}, float64), deviceName, data)
end

function DAQmxGetSwitchDevAutoConnAnlgBus(deviceName, data)
    @threadcall((:DAQmxGetSwitchDevAutoConnAnlgBus, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), deviceName, data)
end

function DAQmxSetSwitchDevAutoConnAnlgBus(deviceName, data)
    @threadcall((:DAQmxSetSwitchDevAutoConnAnlgBus, NIDAQmx), int32, (Ptr{UInt8}, bool32), deviceName, data)
end

function DAQmxGetSwitchDevPwrDownLatchRelaysAfterSettling(deviceName, data)
    @threadcall((:DAQmxGetSwitchDevPwrDownLatchRelaysAfterSettling, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), deviceName, data)
end

function DAQmxSetSwitchDevPwrDownLatchRelaysAfterSettling(deviceName, data)
    @threadcall((:DAQmxSetSwitchDevPwrDownLatchRelaysAfterSettling, NIDAQmx), int32, (Ptr{UInt8}, bool32), deviceName, data)
end

function DAQmxGetSwitchDevSettled(deviceName, data)
    @threadcall((:DAQmxGetSwitchDevSettled, NIDAQmx), int32, (Ptr{UInt8}, Ptr{bool32}), deviceName, data)
end

function DAQmxGetSwitchDevRelayList(deviceName, data, bufferSize)
    @threadcall((:DAQmxGetSwitchDevRelayList, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), deviceName, data, bufferSize)
end

function DAQmxGetSwitchDevNumRelays(deviceName, data)
    @threadcall((:DAQmxGetSwitchDevNumRelays, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), deviceName, data)
end

function DAQmxGetSwitchDevSwitchChanList(deviceName, data, bufferSize)
    @threadcall((:DAQmxGetSwitchDevSwitchChanList, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), deviceName, data, bufferSize)
end

function DAQmxGetSwitchDevNumSwitchChans(deviceName, data)
    @threadcall((:DAQmxGetSwitchDevNumSwitchChans, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), deviceName, data)
end

function DAQmxGetSwitchDevNumRows(deviceName, data)
    @threadcall((:DAQmxGetSwitchDevNumRows, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), deviceName, data)
end

function DAQmxGetSwitchDevNumColumns(deviceName, data)
    @threadcall((:DAQmxGetSwitchDevNumColumns, NIDAQmx), int32, (Ptr{UInt8}, Ptr{uInt32}), deviceName, data)
end

function DAQmxGetSwitchDevTopology(deviceName, data, bufferSize)
    @threadcall((:DAQmxGetSwitchDevTopology, NIDAQmx), int32, (Ptr{UInt8}, SafeCstring, uInt32), deviceName, data, bufferSize)
end

function DAQmxGetSwitchDevTemperature(deviceName, data)
    @threadcall((:DAQmxGetSwitchDevTemperature, NIDAQmx), int32, (Ptr{UInt8}, Ptr{float64}), deviceName, data)
end

function DAQmxGetSwitchScanBreakMode(taskHandle, data)
    @threadcall((:DAQmxGetSwitchScanBreakMode, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetSwitchScanBreakMode(taskHandle, data)
    @threadcall((:DAQmxSetSwitchScanBreakMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSwitchScanBreakMode(taskHandle)
    @threadcall((:DAQmxResetSwitchScanBreakMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSwitchScanRepeatMode(taskHandle, data)
    @threadcall((:DAQmxGetSwitchScanRepeatMode, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetSwitchScanRepeatMode(taskHandle, data)
    @threadcall((:DAQmxSetSwitchScanRepeatMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSwitchScanRepeatMode(taskHandle)
    @threadcall((:DAQmxResetSwitchScanRepeatMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSwitchScanWaitingForAdv(taskHandle, data)
    @threadcall((:DAQmxGetSwitchScanWaitingForAdv, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetSysGlobalChans(data, bufferSize)
    @threadcall((:DAQmxGetSysGlobalChans, NIDAQmx), int32, (SafeCstring, uInt32), data, bufferSize)
end

function DAQmxGetSysScales(data, bufferSize)
    @threadcall((:DAQmxGetSysScales, NIDAQmx), int32, (SafeCstring, uInt32), data, bufferSize)
end

function DAQmxGetSysTasks(data, bufferSize)
    @threadcall((:DAQmxGetSysTasks, NIDAQmx), int32, (SafeCstring, uInt32), data, bufferSize)
end

function DAQmxGetSysDevNames(data, bufferSize)
    @threadcall((:DAQmxGetSysDevNames, NIDAQmx), int32, (SafeCstring, uInt32), data, bufferSize)
end

function DAQmxGetSysNIDAQMajorVersion(data)
    @threadcall((:DAQmxGetSysNIDAQMajorVersion, NIDAQmx), int32, (Ptr{uInt32},), data)
end

function DAQmxGetSysNIDAQMinorVersion(data)
    @threadcall((:DAQmxGetSysNIDAQMinorVersion, NIDAQmx), int32, (Ptr{uInt32},), data)
end

function DAQmxGetSysNIDAQUpdateVersion(data)
    @threadcall((:DAQmxGetSysNIDAQUpdateVersion, NIDAQmx), int32, (Ptr{uInt32},), data)
end

function DAQmxGetTaskName(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetTaskName, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetTaskChannels(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetTaskChannels, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetTaskNumChans(taskHandle, data)
    @threadcall((:DAQmxGetTaskNumChans, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxGetTaskDevices(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetTaskDevices, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetTaskNumDevices(taskHandle, data)
    @threadcall((:DAQmxGetTaskNumDevices, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxGetTaskComplete(taskHandle, data)
    @threadcall((:DAQmxGetTaskComplete, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetSampQuantSampMode(taskHandle, data)
    @threadcall((:DAQmxGetSampQuantSampMode, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetSampQuantSampMode(taskHandle, data)
    @threadcall((:DAQmxSetSampQuantSampMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSampQuantSampMode(taskHandle)
    @threadcall((:DAQmxResetSampQuantSampMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampQuantSampPerChan(taskHandle, data)
    @threadcall((:DAQmxGetSampQuantSampPerChan, NIDAQmx), int32, (TaskHandle, Ptr{uInt64}), taskHandle, data)
end

function DAQmxSetSampQuantSampPerChan(taskHandle, data)
    @threadcall((:DAQmxSetSampQuantSampPerChan, NIDAQmx), int32, (TaskHandle, uInt64), taskHandle, data)
end

function DAQmxResetSampQuantSampPerChan(taskHandle)
    @threadcall((:DAQmxResetSampQuantSampPerChan, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampTimingType(taskHandle, data)
    @threadcall((:DAQmxGetSampTimingType, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetSampTimingType(taskHandle, data)
    @threadcall((:DAQmxSetSampTimingType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSampTimingType(taskHandle)
    @threadcall((:DAQmxResetSampTimingType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkRate(taskHandle, data)
    @threadcall((:DAQmxGetSampClkRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetSampClkRate(taskHandle, data)
    @threadcall((:DAQmxSetSampClkRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetSampClkRate(taskHandle)
    @threadcall((:DAQmxResetSampClkRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkMaxRate(taskHandle, data)
    @threadcall((:DAQmxGetSampClkMaxRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxGetSampClkSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetSampClkSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetSampClkSrc(taskHandle, data)
    @threadcall((:DAQmxSetSampClkSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetSampClkSrc(taskHandle)
    @threadcall((:DAQmxResetSampClkSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkActiveEdge(taskHandle, data)
    @threadcall((:DAQmxGetSampClkActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetSampClkActiveEdge(taskHandle, data)
    @threadcall((:DAQmxSetSampClkActiveEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSampClkActiveEdge(taskHandle)
    @threadcall((:DAQmxResetSampClkActiveEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkOverrunBehavior(taskHandle, data)
    @threadcall((:DAQmxGetSampClkOverrunBehavior, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetSampClkOverrunBehavior(taskHandle, data)
    @threadcall((:DAQmxSetSampClkOverrunBehavior, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSampClkOverrunBehavior(taskHandle)
    @threadcall((:DAQmxResetSampClkOverrunBehavior, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkUnderflowBehavior(taskHandle, data)
    @threadcall((:DAQmxGetSampClkUnderflowBehavior, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetSampClkUnderflowBehavior(taskHandle, data)
    @threadcall((:DAQmxSetSampClkUnderflowBehavior, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSampClkUnderflowBehavior(taskHandle)
    @threadcall((:DAQmxResetSampClkUnderflowBehavior, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkTimebaseDiv(taskHandle, data)
    @threadcall((:DAQmxGetSampClkTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxSetSampClkTimebaseDiv(taskHandle, data)
    @threadcall((:DAQmxSetSampClkTimebaseDiv, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetSampClkTimebaseDiv(taskHandle)
    @threadcall((:DAQmxResetSampClkTimebaseDiv, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetSampClkTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetSampClkTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxGetSampClkTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetSampClkTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxSetSampClkTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetSampClkTimebaseRate(taskHandle)
    @threadcall((:DAQmxResetSampClkTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkTimebaseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetSampClkTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetSampClkTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetSampClkTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetSampClkTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetSampClkTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkTimebaseActiveEdge(taskHandle, data)
    @threadcall((:DAQmxGetSampClkTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetSampClkTimebaseActiveEdge(taskHandle, data)
    @threadcall((:DAQmxSetSampClkTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSampClkTimebaseActiveEdge(taskHandle)
    @threadcall((:DAQmxResetSampClkTimebaseActiveEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkTimebaseMasterTimebaseDiv(taskHandle, data)
    @threadcall((:DAQmxGetSampClkTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxSetSampClkTimebaseMasterTimebaseDiv(taskHandle, data)
    @threadcall((:DAQmxSetSampClkTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetSampClkTimebaseMasterTimebaseDiv(taskHandle)
    @threadcall((:DAQmxResetSampClkTimebaseMasterTimebaseDiv, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkTimebaseTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetSampClkTimebaseTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetSampClkDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxGetSampClkDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetSampClkDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxSetSampClkDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetSampClkDigFltrEnable(taskHandle)
    @threadcall((:DAQmxResetSampClkDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetSampClkDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetSampClkDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetSampClkDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetSampClkDigFltrMinPulseWidth(taskHandle)
    @threadcall((:DAQmxResetSampClkDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkDigFltrTimebaseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetSampClkDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetSampClkDigFltrTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetSampClkDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetSampClkDigFltrTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetSampClkDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxGetSampClkDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetSampClkDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxSetSampClkDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetSampClkDigFltrTimebaseRate(taskHandle)
    @threadcall((:DAQmxResetSampClkDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxGetSampClkDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetSampClkDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxSetSampClkDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetSampClkDigSyncEnable(taskHandle)
    @threadcall((:DAQmxResetSampClkDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampClkWriteWfmUseInitialWfmDT(taskHandle, data)
    @threadcall((:DAQmxGetSampClkWriteWfmUseInitialWfmDT, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetSampClkWriteWfmUseInitialWfmDT(taskHandle, data)
    @threadcall((:DAQmxSetSampClkWriteWfmUseInitialWfmDT, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetSampClkWriteWfmUseInitialWfmDT(taskHandle)
    @threadcall((:DAQmxResetSampClkWriteWfmUseInitialWfmDT, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetHshkDelayAfterXfer(taskHandle, data)
    @threadcall((:DAQmxGetHshkDelayAfterXfer, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetHshkDelayAfterXfer(taskHandle, data)
    @threadcall((:DAQmxSetHshkDelayAfterXfer, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetHshkDelayAfterXfer(taskHandle)
    @threadcall((:DAQmxResetHshkDelayAfterXfer, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetHshkStartCond(taskHandle, data)
    @threadcall((:DAQmxGetHshkStartCond, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetHshkStartCond(taskHandle, data)
    @threadcall((:DAQmxSetHshkStartCond, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetHshkStartCond(taskHandle)
    @threadcall((:DAQmxResetHshkStartCond, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetHshkSampleInputDataWhen(taskHandle, data)
    @threadcall((:DAQmxGetHshkSampleInputDataWhen, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetHshkSampleInputDataWhen(taskHandle, data)
    @threadcall((:DAQmxSetHshkSampleInputDataWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetHshkSampleInputDataWhen(taskHandle)
    @threadcall((:DAQmxResetHshkSampleInputDataWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetChangeDetectDIRisingEdgePhysicalChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetChangeDetectDIRisingEdgePhysicalChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetChangeDetectDIRisingEdgePhysicalChans(taskHandle, data)
    @threadcall((:DAQmxSetChangeDetectDIRisingEdgePhysicalChans, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetChangeDetectDIRisingEdgePhysicalChans(taskHandle)
    @threadcall((:DAQmxResetChangeDetectDIRisingEdgePhysicalChans, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetChangeDetectDIFallingEdgePhysicalChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetChangeDetectDIFallingEdgePhysicalChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetChangeDetectDIFallingEdgePhysicalChans(taskHandle, data)
    @threadcall((:DAQmxSetChangeDetectDIFallingEdgePhysicalChans, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetChangeDetectDIFallingEdgePhysicalChans(taskHandle)
    @threadcall((:DAQmxResetChangeDetectDIFallingEdgePhysicalChans, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetChangeDetectDITristate(taskHandle, data)
    @threadcall((:DAQmxGetChangeDetectDITristate, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetChangeDetectDITristate(taskHandle, data)
    @threadcall((:DAQmxSetChangeDetectDITristate, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetChangeDetectDITristate(taskHandle)
    @threadcall((:DAQmxResetChangeDetectDITristate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetOnDemandSimultaneousAOEnable(taskHandle, data)
    @threadcall((:DAQmxGetOnDemandSimultaneousAOEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetOnDemandSimultaneousAOEnable(taskHandle, data)
    @threadcall((:DAQmxSetOnDemandSimultaneousAOEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetOnDemandSimultaneousAOEnable(taskHandle)
    @threadcall((:DAQmxResetOnDemandSimultaneousAOEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetImplicitUnderflowBehavior(taskHandle, data)
    @threadcall((:DAQmxGetImplicitUnderflowBehavior, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetImplicitUnderflowBehavior(taskHandle, data)
    @threadcall((:DAQmxSetImplicitUnderflowBehavior, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetImplicitUnderflowBehavior(taskHandle)
    @threadcall((:DAQmxResetImplicitUnderflowBehavior, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvRate(taskHandle, data)
    @threadcall((:DAQmxGetAIConvRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAIConvRate(taskHandle, data)
    @threadcall((:DAQmxSetAIConvRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAIConvRate(taskHandle)
    @threadcall((:DAQmxResetAIConvRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvRateEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxGetAIConvRateEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvRateEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxSetAIConvRateEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvRateEx(taskHandle, deviceNames)
    @threadcall((:DAQmxResetAIConvRateEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvMaxRate(taskHandle, data)
    @threadcall((:DAQmxGetAIConvMaxRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxGetAIConvMaxRateEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxGetAIConvMaxRateEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, deviceNames, data)
end

function DAQmxGetAIConvSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAIConvSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAIConvSrc(taskHandle, data)
    @threadcall((:DAQmxSetAIConvSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAIConvSrc(taskHandle)
    @threadcall((:DAQmxResetAIConvSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvSrcEx(taskHandle, deviceNames, data, bufferSize)
    @threadcall((:DAQmxGetAIConvSrcEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, deviceNames, data, bufferSize)
end

function DAQmxSetAIConvSrcEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxSetAIConvSrcEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvSrcEx(taskHandle, deviceNames)
    @threadcall((:DAQmxResetAIConvSrcEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvActiveEdge(taskHandle, data)
    @threadcall((:DAQmxGetAIConvActiveEdge, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAIConvActiveEdge(taskHandle, data)
    @threadcall((:DAQmxSetAIConvActiveEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAIConvActiveEdge(taskHandle)
    @threadcall((:DAQmxResetAIConvActiveEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvActiveEdgeEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxGetAIConvActiveEdgeEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvActiveEdgeEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxSetAIConvActiveEdgeEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvActiveEdgeEx(taskHandle, deviceNames)
    @threadcall((:DAQmxResetAIConvActiveEdgeEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvTimebaseDiv(taskHandle, data)
    @threadcall((:DAQmxGetAIConvTimebaseDiv, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxSetAIConvTimebaseDiv(taskHandle, data)
    @threadcall((:DAQmxSetAIConvTimebaseDiv, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetAIConvTimebaseDiv(taskHandle)
    @threadcall((:DAQmxResetAIConvTimebaseDiv, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvTimebaseDivEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxGetAIConvTimebaseDivEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{uInt32}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvTimebaseDivEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxSetAIConvTimebaseDivEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, uInt32), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvTimebaseDivEx(taskHandle, deviceNames)
    @threadcall((:DAQmxResetAIConvTimebaseDivEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxGetAIConvTimebaseSrc, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAIConvTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetAIConvTimebaseSrc, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAIConvTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetAIConvTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvTimebaseSrcEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxGetAIConvTimebaseSrcEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvTimebaseSrcEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxSetAIConvTimebaseSrcEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvTimebaseSrcEx(taskHandle, deviceNames)
    @threadcall((:DAQmxResetAIConvTimebaseSrcEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetDelayFromSampClkDelayUnits(taskHandle, data)
    @threadcall((:DAQmxGetDelayFromSampClkDelayUnits, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetDelayFromSampClkDelayUnits(taskHandle, data)
    @threadcall((:DAQmxSetDelayFromSampClkDelayUnits, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDelayFromSampClkDelayUnits(taskHandle)
    @threadcall((:DAQmxResetDelayFromSampClkDelayUnits, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDelayFromSampClkDelayUnitsEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxGetDelayFromSampClkDelayUnitsEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, deviceNames, data)
end

function DAQmxSetDelayFromSampClkDelayUnitsEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxSetDelayFromSampClkDelayUnitsEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, deviceNames, data)
end

function DAQmxResetDelayFromSampClkDelayUnitsEx(taskHandle, deviceNames)
    @threadcall((:DAQmxResetDelayFromSampClkDelayUnitsEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetDelayFromSampClkDelay(taskHandle, data)
    @threadcall((:DAQmxGetDelayFromSampClkDelay, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetDelayFromSampClkDelay(taskHandle, data)
    @threadcall((:DAQmxSetDelayFromSampClkDelay, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDelayFromSampClkDelay(taskHandle)
    @threadcall((:DAQmxResetDelayFromSampClkDelay, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDelayFromSampClkDelayEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxGetDelayFromSampClkDelayEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, deviceNames, data)
end

function DAQmxSetDelayFromSampClkDelayEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxSetDelayFromSampClkDelayEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, deviceNames, data)
end

function DAQmxResetDelayFromSampClkDelayEx(taskHandle, deviceNames)
    @threadcall((:DAQmxResetDelayFromSampClkDelayEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxGetAIConvDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetAIConvDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxSetAIConvDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAIConvDigFltrEnable(taskHandle)
    @threadcall((:DAQmxResetAIConvDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvDigFltrEnableEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxGetAIConvDigFltrEnableEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvDigFltrEnableEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxSetAIConvDigFltrEnableEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvDigFltrEnableEx(taskHandle, deviceNames)
    @threadcall((:DAQmxResetAIConvDigFltrEnableEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetAIConvDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAIConvDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetAIConvDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAIConvDigFltrMinPulseWidth(taskHandle)
    @threadcall((:DAQmxResetAIConvDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvDigFltrMinPulseWidthEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxGetAIConvDigFltrMinPulseWidthEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvDigFltrMinPulseWidthEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxSetAIConvDigFltrMinPulseWidthEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvDigFltrMinPulseWidthEx(taskHandle, deviceNames)
    @threadcall((:DAQmxResetAIConvDigFltrMinPulseWidthEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvDigFltrTimebaseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAIConvDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAIConvDigFltrTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetAIConvDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAIConvDigFltrTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetAIConvDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvDigFltrTimebaseSrcEx(taskHandle, deviceNames, data, bufferSize)
    @threadcall((:DAQmxGetAIConvDigFltrTimebaseSrcEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring, uInt32), taskHandle, deviceNames, data, bufferSize)
end

function DAQmxSetAIConvDigFltrTimebaseSrcEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxSetAIConvDigFltrTimebaseSrcEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, SafeCstring), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvDigFltrTimebaseSrcEx(taskHandle, deviceNames)
    @threadcall((:DAQmxResetAIConvDigFltrTimebaseSrcEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxGetAIConvDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAIConvDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxSetAIConvDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAIConvDigFltrTimebaseRate(taskHandle)
    @threadcall((:DAQmxResetAIConvDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvDigFltrTimebaseRateEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxGetAIConvDigFltrTimebaseRateEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvDigFltrTimebaseRateEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxSetAIConvDigFltrTimebaseRateEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvDigFltrTimebaseRateEx(taskHandle, deviceNames)
    @threadcall((:DAQmxResetAIConvDigFltrTimebaseRateEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetAIConvDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxGetAIConvDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetAIConvDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxSetAIConvDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAIConvDigSyncEnable(taskHandle)
    @threadcall((:DAQmxResetAIConvDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAIConvDigSyncEnableEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxGetAIConvDigSyncEnableEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{bool32}), taskHandle, deviceNames, data)
end

function DAQmxSetAIConvDigSyncEnableEx(taskHandle, deviceNames, data)
    @threadcall((:DAQmxSetAIConvDigSyncEnableEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, bool32), taskHandle, deviceNames, data)
end

function DAQmxResetAIConvDigSyncEnableEx(taskHandle, deviceNames)
    @threadcall((:DAQmxResetAIConvDigSyncEnableEx, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, deviceNames)
end

function DAQmxGetMasterTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxGetMasterTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetMasterTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxSetMasterTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetMasterTimebaseRate(taskHandle)
    @threadcall((:DAQmxResetMasterTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetMasterTimebaseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetMasterTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetMasterTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetMasterTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetMasterTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetMasterTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefClkRate(taskHandle, data)
    @threadcall((:DAQmxGetRefClkRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetRefClkRate(taskHandle, data)
    @threadcall((:DAQmxSetRefClkRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetRefClkRate(taskHandle)
    @threadcall((:DAQmxResetRefClkRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefClkSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetRefClkSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetRefClkSrc(taskHandle, data)
    @threadcall((:DAQmxSetRefClkSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetRefClkSrc(taskHandle)
    @threadcall((:DAQmxResetRefClkSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSyncPulseType(taskHandle, data)
    @threadcall((:DAQmxGetSyncPulseType, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetSyncPulseType(taskHandle, data)
    @threadcall((:DAQmxSetSyncPulseType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSyncPulseType(taskHandle)
    @threadcall((:DAQmxResetSyncPulseType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSyncPulseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetSyncPulseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetSyncPulseSrc(taskHandle, data)
    @threadcall((:DAQmxSetSyncPulseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetSyncPulseSrc(taskHandle)
    @threadcall((:DAQmxResetSyncPulseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSyncPulseTimeWhen(taskHandle, data)
    @threadcall((:DAQmxGetSyncPulseTimeWhen, NIDAQmx), int32, (TaskHandle, Ptr{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxSetSyncPulseTimeWhen(taskHandle, data)
    @threadcall((:DAQmxSetSyncPulseTimeWhen, NIDAQmx), int32, (TaskHandle, CVIAbsoluteTime), taskHandle, data)
end

function DAQmxResetSyncPulseTimeWhen(taskHandle)
    @threadcall((:DAQmxResetSyncPulseTimeWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSyncPulseTimeTimescale(taskHandle, data)
    @threadcall((:DAQmxGetSyncPulseTimeTimescale, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetSyncPulseTimeTimescale(taskHandle, data)
    @threadcall((:DAQmxSetSyncPulseTimeTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSyncPulseTimeTimescale(taskHandle)
    @threadcall((:DAQmxResetSyncPulseTimeTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSyncPulseSyncTime(taskHandle, data)
    @threadcall((:DAQmxGetSyncPulseSyncTime, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxGetSyncPulseMinDelayToStart(taskHandle, data)
    @threadcall((:DAQmxGetSyncPulseMinDelayToStart, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetSyncPulseMinDelayToStart(taskHandle, data)
    @threadcall((:DAQmxSetSyncPulseMinDelayToStart, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetSyncPulseMinDelayToStart(taskHandle)
    @threadcall((:DAQmxResetSyncPulseMinDelayToStart, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSyncPulseResetTime(taskHandle, data)
    @threadcall((:DAQmxGetSyncPulseResetTime, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxGetSyncPulseResetDelay(taskHandle, data)
    @threadcall((:DAQmxGetSyncPulseResetDelay, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetSyncPulseResetDelay(taskHandle, data)
    @threadcall((:DAQmxSetSyncPulseResetDelay, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetSyncPulseResetDelay(taskHandle)
    @threadcall((:DAQmxResetSyncPulseResetDelay, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSyncPulseTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetSyncPulseTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetSyncClkInterval(taskHandle, data)
    @threadcall((:DAQmxGetSyncClkInterval, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxSetSyncClkInterval(taskHandle, data)
    @threadcall((:DAQmxSetSyncClkInterval, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetSyncClkInterval(taskHandle)
    @threadcall((:DAQmxResetSyncClkInterval, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetSampTimingEngine(taskHandle, data)
    @threadcall((:DAQmxGetSampTimingEngine, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxSetSampTimingEngine(taskHandle, data)
    @threadcall((:DAQmxSetSampTimingEngine, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetSampTimingEngine(taskHandle)
    @threadcall((:DAQmxResetSampTimingEngine, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetFirstSampTimestampEnable(taskHandle, data)
    @threadcall((:DAQmxGetFirstSampTimestampEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetFirstSampTimestampEnable(taskHandle, data)
    @threadcall((:DAQmxSetFirstSampTimestampEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetFirstSampTimestampEnable(taskHandle)
    @threadcall((:DAQmxResetFirstSampTimestampEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetFirstSampTimestampTimescale(taskHandle, data)
    @threadcall((:DAQmxGetFirstSampTimestampTimescale, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetFirstSampTimestampTimescale(taskHandle, data)
    @threadcall((:DAQmxSetFirstSampTimestampTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetFirstSampTimestampTimescale(taskHandle)
    @threadcall((:DAQmxResetFirstSampTimestampTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetFirstSampTimestampVal(taskHandle, data)
    @threadcall((:DAQmxGetFirstSampTimestampVal, NIDAQmx), int32, (TaskHandle, Ptr{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxGetFirstSampClkWhen(taskHandle, data)
    @threadcall((:DAQmxGetFirstSampClkWhen, NIDAQmx), int32, (TaskHandle, Ptr{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxSetFirstSampClkWhen(taskHandle, data)
    @threadcall((:DAQmxSetFirstSampClkWhen, NIDAQmx), int32, (TaskHandle, CVIAbsoluteTime), taskHandle, data)
end

function DAQmxResetFirstSampClkWhen(taskHandle)
    @threadcall((:DAQmxResetFirstSampClkWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetFirstSampClkTimescale(taskHandle, data)
    @threadcall((:DAQmxGetFirstSampClkTimescale, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetFirstSampClkTimescale(taskHandle, data)
    @threadcall((:DAQmxSetFirstSampClkTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetFirstSampClkTimescale(taskHandle)
    @threadcall((:DAQmxResetFirstSampClkTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetFirstSampClkOffset(taskHandle, data)
    @threadcall((:DAQmxGetFirstSampClkOffset, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetFirstSampClkOffset(taskHandle, data)
    @threadcall((:DAQmxSetFirstSampClkOffset, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetFirstSampClkOffset(taskHandle)
    @threadcall((:DAQmxResetFirstSampClkOffset, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigType(taskHandle, data)
    @threadcall((:DAQmxGetStartTrigType, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetStartTrigType(taskHandle, data)
    @threadcall((:DAQmxSetStartTrigType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetStartTrigType(taskHandle)
    @threadcall((:DAQmxResetStartTrigType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetStartTrigTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetDigEdgeStartTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigEdgeStartTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeStartTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeStartTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigEdgeStartTrigSrc(taskHandle)
    @threadcall((:DAQmxResetDigEdgeStartTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeStartTrigEdge(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeStartTrigEdge, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetDigEdgeStartTrigEdge(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeStartTrigEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigEdgeStartTrigEdge(taskHandle)
    @threadcall((:DAQmxResetDigEdgeStartTrigEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetDigEdgeStartTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigEdgeStartTrigDigFltrEnable(taskHandle)
    @threadcall((:DAQmxResetDigEdgeStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetDigEdgeStartTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigEdgeStartTrigDigFltrMinPulseWidth(taskHandle)
    @threadcall((:DAQmxResetDigEdgeStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrTimebaseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigEdgeStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeStartTrigDigFltrTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigEdgeStartTrigDigFltrTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetDigEdgeStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetDigEdgeStartTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigEdgeStartTrigDigFltrTimebaseRate(taskHandle)
    @threadcall((:DAQmxResetDigEdgeStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeStartTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetDigEdgeStartTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigEdgeStartTrigDigSyncEnable(taskHandle)
    @threadcall((:DAQmxResetDigEdgeStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternStartTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigPatternStartTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigPatternStartTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetDigPatternStartTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigPatternStartTrigSrc(taskHandle)
    @threadcall((:DAQmxResetDigPatternStartTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternStartTrigPattern(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigPatternStartTrigPattern, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigPatternStartTrigPattern(taskHandle, data)
    @threadcall((:DAQmxSetDigPatternStartTrigPattern, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigPatternStartTrigPattern(taskHandle)
    @threadcall((:DAQmxResetDigPatternStartTrigPattern, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternStartTrigWhen(taskHandle, data)
    @threadcall((:DAQmxGetDigPatternStartTrigWhen, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetDigPatternStartTrigWhen(taskHandle, data)
    @threadcall((:DAQmxSetDigPatternStartTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigPatternStartTrigWhen(taskHandle)
    @threadcall((:DAQmxResetDigPatternStartTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAnlgEdgeStartTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgEdgeStartTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeStartTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigSrc(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeStartTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigSlope(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeStartTrigSlope, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigSlope(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeStartTrigSlope, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigSlope(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeStartTrigSlope, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigLvl(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeStartTrigLvl, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigLvl(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeStartTrigLvl, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigLvl(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeStartTrigLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigHyst(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeStartTrigHyst, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigHyst(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeStartTrigHyst, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigHyst(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeStartTrigHyst, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigCoupling(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeStartTrigCoupling, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigCoupling(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeStartTrigCoupling, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigCoupling(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeStartTrigCoupling, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrEnable(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrMinPulseWidth(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseRate(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeStartTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeStartTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgEdgeStartTrigDigSyncEnable(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeStartTrigSrcs(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAnlgMultiEdgeStartTrigSrcs, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgMultiEdgeStartTrigSrcs(taskHandle, data)
    @threadcall((:DAQmxSetAnlgMultiEdgeStartTrigSrcs, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAnlgMultiEdgeStartTrigSrcs(taskHandle)
    @threadcall((:DAQmxResetAnlgMultiEdgeStartTrigSrcs, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeStartTrigSlopes(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxGetAnlgMultiEdgeStartTrigSlopes, NIDAQmx), int32, (TaskHandle, Ptr{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeStartTrigSlopes(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxSetAnlgMultiEdgeStartTrigSlopes, NIDAQmx), int32, (TaskHandle, Ptr{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeStartTrigSlopes(taskHandle)
    @threadcall((:DAQmxResetAnlgMultiEdgeStartTrigSlopes, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeStartTrigLvls(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxGetAnlgMultiEdgeStartTrigLvls, NIDAQmx), int32, (TaskHandle, Ptr{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeStartTrigLvls(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxSetAnlgMultiEdgeStartTrigLvls, NIDAQmx), int32, (TaskHandle, Ptr{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeStartTrigLvls(taskHandle)
    @threadcall((:DAQmxResetAnlgMultiEdgeStartTrigLvls, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeStartTrigHysts(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxGetAnlgMultiEdgeStartTrigHysts, NIDAQmx), int32, (TaskHandle, Ptr{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeStartTrigHysts(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxSetAnlgMultiEdgeStartTrigHysts, NIDAQmx), int32, (TaskHandle, Ptr{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeStartTrigHysts(taskHandle)
    @threadcall((:DAQmxResetAnlgMultiEdgeStartTrigHysts, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeStartTrigCouplings(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxGetAnlgMultiEdgeStartTrigCouplings, NIDAQmx), int32, (TaskHandle, Ptr{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeStartTrigCouplings(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxSetAnlgMultiEdgeStartTrigCouplings, NIDAQmx), int32, (TaskHandle, Ptr{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeStartTrigCouplings(taskHandle)
    @threadcall((:DAQmxResetAnlgMultiEdgeStartTrigCouplings, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAnlgWinStartTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgWinStartTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinStartTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigSrc(taskHandle)
    @threadcall((:DAQmxResetAnlgWinStartTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigWhen(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinStartTrigWhen, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigWhen(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinStartTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigWhen(taskHandle)
    @threadcall((:DAQmxResetAnlgWinStartTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigTop(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinStartTrigTop, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigTop(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinStartTrigTop, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigTop(taskHandle)
    @threadcall((:DAQmxResetAnlgWinStartTrigTop, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigBtm(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinStartTrigBtm, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigBtm(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinStartTrigBtm, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigBtm(taskHandle)
    @threadcall((:DAQmxResetAnlgWinStartTrigBtm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigCoupling(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinStartTrigCoupling, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigCoupling(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinStartTrigCoupling, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigCoupling(taskHandle)
    @threadcall((:DAQmxResetAnlgWinStartTrigCoupling, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigDigFltrEnable(taskHandle)
    @threadcall((:DAQmxResetAnlgWinStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigDigFltrMinPulseWidth(taskHandle)
    @threadcall((:DAQmxResetAnlgWinStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrTimebaseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAnlgWinStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgWinStartTrigDigFltrTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigDigFltrTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetAnlgWinStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigDigFltrTimebaseRate(taskHandle)
    @threadcall((:DAQmxResetAnlgWinStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinStartTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetAnlgWinStartTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgWinStartTrigDigSyncEnable(taskHandle)
    @threadcall((:DAQmxResetAnlgWinStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigTrigWhen(taskHandle, data)
    @threadcall((:DAQmxGetStartTrigTrigWhen, NIDAQmx), int32, (TaskHandle, Ptr{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxSetStartTrigTrigWhen(taskHandle, data)
    @threadcall((:DAQmxSetStartTrigTrigWhen, NIDAQmx), int32, (TaskHandle, CVIAbsoluteTime), taskHandle, data)
end

function DAQmxResetStartTrigTrigWhen(taskHandle)
    @threadcall((:DAQmxResetStartTrigTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigTimescale(taskHandle, data)
    @threadcall((:DAQmxGetStartTrigTimescale, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetStartTrigTimescale(taskHandle, data)
    @threadcall((:DAQmxSetStartTrigTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetStartTrigTimescale(taskHandle)
    @threadcall((:DAQmxResetStartTrigTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigTimestampEnable(taskHandle, data)
    @threadcall((:DAQmxGetStartTrigTimestampEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetStartTrigTimestampEnable(taskHandle, data)
    @threadcall((:DAQmxSetStartTrigTimestampEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetStartTrigTimestampEnable(taskHandle)
    @threadcall((:DAQmxResetStartTrigTimestampEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigTimestampTimescale(taskHandle, data)
    @threadcall((:DAQmxGetStartTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetStartTrigTimestampTimescale(taskHandle, data)
    @threadcall((:DAQmxSetStartTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetStartTrigTimestampTimescale(taskHandle)
    @threadcall((:DAQmxResetStartTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigTimestampVal(taskHandle, data)
    @threadcall((:DAQmxGetStartTrigTimestampVal, NIDAQmx), int32, (TaskHandle, Ptr{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxGetStartTrigDelay(taskHandle, data)
    @threadcall((:DAQmxGetStartTrigDelay, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetStartTrigDelay(taskHandle, data)
    @threadcall((:DAQmxSetStartTrigDelay, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetStartTrigDelay(taskHandle)
    @threadcall((:DAQmxResetStartTrigDelay, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigDelayUnits(taskHandle, data)
    @threadcall((:DAQmxGetStartTrigDelayUnits, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetStartTrigDelayUnits(taskHandle, data)
    @threadcall((:DAQmxSetStartTrigDelayUnits, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetStartTrigDelayUnits(taskHandle)
    @threadcall((:DAQmxResetStartTrigDelayUnits, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigRetriggerable(taskHandle, data)
    @threadcall((:DAQmxGetStartTrigRetriggerable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetStartTrigRetriggerable(taskHandle, data)
    @threadcall((:DAQmxSetStartTrigRetriggerable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetStartTrigRetriggerable(taskHandle)
    @threadcall((:DAQmxResetStartTrigRetriggerable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigTrigWin(taskHandle, data)
    @threadcall((:DAQmxGetStartTrigTrigWin, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetStartTrigTrigWin(taskHandle, data)
    @threadcall((:DAQmxSetStartTrigTrigWin, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetStartTrigTrigWin(taskHandle)
    @threadcall((:DAQmxResetStartTrigTrigWin, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigRetriggerWin(taskHandle, data)
    @threadcall((:DAQmxGetStartTrigRetriggerWin, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetStartTrigRetriggerWin(taskHandle, data)
    @threadcall((:DAQmxSetStartTrigRetriggerWin, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetStartTrigRetriggerWin(taskHandle)
    @threadcall((:DAQmxResetStartTrigRetriggerWin, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetStartTrigMaxNumTrigsToDetect(taskHandle, data)
    @threadcall((:DAQmxGetStartTrigMaxNumTrigsToDetect, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxSetStartTrigMaxNumTrigsToDetect(taskHandle, data)
    @threadcall((:DAQmxSetStartTrigMaxNumTrigsToDetect, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetStartTrigMaxNumTrigsToDetect(taskHandle)
    @threadcall((:DAQmxResetStartTrigMaxNumTrigsToDetect, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigType(taskHandle, data)
    @threadcall((:DAQmxGetRefTrigType, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetRefTrigType(taskHandle, data)
    @threadcall((:DAQmxSetRefTrigType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetRefTrigType(taskHandle)
    @threadcall((:DAQmxResetRefTrigType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigPretrigSamples(taskHandle, data)
    @threadcall((:DAQmxGetRefTrigPretrigSamples, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxSetRefTrigPretrigSamples(taskHandle, data)
    @threadcall((:DAQmxSetRefTrigPretrigSamples, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetRefTrigPretrigSamples(taskHandle)
    @threadcall((:DAQmxResetRefTrigPretrigSamples, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetRefTrigTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetDigEdgeRefTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigEdgeRefTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeRefTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeRefTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigEdgeRefTrigSrc(taskHandle)
    @threadcall((:DAQmxResetDigEdgeRefTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeRefTrigEdge(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeRefTrigEdge, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetDigEdgeRefTrigEdge(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeRefTrigEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigEdgeRefTrigEdge(taskHandle)
    @threadcall((:DAQmxResetDigEdgeRefTrigEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetDigEdgeRefTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigEdgeRefTrigDigFltrEnable(taskHandle)
    @threadcall((:DAQmxResetDigEdgeRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetDigEdgeRefTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigEdgeRefTrigDigFltrMinPulseWidth(taskHandle)
    @threadcall((:DAQmxResetDigEdgeRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrTimebaseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigEdgeRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeRefTrigDigFltrTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigEdgeRefTrigDigFltrTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetDigEdgeRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetDigEdgeRefTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigEdgeRefTrigDigFltrTimebaseRate(taskHandle)
    @threadcall((:DAQmxResetDigEdgeRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeRefTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetDigEdgeRefTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigEdgeRefTrigDigSyncEnable(taskHandle)
    @threadcall((:DAQmxResetDigEdgeRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternRefTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigPatternRefTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigPatternRefTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetDigPatternRefTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigPatternRefTrigSrc(taskHandle)
    @threadcall((:DAQmxResetDigPatternRefTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternRefTrigPattern(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigPatternRefTrigPattern, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigPatternRefTrigPattern(taskHandle, data)
    @threadcall((:DAQmxSetDigPatternRefTrigPattern, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigPatternRefTrigPattern(taskHandle)
    @threadcall((:DAQmxResetDigPatternRefTrigPattern, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternRefTrigWhen(taskHandle, data)
    @threadcall((:DAQmxGetDigPatternRefTrigWhen, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetDigPatternRefTrigWhen(taskHandle, data)
    @threadcall((:DAQmxSetDigPatternRefTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigPatternRefTrigWhen(taskHandle)
    @threadcall((:DAQmxResetDigPatternRefTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAnlgEdgeRefTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgEdgeRefTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeRefTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigSrc(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeRefTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigSlope(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeRefTrigSlope, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigSlope(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeRefTrigSlope, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigSlope(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeRefTrigSlope, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigLvl(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeRefTrigLvl, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigLvl(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeRefTrigLvl, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigLvl(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeRefTrigLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigHyst(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeRefTrigHyst, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigHyst(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeRefTrigHyst, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigHyst(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeRefTrigHyst, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigCoupling(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeRefTrigCoupling, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigCoupling(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeRefTrigCoupling, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigCoupling(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeRefTrigCoupling, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrEnable(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrMinPulseWidth(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseRate(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgEdgeRefTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxGetAnlgEdgeRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetAnlgEdgeRefTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxSetAnlgEdgeRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgEdgeRefTrigDigSyncEnable(taskHandle)
    @threadcall((:DAQmxResetAnlgEdgeRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeRefTrigSrcs(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAnlgMultiEdgeRefTrigSrcs, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgMultiEdgeRefTrigSrcs(taskHandle, data)
    @threadcall((:DAQmxSetAnlgMultiEdgeRefTrigSrcs, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAnlgMultiEdgeRefTrigSrcs(taskHandle)
    @threadcall((:DAQmxResetAnlgMultiEdgeRefTrigSrcs, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeRefTrigSlopes(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxGetAnlgMultiEdgeRefTrigSlopes, NIDAQmx), int32, (TaskHandle, Ptr{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeRefTrigSlopes(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxSetAnlgMultiEdgeRefTrigSlopes, NIDAQmx), int32, (TaskHandle, Ptr{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeRefTrigSlopes(taskHandle)
    @threadcall((:DAQmxResetAnlgMultiEdgeRefTrigSlopes, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeRefTrigLvls(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxGetAnlgMultiEdgeRefTrigLvls, NIDAQmx), int32, (TaskHandle, Ptr{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeRefTrigLvls(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxSetAnlgMultiEdgeRefTrigLvls, NIDAQmx), int32, (TaskHandle, Ptr{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeRefTrigLvls(taskHandle)
    @threadcall((:DAQmxResetAnlgMultiEdgeRefTrigLvls, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeRefTrigHysts(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxGetAnlgMultiEdgeRefTrigHysts, NIDAQmx), int32, (TaskHandle, Ptr{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeRefTrigHysts(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxSetAnlgMultiEdgeRefTrigHysts, NIDAQmx), int32, (TaskHandle, Ptr{float64}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeRefTrigHysts(taskHandle)
    @threadcall((:DAQmxResetAnlgMultiEdgeRefTrigHysts, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgMultiEdgeRefTrigCouplings(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxGetAnlgMultiEdgeRefTrigCouplings, NIDAQmx), int32, (TaskHandle, Ptr{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxSetAnlgMultiEdgeRefTrigCouplings(taskHandle, data, arraySizeInElements)
    @threadcall((:DAQmxSetAnlgMultiEdgeRefTrigCouplings, NIDAQmx), int32, (TaskHandle, Ptr{int32}, uInt32), taskHandle, data, arraySizeInElements)
end

function DAQmxResetAnlgMultiEdgeRefTrigCouplings(taskHandle)
    @threadcall((:DAQmxResetAnlgMultiEdgeRefTrigCouplings, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAnlgWinRefTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgWinRefTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinRefTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigSrc(taskHandle)
    @threadcall((:DAQmxResetAnlgWinRefTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigWhen(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinRefTrigWhen, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigWhen(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinRefTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigWhen(taskHandle)
    @threadcall((:DAQmxResetAnlgWinRefTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigTop(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinRefTrigTop, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigTop(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinRefTrigTop, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigTop(taskHandle)
    @threadcall((:DAQmxResetAnlgWinRefTrigTop, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigBtm(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinRefTrigBtm, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigBtm(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinRefTrigBtm, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigBtm(taskHandle)
    @threadcall((:DAQmxResetAnlgWinRefTrigBtm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigCoupling(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinRefTrigCoupling, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigCoupling(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinRefTrigCoupling, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigCoupling(taskHandle)
    @threadcall((:DAQmxResetAnlgWinRefTrigCoupling, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigDigFltrEnable(taskHandle)
    @threadcall((:DAQmxResetAnlgWinRefTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigDigFltrMinPulseWidth(taskHandle)
    @threadcall((:DAQmxResetAnlgWinRefTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrTimebaseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAnlgWinRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgWinRefTrigDigFltrTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigDigFltrTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetAnlgWinRefTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigDigFltrTimebaseRate(taskHandle)
    @threadcall((:DAQmxResetAnlgWinRefTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinRefTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetAnlgWinRefTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgWinRefTrigDigSyncEnable(taskHandle)
    @threadcall((:DAQmxResetAnlgWinRefTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigAutoTrigEnable(taskHandle, data)
    @threadcall((:DAQmxGetRefTrigAutoTrigEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetRefTrigAutoTrigEnable(taskHandle, data)
    @threadcall((:DAQmxSetRefTrigAutoTrigEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetRefTrigAutoTrigEnable(taskHandle)
    @threadcall((:DAQmxResetRefTrigAutoTrigEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigAutoTriggered(taskHandle, data)
    @threadcall((:DAQmxGetRefTrigAutoTriggered, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetRefTrigTimestampEnable(taskHandle, data)
    @threadcall((:DAQmxGetRefTrigTimestampEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetRefTrigTimestampEnable(taskHandle, data)
    @threadcall((:DAQmxSetRefTrigTimestampEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetRefTrigTimestampEnable(taskHandle)
    @threadcall((:DAQmxResetRefTrigTimestampEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigTimestampTimescale(taskHandle, data)
    @threadcall((:DAQmxGetRefTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetRefTrigTimestampTimescale(taskHandle, data)
    @threadcall((:DAQmxSetRefTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetRefTrigTimestampTimescale(taskHandle)
    @threadcall((:DAQmxResetRefTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigTimestampVal(taskHandle, data)
    @threadcall((:DAQmxGetRefTrigTimestampVal, NIDAQmx), int32, (TaskHandle, Ptr{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxGetRefTrigDelay(taskHandle, data)
    @threadcall((:DAQmxGetRefTrigDelay, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetRefTrigDelay(taskHandle, data)
    @threadcall((:DAQmxSetRefTrigDelay, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetRefTrigDelay(taskHandle)
    @threadcall((:DAQmxResetRefTrigDelay, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigRetriggerable(taskHandle, data)
    @threadcall((:DAQmxGetRefTrigRetriggerable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetRefTrigRetriggerable(taskHandle, data)
    @threadcall((:DAQmxSetRefTrigRetriggerable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetRefTrigRetriggerable(taskHandle)
    @threadcall((:DAQmxResetRefTrigRetriggerable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigTrigWin(taskHandle, data)
    @threadcall((:DAQmxGetRefTrigTrigWin, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetRefTrigTrigWin(taskHandle, data)
    @threadcall((:DAQmxSetRefTrigTrigWin, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetRefTrigTrigWin(taskHandle)
    @threadcall((:DAQmxResetRefTrigTrigWin, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigRetriggerWin(taskHandle, data)
    @threadcall((:DAQmxGetRefTrigRetriggerWin, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetRefTrigRetriggerWin(taskHandle, data)
    @threadcall((:DAQmxSetRefTrigRetriggerWin, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetRefTrigRetriggerWin(taskHandle)
    @threadcall((:DAQmxResetRefTrigRetriggerWin, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetRefTrigMaxNumTrigsToDetect(taskHandle, data)
    @threadcall((:DAQmxGetRefTrigMaxNumTrigsToDetect, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxSetRefTrigMaxNumTrigsToDetect(taskHandle, data)
    @threadcall((:DAQmxSetRefTrigMaxNumTrigsToDetect, NIDAQmx), int32, (TaskHandle, uInt32), taskHandle, data)
end

function DAQmxResetRefTrigMaxNumTrigsToDetect(taskHandle)
    @threadcall((:DAQmxResetRefTrigMaxNumTrigsToDetect, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAdvTrigType(taskHandle, data)
    @threadcall((:DAQmxGetAdvTrigType, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAdvTrigType(taskHandle, data)
    @threadcall((:DAQmxSetAdvTrigType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAdvTrigType(taskHandle)
    @threadcall((:DAQmxResetAdvTrigType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeAdvTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigEdgeAdvTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeAdvTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeAdvTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigEdgeAdvTrigSrc(taskHandle)
    @threadcall((:DAQmxResetDigEdgeAdvTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeAdvTrigEdge(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeAdvTrigEdge, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetDigEdgeAdvTrigEdge(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeAdvTrigEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigEdgeAdvTrigEdge(taskHandle)
    @threadcall((:DAQmxResetDigEdgeAdvTrigEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeAdvTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeAdvTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetDigEdgeAdvTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeAdvTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigEdgeAdvTrigDigFltrEnable(taskHandle)
    @threadcall((:DAQmxResetDigEdgeAdvTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetHshkTrigType(taskHandle, data)
    @threadcall((:DAQmxGetHshkTrigType, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetHshkTrigType(taskHandle, data)
    @threadcall((:DAQmxSetHshkTrigType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetHshkTrigType(taskHandle)
    @threadcall((:DAQmxResetHshkTrigType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetInterlockedHshkTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetInterlockedHshkTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetInterlockedHshkTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetInterlockedHshkTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetInterlockedHshkTrigSrc(taskHandle)
    @threadcall((:DAQmxResetInterlockedHshkTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetInterlockedHshkTrigAssertedLvl(taskHandle, data)
    @threadcall((:DAQmxGetInterlockedHshkTrigAssertedLvl, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetInterlockedHshkTrigAssertedLvl(taskHandle, data)
    @threadcall((:DAQmxSetInterlockedHshkTrigAssertedLvl, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetInterlockedHshkTrigAssertedLvl(taskHandle)
    @threadcall((:DAQmxResetInterlockedHshkTrigAssertedLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetPauseTrigType(taskHandle, data)
    @threadcall((:DAQmxGetPauseTrigType, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetPauseTrigType(taskHandle, data)
    @threadcall((:DAQmxSetPauseTrigType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetPauseTrigType(taskHandle)
    @threadcall((:DAQmxResetPauseTrigType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetPauseTrigTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetPauseTrigTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetAnlgLvlPauseTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAnlgLvlPauseTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgLvlPauseTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetAnlgLvlPauseTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigSrc(taskHandle)
    @threadcall((:DAQmxResetAnlgLvlPauseTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigWhen(taskHandle, data)
    @threadcall((:DAQmxGetAnlgLvlPauseTrigWhen, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigWhen(taskHandle, data)
    @threadcall((:DAQmxSetAnlgLvlPauseTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigWhen(taskHandle)
    @threadcall((:DAQmxResetAnlgLvlPauseTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigLvl(taskHandle, data)
    @threadcall((:DAQmxGetAnlgLvlPauseTrigLvl, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigLvl(taskHandle, data)
    @threadcall((:DAQmxSetAnlgLvlPauseTrigLvl, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigLvl(taskHandle)
    @threadcall((:DAQmxResetAnlgLvlPauseTrigLvl, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigHyst(taskHandle, data)
    @threadcall((:DAQmxGetAnlgLvlPauseTrigHyst, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigHyst(taskHandle, data)
    @threadcall((:DAQmxSetAnlgLvlPauseTrigHyst, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigHyst(taskHandle)
    @threadcall((:DAQmxResetAnlgLvlPauseTrigHyst, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigCoupling(taskHandle, data)
    @threadcall((:DAQmxGetAnlgLvlPauseTrigCoupling, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigCoupling(taskHandle, data)
    @threadcall((:DAQmxSetAnlgLvlPauseTrigCoupling, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigCoupling(taskHandle)
    @threadcall((:DAQmxResetAnlgLvlPauseTrigCoupling, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxGetAnlgLvlPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxSetAnlgLvlPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrEnable(taskHandle)
    @threadcall((:DAQmxResetAnlgLvlPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetAnlgLvlPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetAnlgLvlPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrMinPulseWidth(taskHandle)
    @threadcall((:DAQmxResetAnlgLvlPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxGetAnlgLvlPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxSetAnlgLvlPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseRate(taskHandle)
    @threadcall((:DAQmxResetAnlgLvlPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgLvlPauseTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxGetAnlgLvlPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetAnlgLvlPauseTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxSetAnlgLvlPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgLvlPauseTrigDigSyncEnable(taskHandle)
    @threadcall((:DAQmxResetAnlgLvlPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAnlgWinPauseTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgWinPauseTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinPauseTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigSrc(taskHandle)
    @threadcall((:DAQmxResetAnlgWinPauseTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigWhen(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinPauseTrigWhen, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigWhen(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinPauseTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigWhen(taskHandle)
    @threadcall((:DAQmxResetAnlgWinPauseTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigTop(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinPauseTrigTop, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigTop(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinPauseTrigTop, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigTop(taskHandle)
    @threadcall((:DAQmxResetAnlgWinPauseTrigTop, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigBtm(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinPauseTrigBtm, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigBtm(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinPauseTrigBtm, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigBtm(taskHandle)
    @threadcall((:DAQmxResetAnlgWinPauseTrigBtm, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigCoupling(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinPauseTrigCoupling, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigCoupling(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinPauseTrigCoupling, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigCoupling(taskHandle)
    @threadcall((:DAQmxResetAnlgWinPauseTrigCoupling, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrEnable(taskHandle)
    @threadcall((:DAQmxResetAnlgWinPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrMinPulseWidth(taskHandle)
    @threadcall((:DAQmxResetAnlgWinPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrTimebaseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetAnlgWinPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetAnlgWinPauseTrigDigFltrTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetAnlgWinPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigDigFltrTimebaseRate(taskHandle)
    @threadcall((:DAQmxResetAnlgWinPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetAnlgWinPauseTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxGetAnlgWinPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetAnlgWinPauseTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxSetAnlgWinPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetAnlgWinPauseTrigDigSyncEnable(taskHandle)
    @threadcall((:DAQmxResetAnlgWinPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigLvlPauseTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigLvlPauseTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigLvlPauseTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetDigLvlPauseTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigLvlPauseTrigSrc(taskHandle)
    @threadcall((:DAQmxResetDigLvlPauseTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigLvlPauseTrigWhen(taskHandle, data)
    @threadcall((:DAQmxGetDigLvlPauseTrigWhen, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetDigLvlPauseTrigWhen(taskHandle, data)
    @threadcall((:DAQmxSetDigLvlPauseTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigLvlPauseTrigWhen(taskHandle)
    @threadcall((:DAQmxResetDigLvlPauseTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxGetDigLvlPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetDigLvlPauseTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxSetDigLvlPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigLvlPauseTrigDigFltrEnable(taskHandle)
    @threadcall((:DAQmxResetDigLvlPauseTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetDigLvlPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetDigLvlPauseTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetDigLvlPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigLvlPauseTrigDigFltrMinPulseWidth(taskHandle)
    @threadcall((:DAQmxResetDigLvlPauseTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrTimebaseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigLvlPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigLvlPauseTrigDigFltrTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetDigLvlPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigLvlPauseTrigDigFltrTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetDigLvlPauseTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxGetDigLvlPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetDigLvlPauseTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxSetDigLvlPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigLvlPauseTrigDigFltrTimebaseRate(taskHandle)
    @threadcall((:DAQmxResetDigLvlPauseTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigLvlPauseTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxGetDigLvlPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetDigLvlPauseTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxSetDigLvlPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigLvlPauseTrigDigSyncEnable(taskHandle)
    @threadcall((:DAQmxResetDigLvlPauseTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternPauseTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigPatternPauseTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigPatternPauseTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetDigPatternPauseTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigPatternPauseTrigSrc(taskHandle)
    @threadcall((:DAQmxResetDigPatternPauseTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternPauseTrigPattern(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigPatternPauseTrigPattern, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigPatternPauseTrigPattern(taskHandle, data)
    @threadcall((:DAQmxSetDigPatternPauseTrigPattern, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigPatternPauseTrigPattern(taskHandle)
    @threadcall((:DAQmxResetDigPatternPauseTrigPattern, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigPatternPauseTrigWhen(taskHandle, data)
    @threadcall((:DAQmxGetDigPatternPauseTrigWhen, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetDigPatternPauseTrigWhen(taskHandle, data)
    @threadcall((:DAQmxSetDigPatternPauseTrigWhen, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigPatternPauseTrigWhen(taskHandle)
    @threadcall((:DAQmxResetDigPatternPauseTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetArmStartTrigType(taskHandle, data)
    @threadcall((:DAQmxGetArmStartTrigType, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetArmStartTrigType(taskHandle, data)
    @threadcall((:DAQmxSetArmStartTrigType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetArmStartTrigType(taskHandle)
    @threadcall((:DAQmxResetArmStartTrigType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetArmStartTerm(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetArmStartTerm, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetDigEdgeArmStartTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigEdgeArmStartTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeArmStartTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeArmStartTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigEdgeArmStartTrigSrc(taskHandle)
    @threadcall((:DAQmxResetDigEdgeArmStartTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigEdge(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeArmStartTrigEdge, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetDigEdgeArmStartTrigEdge(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeArmStartTrigEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigEdgeArmStartTrigEdge(taskHandle)
    @threadcall((:DAQmxResetDigEdgeArmStartTrigEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeArmStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrEnable(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeArmStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrEnable(taskHandle)
    @threadcall((:DAQmxResetDigEdgeArmStartTrigDigFltrEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeArmStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrMinPulseWidth(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeArmStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrMinPulseWidth(taskHandle)
    @threadcall((:DAQmxResetDigEdgeArmStartTrigDigFltrMinPulseWidth, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseSrc(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseSrc(taskHandle)
    @threadcall((:DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeArmStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseRate(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeArmStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseRate(taskHandle)
    @threadcall((:DAQmxResetDigEdgeArmStartTrigDigFltrTimebaseRate, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeArmStartTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeArmStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetDigEdgeArmStartTrigDigSyncEnable(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeArmStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetDigEdgeArmStartTrigDigSyncEnable(taskHandle)
    @threadcall((:DAQmxResetDigEdgeArmStartTrigDigSyncEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetArmStartTrigTrigWhen(taskHandle, data)
    @threadcall((:DAQmxGetArmStartTrigTrigWhen, NIDAQmx), int32, (TaskHandle, Ptr{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxSetArmStartTrigTrigWhen(taskHandle, data)
    @threadcall((:DAQmxSetArmStartTrigTrigWhen, NIDAQmx), int32, (TaskHandle, CVIAbsoluteTime), taskHandle, data)
end

function DAQmxResetArmStartTrigTrigWhen(taskHandle)
    @threadcall((:DAQmxResetArmStartTrigTrigWhen, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetArmStartTrigTimescale(taskHandle, data)
    @threadcall((:DAQmxGetArmStartTrigTimescale, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetArmStartTrigTimescale(taskHandle, data)
    @threadcall((:DAQmxSetArmStartTrigTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetArmStartTrigTimescale(taskHandle)
    @threadcall((:DAQmxResetArmStartTrigTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetArmStartTrigTimestampEnable(taskHandle, data)
    @threadcall((:DAQmxGetArmStartTrigTimestampEnable, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetArmStartTrigTimestampEnable(taskHandle, data)
    @threadcall((:DAQmxSetArmStartTrigTimestampEnable, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetArmStartTrigTimestampEnable(taskHandle)
    @threadcall((:DAQmxResetArmStartTrigTimestampEnable, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetArmStartTrigTimestampTimescale(taskHandle, data)
    @threadcall((:DAQmxGetArmStartTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetArmStartTrigTimestampTimescale(taskHandle, data)
    @threadcall((:DAQmxSetArmStartTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetArmStartTrigTimestampTimescale(taskHandle)
    @threadcall((:DAQmxResetArmStartTrigTimestampTimescale, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetArmStartTrigTimestampVal(taskHandle, data)
    @threadcall((:DAQmxGetArmStartTrigTimestampVal, NIDAQmx), int32, (TaskHandle, Ptr{CVIAbsoluteTime}), taskHandle, data)
end

function DAQmxGetTriggerSyncType(taskHandle, data)
    @threadcall((:DAQmxGetTriggerSyncType, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetTriggerSyncType(taskHandle, data)
    @threadcall((:DAQmxSetTriggerSyncType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetTriggerSyncType(taskHandle)
    @threadcall((:DAQmxResetTriggerSyncType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWatchdogTimeout(taskHandle, data)
    @threadcall((:DAQmxGetWatchdogTimeout, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetWatchdogTimeout(taskHandle, data)
    @threadcall((:DAQmxSetWatchdogTimeout, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetWatchdogTimeout(taskHandle)
    @threadcall((:DAQmxResetWatchdogTimeout, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWatchdogExpirTrigType(taskHandle, data)
    @threadcall((:DAQmxGetWatchdogExpirTrigType, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetWatchdogExpirTrigType(taskHandle, data)
    @threadcall((:DAQmxSetWatchdogExpirTrigType, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetWatchdogExpirTrigType(taskHandle)
    @threadcall((:DAQmxResetWatchdogExpirTrigType, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWatchdogExpirTrigTrigOnNetworkConnLoss(taskHandle, data)
    @threadcall((:DAQmxGetWatchdogExpirTrigTrigOnNetworkConnLoss, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxSetWatchdogExpirTrigTrigOnNetworkConnLoss(taskHandle, data)
    @threadcall((:DAQmxSetWatchdogExpirTrigTrigOnNetworkConnLoss, NIDAQmx), int32, (TaskHandle, bool32), taskHandle, data)
end

function DAQmxResetWatchdogExpirTrigTrigOnNetworkConnLoss(taskHandle)
    @threadcall((:DAQmxResetWatchdogExpirTrigTrigOnNetworkConnLoss, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeWatchdogExpirTrigSrc(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetDigEdgeWatchdogExpirTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxSetDigEdgeWatchdogExpirTrigSrc(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeWatchdogExpirTrigSrc, NIDAQmx), int32, (TaskHandle, SafeCstring), taskHandle, data)
end

function DAQmxResetDigEdgeWatchdogExpirTrigSrc(taskHandle)
    @threadcall((:DAQmxResetDigEdgeWatchdogExpirTrigSrc, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetDigEdgeWatchdogExpirTrigEdge(taskHandle, data)
    @threadcall((:DAQmxGetDigEdgeWatchdogExpirTrigEdge, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetDigEdgeWatchdogExpirTrigEdge(taskHandle, data)
    @threadcall((:DAQmxSetDigEdgeWatchdogExpirTrigEdge, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetDigEdgeWatchdogExpirTrigEdge(taskHandle)
    @threadcall((:DAQmxResetDigEdgeWatchdogExpirTrigEdge, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWatchdogDOExpirState(taskHandle, lines, data)
    @threadcall((:DAQmxGetWatchdogDOExpirState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, lines, data)
end

function DAQmxSetWatchdogDOExpirState(taskHandle, lines, data)
    @threadcall((:DAQmxSetWatchdogDOExpirState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, lines, data)
end

function DAQmxResetWatchdogDOExpirState(taskHandle, lines)
    @threadcall((:DAQmxResetWatchdogDOExpirState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, lines)
end

function DAQmxGetWatchdogAOOutputType(taskHandle, lines, data)
    @threadcall((:DAQmxGetWatchdogAOOutputType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, lines, data)
end

function DAQmxSetWatchdogAOOutputType(taskHandle, lines, data)
    @threadcall((:DAQmxSetWatchdogAOOutputType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, lines, data)
end

function DAQmxResetWatchdogAOOutputType(taskHandle, lines)
    @threadcall((:DAQmxResetWatchdogAOOutputType, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, lines)
end

function DAQmxGetWatchdogAOExpirState(taskHandle, lines, data)
    @threadcall((:DAQmxGetWatchdogAOExpirState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{float64}), taskHandle, lines, data)
end

function DAQmxSetWatchdogAOExpirState(taskHandle, lines, data)
    @threadcall((:DAQmxSetWatchdogAOExpirState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, float64), taskHandle, lines, data)
end

function DAQmxResetWatchdogAOExpirState(taskHandle, lines)
    @threadcall((:DAQmxResetWatchdogAOExpirState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, lines)
end

function DAQmxGetWatchdogCOExpirState(taskHandle, lines, data)
    @threadcall((:DAQmxGetWatchdogCOExpirState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, Ptr{int32}), taskHandle, lines, data)
end

function DAQmxSetWatchdogCOExpirState(taskHandle, lines, data)
    @threadcall((:DAQmxSetWatchdogCOExpirState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}, int32), taskHandle, lines, data)
end

function DAQmxResetWatchdogCOExpirState(taskHandle, lines)
    @threadcall((:DAQmxResetWatchdogCOExpirState, NIDAQmx), int32, (TaskHandle, Ptr{UInt8}), taskHandle, lines)
end

function DAQmxGetWatchdogHasExpired(taskHandle, data)
    @threadcall((:DAQmxGetWatchdogHasExpired, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetWriteRelativeTo(taskHandle, data)
    @threadcall((:DAQmxGetWriteRelativeTo, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetWriteRelativeTo(taskHandle, data)
    @threadcall((:DAQmxSetWriteRelativeTo, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetWriteRelativeTo(taskHandle)
    @threadcall((:DAQmxResetWriteRelativeTo, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWriteOffset(taskHandle, data)
    @threadcall((:DAQmxGetWriteOffset, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetWriteOffset(taskHandle, data)
    @threadcall((:DAQmxSetWriteOffset, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetWriteOffset(taskHandle)
    @threadcall((:DAQmxResetWriteOffset, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWriteRegenMode(taskHandle, data)
    @threadcall((:DAQmxGetWriteRegenMode, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetWriteRegenMode(taskHandle, data)
    @threadcall((:DAQmxSetWriteRegenMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetWriteRegenMode(taskHandle)
    @threadcall((:DAQmxResetWriteRegenMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWriteCurrWritePos(taskHandle, data)
    @threadcall((:DAQmxGetWriteCurrWritePos, NIDAQmx), int32, (TaskHandle, Ptr{uInt64}), taskHandle, data)
end

function DAQmxGetWriteOvercurrentChansExist(taskHandle, data)
    @threadcall((:DAQmxGetWriteOvercurrentChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetWriteOvercurrentChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetWriteOvercurrentChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWriteOvertemperatureChansExist(taskHandle, data)
    @threadcall((:DAQmxGetWriteOvertemperatureChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetWriteOvertemperatureChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetWriteOvertemperatureChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWriteExternalOvervoltageChansExist(taskHandle, data)
    @threadcall((:DAQmxGetWriteExternalOvervoltageChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetWriteExternalOvervoltageChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetWriteExternalOvervoltageChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWriteOverloadedChansExist(taskHandle, data)
    @threadcall((:DAQmxGetWriteOverloadedChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetWriteOverloadedChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetWriteOverloadedChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWriteOpenCurrentLoopChansExist(taskHandle, data)
    @threadcall((:DAQmxGetWriteOpenCurrentLoopChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetWriteOpenCurrentLoopChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetWriteOpenCurrentLoopChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWritePowerSupplyFaultChansExist(taskHandle, data)
    @threadcall((:DAQmxGetWritePowerSupplyFaultChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetWritePowerSupplyFaultChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetWritePowerSupplyFaultChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWriteSyncUnlockedChansExist(taskHandle, data)
    @threadcall((:DAQmxGetWriteSyncUnlockedChansExist, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetWriteSyncUnlockedChans(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetWriteSyncUnlockedChans, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWriteSpaceAvail(taskHandle, data)
    @threadcall((:DAQmxGetWriteSpaceAvail, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxGetWriteTotalSampPerChanGenerated(taskHandle, data)
    @threadcall((:DAQmxGetWriteTotalSampPerChanGenerated, NIDAQmx), int32, (TaskHandle, Ptr{uInt64}), taskHandle, data)
end

function DAQmxGetWriteAccessoryInsertionOrRemovalDetected(taskHandle, data)
    @threadcall((:DAQmxGetWriteAccessoryInsertionOrRemovalDetected, NIDAQmx), int32, (TaskHandle, Ptr{bool32}), taskHandle, data)
end

function DAQmxGetWriteDevsWithInsertedOrRemovedAccessories(taskHandle, data, bufferSize)
    @threadcall((:DAQmxGetWriteDevsWithInsertedOrRemovedAccessories, NIDAQmx), int32, (TaskHandle, SafeCstring, uInt32), taskHandle, data, bufferSize)
end

function DAQmxGetWriteRawDataWidth(taskHandle, data)
    @threadcall((:DAQmxGetWriteRawDataWidth, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxGetWriteNumChans(taskHandle, data)
    @threadcall((:DAQmxGetWriteNumChans, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxGetWriteWaitMode(taskHandle, data)
    @threadcall((:DAQmxGetWriteWaitMode, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetWriteWaitMode(taskHandle, data)
    @threadcall((:DAQmxSetWriteWaitMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetWriteWaitMode(taskHandle)
    @threadcall((:DAQmxResetWriteWaitMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWriteSleepTime(taskHandle, data)
    @threadcall((:DAQmxGetWriteSleepTime, NIDAQmx), int32, (TaskHandle, Ptr{float64}), taskHandle, data)
end

function DAQmxSetWriteSleepTime(taskHandle, data)
    @threadcall((:DAQmxSetWriteSleepTime, NIDAQmx), int32, (TaskHandle, float64), taskHandle, data)
end

function DAQmxResetWriteSleepTime(taskHandle)
    @threadcall((:DAQmxResetWriteSleepTime, NIDAQmx), int32, (TaskHandle,), taskHandle)
end

function DAQmxGetWriteDigitalLinesBytesPerChan(taskHandle, data)
    @threadcall((:DAQmxGetWriteDigitalLinesBytesPerChan, NIDAQmx), int32, (TaskHandle, Ptr{uInt32}), taskHandle, data)
end

function DAQmxGetSampClkTimingResponseMode(taskHandle, data)
    @threadcall((:DAQmxGetSampClkTimingResponseMode, NIDAQmx), int32, (TaskHandle, Ptr{int32}), taskHandle, data)
end

function DAQmxSetSampClkTimingResponseMode(taskHandle, data)
    @threadcall((:DAQmxSetSampClkTimingResponseMode, NIDAQmx), int32, (TaskHandle, int32), taskHandle, data)
end

function DAQmxResetSampClkTimingResponseMode(taskHandle)
    @threadcall((:DAQmxResetSampClkTimingResponseMode, NIDAQmx), int32, (TaskHandle,), taskHandle)
end
