uint64_t sub_104070()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_1040F4()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_104178()
{

  sub_106264();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1041CC()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_104250()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_1042D4()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_104358()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_C8CB0(v3, v4);
}

uint64_t sub_1043DC()
{
  sub_8A88();
  v0 = swift_task_alloc();
  v1 = sub_384A8(v0);
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_D44B8(v3, v4);
}

uint64_t sub_104478(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1044C0()
{
  sub_2D64(v0 + 2);
  sub_2D64(v0 + 7);
  sub_2D64(v0 + 12);
  sub_2D64(v0 + 17);
  sub_2D64(v0 + 22);

  return _swift_deallocObject(v0, 216, 7);
}

uint64_t sub_10452C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1 + *(a3 + 24);

    return sub_369C(v8, a2, v7);
  }

  else
  {
    v10 = *(a1 + *(a3 + 48));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_104608(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2440(&qword_1C5800, &unk_16F510);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1 + *(a4 + 24);

    return sub_214C(v10, a2, a2, v9);
  }

  else
  {
    *(a1 + *(a4 + 48)) = a2;
  }

  return result;
}

uint64_t sub_1046C0(uint64_t a1)
{
  sub_7D0F4(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_7B288();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_104798(319);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_104798(uint64_t a1)
{
  if (!qword_1C9DF8)
  {
    sub_9790(&qword_1C9198, &qword_1751C8);
    v1 = sub_16E3EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C9DF8);
    }
  }
}

uint64_t getEnumTagSinglePayload for ConfirmationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConfirmationStatus(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x104950);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10498C()
{
  result = qword_1C9E48;
  if (!qword_1C9E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9E48);
  }

  return result;
}

uint64_t sub_104B50()
{
  result = v0[3687];
  STACK[0x200] = v0[3613];
  STACK[0x208] = v0[3612];
  STACK[0x210] = v0[3611];
  STACK[0x218] = v0[3610];
  STACK[0x220] = v0[3607];
  STACK[0x228] = v0[3606];
  STACK[0x230] = v0[3605];
  STACK[0x238] = v0[3604];
  STACK[0x240] = v0[3603];
  STACK[0x248] = v0[3602];
  STACK[0x250] = v0[3601];
  STACK[0x258] = v0[3600];
  STACK[0x260] = v0[3599];
  STACK[0x268] = v0[3598];
  STACK[0x270] = v0[3597];
  STACK[0x278] = v0[3596];
  STACK[0x280] = v0[3595];
  STACK[0x288] = v0[3594];
  STACK[0x290] = v0[3593];
  STACK[0x298] = v0[3592];
  STACK[0x2A0] = v0[3591];
  STACK[0x2A8] = v0[3590];
  STACK[0x2B0] = v0[3589];
  STACK[0x2B8] = v0[3588];
  STACK[0x2C0] = v0[3587];
  STACK[0x2C8] = v0[3586];
  STACK[0x2D0] = v0[3585];
  STACK[0x2D8] = v0[3584];
  STACK[0x2E0] = v0[3583];
  STACK[0x2E8] = v0[3582];
  STACK[0x2F0] = v0[3581];
  STACK[0x2F8] = v0[3580];
  STACK[0x300] = v0[3579];
  STACK[0x308] = v0[3578];
  STACK[0x310] = v0[3577];
  STACK[0x318] = v0[3576];
  STACK[0x320] = v0[3575];
  STACK[0x328] = v0[3574];
  STACK[0x330] = v0[3573];
  STACK[0x338] = v0[3572];
  STACK[0x340] = v0[3571];
  STACK[0x348] = v0[3569];
  STACK[0x350] = v0[3568];
  STACK[0x358] = v0[3565];
  STACK[0x360] = v0[3564];
  STACK[0x368] = v0[3562];
  STACK[0x370] = v0[3561];
  STACK[0x378] = v0[3560];
  STACK[0x380] = v0[3558];
  STACK[0x388] = v0[3557];
  STACK[0x390] = v0[3556];
  STACK[0x398] = v0[3555];
  STACK[0x3A0] = v0[3554];
  STACK[0x3A8] = v0[3553];
  STACK[0x3B0] = v0[3552];
  STACK[0x3B8] = v0[3551];
  STACK[0x3C0] = v0[3550];
  STACK[0x3C8] = v0[3549];
  STACK[0x3D0] = v0[3548];
  STACK[0x3D8] = v0[3547];
  STACK[0x3E0] = v0[3544];
  STACK[0x3E8] = v0[3543];
  STACK[0x3F0] = v0[3542];
  STACK[0x3F8] = v0[3541];
  STACK[0x400] = v0[3540];
  STACK[0x408] = v0[3539];
  STACK[0x410] = v0[3538];
  STACK[0x418] = v0[3537];
  STACK[0x420] = v0[3536];
  STACK[0x428] = v0[3535];
  STACK[0x430] = v0[3534];
  STACK[0x438] = v0[3533];
  STACK[0x440] = v0[3532];
  STACK[0x448] = v0[3531];
  STACK[0x450] = v0[3530];
  STACK[0x458] = v0[3529];
  STACK[0x460] = v0[3528];
  STACK[0x468] = v0[3527];
  STACK[0x470] = v0[3526];
  STACK[0x478] = v0[3525];
  STACK[0x480] = v0[3524];
  STACK[0x488] = v0[3523];
  STACK[0x490] = v0[3522];
  STACK[0x498] = v0[3521];
  return result;
}

uint64_t sub_104F9C()
{
  result = v0[3687];
  STACK[0x200] = v0[3614];
  STACK[0x208] = v0[3613];
  STACK[0x210] = v0[3612];
  STACK[0x218] = v0[3611];
  STACK[0x220] = v0[3610];
  STACK[0x228] = v0[3607];
  STACK[0x230] = v0[3606];
  STACK[0x238] = v0[3605];
  STACK[0x240] = v0[3604];
  STACK[0x248] = v0[3603];
  STACK[0x250] = v0[3602];
  STACK[0x258] = v0[3601];
  STACK[0x260] = v0[3600];
  STACK[0x268] = v0[3599];
  STACK[0x270] = v0[3598];
  STACK[0x278] = v0[3597];
  STACK[0x280] = v0[3596];
  STACK[0x288] = v0[3595];
  STACK[0x290] = v0[3594];
  STACK[0x298] = v0[3593];
  STACK[0x2A0] = v0[3592];
  STACK[0x2A8] = v0[3591];
  STACK[0x2B0] = v0[3590];
  STACK[0x2B8] = v0[3589];
  STACK[0x2C0] = v0[3588];
  STACK[0x2C8] = v0[3587];
  STACK[0x2D0] = v0[3586];
  STACK[0x2D8] = v0[3585];
  STACK[0x2E0] = v0[3584];
  STACK[0x2E8] = v0[3583];
  STACK[0x2F0] = v0[3582];
  STACK[0x2F8] = v0[3581];
  STACK[0x300] = v0[3580];
  STACK[0x308] = v0[3579];
  STACK[0x310] = v0[3578];
  STACK[0x318] = v0[3577];
  STACK[0x320] = v0[3576];
  STACK[0x328] = v0[3575];
  STACK[0x330] = v0[3574];
  STACK[0x338] = v0[3573];
  STACK[0x340] = v0[3572];
  STACK[0x348] = v0[3571];
  STACK[0x350] = v0[3569];
  STACK[0x358] = v0[3568];
  STACK[0x360] = v0[3565];
  STACK[0x368] = v0[3564];
  STACK[0x370] = v0[3562];
  STACK[0x378] = v0[3561];
  STACK[0x380] = v0[3560];
  STACK[0x388] = v0[3558];
  STACK[0x390] = v0[3557];
  STACK[0x398] = v0[3556];
  STACK[0x3A0] = v0[3555];
  STACK[0x3A8] = v0[3554];
  STACK[0x3B0] = v0[3553];
  STACK[0x3B8] = v0[3552];
  STACK[0x3C0] = v0[3551];
  STACK[0x3C8] = v0[3550];
  STACK[0x3D0] = v0[3549];
  STACK[0x3D8] = v0[3548];
  STACK[0x3E0] = v0[3547];
  STACK[0x3E8] = v0[3544];
  STACK[0x3F0] = v0[3543];
  STACK[0x3F8] = v0[3542];
  STACK[0x400] = v0[3541];
  STACK[0x408] = v0[3540];
  STACK[0x410] = v0[3539];
  STACK[0x418] = v0[3538];
  STACK[0x420] = v0[3537];
  STACK[0x428] = v0[3536];
  STACK[0x430] = v0[3535];
  STACK[0x438] = v0[3534];
  STACK[0x440] = v0[3533];
  STACK[0x448] = v0[3532];
  STACK[0x450] = v0[3531];
  STACK[0x458] = v0[3530];
  STACK[0x460] = v0[3529];
  STACK[0x468] = v0[3528];
  STACK[0x470] = v0[3527];
  STACK[0x478] = v0[3526];
  STACK[0x480] = v0[3525];
  STACK[0x488] = v0[3524];
  STACK[0x490] = v0[3523];
  STACK[0x498] = v0[3522];
  STACK[0x4A0] = v0[3521];
  STACK[0x4A8] = v0[3520];
  return result;
}

uint64_t sub_105454()
{
  v3 = v0[3519];
  *(v1 - 256) = v0[3520];
  *(v1 - 248) = v3;
  v4 = v0[3516];
  *(v1 - 240) = v0[3517];
  *(v1 - 232) = v4;
  v5 = v0[3514];
  *(v1 - 224) = v0[3515];
  *(v1 - 216) = v5;
  v6 = v0[3512];
  *(v1 - 208) = v0[3513];
  *(v1 - 200) = v6;
  v7 = v0[3508];
  *(v1 - 192) = v0[3509];
  *(v1 - 184) = v7;
  v8 = v0[3506];
  *(v1 - 176) = v0[3507];
  *(v1 - 168) = v8;
  v9 = v0[3504];
  *(v1 - 160) = v0[3505];
  *(v1 - 152) = v9;
  v10 = v0[3502];
  *(v1 - 144) = v0[3503];
  *(v1 - 136) = v10;
  v11 = v0[3500];
  *(v1 - 128) = v0[3501];
  *(v1 - 120) = v11;
}

_WORD *sub_1054E8(_WORD *result)
{
  *(v1 - 104) = 0;
  *(v1 - 96) = 0;
  *result = 0;
  *(v1 - 112) = result + 1;
  return result;
}

uint64_t sub_10550C()
{
  v3 = v0[3517];
  *(v1 - 256) = v0[3519];
  *(v1 - 248) = v3;
  v4 = v0[3515];
  *(v1 - 240) = v0[3516];
  *(v1 - 232) = v4;
  v5 = v0[3513];
  *(v1 - 224) = v0[3514];
  *(v1 - 216) = v5;
  v6 = v0[3509];
  *(v1 - 208) = v0[3512];
  *(v1 - 200) = v6;
  v7 = v0[3507];
  *(v1 - 192) = v0[3508];
  *(v1 - 184) = v7;
  v8 = v0[3505];
  *(v1 - 176) = v0[3506];
  *(v1 - 168) = v8;
  v9 = v0[3503];
  *(v1 - 160) = v0[3504];
  *(v1 - 152) = v9;
  v10 = v0[3501];
  *(v1 - 144) = v0[3502];
  *(v1 - 136) = v10;
  *(v1 - 128) = v0[3500];
}

_WORD *sub_105630(_WORD *result)
{
  *(v1 - 144) = 0;
  *result = 0;
  *(v1 - 104) = result + 1;
  *(v1 - 96) = 0;
  return result;
}

_WORD *sub_105654(_WORD *result)
{
  *(v1 - 208) = 0;
  *result = 0;
  *(v1 - 104) = result + 1;
  *(v1 - 96) = 0;
  return result;
}

_WORD *sub_105690(_WORD *result)
{
  *(v1 - 208) = 0;
  STACK[0x550] = 0;
  *result = 0;
  *(v1 - 96) = result + 1;
  return result;
}

uint64_t sub_1056B8()
{
  STACK[0x4B0] = v0[3519];
  STACK[0x4B8] = v0[3517];
  v3 = v0[3515];
  *(v1 - 256) = v0[3516];
  *(v1 - 248) = v3;
  v4 = v0[3513];
  *(v1 - 240) = v0[3514];
  *(v1 - 232) = v4;
  v5 = v0[3509];
  *(v1 - 224) = v0[3512];
  *(v1 - 216) = v5;
  v6 = v0[3507];
  *(v1 - 208) = v0[3508];
  *(v1 - 200) = v6;
  v7 = v0[3505];
  *(v1 - 192) = v0[3506];
  *(v1 - 184) = v7;
  v8 = v0[3503];
  *(v1 - 176) = v0[3504];
  *(v1 - 168) = v8;
  v9 = v0[3501];
  *(v1 - 160) = v0[3502];
  *(v1 - 152) = v9;
  *(v1 - 144) = v0[3500];
}

double sub_105748@<D0>(uint64_t a1@<X8>)
{
  *(v1 + 224) = a1;
  result = 0.0;
  *(v1 + 232) = 0u;
  v3 = v1 + 232;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0;
  *(v3 + 56) = -64;
  return result;
}

uint64_t sub_105768()
{
  v3 = v0[3514];
  *(v1 - 256) = v0[3515];
  *(v1 - 248) = v3;
  v4 = v0[3512];
  *(v1 - 240) = v0[3513];
  *(v1 - 232) = v4;
  v5 = v0[3508];
  *(v1 - 224) = v0[3509];
  *(v1 - 216) = v5;
  v6 = v0[3506];
  *(v1 - 208) = v0[3507];
  *(v1 - 200) = v6;
  v7 = v0[3504];
  *(v1 - 192) = v0[3505];
  *(v1 - 184) = v7;
  v8 = v0[3502];
  *(v1 - 176) = v0[3503];
  *(v1 - 168) = v8;
  v9 = v0[3500];
  *(v1 - 160) = v0[3501];
  *(v1 - 152) = v9;
}

uint64_t sub_105820()
{
  sub_2D64((v0 + v4));
  sub_2D64((v0 + v1));
  sub_2D64((v0 + v3));
  return sub_2D64((v0 + v2));
}

_WORD *sub_105858(_WORD *result)
{
  *(v1 - 208) = 0;
  *result = 0;
  *(v1 - 104) = result + 1;
  *(v1 - 96) = 0;
  return result;
}

void sub_10586C()
{
  STACK[0x4A0] = v0[3520];
  STACK[0x4A8] = v0[3519];
  STACK[0x4B0] = v0[3517];
  STACK[0x4B8] = v0[3516];
}

_WORD *sub_105890(_WORD *result)
{
  *(v1 - 160) = 0;
  *result = 0;
  *(v1 - 120) = result + 1;
  *(v1 - 112) = 0;
  return result;
}

uint64_t sub_1058F8()
{

  return swift_beginAccess();
}

void sub_105930()
{
  STACK[0x528] = v0[3711];
  STACK[0x540] = v0[3607];
  STACK[0x538] = v0[3602];
  STACK[0x530] = v0[3571];
}

uint64_t sub_105958()
{
  *&STACK[0x550] = *(v0 + v1);

  return sub_3A5A4(&STACK[0x550], v2 - 104, v2 - 96, v2 - 208);
}

uint64_t sub_10599C(__n128 a1)
{
  *&STACK[0x550] = a1;

  return sub_3A5A4(&STACK[0x550], v1 - 104, v1 - 96, v1 - 208);
}

_WORD *sub_1059F4(_WORD *result)
{
  *(v1 - 160) = 0;
  *result = 0;
  *(v1 - 120) = result + 1;
  *(v1 - 112) = 0;
  return result;
}

_WORD *sub_105A28(_WORD *result)
{
  *(v1 - 128) = 0;
  *(v1 - 120) = 0;
  *result = 0;
  *(v1 - 136) = result + 1;
  return result;
}

uint64_t sub_105A84(void *a1)
{
  sub_2D64(a1);
  sub_2D64((v1 + v3));
  return sub_2D64((v1 + v2));
}

void sub_105AAC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_105ACC(_WORD *a1)
{
  *(v2 - 136) = 0;
  *(v2 - 128) = 0;
  *a1 = 0;
  *(v2 - 144) = a1 + 1;

  return sub_1028F0(v1, v2 - 144, v2 - 136, v2 - 128);
}

void sub_105B10()
{
  v2 = v0[3607];
  *(v1 - 128) = v0[3602];
  *(v1 - 120) = v2;
  v3 = v0[3571];
  *(v1 - 144) = v0[3560];
  *(v1 - 136) = v3;
}

uint64_t sub_105B2C(__n128 a1)
{
  *&STACK[0x530] = a1;

  return sub_3A5A4(&STACK[0x530], v1 - 120, v1 - 112, v1 - 160);
}

uint64_t sub_105B70()
{

  return swift_beginAccess();
}

void sub_105B90(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_105BB0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_105BD0()
{
  v2 = *(v0 + 28856);
  *(v1 - 128) = *(v0 + 28816);
  *(v1 - 120) = v2;
}

uint64_t sub_105C10()
{

  return sub_3A5A4(&STACK[0x530], v0 - 120, v0 - 112, v0 - 160);
}

void sub_105C50()
{
  v2 = *(v0 + 28856);
  *(v1 - 136) = *(v0 + 28816);
  *(v1 - 128) = v2;
}

uint64_t sub_105C70()
{
  sub_2D64((v0 + v2));
  sub_2D64((v0 + v1));
  return 11;
}

void sub_105CB8()
{
  STACK[0x200] = v0[3617];
  STACK[0x208] = v0[3616];
  STACK[0x210] = v0[3615];
  STACK[0x218] = v0[3614];
  STACK[0x220] = v0[3613];
  STACK[0x228] = v0[3612];
  STACK[0x230] = v0[3611];
  STACK[0x238] = v0[3610];
  STACK[0x240] = v0[3607];
  STACK[0x248] = v0[3606];
  STACK[0x250] = v0[3605];
  STACK[0x258] = v0[3604];
  STACK[0x260] = v0[3603];
  STACK[0x268] = v0[3602];
  STACK[0x270] = v0[3601];
  STACK[0x278] = v0[3600];
  STACK[0x280] = v0[3599];
  STACK[0x288] = v0[3598];
  STACK[0x290] = v0[3597];
  STACK[0x298] = v0[3596];
  STACK[0x2A0] = v0[3595];
  STACK[0x2A8] = v0[3594];
  STACK[0x2B0] = v0[3593];
  STACK[0x2B8] = v0[3592];
  STACK[0x2C0] = v0[3591];
  STACK[0x2C8] = v0[3590];
  STACK[0x2D0] = v0[3589];
  STACK[0x2D8] = v0[3588];
  STACK[0x2E0] = v0[3587];
  STACK[0x2E8] = v0[3586];
  STACK[0x2F0] = v0[3585];
  STACK[0x2F8] = v0[3584];
  STACK[0x300] = v0[3583];
  STACK[0x308] = v0[3582];
  STACK[0x310] = v0[3581];
  STACK[0x318] = v0[3580];
  STACK[0x320] = v0[3579];
  STACK[0x328] = v0[3578];
  STACK[0x330] = v0[3577];
  STACK[0x338] = v0[3576];
  STACK[0x340] = v0[3575];
  STACK[0x348] = v0[3574];
  STACK[0x350] = v0[3573];
  STACK[0x358] = v0[3572];
  STACK[0x360] = v0[3571];
  STACK[0x368] = v0[3569];
  STACK[0x370] = v0[3568];
  STACK[0x378] = v0[3565];
  STACK[0x380] = v0[3564];
  STACK[0x388] = v0[3562];
  STACK[0x390] = v0[3561];
  STACK[0x398] = v0[3560];
  STACK[0x3A0] = v0[3558];
  STACK[0x3A8] = v0[3557];
  STACK[0x3B0] = v0[3556];
  STACK[0x3B8] = v0[3555];
  STACK[0x3C0] = v0[3554];
  STACK[0x3C8] = v0[3553];
  STACK[0x3D0] = v0[3552];
  STACK[0x3D8] = v0[3551];
  STACK[0x3E0] = v0[3550];
  STACK[0x3E8] = v0[3549];
  STACK[0x3F0] = v0[3548];
  STACK[0x3F8] = v0[3547];
  STACK[0x400] = v0[3544];
  STACK[0x408] = v0[3543];
  STACK[0x410] = v0[3542];
  STACK[0x418] = v0[3541];
  STACK[0x420] = v0[3540];
  STACK[0x428] = v0[3539];
  STACK[0x430] = v0[3538];
  STACK[0x438] = v0[3537];
  STACK[0x440] = v0[3536];
  STACK[0x448] = v0[3535];
  STACK[0x450] = v0[3534];
  STACK[0x458] = v0[3533];
  STACK[0x460] = v0[3532];
  STACK[0x468] = v0[3531];
  STACK[0x470] = v0[3530];
  STACK[0x478] = v0[3529];
  STACK[0x480] = v0[3528];
  STACK[0x488] = v0[3527];
  STACK[0x490] = v0[3526];
  STACK[0x498] = v0[3525];
  STACK[0x4A0] = v0[3524];
  STACK[0x4A8] = v0[3523];
  STACK[0x4B0] = v0[3522];
  STACK[0x4B8] = v0[3521];
  STACK[0x4C0] = v0[3520];
  STACK[0x4C8] = v0[3519];
  STACK[0x4D0] = v0[3517];
  STACK[0x4D8] = v0[3516];
}

uint64_t sub_106160()
{
  sub_2D20((v1 + v2), v0);

  return type metadata accessor for WellnessSnippets(0);
}

uint64_t sub_1061A4()
{

  return swift_beginAccess();
}

void sub_1061C4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_1061E4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_106204(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

BOOL sub_106220()
{

  return os_log_type_enabled(v0, v1);
}

BOOL sub_10623C()
{

  return os_log_type_enabled(v1, v0);
}

void sub_106270()
{
  v2 = v0[3750];
  v3 = v0[3607];
  *(v1 - 176) = v0[3602];
  *(v1 - 168) = v3;
  v4 = v0[3571];
  *(v1 - 192) = v2;
  *(v1 - 184) = v4;
}

void sub_1062A0()
{
  v2 = *(v0 + 28856);
  *(v1 - 160) = *(v0 + 28816);
  *(v1 - 152) = v2;
}

void *sub_1062DC()
{

  return memcpy((v1 + v0), (v1 + 20104), 0x41uLL);
}

void sub_1062FC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

void *sub_106328(void *a1)
{

  return memcpy(a1, (v1 + 20104), 0x41uLL);
}

BOOL sub_106344()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10636C()
{
  STACK[0x4C0] = v0[3516];
  STACK[0x4C8] = v0[3515];
  v3 = v0[3513];
  *(v1 - 256) = v0[3514];
  *(v1 - 248) = v3;
  v4 = v0[3509];
  *(v1 - 240) = v0[3512];
  *(v1 - 232) = v4;
  v5 = v0[3507];
  *(v1 - 224) = v0[3508];
  *(v1 - 216) = v5;
  v6 = v0[3505];
  *(v1 - 208) = v0[3506];
  *(v1 - 200) = v6;
  v7 = v0[3503];
  *(v1 - 192) = v0[3504];
  *(v1 - 184) = v7;
  v8 = v0[3501];
  *(v1 - 176) = v0[3502];
  *(v1 - 168) = v8;
  *(v1 - 160) = v0[3500];
}

void sub_1063E8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t sub_106404()
{
}

uint64_t sub_106454(uint64_t result)
{
  *(result + 32) = v1;
  *(result + 40) = v4;
  *(result + 48) = v3;
  *(result + 56) = v2;
  return result;
}

void sub_1064CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v32 = *(v31 - 104);
  *v27 = *(v31 - 96);
  v27[1] = v32;
  *(v26 + v29) = 1;
  *(v26 + *(v31 - 120)) = *(v31 - 132) & 1;
  *v30 = a25;
  v30[1] = a24;
  *v28 = a22;
  v28[1] = a21;
  *v25 = a19;
  v25[1] = a18;
}

uint64_t sub_106514()
{

  return sub_3A58C(2);
}

BOOL sub_106530()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10654C()
{
}

uint64_t sub_10658C()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1065B4@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *v10 = 0;
  v10[1] = 0;
  v13 = (v9 + *(v8 + 48));
  *(v11 - 120) = *(v8 + 60);
  *v13 = a1;
  v13[1] = v7;

  return sub_147DA8(a7);
}

void sub_106620()
{
  *(v1 - 272) = v0;
  *(v1 - 264) = v2;
  *(v1 - 256) = *(v1 - 192);
  *(v1 - 255) = *(v1 - 200);
  *(v1 - 252) = *(v1 - 197);
}

uint64_t sub_106680(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_160444(0, 0, a3);
}

uint64_t sub_10669C()
{
}

