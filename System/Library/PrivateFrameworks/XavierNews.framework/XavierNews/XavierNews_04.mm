void sub_217EC28A4(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 64) = v6;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000024;
    *(v4 + 120) = 0x8000000217F5E3E0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC2A74(double a1, double a2, double a3, double a4)
{
  v5.f64[0] = a4;
  v5.f64[1] = a1;
  v6.f64[0] = a3;
  v6.f64[1] = a2;
  __asm { FMOV            V5.2D, #1.0 }

  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(_Q5, v5), vcgeq_f64(_Q5, v6)), vuzp1q_s32(vcgeq_f64(v5, 0), vcgeq_f64(v6, 0))))) & 1) == 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v16 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v13 = MEMORY[0x277D837D0];
    *(v12 + 56) = MEMORY[0x277D837D0];
    v14 = sub_217E86438();
    *(v12 + 32) = 0;
    *(v12 + 40) = 0xE000000000000000;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 64) = v14;
    *(v12 + 72) = 0xD000000000000032;
    *(v12 + 80) = 0x8000000217F5DE40;
    *(v12 + 136) = v13;
    *(v12 + 144) = v14;
    *(v12 + 112) = 0xD000000000000026;
    *(v12 + 120) = 0x8000000217F5E3B0;
    sub_217F4AE54();
    *(v12 + 176) = v13;
    *(v12 + 184) = v14;
    *(v12 + 152) = 0;
    *(v12 + 160) = 0xE000000000000000;
    v15 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v16, v15, v12);

    a4 = 0.005;
    a3 = 0.07;
    a2 = 0.1;
    a1 = 0.04;
  }

  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void sub_217EC2CAC(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD00000000000002BLL;
    *(v4 + 120) = 0x8000000217F5E380;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC2E80(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000002CLL;
    *(v3 + 120) = 0x8000000217F5E350;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC3048(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000039;
    *(v3 + 120) = 0x8000000217F5E310;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC3210(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000041;
    *(v3 + 120) = 0x8000000217F5E2C0;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC33D8(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000030;
    *(v3 + 120) = 0x8000000217F5E280;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC35A0(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000030;
    *(v3 + 120) = 0x8000000217F5E240;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC3768(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000003ALL;
    *(v3 + 120) = 0x8000000217F5E200;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC3930(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000034;
    *(v3 + 120) = 0x8000000217F5E1C0;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC3AF8(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD00000000000001FLL;
    *(v4 + 120) = 0x8000000217F5E1A0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC3CC8(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000023;
    *(v3 + 120) = 0x8000000217F5E170;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC3E90(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001ALL;
    *(v3 + 120) = 0x8000000217F5E150;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC405C(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000026;
    *(v3 + 120) = 0x8000000217F5E120;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC4224(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000016;
    *(v4 + 120) = 0x8000000217F5E100;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC43F4(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000018;
    *(v4 + 120) = 0x8000000217F5E0E0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC45C4(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001ELL;
    *(v3 + 120) = 0x8000000217F5E0C0;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 0.0;
  }

  *v1 = v2;
}

void sub_217EC4788(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000012;
    *(v4 + 120) = 0x8000000217F5E0A0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC4958(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000028;
    *(v3 + 120) = 0x8000000217F5E070;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC4B20(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000021;
    *(v3 + 120) = 0x8000000217F5E040;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC4CE8(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000012;
    *(v4 + 120) = 0x8000000217F5E020;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC4EB8(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000021;
    *(v4 + 120) = 0x8000000217F5DFF0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC5084(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000025;
    *(v3 + 120) = 0x8000000217F5DFC0;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC524C(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000002ELL;
    *(v3 + 120) = 0x8000000217F5DF90;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC5414(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000021;
    *(v4 + 120) = 0x8000000217F5DF60;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC55E0(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 64) = v6;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000027;
    *(v4 + 120) = 0x8000000217F5DF30;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC57B0(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000018;
    *(v4 + 120) = 0x8000000217F5DF10;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC5980(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 64) = v6;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000027;
    *(v4 + 120) = 0x8000000217F5DEE0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC5B50(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 64) = v6;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000026;
    *(v4 + 120) = 0x8000000217F5DEB0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC5D20(double a1, double a2, double a3, double a4)
{
  v5.f64[0] = a4;
  v5.f64[1] = a1;
  v6.f64[0] = a3;
  v6.f64[1] = a2;
  __asm { FMOV            V5.2D, #1.0 }

  if ((vminv_u8(vmovn_s16(vuzp1q_s16(vuzp1q_s32(vcgeq_f64(_Q5, v5), vcgeq_f64(_Q5, v6)), vuzp1q_s32(vcgeq_f64(v5, 0), vcgeq_f64(v6, 0))))) & 1) == 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v16 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v13 = MEMORY[0x277D837D0];
    *(v12 + 56) = MEMORY[0x277D837D0];
    v14 = sub_217E86438();
    *(v12 + 32) = 0;
    *(v12 + 40) = 0xE000000000000000;
    *(v12 + 96) = v13;
    *(v12 + 104) = v14;
    *(v12 + 64) = v14;
    *(v12 + 72) = 0xD000000000000032;
    *(v12 + 80) = 0x8000000217F5DE40;
    *(v12 + 136) = v13;
    *(v12 + 144) = v14;
    *(v12 + 112) = 0xD000000000000028;
    *(v12 + 120) = 0x8000000217F5DE80;
    sub_217F4AE54();
    *(v12 + 176) = v13;
    *(v12 + 184) = v14;
    *(v12 + 152) = 0;
    *(v12 + 160) = 0xE000000000000000;
    v15 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v16, v15, v12);

    a4 = 0.01;
    a3 = 0.12;
    a2 = 0.15;
    a1 = 0.1;
  }

  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void sub_217EC5F5C(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD00000000000001BLL;
    *(v4 + 120) = 0x8000000217F5DE20;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 0.0;
  }

  *v1 = v2;
}

void sub_217EC6128(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000030;
    *(v4 + 120) = 0x8000000217F5DDE0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 0.0;
  }

  *v1 = v2;
}

void sub_217EC62F4(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000022;
    *(v4 + 120) = 0x8000000217F5DDB0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 0.0;
  }

  *v1 = v2;
}

void sub_217EC64C0(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000025;
    *(v4 + 120) = 0x8000000217F5DD80;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 0.0;
  }

  *v1 = v2;
}

void sub_217EC668C(double a1, double a2)
{
  v3 = a2;
  v4 = a1;
  if (a1 < 0.0 || a2 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v9 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v6 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v7 = sub_217E86438();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 64) = v7;
    *(v5 + 72) = 0xD00000000000001DLL;
    *(v5 + 80) = 0x8000000217F5DD20;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = 0xD00000000000001BLL;
    *(v5 + 120) = 0x8000000217F5DD60;
    sub_217F4AE54();
    *(v5 + 176) = v6;
    *(v5 + 184) = v7;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0xE000000000000000;
    v8 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v9, v8, v5);

    v4 = 0.0;
    v3 = 60.0;
  }

  *v2 = v4;
  v2[1] = v3;
}

void sub_217EC686C(double a1, double a2)
{
  v3 = a2;
  v4 = a1;
  if (a1 < 0.0 || a2 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v9 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v6 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v7 = sub_217E86438();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 64) = v7;
    *(v5 + 72) = 0xD00000000000001DLL;
    *(v5 + 80) = 0x8000000217F5DD20;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = 0xD00000000000001ALL;
    *(v5 + 120) = 0x8000000217F5DD40;
    sub_217F4AE54();
    *(v5 + 176) = v6;
    *(v5 + 184) = v7;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0xE000000000000000;
    v8 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v9, v8, v5);

    v4 = 0.0;
    v3 = 60.0;
  }

  *v2 = v4;
  v2[1] = v3;
}

void sub_217EC6A4C(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 64) = v6;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000023;
    *(v4 + 120) = 0x8000000217F5DCF0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC6C1C(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000021;
    *(v3 + 120) = 0x8000000217F5DCC0;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 5000.0;
  }

  *v1 = v2;
}

void sub_217EC6DE8(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000023;
    *(v3 + 120) = 0x8000000217F5DC90;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 2000.0;
  }

  *v1 = v2;
}

void sub_217EC6FB4(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001FLL;
    *(v3 + 120) = 0x8000000217F5DC70;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

uint64_t sub_217EC7178(uint64_t result)
{
  v2 = result;
  if (result < 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001CLL;
    *(v3 + 80) = 0x8000000217F5D450;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000026;
    *(v3 + 120) = 0x8000000217F5DC40;
    v2 = 5;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);
  }

  *v1 = v2;
  return result;
}

uint64_t sub_217EC7330(uint64_t a1)
{

  result = sub_217EA2668(a1);
  if ((result & 1) == 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v9 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF56A0, qword_217F4DE10);
    sub_217F4AE54();

    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5EAC0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000017;
    *(v4 + 120) = 0x8000000217F5EAF0;
    v7 = MEMORY[0x277D84F90];
    sub_217ECBAD8(MEMORY[0x277D84F90]);
    sub_217F4AE54();

    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v8 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v9, v8, v4);

    result = sub_217ECBAD8(v7);
    a1 = result;
  }

  *v1 = a1;
  return result;
}

void sub_217EC7534(double a1)
{
  v2 = a1;
  if (a1 < 0.0 || a1 > 1.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v8 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v5 = MEMORY[0x277D837D0];
    *(v4 + 56) = MEMORY[0x277D837D0];
    v6 = sub_217E86438();
    *(v4 + 32) = 0;
    *(v4 + 40) = 0xE000000000000000;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 64) = v6;
    *(v4 + 72) = 0xD000000000000021;
    *(v4 + 80) = 0x8000000217F5D4C0;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = 0xD000000000000010;
    *(v4 + 120) = 0x8000000217F5EAA0;
    sub_217F4AE54();
    *(v4 + 176) = v5;
    *(v4 + 184) = v6;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0xE000000000000000;
    v7 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v8, v7, v4);

    v2 = 0.99;
  }

  *v1 = v2;
}

void sub_217EC7714(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000023;
    *(v3 + 120) = 0x8000000217F5EA70;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC78DC(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000021;
    *(v3 + 120) = 0x8000000217F5EA40;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217EC7AA4(double a1, double a2, double a3, double a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v18 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v10 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v11 = sub_217E86438();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 64) = v11;
    *(v9 + 72) = 0xD000000000000033;
    *(v9 + 80) = 0x8000000217F5D830;
    *(v9 + 136) = v10;
    *(v9 + 144) = v11;
    *(v9 + 112) = 0xD000000000000034;
    *(v9 + 120) = 0x8000000217F5DC00;
    __asm { FMOV            V0.2D, #1.0 }

    sub_217F4AE54();
    *(v9 + 176) = v10;
    *(v9 + 184) = v11;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0xE000000000000000;
    v17 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v18, v17, v9);

    v8 = 1.0;
    v7 = 1.0;
    v6 = 1.0;
    v5 = 1.0;
  }

  *v4 = v8;
  v4[1] = v7;
  v4[2] = v6;
  v4[3] = v5;
}

void sub_217EC7CAC(double a1, double a2, double a3, double a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v13 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v10 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v11 = sub_217E86438();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 64) = v11;
    *(v9 + 72) = 0xD000000000000033;
    *(v9 + 80) = 0x8000000217F5D830;
    *(v9 + 136) = v10;
    *(v9 + 144) = v11;
    *(v9 + 112) = 0xD000000000000034;
    *(v9 + 120) = 0x8000000217F5DBC0;
    sub_217F4AE54();
    *(v9 + 176) = v10;
    *(v9 + 184) = v11;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0xE000000000000000;
    v12 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v13, v12, v9);

    v7 = 1.0;
    v8 = 0.0;
    v6 = 0.0;
    v5 = 1.0;
  }

  *v4 = v8;
  v4[1] = v7;
  v4[2] = v6;
  v4[3] = v5;
}

void sub_217EC7EB8(double a1, double a2, double a3, double a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v13 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v10 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v11 = sub_217E86438();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 64) = v11;
    *(v9 + 72) = 0xD000000000000033;
    *(v9 + 80) = 0x8000000217F5D830;
    *(v9 + 136) = v10;
    *(v9 + 144) = v11;
    *(v9 + 112) = 0xD000000000000037;
    *(v9 + 120) = 0x8000000217F5DB80;
    sub_217F4AE54();
    *(v9 + 176) = v10;
    *(v9 + 184) = v11;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0xE000000000000000;
    v12 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v13, v12, v9);

    v7 = 0.0;
    v8 = 1.0;
    v6 = 1.0;
    v5 = 0.0;
  }

  *v4 = v8;
  v4[1] = v7;
  v4[2] = v6;
  v4[3] = v5;
}

void sub_217EC80C4(double a1, double a2, double a3, double a4)
{
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v9 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v6 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v7 = sub_217E86438();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 64) = v7;
    *(v5 + 72) = 0xD000000000000033;
    *(v5 + 80) = 0x8000000217F5D830;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = 0xD000000000000030;
    *(v5 + 120) = 0x8000000217F5DB40;
    sub_217F4AE54();
    *(v5 + 176) = v6;
    *(v5 + 184) = v7;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0xE000000000000000;
    v8 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v9, v8, v5);

    *v4 = xmmword_217F51DC0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
  }

  else
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;
  }
}

void sub_217EC82D8(double a1, double a2, double a3, double a4)
{
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v15 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v6 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v7 = sub_217E86438();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 64) = v7;
    *(v5 + 72) = 0xD000000000000033;
    *(v5 + 80) = 0x8000000217F5D830;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = 0xD000000000000031;
    *(v5 + 120) = 0x8000000217F5DB00;
    __asm { FMOV            V0.2D, #3.0 }

    v14 = _Q0;
    sub_217F4AE54();
    *(v5 + 176) = v6;
    *(v5 + 184) = v7;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0xE000000000000000;
    v13 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v15, v13, v5);

    *v4 = v14;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
  }

  else
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;
  }
}

void sub_217EC84E8(double a1, double a2, double a3, double a4)
{
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v15 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v6 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v7 = sub_217E86438();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 64) = v7;
    *(v5 + 72) = 0xD000000000000033;
    *(v5 + 80) = 0x8000000217F5D830;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = 0xD00000000000002FLL;
    *(v5 + 120) = 0x8000000217F5DAD0;
    __asm { FMOV            V0.2D, #10.0 }

    v14 = _Q0;
    sub_217F4AE54();
    *(v5 + 176) = v6;
    *(v5 + 184) = v7;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0xE000000000000000;
    v13 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v15, v13, v5);

    *v4 = v14;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
  }

  else
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;
  }
}

void sub_217EC86F8(double a1, double a2, double a3, double a4)
{
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v9 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v6 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v7 = sub_217E86438();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 64) = v7;
    *(v5 + 72) = 0xD000000000000033;
    *(v5 + 80) = 0x8000000217F5D830;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = 0xD00000000000002FLL;
    *(v5 + 120) = 0x8000000217F5DAA0;
    sub_217F4AE54();
    *(v5 + 176) = v6;
    *(v5 + 184) = v7;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0xE000000000000000;
    v8 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v9, v8, v5);

    *v4 = xmmword_217F51DC0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
  }

  else
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;
  }
}

void sub_217EC890C(double a1, double a2, double a3, double a4)
{
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v15 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v6 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v7 = sub_217E86438();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 64) = v7;
    *(v5 + 72) = 0xD000000000000033;
    *(v5 + 80) = 0x8000000217F5D830;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = 0xD00000000000002DLL;
    *(v5 + 120) = 0x8000000217F5DA70;
    __asm { FMOV            V0.2D, #2.0 }

    v14 = _Q0;
    sub_217F4AE54();
    *(v5 + 176) = v6;
    *(v5 + 184) = v7;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0xE000000000000000;
    v13 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v15, v13, v5);

    *v4 = v14;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
  }

  else
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;
  }
}

void sub_217EC8B1C(double a1, double a2, double a3, double a4)
{
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v9 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v6 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v7 = sub_217E86438();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 64) = v7;
    *(v5 + 72) = 0xD000000000000033;
    *(v5 + 80) = 0x8000000217F5D830;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = 0xD00000000000002DLL;
    *(v5 + 120) = 0x8000000217F5DA40;
    sub_217F4AE54();
    *(v5 + 176) = v6;
    *(v5 + 184) = v7;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0xE000000000000000;
    v8 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v9, v8, v5);

    *v4 = xmmword_217F51DC0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
  }

  else
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;
  }
}

void sub_217EC8D30(double a1, double a2, double a3, double a4)
{
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v15 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v6 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v7 = sub_217E86438();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 64) = v7;
    *(v5 + 72) = 0xD000000000000033;
    *(v5 + 80) = 0x8000000217F5D830;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = 0xD00000000000002ELL;
    *(v5 + 120) = 0x8000000217F5DA10;
    __asm { FMOV            V0.2D, #2.0 }

    v14 = _Q0;
    sub_217F4AE54();
    *(v5 + 176) = v6;
    *(v5 + 184) = v7;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0xE000000000000000;
    v13 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v15, v13, v5);

    *v4 = v14;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
  }

  else
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;
  }
}

