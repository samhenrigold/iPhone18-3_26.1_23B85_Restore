Swift::Void __swiftcall UIView.setGlassBackground()()
{
  sub_238DACFEC();
  MEMORY[0x28223BE20]();
  sub_238DACFDC();
  v0[3] = sub_238DACFFC();
  v0[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v0);
  sub_238DAD00C();
  sub_238DAD04C();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void sub_238DACDB8(void *a1)
{
  sub_238DACFEC();
  MEMORY[0x28223BE20]();
  sub_238DAD03C();
  sub_238DAD02C();
  sub_238DAD01C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_238DACFDC();
  v3[3] = sub_238DACFFC();
  v3[4] = MEMORY[0x277D74E20];
  __swift_allocate_boxed_opaque_existential_1(v3);
  sub_238DAD00C();
  sub_238DAD04C();
}

void sub_238DACF10(void *a1)
{
  sub_238DAD03C();
  sub_238DAD02C();
  sub_238DAD01C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = a1;
  sub_238DAD04C();
}