uint64_t sub_1066B8(unint64_t *a1)
{

  return sub_98C8(a1, v2, v1, &protocol conformance descriptor for PromptForDisambiguationFlowAsync<A, B>);
}

uint64_t sub_1066F0()
{

  return sub_16C1BC();
}

uint64_t sub_10674C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v19 = *(v18 - 88);
  *v16 = *(v18 - 80);
  v16[1] = v19;
  *(v17 + a11) = 0;
  *(v17 + a12) = *(v18 - 92) & 1;
  return a16;
}

uint64_t sub_106774(uint64_t a1)
{

  return sub_103BA0(a1, type metadata accessor for WellnessLoggingLogSpecificMedRejectedConfirmationResultSetParameters);
}

void sub_106798(uint64_t a1@<X8>)
{
  v3 = v1 + a1;
  *v3 = 0;
  *(v3 + 8) = v2;
}

void *sub_106810(uint64_t a1)
{
  v4 = sub_17464((v1 + v2), a1 + 16);

  return sub_78B14(v4, (v3 - 128));
}

void *sub_106850(uint64_t a1)
{
  v4 = sub_17464((v1 + v2), a1 + 16);

  return sub_78B14(v4, (v3 - 120));
}

uint64_t sub_106898@<X0>(uint64_t a1@<X8>)
{
  sub_2D64((v1 + a1));

  return sub_16C1DC();
}

double sub_1068C4()
{
  *(v0 + 224) = 8;
  result = 0.0;
  *(v0 + 232) = 0u;
  v2 = v0 + 232;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 56) = -64;
  return result;
}

uint64_t sub_106900()
{

  return sub_376FC(v0 + 20104);
}

uint64_t sub_106918()
{

  return sub_16C4EC();
}

uint64_t sub_106934()
{
  *(v1 + 224) = 6;
  *(v1 + 232) = 0u;
  v4 = v1 + 232;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 56) = -64;

  return sub_376FC(v2 + v0);
}

uint64_t sub_106968()
{

  return sub_C9294(v1 + v0, v1 + v2);
}

BOOL sub_106984()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10699C()
{

  return sub_3A5EC(0);
}

uint64_t sub_106A08()
{

  return sub_3A5EC(0);
}

double sub_106A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v23[1] = a1;
  v23[2] = a2;
  v23[3] = 0;
  v23[4] = 0;
  v23[5] = *(v26 - 128);
  v23[6] = a23;
  *v24 = 0;
  *(v24 + 8) = v25;

  return result;
}

uint64_t sub_106A50(uint64_t a1)
{

  return String.init(format:_:)(1714433573, 0xE400000000000000, a1);
}

uint64_t sub_106A70()
{

  return sub_3A5EC(0);
}

uint64_t sub_106A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1028F0(v4, a2, a3, a4);
}

void *sub_106AA0()
{

  return memcpy((v1 + v0), (v2 + 224), 0x41uLL);
}

uint64_t sub_106AD4()
{

  return sub_C9294(v1 + v0, v1 + v2);
}

uint64_t sub_106B28()
{
}

void *sub_106BDC(void *a1)
{

  return memcpy(a1, (v1 + 224), 0x41uLL);
}

void *sub_106C24(uint64_t a1)
{
  v4 = sub_17464((v1 + v2), a1 + 16);

  return sub_78B14(v4, (v3 - 120));
}

uint64_t sub_106C68()
{

  return sub_3A5EC(0);
}

uint64_t sub_106C80()
{

  return sub_C9294(v2 + 24, v0 + v1);
}

id sub_106D40(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

id sub_106D58(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_106D70()
{

  return sub_1039B4(v0, v1);
}

uint64_t sub_106D88()
{

  return sub_2D64((v0 + v1));
}

uint64_t sub_106DA0(__n128 a1)
{
  *(v1 - 128) = a1;

  return sub_3A5A4((v1 - 128), v1 - 152, v1 - 144, v1 - 136);
}

id sub_106DC4(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_106DDC(uint64_t a1, uint64_t a2)
{

  return sub_B9BF4(v2, a2, 0);
}

uint64_t sub_106DF8()
{

  return sub_C9294(v0 + 24, v1 + v2);
}

uint64_t sub_106E10()
{

  return sub_16C4EC();
}

uint64_t sub_106E2C()
{

  return sub_16C4CC();
}

uint64_t sub_106E50()
{
}

uint64_t sub_106E6C()
{
}

uint64_t sub_106E88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return sub_1E634(a16, v16 + a13, a3, a4);
}

uint64_t sub_106EA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_1E634(v13, v12 + a12, a3, a4);
}

uint64_t sub_106EC0()
{

  return sub_16C11C();
}

void *sub_106EDC()
{

  return memcpy((v1 - 176), (v0 + 224), 0x41uLL);
}

uint64_t sub_106EF8()
{
}

uint64_t sub_106F14()
{

  return sub_C9294(v0 + v1, v0 + v2);
}

uint64_t sub_106F30(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_106FB8(__int128 *a1)
{
  sub_17464(a1, v2 + v1);

  return sub_16C1DC();
}

void sub_107070()
{
  v2 = *(v1 - 152);
  v0[1] = *(v1 - 144);
  v0[2] = v2;
  v3 = *(v1 - 176);
  v0[3] = *(v1 - 168);
  v0[4] = v3;
}

void sub_1070F0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

double sub_107110@<D0>(char a1@<W8>)
{
  *v1 = v2;
  *(v1 + 8) = a1 & 1;

  return result;
}

uint64_t sub_107130()
{
  v3 = *(v1 + 27984) + 64;

  return sub_8284(v3, v1 + v0);
}

uint64_t sub_107150()
{

  return sub_16DBEC();
}

void sub_107170(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_107188@<X0>(uint64_t a1@<X8>)
{

  return sub_10374C(v2, v1 + a1);
}

uint64_t sub_1071A0(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 28528);

  return sub_214C(a1, a2, 1, v4);
}

uint64_t sub_1071B8()
{
}

uint64_t sub_1071D0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_16C4EC();
}

uint64_t sub_1071E8(uint64_t a1)
{

  return sub_8748(a1, v2, v1);
}

uint64_t sub_107288()
{
  v1 = sub_10E3C4();
  sub_4348(v1);
  sub_433C();
  __chkstk_darwin(v2);
  sub_10E298();
  sub_2440(&qword_1C6078, &unk_172520);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_16F530;
  sub_10DF00();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_77590();
  sub_7B09C(v7, v8, v9, &unk_16F510);
  v10 = sub_16D5CC();
  if (sub_369C(v0, 1, v10) == 1)
  {
    sub_5CFC8(v0, &qword_1C5800, &unk_16F510);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v10;
    sub_9910((v3 + 48));
    sub_5DE54();
    (*(v11 + 32))();
  }

  return v3;
}

void sub_1073C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v24;
  a20 = v25;
  v26 = sub_2440(&qword_1C5800, &unk_16F510);
  v27 = sub_4348(v26);
  __chkstk_darwin(v27);
  sub_887C();
  sub_77310();
  __chkstk_darwin(v28);
  sub_76B1C();
  __chkstk_darwin(v29);
  sub_5E160();
  __chkstk_darwin(v30);
  v32 = &a9 - v31;
  sub_2440(&qword_1C6078, &unk_172520);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1731B0;
  sub_38B4C();
  *(v34 + 32) = 0xD000000000000016;
  *(v34 + 40) = v35;
  sub_76E28();
  sub_7B09C(v36, v37, v38, &unk_16F510);
  v39 = sub_16D5CC();
  sub_76A04(v32);
  if (v40)
  {
    sub_5CFC8(v32, &qword_1C5800, &unk_16F510);
    *(v33 + 48) = 0u;
    *(v33 + 64) = 0u;
  }

  else
  {
    *(v33 + 72) = v39;
    sub_9910((v33 + 48));
    sub_76AEC();
    sub_76E28();
    v41();
  }

  sub_38B4C();
  *(v33 + 80) = 0xD000000000000016;
  *(v33 + 88) = v42;
  v43 = type metadata accessor for WellnessLoggingBloodPressureParameters(0);
  sub_10E2F0(&qword_1C5800, &unk_16F510, v43[5]);
  sub_76A04(v23);
  if (v40)
  {
    sub_5CFC8(v23, &qword_1C5800, &unk_16F510);
    *(v33 + 96) = 0u;
    *(v33 + 112) = 0u;
  }

  else
  {
    *(v33 + 120) = v39;
    sub_9910((v33 + 96));
    sub_76AEC();
    sub_10E31C();
    v44();
  }

  sub_10DF00();
  *(v33 + 128) = v45;
  *(v33 + 136) = v46;
  sub_7B09C(v21 + v43[6], v22, &qword_1C5800, &unk_16F510);
  sub_76A04(v22);
  if (v40)
  {
    sub_5CFC8(v22, &qword_1C5800, &unk_16F510);
    *(v33 + 144) = 0u;
    *(v33 + 160) = 0u;
  }

  else
  {
    *(v33 + 168) = v39;
    sub_9910((v33 + 144));
    sub_76AEC();
    sub_77394();
    v47();
  }

  *(v33 + 176) = 0x696C6F7473616964;
  *(v33 + 184) = 0xE900000000000063;
  sub_76D40();
  if (v49)
  {
    v50 = 0;
    *(v33 + 200) = 0;
    *(v33 + 208) = 0;
    v51 = 0;
  }

  else
  {
    v51 = *v48;
    v50 = &type metadata for Double;
  }

  *(v33 + 192) = v51;
  *(v33 + 216) = v50;
  *(v33 + 224) = 0x6144646567676F6CLL;
  *(v33 + 232) = 0xEA00000000006574;
  v52 = *(v21 + v43[8]);
  if (v52)
  {
    v53 = sub_16D4EC();
    v54 = v52;
  }

  else
  {
    v53 = sub_76C6C();
    *(v33 + 248) = 0;
    *(v33 + 256) = 0;
  }

  *(v33 + 240) = v54;
  *(v33 + 264) = v53;
  *(v33 + 272) = 0x63696C6F74737973;
  *(v33 + 280) = 0xE800000000000000;
  sub_76D40();
  if (v56)
  {
    v57 = 0;
    *(v33 + 296) = 0;
    *(v33 + 304) = 0;
    v58 = 0;
  }

  else
  {
    v58 = *v55;
    v57 = &type metadata for Double;
  }

  *(v33 + 288) = v58;
  *(v33 + 312) = v57;
  *(v33 + 320) = 1953066613;
  *(v33 + 328) = 0xE400000000000000;
  sub_7B09C(v21 + v43[10], v20, &qword_1C5800, &unk_16F510);
  sub_76A04(v20);
  if (v40)
  {

    sub_5CFC8(v20, &qword_1C5800, &unk_16F510);
    *(v33 + 336) = 0u;
    *(v33 + 352) = 0u;
  }

  else
  {
    *(v33 + 360) = v39;
    sub_9910((v33 + 336));
    sub_76AEC();
    sub_77590();
    v59();
  }

  sub_45924();
}

void sub_107810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v28 = sub_2440(&qword_1C5800, &unk_16F510);
  v29 = sub_4348(v28);
  __chkstk_darwin(v29);
  sub_887C();
  sub_A9074();
  __chkstk_darwin(v30);
  sub_76B1C();
  __chkstk_darwin(v31);
  sub_5E160();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  sub_2440(&qword_1C6078, &unk_172520);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1731B0;
  sub_38B4C();
  sub_10E2CC(v36, v37);
  v38 = sub_16D5CC();
  sub_76A04(v34);
  if (v39)
  {
    sub_5CFC8(v34, &qword_1C5800, &unk_16F510);
    *(v35 + 48) = 0u;
    *(v35 + 64) = 0u;
  }

  else
  {
    *(v35 + 72) = v38;
    sub_9910((v35 + 48));
    sub_76AEC();
    (*(v40 + 32))();
  }

  sub_38B4C();
  *(v35 + 80) = 0xD000000000000016;
  *(v35 + 88) = v41;
  v42 = v27(0);
  sub_10E2F0(&qword_1C5800, &unk_16F510, v42[5]);
  sub_76A04(v23);
  if (v39)
  {
    sub_5CFC8(v23, &qword_1C5800, &unk_16F510);
    *(v35 + 96) = 0u;
    *(v35 + 112) = 0u;
  }

  else
  {
    *(v35 + 120) = v38;
    sub_9910((v35 + 96));
    sub_76AEC();
    sub_10E31C();
    v43();
  }

  sub_10DF00();
  *(v35 + 128) = v44;
  *(v35 + 136) = v45;
  sub_7B09C(v20 + v42[6], v22, &qword_1C5800, &unk_16F510);
  sub_76A04(v22);
  if (v39)
  {
    sub_5CFC8(v22, &qword_1C5800, &unk_16F510);
    *(v35 + 144) = 0u;
    *(v35 + 160) = 0u;
  }

  else
  {
    *(v35 + 168) = v38;
    sub_9910((v35 + 144));
    sub_76AEC();
    sub_77394();
    v46();
  }

  sub_10E244();
  sub_10E2A8(v47);
  if (v22)
  {
    v48 = sub_16D4EC();
    v49 = v22;
  }

  else
  {
    v48 = sub_76C6C();
    *(v35 + 200) = 0;
    *(v35 + 208) = 0;
  }

  *(v35 + 192) = v49;
  *(v35 + 216) = v48;
  strcpy((v35 + 224), "lowConfidence");
  *(v35 + 238) = -4864;
  *(v35 + 240) = *(v20 + v42[8]);
  *(v35 + 264) = &type metadata for Bool;
  *(v35 + 272) = 1953066613;
  *(v35 + 280) = 0xE400000000000000;
  sub_7B09C(v20 + v42[9], v21, &qword_1C5800, &unk_16F510);
  sub_76A04(v21);
  if (v39)
  {

    sub_5CFC8(v21, &qword_1C5800, &unk_16F510);
    *(v35 + 288) = 0u;
    *(v35 + 304) = 0u;
  }

  else
  {
    *(v35 + 312) = v38;
    sub_9910((v35 + 288));
    sub_76AEC();
    sub_775E4();
    v50();
  }

  sub_10E308();
  *(v35 + 320) = v51;
  *(v35 + 328) = v52;
  sub_76D40();
  if (v54)
  {
    v55 = 0;
    *(v35 + 344) = 0;
    *(v35 + 352) = 0;
    v56 = 0;
  }

  else
  {
    v56 = *v53;
    v55 = &type metadata for Double;
  }

  *(v35 + 336) = v56;
  *(v35 + 360) = v55;
  sub_45924();
}

void sub_107C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v24;
  a20 = v25;
  v26 = sub_2440(&qword_1C5800, &unk_16F510);
  v27 = sub_4348(v26);
  __chkstk_darwin(v27);
  sub_887C();
  sub_77310();
  __chkstk_darwin(v28);
  sub_10E258();
  __chkstk_darwin(v29);
  sub_5E160();
  __chkstk_darwin(v30);
  v32 = &a9 - v31;
  sub_2440(&qword_1C6078, &unk_172520);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1731E0;
  sub_38B4C();
  *(v34 + 32) = 0xD000000000000016;
  *(v34 + 40) = v35;
  sub_77394();
  sub_7B09C(v36, v37, v38, &unk_16F510);
  v39 = sub_16D5CC();
  sub_76A04(v32);
  if (v40)
  {
    sub_5CFC8(v32, &qword_1C5800, &unk_16F510);
    *(v33 + 48) = 0u;
    *(v33 + 64) = 0u;
  }

  else
  {
    *(v33 + 72) = v39;
    sub_9910((v33 + 48));
    sub_76AEC();
    sub_77394();
    v41();
  }

  sub_38B4C();
  *(v33 + 80) = 0xD000000000000016;
  *(v33 + 88) = v42;
  v43 = type metadata accessor for WellnessLoggingHeightParameters(0);
  sub_10E2F0(&qword_1C5800, &unk_16F510, v43[5]);
  sub_76A04(v23);
  if (v40)
  {
    sub_5CFC8(v23, &qword_1C5800, &unk_16F510);
    *(v33 + 96) = 0u;
    *(v33 + 112) = 0u;
  }

  else
  {
    *(v33 + 120) = v39;
    sub_9910((v33 + 96));
    sub_76AEC();
    sub_10E31C();
    v44();
  }

  sub_10DF00();
  *(v33 + 128) = v45;
  *(v33 + 136) = v46;
  sub_7B09C(v21 + v43[6], v22, &qword_1C5800, &unk_16F510);
  sub_76A04(v22);
  if (v40)
  {
    sub_5CFC8(v22, &qword_1C5800, &unk_16F510);
    *(v33 + 144) = 0u;
    *(v33 + 160) = 0u;
  }

  else
  {
    *(v33 + 168) = v39;
    sub_9910((v33 + 144));
    sub_76AEC();
    sub_76E28();
    v47();
  }

  *(v33 + 176) = 0x746867696568;
  *(v33 + 184) = 0xE600000000000000;
  v48 = *(v21 + v43[7]);
  if (v48)
  {
    sub_16D2FC();
    v49 = v48;
  }

  else
  {
    sub_76C6C();
    *(v33 + 200) = 0;
    *(v33 + 208) = 0;
  }

  *(v33 + 192) = v49;
  sub_10E244();
  *(v33 + 216) = v50;
  *(v33 + 224) = v51;
  *(v33 + 232) = 0xEA00000000006574;
  v52 = *(v21 + v43[8]);
  if (v52)
  {
    v53 = sub_16D4EC();
    v54 = v52;
  }

  else
  {
    v53 = sub_76C6C();
    *(v33 + 248) = 0;
    *(v33 + 256) = 0;
  }

  *(v33 + 240) = v54;
  *(v33 + 264) = v53;
  *(v33 + 272) = 1953066613;
  *(v33 + 280) = 0xE400000000000000;
  sub_7B09C(v21 + v43[9], v20, &qword_1C5800, &unk_16F510);
  sub_76A04(v20);
  if (v40)
  {

    sub_5CFC8(v20, &qword_1C5800, &unk_16F510);
    *(v33 + 288) = 0u;
    *(v33 + 304) = 0u;
  }

  else
  {
    *(v33 + 312) = v39;
    sub_9910((v33 + 288));
    sub_76AEC();
    sub_77590();
    v55();
  }

  sub_45924();
}

uint64_t sub_108000()
{
  v1 = sub_10E3C4();
  sub_4348(v1);
  sub_433C();
  __chkstk_darwin(v2);
  v4 = &v17 - v3;
  sub_2440(&qword_1C6078, &unk_172520);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1712E0;
  sub_38B4C();
  *(v6 + 32) = 0xD000000000000010;
  *(v6 + 40) = v7;
  sub_775E4();
  sub_7B09C(v8, v9, v10, &unk_16F510);
  v11 = sub_16D5CC();
  sub_76A04(v4);
  if (v12)
  {
    sub_5CFC8(v4, &qword_1C5800, &unk_16F510);
    *(v5 + 48) = 0u;
    *(v5 + 64) = 0u;
  }

  else
  {
    *(v5 + 72) = v11;
    sub_9910((v5 + 48));
    sub_76AEC();
    sub_775E4();
    v13();
  }

  sub_38B4C();
  *(v5 + 80) = 0xD000000000000012;
  *(v5 + 88) = v14;
  v15 = *(v0 + *(type metadata accessor for WellnessLoggingLogMedAsScheduledConfirmationParameters(0) + 20));
  *(v5 + 120) = &type metadata for Bool;
  *(v5 + 96) = v15;
  return v5;
}

void sub_1081A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = sub_2440(&qword_1C5800, &unk_16F510);
  v28 = sub_4348(v27);
  __chkstk_darwin(v28);
  sub_887C();
  sub_A9074();
  __chkstk_darwin(v29);
  sub_10E258();
  __chkstk_darwin(v30);
  v32 = &a9 - v31;
  sub_2440(&qword_1C6078, &unk_172520);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_176950;
  sub_38B4C();
  *(v34 + 32) = 0xD000000000000020;
  *(v34 + 40) = v35;
  *(v34 + 48) = *v20;
  *(v34 + 72) = &type metadata for Bool;
  *(v34 + 80) = 0x6E69577473726966;
  *(v34 + 88) = 0xEF657A6953776F64;
  if (*(v20 + 16))
  {
    v36 = 0;
    *(v33 + 104) = 0;
    *(v33 + 112) = 0;
    v37 = 0;
  }

  else
  {
    v37 = *(v20 + 8);
    v36 = &type metadata for Double;
  }

  *(v33 + 96) = v37;
  *(v33 + 120) = v36;
  strcpy((v33 + 128), "isConclusion");
  *(v33 + 141) = 0;
  *(v33 + 142) = -5120;
  *(v33 + 144) = *(v20 + 17);
  *(v33 + 168) = &type metadata for Bool;
  strcpy((v33 + 176), "isFirstWindow");
  *(v33 + 190) = -4864;
  *(v33 + 192) = *(v20 + 18);
  *(v33 + 216) = &type metadata for Bool;
  strcpy((v33 + 224), "isLastWindow");
  *(v33 + 237) = 0;
  *(v33 + 238) = -5120;
  *(v33 + 240) = *(v20 + 19);
  *(v33 + 264) = &type metadata for Bool;
  *(v33 + 272) = 0xD000000000000016;
  *(v33 + 280) = 0x800000000017E140;
  *(v33 + 288) = *(v20 + 20);
  *(v33 + 312) = &type metadata for Bool;
  *(v33 + 320) = 0x736D657469;
  *(v33 + 328) = 0xE500000000000000;
  v38 = *(v20 + 24);
  sub_2440(&qword_1C82F8, &unk_173BF0);
  *(v33 + 336) = v38;
  sub_38B4C();
  *(v33 + 360) = v39;
  *(v33 + 368) = 0xD000000000000010;
  *(v33 + 376) = v40;
  v41 = v26(0);
  sub_10E2F0(&qword_1C5800, &unk_16F510, v41[11]);
  v42 = sub_16D5CC();
  sub_4B544(v32);
  if (v43)
  {

    sub_5CFC8(v32, &qword_1C5800, &unk_16F510);
    *(v33 + 384) = 0u;
    *(v33 + 400) = 0u;
  }

  else
  {
    *(v33 + 408) = v42;
    sub_9910((v33 + 384));
    sub_5DE54();
    (*(v44 + 32))();
  }

  *(v33 + 416) = 0x656D695464656DLL;
  *(v33 + 424) = 0xE700000000000000;
  sub_7B09C(v20 + v41[12], v22, &qword_1C5800, &unk_16F510);
  sub_4B544(v22);
  if (v43)
  {
    sub_5CFC8(v22, &qword_1C5800, &unk_16F510);
    *(v33 + 432) = 0u;
    *(v33 + 448) = 0u;
  }

  else
  {
    *(v33 + 456) = v42;
    sub_9910((v33 + 432));
    sub_5DE54();
    (*(v45 + 32))();
  }

  sub_38B4C();
  *(v33 + 464) = 0xD000000000000013;
  *(v33 + 472) = v46;
  sub_76D40();
  if (v48)
  {
    v49 = 0;
    *(v33 + 488) = 0;
    *(v33 + 496) = 0;
    v50 = 0;
  }

  else
  {
    v50 = *v47;
    v49 = &type metadata for Double;
  }

  *(v33 + 480) = v50;
  *(v33 + 504) = v49;
  *(v33 + 512) = 0xD000000000000011;
  *(v33 + 520) = 0x800000000017FA40;
  sub_76D40();
  if (v52)
  {
    v53 = 0;
    *(v33 + 536) = 0u;
    v54 = 0;
  }

  else
  {
    v54 = *v51;
    v53 = &type metadata for Double;
  }

  *(v33 + 528) = v54;
  *(v33 + 552) = v53;
  sub_38B4C();
  *(v33 + 560) = 0xD000000000000018;
  *(v33 + 568) = v55;
  sub_7B09C(v20 + v41[15], v21, &qword_1C5800, &unk_16F510);
  sub_4B544(v21);
  if (v43)
  {
    sub_5CFC8(v21, &qword_1C5800, &unk_16F510);
    *(v33 + 576) = 0u;
    *(v33 + 592) = 0u;
  }

  else
  {
    *(v33 + 600) = v42;
    sub_9910((v33 + 576));
    sub_5DE54();
    (*(v56 + 32))();
  }

  *(v33 + 608) = 0x6574496C61746F74;
  *(v33 + 616) = 0xEA0000000000736DLL;
  v57 = (v20 + v41[16]);
  if (v57[1])
  {
    v58 = 0;
    *(v33 + 632) = 0u;
    v59 = 0;
  }

  else
  {
    v59 = *v57;
    v58 = &type metadata for Double;
  }

  *(v33 + 624) = v59;
  *(v33 + 648) = v58;
  *(v33 + 656) = 0x6953776F646E6977;
  *(v33 + 664) = 0xEA0000000000657ALL;
  sub_76D40();
  if (v61)
  {
    v62 = 0;
    *(v33 + 680) = 0u;
    v63 = 0;
  }

  else
  {
    v63 = *v60;
    v62 = &type metadata for Double;
  }

  *(v33 + 672) = v63;
  *(v33 + 696) = v62;
  sub_45924();
}

