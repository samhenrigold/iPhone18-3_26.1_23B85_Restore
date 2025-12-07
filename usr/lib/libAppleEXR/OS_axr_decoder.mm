@interface OS_axr_decoder
- (NSString)debugDescription;
- (void)dealloc;
@end

@implementation OS_axr_decoder

- (NSString)debugDescription
{
  v2 = MEMORY[0x2A1C7C4A8](self, a2);
  v4 = v2;
  v14 = *MEMORY[0x29EDCA608];
  v9 = 0;
  if (*(v2 + 32))
  {
    PrintChannel(v13, *(v2 + 24), &v9, (*(v2 + 16) + 16), *(v2 + 40), v3);
  }

  else
  {
    strcpy(v13, "<no channels defined>");
  }

  v5 = *(v4 + 56);
  if (v5)
  {
    snprintf(__str, 0x100uLL, "[%u, %u]", *(v4 + 48), v5 + *(v4 + 48) - 1);
  }

  else
  {
    strcpy(__str, "<size=0>");
  }

  v6 = *(v4 + 60);
  if (v6)
  {
    snprintf(v10, 0x100uLL, "[%u, %u]", *(v4 + 52), v6 + *(v4 + 52) - 1);
  }

  else
  {
    strcpy(v10, "<size=0>");
  }

  axr_flags_get_name(buf, 0x1000uLL, *(v4 + 80));
  v8.receiver = v4;
  v8.super_class = OS_axr_decoder;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@\n\tdata:             %p\n\tpart index:       %u\n\tlevel index:      %u\n\tchannel count:    %u\n\tchannels in part: %u\n\tdata window:      x:[%u, %u] y:[%u, %u]\n\tsub region:       x:%s y:%s\n\tflags:            %s\n\tchannels:\n%s", -[OS_axr_decoder debugDescription](&v8, sel_debugDescription), *(v4 + 16), *(v4 + 40), *(v4 + 44), *(v4 + 32), *(v4 + 36), *(v4 + 64), *(v4 + 68), *(v4 + 72), *(v4 + 76), __str, v10, buf, v13];
}

- (void)dealloc
{
  axr_decoder::~axr_decoder(&self->super.super);
  v3.receiver = v2;
  v3.super_class = OS_axr_decoder;
  [(OS_axr_decoder *)&v3 dealloc];
}

@end