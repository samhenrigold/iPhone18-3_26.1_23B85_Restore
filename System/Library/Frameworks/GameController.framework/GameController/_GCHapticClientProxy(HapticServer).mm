@interface _GCHapticClientProxy(HapticServer)
- (void)releaseClientResources;
- (void)stopPrewarm;
- (void)stopRunning;
@end

@implementation _GCHapticClientProxy(HapticServer)

- (void)_configureActuatorsLegacyWithOptions:()HapticServer .cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_4_5(a1))
  {
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 2u);
  }
}

- (void)_configureActuatorsLegacyWithOptions:()HapticServer .cold.2()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)configureWithOptions:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)configureWithOptions:()HapticServer reply:.cold.2()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)configureWithOptions:()HapticServer reply:.cold.3()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)configureWithOptions:()HapticServer reply:.cold.4()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)configureWithOptions:()HapticServer reply:.cold.5(NSObject *a1, uint64_t a2, NSObject **a3)
{
  if (OUTLINED_FUNCTION_8_8(a1))
  {
    OUTLINED_FUNCTION_4_1();
    _os_log_impl(&dword_1D2CD5000, a1, OS_LOG_TYPE_DEFAULT, "Received persistent controller identifier %@", v5, 0xCu);
  }

  *a3 = a1;
}

- (void)configureWithOptions:()HapticServer reply:.cold.6()
{
  OUTLINED_FUNCTION_3_12();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)configureWithOptions:()HapticServer reply:.cold.7()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_10_6(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_1();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)allocateClientResources:()HapticServer .cold.1()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)releaseClientResources
{
  v2 = getGCHapticsLogger(self);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)getHapticLatency:()HapticServer .cold.1()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)setPlayerBehavior:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)loadHapticEvent:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)loadHapticSequenceFromData:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)loadHapticSequenceFromEvents:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)loadVibePattern:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_0_13();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)setSequenceEventBehavior:()HapticServer behavior:channelIndex:reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)referenceCustomAudioEvent:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)releaseCustomAudioEvent:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)removeCustomAudioEvent:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)prepareHapticSequence:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_3_12();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

- (void)detachSequence:()HapticServer .cold.1(uint64_t a1)
{
  v2 = getGCHapticsLogger(a1);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_0_33();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0x16u);
  }
}

- (void)prewarm:()HapticServer .cold.1()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)stopPrewarm
{
  v2 = getGCHapticsLogger(self);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)startRunning:()HapticServer .cold.1()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)stopRunning
{
  v2 = getGCHapticsLogger(self);
  if (OUTLINED_FUNCTION_4_5(v2))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v3, v4, v5, v6, v7, 0xCu);
  }
}

- (void)stopRunning:()HapticServer .cold.1()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

- (void)debugExpectNotifyOnFinishAfter:()HapticServer reply:.cold.1()
{
  OUTLINED_FUNCTION_6_4();
  if (OUTLINED_FUNCTION_8_8(v1))
  {
    OUTLINED_FUNCTION_2_21();
    OUTLINED_FUNCTION_10();
    _os_log_impl(v2, v3, v4, v5, v6, 0x16u);
  }
}

@end