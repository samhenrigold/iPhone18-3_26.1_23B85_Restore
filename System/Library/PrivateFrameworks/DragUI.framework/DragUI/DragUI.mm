id DRLogTarget(uint64_t a1)
{
  if (DRLogTarget_onceToken != -1)
  {
    DRLogTarget_cold_1();
  }

  v2 = DRLogTarget_log;

  return v2;
}

uint64_t __DRLogTarget_block_invoke()
{
  DRLogTarget_log = os_log_create("com.apple.DragUI", "Dragging");

  return MEMORY[0x2821F96F8]();
}