uint64_t sub_108718()
{
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  v4 = sub_4348(v3);
  __chkstk_darwin(v4);
  sub_887C();
  sub_77310();
  __chkstk_darwin(v5);
  sub_10E258();
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  sub_2440(&qword_1C6078, &unk_172520);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1731E0;
  sub_38B4C();
  *(v10 + 32) = 0xD000000000000016;
  *(v10 + 40) = v11;
  sub_77394();
  sub_7B09C(v12, v13, v14, &unk_16F510);
  v15 = sub_16D5CC();
  sub_76A04(v8);
  if (v16)
  {
    sub_5CFC8(v8, &qword_1C5800, &unk_16F510);
    *(v9 + 48) = 0u;
    *(v9 + 64) = 0u;
  }

  else
  {
    *(v9 + 72) = v15;
    sub_9910((v9 + 48));
    sub_76AEC();
    sub_77394();
    v17();
  }

  sub_10DF00();
  *(v9 + 80) = v18;
  *(v9 + 88) = v19;
  v20 = type metadata accessor for WellnessLoggingMenstruationParameters(0);
  sub_7B09C(v1 + v20[5], v2, &qword_1C5800, &unk_16F510);
  sub_76A04(v2);
  if (v16)
  {
    sub_5CFC8(v2, &qword_1C5800, &unk_16F510);
    *(v9 + 96) = 0u;
    *(v9 + 112) = 0u;
  }

  else
  {
    *(v9 + 120) = v15;
    sub_9910((v9 + 96));
    sub_76AEC();
    sub_76E28();
    v21();
  }

  *(v9 + 128) = 1702125924;
  *(v9 + 136) = 0xE400000000000000;
  v22 = *(v1 + v20[6]);
  if (v22)
  {
    sub_16D4EC();
    v23 = v22;
  }

  else
  {
    sub_76C6C();
    *(v9 + 152) = 0;
    *(v9 + 160) = 0;
  }

  *(v9 + 144) = v23;
  sub_38B4C();
  *(v9 + 168) = v24;
  *(v9 + 176) = 0xD000000000000017;
  *(v9 + 184) = v25;
  *(v9 + 192) = *(v1 + v20[7]);
  *(v9 + 216) = &type metadata for Bool;
  *(v9 + 224) = 2003790950;
  *(v9 + 232) = 0xE400000000000000;
  sub_76D40();
  if (v27)
  {
    v28 = 0;
    *(v9 + 248) = 0;
    *(v9 + 256) = 0;
    v29 = 0;
  }

  else
  {
    v29 = *v26;
    v28 = &type metadata for Double;
  }

  *(v9 + 240) = v29;
  *(v9 + 264) = v28;
  *(v9 + 272) = 0xD000000000000016;
  *(v9 + 280) = 0x800000000017F8D0;
  sub_7B09C(v1 + v20[9], v0, &qword_1C5800, &unk_16F510);
  sub_76A04(v0);
  if (v16)
  {

    sub_5CFC8(v0, &qword_1C5800, &unk_16F510);
    *(v9 + 288) = 0u;
    *(v9 + 304) = 0u;
  }

  else
  {
    *(v9 + 312) = v15;
    sub_9910((v9 + 288));
    sub_76AEC();
    sub_77590();
    v30();
  }

  return v9;
}

uint64_t sub_108A70()
{
  v2 = sub_10E3C4();
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  sub_10E298();
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_16F2F0;
  sub_38B4C();
  v7 = sub_10E350(v5, v6);
  *(v7 + 48) = v8;
  sub_10E33C();
  *(v9 + 72) = v11;
  *(v9 + 80) = v10;
  sub_10E328();
  *(v12 + 88) = v13;
  *(v12 + 96) = *(v1 + 1);
  sub_10E37C();
  *(v14 + 120) = v16;
  *(v14 + 128) = v15;
  sub_10E390();
  *(v17 + 136) = v18;
  type metadata accessor for WellnessLoggingPhoneMedicationQueryingErrorParameters(0);
  sub_77590();
  sub_7B09C(v19, v20, v21, &unk_16F510);
  v22 = sub_16D5CC();
  if (sub_369C(v0, 1, v22) == 1)
  {
    sub_5CFC8(v0, &qword_1C5800, &unk_16F510);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v22;
    sub_9910((v4 + 144));
    sub_5DE54();
    (*(v23 + 32))();
  }

  return v4;
}

uint64_t sub_108C08()
{
  v2 = sub_10E3C4();
  sub_4348(v2);
  sub_433C();
  __chkstk_darwin(v3);
  sub_10E298();
  sub_2440(&qword_1C6078, &unk_172520);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1731B0;
  sub_38B4C();
  v7 = sub_10E350(v5, v6);
  *(v7 + 48) = v8;
  sub_38B4C();
  *(v9 + 72) = v11;
  *(v9 + 80) = v10;
  *(v9 + 88) = v12;
  *(v9 + 96) = v1[1];
  sub_38B4C();
  *(v14 + 120) = v15;
  *(v14 + 128) = v13 + 9;
  *(v14 + 136) = v16;
  *(v14 + 144) = v1[2];
  sub_10E33C();
  *(v17 + 168) = v19;
  *(v17 + 176) = v18;
  sub_10E328();
  *(v20 + 184) = v21;
  *(v20 + 192) = v1[3];
  *(v20 + 216) = v22;
  strcpy((v20 + 224), "medDoesntExist");
  *(v20 + 239) = -18;
  *(v20 + 240) = v1[4];
  sub_38B4C();
  *(v24 + 264) = v25;
  *(v24 + 272) = v23 + 3;
  *(v24 + 280) = v26;
  *(v24 + 288) = v1[5];
  sub_10E37C();
  *(v27 + 312) = v29;
  *(v27 + 320) = v28;
  sub_10E390();
  *(v30 + 328) = v31;
  type metadata accessor for WellnessLoggingWatchMedicationQueryingErrorParameters(0);
  sub_77590();
  sub_7B09C(v32, v33, v34, &unk_16F510);
  v35 = sub_16D5CC();
  if (sub_369C(v0, 1, v35) == 1)
  {
    sub_5CFC8(v0, &qword_1C5800, &unk_16F510);
    *(v4 + 336) = 0u;
    *(v4 + 352) = 0u;
  }

  else
  {
    *(v4 + 360) = v35;
    sub_9910((v4 + 336));
    sub_5DE54();
    (*(v36 + 32))();
  }

  return v4;
}

void sub_108E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v28 = sub_2440(&qword_1C5800, &unk_16F510);
  v29 = sub_4348(v28);
  __chkstk_darwin(v29);
  sub_887C();
  sub_A9074();
  __chkstk_darwin(v30);
  sub_76B1C();
  __chkstk_darwin(v31);
  sub_5E160();
  __chkstk_darwin(v32);
  v34 = &a9 - v33;
  sub_2440(&qword_1C6078, &unk_172520);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1731E0;
  sub_38B4C();
  sub_10E2CC(v36, v37);
  v38 = sub_16D5CC();
  sub_76A04(v34);
  if (v39)
  {
    sub_5CFC8(v34, &qword_1C5800, &unk_16F510);
    *(v35 + 48) = 0u;
    *(v35 + 64) = 0u;
  }

  else
  {
    *(v35 + 72) = v38;
    sub_9910((v35 + 48));
    sub_76AEC();
    (*(v40 + 32))();
  }

  sub_38B4C();
  *(v35 + 80) = 0xD000000000000016;
  *(v35 + 88) = v41;
  v42 = v27(0);
  sub_10E2F0(&qword_1C5800, &unk_16F510, v42[5]);
  sub_76A04(v23);
  if (v39)
  {
    sub_5CFC8(v23, &qword_1C5800, &unk_16F510);
    *(v35 + 96) = 0u;
    *(v35 + 112) = 0u;
  }

  else
  {
    *(v35 + 120) = v38;
    sub_9910((v35 + 96));
    sub_76AEC();
    sub_10E31C();
    v43();
  }

  sub_10DF00();
  *(v35 + 128) = v44;
  *(v35 + 136) = v45;
  sub_7B09C(v20 + v42[6], v22, &qword_1C5800, &unk_16F510);
  sub_76A04(v22);
  if (v39)
  {
    sub_5CFC8(v22, &qword_1C5800, &unk_16F510);
    *(v35 + 144) = 0u;
    *(v35 + 160) = 0u;
  }

  else
  {
    *(v35 + 168) = v38;
    sub_9910((v35 + 144));
    sub_76AEC();
    sub_77394();
    v46();
  }

  sub_10E244();
  sub_10E2A8(v47);
  if (v22)
  {
    v48 = sub_16D4EC();
    v49 = v22;
  }

  else
  {
    v48 = sub_76C6C();
    *(v35 + 200) = 0;
    *(v35 + 208) = 0;
  }

  *(v35 + 192) = v49;
  *(v35 + 216) = v48;
  *(v35 + 224) = 1953066613;
  *(v35 + 232) = 0xE400000000000000;
  sub_7B09C(v20 + v42[8], v21, &qword_1C5800, &unk_16F510);
  sub_76A04(v21);
  if (v39)
  {

    sub_5CFC8(v21, &qword_1C5800, &unk_16F510);
    *(v35 + 240) = 0u;
    *(v35 + 256) = 0u;
  }

  else
  {
    *(v35 + 264) = v38;
    sub_9910((v35 + 240));
    sub_76AEC();
    sub_775E4();
    v50();
  }

  sub_10E308();
  *(v35 + 272) = v51;
  *(v35 + 280) = v52;
  sub_76D40();
  if (v54)
  {
    v55 = 0;
    *(v35 + 296) = 0;
    *(v35 + 304) = 0;
    v56 = 0;
  }

  else
  {
    v56 = *v53;
    v55 = &type metadata for Double;
  }

  *(v35 + 288) = v56;
  *(v35 + 312) = v55;
  sub_45924();
}

uint64_t sub_1091CC()
{
  sub_8A88();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v3);
  v0[4] = sub_8BC0();
  v4 = type metadata accessor for WellnessLoggingAskForValueParameters(0);
  sub_4348(v4);
  v0[5] = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_109270()
{
  sub_C9EC();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v4 = sub_16D5CC();
  sub_10DF8C(v2);
  sub_208C0(*(v3 + 16));
  sub_16E23C();

  sub_214C(v1, 0, 1, v4);
  sub_8640(v1, v2);
  v5 = sub_107288();
  sub_10E370(v5);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v12 = v6;
  v7 = swift_task_alloc();
  v8 = sub_10E364(v7);
  *v8 = v9;
  sub_10DFA8(v8);
  v10 = sub_10DFDC(27);

  return v12(v10);
}

