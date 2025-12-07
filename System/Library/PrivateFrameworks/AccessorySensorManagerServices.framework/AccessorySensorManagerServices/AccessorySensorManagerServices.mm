uint64_t ASMXPCGetNextClientID()
{
  if (ASMXPCGetNextClientID_sOnce != -1)
  {
    ASMXPCGetNextClientID_cold_1();
  }

  return atomic_fetch_add(&ASMXPCGetNextClientID_sNext, 1u) + 1;
}

uint64_t __ASMXPCGetNextClientID_block_invoke()
{
  result = RandomBytes();
  ASMXPCGetNextClientID_sNext = word_27E30C38A << 16;
  return result;
}

uint64_t ASMXPCGetNextConnectionID()
{
  if (ASMXPCGetNextConnectionID_sOnce != -1)
  {
    ASMXPCGetNextConnectionID_cold_1();
  }

  return atomic_fetch_add(&ASMXPCGetNextConnectionID_sNext, 1u) + 1;
}

uint64_t __ASMXPCGetNextConnectionID_block_invoke()
{
  result = RandomBytes();
  ASMXPCGetNextConnectionID_sNext = word_27E30C39A << 16;
  return result;
}

id ASMErrorF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = NSErrorV();

  return v9;
}