void sub_217EC8F40(double a1, double a2, double a3, double a4)
{
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v15 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v6 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v7 = sub_217E86438();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 64) = v7;
    *(v5 + 72) = 0xD000000000000033;
    *(v5 + 80) = 0x8000000217F5D830;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = 0xD00000000000002ELL;
    *(v5 + 120) = 0x8000000217F5D9E0;
    __asm { FMOV            V0.2D, #2.0 }

    v14 = _Q0;
    sub_217F4AE54();
    *(v5 + 176) = v6;
    *(v5 + 184) = v7;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0xE000000000000000;
    v13 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v15, v13, v5);

    *v4 = v14;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
  }

  else
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;
  }
}

void sub_217EC9150(double a1, double a2, double a3, double a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v13 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v10 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v11 = sub_217E86438();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 64) = v11;
    *(v9 + 72) = 0xD000000000000033;
    *(v9 + 80) = 0x8000000217F5D830;
    *(v9 + 136) = v10;
    *(v9 + 144) = v11;
    *(v9 + 112) = 0xD000000000000036;
    *(v9 + 120) = 0x8000000217F5D9A0;
    sub_217F4AE54();
    *(v9 + 176) = v10;
    *(v9 + 184) = v11;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0xE000000000000000;
    v12 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v13, v12, v9);

    v7 = 1.0;
    v8 = 0.0;
    v6 = 0.0;
    v5 = 1.0;
  }

  *v4 = v8;
  v4[1] = v7;
  v4[2] = v6;
  v4[3] = v5;
}

void sub_217EC935C(double a1, double a2, double a3, double a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v18 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v10 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v11 = sub_217E86438();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 64) = v11;
    *(v9 + 72) = 0xD000000000000033;
    *(v9 + 80) = 0x8000000217F5D830;
    *(v9 + 136) = v10;
    *(v9 + 144) = v11;
    *(v9 + 112) = 0xD000000000000036;
    *(v9 + 120) = 0x8000000217F5D960;
    __asm { FMOV            V0.2D, #10.0 }

    sub_217F4AE54();
    *(v9 + 176) = v10;
    *(v9 + 184) = v11;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0xE000000000000000;
    v17 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v18, v17, v9);

    v8 = 10.0;
    v7 = 10.0;
    v6 = 10.0;
    v5 = 10.0;
  }

  *v4 = v8;
  v4[1] = v7;
  v4[2] = v6;
  v4[3] = v5;
}

void sub_217EC9564(double a1, double a2, double a3, double a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v18 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v10 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v11 = sub_217E86438();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 64) = v11;
    *(v9 + 72) = 0xD000000000000033;
    *(v9 + 80) = 0x8000000217F5D830;
    *(v9 + 136) = v10;
    *(v9 + 144) = v11;
    *(v9 + 112) = 0xD000000000000036;
    *(v9 + 120) = 0x8000000217F5D920;
    __asm { FMOV            V0.2D, #3.0 }

    sub_217F4AE54();
    *(v9 + 176) = v10;
    *(v9 + 184) = v11;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0xE000000000000000;
    v17 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v18, v17, v9);

    v8 = 3.0;
    v7 = 3.0;
    v6 = 3.0;
    v5 = 3.0;
  }

  *v4 = v8;
  v4[1] = v7;
  v4[2] = v6;
  v4[3] = v5;
}

void sub_217EC976C(double a1, double a2, double a3, double a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v18 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v10 = MEMORY[0x277D837D0];
    *(v9 + 56) = MEMORY[0x277D837D0];
    v11 = sub_217E86438();
    *(v9 + 32) = 0;
    *(v9 + 40) = 0xE000000000000000;
    *(v9 + 96) = v10;
    *(v9 + 104) = v11;
    *(v9 + 64) = v11;
    *(v9 + 72) = 0xD000000000000033;
    *(v9 + 80) = 0x8000000217F5D830;
    *(v9 + 136) = v10;
    *(v9 + 144) = v11;
    *(v9 + 112) = 0xD000000000000035;
    *(v9 + 120) = 0x8000000217F5D8E0;
    __asm { FMOV            V0.2D, #1.0 }

    sub_217F4AE54();
    *(v9 + 176) = v10;
    *(v9 + 184) = v11;
    *(v9 + 152) = 0;
    *(v9 + 160) = 0xE000000000000000;
    v17 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v18, v17, v9);

    v8 = 1.0;
    v7 = 1.0;
    v6 = 1.0;
    v5 = 1.0;
  }

  *v4 = v8;
  v4[1] = v7;
  v4[2] = v6;
  v4[3] = v5;
}

void sub_217EC9974(double a1, double a2, double a3, double a4)
{
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v9 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v6 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v7 = sub_217E86438();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 64) = v7;
    *(v5 + 72) = 0xD000000000000033;
    *(v5 + 80) = 0x8000000217F5D830;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = 0xD000000000000031;
    *(v5 + 120) = 0x8000000217F5D8A0;
    sub_217F4AE54();
    *(v5 + 176) = v6;
    *(v5 + 184) = v7;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0xE000000000000000;
    v8 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v9, v8, v5);

    *v4 = xmmword_217F51DC0;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
  }

  else
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;
  }
}

void sub_217EC9B88(double a1, double a2, double a3, double a4)
{
  if (a1 < 0.0 || a2 < 0.0 || a3 < 0.0 || a4 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v9 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v6 = MEMORY[0x277D837D0];
    *(v5 + 56) = MEMORY[0x277D837D0];
    v7 = sub_217E86438();
    *(v5 + 32) = 0;
    *(v5 + 40) = 0xE000000000000000;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 64) = v7;
    *(v5 + 72) = 0xD000000000000033;
    *(v5 + 80) = 0x8000000217F5D830;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = 0xD00000000000002FLL;
    *(v5 + 120) = 0x8000000217F5D870;
    sub_217F4AE54();
    *(v5 + 176) = v6;
    *(v5 + 184) = v7;
    *(v5 + 152) = 0;
    *(v5 + 160) = 0xE000000000000000;
    v8 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v9, v8, v5);

    *v4 = 0u;
    *(v4 + 16) = 0u;
  }

  else
  {
    *v4 = a1;
    *(v4 + 8) = a2;
    *(v4 + 16) = a3;
    *(v4 + 24) = a4;
  }
}

void sub_217EC9D8C(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 64) = v5;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000022;
    *(v3 + 120) = 0x8000000217F5D490;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

uint64_t sub_217EC9F54(uint64_t result)
{
  v2 = result;
  if (result < 0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001CLL;
    *(v3 + 80) = 0x8000000217F5D450;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000013;
    *(v3 + 120) = 0x8000000217F5D470;
    v2 = 100;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);
  }

  *v1 = v2;
  return result;
}

void sub_217ECA10C(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD00000000000001BLL;
    *(v3 + 120) = 0x8000000217F5D430;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217ECA2D4(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000016;
    *(v3 + 120) = 0x8000000217F5D410;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

void sub_217ECA4A0(double a1)
{
  v2 = a1;
  if (a1 < 0.0)
  {
    if (qword_280C28EA0 != -1)
    {
      swift_once();
    }

    v7 = qword_280C28EA8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_217F4BF10;
    sub_217F4AE54();
    v4 = MEMORY[0x277D837D0];
    *(v3 + 56) = MEMORY[0x277D837D0];
    v5 = sub_217E86438();
    *(v3 + 32) = 0;
    *(v3 + 40) = 0xE000000000000000;
    *(v3 + 96) = v4;
    *(v3 + 104) = v5;
    *(v3 + 64) = v5;
    *(v3 + 72) = 0xD00000000000001FLL;
    *(v3 + 80) = 0x8000000217F5D3D0;
    *(v3 + 136) = v4;
    *(v3 + 144) = v5;
    *(v3 + 112) = 0xD000000000000010;
    *(v3 + 120) = 0x8000000217F5D3F0;
    sub_217F4AE54();
    *(v3 + 176) = v4;
    *(v3 + 184) = v5;
    *(v3 + 152) = 0;
    *(v3 + 160) = 0xE000000000000000;
    v6 = sub_217F4AD54();
    sub_217F4AA44("Set value %{public}@ failed to satisfy condition %{public}@ falling back to %{public}@: %{public}@", 98, 2, &dword_217E7B000, v7, v6, v3);

    v2 = 1.0;
  }

  *v1 = v2;
}

BOOL sub_217ECA668(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  do
  {
    v3 = v1;
    if (!v1)
    {
      break;
    }

    v4 = *v2++;
    --v1;
  }

  while (fabs(v4) <= 1.0);
  return v3 == 0;
}

void *sub_217ECA69C@<X0>(uint64_t a1@<X8>)
{
  sub_217ECA7E4(__src);
  sub_217ECB0A4(v10);
  sub_217ECB400(v11);
  v2 = MEMORY[0x277D84F90];
  v8 = sub_217ECBAD8(MEMORY[0x277D84F90]);

  sub_217EC7330(v3);
  v4 = sub_217ECBE40(v2);
  sub_217ECB610(v13);
  *a1 = xmmword_217F51DD0;
  *(a1 + 16) = 256;
  *(a1 + 18) = 1;
  *(a1 + 24) = xmmword_217F51DE0;
  memcpy((a1 + 40), __src, 0x780uLL);
  memcpy((a1 + 1960), v10, 0x3CBuLL);
  v5 = v11[3];
  *(a1 + 2968) = v11[2];
  *(a1 + 2984) = v5;
  *(a1 + 3000) = v12;
  v6 = v11[1];
  *(a1 + 2936) = v11[0];
  *(a1 + 2952) = v6;
  *(a1 + 3008) = v8;
  *(a1 + 3016) = v4;
  *(a1 + 3024) = xmmword_217F51DF0;
  *(a1 + 3040) = 0x3FF0000000000000;
  return memcpy((a1 + 3048), v13, 0x220uLL);
}

double sub_217ECA7B8@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_217F51DD0;
  *(a1 + 16) = 256;
  *(a1 + 18) = 1;
  *&result = 30;
  *(a1 + 24) = xmmword_217F51DE0;
  return result;
}

double sub_217ECA7E4@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_217ECBBB8(MEMORY[0x277D84F90]);
  if (qword_280C27A40 != -1)
  {
    swift_once();
  }

  v35[0] = xmmword_280C27A48;
  v35[1] = xmmword_280C27A58;
  v35[2] = xmmword_280C27A68;
  v35[3] = *&qword_280C27A78;
  v36 = xmmword_280C27A48;
  v37 = xmmword_280C27A58;
  v38 = xmmword_280C27A68;
  v39 = *&qword_280C27A78;
  sub_217EB2994(v35, v56);
  sub_217ED62DC(0x3FF0000000000000, 0, 1, 0, MEMORY[0x277D84FA0], &v52);
  v4 = v52;
  v3 = v53;
  v40 = 1;
  if (qword_280C27E70 != -1)
  {
    swift_once();
  }

  *__src = 2;
  *&__src[8] = xmmword_280C27E78;
  *&__src[24] = qword_280C27E88;
  *&__src[32] = qword_280C27E90;
  *&__src[40] = qword_280C27E98;
  *&__src[48] = 2;
  *&__src[56] = xmmword_280C27E78;
  *&__src[72] = qword_280C27E88;
  *&__src[80] = qword_280C27E90;
  *&__src[88] = qword_280C27E98;
  *&__src[96] = 2;
  *&__src[104] = xmmword_280C27E78;
  *&__src[120] = qword_280C27E88;
  *&__src[128] = qword_280C27E90;
  *&__src[136] = qword_280C27E98;
  *&__src[144] = v2;
  *&__src[152] = 2;
  *&__src[160] = xmmword_280C27E78;
  *&__src[176] = qword_280C27E88;
  *&__src[184] = qword_280C27E90;
  *&__src[192] = qword_280C27E98;
  *&__src[200] = 5;
  *&__src[208] = xmmword_280C27E78;
  *&__src[224] = qword_280C27E88;
  *&__src[232] = qword_280C27E90;
  *&__src[240] = qword_280C27E98;
  *&__src[248] = 3;
  *&__src[256] = xmmword_280C27E78;
  *&__src[272] = qword_280C27E88;
  *&__src[280] = qword_280C27E90;
  *&__src[288] = qword_280C27E98;
  v41[0] = v36;
  v41[1] = v37;
  v41[2] = v38;
  v41[3] = v39;
  sub_217EB2994(v35, v56);
  sub_217EB2994(v35, v56);
  sub_217ECC78C(v41, &qword_27CBF5C28, &unk_217F52840);
  *&__src[296] = v36;
  *&__src[312] = v37;
  *&__src[328] = v38;
  *&__src[344] = v39;
  sub_217EBDC08(v35);
  *&__src[360] = v4;
  *&__src[376] = v3;

  sub_217EBD9B4(*(&v4 + 1), v3, *&v4);
  memset(&__src[384], 0, 49);
  v5 = v40;
  __src[433] = v40;
  v6 = MEMORY[0x277D84F90];
  v7 = sub_217ECBBB8(MEMORY[0x277D84F90]);
  v34[0] = xmmword_280C27A48;
  v34[1] = xmmword_280C27A58;
  v34[2] = xmmword_280C27A68;
  v34[3] = *&qword_280C27A78;
  v42 = xmmword_280C27A48;
  v43 = xmmword_280C27A58;
  v44 = xmmword_280C27A68;
  v45 = *&qword_280C27A78;
  sub_217EB2994(v34, v56);
  sub_217ED62DC(0x3FF0000000000000, 0, 1, 0, MEMORY[0x277D84FA0], &v52);
  v9 = v52;
  v8 = v53;
  *v30 = 100;
  *&v30[8] = xmmword_280C27E78;
  *&v30[24] = qword_280C27E88;
  *&v30[32] = qword_280C27E90;
  *&v30[40] = qword_280C27E98;
  *&v30[48] = 100;
  *&v30[56] = xmmword_280C27E78;
  *&v30[72] = qword_280C27E88;
  *&v30[80] = qword_280C27E90;
  *&v30[88] = qword_280C27E98;
  *&v30[96] = 2;
  *&v30[104] = xmmword_280C27E78;
  *&v30[120] = qword_280C27E88;
  *&v30[128] = qword_280C27E90;
  *&v30[136] = qword_280C27E98;
  *&v30[144] = v7;
  *&v30[152] = 2;
  *&v30[160] = xmmword_280C27E78;
  *&v30[176] = qword_280C27E88;
  *&v30[184] = qword_280C27E90;
  *&v30[192] = qword_280C27E98;
  *&v30[200] = 5;
  *&v30[208] = xmmword_280C27E78;
  *&v30[224] = qword_280C27E88;
  *&v30[232] = qword_280C27E90;
  *&v30[240] = qword_280C27E98;
  *&v30[248] = 3;
  *&v30[256] = xmmword_280C27E78;
  *&v30[272] = qword_280C27E88;
  *&v30[280] = qword_280C27E90;
  *&v30[288] = qword_280C27E98;
  v46[0] = v42;
  v46[1] = v43;
  v46[2] = v44;
  v46[3] = v45;
  sub_217EB2994(v34, v56);
  sub_217EB2994(v34, v56);
  sub_217ECC78C(v46, &qword_27CBF5C30, &qword_217F52058);
  *&v30[296] = v42;
  *&v30[312] = v43;
  *&v30[328] = v44;
  *&v30[344] = v45;
  sub_217EBD714(v34);
  *&v30[360] = v9;
  *&v30[376] = v8;

  sub_217EBD4C0(*(&v9 + 1), v8, *&v9);
  memset(&v30[384], 0, 49);
  v30[433] = v5;
  v24 = sub_217ECBCB4(v6);
  v10 = sub_217ECBBB8(v6);
  v33[0] = xmmword_280C27A48;
  v33[1] = xmmword_280C27A58;
  v33[2] = xmmword_280C27A68;
  v33[3] = *&qword_280C27A78;
  v47 = xmmword_280C27A48;
  v48 = xmmword_280C27A58;
  v49 = xmmword_280C27A68;
  v50 = *&qword_280C27A78;
  sub_217EB2994(v33, v56);
  v11 = MEMORY[0x277D84FA0];
  sub_217ED62DC(0x3FF0000000000000, 0, 1, 0, MEMORY[0x277D84FA0], &v52);
  v13 = v52;
  v12 = v53;
  *v29 = 2;
  *&v29[8] = xmmword_280C27E78;
  *&v29[24] = qword_280C27E88;
  *&v29[32] = qword_280C27E90;
  *&v29[40] = qword_280C27E98;
  *&v29[48] = 2;
  *&v29[56] = xmmword_280C27E78;
  *&v29[72] = qword_280C27E88;
  *&v29[80] = qword_280C27E90;
  *&v29[88] = qword_280C27E98;
  *&v29[96] = 2;
  *&v29[104] = xmmword_280C27E78;
  *&v29[120] = qword_280C27E88;
  *&v29[128] = qword_280C27E90;
  *&v29[136] = qword_280C27E98;
  *&v29[144] = v10;
  *&v29[152] = 2;
  *&v29[160] = xmmword_280C27E78;
  *&v29[176] = qword_280C27E88;
  *&v29[184] = qword_280C27E90;
  *&v29[192] = qword_280C27E98;
  *&v29[200] = 30;
  *&v29[208] = xmmword_280C27E78;
  *&v29[224] = qword_280C27E88;
  *&v29[232] = qword_280C27E90;
  *&v29[240] = qword_280C27E98;
  *&v29[248] = 3;
  *&v29[256] = xmmword_280C27E78;
  *&v29[272] = qword_280C27E88;
  *&v29[280] = qword_280C27E90;
  *&v29[288] = qword_280C27E98;
  v51[0] = v47;
  v51[1] = v48;
  v51[2] = v49;
  v51[3] = v50;
  sub_217EB2994(v33, v56);
  sub_217EB2994(v33, v56);
  sub_217ECC78C(v51, &qword_27CBF5C38, qword_217F52850);
  *&v29[296] = v47;
  *&v29[312] = v48;
  *&v29[328] = v49;
  *&v29[344] = v50;
  sub_217EBD21C(v33);
  *&v29[360] = v13;
  *&v29[376] = v12;

  sub_217EBCFC8(*(&v13 + 1), v12, *&v13);
  memset(&v29[384], 0, 49);
  LOBYTE(v8) = v40;
  v29[433] = v40;
  v14 = sub_217ECBBB8(MEMORY[0x277D84F90]);
  v32[0] = xmmword_280C27A48;
  v32[1] = xmmword_280C27A58;
  v32[2] = xmmword_280C27A68;
  v32[3] = *&qword_280C27A78;
  v52 = xmmword_280C27A48;
  v53 = xmmword_280C27A58;
  v54 = xmmword_280C27A68;
  v55 = *&qword_280C27A78;
  sub_217EB2994(v32, v56);
  sub_217ED62DC(0x3FF0000000000000, 0, 1, 0, v11, v27);
  v15 = *v27;
  v16 = v27[1];
  v17 = v27[2];
  *v28 = 2;
  *&v28[8] = xmmword_280C27E78;
  *&v28[24] = qword_280C27E88;
  *&v28[32] = qword_280C27E90;
  *&v28[40] = qword_280C27E98;
  *&v28[48] = 2;
  *&v28[56] = xmmword_280C27E78;
  *&v28[72] = qword_280C27E88;
  *&v28[80] = qword_280C27E90;
  *&v28[88] = qword_280C27E98;
  *&v28[96] = 2;
  *&v28[104] = xmmword_280C27E78;
  *&v28[120] = qword_280C27E88;
  *&v28[128] = qword_280C27E90;
  *&v28[136] = qword_280C27E98;
  *&v28[144] = v14;
  *&v28[152] = 2;
  *&v28[160] = xmmword_280C27E78;
  *&v28[176] = qword_280C27E88;
  *&v28[184] = qword_280C27E90;
  *&v28[192] = qword_280C27E98;
  *&v28[200] = 30;
  *&v28[208] = xmmword_280C27E78;
  *&v28[224] = qword_280C27E88;
  *&v28[232] = qword_280C27E90;
  *&v28[240] = qword_280C27E98;
  *&v28[248] = 3;
  *&v28[256] = xmmword_280C27E78;
  *&v28[272] = qword_280C27E88;
  *&v28[280] = qword_280C27E90;
  *&v28[288] = qword_280C27E98;
  v56[0] = v52;
  v56[1] = v53;
  v56[2] = v54;
  v56[3] = v55;
  sub_217EB2994(v32, v26);
  sub_217EB2994(v32, v26);
  sub_217ECC78C(v56, &qword_27CBF5C40, &unk_217F52060);
  *&v28[296] = v52;
  *&v28[312] = v53;
  *&v28[328] = v54;
  *&v28[344] = v55;
  sub_217EBCD28(v32);
  *&v28[360] = v15;
  *&v28[368] = v16;
  *&v28[376] = v17;

  sub_217EBCAD4(v16, v17, v15);
  memset(&v28[384], 0, 49);
  v28[433] = v8;
  memcpy(a1, __src, 0x1B2uLL);
  memcpy((a1 + 440), v30, 0x1B2uLL);
  *(a1 + 880) = 0x3FE0000000000000;
  *(a1 + 888) = 0;
  *(a1 + 904) = 0;
  *(a1 + 896) = v24;
  *(a1 + 912) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 920) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v25 = _Q0;
  *(a1 + 928) = _Q0;
  *(a1 + 944) = 1000;
  *(a1 + 952) = 0u;
  memcpy((a1 + 968), v29, 0x1B2uLL);
  *(a1 + 1408) = xmmword_217F51E00;
  *(a1 + 1424) = 37;
  *(a1 + 1432) = 0x3FF3333333333333;
  memcpy((a1 + 1440), v28, 0x1B2uLL);
  *(a1 + 1880) = 0x3FF8000000000000;
  *(a1 + 1888) = v25;
  result = 0.5;
  *(a1 + 1904) = xmmword_217F51E10;
  return result;
}

