@interface CSExclaveIndicatorController
- (CSExclaveIndicatorController)init;
- (unint64_t)_getCSFSensorStatusWithExclaveSensorStatus:(unsigned int)status;
- (unint64_t)sensorStart;
- (unint64_t)sensorStop;
- (void)copyBufferWithSize:(unsigned int)size;
- (void)dealloc;
@end

@implementation CSExclaveIndicatorController

- (unint64_t)_getCSFSensorStatusWithExclaveSensorStatus:(unsigned int)status
{
  if (status - 1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_1DDB1F8A0[status - 1];
  }
}

- (void)dealloc
{
  [(CSExclaveIndicatorController *)self sensorStop];
  mem = self->_mem;
  if (mem)
  {
    free(mem);
    self->_mem = 0;
  }

  v4.receiver = self;
  v4.super_class = CSExclaveIndicatorController;
  [(CSExclaveIndicatorController *)&v4 dealloc];
}

- (unint64_t)sensorStop
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_hasStarted)
  {
    if (!exclaves_sensor_stop())
    {
      self->_hasStarted = 0;
    }

    v3 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v7 = "[CSExclaveIndicatorController sensorStop]";
      v8 = 1024;
      v9 = 0;
      _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s After Sensor Stop Sensor Status : %d", buf, 0x12u);
    }

    return [(CSExclaveIndicatorController *)self _getCSFSensorStatusWithExclaveSensorStatus:0];
  }

  else
  {
    v5 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v7 = "[CSExclaveIndicatorController sensorStop]";
      _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s Sensor stop before start", buf, 0xCu);
    }

    return 4;
  }
}

- (unint64_t)sensorStart
{
  v10 = *MEMORY[0x1E69E9840];
  if (self->_hasStarted)
  {
    return 5;
  }

  v4 = exclaves_sensor_start();
  v5 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v7 = "[CSExclaveIndicatorController sensorStart]";
    v8 = 1024;
    v9 = 0;
    _os_log_impl(&dword_1DDA4B000, v5, OS_LOG_TYPE_DEFAULT, "%s After Sensor Start Sensor Status : %d", buf, 0x12u);
  }

  if (!v4)
  {
    self->_hasStarted = 1;
  }

  return [(CSExclaveIndicatorController *)self _getCSFSensorStatusWithExclaveSensorStatus:0];
}

- (void)copyBufferWithSize:(unsigned int)size
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = exclaves_audio_buffer_copyout();
  if (!v4)
  {
    return self->_mem;
  }

  v5 = v4;
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[CSExclaveIndicatorController copyBufferWithSize:]";
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Failed EIC buffer copy : %d", &v8, 0x12u);
  }

  return 0;
}

- (CSExclaveIndicatorController)init
{
  v16 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = CSExclaveIndicatorController;
  v2 = [(CSExclaveIndicatorController *)&v11 init];
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[CSExclaveIndicatorController init]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Creating EIC Sensor?", buf, 0xCu);
  }

  v4 = exclaves_sensor_create();
  if (v4)
  {
    v5 = v4;
    v6 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v13 = "[CSExclaveIndicatorController init]";
      v14 = 1024;
      v15 = v5;
      _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Failed EIC sensor creation : %d", buf, 0x12u);
    }

    v7 = 0;
    goto LABEL_16;
  }

  exclaves_sensor_status();
  v8 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "[CSExclaveIndicatorController init]";
    v14 = 1024;
    v15 = 0;
    _os_log_impl(&dword_1DDA4B000, v8, OS_LOG_TYPE_DEFAULT, "%s After Sensor Creation Sensor Status : %d", buf, 0x12u);
  }

  v2->_mem = malloc_type_calloc(1uLL, 0x10000uLL, 0xC775CD87uLL);
  if (!exclaves_audio_buffer_create())
  {
    v2->_hasStarted = 0;
LABEL_15:
    v7 = v2;
    goto LABEL_16;
  }

  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[CSExclaveIndicatorController init]";
    _os_log_impl(&dword_1DDA4B000, v9, OS_LOG_TYPE_DEFAULT, "%s Failed EIC audio buffer creation", buf, 0xCu);
  }

  free(v2->_mem);
  v7 = 0;
  v2->_mem = 0;
LABEL_16:

  return v7;
}

@end