@interface CoreIRLearningSessionClient
- (BOOL)addMappingWithProtocolID:(unsigned __int8)d options:(unsigned __int8)options commandToMap:(unint64_t)map command:(unint64_t)command repeat:(unint64_t)repeat;
- (BOOL)startLearningCommand:(unint64_t)command;
- (void)endLearning;
@end

@implementation CoreIRLearningSessionClient

- (BOOL)startLearningCommand:(unint64_t)command
{
  manager = [(CoreIRLearningSessionClient *)self manager];
  v9 = 0;
  if (!manager)
  {
    [(CoreIRLearningSessionClient *)a2 startLearningCommand:?];
  }

  if (gLogCategory_CoreRCXPC <= 10 && (gLogCategory_CoreRCXPC != -1 || _LogCategory_Initialize()))
  {
    [CoreIRLearningSessionClient startLearningCommand:command];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__CoreIRLearningSessionClient_startLearningCommand___block_invoke;
  v8[3] = &unk_278EA4348;
  v8[5] = self;
  v8[6] = command;
  v8[4] = manager;
  return CoreRCWaitForAsyncOperation(&v9, v8);
}

uint64_t __52__CoreIRLearningSessionClient_startLearningCommand___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) owningDevice];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__CoreIRLearningSessionClient_startLearningCommand___block_invoke_2;
  v7[3] = &unk_278EA28E8;
  v7[4] = a2;
  return [v3 startLearningCommandAsync:v4 withDevice:v5 reply:v7];
}

uint64_t __52__CoreIRLearningSessionClient_startLearningCommand___block_invoke_2(uint64_t a1, char a2, uint64_t a3)
{
  if (!a3 && (a2 & 1) == 0)
  {
    __38__CoreIRBusClient_deleteDevice_error___block_invoke_2_cold_1(&v6);
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)endLearning
{
  manager = [(CoreIRLearningSessionClient *)self manager];
  v7 = manager;
  v11 = 0;
  if (!manager)
  {
    manager = [(CoreIRLearningSessionClient *)a2 endLearning];
  }

  if (gLogCategory_CoreRCXPC <= 10)
  {
    if (gLogCategory_CoreRCXPC != -1 || (manager = _LogCategory_Initialize(), manager))
    {
      [(CoreIRLearningSessionClient *)manager endLearning];
    }
  }

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__CoreIRLearningSessionClient_endLearning__block_invoke;
  v10[3] = &unk_278EA32B8;
  v10[4] = v7;
  v10[5] = self;
  CoreRCWaitForAsyncOperation(&v11, v10);
  v8 = v11;
  if (v11 && gLogCategory_CoreRCXPC <= 90)
  {
    if (gLogCategory_CoreRCXPC == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v8 = v11;
    }

    LogPrintF(&gLogCategory_CoreRCXPC, "[CoreIRLearningSessionClient endLearning]", 90, "endLearning err %@\n", v8);
  }

LABEL_11:
  v9.receiver = self;
  v9.super_class = CoreIRLearningSessionClient;
  [(CoreIRLearningSession *)&v9 endLearning];
}

uint64_t __42__CoreIRLearningSessionClient_endLearning__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) owningDevice];

  return [v3 endLearningWithDeviceAsync:v4 reply:a2];
}

- (BOOL)addMappingWithProtocolID:(unsigned __int8)d options:(unsigned __int8)options commandToMap:(unint64_t)map command:(unint64_t)command repeat:(unint64_t)repeat
{
  manager = [(CoreIRLearningSessionClient *)self manager];
  v17 = manager;
  v22 = 0;
  if (!manager)
  {
    manager = [CoreIRLearningSessionClient addMappingWithProtocolID:a2 options:self commandToMap:? command:? repeat:?];
  }

  if (gLogCategory_CoreRCXPC <= 10)
  {
    if (gLogCategory_CoreRCXPC != -1 || (manager = _LogCategory_Initialize(), manager))
    {
      [CoreIRLearningSessionClient addMappingWithProtocolID:manager options:v15 commandToMap:v16 command:? repeat:?];
    }
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__CoreIRLearningSessionClient_addMappingWithProtocolID_options_commandToMap_command_repeat___block_invoke;
  v19[3] = &unk_278EA4370;
  v19[4] = v17;
  v19[5] = self;
  dCopy = d;
  optionsCopy = options;
  v19[6] = map;
  v19[7] = command;
  v19[8] = repeat;
  return CoreRCWaitForAsyncOperation(&v22, v19);
}

@end