void *sub_217ECB0A4@<X0>(void *a1@<X8>)
{
  *&v11[7] = 0u;
  __src[0] = xmmword_217F51E20;
  __src[1] = xmmword_217F51D60;
  __src[2] = xmmword_217F51D70;
  sub_217EC2A74(0.04, 0.1, 0.07, 0.005);
  __src[3] = xmmword_217F51E30;
  LOBYTE(__src[4]) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(&__src[4] + 8) = _Q0;
  *(&__src[5] + 8) = xmmword_217F51E40;
  *(&__src[6] + 8) = _Q0;
  __src[8] = xmmword_217F4DD30;
  *&__src[9] = 50;
  *(&__src[9] + 8) = _Q0;
  *(&__src[10] + 8) = xmmword_217F51E50;
  BYTE8(__src[11]) = 0;
  *&__src[12] = 0x3FF0000000000000;
  BYTE8(__src[12]) = 0;
  __src[13] = xmmword_217F51E60;
  *(&__src[14] + 8) = 0u;
  __asm { FMOV            V0.2D, #2.0 }

  v9 = _Q0;
  *(&__src[15] + 8) = _Q0;
  *&__src[14] = 0x4014000000000000;
  *(&__src[16] + 1) = 0x3FD3333333333333;
  LOWORD(__src[17]) = 1;
  BYTE2(__src[17]) = 0;
  *(&__src[17] + 1) = 0x3F947AE147AE147BLL;
  BYTE8(__src[7]) = 1;
  __src[18] = xmmword_217F51E70;
  __src[19] = vdupq_n_s64(0x3FF199999999999AuLL);
  __src[20] = xmmword_217F4DD30;
  __src[21] = xmmword_217F51E80;
  __src[22] = xmmword_217F51E90;
  LOBYTE(__src[23]) = 1;
  *(&__src[23] + 1) = 0x3FB999999999999ALL;
  LOBYTE(__src[24]) = 0;
  *(&__src[24] + 1) = *v11;
  *&__src[25] = 0;
  *(&__src[25] + 1) = 0x3FE0000000000000;
  __src[26] = xmmword_217F51EA0;
  LOBYTE(__src[27]) = 1;
  *(&__src[27] + 1) = 0x3FE0000000000000;
  __src[28] = xmmword_217F51EA0;
  __src[29] = xmmword_217F51EB0;
  __src[30] = xmmword_217F51DB0;
  LOBYTE(__src[31]) = 1;
  *(&__src[31] + 1) = 0x3FB999999999999ALL;
  __src[32] = xmmword_217F51EC0;
  __src[33] = xmmword_217F51ED0;
  LOBYTE(__src[34]) = 1;
  *(&__src[34] + 1) = 0x4000000000000000;
  __src[35] = xmmword_217F51EE0;
  __src[36] = __src[19];
  __src[37] = xmmword_217F4DD30;
  __src[38] = xmmword_217F51EF0;
  __src[39] = xmmword_217F51F00;
  __src[40] = xmmword_217F51F10;
  __src[41] = xmmword_217F51F20;
  *&__src[42] = 0x3FF0000000000000;
  BYTE8(__src[42]) = 0;
  __src[43] = xmmword_217F51F30;
  __src[44] = xmmword_217F51F40;
  __src[45] = xmmword_217F51F50;
  memset(&__src[46], 0, 48);
  __src[49] = xmmword_217F51D80;
  __src[50] = xmmword_217F51D90;
  sub_217EC5D20(0.1, 0.15, 0.12, 0.01);
  __src[51] = xmmword_217F51E70;
  __src[52] = __src[19];
  __src[53] = xmmword_217F4DD30;
  __src[54] = xmmword_217F51F60;
  LOBYTE(__src[55]) = 0;
  *(&__src[55] + 1) = *v13;
  DWORD1(__src[55]) = *&v13[3];
  *(&__src[55] + 1) = 0x3FF0000000000000;
  LOBYTE(__src[56]) = 0;
  *(&__src[56] + 1) = *v12;
  DWORD1(__src[56]) = *&v12[3];
  *(&__src[56] + 1) = 0x3FF0000000000000;
  __src[57] = xmmword_217F51F70;
  __src[58] = 0u;
  __src[59] = v9;
  *&__src[60] = 0x3FD3333333333333;
  WORD4(__src[60]) = 1;
  BYTE10(__src[60]) = 0;
  return memcpy(a1, __src, 0x3CBuLL);
}

__n128 sub_217ECB400@<Q0>(uint64_t a1@<X8>)
{
  sub_217EC668C(1.0, 60.0);
  sub_217EC686C(0.0, 0.0);
  result = xmmword_217F51F80;
  *a1 = xmmword_217F51F90;
  *(a1 + 16) = 0x409F400000000000;
  *(a1 + 24) = xmmword_217F51F80;
  *(a1 + 40) = 0uLL;
  *(a1 + 56) = 0x3FF0000000000000;
  *(a1 + 64) = 5;
  return result;
}

uint64_t sub_217ECB498@<X0>(unint64_t *a1@<X8>)
{
  *a1 = sub_217ECBAD8(MEMORY[0x277D84F90]);

  return sub_217EC7330(v1);
}

void *sub_217ECB4D0@<X0>(uint64_t a1@<X8>)
{
  sub_217ECB610(v3);
  *a1 = xmmword_217F51DF0;
  *(a1 + 16) = 0x3FF0000000000000;
  return memcpy((a1 + 24), v3, 0x220uLL);
}

void sub_217ECB530(uint64_t a1@<X8>)
{
  *a1 = 0x4008000000000000;
  *(a1 + 8) = 256;
  *(a1 + 10) = 1;
}

double sub_217ECB564@<D0>(uint64_t a1@<X8>)
{
  result = 0.99;
  *a1 = xmmword_217F51DF0;
  *(a1 + 16) = 0x3FF0000000000000;
  return result;
}

__n128 sub_217ECB57C@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #1.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

double sub_217ECB588@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_217F4DD30;
  a1[1] = xmmword_217F4DD30;
  return result;
}

double sub_217ECB598@<D0>(_OWORD *a1@<X8>)
{
  result = 1.0;
  *a1 = xmmword_217F51DB0;
  a1[1] = xmmword_217F51DB0;
  return result;
}

__n128 sub_217ECB5A8@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #2.0 }

  *a1 = result;
  a1[1] = 0uLL;
  return result;
}

double sub_217ECB5B8@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_217F51DC0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

double sub_217ECB5CC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 sub_217ECB5D8@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *a1 = result;
  a1[1] = 0uLL;
  return result;
}

__n128 sub_217ECB5E8@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #3.0 }

  *a1 = result;
  a1[1] = 0uLL;
  return result;
}

__n128 sub_217ECB5F8@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #3.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

