@interface NSError(IOReturn)
+ (id)errorWithIOReturn:()IOReturn;
@end

@implementation NSError(IOReturn)

+ (id)errorWithIOReturn:()IOReturn
{
  v13[50] = *MEMORY[0x277D85DE8];
  v12[0] = &unk_28419A000;
  v12[1] = &unk_28419A018;
  v13[0] = @"success";
  v13[1] = @"general error";
  v12[2] = &unk_28419A030;
  v12[3] = &unk_28419A048;
  v13[2] = @"memory allocation error";
  v13[3] = @"resource shortage";
  v12[4] = &unk_28419A060;
  v12[5] = &unk_28419A078;
  v13[4] = @"Mach IPC failure";
  v13[5] = @"no such device";
  v12[6] = &unk_28419A090;
  v12[7] = &unk_28419A0A8;
  v13[6] = @"privilege violation";
  v13[7] = @"invalid argument";
  v12[8] = &unk_28419A0C0;
  v12[9] = &unk_28419A0D8;
  v13[8] = @"device is read locked";
  v13[9] = @"device is write locked";
  v12[10] = &unk_28419A0F0;
  v12[11] = &unk_28419A108;
  v13[10] = @"device is exclusive access";
  v13[11] = @"bad IPC message ID";
  v12[12] = &unk_28419A120;
  v12[13] = &unk_28419A138;
  v13[12] = @"unsupported function";
  v13[13] = @"virtual memory error";
  v12[14] = &unk_28419A150;
  v12[15] = &unk_28419A168;
  v13[14] = @"internal driver error";
  v13[15] = @"I/O error";
  v12[16] = &unk_28419A180;
  v12[17] = &unk_28419A198;
  v13[16] = @"cannot acquire lock";
  v13[17] = @"device is not open";
  v12[18] = &unk_28419A1B0;
  v12[19] = &unk_28419A1C8;
  v13[18] = @"device is not readable";
  v13[19] = @"device is not writeable";
  v12[20] = &unk_28419A1E0;
  v12[21] = &unk_28419A1F8;
  v13[20] = @"alignment error";
  v13[21] = @"media error";
  v12[22] = &unk_28419A210;
  v12[23] = &unk_28419A228;
  v13[22] = @"device is still open";
  v13[23] = @"rld failure";
  v12[24] = &unk_28419A240;
  v12[25] = &unk_28419A258;
  v13[24] = @"DMA failure";
  v13[25] = @"device is busy";
  v12[26] = &unk_28419A270;
  v12[27] = &unk_28419A288;
  v13[26] = @"I/O timeout";
  v13[27] = @"device is offline";
  v12[28] = &unk_28419A2A0;
  v12[29] = &unk_28419A2B8;
  v13[28] = @"device is not ready";
  v13[29] = @"device/channel is not attached";
  v12[30] = &unk_28419A2D0;
  v12[31] = &unk_28419A2E8;
  v13[30] = @"no DMA channels available";
  v13[31] = @"no space for data";
  v12[32] = &unk_28419A300;
  v12[33] = &unk_28419A318;
  v13[32] = @"device port already exists";
  v13[33] = @"cannot wire physical memory";
  v12[34] = &unk_28419A330;
  v12[35] = &unk_28419A348;
  v13[34] = @"no interrupt attached";
  v13[35] = @"no DMA frames enqueued";
  v12[36] = &unk_28419A360;
  v12[37] = &unk_28419A378;
  v13[36] = @"message is too large";
  v13[37] = @"operation is not permitted";
  v12[38] = &unk_28419A390;
  v12[39] = &unk_28419A3A8;
  v13[38] = @"device is without power";
  v13[39] = @"media is not present";
  v12[40] = &unk_28419A3C0;
  v12[41] = &unk_28419A3D8;
  v13[40] = @"media is not formatted";
  v13[41] = @"unsupported mode";
  v12[42] = &unk_28419A3F0;
  v12[43] = &unk_28419A408;
  v13[42] = @"data underrun";
  v13[43] = @"data overrun";
  v12[44] = &unk_28419A420;
  v12[45] = &unk_28419A438;
  v13[44] = @"device error";
  v13[45] = @"no completion routine";
  v12[46] = &unk_28419A450;
  v12[47] = &unk_28419A468;
  v13[46] = @"operation was aborted";
  v13[47] = @"bus bandwidth would be exceeded";
  v12[48] = &unk_28419A480;
  v12[49] = &unk_28419A498;
  v13[48] = @"device is not responding";
  v13[49] = @"unanticipated driver error";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:50];
  v5 = [MEMORY[0x277CCABB0] numberWithInt:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"0x%x unknown", a3];
  }

  v10 = *MEMORY[0x277CCA450];
  v11 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"HIDFramework" code:a3 userInfo:v7];

  return v8;
}

@end