uint64_t sub_10937C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_10949C()
{
  sub_386A8();
  sub_10DF18();

  sub_5D948();
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_109520()
{
  sub_386A8();
  sub_10DF18();

  sub_C9BC();

  return v0();
}

uint64_t sub_1095A0()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessLoggingAskForValueParameters(v3);
  sub_4348(v4);
  *(v0 + 40) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_109614()
{
  sub_386A8();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  sub_16D5CC();
  sub_8AB4();
  sub_214C(v3, v4, v5, v6);
  v2(v1);
  sub_76E1C();
  v7 = sub_107288();
  sub_10E370(v7);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v8 = swift_task_alloc();
  v9 = sub_10E364(v8);
  *v9 = v10;
  sub_769B4(v9);
  v11 = sub_76C50(27);

  return v12(v11);
}

uint64_t sub_1096EC()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_10980C()
{
  sub_8A88();
  sub_10DF18();

  sub_5D948();
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_109874()
{
  sub_8A88();
  sub_10DF18();

  sub_C9BC();

  return v0();
}

uint64_t sub_1098D8()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessLoggingBloodPressureParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_109A44()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_109B64()
{
  sub_8A88();
  sub_10E114();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_109BC0()
{
  sub_8A88();
  sub_10E114();

  sub_76ADC();

  return v0();
}

uint64_t sub_109C1C()
{
  sub_8A88();
  v4 = sub_10DF78(v1, v2, v3);
  v5 = type metadata accessor for WellnessLoggingDistanceCyclingParameters(v4);
  sub_76ACC(v5);
  *(v0 + 48) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_109D60()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_109E80()
{
  sub_8A88();
  sub_10E140();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_109EDC()
{
  sub_8A88();
  sub_10E140();

  sub_76ADC();

  return v0();
}

uint64_t sub_109F38()
{
  sub_8A88();
  v4 = sub_10DF78(v1, v2, v3);
  v5 = type metadata accessor for WellnessLoggingDistanceWalkingRunningParameters(v4);
  sub_76ACC(v5);
  *(v0 + 48) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_10A07C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_10A19C()
{
  sub_8A88();
  sub_10E0E8();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10A1F8()
{
  sub_8A88();
  sub_10E0E8();

  sub_76ADC();

  return v0();
}

uint64_t sub_10A254()
{
  sub_8A88();
  v4 = sub_10DF78(v1, v2, v3);
  v5 = type metadata accessor for WellnessLoggingDistanceWheelchairParameters(v4);
  sub_76ACC(v5);
  *(v0 + 48) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_10A398()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_10A4B8()
{
  sub_8A88();
  sub_10E0BC();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10A514()
{
  sub_8A88();
  sub_10E0BC();

  sub_76ADC();

  return v0();
}

uint64_t sub_10A570()
{
  sub_8A88();
  v4 = sub_10DF78(v1, v2, v3);
  v5 = type metadata accessor for WellnessLoggingFlightsClimbedParameters(v4);
  sub_76ACC(v5);
  *(v0 + 48) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_10A6B4()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_10A7D4()
{
  sub_8A88();
  sub_10E090();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10A830()
{
  sub_8A88();
  sub_10E090();

  sub_76ADC();

  return v0();
}

uint64_t sub_10A88C()
{
  sub_8A88();
  *(v0 + 80) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  v4 = type metadata accessor for WellnessLoggingGenericDatatypeParameters(0);
  *(v0 + 32) = v4;
  sub_4348(v4);
  *(v0 + 40) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_10AA24()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_10AB44()
{
  sub_8A88();
  *(v0 + 80) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  v4 = type metadata accessor for WellnessLoggingGenericDatatypeParameters(0);
  *(v0 + 32) = v4;
  sub_4348(v4);
  *(v0 + 40) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_10ACDC()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_10ADFC()
{
  sub_8A88();
  sub_10E048();

  sub_5D948();
  v3 = *(v1 + 72);

  return v2(v3);
}

uint64_t sub_10AE64()
{
  sub_8A88();
  sub_10E048();

  sub_C9BC();

  return v1();
}

uint64_t sub_10AEC8()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessLoggingHeightParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_10B018()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_10B138()
{
  sub_8A88();
  sub_10E198();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10B194()
{
  sub_8A88();
  sub_10E198();

  sub_76ADC();

  return v0();
}

uint64_t sub_10B1F0()
{
  sub_8A88();
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  *(v0 + 88) = v3;
  v4 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v4);
  *(v0 + 32) = sub_8BC0();
  v5 = type metadata accessor for WellnessLoggingLogMedAsScheduledConfirmationParameters(0);
  sub_76ACC(v5);
  *(v0 + 48) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_10B298()
{
  sub_7734C();
  v21 = v1;
  sub_76D68();
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 88);
  v6 = sub_16D5CC();
  v7 = 1;
  sub_8AB4();
  sub_214C(v8, v9, v10, v6);
  *(v2 + *(v3 + 20)) = v5;
  if (*(v4 + 24))
  {

    sub_16E23C();

    v7 = 0;
  }

  v11 = *(v0 + 48);
  v12 = *(v0 + 32);
  sub_214C(v12, v7, 1, v6);
  sub_8640(v12, v11);
  v13 = sub_108000();
  sub_76D00(v13);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v20 = v14;
  v15 = swift_task_alloc();
  v16 = sub_76D0C(v15);
  *v16 = v17;
  v16[1] = sub_10B3EC;
  v18 = sub_10DFDC(45);

  return v20(v18);
}

uint64_t sub_10B3EC()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_10B50C()
{
  sub_386A8();
  sub_10E018();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10B580()
{
  sub_386A8();
  sub_10E018();

  sub_76ADC();

  return v0();
}

uint64_t sub_10B5F4()
{
  sub_8A88();
  v4 = sub_10DF78(v1, v2, v3);
  v5 = type metadata accessor for WellnessLoggingMenstruationParameters(v4);
  sub_76ACC(v5);
  *(v0 + 48) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_10B668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_10DFBC();
  sub_10DF8C(v10);
  sub_10DF40(v11[5]);
  sub_10DF40(v11[9]);
  *(v10 + v11[6]) = 0;
  *(v10 + v11[7]) = v13;
  sub_76C60(v11[8]);
  *(v14 + 8) = 1;
  v12(v10);
  sub_76E1C();
  v15 = sub_108718();
  sub_76D00(v15);
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v29 = v16;
  v17 = swift_task_alloc();
  v18 = sub_76D0C(v17);
  *v18 = v19;
  sub_769B4(v18);
  sub_76C50(28);
  sub_3E254();

  return v23(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10);
}

uint64_t sub_10B760()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_10B880()
{
  sub_8A88();
  sub_10E1F0();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10B8DC()
{
  sub_8A88();
  sub_10E1F0();

  sub_76ADC();

  return v0();
}

uint64_t sub_10B938()
{
  sub_8A88();
  *(v0 + 24) = v1;
  *(v0 + 32) = v2;
  *(v0 + 16) = v3;
  *(v0 + 97) = v4;
  *(v0 + 96) = v5;
  v6 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v6);
  *(v0 + 40) = sub_8BC0();
  v7 = type metadata accessor for WellnessLoggingPhoneMedicationQueryingErrorParameters(0);
  *(v0 + 48) = v7;
  sub_4348(v7);
  *(v0 + 56) = sub_8BC0();
  v8 = sub_17960();

  return _swift_task_switch(v8);
}

uint64_t sub_10B9EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v11 = *(v10 + 56);
  v12 = *(v10 + 32);
  v13 = *(v10 + 97);
  v14 = *(v10 + 96);
  v15 = *(*(v10 + 48) + 24);
  v16 = sub_16D5CC();
  v17 = 1;
  sub_10DF8C(&v11[v15]);
  *v11 = v14;
  v11[1] = v13;
  if (v12)
  {
    sub_16E23C();
    v17 = 0;
  }

  v18 = *(v10 + 40);
  sub_214C(v18, v17, 1, v16);
  sub_8640(v18, &v11[v15]);
  *(v10 + 64) = sub_108A70();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v30 = v19;
  v20 = swift_task_alloc();
  *(v10 + 72) = v20;
  *v20 = v10;
  sub_10DFA8(v20);
  sub_76C50(44);
  sub_3E254();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28, v30, a10);
}

uint64_t sub_10BB10()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 80) = v0;

  if (!v0)
  {
    *(v4 + 88) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_10BC30()
{
  sub_386A8();
  sub_10DFE8();

  sub_5D948();
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_10BCAC()
{
  sub_386A8();
  sub_10DFE8();

  sub_C9BC();

  return v0();
}

uint64_t sub_10BD24()
{
  sub_8A88();
  v4 = sub_10DF78(v1, v2, v3);
  v5 = type metadata accessor for WellnessLoggingPushCountParameters(v4);
  sub_76ACC(v5);
  *(v0 + 48) = sub_8BC0();
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_10BE68()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_10BF88()
{
  sub_8A88();
  sub_10E16C();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10BFE4()
{
  sub_8A88();
  sub_10E16C();

  sub_76ADC();

  return v0();
}

uint64_t sub_10C040()
{
  sub_386A8();
  sub_76A9C(&async function pointer to dispatch thunk of CATWrapper.executePattern(patternId:parameters:));
  v4 = v1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_10C0F8;

  return v4(0xD000000000000014, 0x800000000017F870, _swiftEmptyArrayStorage);
}

uint64_t sub_10C0F8()
{
  sub_8A88();
  v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;

  sub_5D948();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_10C1E8()
{
  sub_8A88();
  v3 = sub_76AFC(v1, v2);
  v4 = type metadata accessor for WellnessLoggingWeightParameters(v3);
  sub_76ACC(v4);
  *(v0 + 48) = sub_8BC0();
  v5 = sub_17960();

  return _swift_task_switch(v5);
}

uint64_t sub_10C35C()
{
  sub_5E06C();
  sub_C9EC();
  sub_400E8();
  v4 = v3;
  sub_38388();
  *v5 = v4;
  v6 = *v2;
  sub_C990();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v1;
  }

  sub_76ABC();
  sub_38F74();

  return _swift_task_switch(v8);
}

uint64_t sub_10C47C()
{
  sub_8A88();
  sub_10E1C4();

  v0 = sub_769A0();

  return v1(v0);
}

uint64_t sub_10C4D8()
{
  sub_8A88();
  sub_10E1C4();

  sub_76ADC();

  return v0();
}

void sub_10C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_4597C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = sub_16D63C();
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = sub_2440(&qword_1C57F8, &unk_172510);
  sub_4348(v28);
  sub_433C();
  __chkstk_darwin(v29);
  sub_7B09C(v25, &a9 - v30, &qword_1C57F8, &unk_172510);
  sub_775E4();
  v31();
  sub_16D56C();
  (*(v27 + 8))(v23, v26);
  sub_5CFC8(v25, &qword_1C57F8, &unk_172510);
  sub_45924();
}

uint64_t sub_10C740(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_5DE54();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10C964()
{
  sub_76D8C();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v3 + 84) == v1)
  {
    v4 = sub_76D9C();

    return sub_369C(v4, v5, v6);
  }

  else
  {
    v8 = *(v0 + *(v2 + 20));
    if (v8 >= 2)
    {
      return ((v8 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_10CA2C()
{
  sub_76BF4();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_76BE0();

    sub_214C(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 1;
  }
}

void sub_10CAC4(uint64_t a1)
{
  sub_10D5C8(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10CB7C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 24);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    sub_2440(&qword_1C5800, &unk_16F510);
    v6 = sub_10E28C(*(a3 + 44));

    return sub_369C(v6, v7, v8);
  }
}

void sub_10CC20()
{
  sub_A78A8();
  if (v3 == 0x7FFFFFFF)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_2440(&qword_1C5800, &unk_16F510);
    v5 = sub_10E28C(*(v4 + 44));

    sub_214C(v5, v6, v0, v7);
  }
}

uint64_t sub_10CCA4()
{
  sub_7B288();
  sub_10E2C0();
  if (!(!v2 & v1))
  {
    sub_10D5C8(319, &unk_1C8368, type metadata accessor for WellnessMedicationDialogObject, &type metadata accessor for Array);
    if (v4 > 0x3F)
    {
      return v3;
    }

    sub_10DF60();
    sub_10D5C8(319, v5, v6, &type metadata accessor for Optional);
    if (v7 > 0x3F)
    {
      return v3;
    }

    else
    {
      sub_7740C();
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v0;
}

uint64_t sub_10CDE4()
{
  sub_A78A8();
  v2 = sub_2440(&qword_1C5800, &unk_16F510);

  return sub_369C(v1, v0, v2);
}

uint64_t sub_10CE48()
{
  sub_A78A8();
  sub_2440(&qword_1C5800, &unk_16F510);
  v0 = sub_76BE0();

  return sub_214C(v0, v1, v2, v3);
}

void sub_10CE90(uint64_t a1)
{
  sub_10D5C8(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10CF40()
{
  sub_76D8C();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v2 + 84) != v0)
  {
    return sub_76A24(*(v1 + 32));
  }

  v3 = sub_76D9C();

  return sub_369C(v3, v4, v5);
}

void sub_10CFE8()
{
  sub_76BF4();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_76BE0();

    sub_214C(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 32)) = v0;
  }
}

uint64_t sub_10D080(uint64_t a1)
{
  sub_10D5C8(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_7B288();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_10D5C8(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

uint64_t sub_10D1CC()
{
  sub_76D8C();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v2 + 84) != v0)
  {
    return sub_76A24(*(v1 + 24));
  }

  v3 = sub_76D9C();

  return sub_369C(v3, v4, v5);
}

void sub_10D274()
{
  sub_76BF4();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_76BE0();

    sub_214C(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 24)) = v0;
  }
}

uint64_t sub_10D30C(uint64_t a1)
{
  sub_10D5C8(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_10D5C8(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_7B288();
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

uint64_t sub_10D480(uint64_t a1)
{
  sub_10D5C8(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_10D5C8(319, &unk_1C7A30, &type metadata accessor for DialogPersonHeight, &type metadata accessor for Optional);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_10D5C8(319, &unk_1C7AE8, &type metadata accessor for DialogCalendar, &type metadata accessor for Optional);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v2;
}

void sub_10D5C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_10D654(uint64_t a1)
{
  sub_10DF60();
  sub_10D5C8(319, v2, v3, &type metadata accessor for Optional);
  sub_10E2C0();
  if (!(!v5 & v4))
  {
    sub_10E078();
    sub_10D5C8(319, v6, v7, &type metadata accessor for Optional);
    if (v9 > 0x3F)
    {
      return v8;
    }

    else
    {
      sub_7B288();
      sub_10E2C0();
      if (!(!v5 & v4))
      {
        sub_7740C();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_10D81C()
{
  sub_76BF4();
  sub_2440(&qword_1C5800, &unk_16F510);
  sub_436C();
  if (*(v4 + 84) == v3)
  {
    v5 = sub_76BE0();

    sub_214C(v5, v6, v7, v8);
  }

  else
  {
    *(v1 + *(v2 + 28)) = v0;
  }
}

uint64_t sub_10D8B4(uint64_t a1)
{
  sub_10DF60();
  sub_10D5C8(319, v2, v3, &type metadata accessor for Optional);
  sub_10E2C0();
  if (!(!v5 & v4))
  {
    sub_10E078();
    sub_10D5C8(319, v6, v7, &type metadata accessor for Optional);
    if (v9 > 0x3F)
    {
      return v8;
    }

    else
    {
      sub_7B288();
      sub_10E2C0();
      if (!(!v5 & v4))
      {
        sub_7740C();
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

uint64_t sub_10D9F4(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2440(&qword_1C5800, &unk_16F510);
    v8 = sub_10E28C(*(a3 + 24));

    return sub_369C(v8, v9, v10);
  }
}

void sub_10DA98()
{
  sub_A78A8();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    v4 = v2;
    sub_2440(&qword_1C5800, &unk_16F510);
    v5 = sub_10E28C(*(v4 + 24));

    sub_214C(v5, v6, v0, v7);
  }
}

void sub_10DB18(uint64_t a1)
{
  sub_10D5C8(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10DBD8(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (v4)
    {
      return (v5 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2440(&qword_1C5800, &unk_16F510);
    v8 = sub_10E28C(*(a3 + 40));

    return sub_369C(v8, v9, v10);
  }
}

void sub_10DC7C()
{
  sub_A78A8();
  if (v3 == 254)
  {
    *v1 = v0 + 1;
  }

  else
  {
    v4 = v2;
    sub_2440(&qword_1C5800, &unk_16F510);
    v5 = sub_10E28C(*(v4 + 40));

    sub_214C(v5, v6, v0, v7);
  }
}

void sub_10DCFC(uint64_t a1)
{
  sub_10D5C8(319, &qword_1C64B8, &type metadata accessor for SpeakableString, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_10DE08(uint64_t a1)
{
  sub_214C(v1, 1, 1, a1);
  sub_214C(v1 + v2[5], 1, 1, a1);
  sub_214C(v1 + v2[6], 1, 1, a1);
  sub_214C(v1 + v2[9], 1, 1, a1);
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = v3;
  v5 = v1 + v2[10];
  *v5 = 0;
  *(v5 + 8) = 1;
  return v1;
}

uint64_t sub_10DEA0()
{
  sub_214C(v0, 1, 1, v1);
  sub_214C(v0 + *(v2 + 20), 1, 1, v1);
  v3 = v0 + *(v2 + 24);

  return sub_214C(v3, 1, 1, v1);
}

uint64_t sub_10DF18()
{

  return sub_10C740(v0, type metadata accessor for WellnessLoggingAskForValueParameters);
}

uint64_t sub_10DF40@<X0>(uint64_t a1@<X8>)
{

  return sub_214C(v1 + a1, 1, 1, v2);
}

uint64_t sub_10DF78(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  return 0;
}

uint64_t sub_10DF8C(uint64_t a1)
{

  return sub_214C(a1, 1, 1, v1);
}

uint64_t sub_10DFBC()
{

  return sub_16D5CC();
}

uint64_t sub_10DFE8()
{
  v2 = *(v0 + 56);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingPhoneMedicationQueryingErrorParameters);
}

uint64_t sub_10E018()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingLogMedAsScheduledConfirmationParameters);
}

uint64_t sub_10E048()
{
  v2 = *(v0 + 40);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingGenericDatatypeParameters);
}

uint64_t sub_10E090()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingFlightsClimbedParameters);
}

uint64_t sub_10E0BC()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingDistanceWheelchairParameters);
}

uint64_t sub_10E0E8()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingDistanceWalkingRunningParameters);
}

uint64_t sub_10E114()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingBloodPressureParameters);
}

uint64_t sub_10E140()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingDistanceCyclingParameters);
}

uint64_t sub_10E16C()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingPushCountParameters);
}

uint64_t sub_10E198()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingHeightParameters);
}

uint64_t sub_10E1C4()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingWeightParameters);
}

uint64_t sub_10E1F0()
{
  v2 = *(v0 + 48);

  return sub_10C740(v2, type metadata accessor for WellnessLoggingMenstruationParameters);
}

void sub_10E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_108E2C(type metadata accessor for WellnessLoggingGenericDatatypeParameters, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_10E26C()
{
  v3 = v0 + *(v1 + 36);
  *v3 = 0;
  *(v3 + 8) = v2;
  return v0;
}

uint64_t sub_10E2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 32) = v6;
  *(a1 + 40) = a2;

  return sub_7B09C(v2, v4, v3, v5);
}

uint64_t sub_10E2F0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_7B09C(v3 + a3, v4, a1, a2);
}

uint64_t sub_10E350@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 32) = 0xD000000000000013;
  *(result + 40) = a2;
  return result;
}

uint64_t sub_10E3A4()
{

  return sub_16D5CC();
}

uint64_t sub_10E3C4()
{

  return sub_2440(v0, v1);
}

uint64_t sub_10E3DC()
{
  v1 = sub_16C89C();
  sub_42F0();
  v3 = v2;
  v5 = __chkstk_darwin(v4);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v34 - v7;
  sub_16DBEC();
  sub_42F0();
  v36 = v10;
  v37 = v9;
  __chkstk_darwin(v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2440(&qword_1C6FF0, &unk_1730A0);
  __chkstk_darwin(v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_16C8FC();
  sub_42F0();
  v18 = v17;
  __chkstk_darwin(v19);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_16C88C();
  sub_9AD9C(v22, v15);

  if (sub_369C(v15, 1, v16) == 1)
  {
    sub_10E7F4(v15);
    v23 = sub_16DBBC();
    swift_beginAccess();
    (*(v36 + 16))(v12, v23, v37);
    v24 = *(v3 + 16);
    v24(v8, v0, v1);
    v25 = sub_16DBDC();
    v26 = sub_16E37C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v38 = v34;
      *v27 = 136315138;
      v24(v35, v8, v1);
      v28 = sub_16E1EC();
      v30 = v29;
      (*(v3 + 8))(v8, v1);
      v31 = sub_3AB7C(v28, v30, &v38);

      *(v27 + 4) = v31;
      _os_log_impl(&def_259DC, v25, v26, "No user dialog act found in userParse %s", v27, 0xCu);
      sub_2D64(v34);
    }

    else
    {

      (*(v3 + 8))(v8, v1);
    }

    (*(v36 + 8))(v12, v37);
    return 0;
  }

  else
  {
    (*(v18 + 32))(v21, v15, v16);
    v32 = sub_896C0();
    (*(v18 + 8))(v21, v16);
  }

  return v32;
}

uint64_t sub_10E7F4(uint64_t a1)
{
  v2 = sub_2440(&qword_1C6FF0, &unk_1730A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10E85C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  *(v8 + 80) = v18;
  *(v8 + 88) = v19;
  *(v8 + 502) = v16;
  *(v8 + 64) = v15;
  *(v8 + 72) = v17;
  *(v8 + 501) = v14;
  *(v8 + 500) = v12;
  *(v8 + 48) = v11;
  *(v8 + 56) = v13;
  *(v8 + 499) = a8;
  *(v8 + 498) = a6;
  *(v8 + 32) = a5;
  *(v8 + 40) = a7;
  *(v8 + 497) = a4;
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 496) = a1;
  sub_2440(&qword_1C5800, &unk_16F510);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  *(v8 + 144) = swift_task_alloc();

  return _swift_task_switch(sub_10E990);
}

uint64_t sub_10E990(uint64_t a1)
{
  v5 = *(v3 + 496);
  if (!v2 & v1)
  {
    if (v5 != 107)
    {
      switch(v5)
      {
        case 147:
          if (qword_1C55E0 != -1)
          {
            sub_1117D0(&qword_1C55E0);
          }

          sub_111880();
          *(v3 + 216) = qword_1D72C0;

          v36 = swift_task_alloc();
          *(v3 + 224) = v36;
          *v36 = v3;
          v36[1] = sub_11009C;
          sub_1117F0();
          sub_111864();

          return sub_AE440();
        case 173:
          if (qword_1C55E0 != -1)
          {
            sub_1117D0(&qword_1C55E0);
          }

          sub_111880();
          *(v3 + 264) = qword_1D72C0;

          v27 = swift_task_alloc();
          *(v3 + 272) = v27;
          *v27 = v3;
          v27[1] = sub_110480;
          sub_1117F0();
          sub_111864();

          return sub_AFBCC(v28, v29, v30, v31, v32, v33);
        case 174:
          if (qword_1C55E0 != -1)
          {
            sub_1117D0(&qword_1C55E0);
          }

          *(v3 + 408) = qword_1D72C0;

          v24 = swift_task_alloc();
          *(v3 + 416) = v24;
          *v24 = v3;
          v24[1] = sub_111050;
          sub_C98D8(*(v3 + 16));

          return sub_AFD70();
        case 184:
          if (qword_1C55E0 != -1)
          {
            sub_1117D0(&qword_1C55E0);
          }

          sub_111880();
          *(v3 + 168) = qword_1D72C0;

          v25 = swift_task_alloc();
          *(v3 + 176) = v25;
          *v25 = v3;
          v25[1] = sub_10FCB8;
          sub_1117F0();
          sub_111864();

          return sub_B1688();
        default:
          if (v5 != 193)
          {
LABEL_20:
            sub_11191C();

            sub_111908();
            sub_111864();

            __asm { BRAA            X2, X16 }
          }

          if (qword_1C55E0 != -1)
          {
            sub_1117D0(&qword_1C55E0);
          }

          sub_11189C();
          *(v3 + 184) = qword_1D72C0;

          v6 = swift_task_alloc();
          *(v3 + 192) = v6;
          *v6 = v3;
          sub_11188C(v6);
          sub_111844(*(v3 + 16));
          sub_1118B8();

          return sub_B1A70();
      }
    }

    if (qword_1C55E0 != -1)
    {
      sub_1117D0(&qword_1C55E0);
    }

    v35 = *(v3 + 498);
    *(v3 + 424) = qword_1D72C0;
    if (v35)
    {
    }

    else
    {
      sub_1118D8();
      sub_16D5CC();
      v42 = sub_1118AC();
      v43 = sub_369C(v42, 1, v4);
      v44 = *(v3 + 128);
      if (v43 != 1)
      {

        v57 = sub_16D5BC();
        v59 = v58;
        sub_5DE54();
        (*(v60 + 8))(v44, v4);
        v61 = sub_16D2AC();
        sub_8D14(v61);
        sub_16D29C();
        sub_11193C(v57, v59);

        sub_1118F0();
        sub_1118AC();

        sub_16D42C();

        v45 = sub_16D41C();

LABEL_82:
        *(v3 + 432) = v45;
        if ((*(v3 + 499) & 1) == 0)
        {
          v62 = *(v3 + 120);
          sub_1118D8();
          v63 = sub_16D5CC();
          v64 = sub_369C(v62, 1, v63);
          v65 = *(v3 + 120);
          if (v64 != 1)
          {
            v66 = *(v3 + 88);
            v67 = sub_16D5BC();
            v69 = v68;
            sub_5DE54();
            (*(v70 + 8))(v65, v63);
            v71 = sub_16D2AC();
            sub_8D14(v71);
            sub_16D29C();
            sub_11193C(v67, v69);

            sub_1118F0();

            sub_16D42C();

            sub_16D41C();
            sub_1118AC();

LABEL_87:
            *(v3 + 440) = v66;
            if ((*(v3 + 500) & 1) == 0)
            {
              v72 = *(v3 + 112);
              sub_1118D8();
              v73 = sub_16D5CC();
              v74 = sub_369C(v72, 1, v73);
              v75 = *(v3 + 112);
              if (v74 != 1)
              {
                v77 = sub_16D5BC();
                v79 = v78;
                sub_5DE54();
                (*(v80 + 8))(v75, v73);
                v81 = sub_16D2AC();
                sub_8D14(v81);
                sub_16D29C();
                sub_11193C(v77, v79);

                sub_1118F0();

                sub_16D42C();

                v76 = sub_16D41C();

LABEL_92:
                *(v3 + 448) = v76;
                if ((*(v3 + 501) & 1) == 0)
                {
                  v82 = *(v3 + 104);
                  sub_1118D8();
                  v83 = sub_16D5CC();
                  v84 = sub_369C(v82, 1, v83);
                  v85 = *(v3 + 104);
                  if (v84 != 1)
                  {
                    v87 = sub_16D5BC();
                    v89 = v88;
                    sub_5DE54();
                    (*(v90 + 8))(v85, v83);
                    v91 = sub_16D2AC();
                    sub_8D14(v91);
                    sub_16D29C();
                    sub_11193C(v87, v89);

                    sub_1118F0();

                    sub_16D42C();

                    v86 = sub_16D41C();

                    goto LABEL_97;
                  }

                  sub_6261C(*(v3 + 104));
                }

                v86 = 0;
LABEL_97:
                *(v3 + 456) = v86;
                v92 = swift_task_alloc();
                *(v3 + 464) = v92;
                *v92 = v3;
                v92[1] = sub_11119C;
                sub_C98D8(*(v3 + 16));
                sub_111864();

                return sub_AE1B8(v93, v94, v95, v96, v97, v98);
              }

              sub_6261C(*(v3 + 112));
            }

            v76 = 0;
            goto LABEL_92;
          }

          sub_6261C(*(v3 + 120));
        }

        v66 = 0;
        goto LABEL_87;
      }

      sub_6261C(v44);
    }

    v45 = 0;
    goto LABEL_82;
  }

  switch(*(v3 + 496))
  {
    case 'Y':
      if (qword_1C55E0 != -1)
      {
        sub_1117D0(&qword_1C55E0);
      }

      sub_111880();
      *(v3 + 232) = qword_1D72C0;

      v9 = swift_task_alloc();
      *(v3 + 240) = v9;
      *v9 = v3;
      v9[1] = sub_1101E8;
      sub_1117F0();
      sub_111864();

      return sub_ACE54();
    case 'Z':
      if (qword_1C55E0 != -1)
      {
        sub_1117D0(&qword_1C55E0);
      }

      sub_111880();
      *(v3 + 328) = qword_1D72C0;

      v13 = swift_task_alloc();
      *(v3 + 336) = v13;
      *v13 = v3;
      v13[1] = sub_1109B0;
      sub_1117F0();
      sub_111864();

      return sub_AEE64();
    case '[':
    case '\\':
    case '^':
    case '_':
    case 'b':
    case 'c':
    case 'd':
    case 'e':
    case 'f':
      goto LABEL_20;
    case ']':
      if (qword_1C55E8 != -1)
      {
        swift_once();
      }

      v17 = *(v3 + 144);
      *(v3 + 344) = qword_1D72C8;
      sub_208C0(93);

      sub_16E23C();

      v18 = sub_16D5CC();
      *(v3 + 352) = v18;
      sub_214C(v17, 0, 1, v18);
      v19 = swift_task_alloc();
      *(v3 + 360) = v19;
      *v19 = v3;
      v19[1] = sub_110AFC;
      sub_C98D8(*(v3 + 144));
      sub_111864();

      return sub_3E928();
      if (qword_1C55E0 != -1)
      {
        sub_1117D0(&qword_1C55E0);
      }

      v23 = *(v3 + 502);
      *(v3 + 472) = qword_1D72C0;
      if (v23)
      {

LABEL_73:
        v41 = 0;
        goto LABEL_78;
      }

      sub_1118D8();
      sub_16D5CC();
      v38 = sub_1118AC();
      v39 = sub_369C(v38, 1, v4);
      v40 = *(v3 + 96);
      if (v39 == 1)
      {

        sub_6261C(v40);
        goto LABEL_73;
      }

      v46 = *(v3 + 64);

      v47 = sub_16D5BC();
      v49 = v48;
      sub_5DE54();
      (*(v50 + 8))(v40, v4);
      v51 = sub_16D2AC();
      sub_8D14(v51);
      sub_16D29C();
      sub_99F0C(v47, v49, 96, v46);

      sub_1118F0();
      sub_1118AC();

      sub_16D42C();

      v41 = sub_16D41C();

LABEL_78:
      *(v3 + 480) = v41;
      v52 = swift_task_alloc();
      *(v3 + 488) = v52;
      *v52 = v3;
      v52[1] = sub_1113C0;
      sub_C98D8(*(v3 + 16));
      sub_111864();

      result = sub_AD1D8(v53, v54, v55);
      break;
    case 'a':
      if (qword_1C55E0 != -1)
      {
        sub_1117D0(&qword_1C55E0);
      }

      sub_111880();
      *(v3 + 296) = qword_1D72C0;

      v21 = swift_task_alloc();
      *(v3 + 304) = v21;
      *v21 = v3;
      v21[1] = sub_110718;
      sub_1117F0();
      sub_111864();

      return sub_AFF40();
    case 'g':
      if (qword_1C55E0 != -1)
      {
        sub_1117D0(&qword_1C55E0);
      }

      sub_11189C();
      *(v3 + 248) = qword_1D72C0;

      v15 = swift_task_alloc();
      *(v3 + 256) = v15;
      *v15 = v3;
      sub_11188C(v15);
      sub_111844(*(v3 + 16));
      sub_1118B8();

      return sub_AD540();
    default:
      JUMPOUT(0);
  }

  return result;
}

uint64_t sub_10FB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  *v13 = *v11;

  sub_5DA54();
  if (v10)
  {
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_10FCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  *v13 = *v11;

  sub_5DA54();
  if (v10)
  {
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_10FE04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  *v13 = *v11;

  sub_5DA54();
  if (v10)
  {
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_10FF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  *v13 = *v11;

  sub_5DA54();
  if (v10)
  {
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_11009C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  *v13 = *v11;

  sub_5DA54();
  if (v10)
  {
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1101E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  *v13 = *v11;

  sub_5DA54();
  if (v10)
  {
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_110334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  *v13 = *v11;

  sub_5DA54();
  if (v10)
  {
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_110480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  *v13 = *v11;

  sub_5DA54();
  if (v10)
  {
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1105CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  *v13 = *v11;

  sub_5DA54();
  if (v10)
  {
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_110718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  *v13 = *v11;

  sub_5DA54();
  if (v10)
  {
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_110864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  *v13 = *v11;

  sub_5DA54();
  if (v10)
  {
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1109B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  *v13 = *v11;

  sub_5DA54();
  if (v10)
  {
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_110AFC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  sub_C990();
  *v6 = v5;
  *v6 = *v2;

  v7 = *(v4 + 144);
  if (v1)
  {

    sub_6261C(v7);
    v8 = sub_11155C;
  }

  else
  {
    *(v5 + 368) = a1;
    sub_6261C(v7);

    v8 = sub_110C6C;
  }

  return _swift_task_switch(v8);
}

uint64_t sub_110C6C()
{
  v1 = v0[46];
  if (v1)
  {
    v2 = [v1 dialog];
    sub_6805C();
    v3 = sub_16E2CC();

    if (sub_3B35C(v3))
    {
      sub_3B360();
      if ((v3 & 0xC000000000000001) != 0)
      {
        v4 = sub_16E48C();
      }

      else
      {
        v4 = *(v3 + 32);
      }

      v5 = v4;

      v6 = [v5 fullPrint];

      sub_16E1BC();
      sub_16E23C();
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v8 = v0[46];
  }

  else
  {
    v8 = 0;
    v7 = 1;
  }

  v0[47] = v8;
  sub_214C(v0[17], v7, 1, v0[44]);
  if (qword_1C55E0 != -1)
  {
    sub_1117D0(&qword_1C55E0);
  }

  sub_111880();
  v0[48] = qword_1D72C0;

  v9 = swift_task_alloc();
  v0[49] = v9;
  *v9 = v0;
  v9[1] = sub_110E4C;
  sub_1117F0();

  return sub_B119C();
}

uint64_t sub_110E4C(uint64_t a1)
{
  v4 = *v2;
  sub_C990();
  *v5 = v4;
  *v5 = *v2;

  sub_5DA54();
  if (v1)
  {

    v6 = sub_11164C;
  }

  else
  {

    *(v4 + 400) = a1;
    v6 = sub_110F94;
  }

  return _swift_task_switch(v6);
}

uint64_t sub_110F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();

  sub_6261C(*(v10 + 136));

  sub_3E254();

  return v13(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_111050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  sub_626D0();
  sub_C990();
  *v13 = v12;
  *v13 = *v11;

  sub_5DA54();
  if (v10)
  {
  }

  sub_111824();

  sub_11180C();
  sub_3E254();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_11119C(uint64_t a1)
{
  v4 = *v2;
  sub_C990();
  *v5 = v4;
  v6 = *v2;
  *v5 = *v2;

  if (v1)
  {

    a1 = 0;
  }

  else
  {
  }

  v7 = *(v6 + 8);

  return v7(a1);
}

uint64_t sub_1113C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_B2860();
  sub_76D68();
  v12 = *v11;
  sub_C990();
  *v13 = v12;
  *v13 = *v11;

  if (v10)
  {
  }

  sub_3E254();

  return v16(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_11155C()
{
  v0[47] = 0;
  sub_214C(v0[17], 1, 1, v0[44]);
  if (qword_1C55E0 != -1)
  {
    sub_1117D0(&qword_1C55E0);
  }

  sub_111880();
  v0[48] = qword_1D72C0;

  v1 = swift_task_alloc();
  v0[49] = v1;
  *v1 = v0;
  v1[1] = sub_110E4C;
  sub_1117F0();

  return sub_B119C();
}

uint64_t sub_11164C()
{
  sub_6261C(*(v0 + 136));
  sub_11191C();

  v1 = sub_111908();

  return v2(v1);
}

uint64_t sub_111734(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3)
{
  v5 = sub_16D63C();
  __chkstk_darwin(v5 - 8);
  a2(0);
  sub_16D62C();
  result = sub_16D5FC();
  *a3 = result;
  return result;
}

uint64_t sub_1117D0(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_111824()
{
}

uint64_t sub_111844@<X0>(uint64_t a1@<X8>)
{
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  *(v4 + 16) = v1;
  return a1;
}

uint64_t sub_1118D8()
{
  v3 = *(v1 + 72);

  return sub_7DA9C(v3, v0);
}

uint64_t sub_1118F0()
{

  return sub_16D43C();
}

uint64_t sub_11191C()
{
}

double sub_11193C(uint64_t a1, uint64_t a2)
{

  return sub_99F0C(a1, a2, 107, v3);
}

uint64_t sub_11195C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_11199C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_111A40(uint64_t a1, uint64_t a2)
{
  sub_928E8();

  return sub_16C33C();
}

uint64_t sub_111A94()
{
  sub_8A88();
  v1[157] = v0;
  v1[156] = v2;
  v3 = type metadata accessor for UnavailableDataFlow(0);
  v1[158] = v3;
  sub_4348(v3);
  v1[159] = sub_8BC0();
  v4 = sub_16D63C();
  sub_4348(v4);
  v1[160] = sub_8BC0();
  v5 = sub_16DBEC();
  v1[161] = v5;
  sub_888C(v5);
  v1[162] = v6;
  v1[163] = sub_8C38();
  v1[164] = swift_task_alloc();
  v1[165] = swift_task_alloc();
  v1[166] = swift_task_alloc();
  v7 = sub_16BF5C();
  v1[167] = v7;
  sub_888C(v7);
  v1[168] = v8;
  v1[169] = sub_8BC0();
  v9 = sub_16C0BC();
  v1[170] = v9;
  sub_888C(v9);
  v1[171] = v10;
  v1[172] = sub_8BC0();
  v11 = sub_2440(&qword_1C5690, &dword_16F320);
  sub_4348(v11);
  v1[173] = sub_8BC0();
  v12 = sub_16BD9C();
  v1[174] = v12;
  sub_888C(v12);
  v1[175] = v13;
  v1[176] = sub_8C38();
  v1[177] = swift_task_alloc();
  v14 = sub_17960();

  return _swift_task_switch(v14);
}

void sub_111CC0()
{
  v84 = v0;
  v1 = **(v0 + 1256);
  sub_16D74();
  v2 = sub_16E14C();
  v3 = sub_1730C(v1, v2);
  v4 = v3;
  *(v0 + 913) = v3;

  if (v4 == 205)
  {
    v5 = *(v0 + 1304);
    v6 = *(v0 + 1296);
    v7 = *(v0 + 1288);
    v8 = *(v0 + 1256);
    v9 = sub_16DBBC();
    sub_8B48(v9, v0 + 1144);
    (*(v6 + 16))(v5, v9, v7);
    sub_11B5D4(v8, v0 + 80);
    v10 = sub_16DBDC();
    v11 = sub_16E37C();
    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 1304);
    v14 = *(v0 + 1296);
    v15 = *(v0 + 1288);
    if (v12)
    {
      sub_8BD8();
      v16 = sub_A75B8();
      v83[0] = v16;
      *v13 = 136315138;
      sub_140650(*(v0 + 80));
      sub_9293C(v0 + 80);
      v17 = sub_A76B4();
      v20 = sub_3AB7C(v17, v18, v19);

      *(v13 + 4) = v20;
      sub_11C30C(&def_259DC, v10, v11, "%s does not have a HealthKitIdentifier to create a GetHealthQuantityFlow", v79);
      sub_2D64(v16);
      sub_8A2C(v16);
      sub_A76C0();
    }

    else
    {

      sub_9293C(v0 + 80);
    }

    (*(v14 + 8))(v13, v15);
    v83[0] = 0;
    v83[1] = 0xE000000000000000;
    sub_16E47C(72);
    sub_140650(v1);
    sub_16E26C(v85);

    v86._object = 0x800000000017EBB0;
    v86._countAndFlagsBits = 0xD000000000000046;
    sub_16E26C(v86);
    sub_16E53C();
    sub_5E1A0();
  }

  else
  {
    v21 = *(v0 + 1392);
    v22 = *(v0 + 1384);
    sub_2D20((*(v0 + 1256) + 8), *(*(v0 + 1256) + 32));
    v23 = sub_387CC();
    v24(v23);
    if (sub_369C(v22, 1, v21) == 1)
    {
      sub_8748(*(v0 + 1384), &qword_1C5690, &dword_16F320);
    }

    else
    {
      v42 = *(v0 + 1368);
      v43 = *(v0 + 1344);
      (*(*(v0 + 1400) + 32))(*(v0 + 1416), *(v0 + 1384), *(v0 + 1392));
      sub_16C08C();
      sub_16BD7C();
      v44 = sub_16C03C();
      v45 = *(v43 + 8);
      v46 = sub_387CC();
      v45(v46);
      v47 = *(v42 + 8);
      v48 = sub_C9F8();
      v47(v48);
      if ((v44 & 1) == 0 || (sub_16C08C(), sub_16BD4C(), v49 = sub_16C03C(), v50 = sub_387CC(), v45(v50), v51 = sub_C9F8(), v47(v51), (v49 & 1) == 0))
      {
        v52 = *(v0 + 1328);
        v53 = *(v0 + 1296);
        v54 = *(v0 + 1288);
        v55 = sub_16DBBC();
        sub_8B48(v55, v0 + 1216);
        (*(v53 + 16))(v52, v55, v54);
        v56 = sub_38408();
        v57(v56);
        v58 = sub_16DBDC();
        v59 = sub_16E36C();
        v60 = sub_84370(v59);
        v61 = *(v0 + 1400);
        v62 = *(v0 + 1328);
        v63 = *(v0 + 1296);
        v64 = *(v0 + 1288);
        if (v60)
        {
          sub_8BD8();
          v82 = sub_A75B8();
          v83[0] = v82;
          *v64 = 136315138;
          sub_11B9B4(&qword_1C97E8, &type metadata accessor for DateInterval, &protocol conformance descriptor for DateInterval);
          v65 = sub_16E68C();
          v80 = v58;
          v81 = v62;
          v67 = v66;
          v68 = *(v61 + 8);
          v69 = sub_4B364();
          v68(v69);
          v70 = v68;
          v71 = sub_3AB7C(v65, v67, v83);

          *(v64 + 4) = v71;
          sub_11C30C(&def_259DC, v80, v59, "Received rings request outside of today. Punching out instead. (dateInteval: %s)", v79);
          sub_2D64(v82);
          sub_8A2C(v82);
          sub_A76C0();

          (*(v63 + 8))(v81, v64);
        }

        else
        {

          v72 = *(v61 + 8);
          v73 = sub_4B364();
          v72(v73);
          v70 = v72;
          (*(v63 + 8))(v62, v64);
        }

        v74 = *(v0 + 1416);
        v75 = *(v0 + 1392);
        sub_8388(*(v0 + 1256) + 48, v0 + 672);
        *(v0 + 736) = &type metadata for WellnessCATProvider;
        *(v0 + 744) = &off_1BD5D8;
        sub_11C1CC();
        v76 = swift_allocObject();
        *(v0 + 712) = v76;
        *(v76 + 16) = 0u;
        *(v76 + 32) = 0u;
        sub_3DBD0((v0 + 752));
        *(v0 + 664) = 231;
        *(v0 + 912) = 0;
        sub_3DF60();
        sub_16C4EC();
        (v70)(v74, v75);
        sub_92798(v0 + 664);
        sub_11BD2C();

        sub_C9BC();
        sub_5E1A0();

        __asm { BRAA            X1, X16 }
      }

      (*(*(v0 + 1400) + 8))(*(v0 + 1416), *(v0 + 1392));
    }

    v25 = *(v0 + 1296);
    v26 = *(v0 + 1288);
    v27 = [objc_allocWithZone(sub_16DA0C()) init];
    *(v0 + 1424) = v27;
    v28 = sub_16DBBC();
    *(v0 + 1432) = v28;
    sub_8B48(v28, v0 + 1168);
    *(v0 + 1440) = *(v25 + 16);
    *(v0 + 1448) = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v29 = sub_389C0();
    v30(v29);
    v31 = sub_16DBDC();
    v32 = sub_16E36C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = sub_1BA38();
      sub_1BA50(v33);
      _os_log_impl(&def_259DC, v31, v32, "Trying to fetch Activity Summary", v26, 2u);
      sub_1BA00();
    }

    v34 = *(v0 + 1296);
    v35 = *(v0 + 1256);

    *(v0 + 1456) = *(v34 + 8);
    v36 = sub_4B4EC();
    v37(v36);
    v38 = *(v35 + 248);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1240;
    *(v0 + 24) = sub_112548;
    v39 = swift_continuation_init();
    *(v0 + 1136) = sub_2440(&qword_1CA8F0, &qword_176F18);
    *(v0 + 1112) = v39;
    *(v0 + 1080) = _NSConcreteStackBlock;
    *(v0 + 1088) = 1107296256;
    *(v0 + 1096) = sub_53C4;
    *(v0 + 1104) = &unk_1BC770;
    [v38 handleGetAcitivitySummary:v27 completion:v0 + 1080];
    sub_5E1A0();

    _swift_continuation_await(v40);
  }
}

uint64_t sub_112548()
{
  sub_8A88();
  v1 = *v0;
  sub_C990();
  *v2 = v1;
  sub_8ACC();

  return _swift_task_switch(v3);
}

uint64_t sub_112618(uint64_t a1)
{
  v3 = *(v1 + 1440);
  v4 = *(v1 + 1432);
  v5 = *(v1 + 1312);
  v6 = *(v1 + 1288);
  v7 = *(v1 + 1240);
  *(v1 + 1464) = v7;
  sub_1B9B4(a1, v1 + 1192);
  v3(v5, v4, v6);
  v8 = v7;
  v9 = sub_16DBDC();
  LOBYTE(v5) = sub_16E36C();

  if (os_log_type_enabled(v9, v5))
  {
    v10 = sub_8BD8();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v8;
    *v11 = v8;
    v12 = v8;
    sub_4B3D0();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    sub_8748(v11, &qword_1C57B8, &qword_1715A0);
    sub_89F4();
    sub_8A2C(v10);
  }

  v18 = (*(v1 + 1456))(*(v1 + 1312), *(v1 + 1288));
  v19 = (*(&stru_20.maxprot + (swift_isaMask & *v8)))(v18);
  if (v19 != 4)
  {
    if (v19 == 102)
    {
      v27 = *(v1 + 1424);
      v28 = *(v1 + 913);
      v29 = *(v1 + 1272);
      v30 = *(v1 + 1264);
      v31 = *(v1 + 1256);
      sub_8AB4();
      sub_214C(v32, v33, v34, v35);
      sub_8388(v31 + 48, &v29[v30[6]]);
      sub_8284(v31 + 88, &v29[v30[7]]);
      v36 = sub_16C58C();
      sub_11C1E4(v36);
      v37 = sub_16C57C();
      v38 = &v29[v30[8]];
      v38[3] = v2;
      v38[4] = &protocol witness table for ResponseFactory;
      *v38 = v37;
      type metadata accessor for WellnessCATsSimple(0);
      sub_16D62C();
      v39 = sub_16D5FC();
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      v40 = sub_16D58C();
      *v29 = v28;
      *&v29[v30[9]] = v39;
      *&v29[v30[10]] = v40;
      sub_11B9B4(&qword_1C57C8, type metadata accessor for UnavailableDataFlow, &unk_179388);
      sub_C9E0();
      sub_16C4EC();

      sub_11B818(v29, type metadata accessor for UnavailableDataFlow);
    }

    else if (v19 == 101)
    {
      v20 = *(v1 + 1424);
      v21 = *(v1 + 913);
      v22 = *(v1 + 1256);
      sub_8388(v22 + 48, v1 + 408);
      sub_8284(v22 + 88, v1 + 448);
      v23 = sub_16C58C();
      swift_allocObject();
      v24 = sub_16C57C();
      *(v1 + 632) = v23;
      *(v1 + 640) = &protocol witness table for ResponseFactory;
      *(v1 + 608) = v24;
      type metadata accessor for WellnessCATsSimple(0);
      sub_16D62C();
      v25 = sub_16D5FC();
      type metadata accessor for WellnessCATs(0);
      sub_16D62C();
      v26 = sub_16D58C();
      *(v1 + 400) = v21;
      *(v1 + 648) = v25;
      *(v1 + 656) = v26;
      sub_84F0();
      sub_16C4EC();

      sub_8544(v1 + 400);
    }

    else
    {
      v44 = *(v1 + 1424);
      sub_8284(*(v1 + 1256) + 88, v1 + 920);
      sub_82E0();
      sub_16C4EC();

      sub_8334(v1 + 920);
    }

    sub_11BD2C();

    sub_C9BC();
    sub_8CC0();

    __asm { BRAA            X1, X16 }
  }

  v41 = swift_task_alloc();
  *(v1 + 1472) = v41;
  *v41 = v1;
  v41[1] = sub_112AFC;
  sub_8CC0();

  return sub_112CD8();
}

uint64_t sub_112AFC()
{
  sub_8A88();
  sub_C9D4();
  *(v1 + 1480) = v0;

  v2 = sub_17960();

  return _swift_task_switch(v2);
}

void sub_112BEC()
{
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1424);
  sub_16C4FC();

  sub_11BD2C();

  sub_C9BC();
  sub_8CC0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_112CD8()
{
  sub_8A88();
  *(v1 + 3320) = v0;
  *(v1 + 265) = v2;
  *(v1 + 3312) = v3;
  v4 = sub_2440(&dword_1C63F8, &qword_171800);
  sub_4348(v4);
  *(v1 + 3328) = sub_8BC0();
  v5 = sub_16BF5C();
  *(v1 + 3336) = v5;
  sub_888C(v5);
  *(v1 + 3344) = v6;
  *(v1 + 3352) = sub_8BC0();
  v7 = type metadata accessor for SingleActivitySummaryModel(0);
  *(v1 + 3360) = v7;
  sub_4348(v7);
  *(v1 + 3368) = sub_8C38();
  *(v1 + 3376) = swift_task_alloc();
  *(v1 + 3384) = swift_task_alloc();
  *(v1 + 3392) = swift_task_alloc();
  v8 = type metadata accessor for SnippetHeaderModel(0);
  *(v1 + 3400) = v8;
  sub_4348(v8);
  *(v1 + 3408) = sub_8C38();
  *(v1 + 3416) = swift_task_alloc();
  *(v1 + 3424) = swift_task_alloc();
  v9 = sub_16D5CC();
  *(v1 + 3432) = v9;
  sub_888C(v9);
  *(v1 + 3440) = v10;
  *(v1 + 3448) = sub_8C38();
  *(v1 + 3456) = swift_task_alloc();
  *(v1 + 3464) = swift_task_alloc();
  *(v1 + 3472) = swift_task_alloc();
  *(v1 + 3480) = swift_task_alloc();
  *(v1 + 3488) = swift_task_alloc();
  v11 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v11);
  *(v1 + 3496) = sub_8C38();
  *(v1 + 3504) = swift_task_alloc();
  *(v1 + 3512) = swift_task_alloc();
  *(v1 + 3520) = swift_task_alloc();
  *(v1 + 3528) = swift_task_alloc();
  *(v1 + 3536) = swift_task_alloc();
  *(v1 + 3544) = swift_task_alloc();
  v12 = type metadata accessor for WellnessQueryingRingsParameters(0);
  *(v1 + 3552) = v12;
  sub_4348(v12);
  *(v1 + 3560) = sub_8BC0();
  v13 = sub_16C46C();
  *(v1 + 3568) = v13;
  sub_888C(v13);
  *(v1 + 3576) = v14;
  *(v1 + 3584) = sub_8C38();
  *(v1 + 3592) = swift_task_alloc();
  v15 = sub_16C7BC();
  *(v1 + 3600) = v15;
  sub_888C(v15);
  *(v1 + 3608) = v16;
  *(v1 + 3616) = sub_8C38();
  *(v1 + 3624) = swift_task_alloc();
  v17 = sub_16DBEC();
  *(v1 + 3632) = v17;
  sub_888C(v17);
  *(v1 + 3640) = v18;
  *(v1 + 3648) = sub_8C38();
  *(v1 + 3656) = swift_task_alloc();
  *(v1 + 3664) = swift_task_alloc();
  *(v1 + 3672) = swift_task_alloc();
  *(v1 + 3680) = swift_task_alloc();
  *(v1 + 3688) = swift_task_alloc();
  *(v1 + 3696) = swift_task_alloc();
  *(v1 + 3704) = swift_task_alloc();
  *(v1 + 3712) = swift_task_alloc();
  *(v1 + 3720) = swift_task_alloc();
  *(v1 + 3728) = swift_task_alloc();
  *(v1 + 3736) = swift_task_alloc();
  *(v1 + 3744) = swift_task_alloc();
  v19 = sub_2440(&qword_1CA8F8, &qword_176F30);
  sub_4348(v19);
  *(v1 + 3752) = sub_8C38();
  *(v1 + 3760) = swift_task_alloc();
  *(v1 + 3768) = swift_task_alloc();
  *(v1 + 3776) = swift_task_alloc();
  *(v1 + 3784) = swift_task_alloc();
  *(v1 + 3792) = swift_task_alloc();
  *(v1 + 3800) = swift_task_alloc();
  *(v1 + 3808) = swift_task_alloc();
  *(v1 + 3816) = swift_task_alloc();
  *(v1 + 3824) = swift_task_alloc();
  v20 = sub_17960();

  return _swift_task_switch(v20);
}

uint64_t sub_113178()
{
  v1 = [*(v0 + 3312) activeEnergyBurnedGoal];
  if (v1)
  {
    v2 = v1;
    sub_25908(0, &qword_1CA908, NSUnitEnergy_ptr);
    sub_16BCDC();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *(v0 + 3824);
  v5 = *(v0 + 3816);
  v6 = sub_387CC();
  v8 = sub_2440(v6, v7);
  sub_214C(v5, v3, 1, v8);
  sub_11B684(v5, v4);
  v9 = sub_387CC();
  v11 = sub_2440(v9, v10);
  v12 = 0.0;
  if (!sub_369C(v4, 1, v11))
  {
    sub_16BCFC();
    v12 = v13;
  }

  v14 = *(v0 + 3312);
  v15 = *(v0 + 265);
  sub_8748(*(v0 + 3824), &qword_1CA8F8, &qword_176F30);
  [v14 appleExerciseTimeGoal];
  v17 = v16;
  [v14 appleStandHoursGoal];
  if (sub_118A5C(v15, v12, v17, v18))
  {
    sub_8388(*(v0 + 3320) + 48, v0 + 280);
    *(v0 + 344) = &type metadata for WellnessCATProvider;
    *(v0 + 352) = &off_1BD5D8;
    sub_11C1CC();
    v19 = swift_allocObject();
    *(v0 + 320) = v19;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0u;
    sub_3DBD0((v0 + 360));
    *(v0 + 272) = 249;
    *(v0 + 520) = 0;
    sub_3DF60();
    sub_16C32C();
    sub_92798(v0 + 272);
    sub_11BB5C();
    sub_11BBF0();

    sub_5D948();
    sub_11BE9C();

    __asm { BRAA            X2, X16 }
  }

  v22 = *(v0 + 3312);
  *(v0 + 3208) = 0;
  *(v0 + 3216) = 1;
  *(v0 + 3192) = 0;
  *(v0 + 3200) = 1;
  v23 = [v22 isWheelchairUser];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 BOOLValue];
  }

  else
  {
    v25 = 0;
  }

  *(v0 + 266) = v25;
  v26 = *(v0 + 265);
  v27 = sub_11B6F4(*(v0 + 3312));
  *(v0 + 3832) = v27;
  *(v0 + 3840) = v28;
  v29 = 0.0;
  v184 = v25;
  v183 = v28;
  if (v26)
  {
    switch(v26)
    {
      case 91:
        v39 = [*(v0 + 3312) activeEnergyBurned];
        if (v39)
        {
          v40 = v39;
          v41 = sub_25908(0, &qword_1CA908, NSUnitEnergy_ptr);
          sub_11C21C(v41);

          v42 = 0;
        }

        else
        {
          v42 = 1;
        }

        sub_11C0B4(v39, v42);
        v62 = sub_11C1A0();
        v48 = v62 != 0;
        v63 = *(v0 + 3808);
        if (v62)
        {
          sub_8748(*(v0 + 3808), &qword_1CA8F8, &qword_176F30);
          v34 = 0.0;
        }

        else
        {
          sub_16BCFC();
          v65 = v64;
          sub_8748(v63, &qword_1CA8F8, &qword_176F30);
          v66 = sub_387CC();
          v34 = sub_99F0C(v66, v67, 91, v65);
        }

        v68 = *(v0 + 3312);
        *(v0 + 3208) = v34;
        *(v0 + 3216) = v62 != 0;
        v69 = [v68 activeEnergyBurnedGoal];
        if (v69)
        {
          v70 = v69;
          v71 = sub_25908(0, &qword_1CA908, NSUnitEnergy_ptr);
          sub_11C21C(v71);

          v72 = 0;
        }

        else
        {
          v72 = 1;
        }

        sub_11C0B4(v69, v72);
        v73 = sub_11C1A0();
        v74 = *(v0 + 3792);
        if (v73)
        {
          sub_8748(*(v0 + 3792), &qword_1CA8F8, &qword_176F30);
          v47 = 1;
          v29 = 0.0;
        }

        else
        {
          sub_16BCFC();
          v76 = v75;
          sub_8748(v74, &qword_1CA8F8, &qword_176F30);
          v77 = sub_387CC();
          v29 = sub_99F0C(v77, v78, 91, v76);
          v47 = 0;
        }

        goto LABEL_34;
      case 90:
        v43 = *(v0 + 3312);
        [v43 appleExerciseTime];
        v44 = sub_387CC();
        v34 = sub_99F0C(v44, v45, 90, v46);
        *(v0 + 3208) = v34;
        *(v0 + 3216) = 0;
        [v43 appleExerciseTimeGoal];
        v35 = sub_387CC();
        v38 = 90;
        goto LABEL_21;
      case 4:
        v30 = *(v0 + 3312);
        [v30 appleStandHours];
        v31 = sub_387CC();
        v34 = sub_99F0C(v31, v32, 4, v33);
        *(v0 + 3208) = v34;
        *(v0 + 3216) = 0;
        [v30 appleStandHoursGoal];
        v35 = sub_387CC();
        v38 = 4;
LABEL_21:
        v29 = sub_99F0C(v35, v36, v38, v37);
        v47 = 0;
        v48 = 0;
LABEL_34:
        v79 = v27;
        *(v0 + 3192) = v29;
        *(v0 + 3200) = v47;
LABEL_48:
        *(v0 + 268) = v48;
        *(v0 + 4000) = v34;
        *(v0 + 267) = v47;
        *(v0 + 3992) = v29;
        v110 = *(v0 + 3712);
        v111 = *(v0 + 3640);
        v112 = *(v0 + 3632);
        v113 = sub_16DBBC();
        *(v0 + 4008) = v113;
        sub_8B48(v113, v0 + 3112);
        v114 = *(v111 + 16);
        *(v0 + 4016) = v114;
        *(v0 + 4024) = (v111 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v114(v110, v113, v112);
        v115 = sub_16DBDC();
        v116 = sub_16E36C();
        if (sub_4B3A8(v116))
        {
          v117 = sub_1BA38();
          *v117 = 0;
          _os_log_impl(&def_259DC, v115, v116, "Creating pattern result for single ring query.", v117, 2u);
          sub_8A2C(v117);
        }

        v118 = *(v0 + 3712);
        v119 = *(v0 + 3640);
        v120 = *(v0 + 3632);

        v121 = *(v119 + 8);
        *(v0 + 4032) = v121;
        v121(v118, v120);
        *(v0 + 2672) = &type metadata for WellnessFeatureFlagsKey;
        *(v0 + 2680) = sub_3736C();
        *(v0 + 2648) = 4;
        v122 = sub_16C86C();
        sub_2D64((v0 + 2648));
        if ((v122 & 1) == 0)
        {
          v143 = *(v0 + 3560);
          v144 = *(v0 + 3552);
          v145 = *(v0 + 3432);
          v146 = *(v0 + 265);
          sub_2D20((*(v0 + 3320) + 208), *(*(v0 + 3320) + 232));

          sub_8AB4();
          sub_214C(v147, v148, v149, v145);
          sub_8AB4();
          sub_214C(v150, v151, v152, v145);
          sub_8AB4();
          sub_214C(v153, v154, v155, v145);
          *(v143 + v144[6]) = 0;
          *(v143 + v144[7]) = 0;
          v156 = v143 + v144[8];
          *v156 = 0;
          *(v156 + 8) = 1;
          *(v143 + v144[9]) = 0;
          *(v143 + v144[10]) = v184;
          v157 = v143 + v144[11];
          *v157 = 0;
          *(v157 + 8) = 1;
          sub_118ABC(v143, v146, v0 + 3208, v79, v183, v0 + 3192);
          sub_6DB4C();
          *(v0 + 4040) = v158;
          v159 = swift_task_alloc();
          *(v0 + 4048) = v159;
          *v159 = v0;
          v159[1] = sub_115D90;
          sub_11BE9C();

          __asm { BR              X3 }
        }

        v123 = *(v0 + 3704);
        v124 = *(v0 + 3632);
        sub_8B48(v113, v0 + 2920);
        v114(v123, v113, v124);
        v125 = sub_16DBDC();
        v126 = sub_16E36C();
        if (sub_4B3A8(v126))
        {
          v127 = sub_1BA38();
          *v127 = 0;
          sub_4B3D0();
          _os_log_impl(v128, v129, v130, v131, v132, 2u);
          sub_8A2C(v127);
        }

        v133 = *(v0 + 3432);
        v134 = *(v0 + 3320);
        v135 = *(v0 + 265);

        v136 = sub_C9E0();
        (v121)(v136);
        *(v0 + 4072) = *(v134 + 304);
        sub_208C0(v135);
        sub_16E23C();

        sub_388E4();
        sub_214C(v137, v138, v139, v133);
        v140 = swift_task_alloc();
        *(v0 + 4080) = v140;
        *v140 = v0;
        v140[1] = sub_116428;
        sub_C98D8(*(v0 + 3544));
        sub_11BE9C();

        return sub_3F58C();
    }

LABEL_47:
    v79 = v27;
    v47 = 1;
    v34 = 0.0;
    v48 = 1;
    goto LABEL_48;
  }

  v49 = *(v0 + 3312);
  [v49 appleExerciseTime];
  v50 = sub_11BE8C();
  *(v0 + 3848) = sub_99F0C(v50, v51, v52, v53);
  [v49 appleExerciseTimeGoal];
  v54 = sub_11BE8C();
  *(v0 + 3856) = sub_99F0C(v54, v55, v56, v57);
  v58 = [v49 activeEnergyBurned];
  if (v58)
  {
    v59 = v58;
    v60 = sub_25908(0, &qword_1CA908, NSUnitEnergy_ptr);
    sub_11C21C(v60);

    v61 = 0;
  }

  else
  {
    v61 = 1;
  }

  sub_11C0B4(v58, v61);
  v80 = sub_11C1A0();
  v81 = *(v0 + 3776);
  if (v80)
  {
    sub_8748(*(v0 + 3776), &qword_1CA8F8, &qword_176F30);
    v82 = 0.0;
  }

  else
  {
    sub_16BCFC();
    v84 = v83;
    sub_8748(v81, &qword_1CA8F8, &qword_176F30);
    v85 = sub_11BE8C();
    v82 = sub_99F0C(v85, v86, v87, v84);
  }

  *(v0 + 3864) = v82;
  v88 = [*(v0 + 3312) activeEnergyBurnedGoal];
  if (v88)
  {
    v89 = v88;
    sub_25908(0, &qword_1CA908, NSUnitEnergy_ptr);
    sub_16BCDC();

    v90 = 0;
  }

  else
  {
    v90 = 1;
  }

  v91 = *(v0 + 3760);
  v92 = *(v0 + 3752);
  sub_214C(v92, v90, 1, v11);
  sub_11B684(v92, v91);
  v93 = sub_11C1A0();
  v94 = *(v0 + 3760);
  if (v93)
  {
    sub_8748(*(v0 + 3760), &qword_1CA8F8, &qword_176F30);
    v95 = 0.0;
  }

  else
  {
    sub_16BCFC();
    v97 = v96;
    sub_8748(v94, &qword_1CA8F8, &qword_176F30);
    v98 = sub_11BE8C();
    v95 = sub_99F0C(v98, v99, v100, v97);
  }

  *(v0 + 3872) = v95;
  v101 = *(v0 + 3312);
  [v101 appleStandHours];
  v102 = sub_11BE8C();
  *(v0 + 3880) = sub_99F0C(v102, v103, v104, v105);
  [v101 appleStandHoursGoal];
  v106 = sub_11BE8C();
  *(v0 + 3888) = sub_99F0C(v106, v107, v108, v109);
  if (v93 || v80)
  {
    goto LABEL_47;
  }

  v162 = *(v0 + 3640);
  v163 = sub_16DBBC();
  *(v0 + 3896) = v163;
  sub_8B48(v163, v0 + 3088);
  *(v0 + 3904) = *(v162 + 16);
  *(v0 + 3912) = (v162 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v164 = sub_389C0();
  v165(v164);
  v166 = sub_16DBDC();
  v167 = sub_16E36C();
  if (sub_4B3A8(v167))
  {
    v168 = sub_1BA38();
    *v168 = 0;
    sub_4B3D0();
    _os_log_impl(v169, v170, v171, v172, v173, 2u);
    sub_8A2C(v168);
  }

  v174 = *(v0 + 3640);

  *(v0 + 3920) = *(v174 + 8);
  v175 = sub_C9E0();
  v176(v175);
  v177 = swift_task_alloc();
  *(v0 + 3928) = v177;
  *v177 = v0;
  v177[1] = sub_113FC4;
  sub_11BE9C();

  return sub_B0194(v178, v179, v180, v181);
}

uint64_t sub_113FC4()
{
  sub_8A88();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 3936) = v5;

  if (v0)
  {
  }

  sub_8ACC();

  return _swift_task_switch(v6);
}

uint64_t sub_1140D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_11C068();
  sub_11C0EC();
  v55 = *(v54 + 3936);
  v56 = *(v54 + 3592);
  v57 = *(v54 + 3584);
  v58 = *(v54 + 3576);
  v59 = *(v54 + 3568);
  v60 = *(v54 + 3320);
  sub_16C43C();
  (*(v58 + 16))(v57, v56, v59);
  sub_11C01C();
  sub_16C75C();
  (*(v58 + 8))(v56, v59);
  v61 = [v55 catId];
  sub_16E1BC();

  sub_C9E0();
  sub_16C76C();
  sub_11C0F8();
  v62 = sub_17970();
  v63(v62);
  sub_2D20((v54 + 2328), *(v54 + 2352));
  sub_17970();
  if (sub_16C40C())
  {
    sub_2D64((v54 + 2328));
LABEL_4:
    swift_task_alloc();
    sub_179E8();
    *(v54 + 3944) = v67;
    *v67 = v68;
    v67[1] = sub_11466C;
    sub_11BFDC();

    return sub_118DA0();
  }

  sub_11C0F8();
  v64 = sub_17970();
  v65(v64);
  sub_2D20((v54 + 2368), *(v54 + 2392));
  sub_17970();
  v66 = sub_16C3FC();
  sub_2D64((v54 + 2368));
  sub_2D64((v54 + 2328));
  if (v66)
  {
    goto LABEL_4;
  }

  sub_11C0F8();
  v71 = sub_17970();
  v72(v71);
  sub_2D20((v54 + 2808), *(v54 + 2832));
  sub_17970();
  v73 = sub_16C41C();
  sub_2D64((v54 + 2808));
  if (v73)
  {
    v74 = *(v54 + 3936);
    v75 = *(v54 + 3320);
    sub_8388(v60 + 48, v54 + 24);
    *(v54 + 88) = &type metadata for WellnessCATProvider;
    *(v54 + 96) = &off_1BD5D8;
    sub_11C1CC();
    v76 = swift_allocObject();
    *(v54 + 64) = v76;
    *(v76 + 16) = 0u;
    *(v76 + 32) = 0u;
    sub_8284(v75 + 88, v54 + 104);
    *(v54 + 16) = 249;
    *(v54 + 264) = 0;
    sub_2D20((v75 + 256), *(v75 + 280));
    *(v54 + 3968) = sub_2440(&qword_1C5ED8, &unk_173090);
    v77 = swift_allocObject();
    *(v54 + 3976) = v77;
    *(v77 + 16) = xmmword_170F70;
    *(v77 + 32) = v74;
    v78 = v74;
    swift_task_alloc();
    sub_179E8();
    *(v54 + 3984) = v79;
    *v79 = v80;
    v79[1] = sub_115530;
    sub_11BFDC();

    return dispatch thunk of ResponseGenerating.makeResponseOutput(dialog:outputGenerationManifest:)(v81, v82, v83, v84, v85);
  }

  else
  {
    v87 = *(v54 + 3936);
    sub_8284(*(v54 + 3320) + 88, v54 + 1752);
    sub_82E0();
    v99 = sub_16C32C();

    sub_8334(v54 + 1752);
    v88 = sub_C9F8();
    v89(v88);
    sub_11BA8C();
    sub_11BC88(v90);

    sub_11BF74();
    sub_11BFDC();

    return v93(v91, v92, v93, v94, v95, v96, v97, v98, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v99, a51, a52, a53, a54);
  }
}

uint64_t sub_11466C()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_114778(uint64_t a1)
{
  v2 = v1[280];
  if (!v2)
  {
    v40 = v1[488];
    sub_1B9B4(a1, (v1 + 383));
    v41 = sub_38408();
    v40(v41);
    v42 = sub_16DBDC();
    v43 = sub_16E36C();
    if (sub_1BA1C(v43))
    {
      v44 = sub_1BA38();
      sub_1BA50(v44);
      sub_1B9D0(&def_259DC, v45, v46, "Call to getLabels() returned nil, returning GenericErrorFlow");
      sub_1BA00();
    }

    v47 = v1[492];
    v48 = v1[490];
    v67 = v1[453];
    v49 = v1[451];
    v50 = v1[450];
    v51 = v1[415];

    v52 = sub_C9F8();
    v48(v52);
    sub_8284(v51 + 88, (v1 + 179));
    sub_82E0();
    sub_16C32C();

    sub_8334((v1 + 179));
    (*(v49 + 8))(v67, v50);
    sub_11BA8C();

    sub_5D948();
    sub_11C360();

    __asm { BRAA            X2, X16 }
  }

  v3 = v1[281];
  v66 = v1[283];
  v68 = v1[282];
  v64 = v1[279];
  v65 = v1[284];
  v4 = v1[286];
  v60 = v1[287];
  v61 = v1[285];
  v5 = v1[288];
  v6 = v1[289];
  v7 = v1[290];
  v8 = v1[481];
  v1[329] = &type metadata for WellnessFeatureFlagsKey;
  v1[330] = sub_3736C();
  *(v1 + 2608) = 4;
  v62 = sub_16C86C();
  v9 = sub_2D64(v1 + 326);
  if ((v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (*(v1 + 481) <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  sub_11BF64();
  if (!v11)
  {
    goto LABEL_38;
  }

  v59 = v3;
  v1[403] = v10;
  v12 = sub_16E68C();
  sub_11C120(v12, v13);
  sub_11C1BC();
  if (!(v11 ^ v15 | v14))
  {
    goto LABEL_39;
  }

  if (*(v1 + 482) <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  sub_11BF64();
  if (!v11)
  {
    goto LABEL_41;
  }

  v17 = v1[483];
  v1[404] = v16;
  v76._countAndFlagsBits = sub_16E68C();
  sub_16E26C(v76);

  if ((~v17 & 0x7FF0000000000000) == 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (*(v1 + 483) <= -9.22337204e18)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  sub_11BF64();
  if (!v11)
  {
    goto LABEL_44;
  }

  v19 = v1[484];
  v1[405] = v18;
  v20 = sub_16E68C();
  sub_11C120(v20, v21);
  if ((~v19 & 0x7FF0000000000000) == 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (*(v1 + 484) <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  sub_11BF64();
  if (!v11)
  {
    goto LABEL_47;
  }

  v1[406] = v22;
  v77._countAndFlagsBits = sub_16E68C();
  sub_16E26C(v77);

  sub_11C1BC();
  if (!(v11 ^ v15 | v14))
  {
    goto LABEL_48;
  }

  if (*(v1 + 485) <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  sub_11BF64();
  if (!v11)
  {
    goto LABEL_50;
  }

  v1[407] = v23;
  v24 = sub_16E68C();
  sub_11C120(v24, v25);
  sub_11C1BC();
  if (!(v11 ^ v15 | v14))
  {
    goto LABEL_51;
  }

  v26 = *(v1 + 486);
  if (v26 <= -9.22337204e18)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v26 >= 9.22337204e18)
  {
LABEL_53:
    __break(1u);
    return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v9);
  }

  v58 = v1[492];
  v27 = v1[485];
  v56 = v7;
  v28 = v1[484];
  v29 = v1[483];
  v30 = v1[482];
  v31 = v1[481];
  v57 = v1[415];
  v1[408] = v26;
  v78._countAndFlagsBits = sub_16E68C();
  sub_16E26C(v78);

  v63 = v62 & 1;
  v1[97] = v30;
  *(v1 + 784) = 0;
  *(v1 + 785) = *v69;
  *(v1 + 197) = *&v69[3];
  v1[99] = v31;
  *(v1 + 801) = *v70;
  *(v1 + 205) = *&v71[3];
  *(v1 + 817) = *v71;
  *(v1 + 209) = *&v72[3];
  *(v1 + 833) = *v72;
  *(v1 + 213) = *&v73[3];
  *(v1 + 849) = *v73;
  *(v1 + 217) = *(&v74 + 3);
  *(v1 + 865) = v74;
  *(v1 + 800) = 0;
  *(v1 + 201) = *&v70[3];
  v1[101] = v28;
  *(v1 + 259) = *&v69[3];
  *(v1 + 1033) = *v69;
  *(v1 + 816) = 0;
  v1[103] = v29;
  *(v1 + 1049) = *v70;
  *(v1 + 832) = 0;
  *(v1 + 105) = v26;
  *(v1 + 848) = 0;
  v1[107] = v27;
  *(v1 + 1032) = 0;
  *(v1 + 864) = 0;
  v1[109] = v64;
  v1[110] = v2;
  v1[111] = v74;
  v1[112] = v75;
  v1[113] = v59;
  v1[114] = v68;
  v1[115] = v66;
  v1[116] = v65;
  v1[117] = v74;
  v1[118] = v75;
  v1[119] = v61;
  v1[120] = v4;
  v1[121] = v60;
  v1[122] = v5;
  v1[123] = v74;
  v1[124] = v75;
  v1[125] = v6;
  v1[126] = v56;
  *(v1 + 1016) = v63;
  v1[128] = v30;
  v1[130] = v31;
  *(v1 + 1048) = 0;
  *(v1 + 263) = *&v70[3];
  v1[132] = v28;
  *(v1 + 1064) = 0;
  *(v1 + 1065) = *v71;
  *(v1 + 267) = *&v71[3];
  v1[134] = v29;
  *(v1 + 1080) = 0;
  *(v1 + 1081) = *v72;
  *(v1 + 271) = *&v72[3];
  *(v1 + 136) = v26;
  *(v1 + 1096) = 0;
  *(v1 + 1097) = *v73;
  *(v1 + 275) = *&v73[3];
  v1[138] = v27;
  *(v1 + 1112) = 0;
  *(v1 + 1113) = v74;
  *(v1 + 279) = *(&v74 + 3);
  v1[140] = v64;
  v1[141] = v2;
  v1[142] = v74;
  v1[143] = v75;
  v1[144] = v59;
  v1[145] = v68;
  v1[146] = v66;
  v1[147] = v65;
  v1[148] = v74;
  v1[149] = v75;
  v1[150] = v61;
  v1[151] = v4;
  v1[152] = v60;
  v1[153] = v5;
  v1[154] = v74;
  v1[155] = v75;
  v1[156] = v6;
  v1[157] = v56;
  *(v1 + 1264) = v63;
  sub_13E04((v1 + 97), (v1 + 66));
  sub_F6D4((v1 + 128));
  sub_2D20((v57 + 256), *(v57 + 280));
  v1[319] = type metadata accessor for WellnessSnippets(0);
  sub_11C004();
  v1[320] = sub_11B9B4(v32, v33, &protocol conformance descriptor for WellnessSnippets);
  v34 = sub_9910(v1 + 316);
  memcpy(v34, v1 + 97, 0xF1uLL);
  sub_1069FC();
  swift_storeEnumTagMultiPayload();
  sub_2440(&qword_1C5ED8, &unk_173090);
  v35 = swift_allocObject();
  v1[494] = v35;
  *(v35 + 16) = xmmword_170F70;
  *(v35 + 32) = v58;
  v36 = v58;
  swift_task_alloc();
  sub_179E8();
  v1[495] = v37;
  *v37 = v38;
  v37[1] = sub_115170;
  sub_11C360();

  return dispatch thunk of ResponseGenerating.makeResponseOutput(resultModel:dialog:outputGenerationManifest:)(v9);
}

uint64_t sub_115170()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 2528));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_115270()
{
  v1 = *(v0 + 3936);
  sub_8388(v0 + 2568, v0 + 2488);
  sub_387F4();
  v2 = swift_allocObject();
  sub_17464((v0 + 2488), v2 + 16);
  sub_16C73C();
  sub_16C1DC();
  swift_allocObject();
  *(v0 + 3296) = sub_384FC();
  v7 = sub_16C32C();

  sub_2D64((v0 + 2568));
  v3 = sub_98BD8();
  v4(v3);

  sub_11BB5C();
  sub_11BD94();

  sub_5D948();

  return v5(v7);
}

uint64_t sub_115530()
{
  sub_8A88();
  sub_C9D4();
  v1 = *v0;
  sub_C990();
  *v2 = v1;

  v3 = sub_17960();

  return _swift_task_switch(v3);
}

uint64_t sub_115630()
{
  v1 = *(v0 + 3896);
  v27 = *(v0 + 3904);
  v2 = *(v0 + 3320);
  sub_8388(v0 + 2768, v0 + 2728);
  sub_387F4();
  v3 = swift_allocObject();
  sub_17464((v0 + 2728), v3 + 16);
  sub_16C73C();
  v4 = sub_16C1DC();
  sub_11C1E4(v4);
  v5 = sub_384FC();
  sub_2D20((v2 + 48), *(v2 + 72));
  v6 = sub_A76B4();
  v7(v6);
  sub_11C1CC();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_172320;
  *(v0 + 3304) = v5;
  *(v8 + 32) = sub_16C32C();
  sub_3BC6C();
  *(v8 + 40) = sub_16C32C();
  sub_16D6DC();
  swift_allocObject();
  v26 = sub_16D6CC();
  sub_8B48(v1, v0 + 3016);
  v9 = sub_C9E0();
  v27(v9);
  v10 = sub_16DBDC();
  v11 = sub_16E36C();
  if (sub_4B3A8(v11))
  {
    v12 = sub_1BA38();
    *v12 = 0;
    sub_4B3D0();
    _os_log_impl(v13, v14, v15, v16, v17, 2u);
    sub_8A2C(v12);
  }

  v18 = *(v0 + 3936);
  v19 = *(v0 + 3624);
  v20 = *(v0 + 3608);
  v21 = *(v0 + 3600);

  v22 = sub_C9E0();
  v23(v22);
  *(v0 + 3272) = v26;
  sub_11B9B4(&qword_1C6868, &type metadata accessor for SequenceFlow, &protocol conformance descriptor for SequenceFlow);
  v28 = sub_16C32C();

  sub_2D64((v0 + 2768));
  (*(v20 + 8))(v19, v21);
  sub_3BCC0(v0 + 16);

  sub_11BB5C();
  sub_11BBF0();

  sub_5D948();

  return v24(v28);
}

uint64_t sub_115AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_11C068();
  sub_11C0EC();
  v55 = v54[488];
  sub_1B9B4(v56, (v54 + 374));
  v57 = sub_38408();
  v55(v57);
  v58 = sub_16DBDC();
  v59 = sub_16E37C();
  if (sub_1BA1C(v59))
  {
    v60 = sub_1BA38();
    sub_1BA50(v60);
    sub_1B9D0(&def_259DC, v61, v62, "Couldn't create dialog for multiple ring query.");
    sub_1BA00();
  }

  v63 = v54[490];
  v64 = v54[415];

  v65 = sub_C9F8();
  v63(v65);
  sub_8284(v64 + 88, (v54 + 259));
  sub_82E0();
  v76 = sub_16C32C();
  sub_8334((v54 + 259));
  sub_11BA8C();
  sub_11BC88(v66);

  sub_11BF74();
  sub_11BFDC();

  return v69(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v76, a51, a52, a53, a54);
}

uint64_t sub_115D90()
{
  sub_C9EC();
  v3 = v2;
  sub_C9D4();
  v5 = v4;
  sub_38388();
  *v6 = v5;
  v7 = *v1;
  sub_C990();
  *v8 = v7;
  *(v5 + 4056) = v0;

  if (!v0)
  {
    *(v5 + 4064) = v3;
  }

  sub_8ACC();

  return _swift_task_switch(v9);
}

uint64_t sub_115EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_11C068();
  sub_11C0EC();
  v55 = v54[508];
  v56 = v54[452];
  v57 = v54[451];
  v74 = v54[450];
  v58 = v54[449];
  v59 = v54[448];
  v60 = v54[447];
  v61 = v54[446];
  v62 = v54[415];
  sub_11C044(v54[445]);
  swift_bridgeObjectRelease_n();
  sub_16C43C();
  (*(v60 + 16))(v59, v58, v61);
  sub_11C01C();
  sub_16C75C();
  (*(v60 + 8))(v58, v61);
  v63 = [v55 patternId];
  sub_16E1BC();

  sub_4B4EC();
  sub_16C76C();
  sub_2D20((v62 + 88), *(v62 + 112));
  v54[410] = sub_16C2FC();
  sub_16C28C();
  v75 = sub_16C32C();

  (*(v57 + 8))(v56, v74);

  sub_11BA8C();
  sub_11BC88(v64);

  sub_11BF74();
  sub_11BFDC();

  return v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, v74, v75, a51, a52, a53, a54);
}

uint64_t sub_1161E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_11C068();
  sub_11C0EC();
  v55 = *(v54 + 3320);
  sub_11C044(*(v54 + 3560));

  sub_8284(v55 + 88, v54 + 1592);
  sub_82E0();
  v66 = sub_16C32C();
  sub_8334(v54 + 1592);
  sub_11BA8C();
  sub_11BC88(v56);

  sub_11BF74();
  sub_11BFDC();

  return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v66, a51, a52, a53, a54);
}

uint64_t sub_116428()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  sub_C990();
  *v6 = v5;
  *v6 = *v1;

  v7 = *(v4 + 3544);
  if (v0)
  {
  }

  else
  {
    *(v5 + 4088) = v3;
  }

  sub_8748(v7, &qword_1C5800, &unk_16F510);
  sub_8ACC();

  return _swift_task_switch(v8);
}

uint64_t sub_11658C()
{
  sub_386A8();
  v1[512] = v1[511];
  sub_11C2AC();
  sub_16E23C();

  sub_388E4();
  sub_214C(v3, v4, v5, v0);
  if (v2)
  {
    sub_11C2EC();
    sub_8B9C();
    sub_16E23C();
  }

  sub_11C28C();
  v6 = swift_task_alloc();
  v1[513] = v6;
  *v6 = v1;
  sub_11BF30(v6);

  return sub_3F1C0();
}

uint64_t sub_116658()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *v5 = *v1;

  if (v0)
  {
  }

  else
  {
    *(v4 + 4112) = v3;
  }

  sub_11C140();
  sub_11C184();
  sub_8ACC();

  return _swift_task_switch(v6);
}

uint64_t sub_1167D0()
{
  v223 = v0;
  v1 = *(v0 + 4112);
  if (!v1)
  {

    v25 = 0;
    goto LABEL_17;
  }

  v2 = [v1 dialog];
  *(v0 + 4120) = sub_25908(0, &qword_1C6E48, DialogElement_ptr);
  v3 = sub_16E2CC();

  if (!sub_3B35C(v3))
  {

LABEL_15:

    goto LABEL_16;
  }

  sub_11C0A8();
  sub_3B360();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = sub_11C238();
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;
  v6 = *(v0 + 4096);
  v7 = *(v0 + 3440);

  v8 = [v5 fullPrint];

  sub_16E1BC();
  sub_16E23C();

  v9 = *(v7 + 32);
  v10 = sub_387CC();
  v9(v10);
  if (!v6)
  {
    v26 = sub_11C278();
    v27(v26);
    goto LABEL_15;
  }

  v11 = [*(v0 + 4096) dialog];
  v12 = sub_16E2CC();

  if (!sub_3B35C(v12))
  {
    v41 = sub_11C278();
    v42(v41);

    goto LABEL_15;
  }

  sub_11C0A8();
  sub_3B360();
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = sub_457FC();
  }

  else
  {
    v13 = *(v12 + 32);
  }

  v14 = v13;
  v15 = *(v0 + 268);

  v16 = [v14 fullPrint];

  sub_16E1BC();
  sub_16E23C();

  v17 = sub_C9E0();
  v18 = (v9)(v17);
  if (v15 & 1) != 0 || (*(v0 + 267))
  {
    v19 = *(v0 + 3488);
    v20 = *(v0 + 3440);
    v21 = *(v0 + 3432);

    v22 = *(v20 + 8);
    v23 = sub_C9F8();
    v22(v23);
    v24 = (v22)(v19, v21);
LABEL_16:
    v25 = *(v0 + 4112);
LABEL_17:
    v28 = *(v0 + 4016);
    sub_1B9B4(v24, v0 + 3136);
    v29 = sub_38408();
    v28(v29);
    v30 = sub_16DBDC();
    v31 = sub_16E37C();
    if (sub_1BA1C(v31))
    {
      v32 = sub_1BA38();
      sub_1BA50(v32);
      sub_1B9D0(&def_259DC, v33, v34, "#GetActivitySummaryFlow: Unable to get the ring unit label");
      sub_1BA00();
    }

    v35 = *(v0 + 4096);
    v36 = *(v0 + 4032);
    v37 = *(v0 + 3320);

    v38 = sub_C9F8();
    v36(v38);
    sub_8284(v37 + 88, v0 + 1912);
    sub_82E0();
    sub_16C32C();

    sub_8334(v0 + 1912);
    sub_11BA8C();

    sub_5D948();
    sub_11C33C();

    __asm { BRAA            X2, X16 }
  }

  v43 = *(v0 + 4016);
  sub_1B9B4(v18, v0 + 2968);
  v44 = sub_38408();
  v43(v44);
  v45 = sub_1069FC();
  v221 = v46;
  v46(v45);
  v47 = sub_16DBDC();
  v48 = sub_16E36C();
  v49 = os_log_type_enabled(v47, v48);
  v50 = *(v0 + 4032);
  v51 = *(v0 + 3696);
  v52 = *(v0 + 3632);
  v53 = *(v0 + 3440);
  if (v49)
  {
    sub_8BD8();
    v213 = v52;
    v54 = sub_A75B8();
    v222[0] = v54;
    *v51 = 136315138;
    v211 = v50;
    v55 = sub_16D5BC();
    v57 = v56;
    v208 = v48;
    v58 = *(v53 + 8);
    v59 = sub_4B364();
    v58(v59);
    v60 = sub_3AB7C(v55, v57, v222);

    *(v51 + 4) = v60;
    sub_11C30C(&def_259DC, v47, v208, "#GetActivitySummaryFlow: Ring unit label is: %s", v206);
    sub_2D64(v54);
    sub_8A2C(v54);
    sub_A76C0();

    v61 = v211(v51, v213);
  }

  else
  {

    v58 = *(v53 + 8);
    v62 = sub_4B364();
    v58(v62);
    v61 = v50(v51, v52);
  }

  *(v0 + 4128) = v58;
  v63 = *(v0 + 4016);
  sub_1B9B4(v61, v0 + 2872);
  v64 = sub_38408();
  v63(v64);
  v65 = sub_1069FC();
  v221(v65);
  v66 = sub_16DBDC();
  v67 = sub_16E36C();
  v68 = sub_84370(v67);
  v69 = *(v0 + 4032);
  v70 = *(v0 + 3688);
  v218 = v58;
  v71 = *(v0 + 3632);
  if (v68)
  {
    sub_8BD8();
    v212 = v71;
    v72 = sub_A75B8();
    v222[0] = v72;
    *v70 = 136315138;
    v73 = sub_16D5BC();
    v209 = v69;
    v75 = v74;
    v76 = sub_4B364();
    v77(v76);
    v78 = sub_3AB7C(v73, v75, v222);

    *(v70 + 4) = v78;
    sub_11C30C(&def_259DC, v66, v67, "#GetActivitySummaryFlow: Ring label is: %s", v206);
    sub_2D64(v72);
    sub_8A2C(v72);
    sub_A76C0();

    v209(v70, v212);
  }

  else
  {

    v79 = sub_4B364();
    v58(v79);
    v69(v70, v71);
  }

  v80 = *(v0 + 4000);
  v81 = *(v0 + 3992);
  v82 = *(v0 + 3424);
  v83 = *(v0 + 3400);
  v207 = *(v0 + 3384);
  v84 = *(v0 + 3352);
  v85 = *(v0 + 3344);
  v210 = *(v0 + 3336);
  v214 = *(v0 + 3328);
  v215 = *(v0 + 3360);
  v86 = *(v0 + 265);
  (v221)(v82, *(v0 + 3472), *(v0 + 3432));
  v87 = sub_25948(v86);
  v89 = v88;
  v90 = sub_208C0(v86);
  v91 = (v82 + *(v83 + 20));
  *v91 = v87;
  v91[1] = v89;
  v92 = (v82 + *(v83 + 24));
  *v92 = v90;
  v92[1] = v93;
  v94 = sub_8B9C();
  v96 = sub_99F0C(v94, v95, v86, v80);
  v97 = sub_8B9C();
  v99 = sub_99F0C(v97, v98, v86, v81);

  sub_16D4EC();
  sub_16BF4C();
  v100 = sub_16D47C();
  (*(v85 + 8))(v84, v210);
  v101 = sub_16D5BC();
  v103 = v102;
  sub_11BD14();
  sub_11B7BC(v82, v214, v104);
  sub_388E4();
  sub_214C(v105, v106, v107, v83);
  *(v207 + 72) = 0;
  *(v207 + 80) = 0;
  v108 = *(v215 + 44);
  sub_8AB4();
  sub_214C(v109, v110, v111, v83);
  v112 = trunc(v96);
  v113 = *(v0 + 3384);
  if (v96 > -9.22337204e18 && v96 < 9.22337204e18 && v96 == v112)
  {
    *v113 = v96;
  }

  else
  {
    *v113 = 0;
  }

  if (v99 <= -9.22337204e18)
  {
    v117 = 0;
  }

  else
  {
    v116 = v99 == trunc(v99) && v99 < 9.22337204e18;
    v117 = v99;
    if (!v116)
    {
      v117 = 0;
    }
  }

  v118 = *(v0 + 3520);
  v119 = *(v0 + 3432);
  v120 = *(v0 + 3384);
  v121 = *(v0 + 3328);
  v120[1] = v117;
  v120[2] = v100;
  v120[7] = v101;
  v120[8] = v103;
  sub_5FF8C(v121, v207 + v108);
  sub_16D45C();
  v122 = sub_369C(v118, 1, v119);
  v123 = *(v0 + 3520);
  if (v122 == 1)
  {
    sub_8748(*(v0 + 3520), &qword_1C5800, &unk_16F510);
    v124 = 0;
    v125 = 0;
  }

  else
  {
    v126 = *(v0 + 3432);
    v127 = sub_16D5BC();
    v129 = v128;
    v218(v123, v126);
    *(v0 + 3160) = v127;
    *(v0 + 3168) = v129;
    sub_9854();
    v124 = sub_16E3FC();
    v125 = v130;
  }

  v131 = *(v0 + 3512);
  v132 = *(v0 + 3432);
  v133 = *(v0 + 3384);
  *(v133 + 24) = v124;
  *(v133 + 32) = v125;
  sub_16D46C();
  v134 = sub_369C(v131, 1, v132);
  v135 = *(v0 + 3512);
  if (v134 == 1)
  {
    sub_8748(*(v0 + 3328), &dword_1C63F8, &qword_171800);
    sub_8748(v135, &qword_1C5800, &unk_16F510);
    v136 = 0;
    v137 = 0;
  }

  else
  {
    v138 = *(v0 + 3328);
    v136 = sub_16D5BC();
    v137 = v139;
    sub_8748(v138, &dword_1C63F8, &qword_171800);
    v140 = sub_389C0();
    (v218)(v140);
  }

  v141 = *(v0 + 4016);
  v142 = *(v0 + 4008);
  v143 = *(v0 + 3680);
  v144 = *(v0 + 3632);
  v145 = *(v0 + 3392);
  v146 = *(v0 + 3384);
  v147 = *(v0 + 3376);
  *(v146 + 40) = v136;
  *(v146 + 48) = v137;
  v148 = sub_11B758(v146, v145);
  sub_1B9B4(v148, v0 + 2848);
  v141(v143, v142, v144);
  sub_11BD5C();
  sub_11B7BC(v145, v147, v149);
  v150 = sub_16DBDC();
  v151 = sub_16E36C();
  v152 = sub_84370(v151);
  v153 = *(v0 + 4032);
  v154 = *(v0 + 3680);
  v155 = *(v0 + 3632);
  v156 = *(v0 + 3376);
  if (v152)
  {
    v157 = *(v0 + 3368);
    v219 = *(v0 + 4032);
    v158 = sub_8BD8();
    v216 = v154;
    v159 = sub_CA30();
    v222[0] = v159;
    *v158 = 136315138;
    sub_11BD5C();
    sub_11B7BC(v156, v157, v160);
    sub_A76B4();
    sub_16E1EC();
    sub_11BCFC();
    sub_11B818(v156, v161);
    v162 = sub_A76B4();
    v165 = sub_3AB7C(v162, v163, v164);

    *(v158 + 4) = v165;
    sub_11C2CC(&def_259DC, v166, v167, "#GetActivitySummaryFlow: snippet model is %s");
    sub_2D64(v159);
    sub_A76C0();
    sub_89F4();

    v168 = v219(v216, v155);
  }

  else
  {

    sub_11BCFC();
    sub_11B818(v156, v169);
    v168 = v153(v154, v155);
  }

  v170 = *(v0 + 4016);
  sub_1B9B4(v168, v0 + 2896);
  v171 = sub_38408();
  v170(v171);
  sub_11BD14();
  v172 = sub_387CC();
  sub_11B7BC(v172, v173, v174);
  v175 = sub_16DBDC();
  v176 = sub_16E36C();
  v177 = sub_84370(v176);
  v178 = *(v0 + 4032);
  v179 = *(v0 + 3672);
  v180 = *(v0 + 3632);
  v181 = *(v0 + 3416);
  if (v177)
  {
    v182 = *(v0 + 3408);
    v220 = *(v0 + 4032);
    v183 = sub_8BD8();
    v217 = v179;
    v184 = sub_CA30();
    v222[0] = v184;
    *v183 = 136315138;
    sub_11BD14();
    sub_11B7BC(v181, v182, v185);
    sub_A76B4();
    sub_16E1EC();
    sub_11BCE4();
    sub_11B818(v181, v186);
    v187 = sub_A76B4();
    v190 = sub_3AB7C(v187, v188, v189);

    *(v183 + 4) = v190;
    sub_11C2CC(&def_259DC, v191, v192, "#GetActivitySummaryFlow: snippet header model is %s");
    sub_2D64(v184);
    sub_A76C0();
    sub_89F4();

    v220(v217, v180);
  }

  else
  {

    sub_11BCE4();
    sub_11B818(v181, v193);
    v178(v179, v180);
  }

  v194 = *(v0 + 3432);
  v195 = *(v0 + 3392);
  sub_208C0(*(v0 + 265));
  sub_16E23C();

  sub_388E4();
  sub_214C(v196, v197, v198, v194);
  sub_118D44(*v195);
  sub_118D44(v195[1]);
  v199 = sub_C9E0();
  v221(v199);
  sub_388E4();
  sub_214C(v200, v201, v202, v194);
  v203 = swift_task_alloc();
  *(v0 + 4136) = v203;
  *v203 = v0;
  v203[1] = sub_11777C;
  sub_C98D8(*(v0 + 3504));
  sub_11C33C();

  return sub_B04A4();
}

uint64_t sub_11777C()
{
  sub_C9EC();
  v3 = v2;
  v4 = *v1;
  sub_C990();
  *v5 = v4;
  *v5 = *v1;

  if (v0)
  {
  }

  else
  {
    *(v4 + 4144) = v3;
  }

  sub_11C140();
  sub_11C184();
  sub_8ACC();

  return _swift_task_switch(v6);
}

uint64_t sub_1178F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t (*a48)(uint64_t, uint64_t), uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62)
{
  sub_11C068();
  a61 = v66;
  a62 = v67;
  sub_11C0EC();
  a60 = v62;
  v68 = v62[518];
  v62[519] = v68;
  v69 = v62[502];
  v70 = v62[501];
  v71 = v62[458];
  v72 = v62[454];
  sub_1B9B4(v73, (v62 + 368));
  v69(v71, v70, v72);
  v74 = v68;
  v75 = sub_16DBDC();
  v76 = sub_16E36C();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = sub_8BD8();
    v118 = sub_CA30();
    a50 = v118;
    *v77 = 136315138;
    if (v74)
    {
      v78 = [v74 dialog];
      v79 = sub_16E2CC();

      if (sub_3B35C(v79))
      {
        sub_3B360();
        if ((v79 & 0xC000000000000001) != 0)
        {
          v80 = sub_457FC();
        }

        else
        {
          v80 = *(v79 + 32);
        }

        v81 = v80;

        v82 = [v81 fullPrint];

        v83 = sub_16E1BC();
        v65 = v84;

LABEL_13:
        a47 = v62[458];
        a48 = v62[504];
        v63 = v62[455];
        v64 = v62[454];
        v62[397] = v83;
        v62[398] = v65;
        sub_2440(&qword_1C69C8, &qword_174150);
        v95 = sub_16E3DC();
        v97 = v96;

        v98 = sub_3AB7C(v95, v97, &a50);

        *(v77 + 4) = v98;
        _os_log_impl(&def_259DC, v75, v76, "#GetActivitySummaryFlow: dialog is %s", v77, 0xCu);
        sub_2D64(v118);
        sub_8A2C(v118);
        sub_89F4();

        a48(a47, v64);
        if (!v74)
        {
          goto LABEL_14;
        }

        goto LABEL_8;
      }
    }

    v83 = 0;
    v65 = 0;
    goto LABEL_13;
  }

  v77 = v62[504];

  v85 = sub_389C0();
  (v77)(v85);
  if (!v74)
  {
LABEL_14:
    sub_11C034();
    v99 = v62[457];
    v100 = v62[454];
    sub_1B9B4(v101, (v62 + 380));
    v102 = sub_38408();
    (v77)(v102);
    sub_16DBDC();
    v103 = sub_16E37C();
    if (sub_1BA1C(v103))
    {
      v104 = sub_1BA38();
      sub_1BA50(v104);
      sub_1B9D0(&def_259DC, v105, v106, "Couldn't create activity summary dialog");
      sub_1BA00();
    }

    sub_11BF84();
    v107 = sub_4B4EC();
    v63(v107);
    sub_8284(v64 + 88, (v62 + 159));
    sub_82E0();
    v119 = sub_16C32C();

    sub_8334((v62 + 159));
    sub_11BCFC();
    sub_11B818(a43, v108);
    sub_11BCE4();
    sub_11B818(a45, v109);
    v65(a47, v100);
    v65(a48, v100);
    sub_11BB5C();
    sub_11BBF0();
    sub_11BEC8();

    sub_5D948();
    sub_11BFDC();

    return v112(v110, v111, v112, v113, v114, v115, v116, v117, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, v119, a50, a51, a52, a53, a54);
  }

LABEL_8:
  v62[304] = type metadata accessor for WellnessSnippets(0);
  sub_11C004();
  v62[305] = sub_11B9B4(v86, v87, &protocol conformance descriptor for WellnessSnippets);
  sub_9910(v62 + 301);
  sub_11BD5C();
  v88 = sub_389C0();
  sub_11B7BC(v88, v89, v90);
  swift_storeEnumTagMultiPayload();
  swift_task_alloc();
  sub_179E8();
  v62[520] = v91;
  *v91 = v92;
  v91[1] = sub_117ED4;
  sub_11BFDC();

  return sub_672C0();
}

uint64_t sub_117ED4()
{
  sub_8A88();
  sub_C9D4();
  v2 = v1;
  sub_38388();
  *v3 = v2;
  v4 = *v0;
  sub_C990();
  *v5 = v4;

  sub_2D64((v2 + 2408));
  v6 = sub_17960();

  return _swift_task_switch(v6);
}

uint64_t sub_117FB8()
{
  v1 = *(v0 + 4152);
  v2 = *(v0 + 4128);
  v3 = *(v0 + 4112);
  v4 = *(v0 + 4096);
  v14 = *(v0 + 3472);
  v15 = *(v0 + 3488);
  v5 = *(v0 + 3432);
  v13 = *(v0 + 3424);
  v6 = *(v0 + 3392);
  sub_8388(v0 + 2688, v0 + 2448);
  sub_387F4();
  v7 = swift_allocObject();
  sub_17464((v0 + 2448), v7 + 16);
  sub_16C73C();
  v8 = sub_16C1DC();
  sub_11C1E4(v8);
  *(v0 + 3288) = sub_384FC();
  v16 = sub_16C32C();

  sub_2D64((v0 + 2688));
  sub_11BCFC();
  sub_11B818(v6, v9);
  sub_11BCE4();
  sub_11B818(v13, v10);
  v2(v14, v5);
  v2(v15, v5);

  sub_11BB5C();
  sub_11BD94();

  sub_5D948();

  return v11(v16);
}

uint64_t sub_1182C8()
{
  sub_386A8();
  *(v1 + 4096) = 0;
  sub_11C2AC();
  sub_16E23C();

  sub_388E4();
  sub_214C(v3, v4, v5, v0);
  if (v2)
  {
    sub_11C2EC();
    sub_8B9C();
    sub_16E23C();
  }

  sub_11C28C();
  v6 = swift_task_alloc();
  *(v1 + 4104) = v6;
  *v6 = v1;
  sub_11BF30(v6);

  return sub_3F1C0();
}

uint64_t sub_118390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_11C068();
  sub_11C0EC();

  sub_11C034();
  sub_1B9B4(v56, (v54 + 392));
  v57 = sub_38408();
  v55(v57);
  v58 = sub_16DBDC();
  v59 = sub_16E37C();
  if (sub_1BA1C(v59))
  {
    v60 = sub_1BA38();
    sub_1BA50(v60);
    sub_1B9D0(&def_259DC, v61, v62, "#GetActivitySummaryFlow: Unable to get the ring unit label");
    sub_1BA00();
  }

  v63 = v54[512];
  v64 = v54[504];
  v65 = v54[415];

  v66 = sub_C9F8();
  v64(v66);
  sub_8284(v65 + 88, (v54 + 239));
  sub_82E0();
  v77 = sub_16C32C();

  sub_8334((v54 + 239));
  sub_11BA8C();
  sub_11BC88(v67);

  sub_11BF74();
  sub_11BFDC();

  return v70(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, v77, a51, a52, a53, a54);
}

uint64_t sub_118638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  sub_11C068();
  a61 = v67;
  a62 = v68;
  sub_11C0EC();
  a60 = v62;
  *(v62 + 4152) = 0;
  sub_11C034();
  sub_1B9B4(v69, v62 + 2944);
  v70 = sub_38408();
  v63(v70);
  v71 = sub_16DBDC();
  v72 = sub_16E36C();
  if (sub_84370(v72))
  {
    v73 = sub_8BD8();
    v64 = sub_CA30();
    *v73 = 136315138;
    v102 = *(v62 + 4032);
    a50 = v64;
    v74 = *(v62 + 3664);
    v66 = *(v62 + 3640);
    *(v62 + 3176) = 0u;
    sub_2440(&qword_1C69C8, &qword_174150);
    v75 = sub_16E3DC();
    v65 = v76;

    v77 = sub_3AB7C(v75, v65, &a50);

    *(v73 + 4) = v77;
    _os_log_impl(&def_259DC, v71, v72, "#GetActivitySummaryFlow: dialog is %s", v73, 0xCu);
    sub_2D64(v64);
    sub_8A2C(v64);
    sub_8A2C(v73);

    v78 = sub_4B4EC();
    v102(v78);
  }

  else
  {
    v79 = *(v62 + 4032);
    v80 = *(v62 + 3664);
    v74 = *(v62 + 3640);
    v81 = *(v62 + 3632);

    v79(v80, v81);
  }

  sub_11C034();
  v82 = *(v62 + 3656);
  v83 = *(v62 + 3632);
  sub_1B9B4(v84, v62 + 3040);
  v85 = sub_38408();
  v74(v85);
  sub_16DBDC();
  v86 = sub_16E37C();
  if (sub_1BA1C(v86))
  {
    v87 = sub_1BA38();
    sub_1BA50(v87);
    sub_1B9D0(&def_259DC, v88, v89, "Couldn't create activity summary dialog");
    sub_1BA00();
  }

  sub_11BF84();
  v90 = sub_4B4EC();
  (v64)(v90);
  sub_8284(v65 + 88, v62 + 1272);
  sub_82E0();
  v103 = sub_16C32C();

  sub_8334(v62 + 1272);
  sub_11BCFC();
  sub_11B818(a43, v91);
  sub_11BCE4();
  sub_11B818(a45, v92);
  v66(a47, v83);
  v66(a48, v83);
  sub_11BB5C();
  sub_11BBF0();
  sub_11BEC8();

  sub_5D948();
  sub_11BFDC();

  return v95(v93, v94, v95, v96, v97, v98, v99, v100, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, v103, a50, a51, a52, a53, a54);
}

BOOL sub_118A5C(unsigned __int8 a1, double a2, double a3, double a4)
{
  if (!a1 || a1 == 199)
  {
    v7 = a2 == 0.0;
    if (a3 == 0.0)
    {
      v7 = 1;
    }

    return a4 == 0.0 || v7;
  }

  else
  {
    v4 = a2 == 0.0;
    v5 = a4 == 0.0;
    if (a1 != 4)
    {
      v5 = 0;
    }

    if (a1 != 91)
    {
      v4 = v5;
    }

    if (a1 == 90)
    {
      return a3 == 0.0;
    }

    else
    {
      return v4;
    }
  }
}

uint64_t sub_118ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v35 = a5;
  v36 = a6;
  v34 = a4;
  v9 = sub_16BF5C();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2440(&qword_1C5800, &unk_16F510);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  sub_208C0(a2);
  sub_16E23C();

  v19 = sub_16D5CC();
  sub_214C(v18, 0, 1, v19);
  v20 = type metadata accessor for WellnessQueryingRingsParameters(0);
  sub_8640(v18, a1 + v20[5]);
  sub_16D4EC();
  sub_16BF4C();
  v21 = sub_16D47C();
  (*(v10 + 8))(v12, v9);
  v22 = v20[6];

  *(a1 + v22) = v21;
  v23 = *a3;
  v24 = *(a3 + 8);
  v25 = v34;
  v26 = v35;
  if ((v24 & 1) == 0)
  {
    v23 = sub_99F0C(v34, v35, a2, v23);
  }

  v27 = a1 + v20[11];
  *v27 = v23;
  *(v27 + 8) = v24;
  v28 = *v36;
  v29 = *(v36 + 8);
  if ((v29 & 1) == 0)
  {
    v28 = sub_99F0C(v25, v26, a2, v28);
  }

  v30 = a1 + v20[8];
  *v30 = v28;
  *(v30 + 8) = v29;
  if (v26)
  {
    sub_16E23C();
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  sub_214C(v16, v31, 1, v19);
  return sub_8640(v16, a1 + v20[12]);
}

uint64_t sub_118D44(uint64_t result)
{
  v1 = result;
  if (result >= 9.22337204e18)
  {
    *&result = 0.0;
    return result;
  }

  if ((~*&v1 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  if (v1 == result)
  {
    *&result = result;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_118DA0()
{
  sub_8A88();
  *(v1 + 592) = v2;
  *(v1 + 200) = v3;
  *(v1 + 208) = v0;
  *(v1 + 184) = v4;
  *(v1 + 192) = v5;
  v6 = sub_16DBEC();
  *(v1 + 216) = v6;
  sub_888C(v6);
  *(v1 + 224) = v7;
  *(v1 + 232) = sub_8C38();
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  v8 = sub_2440(&qword_1C5800, &unk_16F510);
  sub_4348(v8);
  *(v1 + 288) = sub_8C38();
  *(v1 + 296) = swift_task_alloc();
  *(v1 + 304) = swift_task_alloc();
  *(v1 + 312) = swift_task_alloc();
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  *(v1 + 344) = swift_task_alloc();
  *(v1 + 352) = swift_task_alloc();
  v9 = sub_17960();

  return _swift_task_switch(v9);
}

uint64_t sub_118F20()
{
  sub_8A88();
  v0[45] = *(v0[26] + 304);
  sub_11C250();
  sub_16E23C();
  v0[46] = sub_16D5CC();
  sub_388E4();
  sub_214C(v1, v2, v3, v4);
  v5 = swift_task_alloc();
  v0[47] = v5;
  *v5 = v0;
  v5[1] = sub_118FE8;
  sub_C98D8(v0[44]);

  return sub_3E5F0();
}

uint64_t sub_118FE8()
{
  sub_386A8();
  v2 = *v1;
  sub_38388();
  *v4 = v3;
  *(v3 + 384) = v5;

  v6 = *(v2 + 352);
  if (v0)
  {
  }

  sub_8748(v6, &qword_1C5800, &unk_16F510);
  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_119148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v19 = [*(v18 + 384) dialog];
  *(v18 + 392) = sub_25908(0, &qword_1C6E48, DialogElement_ptr);
  v20 = sub_16E2CC();

  if (sub_3B35C(v20))
  {
    sub_11C0A8();
    sub_3B360();
    if ((v20 & 0xC000000000000001) != 0)
    {
      v21 = sub_457FC();
    }

    else
    {
      v21 = *(v20 + 32);
    }

    v22 = v21;
    v23 = *(v18 + 368);

    v24 = [v22 fullPrint];

    v25 = sub_16E1BC();
    v27 = v26;

    *(v18 + 400) = v25;
    *(v18 + 408) = v27;
    sub_16E23C();
    sub_388E4();
    sub_214C(v28, v29, v30, v23);
    v31 = swift_task_alloc();
    *(v18 + 416) = v31;
    *v31 = v18;
    sub_11C1D8(v31);
    sub_C98D8(*(v18 + 344));
    sub_5DFC8();

    return sub_3E5F0();
  }

  else
  {
    v34 = *(v18 + 384);

    v35 = sub_16DBBC();
    sub_8B48(v35, v18 + 16);
    v36 = sub_3BD68();
    v37(v36);
    v38 = sub_16DBDC();
    v39 = sub_16E37C();
    if (sub_A763C(v39))
    {
      v40 = sub_1BA38();
      sub_11BFF8(v40);
      sub_11BD74(&def_259DC, v41, v42, "Couldn't create exercise label by executing cat.");
      sub_89F4();
    }

    v43 = sub_98BD8();
    v44(v43);
    sub_11BB90();

    sub_11BBD4();
    sub_5DFC8();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_1193FC()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 424) = v5;

  if (v0)
  {
    v6 = *(v3 + 344);

    sub_8748(v6, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(*(v3 + 344), &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_11954C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v20 = *(v19 + 392);
  v21 = sub_11C324([*(v19 + 424) dialog]);

  if (sub_3B35C(v21))
  {
    sub_4595C();
    if (v20)
    {
      v22 = sub_11C238();
    }

    else
    {
      v22 = *(v21 + 32);
    }

    v23 = v22;
    v24 = *(v19 + 368);

    v25 = [v23 fullPrint];

    v26 = sub_16E1BC();
    v28 = v27;

    *(v19 + 432) = v26;
    *(v19 + 440) = v28;
    sub_16E23C();

    sub_388E4();
    sub_214C(v29, v30, v31, v24);
    v32 = swift_task_alloc();
    *(v19 + 448) = v32;
    *v32 = v19;
    sub_11C1D8(v32);
    sub_C98D8(*(v19 + 336));
    sub_5DFC8();

    return sub_3E5F0();
  }

  else
  {
    v35 = *(v19 + 424);

    v36 = sub_16DBBC();
    sub_8B48(v36, v19 + 40);
    v37 = sub_3BD68();
    v38(v37);
    v39 = sub_16DBDC();
    v40 = sub_16E37C();
    v41 = sub_A763C(v40);
    v42 = *(v19 + 384);
    if (v41)
    {
      v43 = sub_1BA38();
      sub_11BFF8(v43);
      sub_11BD74(&def_259DC, v44, v45, "Couldn't create move label by executing cat.");
      sub_89F4();
    }

    v46 = sub_98BD8();
    v47(v46);
    sub_11BB90();

    sub_11BBD4();
    sub_5DFC8();

    return v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_119810()
{
  sub_386A8();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 456) = v5;

  if (v0)
  {
    v6 = *(v3 + 336);

    sub_8748(v6, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(*(v3 + 336), &qword_1C5800, &unk_16F510);
  }

  sub_8ACC();

  return _swift_task_switch(v7);
}

uint64_t sub_11996C()
{
  v59 = v1;
  v4 = *(v1 + 392);
  v5 = sub_11C324([*(v1 + 456) dialog]);

  if (!sub_3B35C(v5))
  {
    v28 = *(v1 + 456);

    v29 = sub_16DBBC();
    sub_8B48(v29, v1 + 64);
    v30 = sub_3BD68();
    v31(v30);
    v32 = sub_16DBDC();
    v33 = sub_16E37C();
    sub_A763C(v33);
    sub_11C264();
    if (v34)
    {
      v35 = sub_1BA38();
      sub_11BFF8(v35);
      sub_11BD74(&def_259DC, v36, v37, "Couldn't create stand label by executing cat.");
      sub_89F4();
    }

    v38 = sub_98BD8();
    v39(v38);

    sub_11BBD4();
    sub_5E1A0();

    __asm { BRAA            X1, X16 }
  }

  sub_4595C();
  if (v4)
  {
    v6 = sub_11C238();
  }

  else
  {
    v6 = *(v5 + 32);
  }

  v7 = v6;
  v8 = *(v1 + 224);

  v9 = [v7 fullPrint];

  v10 = sub_16E1BC();
  v12 = v11;

  *(v1 + 464) = v10;
  *(v1 + 472) = v12;
  v13 = sub_16DBBC();
  *(v1 + 480) = v13;
  sub_8B48(v13, v1 + 88);
  *(v1 + 488) = *(v8 + 16);
  *(v1 + 496) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v14 = sub_4B364();
  v15(v14);

  v16 = sub_16DBDC();
  v17 = sub_16E36C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v1 + 440);
    v54 = *(v1 + 432);
    v55 = *(v1 + 224);
    v56 = *(v1 + 216);
    v57 = *(v1 + 280);
    v19 = sub_CA30();
    v20 = swift_slowAlloc();
    v58 = v20;
    *v19 = 136315650;

    v21 = sub_387CC();
    v24 = sub_3AB7C(v21, v22, v23);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2080;

    v25 = sub_3AB7C(v54, v18, &v58);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2080;

    v26 = sub_3AB7C(v10, v12, &v58);

    *(v19 + 24) = v26;
    _os_log_impl(&def_259DC, v16, v17, "Got exercise label (%s), move label (%s), and stand label (%s)", v19, 0x20u);
    swift_arrayDestroy();
    sub_8A2C(v20);
    sub_8A2C(v19);

    v27 = *(v55 + 8);
    v27(v57, v56);
  }

  else
  {
    v42 = *(v1 + 224);

    v27 = *(v42 + 8);
    v43 = sub_C9F8();
    (v27)(v43);
  }

  *(v1 + 504) = v27;
  v44 = *(v1 + 368);
  sub_11C250();
  sub_16E23C();
  sub_388E4();
  sub_214C(v45, v46, v47, v44);
  sub_1069FC();
  sub_16E23C();
  sub_388E4();
  sub_214C(v48, v49, v50, v44);
  v51 = swift_task_alloc();
  *(v1 + 512) = v51;
  *v51 = v1;
  sub_11C1D8(v51);
  sub_C98D8(*(v1 + 328));
  sub_5E1A0();

  return sub_3F924();
}

uint64_t sub_119E60()
{
  sub_C9EC();
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  *v4 = *v1;
  v3[65] = v5;

  if (v0)
  {
    v6 = v3[41];

    v7 = sub_38408();
    sub_8748(v7, v8, v9);
    sub_8748(v6, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v3[40], &qword_1C5800, &unk_16F510);
    sub_11C200();
  }

  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_119FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v23 = *(v19 + 392);
  v24 = sub_11C324([*(v19 + 520) dialog]);

  if (sub_3B35C(v24))
  {
    sub_4595C();
    if (v23)
    {
      v25 = sub_11C238();
    }

    else
    {
      v25 = *(v24 + 32);
    }

    v26 = v25;
    v27 = *(v19 + 368);

    v28 = [v26 fullPrint];

    v29 = sub_16E1BC();
    v31 = v30;

    *(v19 + 528) = v29;
    *(v19 + 536) = v31;
    sub_16E23C();
    sub_388E4();
    sub_214C(v32, v33, v34, v27);
    sub_16E23C();
    sub_388E4();
    sub_214C(v35, v36, v37, v27);
    v38 = swift_task_alloc();
    *(v19 + 544) = v38;
    *v38 = v19;
    sub_11C1D8(v38);
    sub_C98D8(*(v19 + 312));
    sub_5DFC8();

    return sub_3F924();
  }

  else
  {
    v41 = *(v19 + 520);

    sub_11C178();
    sub_1B9B4(v42, v19 + 112);
    v43 = sub_38408();
    (v41)(v43);
    v44 = sub_16DBDC();
    v45 = sub_16E37C();
    sub_A763C(v45);
    sub_11C15C();
    if (v46)
    {
      v47 = sub_1BA38();
      a15 = v41;
      sub_11BFF8(v47);
      sub_11BD74(&def_259DC, v48, v49, "Couldn't create exercise unit label by executing unit_Label cat for multiple ring query.");
      sub_8A2C(v41);
    }

    v50 = sub_C9F8();
    (v41)(v50);
    sub_11BB90();

    sub_11BBD4();
    sub_5DFC8();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_11A2D4()
{
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  *v4 = *v1;
  v3[69] = v5;

  if (v0)
  {
    v6 = v3[39];

    v7 = sub_38408();
    sub_8748(v7, v8, v9);
    sub_8748(v6, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v3[38], &qword_1C5800, &unk_16F510);
    sub_11C200();
  }

  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_11A478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t), void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v22 = *(v19 + 392);
  v23 = sub_11C324([*(v19 + 552) dialog]);

  if (sub_3B35C(v23))
  {
    sub_4595C();
    if (v22)
    {
      v24 = sub_11C238();
    }

    else
    {
      v24 = *(v23 + 32);
    }

    v25 = v24;
    v26 = *(v19 + 368);

    v27 = [v25 fullPrint];

    v28 = sub_16E1BC();
    v30 = v29;

    *(v19 + 560) = v28;
    *(v19 + 568) = v30;
    sub_16E23C();
    sub_388E4();
    sub_214C(v31, v32, v33, v26);
    sub_16E23C();
    sub_388E4();
    sub_214C(v34, v35, v36, v26);
    v37 = swift_task_alloc();
    *(v19 + 576) = v37;
    *v37 = v19;
    sub_11C1D8(v37);
    sub_C98D8(*(v19 + 296));
    sub_5DFC8();

    return sub_3F924();
  }

  else
  {
    v40 = *(v19 + 552);
    v41 = *(v19 + 408);

    sub_11C178();
    sub_1B9B4(v42, v19 + 136);
    v43 = sub_38408();
    v41(v43);
    v44 = sub_16DBDC();
    v45 = sub_16E37C();
    sub_A763C(v45);
    sub_11C084();
    if (v46)
    {
      v47 = sub_1BA38();
      a14 = v41;
      sub_11BFF8(v47);
      sub_11BD74(&def_259DC, v48, v49, "Couldn't create move unit label by executing unit_Label cat for multiple ring query.");
      sub_8A2C(v41);
    }

    v50 = sub_C9F8();
    v41(v50);
    sub_11BB90();

    sub_11BBD4();
    sub_5DFC8();

    return v52(v51, v52, v53, v54, v55, v56, v57, v58, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
  }
}

uint64_t sub_11A778()
{
  sub_C9D4();
  v3 = v2;
  sub_38388();
  *v4 = v3;
  *v4 = *v1;
  v3[73] = v5;

  if (v0)
  {
    v6 = v3[37];

    v7 = sub_38408();
    sub_8748(v7, v8, v9);
    sub_8748(v6, &qword_1C5800, &unk_16F510);
  }

  else
  {
    sub_8748(v3[36], &qword_1C5800, &unk_16F510);
    sub_11C200();
  }

  sub_8ACC();

  return _swift_task_switch(v10);
}

uint64_t sub_11A928()
{
  v1 = [*(v0 + 584) dialog];
  v2 = sub_16E2CC();

  if (sub_3B35C(v2))
  {
    sub_11C0A8();
    sub_3B360();
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = sub_457FC();
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;
    v5 = *(v0 + 584);
    v6 = *(v0 + 552);
    v43 = *(v0 + 568);
    v45 = *(v0 + 536);
    v7 = *(v0 + 520);
    v40 = *(v0 + 472);
    v8 = *(v0 + 456);
    v9 = *(v0 + 424);
    v41 = *(v0 + 440);
    v42 = *(v0 + 408);
    v10 = *(v0 + 384);

    v11 = [v4 fullPrint];

    v12 = sub_16E1BC();
    v38 = v13;
    v39 = v12;

    v36 = *(v0 + 560);
    v37 = *(v0 + 528);
    v33 = *(v0 + 464);
    v34 = *(v0 + 432);
    v35 = *(v0 + 400);
  }

  else
  {
    v14 = *(v0 + 584);
    v15 = *(v0 + 440);

    sub_11C178();
    sub_1B9B4(v16, v0 + 160);
    v17 = sub_38408();
    v15(v17);
    v18 = sub_16DBDC();
    v19 = sub_16E37C();
    v20 = sub_A763C(v19);
    v21 = *(v0 + 552);
    v22 = *(v0 + 520);
    v23 = *(v0 + 504);
    v24 = *(v0 + 456);
    v25 = *(v0 + 424);
    v26 = *(v0 + 384);
    v44 = *(v0 + 216);
    v46 = *(v0 + 272);
    if (v20)
    {
      v27 = sub_1BA38();
      sub_11BFF8(v27);
      sub_11BD74(&def_259DC, v28, v29, "Couldn't create stand unit label by executing unit_Label cat for multiple ring query.");
      sub_89F4();
    }

    v23(v46, v44);
    v35 = 0;
    v42 = 0;
    v37 = 0;
    v45 = 0;
    v34 = 0;
    v41 = 0;
    v36 = 0;
    v43 = 0;
    v33 = 0;
    v39 = 0;
    v40 = 0;
    v38 = 0;
  }

  v30 = *(v0 + 184);

  *v30 = v35;
  v30[1] = v42;
  v30[2] = v37;
  v30[3] = v45;
  v30[4] = v34;
  v30[5] = v41;
  v30[6] = v36;
  v30[7] = v43;
  v30[8] = v33;
  v30[9] = v40;
  v30[10] = v39;
  v30[11] = v38;
  sub_C9BC();

  return v31();
}

uint64_t sub_11ACF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v19 = sub_16DBBC();
  sub_8B48(v19, v18 + 16);
  v20 = sub_3BD68();
  v21(v20);
  v22 = sub_16DBDC();
  v23 = sub_16E37C();
  if (sub_A763C(v23))
  {
    v24 = sub_1BA38();
    sub_11BFF8(v24);
    sub_11BD74(&def_259DC, v25, v26, "Couldn't create exercise label by executing cat.");
    sub_89F4();
  }

  v27 = sub_98BD8();
  v28(v27);
  sub_11BB90();

  sub_11BBD4();
  sub_5DFC8();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_11AE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v19 = sub_16DBBC();
  sub_8B48(v19, v18 + 40);
  v20 = sub_3BD68();
  v21(v20);
  v22 = sub_16DBDC();
  v23 = sub_16E37C();
  v24 = sub_A763C(v23);
  v25 = *(v18 + 384);
  if (v24)
  {
    v26 = sub_1BA38();
    sub_11BFF8(v26);
    sub_11BD74(&def_259DC, v27, v28, "Couldn't create move label by executing cat.");
    sub_89F4();
  }

  v29 = sub_98BD8();
  v30(v29);
  sub_11BB90();

  sub_11BBD4();
  sub_5DFC8();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_11AF94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  v21 = sub_16DBBC();
  sub_8B48(v21, v18 + 64);
  v22 = sub_3BD68();
  v23(v22);
  v24 = sub_16DBDC();
  v25 = sub_16E37C();
  sub_A763C(v25);
  sub_11C264();
  if (v26)
  {
    v27 = sub_1BA38();
    sub_11BFF8(v27);
    sub_11BD74(&def_259DC, v28, v29, "Couldn't create stand label by executing cat.");
    sub_89F4();
  }

  v30 = sub_98BD8();
  v31(v30);
  sub_11BB90();

  sub_11BBD4();
  sub_5DFC8();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_11B0E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t (*a15)(uint64_t), uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  sub_11C178();
  sub_1B9B4(v23, v18 + 112);
  v24 = sub_38408();
  v19(v24);
  v25 = sub_16DBDC();
  v26 = sub_16E37C();
  sub_A763C(v26);
  sub_11C15C();
  if (v27)
  {
    v28 = sub_1BA38();
    a15 = v19;
    sub_11BFF8(v28);
    sub_11BD74(&def_259DC, v29, v30, "Couldn't create exercise unit label by executing unit_Label cat for multiple ring query.");
    sub_8A2C(v19);
  }

  v31 = sub_C9F8();
  v19(v31);
  sub_11BB90();

  sub_11BBD4();
  sub_5DFC8();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_11B240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t (*a14)(uint64_t), void *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  sub_11C178();
  sub_1B9B4(v23, v18 + 136);
  v24 = sub_38408();
  v19(v24);
  v25 = sub_16DBDC();
  v26 = sub_16E37C();
  sub_A763C(v26);
  sub_11C084();
  if (v27)
  {
    v28 = sub_1BA38();
    a14 = v19;
    sub_11BFF8(v28);
    sub_11BD74(&def_259DC, v29, v30, "Couldn't create move unit label by executing unit_Label cat for multiple ring query.");
    sub_8A2C(v19);
  }

  v31 = sub_C9F8();
  v19(v31);
  sub_11BB90();

  sub_11BBD4();
  sub_5DFC8();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_11B3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  sub_5DFE4();
  sub_5E12C();
  sub_11C178();
  sub_1B9B4(v20, (v18 + 20));
  v21 = sub_38408();
  v19(v21);
  v22 = sub_16DBDC();
  v23 = sub_16E37C();
  v24 = sub_A763C(v23);
  v25 = v18[69];
  v26 = v18[63];
  v27 = v18[57];
  v28 = v18[53];
  v29 = v18[48];
  v43 = v18[65];
  v44 = v18[34];
  v30 = v18[27];
  if (v24)
  {
    v31 = sub_1BA38();
    a13 = v25;
    sub_11BFF8(v31);
    sub_11BD74(&def_259DC, v32, v33, "Couldn't create stand unit label by executing unit_Label cat for multiple ring query.");
    sub_8A2C(v26);
  }

  v26(v44, v30);
  sub_11BB90();

  sub_11BBD4();
  sub_5DFC8();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12, a13, v43, v44, a16, a17, a18);
}

uint64_t sub_11B53C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_C6F0;

  return sub_111A94();
}

uint64_t sub_11B638()
{

  sub_11C1CC();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_11B684(uint64_t a1, uint64_t a2)
{
  v4 = sub_2440(&qword_1CA8F8, &qword_176F30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_11B6F4(void *a1)
{
  v1 = [a1 activeEnergyBurnedUnit];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_16E1BC();

  return v3;
}

uint64_t sub_11B758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SingleActivitySummaryModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_11B7BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_8B38();
  v4 = sub_8B9C();
  v5(v4);
  return a2;
}

uint64_t sub_11B818(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_8B38();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_11B870()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_16AC0(v3, v4);
}

uint64_t sub_11B8F8()
{
  sub_2D64((v0 + 16));
  sub_387F4();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_11B92C()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_11B9B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_11B9FC()
{
  sub_8A88();
  swift_task_alloc();
  sub_179E8();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = sub_38374(v1);

  return sub_30A08(v3, v4);
}

uint64_t sub_11BB90()
{
}

uint64_t sub_11BBD4()
{
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  *v0 = 0u;
  v0[1] = 0u;
  return v1 + 8;
}

uint64_t sub_11BC88@<X0>(uint64_t a1@<X8>)
{
  *(v3 - 200) = v1;
  *(v3 - 192) = a1;
  v5 = v2[432];
  *(v3 - 184) = v2[433];
  *(v3 - 176) = v5;
  v6 = v2[428];
  *(v3 - 168) = v2[431];
  *(v3 - 160) = v6;
  v7 = v2[426];
  *(v3 - 152) = v2[427];
  *(v3 - 144) = v7;
  v8 = v2[423];
  *(v3 - 136) = v2[424];
  *(v3 - 128) = v8;
  v9 = v2[421];
  *(v3 - 120) = v2[422];
  *(v3 - 112) = v9;
  v10 = v2[416];
  *(v3 - 104) = v2[419];
  *(v3 - 96) = v10;
}

void sub_11BD74(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_11BD94()
{
  v3 = v0[432];
  *(v1 - 224) = v0[433];
  *(v1 - 216) = v3;
  v4 = v0[428];
  *(v1 - 208) = v0[431];
  *(v1 - 200) = v4;
  v5 = v0[426];
  *(v1 - 192) = v0[427];
  *(v1 - 184) = v5;
  v6 = v0[423];
  *(v1 - 176) = v0[424];
  *(v1 - 168) = v6;
  v7 = v0[421];
  *(v1 - 160) = v0[422];
  *(v1 - 152) = v7;
  v8 = v0[416];
  *(v1 - 144) = v0[419];
  *(v1 - 136) = v8;
}

uint64_t sub_11BEC8()
{
  v3 = v0[433];
  *(v1 - 200) = v0[434];
  *(v1 - 192) = v3;
  v4 = v0[431];
  *(v1 - 184) = v0[432];
  *(v1 - 176) = v4;
  v5 = v0[427];
  *(v1 - 168) = v0[428];
  *(v1 - 160) = v5;
  v6 = v0[424];
  *(v1 - 152) = v0[426];
  *(v1 - 144) = v6;
  v7 = v0[422];
  *(v1 - 136) = v0[423];
  *(v1 - 128) = v7;
  v8 = v0[419];
  *(v1 - 120) = v0[421];
  *(v1 - 112) = v8;
  *(v1 - 104) = v0[416];
}

void sub_11BF84()
{
  v4 = v1[514];
  v5 = v1[436];
  *(v2 - 112) = v1[434];
  *(v2 - 104) = v5;
  *(v2 - 120) = v1[430];
  v6 = v1[428];
  *(v2 - 136) = v4;
  *(v2 - 128) = v6;
  *(v2 - 144) = v1[424];
}

uint64_t sub_11C044(uint64_t a1)
{

  return sub_11B818(a1, type metadata accessor for WellnessQueryingRingsParameters);
}

uint64_t sub_11C0B4(uint64_t a1, uint64_t a2)
{
  sub_214C(v4, a2, 1, v3);

  return sub_11B684(v4, v2);
}

void sub_11C120(uint64_t a1, uint64_t a2)
{
  *(v2 - 128) = a1;
  *(v2 - 120) = a2;
  v4._countAndFlagsBits = 47;
  v4._object = 0xE100000000000000;

  sub_16E26C(v4);
}

uint64_t sub_11C140()
{

  return sub_8748(v2, v0, v1);
}

uint64_t sub_11C184()
{

  return sub_8748(v2, v0, v1);
}

uint64_t sub_11C1A0()
{

  return sub_369C(v0, 1, v1);
}

uint64_t sub_11C1E4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_11C200()
{

  return sub_8748(v1, v0, v2);
}

uint64_t sub_11C21C(uint64_t a1)
{

  return sub_16BCDC();
}

uint64_t sub_11C238()
{

  return sub_16E48C();
}

uint64_t sub_11C28C()
{
  v3 = *(v1 + 3528);
  v4 = *(v1 + 3432);

  return sub_214C(v3, v0, 1, v4);
}

uint64_t sub_11C2AC()
{
  v2 = *(v0 + 265);

  return sub_208C0(v2);
}

void sub_11C2CC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

double sub_11C2EC()
{

  return result;
}

void sub_11C30C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_11C324(uint64_t a1)
{

  return sub_16E2CC();
}

uint64_t GenericButtonModel.init(label:punchout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for GenericButtonModel(0) + 20);
  sub_16BE9C();
  sub_8B38();
  v8 = *(v7 + 32);

  return v8(&a4[v6], a3);
}

uint64_t type metadata accessor for GenericButtonModel(uint64_t a1)
{
  result = qword_1CA980;
  if (!qword_1CA980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t GenericButtonModel.punchout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GenericButtonModel(0) + 20);
  sub_16BE9C();
  sub_8B38();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t GenericButtonModel.punchout.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GenericButtonModel(0) + 20);
  sub_16BE9C();
  sub_8B38();
  v5 = *(v4 + 40);

  return v5(v1 + v3, a1);
}

uint64_t sub_11C57C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_16E6BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F68636E7570 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_16E6BC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_11C680(char a1)
{
  sub_16E72C();
  sub_16E73C(a1 & 1);
  return sub_16E75C();
}

uint64_t sub_11C6C8(char a1)
{
  if (a1)
  {
    return 0x74756F68636E7570;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_11C720@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_11C57C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_11C748@<X0>(_BYTE *a1@<X8>)
{
  result = sub_11C640();
  *a1 = result;
  return result;
}

uint64_t sub_11C770(uint64_t a1)
{
  v2 = sub_11C984();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_11C7AC(uint64_t a1)
{
  v2 = sub_11C984();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GenericButtonModel.encode(to:)(void *a1)
{
  v3 = sub_2440(&qword_1CA910, &qword_176F80);
  sub_42F0();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_2D20(a1, a1[3]);
  sub_11C984();
  sub_16E77C();
  v12[15] = 0;
  sub_16E64C();
  if (!v1)
  {
    type metadata accessor for GenericButtonModel(0);
    v12[14] = 1;
    sub_16BE9C();
    sub_11D208();
    sub_11CD44(v9, v10, &protocol conformance descriptor for URL);
    sub_16E67C();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_11C984()
{
  result = qword_1CA918;
  if (!qword_1CA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA918);
  }

  return result;
}

uint64_t GenericButtonModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = sub_16BE9C();
  sub_42F0();
  v22 = v4;
  __chkstk_darwin(v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2440(&qword_1CA920, &qword_176F88);
  sub_42F0();
  v24 = v8;
  __chkstk_darwin(v9);
  v10 = type metadata accessor for GenericButtonModel(0);
  sub_8B38();
  __chkstk_darwin(v11);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2D20(a1, a1[3]);
  sub_11C984();
  sub_16E76C();
  if (v2)
  {
    return sub_2D64(a1);
  }

  v21 = v10;
  v14 = v25;
  v28 = 0;
  *v13 = sub_16E5BC();
  v13[1] = v15;
  v27 = 1;
  sub_11D208();
  sub_11CD44(v16, v17, &protocol conformance descriptor for URL);
  sub_16E5EC();
  v18 = sub_11D220();
  v19(v18);
  (*(v22 + 32))(v13 + *(v21 + 20), v7, v14);
  sub_175A0(v13, v23);
  sub_2D64(a1);
  return sub_17604(v13);
}

uint64_t sub_11CD44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_11CDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_16BE9C();
    v9 = a1 + *(a3 + 20);

    return sub_369C(v9, a2, v8);
  }
}

uint64_t sub_11CE6C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_16BE9C();
    v8 = v5 + *(a4 + 20);

    return sub_214C(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_11CEEC(uint64_t a1)
{
  result = sub_16BE9C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenericButtonModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}