__n128 sub_217ECB604@<Q0>(__n128 *a1@<X8>)
{
  __asm { FMOV            V0.2D, #10.0 }

  *a1 = result;
  a1[1] = result;
  return result;
}

void *sub_217ECB610@<X0>(void *a1@<X8>)
{
  __asm { FMOV            V0.2D, #1.0 }

  v13 = _Q0;
  __src[0] = _Q0;
  __src[1] = _Q0;
  sub_217EC7AA4(1.0, 1.0, 1.0, 1.0);
  __src[2] = xmmword_217F4DD30;
  __src[3] = xmmword_217F4DD30;
  sub_217EC7CAC(0.0, 1.0, 0.0, 1.0);
  __src[4] = xmmword_217F51DB0;
  __src[5] = xmmword_217F51DB0;
  sub_217EC7EB8(1.0, 0.0, 1.0, 0.0);
  __src[6] = xmmword_217F51DC0;
  __src[7] = 0uLL;
  sub_217EC80C4(0.0, 50.0, 0.0, 0.0);
  __asm { FMOV            V0.2D, #3.0 }

  v12 = _Q0;
  __src[8] = _Q0;
  __src[9] = 0uLL;
  sub_217EC82D8(3.0, 3.0, 0.0, 0.0);
  __asm { FMOV            V0.2D, #10.0 }

  v11 = _Q0;
  __src[10] = _Q0;
  __src[11] = 0uLL;
  sub_217EC84E8(10.0, 10.0, 0.0, 0.0);
  __src[12] = xmmword_217F51DC0;
  __src[13] = 0uLL;
  sub_217EC86F8(0.0, 50.0, 0.0, 0.0);
  __asm { FMOV            V0.2D, #2.0 }

  v14 = _Q0;
  __src[14] = _Q0;
  __src[15] = 0uLL;
  sub_217EC890C(2.0, 2.0, 0.0, 0.0);
  __src[16] = xmmword_217F51DC0;
  __src[17] = 0uLL;
  sub_217EC8B1C(0.0, 50.0, 0.0, 0.0);
  __src[18] = v14;
  __src[19] = 0uLL;
  sub_217EC8D30(2.0, 2.0, 0.0, 0.0);
  __src[20] = v14;
  __src[21] = 0uLL;
  sub_217EC8F40(2.0, 2.0, 0.0, 0.0);
  __src[22] = xmmword_217F4DD30;
  __src[23] = xmmword_217F4DD30;
  sub_217EC9150(0.0, 1.0, 0.0, 1.0);
  __src[24] = v11;
  __src[25] = v11;
  sub_217EC935C(10.0, 10.0, 10.0, 10.0);
  __src[26] = v12;
  __src[27] = v12;
  sub_217EC9564(3.0, 3.0, 3.0, 3.0);
  __src[28] = v13;
  __src[29] = v13;
  sub_217EC976C(1.0, 1.0, 1.0, 1.0);
  __src[30] = xmmword_217F51DC0;
  memset(&__src[31], 0, 48);
  sub_217EC9974(0.0, 50.0, 0.0, 0.0);
  sub_217EC9B88(0.0, 0.0, 0.0, 0.0);
  return memcpy(a1, __src, 0x220uLL);
}

double sub_217ECB8D0@<D0>(uint64_t a1@<X8>)
{
  *a1 = vdupq_n_s64(0x3FF199999999999AuLL);
  *(a1 + 16) = xmmword_217F51FA0;
  result = 1.0;
  *(a1 + 32) = xmmword_217F51EE0;
  return result;
}

__n128 sub_217ECB8FC@<Q0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_217F4DD30;
  *(a1 + 16) = 50;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = result;
  *(a1 + 40) = 0;
  return result;
}

__n128 sub_217ECB920@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0x3FA999999999999ALL;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = xmmword_217F51E60;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0x4014000000000000;
  __asm { FMOV            V0.2D, #2.0 }

  *(a1 + 72) = result;
  *(a1 + 88) = 0x3FD3333333333333;
  *(a1 + 96) = 1;
  *(a1 + 98) = 0;
  return result;
}

double sub_217ECB97C@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = xmmword_217F51FB0;
  *(a1 + 40) = 0x3FB999999999999ALL;
  *(a1 + 48) = 1;
  *(a1 + 56) = xmmword_217F51FB0;
  *(a1 + 72) = xmmword_217F51FC0;
  *(a1 + 88) = xmmword_217F4DD30;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  *(a1 + 120) = xmmword_217F51FD0;
  *(a1 + 136) = xmmword_217F51FE0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1;
  result = 2.0;
  *(a1 + 168) = xmmword_217F51EC0;
  return result;
}

double sub_217ECB9FC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.2;
  __asm { FMOV            V1.2D, #2.0 }

  *a1 = xmmword_217F51FF0;
  a1[1] = _Q1;
  return result;
}

double sub_217ECBA10@<D0>(_OWORD *a1@<X8>)
{
  sub_217EC668C(1.0, 60.0);
  sub_217EC686C(0.0, 0.0);
  result = 1.0;
  *a1 = xmmword_217F51F80;
  a1[1] = 0uLL;
  return result;
}

double sub_217ECBA80@<D0>(uint64_t a1@<X8>)
{
  result = 0.5;
  *a1 = xmmword_217F51FB0;
  *(a1 + 16) = 0x3FB999999999999ALL;
  return result;
}

unint64_t sub_217ECBAA0@<X0>(uint64_t a1@<X8>)
{
  result = sub_217ECBFEC(MEMORY[0x277D84F90]);
  *a1 = 0;
  *(a1 + 8) = 0x3FF0000000000000;
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_217ECBAD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CBF5C90, &qword_217F520A8);
    v3 = sub_217F4AED4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_217E8E904(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_217ECBBB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53F8, &qword_217F4CC68);
    v3 = sub_217F4AED4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_217E8E88C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_217ECBCB4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5C68, &qword_217F52088);
  v3 = sub_217F4AED4();

  memcpy(__dst, a1 + 4, 0x1C2uLL);
  v4 = __dst[0];
  v5 = __dst[1];
  sub_217ECC7EC(__dst, v15, &qword_27CBF5C70, &qword_217F52090);
  v6 = sub_217E8E88C(v4, v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = a1 + 61;
  while (1)
  {
    *(v3 + ((v6 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v6;
    v9 = (v3[6] + 16 * v6);
    *v9 = v4;
    v9[1] = v5;
    result = memcpy((v3[7] + 440 * v6), &__dst[2], 0x1B2uLL);
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    memcpy(__dst, v8, 0x1C2uLL);
    v4 = __dst[0];
    v5 = __dst[1];
    sub_217ECC7EC(__dst, v15, &qword_27CBF5C70, &qword_217F52090);
    v6 = sub_217E8E88C(v4, v5);
    v8 += 57;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_217ECBE40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5350, &qword_217F5A2D0);
  v3 = sub_217F4AED4();

  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27[0] = v5;
  *(v27 + 9) = *(a1 + 89);
  v7 = *(&v24 + 1);
  v6 = v24;
  sub_217ECC7EC(&v24, v23, &qword_27CBF5C88, &qword_217F520A0);
  result = sub_217E8E88C(v6, v7);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v6;
    v11[1] = v7;
    v12 = (v3[7] + (result << 6));
    v13 = v25;
    v14 = v26;
    v15 = v27[0];
    *(v12 + 41) = *(v27 + 9);
    v12[1] = v14;
    v12[2] = v15;
    *v12 = v13;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v10 + 5;
    v20 = v10[1];
    v24 = *v10;
    v25 = v20;
    v21 = v10[3];
    v26 = v10[2];
    v27[0] = v21;
    *(v27 + 9) = *(v10 + 57);
    v7 = *(&v24 + 1);
    v6 = v24;
    sub_217ECC7EC(&v24, v23, &qword_27CBF5C88, &qword_217F520A0);
    result = sub_217E8E88C(v6, v7);
    v10 = v19;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_217ECBFEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5378, &qword_217F4CBE0);
    v3 = sub_217F4AED4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_217E8E88C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_217ECC0F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5C48, &qword_217F52070);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5388, &qword_217F4CBF0);
    v8 = sub_217F4AED4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_217ECC7EC(v10, v6, &qword_27CBF5C48, &qword_217F52070);
      result = sub_217E8EABC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ClassicArticleData(0);
      result = sub_217ECC728(v6, v15 + *(*(v16 - 8) + 72) * v14);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_217ECC2C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5C50, &qword_217F52078);
    v3 = sub_217F4AED4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_217E8E88C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_217ECC3C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5370, &qword_217F4CBD8);
    v3 = sub_217F4AED4();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_217E8E88C(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_217ECC4E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF53A0, &qword_217F4CC10);
    v3 = sub_217F4AED4();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_217E8E88C(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_217ECC604(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5358, &qword_217F4CBC0);
    v3 = sub_217F4AED4();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v8 = *(i - 2);
      v7 = *(i - 1);
      v9 = *i;

      result = sub_217E8E88C(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v8;
      v13[1] = v7;
      v13[2] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_217ECC728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassicArticleData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217ECC78C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_217ECC7EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_217ECC880(uint64_t a1, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v40 = a1;
  v6 = a4 + 64;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v25 = v10;
  v26 = v6;
  if (v9)
  {
    while (1)
    {
      v29 = v5;
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = (*(a4 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(a4 + 56) + 56 * v14;
      v18 = *v17;
      v19 = *(v17 + 8);
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      v22 = *(v17 + 32);
      v23 = *(v17 + 40);
      v24 = *(v17 + 48);
      *&v35 = *v15;
      *(&v35 + 1) = v16;
      *&v36 = v18;
      *(&v36 + 1) = v19;
      *&v37 = v20;
      *(&v37 + 1) = v21;
      *&v38 = v22;
      *(&v38 + 1) = v23;
      v39 = v24;

      sub_217E81030(v18, v19, v20, v21, v22, v23, v24);
      a2(&v40, &v35);
      v5 = v29;
      if (v29)
      {
        break;
      }

      v9 &= v9 - 1;
      v32 = v37;
      v33 = v38;
      v34 = v39;
      v30 = v35;
      v31 = v36;
      result = sub_217ED16EC(&v30, &qword_27CBF5D40, &qword_217F520E8);
      v12 = v13;
      v10 = v25;
      v6 = v26;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    v32 = v37;
    v33 = v38;
    v34 = v39;
    v30 = v35;
    v31 = v36;
    sub_217ED16EC(&v30, &qword_27CBF5D40, &qword_217F520E8);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v40;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v29 = v5;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_217ECCA70(uint64_t a1, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v22 = a1;
  v6 = a4 + 64;
  v7 = 1 << *(a4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a4 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v13 << 6);
    v16 = (*(a4 + 48) + 16 * v15);
    v17 = *v16;
    v18 = v16[1];
    sub_217E844C0(*(a4 + 56) + 40 * v15, &v21);
    v20[0] = v17;
    v20[1] = v18;

    a2(&v22, v20);
    result = sub_217ED16EC(v20, &qword_27CBF5D18, &unk_217F5A2E0);
    if (v4)
    {
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return v22;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217ECCBCC(uint64_t a1, void (*a2)(uint64_t *, __int128 *), uint64_t a3, uint64_t a4)
{
  v32[0] = a1;
  v7 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = __clz(__rbit64(v10)) | (v14 << 6);
      v16 = (*(a4 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = (*(a4 + 56) + 80 * v15);
      v20 = v19[3];
      v30 = v19[2];
      v31[0] = v20;
      *(v31 + 14) = *(v19 + 62);
      v21 = v19[1];
      v28 = *v19;
      v29 = v21;
      *&v27 = v18;
      *(&v27 + 1) = v17;

      a2(v32, &v27);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;
      v24 = v29;
      v25 = v30;
      v26[0] = v31[0];
      *(v26 + 14) = *(v31 + 14);
      v22 = v27;
      v23 = v28;
      result = sub_217ED16EC(&v22, &qword_27CBF5D30, &unk_217F5A2F0);
      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    v24 = v29;
    v25 = v30;
    v26[0] = v31[0];
    *(v26 + 14) = *(v31 + 14);
    v22 = v27;
    v23 = v28;
    sub_217ED16EC(&v22, &qword_27CBF5D30, &unk_217F5A2F0);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {

        return v32[0];
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_217ECCD9C(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for ClassicArticleData(0) - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

uint64_t sub_217ECCE98(uint64_t result, void (*a2)(uint64_t *, void *), uint64_t a3, uint64_t a4)
{
  v10 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      a2(&v10, v9);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v10;
      }
    }
  }

  return result;
}

uint64_t sub_217ECCF40(uint64_t result, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v21 = result;
  v5 = *(a4 + 16);
  if (v5)
  {
    for (i = (a4 + 80); ; i += 56)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *(i - 4);
      v11 = *(i - 3);
      v12 = *(i - 5);
      v13 = *i;
      v14 = *(i - 6);
      v15 = v12;
      v16 = v10;
      v17 = v11;
      v18 = v8;
      v19 = v9;
      v20 = v13;
      sub_217E81030(v14, v12, v10, v11, v8, v9, v13);
      a2(&v21, &v14);
      sub_217E810D0(v14, v15, v16, v17, v18, v19, v20);
      if (v4)
      {
        break;
      }

      if (!--v5)
      {
        return v21;
      }
    }
  }

  return result;
}

char *sub_217ECD004(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = sub_217E8E630(*(v2 + 16), 0);
    v8 = sub_217E96834(&v59, (v7 + 4), v6, v2);
    v9 = v59;

    sub_217E7D06C(v9);
    if (v8 == v6)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = MEMORY[0x277D84F90];
LABEL_5:
  v10 = v7[2];
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = v7 + 6;
    v13 = MEMORY[0x277D84F90];
    do
    {
      v17 = *v12;
      if (*v12 <= v4)
      {
        v57 = *(v12 - 1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_217EA0C80(0, *(v13 + 2) + 1, 1);
          v13 = v59;
        }

        v15 = *(v13 + 2);
        v14 = *(v13 + 3);
        if (v15 >= v14 >> 1)
        {
          sub_217EA0C80((v14 > 1), v15 + 1, 1);
          v13 = v59;
        }

        *(v13 + 2) = v15 + 1;
        v16 = &v13[24 * v15];
        *(v16 + 2) = v57;
        *(v16 + 6) = v17;
      }

      v12 += 3;
      --v10;
    }

    while (v10);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v59 = v13;

  v19 = 0;
  sub_217ED0728(&v59);

  sub_217E8B7A0(v5, v59);
  v23 = v22 >> 1;
  v24 = (v22 >> 1) - v21;
  if (!__OFSUB__(v22 >> 1, v21))
  {
    if (v24)
    {
      v19 = v20;
      v25 = v21;
      v59 = v11;
      sub_217EA0C80(0, v24 & ~(v24 >> 63), 0);
      if (v24 < 0)
      {
        goto LABEL_48;
      }

      v26 = v59;
      if (v25 <= v23)
      {
        v27 = v23;
      }

      else
      {
        v27 = v25;
      }

      v28 = v27 - v25;
      v29 = (v19 + 24 * v25 + 16);
      do
      {
        if (!v28)
        {
          __break(1u);
          goto LABEL_44;
        }

        v30 = *(v29 - 1);
        v31 = *v29;
        v59 = v26;
        v33 = *(v26 + 2);
        v32 = *(v26 + 3);
        v19 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          v58 = v30;
          sub_217EA0C80((v32 > 1), v33 + 1, 1);
          v30 = v58;
          v26 = v59;
        }

        *(v26 + 2) = v19;
        v34 = &v26[24 * v33];
        *(v34 + 2) = v30;
        *(v34 + 6) = v31;
        --v28;
        v29 += 3;
        --v24;
      }

      while (v24);
      swift_unknownObjectRelease();
      v35 = *(v26 + 2);
      if (!v35)
      {
        goto LABEL_41;
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v26 = MEMORY[0x277D84F90];
      v35 = *(MEMORY[0x277D84F90] + 16);
      if (!v35)
      {
LABEL_41:
        v39 = MEMORY[0x277D84F98];
LABEL_42:

        return v39;
      }
    }

    v36 = 0;
    v37 = 1.0 - v3;
    v38 = (v26 + 48);
    v39 = MEMORY[0x277D84F98];
    while (v36 < *(v26 + 2))
    {
      v40 = *(v38 - 2);
      v41 = *(v38 - 1);
      v42 = *v38;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v59 = v39;
      v45 = sub_217E8E948(v40, v41, v42);
      v46 = *(v39 + 2);
      v47 = (v44 & 1) == 0;
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_45;
      }

      v19 = v44;
      if (*(v39 + 3) >= v48)
      {
        if ((v43 & 1) == 0)
        {
          sub_217E8F2D8();
        }
      }

      else
      {
        sub_217E91968(v48, v43);
        v49 = sub_217E8E948(v40, v41, v42);
        if ((v19 & 1) != (v50 & 1))
        {
          goto LABEL_49;
        }

        v45 = v49;
      }

      v51 = pow(v37, v36);
      v39 = v59;
      if (v19)
      {
        *(*(v59 + 7) + 8 * v45) = v51;
      }

      else
      {
        *&v59[8 * (v45 >> 6) + 64] |= 1 << v45;
        v52 = (*(v39 + 6) + 24 * v45);
        *v52 = v40;
        v52[1] = v41;
        v52[2] = v42;
        *(*(v39 + 7) + 8 * v45) = v51;
        v53 = *(v39 + 2);
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_46;
        }

        *(v39 + 2) = v55;
      }

      ++v36;
      v38 += 3;
      if (v35 == v36)
      {
        goto LABEL_42;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  sub_217F4B1C4();
  __break(1u);
  MEMORY[0x21CEAF510](v19);

  __break(1u);
  return result;
}

void sub_217ECD43C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = *(a1 + 16);
  if (v5)
  {
    v22 = MEMORY[0x277D84F90];
    sub_217EA0C80(0, v5, 0);
    v7 = v22;
    v8 = *(v22 + 16);
    v9 = 24 * v8;
    v10 = (a1 + 48);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = *(v22 + 24);
      if (v8++ >= v13 >> 1)
      {
        v21 = *(v10 - 1);
        sub_217EA0C80((v13 > 1), v8, 1);
        v11 = v21;
      }

      *(v22 + 16) = v8;
      v15 = v22 + v9;
      *(v15 + 32) = v11;
      *(v15 + 48) = v12;
      v9 += 24;
      v10 += 6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (!v8)
    {

      return;
    }
  }

  v16 = (v7 + 48);
  v17 = 0.0;
  v18 = 0.0;
  do
  {
    if (*(a2 + 16))
    {
      v19 = sub_217E8E948(*(v16 - 2), *(v16 - 1), *v16);
      if (v20)
      {
        v18 = v18 + *(*(a2 + 56) + 8 * v19);
        v17 = v17 + 1.0;
      }
    }

    v16 += 3;
    --v8;
  }

  while (v8);

  if (v17 > 0.0)
  {
    pow(v17, v4);
  }
}

void sub_217ECD5D0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = *(a3 + 8);
    v8 = (a1 + 64);
    v9 = 0.0;
    v10 = 0.0;
    do
    {
      v11 = *v8;
      v13 = *(v8 - 4);
      v12 = *(v8 - 3);
      v14 = *(a2 + 16);

      v15 = a4;
      if (v14)
      {
        v16 = sub_217E8E88C(v13, v12);
        v15 = a4;
        if (v17)
        {
          v18 = *(a2 + 56) + 16 * v16;
          if (*(v18 + 8))
          {
            v15 = a4;
          }

          else
          {
            v15 = *v18;
          }
        }
      }

      v10 = v10 + v11 * v15;
      v9 = v9 + 1.0;
      v8 += 5;
      --v4;
    }

    while (v4);
    if (v9 > 0.0)
    {
      pow(v9, v7);
    }
  }
}

uint64_t static Classic.TagEvaluator.memberships(tags:userContext:aggregateContext:baselinePrior:decayRate:userFeedbackConfig:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v8 = a7;
  v48 = a2;
  v46 = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v47 = v40 - v18;
  v19 = *a4;
  v20 = a4[1];
  v21 = *(a5 + 80);
  v51[4] = *(a5 + 64);
  v52[0] = v21;
  *(v52 + 15) = *(a5 + 95);
  v22 = *(a5 + 16);
  v51[0] = *a5;
  v51[1] = v22;
  v23 = *(a5 + 48);
  v51[2] = *(a5 + 32);
  v51[3] = v23;
  v24 = *(a1 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v40[1] = a3;
    v41 = a6;
    v42 = v8;
    v43 = v16;
    v45 = AssociatedTypeWitness;
    v50 = MEMORY[0x277D84F90];
    sub_217EA0864(0, v24, 0);
    v25 = v50;
    v44 = a1;
    v26 = (a1 + 40);
    do
    {
      v28 = *(v26 - 1);
      v27 = *v26;
      *&v49 = 2831206;
      *(&v49 + 1) = 0xE300000000000000;

      MEMORY[0x21CEAEAC0](v28, v27);

      v29 = v49;
      v50 = v25;
      v31 = *(v25 + 16);
      v30 = *(v25 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_217EA0864((v30 > 1), v31 + 1, 1);
        v25 = v50;
      }

      *(v25 + 16) = v31 + 1;
      *(v25 + 16 * v31 + 32) = v29;
      v26 += 2;
      --v24;
    }

    while (v24);
    AssociatedTypeWitness = v45;
    a1 = v44;
    v16 = v43;
    v8 = v42;
    a6 = v41;
  }

  v32 = sub_217E97288(v25);

  v49 = 0uLL;
  (*(v46 + 48))(v32, &v49, a6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5398, &qword_217F4CC08);
  v33 = sub_217F4AEA4();

  *&v49 = v19;
  *(&v49 + 1) = v20;
  v34 = v47;
  v35 = ClassicAggregateContextType.lookupBaseline(with:)(&v49, a6, v8, v47);
  MEMORY[0x28223BE20](v35, v36);
  v40[-8] = a6;
  v40[-7] = v8;
  v37 = v48;
  v40[-6] = v33;
  v40[-5] = v37;
  v40[-4] = v34;
  v40[-3] = v51;
  *&v40[-2] = a8;
  v38 = sub_217ECCE98(MEMORY[0x277D84F98], sub_217ED14E4, &v40[-10], a1);

  (*(v16 + 8))(v34, AssociatedTypeWitness);
  return v38;
}

uint64_t sub_217ECDA88(void *a1, uint64_t *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, Swift::Double a9)
{
  v15 = *a2;
  v16 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF52D0, &qword_217F4C930);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217F4BC20;
  *&v27[0] = 2831206;
  *(&v27[0] + 1) = 0xE300000000000000;
  MEMORY[0x21CEAEAC0](v15, v16);
  *(inited + 32) = 2831206;
  *(inited + 40) = 0xE300000000000000;
  v18 = *(a6 + 80);
  v27[4] = *(a6 + 64);
  *v28 = v18;
  *&v28[15] = *(a6 + 95);
  v19 = *(a6 + 16);
  v27[0] = *a6;
  v27[1] = v19;
  v20 = *(a6 + 48);
  v27[2] = *(a6 + 32);
  v27[3] = v20;
  v21 = sub_217F2E804(v15, v16, inited, a3, a4, a5, v27, a7, a9, a8);
  LOBYTE(a6) = v22;
  swift_setDeallocating();
  sub_217E97320(inited + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v27[0] = *a1;
  result = sub_217F19E20(v21, a6 & 1, v15, v16, isUniquelyReferenced_nonNull_native);
  *a1 = *&v27[0];
  return result;
}

uint64_t static Classic.TagEvaluator.evaluate(tags:translations:userContext:aggregateContext:baselinePrior:decayRate:channelTopicMappings:topicTopicMappings:locationTopicMappings:userFeedbackConfig:tagScoringConfig:tagMetadataByTagID:)(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9, __int128 *a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v67 = a5;
  v73 = a4;
  v66 = *a6;
  v16 = *a7;
  v17 = *a8;
  v18 = *(a8 + 1);
  v75 = *(a7 + 1);
  v76 = v18;
  v19 = *a9;
  v70 = a9[1];
  v69 = a9[2];
  v20 = a10[5];
  v89 = a10[4];
  v90[0] = v20;
  *(v90 + 15) = *(a10 + 95);
  v21 = a10[1];
  v85 = *a10;
  v86 = v21;
  v22 = a10[3];
  v87 = a10[2];
  v88 = v22;
  v23 = a11[4];
  v94 = a11[3];
  v95 = v23;
  v24 = a11[2];
  v92 = a11[1];
  v93 = v24;
  v91 = *a11;
  if (qword_280C28E80 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_217F4BF10;
  v26 = MEMORY[0x277D83B88];
  v27 = *(a1 + 16);
  v28 = MEMORY[0x277D83C10];
  *(v25 + 56) = MEMORY[0x277D83B88];
  *(v25 + 64) = v28;
  *(v25 + 32) = v27;
  v71 = v19;
  v72 = v16;
  v29 = *(v16 + 16);
  *(v25 + 96) = v26;
  *(v25 + 104) = v28;
  *(v25 + 72) = v29;
  v68 = v17;
  v30 = *(v17 + 16);
  *(v25 + 136) = v26;
  *(v25 + 144) = v28;
  *(v25 + 112) = v30;
  v31 = *(v19 + 16);
  *(v25 + 176) = v26;
  *(v25 + 184) = v28;
  *(v25 + 152) = v31;
  sub_217F4AD54();
  sub_217F4AA44("Evaluating %lu tags with %lu channel-topic mappings, %lu topic-topic mappings, and %lu location-topic mappings.", v64, v65, v66, *(&v66 + 1));

  v33 = sub_217E97288(v32);
  v74 = a1;

  v34 = *(v76 + 16);
  if (v34)
  {
    v65 = v33;
    v35 = sub_217E8E5AC(v34, 0);
    v36 = sub_217E96940(&v79, v35 + 4, v34, v76);
    v37 = v79;

    result = sub_217E7D06C(v37);
    if (v36 != v34)
    {
      __break(1u);
      goto LABEL_17;
    }

    v33 = v65;
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

  v39 = sub_217ED150C(v35, v33);

  v40 = *(v75 + 16);
  if (!v40)
  {
    v41 = MEMORY[0x277D84F90];
LABEL_11:
    v44 = sub_217ED150C(v41, v39);

    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = sub_217E8E5AC(*(v44 + 16), 0);
      v47 = sub_217E966DC(&v79, v46 + 4, v45, v44);
      sub_217E7D06C(v79);
      if (v47 == v45)
      {
LABEL_15:
        v65 = a12;
        v77 = v66;
        v83 = v89;
        v84[0] = v90[0];
        *(v84 + 15) = *(v90 + 15);
        v79 = v85;
        v80 = v86;
        v81 = v87;
        v82 = v88;
        v48 = static Classic.TagEvaluator.memberships(tags:userContext:aggregateContext:baselinePrior:decayRate:userFeedbackConfig:)(v46, v73, v67, &v77, &v79, a13, a14, a2);

        *&v77 = v71;
        *(&v77 + 1) = v70;
        v78 = v69;
        v81 = v93;
        v82 = v94;
        v83 = v95;
        v79 = v91;
        v80 = v92;
        v49 = sub_217ECD004(&v77, &v79);
        MEMORY[0x28223BE20](v49, v50);
        v53[2] = a13;
        v53[3] = a14;
        v53[4] = v48;
        v53[5] = &v85;
        v53[6] = v68;
        v54 = v76;
        v55 = &v91;
        v56 = v72;
        v57 = v75;
        v58 = v73;
        v59 = v71;
        v60 = v70;
        v61 = v69;
        v62 = v51;
        v63 = a12;
        v52 = sub_217ECCE98(MEMORY[0x277D84F98], sub_217ED158C, v53, v74);

        return v52;
      }

      __break(1u);
    }

    v46 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  v65 = v39;
  v41 = sub_217E8E5AC(v40, 0);
  v42 = sub_217E96940(&v79, v41 + 4, v40, v75);
  v43 = v79;

  result = sub_217E7D06C(v43);
  if (v42 == v40)
  {
    v39 = v65;
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_217ECE09C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_217F194B0(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217ECE1A0(uint64_t *a1, uint64_t *a2, uint64_t a3, double *a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v22 = a2[1];
  v74 = *a2;
  v23 = *a4;
  v24 = *a4;
  if (*(a3 + 16))
  {
    v25 = sub_217E8E88C(v74, v22);
    v24 = v23;
    if (v26)
    {
      v27 = *(a3 + 56) + 16 * v25;
      if (*(v27 + 8))
      {
        v24 = v23;
      }

      else
      {
        v24 = *v27;
      }
    }
  }

  if (*(a7 + 16) && (v28 = sub_217E8E88C(v74, v22), (v29 & 1) != 0))
  {
    v30 = *(*(a7 + 56) + 8 * v28);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v31 = a8[3];
  v71 = a8[2];
  v72 = v31;
  v73 = a8[4];
  v32 = a8[1];
  v69 = *a8;
  v70 = v32;
  sub_217ECD5D0(v30, a3, &v69, v23);
  v34 = v33;

  if (*(a11 + 16) && (v35 = sub_217E8E88C(v74, v22), (v36 & 1) != 0))
  {
    v37 = *(*(a11 + 56) + 8 * v35);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v38 = a8[3];
  v71 = a8[2];
  v72 = v38;
  v73 = a8[4];
  v39 = a8[1];
  v69 = *a8;
  v70 = v39;
  sub_217ECD5D0(v37, a3, &v69, v23);
  v41 = v40;

  sub_217ECE5A0(a12, a13, a14, a15, v74, v22, a16, a8);
  v43 = v42;
  v44 = 0.0;
  if (*(a17 + 16))
  {
    v45 = sub_217E8E88C(v74, v22);
    v44 = 0.0;
    if (v46)
    {
      v47 = *(a17 + 56) + 80 * v45;
      v44 = *(v47 + 16);
      if (*(v47 + 24))
      {
        v44 = 0.0;
      }
    }
  }

  v48 = *(a8 + 6);
  v49 = v48 * pow(v44, *(a8 + 7)) + 1.0;
  v50 = a12[3];
  v51 = a12[4];
  __swift_project_boxed_opaque_existential_1(a12, v50);
  (*(v51 + 96))(&v69, v50, v51);
  if (BYTE8(v70))
  {
    v52 = 0.0;
  }

  else
  {
    v52 = *(a8 + 3);
  }

  v54 = *(a8 + 8);
  v53 = *(a8 + 9);
  v55 = v52 + v53 + v54 + *a8;
  v56 = (v24 * v53 + v34 * v54 + v41 * *a8 + v43 * *(a8 + 3)) / v55;
  if (v55 <= 0.0)
  {
    v56 = 0.0;
  }

  *&v69 = v41;
  *(&v69 + 1) = v24;
  *&v70 = v43;
  *(&v70 + 1) = v49 * v56;
  *&v71 = v49;
  *(&v71 + 1) = v34;
  if (qword_280C28E80 != -1)
  {
    swift_once();
  }

  v57 = qword_280C28E88;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5278, &qword_217F4BF30);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_217F4C8A0;
  v59 = MEMORY[0x277D837D0];
  *(v58 + 56) = MEMORY[0x277D837D0];
  v60 = sub_217E86438();
  *(v58 + 64) = v60;
  v61 = v74;
  *(v58 + 32) = v74;
  *(v58 + 40) = v22;

  v62 = sub_217E98300();
  *(v58 + 96) = v59;
  *(v58 + 104) = v60;
  *(v58 + 72) = v62;
  *(v58 + 80) = v63;
  v64 = sub_217F4AD54();
  sub_217F4AA44("Scored %{public}@ with result %{public}@ ", 41, 2, &dword_217E7B000, v57, v64, v58, a18, a19);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = *a1;
  result = sub_217F19F64(&v69, v61, v22, isUniquelyReferenced_nonNull_native);
  *a1 = v68;
  return result;
}

void *sub_217ECE5A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8)
{
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  result = (*(v14 + 96))(&v21, v13, v14);
  if ((BYTE8(v22) & 1) == 0)
  {
    if (*(a4 + 16) && (v16 = sub_217E8E88C(a5, a6), (v17 & 1) != 0))
    {
      v18 = *(*(a4 + 56) + 8 * v16);
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    v19 = a8[3];
    v23 = a8[2];
    v24 = v19;
    v25 = a8[4];
    v20 = a8[1];
    v21 = *a8;
    v22 = v20;
    sub_217ECD43C(v18, a7, &v21);
  }

  return result;
}

uint64_t static Classic.TagEvaluator.evaluate(tags:translations:context:baselinePrior:decayRate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, double a7)
{
  v118 = a3;
  v121 = a6;
  v117 = *(a6 + 8);
  v119 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v122 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness, v12);
  v120 = &v114 - v13;
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a1 + 16);
  v123 = v17;
  if (v16)
  {
    v125 = a2;
    v126 = MEMORY[0x277D84F98];
    v18 = a1;
    v19 = (a1 + 40);
    v124 = v16;
    while (1)
    {
      v29 = *(v19 - 1);
      v28 = *v19;
      *&v127 = 2831206;
      *(&v127 + 1) = 0xE300000000000000;

      MEMORY[0x21CEAEAC0](v29, v28);
      v30 = v127;

      v31 = v126;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v127 = v31;
      v33 = sub_217E8E88C(v29, v28);
      v35 = *(v31 + 16);
      v36 = (v34 & 1) == 0;
      v37 = __OFADD__(v35, v36);
      v38 = v35 + v36;
      if (v37)
      {
        break;
      }

      v39 = v34;
      if (*(v31 + 24) >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v46 = v33;
          sub_217E8F734();
          v33 = v46;
        }
      }

      else
      {
        sub_217E921C8(v38, isUniquelyReferenced_nonNull_native);
        v33 = sub_217E8E88C(v29, v28);
        if ((v39 & 1) != (v40 & 1))
        {
          goto LABEL_54;
        }
      }

      v41 = v127;
      v126 = v127;
      if (v39)
      {
        v20 = *(v127 + 56) + 56 * v33;
        v21 = *v20;
        v22 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        *v20 = v30;
        *(v20 + 16) = v29;
        *(v20 + 24) = v28;
        *(v20 + 32) = 0;
        *(v20 + 40) = 0;
        v27 = *(v20 + 48);
        *(v20 + 48) = 4;
        sub_217E810D0(v21, v22, v23, v24, v25, v26, v27);
      }

      else
      {
        *(v127 + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v42 = (v41[6] + 16 * v33);
        *v42 = v29;
        v42[1] = v28;
        v43 = v41[7] + 56 * v33;
        *v43 = v30;
        *(v43 + 16) = v29;
        *(v43 + 24) = v28;
        *(v43 + 32) = 0;
        *(v43 + 40) = 0;
        *(v43 + 48) = 4;
        v44 = v41[2];
        v37 = __OFADD__(v44, 1);
        v45 = v44 + 1;
        if (v37)
        {
          goto LABEL_51;
        }

        v41[2] = v45;
      }

      v19 += 2;
      if (!--v16)
      {
        v47 = 0;
        v48 = v18 + 40;
        v49 = MEMORY[0x277D84F98];
        v51 = v124;
        v50 = v125;
LABEL_15:
        v52 = (v48 + 16 * v47);
        v53 = v47;
        while (1)
        {
          if (v53 >= v51)
          {
            goto LABEL_49;
          }

          v47 = v53 + 1;
          if (__OFADD__(v53, 1))
          {
            goto LABEL_50;
          }

          if (*(v50 + 16))
          {
            v55 = *(v52 - 1);
            v54 = *v52;

            v56 = sub_217E8E88C(v55, v54);
            if (v57)
            {
              v114 = v48;
              v58 = (*(v50 + 56) + 16 * v56);
              v60 = *v58;
              v59 = v58[1];
              *&v127 = 2831206;
              *(&v127 + 1) = 0xE300000000000000;

              v115 = v60;
              v116 = v59;
              MEMORY[0x21CEAEAC0](v60, v59);
              v61 = v127;
              v62 = v49;
              v63 = swift_isUniquelyReferenced_nonNull_native();
              *&v127 = v62;
              v65 = sub_217E8E88C(v55, v54);
              v66 = v62[2];
              v67 = (v64 & 1) == 0;
              v68 = v66 + v67;
              if (__OFADD__(v66, v67))
              {
                goto LABEL_52;
              }

              v69 = v64;
              if (v62[3] >= v68)
              {
                if (v63)
                {
                  v72 = v127;
                  if ((v64 & 1) == 0)
                  {
                    goto LABEL_31;
                  }
                }

                else
                {
                  sub_217E8F734();
                  v72 = v127;
                  if ((v69 & 1) == 0)
                  {
                    goto LABEL_31;
                  }
                }
              }

              else
              {
                sub_217E921C8(v68, v63);
                v70 = sub_217E8E88C(v55, v54);
                if ((v69 & 1) != (v71 & 1))
                {
                  goto LABEL_54;
                }

                v65 = v70;
                v72 = v127;
                if ((v69 & 1) == 0)
                {
LABEL_31:
                  v72[(v65 >> 6) + 8] |= 1 << v65;
                  v82 = (v72[6] + 16 * v65);
                  *v82 = v55;
                  v82[1] = v54;
                  v83 = v72[7] + 56 * v65;
                  *v83 = v61;
                  v84 = v116;
                  *(v83 + 16) = v115;
                  *(v83 + 24) = v84;
                  *(v83 + 32) = 0;
                  *(v83 + 40) = 0;
                  *(v83 + 48) = 4;
                  v85 = v72[2];
                  v37 = __OFADD__(v85, 1);
                  v86 = v85 + 1;
                  if (v37)
                  {
                    goto LABEL_53;
                  }

                  v49 = v72;
                  v72[2] = v86;
LABEL_33:
                  v51 = v124;
                  v50 = v125;
                  v48 = v114;
                  if (v47 != v124)
                  {
                    goto LABEL_15;
                  }

LABEL_34:
                  v87 = v49;
                  goto LABEL_36;
                }
              }

              v49 = v72;
              v73 = v72[7] + 56 * v65;
              v74 = *v73;
              v75 = *(v73 + 8);
              v76 = *(v73 + 16);
              v77 = *(v73 + 24);
              v78 = *(v73 + 32);
              v79 = *(v73 + 40);
              *v73 = v61;
              v80 = v116;
              *(v73 + 16) = v115;
              *(v73 + 24) = v80;
              *(v73 + 32) = 0;
              *(v73 + 40) = 0;
              v81 = *(v73 + 48);
              *(v73 + 48) = 4;
              sub_217E810D0(v74, v75, v76, v77, v78, v79, v81);

              goto LABEL_33;
            }
          }

          ++v53;
          v52 += 2;
          if (v47 == v51)
          {
            goto LABEL_34;
          }
        }
      }
    }

    __break(1u);
    goto LABEL_48;
  }

  v87 = MEMORY[0x277D84F98];
  v126 = MEMORY[0x277D84F98];
LABEL_36:
  v88 = *(v87 + 16);
  v116 = v87;
  if (!v88)
  {
    goto LABEL_39;
  }

  v89 = sub_217E8E644(v88, 0);
  v90 = sub_217E96A98(&v127, (v89 + 4), v88, v87);
  v91 = v127;

  sub_217E7D06C(v91);
  if (v90 != v88)
  {
    __break(1u);
LABEL_39:
    v89 = MEMORY[0x277D84F90];
  }

  *&v127 = v89;

  sub_217E809E0(v92);
  v93 = v127;
  v125 = *(v127 + 16);
  if (!v125)
  {
    v96 = MEMORY[0x277D84FA0];
LABEL_46:

    *&v127 = v14;
    *(&v127 + 1) = v15;
    v106 = v119;
    v105 = v120;
    v107 = v121;
    ClassicAggregateContextType.lookupBaseline(with:)(&v127, v119, v121, v120);
    v127 = 0uLL;
    v108 = (*(v117 + 48))(v96, &v127, v106);

    MEMORY[0x28223BE20](v109, v110);
    *(&v114 - 6) = v106;
    *(&v114 - 5) = v107;
    v111 = v116;
    *(&v114 - 4) = v108;
    *(&v114 - 3) = v111;
    *(&v114 - 2) = v105;
    *(&v114 - 1) = a7;
    v112 = sub_217ECC880(MEMORY[0x277D84F98], sub_217ED15D8, (&v114 - 8), v126);

    (*(v122 + 8))(v105, v123);
    return v112;
  }

  v94 = 0;
  v95 = (v127 + 80);
  v96 = MEMORY[0x277D84FA0];
  v124 = v127;
  while (v94 < *(v93 + 16))
  {
    v97 = *(v95 - 6);
    v98 = *(v95 - 5);
    v99 = *(v95 - 4);
    v100 = *(v95 - 3);
    v101 = *(v95 - 2);
    v102 = *(v95 - 1);
    ++v94;
    v103 = *v95;
    v95 += 56;

    sub_217E81030(v97, v98, v99, v100, v101, v102, v103);
    v104 = swift_isUniquelyReferenced_nonNull_native();
    *&v127 = v96;
    sub_217ED1080(v97, v98, v104);
    sub_217E810D0(v97, v98, v99, v100, v101, v102, v103);

    v93 = v124;
    v96 = v127;
    if (v125 == v94)
    {
      goto LABEL_46;
    }
  }

LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_217F4B1C4();
  __break(1u);
  return result;
}

uint64_t sub_217ECEE28(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, Swift::Double a8)
{
  v38 = a3;
  v34 = a7;
  v35 = a5;
  v33[0] = a4;
  v33[1] = *(a7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_217F4AD74();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v33 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = v33 - v21;
  v23 = *(a2 + 2);
  v24 = *(a2 + 3);
  v40[0] = *(a2 + 1);
  v40[1] = v23;
  v25 = a2[1];
  v36 = *a2;
  v37 = v25;
  v41 = *(a2 + 64);
  v40[2] = v24;
  v26 = v40[0];

  v39 = v26;
  sub_217F4AAC4();

  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v17, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v39 = *a1;
    result = sub_217F1A0A8(v36, v37, isUniquelyReferenced_nonNull_native, 0.0);
  }

  else
  {
    (*(v18 + 32))(v22, v17, AssociatedTypeWitness);
    v29 = sub_217ECF13C(v40, v33[0], v38, v22, a6, v34);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v31 = sub_217E83714(v35, v29, AssociatedTypeWitness, AssociatedConformanceWitness, a8);

    v32 = swift_isUniquelyReferenced_nonNull_native();
    *&v39 = *a1;
    sub_217F1A0A8(v36, v37, v32, v31);
    result = (*(v18 + 8))(v22, AssociatedTypeWitness);
  }

  *a1 = v39;
  return result;
}

uint64_t sub_217ECF13C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v37 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_217F4AD74();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v34 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v16, v17);
  v20 = &v34 - v19;
  if (*(a1 + 48) == 4)
  {
    v35 = v18;
    v36 = a4;
    if (*(a2 + 16))
    {
      v21 = sub_217E8E88C(*(a1 + 16), *(a1 + 24));
      if (v22)
      {
        v23 = (*(a2 + 56) + 56 * v21);
        v25 = *v23;
        v24 = v23[1];

        v38 = v25;
        v39 = v24;
        sub_217F4AAC4();

        if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) != 1)
        {
          (*(v15 + 32))(v20, v14, AssociatedTypeWitness);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5200, &qword_217F4BC30);
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_217F4C8A0;
          *(v26 + 56) = AssociatedTypeWitness;
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          *(v26 + 64) = AssociatedConformanceWitness;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v26 + 32));
          v32 = *(v15 + 16);
          v32(boxed_opaque_existential_1, v20, AssociatedTypeWitness);
          *(v26 + 96) = AssociatedTypeWitness;
          *(v26 + 104) = AssociatedConformanceWitness;
          v33 = __swift_allocate_boxed_opaque_existential_1((v26 + 72));
          v32(v33, v36, AssociatedTypeWitness);
          (*(v15 + 8))(v20, AssociatedTypeWitness);
          return v26;
        }

        (*(v11 + 8))(v14, v35);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5200, &qword_217F4BC30);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_217F4BC20;
    *(v26 + 56) = AssociatedTypeWitness;
    *(v26 + 64) = swift_getAssociatedConformanceWitness();
    v27 = __swift_allocate_boxed_opaque_existential_1((v26 + 32));
    (*(v15 + 16))(v27, v36, AssociatedTypeWitness);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5200, &qword_217F4BC30);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_217F4BC20;
    *(v26 + 56) = AssociatedTypeWitness;
    *(v26 + 64) = swift_getAssociatedConformanceWitness();
    v28 = __swift_allocate_boxed_opaque_existential_1((v26 + 32));
    (*(v15 + 16))(v28, a4, AssociatedTypeWitness);
  }

  return v26;
}

uint64_t sub_217ECF508(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D28, &qword_217F520D8);
  result = sub_217F4ADB4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_217F4B224();
      sub_217F4AB24();
      result = sub_217F4B254();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_217ECF768(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D38, &qword_217F520E0);
  result = sub_217F4ADB4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 96 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v31 = *(v18 + 48);
      *v32 = *(v18 + 64);
      *&v32[9] = *(v18 + 73);
      v29 = *(v18 + 16);
      v30 = *(v18 + 32);
      sub_217F4B224();
      sub_217F4AB24();
      result = sub_217F4B254();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 96 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 48) = v31;
      *(v14 + 64) = *v32;
      *(v14 + 73) = *&v32[9];
      *(v14 + 16) = v29;
      *(v14 + 32) = v30;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_217ECFA0C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D20, &qword_217F520D0);
  result = sub_217F4ADB4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_217F4B214();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void *sub_217ECFC40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D28, &qword_217F520D8);
  v2 = *v0;
  v3 = sub_217F4ADA4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_217ECFD9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D38, &qword_217F520E0);
  v2 = *v0;
  v3 = sub_217F4ADA4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 96 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[4];
        *&v25[9] = *(v18 + 73);
        v24[3] = v20;
        *v25 = v21;
        v22 = v18[1];
        v24[0] = *v18;
        v24[1] = v22;
        v24[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0x59uLL);
        result = sub_217E98218(v24, &v23);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_217ECFF2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D20, &qword_217F520D0);
  v2 = *v0;
  v3 = sub_217F4ADA4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_217ED006C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D28, &qword_217F520D8);
  result = sub_217F4ADB4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_217F4B224();

      sub_217F4AB24();
      result = sub_217F4B254();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_217ED02A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D38, &qword_217F520E0);
  result = sub_217F4ADB4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v18 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v21 = (*(v3 + 48) + 96 * (v18 | (v6 << 6)));
      v23 = v21[3];
      v22 = v21[4];
      v24 = v21[2];
      *(v38 + 9) = *(v21 + 73);
      v37 = v23;
      v38[0] = v22;
      v36 = v24;
      v25 = v21[1];
      v34 = *v21;
      v35 = v25;
      sub_217F4B224();
      sub_217E98218(&v34, v33);
      sub_217F4AB24();
      result = sub_217F4B254();
      v26 = -1 << *(v5 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v11 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v11 + 8 * v28);
          if (v32 != -1)
          {
            v12 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v27) & ~*(v11 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 96 * v12);
      v14 = v35;
      *v13 = v34;
      v15 = v36;
      v16 = v37;
      v17 = v38[0];
      *(v13 + 73) = *(v38 + 9);
      v13[3] = v16;
      v13[4] = v17;
      v13[1] = v14;
      v13[2] = v15;
      ++*(v5 + 16);
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v20 = *(v3 + 56 + 8 * v6);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v9 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_217ED0528(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D20, &qword_217F520D0);
  result = sub_217F4ADB4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_217F4B214();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_217ED0728(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_217F37274(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_217F4B0F4();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[24 * i + 48];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 1))
          {
            break;
          }

          v14 = *v13;
          *v13 = *(v13 - 24);
          *(v13 + 2) = *(v13 - 1);
          *(v13 - 1) = v11;
          *(v13 - 24) = v14;
          v13 -= 24;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 24;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_217F4AC54();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_217ED0880(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_217ED0880(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_217F3610C(v7);
      v7 = result;
    }

    v83 = (v7 + 16);
    v84 = *(v7 + 16);
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = (v7 + 16 * v84);
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_217ED0E44((*a3 + 24 * *v85), (*a3 + 24 * *v87), *a3 + 24 * v88, v92);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_114;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_115;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_116;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v90 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 0;
        v19 = 24 * v6;
        v20 = v8;
        do
        {
          if (v20 != v6 + v18 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = v26 + v19;
            v23 = *(v21 + 2);
            v24 = *v21;
            v25 = *(v22 - 8);
            *v21 = *(v22 - 24);
            *(v21 + 2) = v25;
            *(v22 - 24) = v24;
            *(v22 - 8) = v23;
          }

          ++v20;
          --v18;
          v19 -= 24;
          v10 += 24;
        }

        while (v20 < v6 + v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_217E8DA14(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v36 = *(v7 + 16);
    v35 = *(v7 + 24);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      result = sub_217E8DA14((v35 > 1), v36 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v37;
    v38 = v7 + 32;
    v39 = (v7 + 32 + 16 * v36);
    *v39 = v8;
    v39[1] = v6;
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_127;
    }

    if (v36)
    {
      while (1)
      {
        v40 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v41 = *(v7 + 32);
          v42 = *(v7 + 40);
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_57:
          if (v44)
          {
            goto LABEL_104;
          }

          v57 = (v7 + 16 * v37);
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_106;
          }

          v63 = (v38 + 16 * v40);
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_111;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v40 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v67 = (v7 + 16 * v37);
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_72:
        if (v62)
        {
          goto LABEL_108;
        }

        v70 = (v38 + 16 * v40);
        v72 = *v70;
        v71 = v70[1];
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_110;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v40 - 1 >= v37)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v78 = (v38 + 16 * (v40 - 1));
        v79 = *v78;
        v80 = (v38 + 16 * v40);
        v81 = v80[1];
        sub_217ED0E44((*a3 + 24 * *v78), (*a3 + 24 * *v80), *a3 + 24 * v81, v92);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_99;
        }

        if (v40 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *(v7 + 16);
        if (v40 >= v82)
        {
          goto LABEL_101;
        }

        v37 = v82 - 1;
        result = memmove((v38 + 16 * v40), v80 + 2, 16 * (v82 - 1 - v40));
        *(v7 + 16) = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = v38 + 16 * v37;
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_102;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_103;
      }

      v52 = (v7 + 16 * v37);
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_105;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_107;
      }

      if (v56 >= v48)
      {
        v74 = (v38 + 16 * v40);
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v90;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 8))
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 24);
    *(v32 + 16) = *(v32 - 8);
    *(v32 - 8) = v30;
    *(v32 - 24) = v33;
    v32 -= 24;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_217ED0E44(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[3 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[3 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[2] < v4[2])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 3;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 3;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 3;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v7[2] = v13[2];
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[3 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[3 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v12 - 1) < *(v6 - 1))
      {
        v19 = v6 - 3;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 3, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 3;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 3;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[3 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

uint64_t sub_217ED1080(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *v3;
  sub_217F4B224();
  sub_217F4AB24();
  v8 = sub_217F4B254();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a1 && v12[1] == a2;
      if (v13 || (sub_217F4B144() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        v14 = 1;
        v15 = 1;
        goto LABEL_12;
      }
    }

    v15 = 0;
    v14 = 0;
  }

  else
  {
    v15 = 1;
    v14 = 1;
  }

LABEL_12:
  v16 = *(v7 + 16);
  v17 = v16 + v14;
  if (__OFADD__(v16, v14))
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v18 = *(v7 + 24);
  if (v18 < v17 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_217ECF508(v17);
    }

    else
    {
      if (v18 >= v17)
      {
        sub_217ECFC40();
        if ((v15 & 1) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      sub_217ED006C(v17);
    }

    v19 = *v3;
    sub_217F4B224();
    sub_217F4AB24();
    v20 = sub_217F4B254();
    v21 = -1 << *(v19 + 32);
    v10 = v20 & ~v21;
    if ((*(v19 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v22 = ~v21;
      while (1)
      {
        v23 = (*(v19 + 48) + 16 * v10);
        v24 = *v23 == a1 && v23[1] == a2;
        if (v24 || (sub_217F4B144() & 1) != 0)
        {
          break;
        }

        v10 = (v10 + 1) & v22;
        if (((*(v19 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      if ((v15 & 1) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
LABEL_31:
      if (v15)
      {
LABEL_32:
        v25 = *v3;
        *(*v3 + 8 * (v10 >> 6) + 56) |= 1 << v10;
        v26 = (*(v25 + 48) + 16 * v10);
        *v26 = a1;
        v26[1] = a2;
        v27 = *(v25 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (!v28)
        {
          result = 0;
          *(v25 + 16) = v29;
          return result;
        }

        goto LABEL_38;
      }
    }

LABEL_39:
    result = sub_217F4B1B4();
    __break(1u);
    return result;
  }

  if (v15)
  {
    goto LABEL_32;
  }

LABEL_35:
  v31 = (*(*v3 + 48) + 16 * v10);
  result = *v31;
  *v31 = a1;
  v31[1] = a2;
  return result;
}

uint64_t sub_217ED12EC(char a1, double a2)
{
  v5 = *v2;
  v6 = sub_217F4B214();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    v10 = 1;
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v8);
      v12 = v11 != a2;
      if (v11 == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v10 = 0;
  }

  else
  {
    v12 = 1;
    v10 = 1;
  }

LABEL_8:
  v13 = *(v5 + 16);
  v14 = v13 + v10;
  if (__OFADD__(v13, v10))
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v15 = *(v5 + 24);
  if (v15 >= v14 && (a1 & 1) != 0)
  {
    if (!v12)
    {
LABEL_27:
      v25 = *(*v2 + 48);
      result = *(v25 + 8 * v8);
      *(v25 + 8 * v8) = a2;
      return result;
    }

    goto LABEL_24;
  }

  if (a1)
  {
    sub_217ECFA0C(v14);
  }

  else
  {
    if (v15 >= v14)
    {
      sub_217ECFF2C();
      if (!v12)
      {
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    sub_217ED0528(v14);
  }

  v16 = *v2;
  v17 = sub_217F4B214();
  v18 = -1 << *(v16 + 32);
  v8 = v17 & ~v18;
  if (((*(v16 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_23:
    if (!v12)
    {
      goto LABEL_30;
    }

LABEL_24:
    v20 = *v2;
    *(*v2 + 8 * (v8 >> 6) + 56) |= 1 << v8;
    *(*(v20 + 48) + 8 * v8) = a2;
    v21 = *(v20 + 16);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      result = 0;
      *(v20 + 16) = v23;
      return result;
    }

    goto LABEL_29;
  }

  v19 = ~v18;
  while (*(*(v16 + 48) + 8 * v8) != a2)
  {
    v8 = (v8 + 1) & v19;
    if (((*(v16 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (!v12)
  {
    goto LABEL_27;
  }

LABEL_30:
  result = sub_217F4B1B4();
  __break(1u);
  return result;
}

uint64_t sub_217ED150C(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_217F194B0(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_217ED1608(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_217ED1658(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_217ED16EC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_217ED177C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 48);
  result = *(a1 + 56);
  v9 = *(a2 + 16);
  v8 = *(a2 + 32);
  v10 = *(a2 + 48);
  if (v4)
  {
    v11 = v2 == v3;
  }

  else
  {
    v11 = 1;
  }

  v12 = *(a2 + 56);
  if (v11)
  {
    return (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), v9), vceqq_f64(*(a1 + 32), v8)))) & 1) != 0 && v5 == v10 && (sub_217ED791C(result, v12) & 1) != 0;
  }

  v13 = (v2 + 32);
  v14 = (v3 + 32);
  while (v4)
  {
    if (*v13 != *v14)
    {
      return 0;
    }

    ++v13;
    ++v14;
    if (!--v4)
    {
      return (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 16), v9), vceqq_f64(*(a1 + 32), v8)))) & 1) != 0 && v5 == v10 && (sub_217ED791C(result, v12) & 1) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217ED184C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 109;
    }

    else
    {
      v4 = 0x6168706C61;
    }

    if (v2)
    {
      v3 = 0xE100000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE100000000000000;
    v4 = 100;
  }

  else
  {
    v3 = 0xE300000000000000;
    if (a1 == 3)
    {
      v4 = 7235949;
    }

    else
    {
      v4 = 7889261;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 109;
    }

    else
    {
      v8 = 0x6168706C61;
    }

    if (a2)
    {
      v7 = 0xE100000000000000;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    if (v4 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 7235949;
    if (a2 != 3)
    {
      v5 = 7889261;
    }

    if (a2 == 2)
    {
      v6 = 100;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE100000000000000;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v7)
  {
LABEL_33:
    v9 = sub_217F4B144();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

void *sub_217ED19D0@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, const void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, const void *a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *(a1 + 16);
  v14 = *(a1 + 17);
  v15 = *(a1 + 18);
  v16 = *a5;
  *a8 = *a1;
  *(a8 + 16) = v13;
  *(a8 + 17) = v14;
  *(a8 + 18) = v15;
  *(a8 + 24) = *(a1 + 24);
  memcpy((a8 + 40), a2, 0x780uLL);
  memcpy((a8 + 1960), a3, 0x3CBuLL);
  v17 = *(a4 + 48);
  *(a8 + 2968) = *(a4 + 32);
  *(a8 + 2984) = v17;
  *(a8 + 3000) = *(a4 + 64);
  v18 = *(a4 + 16);
  *(a8 + 2936) = *a4;
  *(a8 + 2952) = v18;
  *(a8 + 3008) = v16;
  *(a8 + 3016) = a6;

  return memcpy((a8 + 3024), a7, 0x238uLL);
}

double sub_217ED1A98@<D0>(double *a1@<X8>, double a2@<D0>)
{
  sub_217EBA76C(a2);
  result = a2;
  *a1 = a2;
  return result;
}

double sub_217ED1AD4@<D0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>)
{
  sub_217EBA934(a5);
  result = a5;
  *a4 = a5;
  *(a4 + 8) = a1;
  *(a4 + 9) = a2;
  *(a4 + 10) = a3;
  return result;
}

uint64_t sub_217ED1B38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_217EBACB4(a1);
  *a2 = a1;
  return result;
}

uint64_t sub_217ED1B74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_217EBAAFC(a1);
  *a2 = a1;
  return result;
}

__n128 sub_217ED1BF0@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  v4 = *a2;
  *a3 = *a1;
  a3[1] = v4;
  return result;
}

void *sub_217ED1C00@<X0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X3>, double *a5@<X4>, double *a6@<X5>, double *a7@<X6>, double *a8@<X7>, void *a9@<X8>, double *a10, double *a11, double *a12, double *a13, double *a14, double *a15, double *a16, double *a17, double *a18)
{
  v19 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  v22 = *a2;
  v23 = a2[1];
  v24 = a2[2];
  v25 = a2[3];
  v26 = *a3;
  v27 = a3[1];
  v28 = a3[2];
  v29 = a3[3];
  v33 = a4[1];
  v34 = *a4;
  v31 = a4[3];
  v32 = a4[2];
  v37 = a5[1];
  v38 = *a5;
  v35 = a5[3];
  v36 = a5[2];
  v45 = a6[1];
  v46 = *a6;
  v43 = a6[3];
  v44 = a6[2];
  v53 = a7[1];
  v54 = *a7;
  v51 = a7[3];
  v52 = a7[2];
  v61 = a8[1];
  v62 = *a8;
  v59 = a8[3];
  v60 = a8[2];
  __src[0] = *a1;
  __src[1] = v19;
  __src[2] = v20;
  __src[3] = v21;
  v41 = a10[1];
  v42 = *a10;
  v39 = a10[3];
  v40 = a10[2];
  v49 = a11[1];
  v50 = *a11;
  v47 = a11[3];
  v48 = a11[2];
  v57 = a12[1];
  v58 = *a12;
  v55 = a12[3];
  v56 = a12[2];
  v65 = a13[1];
  v66 = *a13;
  v63 = a13[3];
  v64 = a13[2];
  v69 = a14[1];
  v70 = *a14;
  v67 = a14[3];
  v68 = a14[2];
  v73 = a15[1];
  v74 = *a15;
  v71 = a15[3];
  v72 = a15[2];
  v77 = a16[1];
  v78 = *a16;
  v75 = a16[3];
  v76 = a16[2];
  v81 = a17[1];
  v82 = *a17;
  v79 = a17[3];
  v80 = a17[2];
  v85 = a18[1];
  v86 = *a18;
  v83 = a18[3];
  v84 = a18[2];
  sub_217EC7AA4(__src[0], v19, v20, v21);
  __src[4] = v22;
  __src[5] = v23;
  __src[6] = v24;
  __src[7] = v25;
  sub_217EC7CAC(v22, v23, v24, v25);
  __src[8] = v26;
  __src[9] = v27;
  __src[10] = v28;
  __src[11] = v29;
  sub_217EC7EB8(v26, v27, v28, v29);
  __src[12] = v34;
  __src[13] = v33;
  __src[14] = v32;
  __src[15] = v31;
  sub_217EC80C4(v34, v33, v32, v31);
  __src[16] = v38;
  __src[17] = v37;
  __src[18] = v36;
  __src[19] = v35;
  sub_217EC82D8(v38, v37, v36, v35);
  __src[20] = v46;
  __src[21] = v45;
  __src[22] = v44;
  __src[23] = v43;
  sub_217EC84E8(v46, v45, v44, v43);
  __src[24] = v54;
  __src[25] = v53;
  __src[26] = v52;
  __src[27] = v51;
  sub_217EC86F8(v54, v53, v52, v51);
  __src[28] = v62;
  __src[29] = v61;
  __src[30] = v60;
  __src[31] = v59;
  sub_217EC890C(v62, v61, v60, v59);
  __src[32] = v42;
  __src[33] = v41;
  __src[34] = v40;
  __src[35] = v39;
  sub_217EC8B1C(v42, v41, v40, v39);
  __src[36] = v50;
  __src[37] = v49;
  __src[38] = v48;
  __src[39] = v47;
  sub_217EC8D30(v50, v49, v48, v47);
  __src[40] = v58;
  __src[41] = v57;
  __src[42] = v56;
  __src[43] = v55;
  sub_217EC8F40(v58, v57, v56, v55);
  __src[44] = v66;
  __src[45] = v65;
  __src[46] = v64;
  __src[47] = v63;
  sub_217EC9150(v66, v65, v64, v63);
  __src[48] = v70;
  __src[49] = v69;
  __src[50] = v68;
  __src[51] = v67;
  sub_217EC935C(v70, v69, v68, v67);
  __src[52] = v74;
  __src[53] = v73;
  __src[54] = v72;
  __src[55] = v71;
  sub_217EC9564(v74, v73, v72, v71);
  __src[56] = v78;
  __src[57] = v77;
  __src[58] = v76;
  __src[59] = v75;
  sub_217EC976C(v78, v77, v76, v75);
  __src[60] = v82;
  __src[61] = v81;
  __src[62] = v80;
  __src[63] = v79;
  sub_217EC9974(v82, v81, v80, v79);
  __src[64] = v86;
  __src[65] = v85;
  __src[66] = v84;
  __src[67] = v83;
  sub_217EC9B88(v86, v85, v84, v83);
  return memcpy(a9, __src, 0x220uLL);
}

void *sub_217ED1F88@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  return memcpy((a3 + 24), a2, 0x220uLL);
}

__n128 sub_217ED1FD4@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 *a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  v37 = *(a2 + 4);
  v38 = *(a4 + 4);
  v39 = *(a6 + 4);
  v40 = *(a10 + 32);
  v41 = *(a12 + 32);
  v42 = *(a14 + 32);
  v43 = *a16;
  *&v62 = a1;
  v60 = a16[2];
  v61 = a16[1];
  ConditionalConfigurableValue.init(wrappedValue:)(&v62, a18, &_s14descr2829CD401O28PositiveIntConditionProviderVN, a26, &off_280C27760, a9);
  v44 = *a2;
  *(a9 + 24) = a2[1];
  *(a9 + 8) = v44;
  *(a9 + 40) = v37;
  *&v62 = a3;
  ConditionalConfigurableValue.init(wrappedValue:)(&v62, a19, &_s14descr2829CD401O28PositiveIntConditionProviderVN, a27, &off_280C27760, a9 + 48);
  v45 = *a4;
  *(a9 + 72) = a4[1];
  *(a9 + 56) = v45;
  *(a9 + 88) = v38;
  *&v62 = a5;
  ConditionalConfigurableValue.init(wrappedValue:)(&v62, a20, &_s14descr2829CD401O28PositiveIntConditionProviderVN, a28, &off_280C27760, a9 + 96);
  v46 = *a6;
  *(a9 + 120) = a6[1];
  *(a9 + 104) = v46;
  *(a9 + 136) = v39;
  *(a9 + 144) = a7;
  *&v62 = a8;
  ConditionalConfigurableValue.init(wrappedValue:)(&v62, a21, &_s14descr2829CD401O28PositiveIntConditionProviderVN, a29, &off_280C27760, a9 + 152);
  v47 = *(a10 + 16);
  *(a9 + 160) = *a10;
  *(a9 + 176) = v47;
  *(a9 + 192) = v40;
  *&v62 = a11;
  ConditionalConfigurableValue.init(wrappedValue:)(&v62, a22, &_s14descr2829CD401O28PositiveIntConditionProviderVN, a30, &off_280C27760, a9 + 200);
  v48 = *(a12 + 16);
  *(a9 + 208) = *a12;
  *(a9 + 224) = v48;
  *(a9 + 240) = v41;
  *&v62 = a13;
  ConditionalConfigurableValue.init(wrappedValue:)(&v62, a23, &_s14descr2829CD401O28PositiveIntConditionProviderVN, a31, &off_280C27760, a9 + 248);
  v49 = *(a14 + 16);
  *(a9 + 256) = *a14;
  *(a9 + 272) = v49;
  *(a9 + 288) = v42;
  v50 = a15[1];
  v62 = *a15;
  v63 = v50;
  v51 = a15[3];
  v64 = a15[2];
  v65 = v51;
  v52 = sub_217EF7044();
  ConditionalConfigurableValue.init(wrappedValue:)(&v62, a24, &_s14descr2829CD401O22QuotaConditionProviderVN, a32, v52, a9 + 296);
  *&v62 = v43;
  *(&v62 + 1) = v61;
  *&v63 = v60;
  v53 = sub_217EF7098();
  ConditionalConfigurableValue.init(wrappedValue:)(&v62, a25, &_s14descr2829CD401O31TopicDiversityConditionProviderVN, a33, v53, a9 + 360);
  v54 = *(a17 + 16);
  *(a9 + 384) = *a17;
  *(a9 + 400) = v54;
  result = *(a17 + 32);
  *(a9 + 416) = result;
  *(a9 + 432) = *(a17 + 48);
  return result;
}

void static Classic.Configuration.ClusteringConfiguration.DefaultTopicClusteringKnobsTopicDiversity.defaultValue.getter(void *a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  a1[1] = 1;
  a1[2] = MEMORY[0x277D84FA0];
}

void sub_217ED2318(void *__src@<X0>, const void *a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, uint64_t a18, const void *a19, uint64_t a20, const void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v40 = *a3;
  memcpy(a9, __src, 0x1B2uLL);
  memcpy((a9 + 440), a2, 0x1B2uLL);
  *(a9 + 880) = a10;
  sub_217EBAE6C(a10);
  *(a9 + 888) = v40;
  *(a9 + 904) = a4;
  *(a9 + 896) = a5;
  *(a9 + 912) = a6;
  sub_217EBB03C(a6);
  *(a9 + 920) = a7;
  *(a9 + 921) = a8;
  *(a9 + 928) = a11;
  sub_217EBB1F4(a11);
  *(a9 + 936) = a12;
  sub_217EBB3BC(a12);
  *(a9 + 944) = a18;
  sub_217EBB584(a18);
  *(a9 + 952) = a13;
  sub_217EBB73C(a13);
  *(a9 + 960) = a14;
  sub_217EBB900(a14);
  memcpy((a9 + 968), a19, 0x1B2uLL);
  *(a9 + 1408) = a15;
  sub_217EBBAC4(a15);
  *(a9 + 1416) = a16;
  sub_217EBBC98(a16);
  *(a9 + 1424) = a20;
  sub_217EBBE6C(a20);
  *(a9 + 1432) = a17;
  sub_217EBC024(a17);
  memcpy((a9 + 1440), a21, 0x1B2uLL);
  *(a9 + 1880) = a22;
  sub_217EBC1F0(*&a22);
  *(a9 + 1888) = a23;
  sub_217EBC3B4(*&a23);
  *(a9 + 1896) = a24;
  sub_217EBC578(*&a24);
  *(a9 + 1904) = a25;
  sub_217EBC73C(*&a25);
  *(a9 + 1912) = a26;
  sub_217EBC90C(*&a26);
}

double sub_217ED2548@<D0>(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>)
{
  *&v14 = a2;
  sub_217EBF7CC(a2);
  *(&v14 + 1) = a3;
  sub_217EBF9A4(a3);
  *&v15 = a4;
  sub_217EBFB78(a4);
  *(&v15 + 1) = a5;
  sub_217EBFD4C(a5);
  *&v16 = a6;
  sub_217EBFF10(a6);
  *(&v16 + 1) = a7;
  sub_217EC00DC(a7);
  *a1 = v14;
  a1[1] = v15;
  result = a6;
  a1[2] = v16;
  return result;
}

void sub_217ED2614(double *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
}

void *sub_217ED2620@<X0>(double *a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, double a18, double a19, double a20, double a21, double a22, __int128 a23, double a24, uint64_t a25, void *a26, double a27, __int128 a28, double a29, char a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, double a35, double *a36, double a37, uint64_t a38, __int128 *a39, double a40, double a41, double a42)
{
  *(&v77 + 1) = a16;
  *&v77 = a15;
  *&v75 = a12;
  *(&v75 + 1) = a13;
  *&v47 = *(a25 + 32);
  v48 = a39[5];
  v97 = a39[4];
  v98[0] = v48;
  v49 = a39[1];
  v93 = *a39;
  v94 = v49;
  v50 = a39[2];
  v96 = a39[3];
  *&v51 = *a26;
  *(&v47 + 1) = *(a25 + 40);
  *(&v51 + 1) = a26[1];
  v81 = v51;
  v82 = v47;
  v52 = a3[2];
  *(v98 + 15) = *(a39 + 95);
  v95 = v50;
  *__src = a10;
  v53 = *a1;
  v54 = a1[1];
  v56 = a1[2];
  v55 = a1[3];
  v69 = a3[1];
  v70 = *a3;
  v72 = *(a3 + 3);
  v71 = a3[5];
  v73 = *(a6 + 40);
  v74 = *(a6 + 32);
  v79 = a26[3];
  v80 = a26[2];
  v86 = a36[1];
  v87 = *a36;
  v84 = a36[3];
  v85 = a36[2];
  v89 = *(a38 + 40);
  v90 = *(a38 + 32);
  sub_217EC26DC(a10);
  *(__src + 1) = a11;
  sub_217EC28A4(a11);
  *&__src[1] = v53;
  *(&__src[1] + 1) = v54;
  *&__src[2] = v56;
  *(&__src[2] + 1) = v55;
  sub_217EC2A74(v53, v54, v56, v55);
  __src[3] = v75;
  sub_217EC2CAC(*&v75);
  sub_217EC2E80(*(&v75 + 1));
  LOBYTE(__src[4]) = a2;
  *(&__src[4] + 1) = a14;
  sub_217EC3048(a14);
  __src[5] = v77;
  sub_217EC3210(*&v77);
  sub_217EC33D8(*(&v77 + 1));
  *&__src[6] = a17;
  sub_217EC35A0(a17);
  *(&__src[6] + 1) = a18;
  sub_217EC3768(a18);
  *&__src[7] = a19;
  sub_217EC3930(a19);
  *&__src[8] = v70;
  *(&__src[8] + 1) = v69;
  *&__src[9] = v52;
  *(&__src[9] + 8) = v72;
  *(&__src[10] + 1) = v71;
  *(&__src[16] + 15) = *(a4 + 95);
  v57 = *(a4 + 80);
  __src[15] = *(a4 + 64);
  __src[16] = v57;
  v58 = *(a4 + 16);
  __src[11] = *a4;
  __src[12] = v58;
  v59 = *(a4 + 48);
  __src[13] = *(a4 + 32);
  __src[14] = v59;
  *(&__src[17] + 1) = a20;
  sub_217EC3AF8(a20);
  BYTE8(__src[7]) = a5;
  *&__src[18] = a21;
  sub_217EC3CC8(a21);
  v60 = *(a6 + 16);
  *(&__src[18] + 8) = *a6;
  *(&__src[19] + 8) = v60;
  *(&__src[20] + 1) = v74;
  *&__src[21] = v73;
  *(&__src[21] + 1) = a22;
  sub_217EC3E90(a22);
  __src[22] = a23;
  sub_217EC405C(*&a23);
  sub_217EC4224(*(&a23 + 1));
  LOBYTE(__src[23]) = a7;
  *(&__src[23] + 1) = a24;
  sub_217EC43F4(a24);
  v61 = *(a8 + 144);
  __src[32] = *(a8 + 128);
  __src[33] = v61;
  __src[34] = *(a8 + 160);
  *&__src[35] = *(a8 + 176);
  v62 = *(a8 + 80);
  __src[28] = *(a8 + 64);
  __src[29] = v62;
  v63 = *(a8 + 112);
  __src[30] = *(a8 + 96);
  __src[31] = v63;
  v64 = *(a8 + 16);
  __src[24] = *a8;
  __src[25] = v64;
  v65 = *(a8 + 48);
  __src[26] = *(a8 + 32);
  __src[27] = v65;
  v66 = *(a25 + 16);
  *(&__src[35] + 8) = *a25;
  *(&__src[36] + 8) = v66;
  *(&__src[37] + 8) = v82;
  *(&__src[38] + 8) = v81;
  *(&__src[39] + 1) = v80;
  *&__src[40] = v79;
  *(&__src[40] + 1) = a27;
  sub_217EC45C4(a27);
  __src[41] = a28;
  sub_217EC4788(*&a28);
  sub_217EC4958(*(&a28 + 1));
  *&__src[42] = a29;
  sub_217EC4B20(a29);
  BYTE8(__src[42]) = a30;
  __src[43] = a31;
  sub_217EC4CE8(*&a31);
  sub_217EC4EB8(*(&a31 + 1));
  __src[44] = a32;
  sub_217EC5084(*&a32);
  sub_217EC524C(*(&a32 + 1));
  __src[45] = a33;
  sub_217EC5414(*&a33);
  sub_217EC55E0(*(&a33 + 1));
  __src[46] = a34;
  sub_217EC57B0(*&a34);
  sub_217EC5980(*(&a34 + 1));
  *&__src[47] = a35;
  sub_217EC5B50(a35);
  *&__src[49] = v87;
  *(&__src[49] + 1) = v86;
  *&__src[50] = v85;
  *(&__src[50] + 1) = v84;
  sub_217EC5D20(v87, v86, v85, v84);
  *&__src[51] = a37;
  sub_217EC5F5C(a37);
  v67 = *(a38 + 16);
  *(&__src[51] + 8) = *a38;
  *(&__src[52] + 8) = v67;
  *(&__src[53] + 1) = v90;
  *&__src[54] = v89;
  *(&__src[58] + 8) = v97;
  *(&__src[59] + 8) = v98[0];
  *(&__src[60] + 7) = *(v98 + 15);
  *(&__src[54] + 8) = v93;
  *(&__src[55] + 8) = v94;
  *(&__src[56] + 8) = v95;
  *(&__src[57] + 8) = v96;
  *&__src[48] = a41;
  sub_217EC6128(a41);
  *(&__src[48] + 1) = a40;
  sub_217EC62F4(a40);
  *(&__src[47] + 1) = a42;
  sub_217EC64C0(a42);
  return memcpy(a9, __src, 0x3CBuLL);
}

double sub_217ED2B9C@<D0>(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  result = *a1;
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 9);
  v9 = *(a2 + 10);
  v10 = *a3;
  v11 = *a4;
  *a5 = *a1;
  *(a5 + 8) = v6;
  *(a5 + 16) = v7;
  *(a5 + 17) = v8;
  *(a5 + 18) = v9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v11;
  return result;
}

__n128 sub_217ED2BD0@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *&v14 = a4;
  sub_217EC6A4C(a4);
  *(&v14 + 1) = a5;
  sub_217EC6C1C(a5);
  *v15 = a6;
  sub_217EC6DE8(a6);
  *&v15[8] = *a1;
  *&v15[24] = a1[1];
  *&v15[40] = a7;
  sub_217EC6FB4(a7);
  sub_217EC7178(a2);
  *(a3 + 32) = *&v15[16];
  *(a3 + 48) = *&v15[32];
  *(a3 + 64) = a2;
  result = *v15;
  *a3 = v14;
  *(a3 + 16) = *v15;
  return result;
}

double sub_217ED2CAC@<D0>(double *a1@<X0>, double *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a2;
  v5 = a2[1];
  v7 = *a1;
  sub_217EC668C(*a1, a1[1]);
  *&v8 = v4;
  *(&v8 + 1) = v5;
  sub_217EC686C(v4, v5);
  result = *&v7;
  *a3 = v7;
  a3[1] = v8;
  return result;
}

double sub_217ED2D58@<D0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, double)@<X1>, void (*a3)(uint64_t, double)@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>)
{
  *&v15 = a5;
  v12 = a1();
  *(&v15 + 1) = a6;
  v13 = a2(v12, a6);
  a3(v13, a7);
  result = a7;
  *a4 = v15;
  *(a4 + 16) = a7;
  return result;
}

double sub_217ED2DF4@<D0>(char a1@<W0>, __int128 *a2@<X1>, char a3@<W2>, __int128 *a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>, double a13@<D5>, double a14@<D6>, double a15@<D7>, double a16, __int128 a17, double a18, double a19)
{
  v31 = *a2;
  v28 = *(a2 + 2);
  v32 = *a4;
  v29 = *(a4 + 2);
  LOBYTE(v35) = a1;
  *(&v35 + 1) = a8;
  sub_217EC0844(a8);
  *v36 = a9;
  sub_217EC0A10(a9);
  *&v36[8] = v31;
  *&v36[24] = v28;
  v37[0] = a3;
  *&v37[8] = v32;
  *&v37[24] = v29;
  *&v38 = a10;
  sub_217EC0BDC(a10);
  *(&v38 + 1) = a11;
  sub_217EC0DAC(a11);
  *&v39 = a12;
  sub_217EC0F78(a12);
  *(&v39 + 1) = a13;
  sub_217EC1140(a13);
  LOBYTE(v40) = a5;
  *(&v40 + 1) = a14;
  sub_217EC1308(a14);
  *&v41 = a15;
  sub_217EC14E0(a15);
  *(&v41 + 1) = a16;
  sub_217EC16A8(a16);
  sub_217EC1870(*&a17);
  sub_217EC1A50(*(&a17 + 1));
  LOBYTE(v42) = a6;
  *(&v42 + 1) = a18;
  sub_217EC1C1C(a18);
  sub_217EC1DE4(a19);
  *(a7 + 128) = v41;
  *(a7 + 144) = a17;
  *(a7 + 160) = v42;
  *(a7 + 176) = a19;
  *(a7 + 64) = *&v37[16];
  *(a7 + 80) = v38;
  *(a7 + 96) = v39;
  *(a7 + 112) = v40;
  *a7 = v35;
  *(a7 + 16) = *v36;
  result = *(&v31 + 1);
  *(a7 + 32) = *&v36[16];
  *(a7 + 48) = *v37;
  return result;
}

double sub_217ED2FF4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *&v14 = a3;
  sub_217EBDEA8(a3);
  *(&v14 + 1) = a4;
  sub_217EBE070(a4);
  sub_217EBE240(a1);
  *&v15 = a5;
  sub_217EBE3F8(a5);
  *(&v15 + 1) = a6;
  sub_217EBE5C4(a6);
  sub_217EBE790(a7);
  result = a7;
  *a2 = v14;
  *(a2 + 16) = a1;
  *(a2 + 24) = v15;
  *(a2 + 40) = a7;
  return result;
}

__n128 sub_217ED30C8@<Q0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>, double a11@<D4>, double a12@<D5>, double a13@<D6>, double a14@<D7>, __int128 a15)
{
  *&v29 = a7;
  sub_217EBE954(a7);
  BYTE8(v29) = a1;
  *&v30 = a8;
  sub_217EBEB30(a8);
  BYTE8(v30) = a2;
  *&v31 = a9;
  sub_217EBED00(a9);
  *(&v31 + 1) = a10;
  sub_217EBEEC8(a10);
  v32.n128_f64[0] = a11;
  sub_217EBF0A4(a11);
  v32.n128_f64[1] = a12;
  sub_217EBF26C(a12);
  *&v33 = a13;
  sub_217EBF430(a13);
  *(&v33 + 1) = a14;
  sub_217ECC860();
  *v34 = a15;
  sub_217ECC868();
  sub_217EBF5F8(*(&a15 + 1));
  v34[16] = a3;
  v34[17] = a4;
  v34[18] = a5;
  *(a6 + 64) = v33;
  *(a6 + 80) = a15;
  *a6 = v29;
  *(a6 + 16) = v30;
  result = v32;
  *(a6 + 32) = v31;
  *(a6 + 48) = v32;
  *(a6 + 95) = *&v34[15];
  return result;
}

double sub_217ED324C@<D0>(_OWORD *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  *&v10 = a2;
  sub_217EC1FAC(a2);
  *(&v10 + 1) = a3;
  sub_217EC2188(a3);
  *&v11 = a4;
  sub_217ECC85C();
  *(&v11 + 1) = a5;
  sub_217ECC864();
  result = *&v10;
  *a1 = v10;
  a1[1] = v11;
  return result;
}

uint64_t sub_217ED32E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  return sub_217EC7330(v2);
}

uint64_t sub_217ED3314@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  if (a2 >= 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  *a3 = v4;
  *(a3 + 8) = a4;
  *(a3 + 16) = result;
  return result;
}

__n128 sub_217ED3334@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  v4 = *(v1 + 18);
  *a1 = *v1;
  *(a1 + 16) = v2;
  *(a1 + 17) = v3;
  *(a1 + 18) = v4;
  result = *(v1 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_217ED3360@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 40), 0x780uLL);
  memcpy(a1, (v1 + 40), 0x780uLL);
  return sub_217EB4358(__dst, v4);
}

__n128 sub_217ED33C4@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = *(v1 + 3000);
  v2 = *(v1 + 2984);
  *(a1 + 32) = *(v1 + 2968);
  *(a1 + 48) = v2;
  result = *(v1 + 2952);
  *a1 = *(v1 + 2936);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_217ED3408@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_217ED34EC(uint64_t a1, uint64_t a2)
{
  if (((a1 | a2) & 0x100000000) != 0)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  v10 = sub_217F4B104();
  v11 = v5;
  v6 = sub_217F4B104();
  MEMORY[0x21CEAEAC0](v6);

  if (*(v4 + 16))
  {
    v7 = sub_217E8E88C(v10, v11);
    v9 = v8;

    if (v9)
    {
      return *(*(v4 + 56) + 8 * v7);
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_217ED35E0(unsigned __int8 *a1, unsigned __int8 *a2, __n128 a3)
{
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 1))
  {
    return sub_217ED3A44(*(a1 + 2), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217ED3610(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_217E8E88C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_217ED3744(_BOOL8 result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v34 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
LABEL_13:
    v13 = v9 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(v3 + 56) + (v13 << 6);
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
    v22 = *(v17 + 32);
    v23 = *(v17 + 48);
    v36 = *(v17 + 56);
    v37 = *(v17 + 40);

    if (!v15)
    {
      return v15 == 0;
    }

    v35 = v10;
    v24 = v8;
    v25 = v3;
    v26 = sub_217E8E88C(v16, v15);
    v28 = v27;

    if ((v28 & 1) == 0)
    {
      return v15 == 0;
    }

    v29 = *(a2 + 56) + (v26 << 6);
    v33 = *v29 == (v18 & 1) && *(v29 + 8) == v19 && *(v29 + 16) == v20 && *(v29 + 24) == v21 && *(v29 + 32) == v22;
    result = v15 == 0;
    if (v33 && ((*(v29 + 40) ^ v37) & 1) == 0 && *(v29 + 48) == v23)
    {
      v3 = v25;
      v8 = v24;
      v7 = v35;
      if (((*(v29 + 56) ^ v36) & 1) == 0)
      {
        continue;
      }
    }

    return result;
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v34 + 8 * v4);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_217ED393C(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = sub_217E8E904(*(*(v3 + 48) + 8 * v12));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217ED3A44(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_217E8E88C(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_217ED3B80(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v10 = v9 | (v4 << 6);
LABEL_15:
      v15 = (*(v3 + 48) + 16 * v10);
      v16 = *v15;
      v17 = v15[1];
      v18 = (*(v3 + 56) + 440 * v10);
      memcpy(__dst, v18, 0x1B2uLL);
      memcpy(__src, v18, 0x1B2uLL);
      v28 = v16;
      v29 = v17;
      memcpy(v30, __src, sizeof(v30));
      nullsub_133();

      sub_217F03A50(__dst, &v25, &qword_27CBF5FC0, &qword_217F5A050);
      v19 = v28;
      v20 = v29;
      memcpy(v31, v30, sizeof(v31));
      v12 = v4;
LABEL_16:
      memcpy(v30, v31, sizeof(v30));
      v28 = v19;
      v29 = v20;
      result = sub_217F03AB8(&v28);
      if (result == 1)
      {
        break;
      }

      memcpy(v33, v31, 0x1B2uLL);
      v21 = sub_217E8E88C(v19, v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        sub_217F03AD0(v33, &qword_27CBF5FC0, &qword_217F5A050);
        return 0;
      }

      memcpy(v32, (*(a2 + 56) + 440 * v21), 0x1B2uLL);
      sub_217F03A50(v32, __src, &qword_27CBF5FC0, &qword_217F5A050);
      v24 = sub_217EDA6E4(v32, v33);
      sub_217F03AD0(v33, &qword_27CBF5FC0, &qword_217F5A050);
      result = sub_217F03AD0(v32, &qword_27CBF5FC0, &qword_217F5A050);
      if (!v24)
      {
        return 0;
      }

      v4 = v12;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    if (v8 <= v4 + 1)
    {
      v11 = v4 + 1;
    }

    else
    {
      v11 = v8;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        sub_217F03B30(&v28);
        v19 = v28;
        v20 = v29;
        memcpy(v31, v30, sizeof(v31));
        v7 = 0;
        goto LABEL_16;
      }

      v14 = *(v3 + 64 + 8 * v13);
      ++v4;
      if (v14)
      {
        v7 = (v14 - 1) & v14;
        v10 = __clz(__rbit64(v14)) | (v13 << 6);
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_217ED3E38()
{
  v1 = 0x676E697070616DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_217ED3E98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217EFF954(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217ED3ECC(uint64_t a1)
{
  v2 = sub_217EF5584();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217ED3F08(uint64_t a1)
{
  v2 = sub_217EF5584();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_217ED3F44(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D48, &unk_217F52130);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v12 = *(v1 + 2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF5584();
  sub_217F4B294();
  v17 = v9;
  v16 = 0;
  sub_217EF55D8();
  sub_217F4B0C4();
  if (!v2)
  {
    v11 = v12;
    v15 = 1;
    sub_217F4B0A4();
    v14 = v11;
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D60, &qword_217F5A320);
    sub_217EF562C();
    sub_217F4B0C4();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_217ED4168@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D70, &qword_217F52140);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217EF5584();
  sub_217F4B274();
  if (!v2)
  {
    v18 = 0;
    sub_217EF56B0();
    sub_217F4AFC4();
    v10 = v19;
    v17 = 1;
    sub_217F4AFA4();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CBF5D60, &qword_217F5A320);
    v15[15] = 2;
    sub_217EF5704();
    sub_217F4AFC4();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v10;
    *(a2 + 8) = v13;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}