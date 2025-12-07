uint64_t sub_214468560@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913F90, &qword_2147480E8);
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v6 = &v15 - v5;
  LOWORD(v38[0]) = 0;
  sub_2140615D0(v38);
  v30 = v38[9];
  v31 = v38[10];
  v32 = v38[11];
  v26 = v38[5];
  v27 = v38[6];
  v28 = v38[7];
  v29 = v38[8];
  v22 = v38[1];
  v23 = v38[2];
  v24 = v38[3];
  v25 = v38[4];
  v21 = v38[0];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21446850C();
  sub_2146DAA08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_213FB2DF4(v19, &qword_27C905500, &qword_2146F2BE0);
  }

  else
  {
    v7 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905500, &qword_2146F2BE0);
    v17 = 0;
    sub_2140A4DD4(&qword_280B30CB8, aI_83);
    v8 = v39;
    sub_2146DA1C8();
    sub_2140A4E24(v18, v19);
    v18[0] = 1;
    v33 = sub_2146DA118();
    v34 = v9 & 1;
    v17 = 2;
    sub_2140975C4();
    sub_2146DA1C8();
    v35 = v18[0];
    v18[0] = 3;
    v10 = sub_2146DA0F8();
    v11 = v6;
    v13 = v12;
    (*(v4 + 8))(v11, v8);
    v36 = v10;
    v37 = v13;
    sub_21446887C(v19, v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_2144688B4(v19);
  }
}

__n128 sub_214468914@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v13 = *a4;
  LOWORD(v31[0]) = 0;
  sub_2140615D0(v31);
  v14 = v31[8];
  v15 = v31[10];
  v16 = v31[11];
  *(a7 + 392) = v31[9];
  *(a7 + 408) = v15;
  *(a7 + 424) = v16;
  v17 = v31[4];
  v18 = v31[6];
  v19 = v31[7];
  *(a7 + 328) = v31[5];
  *(a7 + 344) = v18;
  *(a7 + 360) = v19;
  *(a7 + 376) = v14;
  v20 = v31[1];
  *(a7 + 248) = v31[0];
  v21 = v31[2];
  v22 = v31[3];
  *(a7 + 264) = v20;
  *(a7 + 280) = v21;
  *(a7 + 296) = v22;
  *(a7 + 312) = v17;
  *(a7 + 240) = 0;
  *(a7 + 208) = 0u;
  *(a7 + 224) = 0u;
  *(a7 + 176) = 0u;
  *(a7 + 192) = 0u;
  *(a7 + 144) = 0u;
  *(a7 + 160) = 0u;
  *(a7 + 112) = 0u;
  *(a7 + 128) = 0u;
  *(a7 + 80) = 0u;
  *(a7 + 96) = 0u;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  *a7 = 0u;
  *(a7 + 440) = a2;
  *(a7 + 448) = a3 & 1;
  *(a7 + 456) = a5;
  *(a7 + 464) = a6;
  *(a7 + 449) = v13;
  sub_213FB2DF4(a7, &qword_27C904858, &qword_214736F00);
  v23 = *(a1 + 208);
  *(a7 + 192) = *(a1 + 192);
  *(a7 + 208) = v23;
  *(a7 + 224) = *(a1 + 224);
  *(a7 + 240) = *(a1 + 240);
  v24 = *(a1 + 144);
  *(a7 + 128) = *(a1 + 128);
  *(a7 + 144) = v24;
  v25 = *(a1 + 176);
  *(a7 + 160) = *(a1 + 160);
  *(a7 + 176) = v25;
  v26 = *(a1 + 80);
  *(a7 + 64) = *(a1 + 64);
  *(a7 + 80) = v26;
  v27 = *(a1 + 112);
  *(a7 + 96) = *(a1 + 96);
  *(a7 + 112) = v27;
  v28 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v28;
  result = *(a1 + 32);
  v30 = *(a1 + 48);
  *(a7 + 32) = result;
  *(a7 + 48) = v30;
  return result;
}

uint64_t sub_214468A4C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

unint64_t sub_214468A60()
{
  result = qword_27C913F98;
  if (!qword_27C913F98)
  {
    result = swift_getWitnessTable(byte_2147480F0, &type metadata for AnimatedImageFrame.Constraints, v0, v1);
    atomic_store(result, &qword_27C913F98);
  }

  return result;
}

unint64_t sub_214468AB8()
{
  result = qword_27C913FA0;
  if (!qword_27C913FA0)
  {
    result = swift_getWitnessTable(byte_214748118, &type metadata for AnimatedImageFrame.Constraints, v0, v1);
    atomic_store(result, &qword_27C913FA0);
  }

  return result;
}

unint64_t sub_214468B0C(uint64_t a1)
{
  result = sub_214468B34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214468B34()
{
  result = qword_27C913FA8;
  if (!qword_27C913FA8)
  {
    result = swift_getWitnessTable(byte_21474816C, &type metadata for AnimatedImageFrame, v0, v1);
    atomic_store(result, &qword_27C913FA8);
  }

  return result;
}

unint64_t sub_214468B88(uint64_t a1)
{
  *(a1 + 8) = sub_214468BB8();
  result = sub_214468C0C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214468BB8()
{
  result = qword_27C913FB0;
  if (!qword_27C913FB0)
  {
    result = swift_getWitnessTable(byte_214748188, &type metadata for AnimatedImageFrame, v0, v1);
    atomic_store(result, &qword_27C913FB0);
  }

  return result;
}

unint64_t sub_214468C0C()
{
  result = qword_27C913FB8;
  if (!qword_27C913FB8)
  {
    result = swift_getWitnessTable(asc_2147481B0, &type metadata for AnimatedImageFrame, v0, v1);
    atomic_store(result, &qword_27C913FB8);
  }

  return result;
}

uint64_t sub_214468C68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 472))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 272) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_214468CB8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 472) = 1;
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
      *(a1 + 248) = 0;
      *(a1 + 256) = 0;
      *(a1 + 264) = 0;
      *(a1 + 272) = 2 * -a2;
      result = 0.0;
      *(a1 + 280) = 0u;
      *(a1 + 296) = 0u;
      *(a1 + 312) = 0u;
      *(a1 + 328) = 0u;
      *(a1 + 344) = 0u;
      *(a1 + 360) = 0u;
      *(a1 + 376) = 0u;
      *(a1 + 392) = 0u;
      *(a1 + 408) = 0u;
      *(a1 + 424) = 0u;
      return result;
    }

    *(a1 + 472) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214468DD8()
{
  result = qword_27C913FC0;
  if (!qword_27C913FC0)
  {
    result = swift_getWitnessTable(byte_214748528, &type metadata for AnimatedImageFrame.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913FC0);
  }

  return result;
}

unint64_t sub_214468E30()
{
  result = qword_27C913FC8;
  if (!qword_27C913FC8)
  {
    result = swift_getWitnessTable(byte_2147485E0, &type metadata for AnimatedImageFrame.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913FC8);
  }

  return result;
}

unint64_t sub_214468E88()
{
  result = qword_27C913FD0;
  if (!qword_27C913FD0)
  {
    result = swift_getWitnessTable(aQ_22, &type metadata for AnimatedImageFrame.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913FD0);
  }

  return result;
}

unint64_t sub_214468EE0()
{
  result = qword_27C913FD8;
  if (!qword_27C913FD8)
  {
    result = swift_getWitnessTable(aA_27, &type metadata for AnimatedImageFrame.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913FD8);
  }

  return result;
}

unint64_t sub_214468F38()
{
  result = qword_27C913FE0;
  if (!qword_27C913FE0)
  {
    result = swift_getWitnessTable(asc_214748498, &type metadata for AnimatedImageFrame.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913FE0);
  }

  return result;
}

unint64_t sub_214468F90()
{
  result = qword_27C913FE8;
  if (!qword_27C913FE8)
  {
    result = swift_getWitnessTable(byte_2147484C0, &type metadata for AnimatedImageFrame.Constraints.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C913FE8);
  }

  return result;
}

uint64_t sub_214468FE4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000021478C740 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616373 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E756F4378616DLL && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_2146DA6A8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_214469104(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x727544656D617266 && a2 == 0xED00006E6F697461 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4572656B63697473 && a2 == 0xED00007463656666 || (sub_2146DA6A8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7453657079547475 && a2 == 0xEC000000676E6972)
  {

    return 3;
  }

  else
  {
    v6 = sub_2146DA6A8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_214469278(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446F6FC();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2144692C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446F6A8();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_214469310(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446F654();

  return MEMORY[0x28217E238](a1, a2, v4);
}

unint64_t sub_21446935C@<X0>(_BYTE *a1@<X8>, unint64_t a2@<X0>)
{
  result = sub_21447064C(a2);
  *a1 = result;
  return result;
}

unint64_t sub_214469384@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21447064C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2144693B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446F4D0();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_2144693FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446F47C();

  return MEMORY[0x28217E238](a1, a2, v4);
}

uint64_t sub_214469498()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19C88);
  __swift_project_value_buffer(v0, qword_27CA19C88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shareURL";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214469660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      type metadata accessor for HealthSharingSetupInvitationToken(0);
      sub_2146D8F38();
    }

    else if (result == 2)
    {
      type metadata accessor for HealthSharingSetupInvitationToken(0);
      sub_2146D8EC8();
    }
  }

  return result;
}

uint64_t sub_21446971C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21446A864(v3, a1, a2, a3, type metadata accessor for HealthSharingSetupInvitationToken);
  if (!v4)
  {
    sub_2144697A0(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_2144697A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HealthSharingSetupInvitationToken(0);
  v6 = a1 + *(result + 24);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_21402D9F8(*v6, *(v6 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v8, v7);
  }

  return result;
}

double sub_214469840@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = *(a1 + 24);
  v5 = (a2 + *(a1 + 20));
  *v5 = 0;
  v5[1] = 0;
  result = 0.0;
  *(a2 + v4) = xmmword_2146E68C0;
  return result;
}

uint64_t sub_2144698CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446EF54(&qword_27C914220, type metadata accessor for HealthSharingSetupInvitationToken, a5f_0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21446996C(uint64_t a1)
{
  v2 = sub_21446EF54(&qword_27C914180, type metadata accessor for HealthSharingSetupInvitationToken, aH_4);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_2144699D8(uint64_t a1, uint64_t a2)
{
  sub_21446EF54(&qword_27C914180, type metadata accessor for HealthSharingSetupInvitationToken, aH_4);

  return sub_2146D9008();
}

uint64_t sub_214469A58()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19CA0);
  __swift_project_value_buffer(v0, qword_27CA19CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "syncCircleIdentifier";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ownerParticipant";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sourceProfileIdentifier";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "shareParticipant";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ownerCloudKitEmailAddress";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 100;
  *v18 = "invitationToken";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_214469D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_2146D8E78();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            goto LABEL_4;
          case 5:
LABEL_18:
            type metadata accessor for HealthSharingSetupMetadata(0);
            sub_2146D8F38();
            break;
          case 100:
            type metadata accessor for HealthSharingSetupInvitationToken(0);
            sub_21446EF54(&qword_27C914180, type metadata accessor for HealthSharingSetupInvitationToken, aH_4);
            sub_2146D8F78();
            break;
        }
      }

      else
      {
        if (result == 1)
        {
          goto LABEL_18;
        }

        if (result == 2 || result == 3)
        {
LABEL_4:
          type metadata accessor for HealthSharingSetupMetadata(0);
          sub_2146D8EC8();
        }
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_214469EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21446A8E0(v3, a1, a2, a3, type metadata accessor for HealthSharingSetupMetadata, 1);
  if (!v4)
  {
    sub_21446A038(v3, a1, a2, a3);
    sub_21446A0D8(v3, a1, a2, a3);
    sub_21446A178(v3, a1, a2, a3);
    sub_21446A218(v3, a1, a2, a3);
    if (*(*v3 + 16))
    {
      type metadata accessor for HealthSharingSetupInvitationToken(0);
      sub_21446EF54(&qword_27C914180, type metadata accessor for HealthSharingSetupInvitationToken, aH_4);
      sub_2146D90D8();
    }

    type metadata accessor for HealthSharingSetupMetadata(0);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21446A038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HealthSharingSetupMetadata(0);
  v6 = a1 + *(result + 28);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_21402D9F8(*v6, *(v6 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v8, v7);
  }

  return result;
}

uint64_t sub_21446A0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HealthSharingSetupMetadata(0);
  v6 = a1 + *(result + 32);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_21402D9F8(*v6, *(v6 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v8, v7);
  }

  return result;
}

uint64_t sub_21446A178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HealthSharingSetupMetadata(0);
  v6 = a1 + *(result + 36);
  v7 = *(v6 + 8);
  if (v7 >> 60 != 15)
  {
    v8 = *v6;
    sub_21402D9F8(*v6, *(v6 + 8));
    sub_2146D9048();
    return sub_213FDC6BC(v8, v7);
  }

  return result;
}

uint64_t sub_21446A218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HealthSharingSetupMetadata(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

double sub_21446A294@<D0>(int *a1@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x277D84F90];
  sub_2146D8DE8();
  v4 = a1[7];
  v5 = (a2 + a1[6]);
  *v5 = 0;
  v5[1] = 0;
  result = 0.0;
  *(a2 + v4) = xmmword_2146E68C0;
  v7 = a1[9];
  *(a2 + a1[8]) = xmmword_2146E68C0;
  *(a2 + v7) = xmmword_2146E68C0;
  v8 = (a2 + a1[10]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_21446A34C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446EF54(&qword_27C914228, type metadata accessor for HealthSharingSetupMetadata, byte_2147490C4);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21446A3EC(uint64_t a1)
{
  v2 = sub_21446EF54(&qword_27C914160, type metadata accessor for HealthSharingSetupMetadata, byte_2147490FC);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21446A458(uint64_t a1, uint64_t a2)
{
  sub_21446EF54(&qword_27C914160, type metadata accessor for HealthSharingSetupMetadata, byte_2147490FC);

  return sub_2146D9008();
}

uint64_t sub_21446A4D8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19CB8);
  __swift_project_value_buffer(v0, qword_27CA19CB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "authorizationIdentifier";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayName";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "displaySubtitle";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21446A6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_2146D8E78();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      type metadata accessor for HealthSharingAuthorization(0);
      sub_2146D8F38();
    }
  }

  return result;
}

uint64_t sub_21446A7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_21446A864(v3, a1, a2, a3, type metadata accessor for HealthSharingAuthorization);
  if (!v4)
  {
    sub_21446A8E0(v3, a1, a2, a3, type metadata accessor for HealthSharingAuthorization, 2);
    sub_21446A964(v3, a1, a2, a3);
    return sub_2146D8DD8();
  }

  return result;
}

uint64_t sub_21446A864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21446A8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21446A964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HealthSharingAuthorization(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_2146D90A8();
  }

  return result;
}

uint64_t sub_21446A9DC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2146D8DE8();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  return result;
}

uint64_t sub_21446AA70(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446EF54(&qword_27C914230, type metadata accessor for HealthSharingAuthorization, byte_214748F5C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21446AB10(uint64_t a1)
{
  v2 = sub_21446EF54(&qword_27C914140, type metadata accessor for HealthSharingAuthorization, byte_214748F94);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21446AB7C(uint64_t a1, uint64_t a2)
{
  sub_21446EF54(&qword_27C914140, type metadata accessor for HealthSharingAuthorization, byte_214748F94);

  return sub_2146D9008();
}

uint64_t sub_21446ABFC()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19CD0);
  __swift_project_value_buffer(v0, qword_27CA19CD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_2147486B0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "uuid";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "primaryContactIdentifier";
  *(v9 + 8) = 24;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "allContactIdentifiers";
  *(v11 + 1) = 21;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "firstName";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "lastName";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "type";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "direction";
  *(v19 + 1) = 9;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "status";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "sharingSetupMetadata";
  *(v22 + 8) = 20;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "dateModified";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "authorizationCategories";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "dateAccepted";
  *(v28 + 1) = 12;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "dateInvited";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "invitationUUID";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "cloudKitIdentifier";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "ownerParticipant";
  *(v36 + 1) = 16;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "notificationStatus";
  *(v37 + 8) = 18;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 40;
  *v39 = "sharingAuthorizations";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 41;
  *v41 = "userWheelchairMode";
  *(v41 + 1) = 18;
  v41[16] = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21446B1C4()
{
  type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
  swift_allocObject();
  result = sub_21446B204();
  qword_27C913FF0 = result;
  return result;
}

uint64_t sub_21446B204()
{
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = MEMORY[0x277D84F90];
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 514;
  *(v0 + 90) = 5;
  v2 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  v3 = type metadata accessor for HealthSharingSetupMetadata(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  v4 = v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories) = v1;
  v5 = v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant) = xmmword_2146E68C0;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus) = 3;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations) = v1;
  *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode) = 3;
  return v0;
}

void *sub_21446B348()
{

  sub_213FB2DF4(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata, &qword_27C913098, qword_21473D710);

  sub_213FDC6BC(*(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant), *(v0 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant + 8));

  return v0;
}

uint64_t sub_21446B404()
{
  sub_21446B348();

  return swift_deallocClassInstance();
}

void sub_21446B480(uint64_t a1)
{
  sub_21446B8F8(319, &qword_27C914060, type metadata accessor for HealthSharingSetupMetadata, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21446B61C(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21446B740(uint64_t a1)
{
  result = sub_2146D8DF8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HealthSummarySharingEntry._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_21446B7EC(uint64_t a1)
{
  sub_21446B8F8(319, &qword_27C914098, type metadata accessor for HealthSharingSetupInvitationToken, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2146D8DF8();
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_21403BEC8(319, &qword_280B2FDD0, MEMORY[0x277CC9318]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21446B8F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21446B9A4(uint64_t a1)
{
  sub_2146D8DF8();
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_280B2FDD0, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_21446BA64()
{
  result = qword_27C9140B0;
  if (!qword_27C9140B0)
  {
    result = swift_getWitnessTable(byte_2147488E4, &type metadata for HealthSummarySharingEntry.TypeEnum, v0, v1);
    atomic_store(result, &qword_27C9140B0);
  }

  return result;
}

unint64_t sub_21446BABC()
{
  result = qword_27C9140B8;
  if (!qword_27C9140B8)
  {
    result = swift_getWitnessTable(asc_214748864, &type metadata for HealthSummarySharingEntry.TypeEnum, v0, v1);
    atomic_store(result, &qword_27C9140B8);
  }

  return result;
}

unint64_t sub_21446BB14()
{
  result = qword_27C9140C0;
  if (!qword_27C9140C0)
  {
    result = swift_getWitnessTable(byte_214748924, &type metadata for HealthSummarySharingEntry.TypeEnum, v0, v1);
    atomic_store(result, &qword_27C9140C0);
  }

  return result;
}

unint64_t sub_21446BB6C()
{
  result = qword_27C9140C8;
  if (!qword_27C9140C8)
  {
    result = swift_getWitnessTable(byte_2147489CC, &type metadata for HealthSummarySharingEntry.Direction, v0, v1);
    atomic_store(result, &qword_27C9140C8);
  }

  return result;
}

unint64_t sub_21446BBC4()
{
  result = qword_27C9140D0;
  if (!qword_27C9140D0)
  {
    result = swift_getWitnessTable(aU_90, &type metadata for HealthSummarySharingEntry.Direction, v0, v1);
    atomic_store(result, &qword_27C9140D0);
  }

  return result;
}

unint64_t sub_21446BC1C()
{
  result = qword_27C9140D8;
  if (!qword_27C9140D8)
  {
    result = swift_getWitnessTable(byte_214748A0C, &type metadata for HealthSummarySharingEntry.Direction, v0, v1);
    atomic_store(result, &qword_27C9140D8);
  }

  return result;
}

unint64_t sub_21446BC74()
{
  result = qword_27C9140E0;
  if (!qword_27C9140E0)
  {
    result = swift_getWitnessTable(byte_214748AB4, &type metadata for HealthSummarySharingEntry.Status, v0, v1);
    atomic_store(result, &qword_27C9140E0);
  }

  return result;
}

unint64_t sub_21446BCCC()
{
  result = qword_27C9140E8;
  if (!qword_27C9140E8)
  {
    result = swift_getWitnessTable(aM_110, &type metadata for HealthSummarySharingEntry.Status, v0, v1);
    atomic_store(result, &qword_27C9140E8);
  }

  return result;
}

unint64_t sub_21446BD24()
{
  result = qword_27C9140F0;
  if (!qword_27C9140F0)
  {
    result = swift_getWitnessTable(byte_214748AF4, &type metadata for HealthSummarySharingEntry.Status, v0, v1);
    atomic_store(result, &qword_27C9140F0);
  }

  return result;
}

unint64_t sub_21446BD7C()
{
  result = qword_27C9140F8;
  if (!qword_27C9140F8)
  {
    result = swift_getWitnessTable(byte_214748B9C, &type metadata for HealthSummarySharingEntry.NotificationStatus, v0, v1);
    atomic_store(result, &qword_27C9140F8);
  }

  return result;
}

unint64_t sub_21446BDD4()
{
  result = qword_27C914100;
  if (!qword_27C914100)
  {
    result = swift_getWitnessTable(byte_214748B1C, &type metadata for HealthSummarySharingEntry.NotificationStatus, v0, v1);
    atomic_store(result, &qword_27C914100);
  }

  return result;
}

unint64_t sub_21446BE2C()
{
  result = qword_27C914108;
  if (!qword_27C914108)
  {
    result = swift_getWitnessTable(byte_214748BDC, &type metadata for HealthSummarySharingEntry.NotificationStatus, v0, v1);
    atomic_store(result, &qword_27C914108);
  }

  return result;
}

unint64_t sub_21446BE84()
{
  result = qword_27C914110;
  if (!qword_27C914110)
  {
    result = swift_getWitnessTable(a5_38, &type metadata for HealthSummarySharingEntry.WheelchairUse, v0, v1);
    atomic_store(result, &qword_27C914110);
  }

  return result;
}

unint64_t sub_21446BEDC()
{
  result = qword_27C914118;
  if (!qword_27C914118)
  {
    result = swift_getWitnessTable(byte_214748C04, &type metadata for HealthSummarySharingEntry.WheelchairUse, v0, v1);
    atomic_store(result, &qword_27C914118);
  }

  return result;
}

unint64_t sub_21446BF34()
{
  result = qword_27C914120;
  if (!qword_27C914120)
  {
    result = swift_getWitnessTable(byte_214748CC4, &type metadata for HealthSummarySharingEntry.WheelchairUse, v0, v1);
    atomic_store(result, &qword_27C914120);
  }

  return result;
}

uint64_t sub_21446BF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for HealthSummarySharingEntry(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for HealthSummarySharingEntry._StorageClass(0);
    swift_allocObject();
    v12 = sub_21446FF10(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_21446C03C(v10, a1, a2, a3);
}

uint64_t sub_21446C03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2146D8E78();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          sub_21401FE70(a2, a1, a3, a4);
          break;
        case 2:
          sub_21446C38C(a2, a1, a3, a4);
          break;
        case 3:
          sub_21446C410(a2, a1, a3, a4);
          break;
        case 4:
          sub_21446C494(a2, a1, a3, a4);
          break;
        case 5:
          sub_21446C518(a2, a1, a3, a4);
          break;
        case 6:
          sub_21446C59C(a2, a1, a3, a4);
          break;
        case 7:
          sub_21446C630(a2, a1, a3, a4);
          break;
        case 8:
          sub_21446C6C4(a2, a1, a3, a4);
          break;
        case 9:
          sub_21446C758(a2, a1, a3, a4);
          break;
        case 10:
          v24 = a2;
          v25 = a1;
          v26 = a3;
          v27 = a4;
          v28 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
          goto LABEL_24;
        case 11:
          sub_21446C834(a2, a1, a3, a4);
          break;
        case 12:
          v24 = a2;
          v25 = a1;
          v26 = a3;
          v27 = a4;
          v28 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
          goto LABEL_24;
        case 13:
          v24 = a2;
          v25 = a1;
          v26 = a3;
          v27 = a4;
          v28 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
LABEL_24:
          sub_2140204C0(v24, v25, v26, v27, v28);
          break;
        case 14:
          v11 = MEMORY[0x277D217D0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid;
          goto LABEL_5;
        case 15:
          v11 = MEMORY[0x277D217D0];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier;
          goto LABEL_5;
        case 16:
          v11 = MEMORY[0x277D21760];
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant;
LABEL_5:
          sub_21446C8C0(v12, v13, v14, v15, v16, v11);
          break;
        case 17:
          v17 = sub_21446F4D0;
          v18 = a2;
          v19 = a1;
          v20 = a3;
          v21 = a4;
          v22 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus;
          v23 = &type metadata for HealthSummarySharingEntry.NotificationStatus;
          goto LABEL_28;
        case 40:
          sub_21446C958(a2, a1, a3, a4);
          break;
        case 41:
          v17 = sub_21446F47C;
          v18 = a2;
          v19 = a1;
          v20 = a3;
          v21 = a4;
          v22 = &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode;
          v23 = &type metadata for HealthSummarySharingEntry.WheelchairUse;
LABEL_28:
          sub_21446CA34(v18, v19, v20, v21, v22, v17, v23);
          break;
        default:
          break;
      }

      result = sub_2146D8E78();
    }
  }

  return result;
}

uint64_t sub_21446C38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2146D8F38();
  return swift_endAccess();
}

uint64_t sub_21446C410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2146D8F18();
  return swift_endAccess();
}

uint64_t sub_21446C494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2146D8F38();
  return swift_endAccess();
}

uint64_t sub_21446C518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2146D8F38();
  return swift_endAccess();
}

uint64_t sub_21446C59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21446F6FC();
  sub_2146D8EB8();
  return swift_endAccess();
}

uint64_t sub_21446C630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21446F6A8();
  sub_2146D8EB8();
  return swift_endAccess();
}

uint64_t sub_21446C6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_21446F654();
  sub_2146D8EB8();
  return swift_endAccess();
}

uint64_t sub_21446C758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for HealthSharingSetupMetadata(0);
  sub_21446EF54(&qword_27C914160, type metadata accessor for HealthSharingSetupMetadata, byte_2147490FC);
  sub_2146D8F98();
  return swift_endAccess();
}

uint64_t sub_21446C834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2146D8F18();
  return swift_endAccess();
}

uint64_t sub_21446C8C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v10 = *a5;
  swift_beginAccess();
  a6(a2 + v10, a3, a4);
  return swift_endAccess();
}

uint64_t sub_21446C958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for HealthSharingAuthorization(0);
  sub_21446EF54(&qword_27C914140, type metadata accessor for HealthSharingAuthorization, byte_214748F94);
  sub_2146D8F78();
  return swift_endAccess();
}

uint64_t sub_21446CA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v8 = swift_beginAccess();
  a6(v8);
  sub_2146D8EB8();
  return swift_endAccess();
}

void sub_21446CADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for HealthSummarySharingEntry(0);
  sub_21446CB48(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    sub_2146D8DD8();
  }
}

void sub_21446CB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2140206BC(a1, a2, a3, a4);
  if (!v4)
  {
    sub_21446CEFC(a1, a2, a3, a4);
    swift_beginAccess();
    if (*(*(a1 + 48) + 16))
    {

      sub_2146D9088();
    }

    sub_21446CF98(a1, a2, a3, a4);
    sub_21446D034(a1, a2, a3, a4);
    sub_21446D0D0(a1, a2, a3, a4);
    sub_21446D170(a1, a2, a3, a4);
    sub_21446D210(a1, a2, a3, a4);
    sub_21446D2AC(a1, a2, a3, a4);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified, 10);
    v9 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories;
    swift_beginAccess();
    if (*(*(a1 + v9) + 16))
    {

      sub_2146D9088();
    }

    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted, 12);
    sub_214021198(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited, 13);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid, 14);
    sub_214020E30(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier, 15);
    sub_21446D4A0(a1, a2, a3, a4);
    sub_21446D554(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus, sub_21446F4D0, 17, &type metadata for HealthSummarySharingEntry.NotificationStatus);
    v10 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations;
    swift_beginAccess();
    if (*(*(a1 + v10) + 16))
    {
      type metadata accessor for HealthSharingAuthorization(0);
      sub_21446EF54(&qword_27C914140, type metadata accessor for HealthSharingAuthorization, byte_214748F94);

      sub_2146D90D8();
    }

    sub_21446D554(a1, a2, a3, a4, &OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode, sub_21446F47C, 41, &type metadata for HealthSummarySharingEntry.WheelchairUse);
  }
}

void sub_21446CEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1 + 40))
  {

    sub_2146D90A8();
  }
}

void sub_21446CF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1 + 64))
  {

    sub_2146D90A8();
  }
}

void sub_21446D034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(a1 + 80))
  {

    sub_2146D90A8();
  }
}

uint64_t sub_21446D0D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 88) != 2)
  {
    sub_21446F6FC();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21446D170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 89) != 2)
  {
    sub_21446F6A8();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21446D210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 90) != 5)
  {
    sub_21446F654();
    return sub_2146D9038();
  }

  return result;
}

uint64_t sub_21446D2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913098, qword_21473D710);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for HealthSharingSetupMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  swift_beginAccess();
  sub_21446F524(a1 + v12, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_213FB2DF4(v7, &qword_27C913098, qword_21473D710);
  }

  sub_21446F594(v7, v11);
  sub_21446EF54(&qword_27C914160, type metadata accessor for HealthSharingSetupMetadata, byte_2147490FC);
  sub_2146D90F8();
  return sub_21446F5F8(v11);
}

uint64_t sub_21446D4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant);
  result = swift_beginAccess();
  v6 = v4[1];
  if (v6 >> 60 != 15)
  {
    v7 = *v4;
    sub_21402D9F8(v7, v6);
    sub_2146D9048();
    return sub_213FDC6BC(v7, v6);
  }

  return result;
}

uint64_t sub_21446D554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v10 = *a5;
  result = swift_beginAccess();
  if (*(a1 + v10) != 3)
  {
    a6(result);
    return sub_2146D9038();
  }

  return result;
}

BOOL sub_21446D614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthSharingSetupMetadata(0);
  v89 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = (&v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914238, &qword_2147494A0);
  MEMORY[0x28223BE20](v7);
  v90 = &v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913098, qword_21473D710);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = (&v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v14 = &v88 - v13;
  swift_beginAccess();
  v16 = *(a1 + 16);
  v15 = *(a1 + 24);
  swift_beginAccess();
  v17 = *(a2 + 24);
  if (v15)
  {
    if (!v17 || (v16 != *(a2 + 16) || v15 != v17) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  swift_beginAccess();
  v18 = *(a1 + 32);
  v19 = *(a1 + 40);
  swift_beginAccess();
  v20 = *(a2 + 40);
  if (v19)
  {
    if (!v20 || (v18 != *(a2 + 32) || v19 != v20) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  swift_beginAccess();
  v21 = *(a1 + 48);
  swift_beginAccess();
  if ((sub_2143D53BC(v21, *(a2 + 48)) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  swift_beginAccess();
  v24 = *(a2 + 64);
  if (v23)
  {
    if (!v24 || (v22 != *(a2 + 56) || v23 != v24) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v24)
  {
    return 0;
  }

  swift_beginAccess();
  v25 = *(a1 + 72);
  v26 = *(a1 + 80);
  swift_beginAccess();
  v27 = *(a2 + 80);
  if (v26)
  {
    if (!v27 || (v25 != *(a2 + 72) || v26 != v27) && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  swift_beginAccess();
  v28 = *(a1 + 88);
  swift_beginAccess();
  v29 = *(a2 + 88);
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v29 == 2 || ((v29 ^ v28) & 1) != 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v31 = *(a1 + 89);
  swift_beginAccess();
  v32 = *(a2 + 89);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v32 == 2 || ((v32 ^ v31) & 1) != 0)
    {
      return result;
    }
  }

  swift_beginAccess();
  v33 = *(a1 + 90);
  swift_beginAccess();
  v34 = *(a2 + 90);
  if (v33 == 5)
  {
    if (v34 != 5)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v34 == 5 || v33 != v34)
    {
      return result;
    }
  }

  v35 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  swift_beginAccess();
  sub_21446F524(a1 + v35, v14);
  v36 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  swift_beginAccess();
  v37 = *(v7 + 48);
  v38 = v90;
  sub_21446F524(v14, v90);
  v39 = a2 + v36;
  v40 = v38;
  v88 = v37;
  sub_21446F524(v39, v38 + v37);
  v41 = *(v89 + 48);
  if (v41(v40, 1, v4) == 1)
  {

    sub_213FB2DF4(v14, &qword_27C913098, qword_21473D710);
    if (v41(v40 + v88, 1, v4) == 1)
    {
      sub_213FB2DF4(v40, &qword_27C913098, qword_21473D710);
      goto LABEL_55;
    }

LABEL_50:
    sub_213FB2DF4(v40, &qword_27C914238, &qword_2147494A0);
    goto LABEL_51;
  }

  sub_21446F524(v40, v12);
  if (v41(v40 + v88, 1, v4) == 1)
  {

    sub_213FB2DF4(v14, &qword_27C913098, qword_21473D710);
    sub_21446F5F8(v12);
    goto LABEL_50;
  }

  sub_21446F594(v40 + v88, v6);

  v42 = sub_21446FAA8(v12, v6);
  sub_21446F5F8(v6);
  sub_213FB2DF4(v14, &qword_27C913098, qword_21473D710);
  sub_21446F5F8(v12);
  sub_213FB2DF4(v40, &qword_27C913098, qword_21473D710);
  if ((v42 & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_55:
  v43 = a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
  swift_beginAccess();
  v44 = *v43;
  v45 = *(v43 + 8);
  v46 = a2 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
  swift_beginAccess();
  if (v45)
  {
    if ((*(v46 + 8) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if ((*(v46 + 8) & 1) != 0 || v44 != *v46)
  {
    goto LABEL_51;
  }

  v47 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories;
  swift_beginAccess();
  v48 = *(a1 + v47);
  v49 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories;
  swift_beginAccess();
  if ((sub_2143D53BC(v48, *(a2 + v49)) & 1) == 0)
  {
    goto LABEL_51;
  }

  v50 = a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
  swift_beginAccess();
  v51 = *v50;
  v52 = *(v50 + 8);
  v53 = a2 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
  swift_beginAccess();
  if (v52)
  {
    if ((*(v53 + 8) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if ((*(v53 + 8) & 1) != 0 || v51 != *v53)
  {
    goto LABEL_51;
  }

  v54 = a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
  swift_beginAccess();
  v55 = *v54;
  v56 = *(v54 + 8);
  v57 = a2 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
  swift_beginAccess();
  if (v56)
  {
    if ((*(v57 + 8) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if ((*(v57 + 8) & 1) != 0 || v55 != *v57)
  {
    goto LABEL_51;
  }

  v58 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
  swift_beginAccess();
  v59 = *v58;
  v60 = v58[1];
  v61 = (a2 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
  swift_beginAccess();
  v62 = v61[1];
  if (v60)
  {
    if (!v62 || (v59 != *v61 || v60 != v62) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (v62)
  {
    goto LABEL_51;
  }

  v63 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
  swift_beginAccess();
  v64 = *v63;
  v65 = v63[1];
  v66 = (a2 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
  swift_beginAccess();
  v67 = v66[1];
  if (v65)
  {
    if (!v67 || (v64 != *v66 || v65 != v67) && (sub_2146DA6A8() & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else if (v67)
  {
    goto LABEL_51;
  }

  v68 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant);
  swift_beginAccess();
  v70 = *v68;
  v69 = v68[1];
  v71 = (a2 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant);
  swift_beginAccess();
  v72 = *v71;
  v73 = v71[1];
  sub_213FDCA18(v70, v69);
  sub_213FDCA18(v72, v73);
  if (v69 >> 60 == 15)
  {
    if (v73 >> 60 == 15)
    {
      sub_213FDC6BC(v70, v69);
      goto LABEL_93;
    }

LABEL_91:
    sub_213FDC6BC(v70, v69);
    sub_213FDC6BC(v72, v73);
    return 0;
  }

  sub_213FDCA18(v70, v69);
  sub_213FDCA18(v72, v73);
  if (v73 >> 60 == 15)
  {

    sub_213FDC6BC(v72, v73);
    sub_213FDC6BC(v70, v69);
    goto LABEL_91;
  }

  v74 = sub_214466780(v70, v69, v72, v73);
  sub_213FDC6BC(v72, v73);
  sub_213FDC6BC(v70, v69);
  sub_213FDC6BC(v72, v73);
  sub_213FDC6BC(v70, v69);
  if (!v74)
  {
    goto LABEL_51;
  }

LABEL_93:
  v75 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus;
  swift_beginAccess();
  v76 = *(a1 + v75);
  v77 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus;
  swift_beginAccess();
  v78 = *(a2 + v77);
  if (v76 == 3)
  {
    if (v78 == 3)
    {
      goto LABEL_98;
    }

LABEL_51:

    return 0;
  }

  if (v78 == 3 || v76 != v78)
  {
    goto LABEL_51;
  }

LABEL_98:
  v79 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations;
  swift_beginAccess();
  v80 = *(a1 + v79);
  v81 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations;
  swift_beginAccess();
  v82 = *(a2 + v81);

  v83 = sub_2143D9534(v80, v82);

  if ((v83 & 1) == 0)
  {
    goto LABEL_51;
  }

  v84 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode;
  swift_beginAccess();
  v85 = *(a1 + v84);

  v86 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode;
  swift_beginAccess();
  v87 = *(a2 + v86);

  if (v85 == 3)
  {
    return v87 == 3;
  }

  result = 0;
  if (v87 != 3 && v85 == v87)
  {
    return 1;
  }

  return result;
}

uint64_t sub_21446E18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2146D8DE8();
  v4 = *(a1 + 20);
  if (qword_27C9030D0 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27C913FF0;
}

uint64_t sub_21446E250(uint64_t a1, uint64_t a2)
{
  v4 = sub_21446EF54(&qword_27C9141F0, type metadata accessor for HealthSummarySharingEntry, byte_214748E6C);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_21446E2F0(uint64_t a1)
{
  v2 = sub_21446EF54(&unk_27C9130A0, type metadata accessor for HealthSummarySharingEntry, aQf_0);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_21446E35C(uint64_t a1, uint64_t a2)
{
  sub_21446EF54(&unk_27C9130A0, type metadata accessor for HealthSummarySharingEntry, aQf_0);

  return sub_2146D9008();
}

uint64_t sub_21446E3DC()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19CE8);
  __swift_project_value_buffer(v0, qword_27CA19CE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Invite";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Request";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21446E5C8()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19D00);
  __swift_project_value_buffer(v0, qword_27CA19D00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E6910;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Outgoing";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Incoming";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21446E7B4()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19D18);
  __swift_project_value_buffer(v0, qword_27CA19D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_214737980;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 0;
  *v5 = "StatusPending";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_2146D9118();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "StatusAccepted";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "StatusDeclined";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "StatusRescinded";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 4;
  *v14 = "StatusRevoked";
  *(v14 + 8) = 13;
  *(v14 + 16) = 2;
  v8();
  return sub_2146D9128();
}

uint64_t sub_21446EA60()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19D30);
  __swift_project_value_buffer(v0, qword_27CA19D30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "None";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Pending";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Accepted";
  *(v11 + 8) = 8;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21446EC94()
{
  v0 = sub_2146D9148();
  __swift_allocate_value_buffer(v0, qword_27CA19D48);
  __swift_project_value_buffer(v0, qword_27CA19D48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D20, &unk_214735770);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903D28, &qword_2146E9820) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2146E68D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NotSet";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_2146D9118();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "No";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Yes";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return sub_2146D9128();
}

uint64_t sub_21446EF54(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21446F47C()
{
  result = qword_27C9141F8;
  if (!qword_27C9141F8)
  {
    result = swift_getWitnessTable(aEl_0, &type metadata for HealthSummarySharingEntry.WheelchairUse, v0, v1);
    atomic_store(result, &qword_27C9141F8);
  }

  return result;
}

unint64_t sub_21446F4D0()
{
  result = qword_27C914200;
  if (!qword_27C914200)
  {
    result = swift_getWitnessTable(aM_111, &type metadata for HealthSummarySharingEntry.NotificationStatus, v0, v1);
    atomic_store(result, &qword_27C914200);
  }

  return result;
}

uint64_t sub_21446F524(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913098, qword_21473D710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21446F594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthSharingSetupMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21446F5F8(uint64_t a1)
{
  v2 = type metadata accessor for HealthSharingSetupMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21446F654()
{
  result = qword_27C914208;
  if (!qword_27C914208)
  {
    result = swift_getWitnessTable(byte_214748A6C, &type metadata for HealthSummarySharingEntry.Status, v0, v1);
    atomic_store(result, &qword_27C914208);
  }

  return result;
}

unint64_t sub_21446F6A8()
{
  result = qword_27C914210;
  if (!qword_27C914210)
  {
    result = swift_getWitnessTable(byte_214748984, &type metadata for HealthSummarySharingEntry.Direction, v0, v1);
    atomic_store(result, &qword_27C914210);
  }

  return result;
}

unint64_t sub_21446F6FC()
{
  result = qword_27C914218;
  if (!qword_27C914218)
  {
    result = swift_getWitnessTable(byte_21474889C, &type metadata for HealthSummarySharingEntry.TypeEnum, v0, v1);
    atomic_store(result, &qword_27C914218);
  }

  return result;
}

uint64_t sub_21446F750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthSharingSetupInvitationToken(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2146DA6A8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v15 = *(a1 + v13);
  v14 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v18 = *v16;
  v17 = v16[1];
  if (v14 >> 60 != 15)
  {
    if (v17 >> 60 == 15)
    {
      goto LABEL_14;
    }

    sub_213FDCA18(v15, v14);
    sub_213FDCA18(v18, v17);
    v20 = sub_214466780(v15, v14, v18, v17);
    sub_213FDC6BC(v18, v17);
    sub_213FDC6BC(v15, v14);
    if (v20)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v17 >> 60 != 15)
  {
LABEL_14:
    sub_213FDCA18(v15, v14);
    sub_213FDCA18(v18, v17);
    sub_213FDC6BC(v15, v14);
    sub_213FDC6BC(v18, v17);
    return 0;
  }

  sub_213FDCA18(v15, v14);
  sub_213FDCA18(v18, v17);
  sub_213FDC6BC(v15, v14);
LABEL_17:
  sub_2146D8DF8();
  sub_21446EF54(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21446F928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HealthSharingAuthorization(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_2146DA6A8();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_2146DA6A8();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (v25)
    {
      v26 = *v22 == *v24 && v23 == v25;
      if (v26 || (sub_2146DA6A8() & 1) != 0)
      {
        goto LABEL_26;
      }
    }
  }

  else if (!v25)
  {
LABEL_26:
    sub_2146D8DF8();
    sub_21446EF54(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_2146D9578() & 1;
  }

  return 0;
}

uint64_t sub_21446FAA8(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for HealthSharingSetupMetadata(0);
  v5 = v4[6];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    v10 = *v6 == *v8 && v7 == v9;
    if (!v10 && (sub_2146DA6A8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v11 = v4[7];
  v13 = *(a1 + v11);
  v12 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v16 = *v14;
  v15 = v14[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_24;
    }

    sub_213FDCA18(v13, v12);
    sub_213FDCA18(v16, v15);
    sub_213FDC6BC(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_24;
    }

    sub_213FDCA18(v13, v12);
    sub_213FDCA18(v16, v15);
    v17 = sub_214466780(v13, v12, v16, v15);
    sub_213FDC6BC(v16, v15);
    sub_213FDC6BC(v13, v12);
    if (!v17)
    {
      return 0;
    }
  }

  v18 = v4[8];
  v13 = *(a1 + v18);
  v12 = *(a1 + v18 + 8);
  v19 = (a2 + v18);
  v16 = *v19;
  v15 = v19[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 != 15)
    {
      goto LABEL_24;
    }

    sub_213FDCA18(v13, v12);
    sub_213FDCA18(v16, v15);
    sub_213FDC6BC(v13, v12);
  }

  else
  {
    if (v15 >> 60 == 15)
    {
      goto LABEL_24;
    }

    sub_213FDCA18(v13, v12);
    sub_213FDCA18(v16, v15);
    v20 = sub_214466780(v13, v12, v16, v15);
    sub_213FDC6BC(v16, v15);
    sub_213FDC6BC(v13, v12);
    if (!v20)
    {
      return 0;
    }
  }

  v21 = v4[9];
  v13 = *(a1 + v21);
  v12 = *(a1 + v21 + 8);
  v22 = (a2 + v21);
  v16 = *v22;
  v15 = v22[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 == 15)
    {
      sub_213FDCA18(v13, v12);
      sub_213FDCA18(v16, v15);
      sub_213FDC6BC(v13, v12);
      goto LABEL_27;
    }

LABEL_24:
    sub_213FDCA18(v13, v12);
    sub_213FDCA18(v16, v15);
    sub_213FDC6BC(v13, v12);
    sub_213FDC6BC(v16, v15);
    return 0;
  }

  if (v15 >> 60 == 15)
  {
    goto LABEL_24;
  }

  sub_213FDCA18(v13, v12);
  sub_213FDCA18(v16, v15);
  v24 = sub_214466780(v13, v12, v16, v15);
  sub_213FDC6BC(v16, v15);
  sub_213FDC6BC(v13, v12);
  if (!v24)
  {
    return 0;
  }

LABEL_27:
  v25 = v4[10];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (!v27)
  {
    if (!v29)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_2146DA6A8() & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  if ((sub_2143D544C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_2146D8DF8();
  sub_21446EF54(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21446FE28(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for HealthSummarySharingEntry(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_21446D614(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_2146D8DF8();
  sub_21446EF54(&qword_27C903D38, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_2146D9578() & 1;
}

uint64_t sub_21446FF10(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913098, qword_21473D710);
  MEMORY[0x28223BE20](v3 - 8);
  v66 = &v62 - v4;
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 48) = MEMORY[0x277D84F90];
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 88) = 514;
  v62 = (v1 + 88);
  *(v1 + 90) = 5;
  v5 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  v63 = (v1 + 90);
  v64 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  v6 = type metadata accessor for HealthSharingSetupMetadata(0);
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
  v65 = v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified;
  *v7 = 0;
  *(v7 + 8) = 1;
  v67 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories;
  v8 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories) = MEMORY[0x277D84F90];
  v9 = v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
  v68 = v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
  v69 = v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
  v70 = (v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
  v71 = (v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
  *v12 = 0;
  v12[1] = 0;
  v72 = (v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant);
  *(v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant) = xmmword_2146E68C0;
  v73 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus) = 3;
  v74 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations) = v8;
  v75 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode;
  *(v1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode) = 3;
  swift_beginAccess();
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v13;
  *(v1 + 24) = v14;
  swift_beginAccess();
  v15 = *(a1 + 32);
  v16 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v15;
  *(v1 + 40) = v16;
  swift_beginAccess();
  v17 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 48) = v17;

  swift_beginAccess();
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 56) = v18;
  *(v1 + 64) = v19;

  swift_beginAccess();
  v20 = *(a1 + 72);
  v21 = *(a1 + 80);
  swift_beginAccess();
  *(v1 + 72) = v20;
  *(v1 + 80) = v21;

  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 88);
  v22 = v62;
  swift_beginAccess();
  *v22 = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 89);
  swift_beginAccess();
  *(v1 + 89) = v20;
  swift_beginAccess();
  LOBYTE(v20) = *(a1 + 90);
  v23 = v63;
  swift_beginAccess();
  *v23 = v20;
  v24 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingSetupMetadata;
  swift_beginAccess();
  v25 = a1 + v24;
  v26 = v66;
  sub_21446F524(v25, v66);
  v27 = v64;
  swift_beginAccess();
  sub_214423A00(v26, v1 + v27);
  swift_endAccess();
  v28 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateModified);
  swift_beginAccess();
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  v30 = v65;
  swift_beginAccess();
  *v30 = v29;
  *(v30 + 8) = v28;
  v31 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__authorizationCategories;
  swift_beginAccess();
  v32 = *(a1 + v31);
  v33 = v67;
  swift_beginAccess();
  *(v1 + v33) = v32;

  v34 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateAccepted);
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 8);
  v36 = v68;
  swift_beginAccess();
  *v36 = v35;
  *(v36 + 8) = v34;
  v37 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__dateInvited);
  swift_beginAccess();
  v38 = *v37;
  LOBYTE(v37) = *(v37 + 8);
  v39 = v69;
  swift_beginAccess();
  *v39 = v38;
  *(v39 + 8) = v37;
  v40 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__invitationUuid);
  swift_beginAccess();
  v42 = *v40;
  v41 = v40[1];
  v43 = v70;
  swift_beginAccess();
  *v43 = v42;
  v43[1] = v41;

  v44 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__cloudKitIdentifier);
  swift_beginAccess();
  v46 = *v44;
  v45 = v44[1];
  v47 = v71;
  swift_beginAccess();
  *v47 = v46;
  v47[1] = v45;

  v48 = (a1 + OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__ownerParticipant);
  swift_beginAccess();
  v50 = *v48;
  v49 = v48[1];
  v51 = v72;
  swift_beginAccess();
  v52 = *v51;
  v53 = v51[1];
  *v51 = v50;
  v51[1] = v49;
  sub_213FDCA18(v50, v49);
  sub_213FDC6BC(v52, v53);
  v54 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__notificationStatus;
  swift_beginAccess();
  LOBYTE(v54) = *(a1 + v54);
  v55 = v73;
  swift_beginAccess();
  *(v1 + v55) = v54;
  v56 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__sharingAuthorizations;
  swift_beginAccess();
  v57 = *(a1 + v56);
  v58 = v74;
  swift_beginAccess();
  *(v1 + v58) = v57;

  v59 = OBJC_IVAR____TtCV9BlastDoor25HealthSummarySharingEntryP33_DEAEB66CBC3E1B66E4C8080B1AEAC45D13_StorageClass__userWheelchairMode;
  swift_beginAccess();
  LOBYTE(a1) = *(a1 + v59);
  v60 = v75;
  swift_beginAccess();
  *(v1 + v60) = a1;
  return v1;
}

unint64_t sub_21447064C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_214470664()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 0x68737550646E6573;
  *(inited + 40) = 0xE800000000000000;
  v1 = sub_2146D9988();
  *(inited + 72) = sub_21403EBDC();
  *(inited + 48) = v1;
  v2 = sub_2140457C0(inited);
  swift_setDeallocating();
  sub_21404C938(inited + 32);
  return v2;
}

unint64_t sub_21447071C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 0x68737550646E6573;
  *(inited + 40) = 0xE800000000000000;
  v1 = sub_2146D9988();
  *(inited + 72) = sub_21403EBDC();
  *(inited + 48) = v1;
  v2 = sub_2140457C0(inited);
  swift_setDeallocating();
  sub_21404C938(inited + 32);
  return v2;
}

unint64_t sub_2144707D4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2147494C0;
  *(v4 + 16) = sub_21447174C;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_214471750;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_2140428D0(inited, a1);
}

unint64_t sub_214470918@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

unint64_t sub_214470A38@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F28, &unk_2146E9D30);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2146F3C70;
  *(v4 + 16) = sub_214032554;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = sub_2142DFFF8(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F30, &unk_2147319A0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21403255C;
  *(v7 + 24) = v8;
  *(inited + 32) = v7;
  return sub_2140428D0(inited, a1);
}

uint64_t sub_214470B7C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - v6;
  v33 = MEMORY[0x277D84F98];
  if (*(v0 + 25))
  {
    goto LABEL_16;
  }

  v8 = *(v0 + 24);
  v9 = MEMORY[0x277D84F98];
  if ((v8 & 1) == 0)
  {
    v10 = v1[2];
    v32 = MEMORY[0x277D83B88];
    *&v31 = v10;
    sub_213FDC730(&v31, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v9;
    sub_2140524DC(v30, 0x646E616D6D6F63, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
    v9 = v29;
    v33 = v29;
  }

  v12 = v1[7];
  if (v12)
  {
    if (v12 != 1)
    {
      v13 = v1[6];
      v32 = MEMORY[0x277D837D0];
      *&v31 = v13;
      *(&v31 + 1) = v12;
      sub_213FDC730(&v31, v30);

      v14 = swift_isUniquelyReferenced_nonNull_native();
      v29 = v9;
      sub_2140524DC(v30, 0x746E65696C63, 0xE600000000000000, v14);
      v33 = v29;
      goto LABEL_7;
    }

LABEL_16:
    result = sub_2146DA018();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = type metadata accessor for IDSSampleMessage(0);
  v16 = *(v15 + 24);
  sub_2144716D8(v1 + v16, v7);
  v17 = sub_2146D8B08();
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v7, 1, v17);
  sub_213FB2DF4(v7, &qword_27C913090, &unk_2146E9DB0);
  if (v20 != 1)
  {
    sub_2144716D8(v1 + v16, v5);
    if (v19(v5, 1, v17) == 1)
    {
      sub_213FB2DF4(v5, &qword_27C913090, &unk_2146E9DB0);
      sub_2144AEF6C(1702125924, 0xE400000000000000, &v31);
      sub_213FB2DF4(&v31, &qword_27C913170, &qword_2146EAB20);
    }

    else
    {
      v32 = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v31);
      (*(v18 + 32))(boxed_opaque_existential_0, v5, v17);
      sub_213FDC730(&v31, v30);
      v22 = v33;
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v29 = v22;
      sub_2140524DC(v30, 1702125924, 0xE400000000000000, v23);
      v33 = v29;
    }
  }

  v24 = v1 + *(v15 + 28);
  if (v24[25])
  {
    goto LABEL_16;
  }

  if (v24[24])
  {
    return v33;
  }

  v26 = *(v24 + 2);
  v32 = MEMORY[0x277D83B88];
  *&v31 = v26;
  sub_213FDC730(&v31, v30);
  v27 = v33;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v29 = v27;
  sub_2140524DC(v30, 0x6E6F6973726576, 0xE700000000000000, v28);
  return v29;
}

uint64_t sub_214470F48()
{
  sub_214470B7C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214470F9C()
{
  sub_214470B7C();
  v0 = sub_2146D9468();

  return v0;
}

uint64_t sub_214471034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSampleMessageType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214471098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSSampleMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2144710FC(uint64_t a1)
{
  v2 = type metadata accessor for IDSSampleMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_214471158()
{
  v1 = v0;
  v2 = type metadata accessor for IDSSampleMessage(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IDSSampleMessageType(0);
  MEMORY[0x28223BE20](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214471034(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_214471098(v7, v4);
    sub_214470B7C();
    sub_2144710FC(v4);
  }

  else
  {
    v8 = *v7;
    v16 = MEMORY[0x277D83E88];
    *&v15 = v8;
    sub_213FDC730(&v15, v14);
    v9 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[1] = v9;
    sub_2140524DC(v14, 0xD000000000000017, 0x800000021478B080, isUniquelyReferenced_nonNull_native);
  }

  v11 = sub_2146D9468();

  return v11;
}

uint64_t sub_2144712EC(uint64_t a1)
{
  *(a1 + 8) = sub_214471370(&qword_27C90CA50, type metadata accessor for IDSSampleMessage, a9_42);
  result = sub_214471370(&qword_27C90C970, type metadata accessor for IDSSampleMessage, byte_2146FA6F8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214471370(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2144713B8(uint64_t a1)
{
  *(a1 + 8) = sub_214471370(&qword_27C9078E0, type metadata accessor for IDSSampleMessageType, aYu);
  result = sub_214471370(&qword_27C9078F0, type metadata accessor for IDSSampleMessageType, aQ_23);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21447143C(uint64_t a1)
{
  *(a1 + 8) = sub_214471370(&qword_27C914240, type metadata accessor for IDSSampleMessageResult, byte_2146FA720);
  result = sub_214471370(&qword_27C914248, type metadata accessor for IDSSampleMessageResult, byte_2146FA748);
  *(a1 + 16) = result;
  return result;
}

void sub_214471508(uint64_t a1)
{
  sub_21409A2B4(319, &qword_280B2E560, &qword_27C904798, qword_21473CFD0);
  if (v1 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
    if (v2 <= 0x3F)
    {
      sub_21409320C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2144715D8(uint64_t a1)
{
  result = type metadata accessor for IDSSampleMessage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21447166C(uint64_t a1)
{
  result = type metadata accessor for IDSSampleMessageType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2144716D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_214471758(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
}

void sub_2144717B0(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
}

uint64_t sub_214471838()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_21447188C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

void sub_2144718D0(BOOL *a2@<X8>)
{
  v3 = sub_2146DA098();

  *a2 = v3 != 0;
}

void sub_214471940(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
}

uint64_t sub_214471998(uint64_t a1)
{
  v2 = sub_214471CE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2144719D4(uint64_t a1)
{
  v2 = sub_214471CE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214471A10(uint64_t a1)
{
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();
  sub_21404B9BC();
  v1 = sub_2146D87B8();
  v3 = v2;
  sub_21402D9F8(v1, v2);
  v4 = sub_2146D8A38();
  sub_213FB54FC(v1, v3);
  sub_213FB54FC(v1, v3);

  return v4;
}

uint64_t sub_214471AD0()
{
  sub_2146D87D8();
  swift_allocObject();
  sub_2146D87C8();
  sub_21404B9BC();
  v0 = sub_2146D87B8();
  v2 = v1;
  sub_21402D9F8(v0, v1);
  v3 = sub_2146D8A38();
  sub_213FB54FC(v0, v2);
  sub_213FB54FC(v0, v2);

  return v3;
}

unint64_t sub_214471B94()
{
  result = qword_27C914250;
  if (!qword_27C914250)
  {
    result = swift_getWitnessTable(byte_2147495F0, &type metadata for IDSSampleProtobufMessage.IDSSampleProtobufMessageKey, v0, v1);
    atomic_store(result, &qword_27C914250);
  }

  return result;
}

unint64_t sub_214471BEC()
{
  result = qword_27C914258;
  if (!qword_27C914258)
  {
    result = swift_getWitnessTable(byte_214749708, &type metadata for IDSSampleProtobufMessage.IDSSampleProtobufMessageKey, v0, v1);
    atomic_store(result, &qword_27C914258);
  }

  return result;
}

unint64_t sub_214471C44()
{
  result = qword_27C914260;
  if (!qword_27C914260)
  {
    result = swift_getWitnessTable(byte_2147496E0, &type metadata for IDSSampleProtobufMessage.IDSSampleProtobufMessageKey, v0, v1);
    atomic_store(result, &qword_27C914260);
  }

  return result;
}

unint64_t sub_214471C98(uint64_t a1)
{
  *(a1 + 8) = sub_21432085C();
  result = sub_21404B9BC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214471CE8()
{
  result = qword_27C914268;
  if (!qword_27C914268)
  {
    result = swift_getWitnessTable(byte_214749690, &type metadata for IDSSampleProtobufMessage.IDSSampleProtobufMessageKey, v0, v1);
    atomic_store(result, &qword_27C914268);
  }

  return result;
}

uint64_t sub_214471D70@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214471DC8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[1].n128_i64[0];
  v7 = v1[1].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214471E30()
{
  if (*(v0 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 16);

    return v1;
  }

  return result;
}

uint64_t sub_214471EB0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214471EFC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214471F58()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_214471FD4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2143E05A8;
  *(v3 + 24) = 0;
  *(inited + 32) = v3;
  sub_214042B80(inited, a1);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2146E9BF0;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2143E05A8;
  *(v5 + 24) = 0;
  *(v4 + 32) = v5;
  sub_214042B80(v4, a1 + 40);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_2146E9BF0;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2143E05A8;
  *(v7 + 24) = 0;
  *(v6 + 32) = v7;
  sub_214042B80(v6, a1 + 80);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_2146E9BF0;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2143E05A8;
  *(v9 + 24) = 0;
  *(v8 + 32) = v9;
  sub_214042B80(v8, a1 + 120);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_2146E9BF0;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2143E05A8;
  *(v11 + 24) = 0;
  *(v10 + 32) = v11;
  sub_214042B80(v10, a1 + 160);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_2146E9BF0;
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_2146E9BF0;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21447B15C;
  *(v14 + 24) = 0;
  *(v13 + 32) = v14;
  v15 = sub_2142E0070(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v16 = swift_allocObject();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  *(v16 + 16) = sub_214032610;
  *(v16 + 24) = v17;
  *(v12 + 32) = v16;
  sub_214042A28(v12, a1 + 200);
  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_2146E9BF0;
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_2146E9BF0;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2143E05A8;
  *(v20 + 24) = 0;
  *(v19 + 32) = v20;
  v21 = sub_2142E0070(v19);
  v22 = swift_allocObject();
  v23 = swift_allocObject();
  *(v23 + 16) = v21;
  *(v22 + 16) = sub_214032610;
  *(v22 + 24) = v23;
  *(v18 + 32) = v22;
  return sub_214042A28(v18, a1 + 240);
}

uint64_t sub_21447233C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214472388(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_2144723E4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214472430(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_21447248C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144724D8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214472534@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v4 = *(v1 + 136);
  v3 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214472580(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_2144725DC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v4 = *(v1 + 176);
  v3 = *(v1 + 184);
  v5 = *(v1 + 192);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214472628(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[10] = *a1;
  v1[11].n128_u64[0] = v3;
  v1[11].n128_u64[1] = v4;
  v1[12].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214472684@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 208);
  v3 = *(v1 + 216);
  v4 = *(v1 + 224);
  v5 = *(v1 + 232);
  *a1 = *(v1 + 200);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2144726DC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 216);
  v7 = *(v1 + 224);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 200) = *a1;
  *(v1 + 216) = v3;
  *(v1 + 224) = v4;
  *(v1 + 232) = v5;
  return result;
}

uint64_t sub_214472744@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 248);
  v3 = *(v1 + 256);
  v4 = *(v1 + 264);
  v5 = *(v1 + 272);
  *a1 = *(v1 + 240);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21447279C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[16].n128_i64[0];
  v7 = v1[16].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[15] = *a1;
  v1[16].n128_u64[0] = v3;
  v1[16].n128_u64[1] = v4;
  v1[17].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214472804()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214472880()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144728FC()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214472978()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 136);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144729F4()
{
  if (*(v0 + 184))
  {
    v1 = *(v0 + 176);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214472A70()
{
  if (*(v0 + 224) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 216);

    return v1;
  }

  return result;
}

uint64_t sub_214472AF0()
{
  if (*(v0 + 264) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 256);

    return v1;
  }

  return result;
}

uint64_t sub_214472BD8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214472C24(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u64[1] = v4;
  v1[2].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214472C80@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v4 = *(v1 + 56);
  v3 = *(v1 + 64);
  v5 = *(v1 + 72);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214472CCC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 40) = *a1;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  *(v1 + 72) = v5;
  return result;
}

uint64_t sub_214472D28@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  v4 = *(v1 + 96);
  v3 = *(v1 + 104);
  v5 = *(v1 + 112);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_214472D74(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u64[0] = v3;
  v1[6].n128_u64[1] = v4;
  v1[7].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214472DD0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = *(v1 + 120);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214472E28(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  *(v1 + 144) = v4;
  *(v1 + 152) = v5;
  return result;
}

uint64_t sub_214472E90@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 184);
  v5 = *(v1 + 192);
  *a1 = *(v1 + 160);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214472EE8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[11].n128_i64[0];
  v7 = v1[11].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[10] = *a1;
  v1[11].n128_u64[0] = v3;
  v1[11].n128_u64[1] = v4;
  v1[12].n128_u8[0] = v5;
  return result;
}

uint64_t sub_214472F50()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214472FCC()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214473048()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_2144730C4()
{
  if (*(v0 + 144) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 136);

    return v1;
  }

  return result;
}

uint64_t sub_214473144()
{
  if (*(v0 + 184) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 176);

    return v1;
  }

  return result;
}

unint64_t sub_2144731C4@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  v3 = sub_214069764(&unk_282653C08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v4 + 16) = sub_21409A858;
  *(v4 + 24) = v5;
  *(inited + 32) = v4;
  v6 = sub_214069888(&unk_282653C68);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21409A860;
  *(v7 + 24) = v8;
  *(inited + 40) = v7;
  return sub_214042F80(inited, a1);
}

uint64_t sub_214473328@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v1 + *(v6 + 28), v5, &unk_27C9131A0, &unk_2146E9D10);
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) != 1)
  {
    return (*(v8 + 32))(a1, v5, v7);
  }

  sub_21407E248(v5);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2144734A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2144734AC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_2144734B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t sub_2144734C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t LinkAttribute.init(range:link:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for LinkAttribute(0) + 20);
  v7 = sub_2146D8958();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t LinkIsRichLinkAttribute.init(range:isRichLink:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_2144735B4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21447360C(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_214473674@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 456);
  v4 = *(v1 + 464);
  v3 = *(v1 + 472);
  v5 = *(v1 + 480);
  *a1 = *(v1 + 448);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_2144736C0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[28] = *a1;
  v1[29].n128_u64[0] = v3;
  v1[29].n128_u64[1] = v4;
  v1[30].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21447371C()
{
  if (*(v0 + 80) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 72);

    return v1;
  }

  return result;
}

uint64_t sub_21447379C()
{
  if (*(v0 + 472))
  {
    v1 = *(v0 + 464);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214473838@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if ((result + 1) < 3)
  {
    v2 = result + 1;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214473934@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a3 + 1) >= 3)
  {
    sub_21404A6EC();
    swift_allocError();
    *v4 = 0xD000000000000024;
    *(v4 + 8) = 0x800000021479B0C0;
    strcpy((v4 + 16), "InvalidValue");
    *(v4 + 29) = 0;
    *(v4 + 30) = -5120;
    *(v4 + 32) = 0xD00000000000001DLL;
    *(v4 + 40) = 0x80000002147862B0;
    return swift_willThrow();
  }

  else
  {
    *a4 = result;
    *(a4 + 8) = a2;
    *(a4 + 16) = a3 + 1;
  }

  return result;
}

uint64_t sub_2144739FC(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t sub_214473ADC(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t sub_214473B04()
{
  v1 = *(v0 + 16);

  return v1;
}

void sub_214473B34(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t sub_214473B8C@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 13;
  if (result < 0xD)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214473CB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if ((a3 - 1) < 0xC)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = v4;
  return result;
}

uint64_t sub_214473CD8(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t LinkAttribute.range.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t LinkAttribute.link.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LinkAttribute(0) + 20);
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LinkAttribute.link.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LinkAttribute(0) + 20);
  v4 = sub_2146D8958();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LinkIsRichLinkAttribute.range.setter(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t sub_214473F30()
{
  v1 = *v0;

  return v1;
}

void sub_214473F60(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void sub_214473FB8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 16), *(v2 + 24));

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144740FC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 16);
  *(v3 + 24) = v5;
  v6 = *(v1 + 24);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214074090;
  }

  return result;
}

void (*sub_2144741D4(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21407449C;
}

uint64_t sub_214474274()
{
  v1 = *(v0 + 40);

  return v1;
}

void sub_2144742A4(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void sub_2144742FC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214474444(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144744E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_214474578(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144746C0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_21441589C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_21447475C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143D3F8C;
}

void sub_2144747F4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_21447493C(void *a1))()
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144158A0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144749D8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2144158A4;
}

void sub_214474A70(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 80);
  v8 = *(v2 + 112);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214474BB8(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_21447B160;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214474C54(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21447B164;
}

void sub_214474CEC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 120);
  v8 = *(v2 + 152);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 136) = a1;
    *(v2 + 144) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214474E34(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 144);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 136);
    a1[1] = v3;

    return sub_2143BC4D4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_214474ED0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 128);
  v7 = *(v1 + 136);
  v6 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143BC804;
}

void sub_214474F68(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 160);
  v8 = *(v2 + 192);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 176) = a1;
    *(v2 + 184) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144750B0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 184);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 176);
    a1[1] = v3;

    return sub_2143BCC08;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_21447514C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 168);
  v7 = *(v1 + 176);
  v6 = *(v1 + 184);
  v8 = *(v1 + 192);
  *v4 = *(v1 + 160);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143BCF38;
}

uint64_t sub_2144751E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 224);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 216);
    a2[1] = v4;
  }

  return result;
}

double sub_214475258(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214475308(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 200);
  v8 = *(v2 + 232);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 216), *(v2 + 224));

    *(v2 + 216) = a1;
    *(v2 + 224) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21447544C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 216);
  *(v3 + 24) = v5;
  v6 = *(v1 + 224);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214475524;
  }

  return result;
}

void sub_214475524(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 200);
    v13 = *(v3 + 232);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 216) = v5;
      *(v9 + 224) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 200);
  v13 = *(v3 + 232);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 216) = v5;
  *(v7 + 224) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2144756F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  v3 = *(a1 + 216);
  v4 = *(a1 + 224);
  v5 = *(a1 + 232);
  *a2 = *(a1 + 200);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214475748(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 216);
  v9 = *(a2 + 224);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 200) = v4;
  *(a2 + 208) = v3;
  *(a2 + 216) = v5;
  *(a2 + 224) = v6;
  *(a2 + 232) = v7;
  return result;
}

void (*sub_2144757D0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 208);
  v6 = *(v1 + 216);
  v7 = *(v1 + 224);
  v8 = *(v1 + 232);
  *v4 = *(v1 + 200);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214475870;
}

void sub_214475870(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 216);
  v10 = *(v3 + 224);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 200) = v5;
    *(v3 + 208) = v4;
    *(v3 + 216) = v7;
    *(v3 + 224) = v6;
    *(v3 + 232) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 200) = v5;
    *(v3 + 208) = v4;
    *(v3 + 216) = v7;
    *(v3 + 224) = v6;
    *(v3 + 232) = v8;
  }

  free(v2);
}

uint64_t sub_214475950@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 264);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 256);
    a2[1] = v4;
  }

  return result;
}

double sub_2144759C4(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214475A74(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 240);
  v8 = *(v2 + 272);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 256), *(v2 + 264));

    *(v2 + 256) = a1;
    *(v2 + 264) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214475BB8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 256);
  *(v3 + 24) = v5;
  v6 = *(v1 + 264);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214475C90;
  }

  return result;
}

void sub_214475C90(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 240);
    v13 = *(v3 + 272);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 256) = v5;
      *(v9 + 264) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 240);
  v13 = *(v3 + 272);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 256) = v5;
  *(v7 + 264) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214475E60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 248);
  v3 = *(a1 + 256);
  v4 = *(a1 + 264);
  v5 = *(a1 + 272);
  *a2 = *(a1 + 240);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214475EB4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 256);
  v9 = *(a2 + 264);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 240) = v4;
  *(a2 + 248) = v3;
  *(a2 + 256) = v5;
  *(a2 + 264) = v6;
  *(a2 + 272) = v7;
  return result;
}

void (*sub_214475F3C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 248);
  v6 = *(v1 + 256);
  v7 = *(v1 + 264);
  v8 = *(v1 + 272);
  *v4 = *(v1 + 240);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214475FDC;
}

void sub_214475FDC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 256);
  v10 = *(v3 + 264);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 240) = v5;
    *(v3 + 248) = v4;
    *(v3 + 256) = v7;
    *(v3 + 264) = v6;
    *(v3 + 272) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 240) = v5;
    *(v3 + 248) = v4;
    *(v3 + 256) = v7;
    *(v3 + 264) = v6;
    *(v3 + 272) = v8;
  }

  free(v2);
}

void sub_2144760BC(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *v2;
  v8 = *(v2 + 32);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214476204(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 24);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 16);
    a1[1] = v3;

    return sub_2143CE940;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_2144762A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 8);
  v7 = *(v1 + 16);
  v6 = *(v1 + 24);
  v8 = *(v1 + 32);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_2143CE9DC;
}

void sub_214476338(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 40);
  v8 = *(v2 + 72);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_214476480(void *a1))()
{
  v3 = *(v1 + 64);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 56);
    a1[1] = v3;

    return sub_2144120D0;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_21447651C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 48);
  v7 = *(v1 + 56);
  v6 = *(v1 + 64);
  v8 = *(v1 + 72);
  *v4 = *(v1 + 40);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_21441238C;
}

void sub_2144765B4(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 80);
  v8 = *(v2 + 112);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 96) = a1;
    *(v2 + 104) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_2144766FC(void *a1))(uint64_t *, char)
{
  v3 = *(v1 + 104);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 96);
    a1[1] = v3;

    return sub_214476798;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_21447679C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 88);
  v7 = *(v1 + 96);
  v6 = *(v1 + 104);
  v8 = *(v1 + 112);
  *v4 = *(v1 + 80);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214476834;
}

uint64_t sub_214476838@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 144);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 136);
    a2[1] = v4;
  }

  return result;
}

double sub_2144768AC(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21447695C(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 120);
  v8 = *(v2 + 152);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 136), *(v2 + 144));

    *(v2 + 136) = a1;
    *(v2 + 144) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214476AA0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 136);
  *(v3 + 24) = v5;
  v6 = *(v1 + 144);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214476B78;
  }

  return result;
}

void sub_214476B78(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 120);
    v13 = *(v3 + 152);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 136) = v5;
      *(v9 + 144) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 120);
  v13 = *(v3 + 152);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 136) = v5;
  *(v7 + 144) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_214476D48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  v4 = *(a1 + 144);
  v5 = *(a1 + 152);
  *a2 = *(a1 + 120);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214476D9C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 136);
  v9 = *(a2 + 144);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 120) = v4;
  *(a2 + 128) = v3;
  *(a2 + 136) = v5;
  *(a2 + 144) = v6;
  *(a2 + 152) = v7;
  return result;
}

void (*sub_214476E24(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 128);
  v6 = *(v1 + 136);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  *v4 = *(v1 + 120);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214476EC4;
}

void sub_214476EC4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 136);
  v10 = *(v3 + 144);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v7;
    *(v3 + 144) = v6;
    *(v3 + 152) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 120) = v5;
    *(v3 + 128) = v4;
    *(v3 + 136) = v7;
    *(v3 + 144) = v6;
    *(v3 + 152) = v8;
  }

  free(v2);
}

uint64_t sub_214476FA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 184);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 176);
    a2[1] = v4;
  }

  return result;
}

double sub_214477018(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_2144770C8(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 160);
  v8 = *(v2 + 192);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 176), *(v2 + 184));

    *(v2 + 176) = a1;
    *(v2 + 184) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21447720C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 176);
  *(v3 + 24) = v5;
  v6 = *(v1 + 184);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_2144772E4;
  }

  return result;
}

void sub_2144772E4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 160);
    v13 = *(v3 + 192);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 176) = v5;
      *(v9 + 184) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 160);
  v13 = *(v3 + 192);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 176) = v5;
  *(v7 + 184) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2144774B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 168);
  v3 = *(a1 + 176);
  v4 = *(a1 + 184);
  v5 = *(a1 + 192);
  *a2 = *(a1 + 160);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214477508(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 176);
  v9 = *(a2 + 184);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 160) = v4;
  *(a2 + 168) = v3;
  *(a2 + 176) = v5;
  *(a2 + 184) = v6;
  *(a2 + 192) = v7;
  return result;
}

void (*sub_214477590(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 168);
  v6 = *(v1 + 176);
  v7 = *(v1 + 184);
  v8 = *(v1 + 192);
  *v4 = *(v1 + 160);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214477630;
}

void sub_214477630(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 176);
  v10 = *(v3 + 184);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 160) = v5;
    *(v3 + 168) = v4;
    *(v3 + 176) = v7;
    *(v3 + 184) = v6;
    *(v3 + 192) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 160) = v5;
    *(v3 + 168) = v4;
    *(v3 + 176) = v7;
    *(v3 + 184) = v6;
    *(v3 + 192) = v8;
  }

  free(v2);
}

uint64_t sub_21447771C(uint64_t result, char a2)
{
  *(v2 + 200) = result;
  *(v2 + 208) = a2 & 1;
  return result;
}

uint64_t sub_214477758(uint64_t result, char a2)
{
  *(v2 + 216) = result;
  *(v2 + 224) = a2 & 1;
  return result;
}

uint64_t sub_214477794(uint64_t result, char a2)
{
  *(v2 + 232) = result;
  *(v2 + 240) = a2 & 1;
  return result;
}

uint64_t sub_2144777D0(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 248) = result;
  *(v3 + 256) = a2;
  *(v3 + 264) = a3 & 1;
  return result;
}

uint64_t sub_21447780C(uint64_t result, char a2)
{
  *(v2 + 272) = result;
  *(v2 + 280) = a2 & 1;
  return result;
}

uint64_t sub_214477848(uint64_t result, char a2)
{
  *(v2 + 288) = result;
  *(v2 + 296) = a2 & 1;
  return result;
}

uint64_t sub_2144778B4(uint64_t result, char a2)
{
  *(v2 + 304) = result;
  *(v2 + 312) = a2 & 1;
  return result;
}

uint64_t sub_2144778EC(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t sub_214477914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(a1 + *(v7 + 28), v6, &unk_27C9131A0, &unk_2146E9D10);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  sub_21407E248(v6);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214477A90(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  sub_21402F904(v6);
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_214477BC0(uint64_t a1)
{
  v2 = sub_2146D8958();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  sub_21402F904(v5);
  return (*(v3 + 8))(a1, v2);
}

void (*sub_214477CAC(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = sub_2146D8958();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70);
  sub_213FB2E54(v1 + *(v15 + 28), v8, &unk_27C9131A0, &unk_2146E9D10);
  if ((*(v11 + 48))(v8, 1, v9) == 1)
  {
    sub_21407E248(v8);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
    return sub_21440FDC8;
  }

  return result;
}

void (*sub_214477EC8(uint64_t *a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131D0, &qword_2146EAA70) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  a1[1] = v4;
  sub_213FB2E54(v1, v4, &unk_27C9131D0, &qword_2146EAA70);
  return sub_214477F78;
}

void sub_214477F78(uint64_t *a1)
{
  v1 = a1[1];
  sub_2143A009C(v1, *a1);

  free(v1);
}

uint64_t sub_214477FB4()
{
  v1 = *(v0 + *(type metadata accessor for FileTransferAttribute.AttachmentInfo(0) + 20));

  return v1;
}

void sub_214478014(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FileTransferAttribute.AttachmentInfo(0) + 20));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_2144780A4()
{
  v1 = *(v0 + *(type metadata accessor for FileTransferAttribute.AttachmentInfo(0) + 24));

  return v1;
}

void sub_2144780E4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FileTransferAttribute.AttachmentInfo(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_214478198(uint64_t a1)
{
  result = type metadata accessor for FileTransferAttribute.AttachmentInfo(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_214478210()
{
  v1 = *(v0 + *(type metadata accessor for FileTransferAttribute.AttachmentInfo(0) + 32));

  return v1;
}

void sub_214478250(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FileTransferAttribute.AttachmentInfo(0) + 32));

  *v5 = a1;
  v5[1] = a2;
}

__n128 sub_214478364@<Q0>(__n128 *a1@<X8>)
{
  v2 = *(v1 + 40);
  result = *(v1 + 24);
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 sub_214478378(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v2;
  return result;
}

uint64_t sub_2144783DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 80);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 72);
    a2[1] = v4;
  }

  return result;
}

double sub_214478450(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214478500(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 56);
  v8 = *(v2 + 88);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 72), *(v2 + 80));

    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214478644(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 72);
  *(v3 + 24) = v5;
  v6 = *(v1 + 80);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21447871C;
  }

  return result;
}

void sub_21447871C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 56);
    v13 = *(v3 + 88);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 72) = v5;
      *(v9 + 80) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 56);
  v13 = *(v3 + 88);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 72) = v5;
  *(v7 + 80) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_2144788EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  v5 = *(a1 + 88);
  *a2 = *(a1 + 56);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_214478940(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 56) = v4;
  *(a2 + 64) = v3;
  *(a2 + 72) = v5;
  *(a2 + 80) = v6;
  *(a2 + 88) = v7;
  return result;
}

void (*sub_2144789C8(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  v8 = *(v1 + 88);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_214478A68;
}

void sub_214478A68(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 72);
  v10 = *(v3 + 80);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v7;
    *(v3 + 80) = v6;
    *(v3 + 88) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v7;
    *(v3 + 80) = v6;
    *(v3 + 88) = v8;
  }

  free(v2);
}

uint64_t sub_214478B48()
{
  v1 = *(v0 + 96);

  return v1;
}

void sub_214478B78(uint64_t a1, uint64_t a2)
{

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
}

uint64_t sub_214478BDC(uint64_t result, char a2)
{
  *(v2 + 112) = result;
  *(v2 + 120) = a2 & 1;
  return result;
}

uint64_t sub_214478C0C@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 128), 0x139uLL);
  memcpy(a1, (v1 + 128), 0x139uLL);
  return sub_21431D304(__dst, v4);
}

void *sub_214478C60(const void *a1)
{
  memcpy(__dst, (v1 + 128), 0x139uLL);
  sub_21431D2B0(__dst);
  return memcpy((v1 + 128), a1, 0x139uLL);
}

uint64_t sub_214478CD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 472);
  if (v4)
  {
    *a2 = *(a1 + 464);
    a2[1] = v4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

double sub_214478D40(uint64_t *a1)
{
  sub_214031F20(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_214478DF0(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 448);
  v8 = *(v2 + 480);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {

    *(v2 + 464) = a1;
    *(v2 + 472) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_214478F38(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 472);
  a1[2] = v1;
  a1[3] = v3;
  if (v3)
  {
    *a1 = *(v1 + 464);
    a1[1] = v3;

    return sub_214478FD4;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void sub_214478FD4(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v9 = v2;
    v6 = *(v3 + 448);
    v10 = *(v3 + 480);
    v11 = 0x6E776F6E6B6E753CLL;
    v12 = 0xE90000000000003ELL;
    v13 = 0xD00000000000001CLL;
    v14 = 0x800000021478A360;
    if (v6(&v8, &v10, &v11))
    {

      *(v3 + 464) = v4;
      *(v3 + 472) = v2;
      return;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v9 = v2;
  v5 = *(v3 + 448);
  v10 = *(v3 + 480);
  v11 = 0x6E776F6E6B6E753CLL;
  v12 = 0xE90000000000003ELL;
  v13 = 0xD00000000000001CLL;
  v14 = 0x800000021478A360;

  if ((v5(&v8, &v10, &v11) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  *(v3 + 464) = v4;
  *(v3 + 472) = v2;
}

void sub_2144791F4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v6 = a1[2];
  v5 = a1[3];
  v7 = *(a1 + 32);

  *(a2 + 448) = v4;
  *(a2 + 456) = v3;
  *(a2 + 464) = v6;
  *(a2 + 472) = v5;
  *(a2 + 480) = v7;
}

void (*sub_21447926C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 456);
  v7 = *(v1 + 464);
  v6 = *(v1 + 472);
  v8 = *(v1 + 480);
  *v4 = *(v1 + 448);
  *(v4 + 8) = v5;
  *(v4 + 16) = v7;
  *(v4 + 24) = v6;
  *(v4 + 32) = v8;

  return sub_214479304;
}

void sub_214479304(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  if (a2)
  {

    *(v3 + 448) = v5;
    *(v3 + 456) = v4;
    *(v3 + 464) = v7;
    *(v3 + 472) = v6;
    *(v3 + 480) = v8;
  }

  else
  {

    *(v3 + 448) = v5;
    *(v3 + 456) = v4;
    *(v3 + 464) = v7;
    *(v3 + 472) = v6;
    *(v3 + 480) = v8;
  }

  free(v2);
}

uint64_t sub_214479428()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_214479458(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

unint64_t sub_2144794B4()
{
  result = qword_27C914270;
  if (!qword_27C914270)
  {
    result = swift_getWitnessTable(byte_2147497D0, &type metadata for BaseWritingDirectionAttribute.WritingDirection, v0, v1);
    atomic_store(result, &qword_27C914270);
  }

  return result;
}

unint64_t sub_214479534(uint64_t a1)
{
  result = sub_21447955C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21447955C()
{
  result = qword_280B30068;
  if (!qword_280B30068)
  {
    result = swift_getWitnessTable(asc_214749918, &type metadata for BaseWritingDirectionAttribute, v0, v1);
    atomic_store(result, &qword_280B30068);
  }

  return result;
}

unint64_t sub_2144795B0(uint64_t a1)
{
  result = sub_2144795D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2144795D8()
{
  result = qword_280B30070;
  if (!qword_280B30070)
  {
    result = swift_getWitnessTable(aD_4, &type metadata for BaseWritingDirectionAttribute, v0, v1);
    atomic_store(result, &qword_280B30070);
  }

  return result;
}

unint64_t sub_214479658(uint64_t a1)
{
  result = sub_214479680();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214479680()
{
  result = qword_280B30368;
  if (!qword_280B30368)
  {
    result = swift_getWitnessTable(byte_21474997C, &type metadata for MessagePartAttribute, v0, v1);
    atomic_store(result, &qword_280B30368);
  }

  return result;
}

unint64_t sub_2144796D4(uint64_t a1)
{
  result = sub_2144796FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2144796FC()
{
  result = qword_280B30360;
  if (!qword_280B30360)
  {
    result = swift_getWitnessTable(byte_214749998, &type metadata for MessagePartAttribute, v0, v1);
    atomic_store(result, &qword_280B30360);
  }

  return result;
}

unint64_t sub_21447977C(uint64_t a1)
{
  result = sub_2144797A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2144797A4()
{
  result = qword_280B2FF90;
  if (!qword_280B2FF90)
  {
    result = swift_getWitnessTable(aA_28, &type metadata for BreadcrumbTextOptionFlagsAttribute, v0, v1);
    atomic_store(result, &qword_280B2FF90);
  }

  return result;
}

unint64_t sub_2144797F8(uint64_t a1)
{
  result = sub_214479820();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214479820()
{
  result = qword_280B2FF98;
  if (!qword_280B2FF98)
  {
    result = swift_getWitnessTable(aC_6, &type metadata for BreadcrumbTextOptionFlagsAttribute, v0, v1);
    atomic_store(result, &qword_280B2FF98);
  }

  return result;
}

unint64_t sub_2144798A0(uint64_t a1)
{
  result = sub_2144798C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2144798C8()
{
  result = qword_280B30040;
  if (!qword_280B30040)
  {
    result = swift_getWitnessTable(asc_214749A44, &type metadata for BreadcrumbTextMarkerAttribute, v0, v1);
    atomic_store(result, &qword_280B30040);
  }

  return result;
}

unint64_t sub_21447991C(uint64_t a1)
{
  result = sub_214479944();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214479944()
{
  result = qword_280B30048;
  if (!qword_280B30048)
  {
    result = swift_getWitnessTable(byte_214749A60, &type metadata for BreadcrumbTextMarkerAttribute, v0, v1);
    atomic_store(result, &qword_280B30048);
  }

  return result;
}

unint64_t sub_2144799C4(uint64_t a1)
{
  result = sub_2144799EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2144799EC()
{
  result = qword_280B30530;
  if (!qword_280B30530)
  {
    result = swift_getWitnessTable(aY_24, &type metadata for MentionAttribute, v0, v1);
    atomic_store(result, &qword_280B30530);
  }

  return result;
}

unint64_t sub_214479A40(uint64_t a1)
{
  result = sub_214479A68();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214479A68()
{
  result = qword_280B30538;
  if (!qword_280B30538)
  {
    result = swift_getWitnessTable(byte_214749AC4, &type metadata for MentionAttribute, v0, v1);
    atomic_store(result, &qword_280B30538);
  }

  return result;
}

unint64_t sub_214479AEC()
{
  result = qword_27C914278;
  if (!qword_27C914278)
  {
    result = swift_getWitnessTable(byte_214749AE0, &type metadata for TextEffectAttribute.TextEffectType, v0, v1);
    atomic_store(result, &qword_27C914278);
  }

  return result;
}

unint64_t sub_214479B6C(uint64_t a1)
{
  result = sub_214479B94();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214479B94()
{
  result = qword_280B303C0;
  if (!qword_280B303C0)
  {
    result = swift_getWitnessTable(byte_214749C28, &type metadata for TextEffectAttribute, v0, v1);
    atomic_store(result, &qword_280B303C0);
  }

  return result;
}

unint64_t sub_214479BE8(uint64_t a1)
{
  result = sub_214479C10();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214479C10()
{
  result = qword_280B303C8;
  if (!qword_280B303C8)
  {
    result = swift_getWitnessTable(byte_214749C44, &type metadata for TextEffectAttribute, v0, v1);
    atomic_store(result, &qword_280B303C8);
  }

  return result;
}

unint64_t sub_214479C90(uint64_t a1)
{
  result = sub_214479CB8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214479CB8()
{
  result = qword_280B304E8;
  if (!qword_280B304E8)
  {
    result = swift_getWitnessTable(byte_214749C8C, &type metadata for TextBoldAttribute, v0, v1);
    atomic_store(result, &qword_280B304E8);
  }

  return result;
}

unint64_t sub_214479D0C(uint64_t a1)
{
  result = sub_214479D34();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214479D34()
{
  result = qword_280B304F0;
  if (!qword_280B304F0)
  {
    result = swift_getWitnessTable(byte_214749CA8, &type metadata for TextBoldAttribute, v0, v1);
    atomic_store(result, &qword_280B304F0);
  }

  return result;
}

unint64_t sub_214479DB4(uint64_t a1)
{
  result = sub_214479DDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214479DDC()
{
  result = qword_280B30398;
  if (!qword_280B30398)
  {
    result = swift_getWitnessTable(a1_6, &type metadata for TextItalicAttribute, v0, v1);
    atomic_store(result, &qword_280B30398);
  }

  return result;
}

unint64_t sub_214479E30(uint64_t a1)
{
  result = sub_214479E58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214479E58()
{
  result = qword_280B303A0;
  if (!qword_280B303A0)
  {
    result = swift_getWitnessTable(aM_112, &type metadata for TextItalicAttribute, v0, v1);
    atomic_store(result, &qword_280B303A0);
  }

  return result;
}

unint64_t sub_214479ED8(uint64_t a1)
{
  result = sub_214479F00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214479F00()
{
  result = qword_280B301E8;
  if (!qword_280B301E8)
  {
    result = swift_getWitnessTable(byte_214749D54, &type metadata for TextUnderlineAttribute, v0, v1);
    atomic_store(result, &qword_280B301E8);
  }

  return result;
}

unint64_t sub_214479F54(uint64_t a1)
{
  result = sub_214479F7C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214479F7C()
{
  result = qword_280B301F0;
  if (!qword_280B301F0)
  {
    result = swift_getWitnessTable(byte_214749D70, &type metadata for TextUnderlineAttribute, v0, v1);
    atomic_store(result, &qword_280B301F0);
  }

  return result;
}

unint64_t sub_214479FFC(uint64_t a1)
{
  result = sub_21447A024();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21447A024()
{
  result = qword_280B30178;
  if (!qword_280B30178)
  {
    result = swift_getWitnessTable(aI_23, &type metadata for TextStrikethroughAttribute, v0, v1);
    atomic_store(result, &qword_280B30178);
  }

  return result;
}

unint64_t sub_21447A078(uint64_t a1)
{
  result = sub_21447A0A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21447A0A0()
{
  result = qword_280B30180;
  if (!qword_280B30180)
  {
    result = swift_getWitnessTable(byte_214749DD4, &type metadata for TextStrikethroughAttribute, v0, v1);
    atomic_store(result, &qword_280B30180);
  }

  return result;
}

uint64_t sub_21447A120(uint64_t a1)
{
  result = sub_21447A1D0(&qword_280B309A0, type metadata accessor for LinkAttribute, protocol conformance descriptor for LinkAttribute);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21447A178(uint64_t a1)
{
  result = sub_21447A1D0(&qword_280B309A8, type metadata accessor for LinkAttribute, protocol conformance descriptor for LinkAttribute);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21447A1D0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21447A218(uint64_t a1)
{
  *(a1 + 8) = sub_21447A1D0(&qword_280B309B8, type metadata accessor for LinkAttribute, protocol conformance descriptor for LinkAttribute);
  result = sub_21447A1D0(&qword_280B309C0, type metadata accessor for LinkAttribute, protocol conformance descriptor for LinkAttribute);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21447A29C(uint64_t a1)
{
  result = sub_21447A2C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21447A2C4()
{
  result = qword_280B30B50;
  if (!qword_280B30B50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinkIsRichLinkAttribute, &type metadata for LinkIsRichLinkAttribute, v0, v1);
    atomic_store(result, &qword_280B30B50);
  }

  return result;
}

unint64_t sub_21447A318(uint64_t a1)
{
  result = sub_21447A340();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21447A340()
{
  result = qword_280B30B58;
  if (!qword_280B30B58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinkIsRichLinkAttribute, &type metadata for LinkIsRichLinkAttribute, v0, v1);
    atomic_store(result, &qword_280B30B58);
  }

  return result;
}

uint64_t sub_21447A4C8(uint64_t a1)
{
  *(a1 + 8) = sub_21447A1D0(&qword_280B2EFF8, type metadata accessor for FileTransferAttribute.AttachmentInfo, byte_2146FDC40);
  result = sub_21447A1D0(qword_280B2F000, type metadata accessor for FileTransferAttribute.AttachmentInfo, aQ_24);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21447A578(uint64_t a1)
{
  result = sub_21447A5A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21447A5A0()
{
  result = qword_280B302A0;
  if (!qword_280B302A0)
  {
    result = swift_getWitnessTable(byte_21474A034, &type metadata for FileTransferAttribute, v0, v1);
    atomic_store(result, &qword_280B302A0);
  }

  return result;
}

unint64_t sub_21447A5F4(uint64_t a1)
{
  result = sub_21447A61C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_21447A61C()
{
  result = qword_280B302A8;
  if (!qword_280B302A8)
  {
    result = swift_getWitnessTable(asc_21474A050, &type metadata for FileTransferAttribute, v0, v1);
    atomic_store(result, &qword_280B302A8);
  }

  return result;
}

uint64_t sub_21447A6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for BaseWritingDirectionAttribute(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for BaseWritingDirectionAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TextEffectAttribute(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 17))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 0xD;
  v5 = v3 - 13;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TextEffectAttribute(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 16) = 0;
    *result = a2 - 244;
    *(result + 8) = 0;
    if (a3 >= 0xF4)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 12;
    }
  }

  return result;
}

void sub_21447A910(uint64_t a1)
{
  sub_21447A994();
  if (v1 <= 0x3F)
  {
    sub_2146D8958();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21447A994()
{
  if (!qword_280B2E398)
  {
    v0 = sub_2146D9B38();
    if (!v1)
    {
      atomic_store(v0, &qword_280B2E398);
    }
  }
}

uint64_t sub_21447AA0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21447AA54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21447AAC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 273))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21447AB10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *(result + 272) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 273) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 273) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21447ABB0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 313))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21447ABF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 313) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21447ACB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 481))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21447ACF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 472) = 0;
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
    *(result + 456) = 0u;
    *(result + 480) = 0;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 481) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 481) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21447ADC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 313))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 33);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_21447AE14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 313) = 1;
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
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = -a2 << 8;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0u;
      *(result + 104) = 0u;
      *(result + 120) = 0u;
      *(result + 136) = 0u;
      *(result + 152) = 0u;
      *(result + 168) = 0u;
      *(result + 184) = 0u;
      *(result + 200) = 0u;
      *(result + 216) = 0u;
      *(result + 232) = 0u;
      *(result + 248) = 0u;
      *(result + 312) = 0;
      *(result + 40) = 0u;
      result += 40;
      *(result + 224) = 0u;
      *(result + 240) = 0u;
      *(result + 256) = 0u;
      return result;
    }

    *(result + 313) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21447AEF8(uint64_t result, char a2)
{
  v2 = *(result + 72);
  v3 = *(result + 112);
  v4 = *(result + 152);
  v5 = *(result + 192);
  v6 = *(result + 280) & 1;
  v7 = *(result + 296) & 0x101;
  v8 = *(result + 312) & 1 | (32 * a2);
  *(result + 32) = *(result + 32);
  *(result + 72) = v2;
  *(result + 112) = v3;
  *(result + 152) = v4;
  *(result + 192) = v5;
  *(result + 280) = v6;
  *(result + 296) = v7;
  *(result + 312) = v8;
  return result;
}

void sub_21447AF88(uint64_t a1)
{
  sub_2143A5654(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_21447B030()
{
  result = qword_27C914280;
  if (!qword_27C914280)
  {
    result = swift_getWitnessTable(aY_25, &type metadata for TextEffectAttribute.TextEffectType, v0, v1);
    atomic_store(result, &qword_27C914280);
  }

  return result;
}

unint64_t sub_21447B084()
{
  result = qword_280B300A8;
  if (!qword_280B300A8)
  {
    result = swift_getWitnessTable(aI_24, &type metadata for BaseWritingDirectionAttribute.WritingDirection, v0, v1);
    atomic_store(result, &qword_280B300A8);
  }

  return result;
}

uint64_t sub_21447B16C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

__n128 sub_21447B1B8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

uint64_t sub_21447B210()
{
  if (*(v0 + 72))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

unint64_t sub_21447B280@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146E9BF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2140676DC;
  *(v4 + 24) = 0;
  *(v3 + 32) = v4;
  v5 = sub_2142E0070(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = sub_21403254C;
  *(v6 + 24) = v7;
  *(inited + 32) = v6;
  return sub_214042A28(inited, a1);
}

uint64_t sub_21447B3A0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_21447B3F8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

uint64_t sub_21447B460()
{
  if (*(v0 + 48) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 40);

    return v1;
  }

  return result;
}

void *sub_21447B4E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_21447B520(a2, &v5);
  v4 = v5;
  if (v5 == 22)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21447B520@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 2005)
  {
    if (result > 1999)
    {
      if (result > 2002)
      {
        if (result == 2003)
        {
          *a2 = 8;
        }

        else if (result == 2004)
        {
          *a2 = 9;
        }

        else
        {
          *a2 = 10;
        }
      }

      else if (result == 2000)
      {
        *a2 = 5;
      }

      else if (result == 2001)
      {
        *a2 = 6;
      }

      else
      {
        *a2 = 7;
      }

      return result;
    }

    if (result <= 1)
    {
      if (!result)
      {
        *a2 = 0;
        return result;
      }

      if (result == 1)
      {
        *a2 = 1;
        return result;
      }
    }

    else
    {
      switch(result)
      {
        case 2:
          *a2 = 2;
          return result;
        case 3:
          *a2 = 3;
          return result;
        case 1000:
          *a2 = 4;
          return result;
      }
    }

LABEL_48:
    *a2 = 22;
    return result;
  }

  if (result <= 3002)
  {
    if (result <= 2999)
    {
      if (result == 2006)
      {
        *a2 = 11;
        return result;
      }

      if (result == 2007)
      {
        *a2 = 12;
        return result;
      }

      goto LABEL_48;
    }

    if (result == 3000)
    {
      *a2 = 13;
    }

    else if (result == 3001)
    {
      *a2 = 14;
    }

    else
    {
      *a2 = 15;
    }
  }

  else
  {
    if (result > 3005)
    {
      switch(result)
      {
        case 3006:
          *a2 = 19;
          return result;
        case 3007:
          *a2 = 20;
          return result;
        case 4000:
          *a2 = 21;
          return result;
      }

      goto LABEL_48;
    }

    if (result == 3003)
    {
      *a2 = 16;
    }

    else if (result == 3004)
    {
      *a2 = 17;
    }

    else
    {
      *a2 = 18;
    }
  }

  return result;
}

uint64_t sub_21447B74C()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_21474B0F0[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21447B7D4(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_21474B0F0[v2]);
  return sub_2146DA9B8();
}

uint64_t sub_21447B928()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_21447B958(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_21447B9B0()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_21447B9E0(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t sub_21447BA40(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

void sub_21447BA68(uint64_t a1)
{
  v7 = a1;
  v3 = *(v1 + 56);
  v6 = *(v1 + 80);
  v5[0] = 0x6E776F6E6B6E753CLL;
  v5[1] = 0xE90000000000003ELL;
  v5[2] = 0xD00000000000001CLL;
  v5[3] = 0x800000021478A360;
  if (v3(&v7, &v6, v5))
  {

    *(v1 + 72) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v4 = 0x6E776F6E6B6E753CLL;
    v4[1] = 0xE90000000000003ELL;
    v4[2] = 0xD00000000000001CLL;
    v4[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t (*sub_21447BBA4(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214090D48;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

void (*sub_21447BC3C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2140910D8;
}

void *sub_21447BCD4@<X0>(char a1@<W1>, _BYTE *a2@<X8>, void *result@<X0>)
{
  if (a1)
  {
    v4 = 0;
  }

  else
  {
    result = sub_21447BD20(result, &v5);
    v4 = v5;
    if (v5 == 11)
    {
      v4 = 0;
    }
  }

  *a2 = v4;
  return result;
}

unint64_t sub_21447BD20@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 0xA)
  {
    *a2 = 11;
  }

  else
  {
    *a2 = byte_21474B1A0[result];
  }

  return result;
}

uint64_t sub_21447BD80()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_21474B1B0[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_21447BE08(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_21474B1B0[v2]);
  return sub_2146DA9B8();
}

uint64_t sub_21447BF5C()
{
  v1 = *(v0 + 8);

  return v1;
}

void sub_21447BF8C(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t sub_21447BFE4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 48);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(a1 + 40);
    a2[1] = v4;
  }

  return result;
}

double sub_21447C058(uint64_t *a1)
{
  sub_214031B48(*a1, a1[1], 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);

  return result;
}

void sub_21447C108(uint64_t a1, uint64_t a2)
{
  v9[0] = a1;
  v9[1] = a2;
  v5 = *(v2 + 24);
  v8 = *(v2 + 56);
  v7[0] = 0x6E776F6E6B6E753CLL;
  v7[1] = 0xE90000000000003ELL;
  v7[2] = 0xD00000000000001CLL;
  v7[3] = 0x800000021478A360;
  if (v5(v9, &v8, v7))
  {
    sub_213FDC6D0(*(v2 + 40), *(v2 + 48));

    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v6 = 0x6E776F6E6B6E753CLL;
    v6[1] = 0xE90000000000003ELL;
    v6[2] = 0xD00000000000001CLL;
    v6[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

void (*sub_21447C24C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 40);
  *(v3 + 24) = v5;
  v6 = *(v1 + 48);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_21447C324;
  }

  return result;
}

void sub_21447C324(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[1];
  v3 = (*a1)[2];
  v5 = **a1;
  if ((a2 & 1) == 0)
  {
    v11 = **a1;
    v12 = v4;
    v8 = *(v3 + 24);
    v13 = *(v3 + 56);
    v14 = 0x6E776F6E6B6E753CLL;
    v15 = 0xE90000000000003ELL;
    v16 = 0xD00000000000001CLL;
    v17 = 0x800000021478A360;
    if (v8(&v11, &v13, &v14))
    {
      v9 = v2[2];
      sub_213FDC6D0(v2[3], v2[4]);

      *(v9 + 40) = v5;
      *(v9 + 48) = v4;
      goto LABEL_6;
    }

LABEL_9:
    sub_214031C4C();
    swift_allocError();
    *v10 = 0x6E776F6E6B6E753CLL;
    v10[1] = 0xE90000000000003ELL;
    v10[2] = 0xD00000000000001CLL;
    v10[3] = 0x800000021478A360;
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
    return;
  }

  v11 = **a1;
  v12 = v4;
  v6 = *(v3 + 24);
  v13 = *(v3 + 56);
  v14 = 0x6E776F6E6B6E753CLL;
  v15 = 0xE90000000000003ELL;
  v16 = 0xD00000000000001CLL;
  v17 = 0x800000021478A360;

  if ((v6(&v11, &v13, &v14) & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = v2[2];
  sub_213FDC6D0(v2[3], v2[4]);

  *(v7 + 40) = v5;
  *(v7 + 48) = v4;

LABEL_6:

  free(v2);
}

uint64_t sub_21447C4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  *a2 = *(a1 + 24);
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

uint64_t sub_21447C548(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = *(a1 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);

  sub_213FDC9D0(v5, v6);

  result = sub_213FDC6D0(v8, v9);
  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  *(a2 + 40) = v5;
  *(a2 + 48) = v6;
  *(a2 + 56) = v7;
  return result;
}

void (*sub_21447C5D0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  *v4 = *(v1 + 24);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21447C670;
}

void sub_21447C670(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v5 = **a1;
  v4 = (*a1)[1];
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  v8 = *(*a1 + 32);
  v9 = *(v3 + 40);
  v10 = *(v3 + 48);
  if (a2)
  {

    sub_213FDC9D0(v7, v6);

    sub_213FDC6D0(v9, v10);
    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v7;
    *(v3 + 48) = v6;
    *(v3 + 56) = v8;
    v11 = v2[2];
    v12 = v2[3];

    sub_213FDC6D0(v11, v12);
  }

  else
  {

    sub_213FDC6D0(v9, v10);
    *(v3 + 24) = v5;
    *(v3 + 32) = v4;
    *(v3 + 40) = v7;
    *(v3 + 48) = v6;
    *(v3 + 56) = v8;
  }

  free(v2);
}

uint64_t sub_21447C750()
{
  v1 = *(v0 + 64);

  return v1;
}

void sub_21447C780(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

uint64_t sub_21447C7D8@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 104);
  v3 = *(v1 + 136);
  v9 = *(v1 + 120);
  v10 = v3;
  v11 = *(v1 + 152);
  v4 = v11;
  v8[0] = *(v1 + 88);
  v5 = v8[0];
  v8[1] = v2;
  a1[2] = v9;
  a1[3] = v3;
  a1[4] = v4;
  *a1 = v5;
  a1[1] = v2;
  return sub_2140915E8(v8, &v7);
}

__n128 sub_21447C82C(__int128 *a1)
{
  v3 = *(v1 + 104);
  v4 = *(v1 + 136);
  v8[2] = *(v1 + 120);
  v8[3] = v4;
  v8[4] = *(v1 + 152);
  v8[0] = *(v1 + 88);
  v8[1] = v3;
  sub_214091658(v8);
  v5 = *a1;
  *(v1 + 104) = a1[1];
  v6 = a1[3];
  *(v1 + 120) = a1[2];
  *(v1 + 136) = v6;
  result = a1[4];
  *(v1 + 152) = result;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_21447C8BC()
{
  v1 = *(v0 + 168);

  return v1;
}

void sub_21447C8EC(uint64_t a1, uint64_t a2)
{

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
}

uint64_t sub_21447C944()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_2146D9EF8();
  MEMORY[0x2160545D0](40, 0xE100000000000000);
  MEMORY[0x2160545D0](0x6B636142706154, 0xE700000000000000);
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBF0);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBB0);
  MEMORY[0x2160545D0](v1, v2);
  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return 0;
}

unint64_t sub_21447CA50()
{
  result = qword_27C914288;
  if (!qword_27C914288)
  {
    result = swift_getWitnessTable(byte_21474AC08, &type metadata for TapBack.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C914288);
  }

  return result;
}

unint64_t sub_21447CAD4()
{
  result = qword_27C914290;
  if (!qword_27C914290)
  {
    result = swift_getWitnessTable(byte_21474AD24, &type metadata for TapBack.MessageSummaryInfo.AssociatedMessageMessageSummaryInfoTypeContentType, v0, v1);
    atomic_store(result, &qword_27C914290);
  }

  return result;
}

uint64_t sub_21447CBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21447CBEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21447CC34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapBack.AssociatedMessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapBack.AssociatedMessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21447CE00(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21447CE48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21447CEBC()
{
  result = qword_27C914298;
  if (!qword_27C914298)
  {
    result = swift_getWitnessTable(byte_21474AD8C, &type metadata for TapBack.MessageSummaryInfo.AssociatedMessageMessageSummaryInfoTypeContentType, v0, v1);
    atomic_store(result, &qword_27C914298);
  }

  return result;
}

unint64_t sub_21447CF10()
{
  result = qword_27C9142A0;
  if (!qword_27C9142A0)
  {
    result = swift_getWitnessTable(a1_7, &type metadata for TapBack.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C9142A0);
  }

  return result;
}

uint64_t sub_21447CF64@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v3 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21447CFB0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u64[0] = v3;
  v1[2].n128_u64[1] = v4;
  v1[3].n128_u8[0] = v5;
  return result;
}

uint64_t sub_21447D00C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 72);
  v3 = *(v1 + 80);
  v5 = *(v1 + 88);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
}

__n128 sub_21447D058(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 88) = v5;
  return result;
}

uint64_t sub_21447D0B4()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 32);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21447D130()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 72);

    return v1;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21447D1AC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[9];
  v5 = v0[10];
  v7 = MEMORY[0x277D837D0];
  v15 = MEMORY[0x277D837D0];
  *&v14 = v1;
  *(&v14 + 1) = v2;
  sub_213FDC730(&v14, v13);

  v8 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2140524DC(v13, 112, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
  if (v3 && (v15 = v7, *&v14 = v4, *(&v14 + 1) = v3, sub_213FDC730(&v14, v13), , v10 = swift_isUniquelyReferenced_nonNull_native(), sub_2140524DC(v13, 0xD000000000000015, 0x800000021479B0F0, v10), v5))
  {
    v15 = v7;
    *&v14 = v6;
    *(&v14 + 1) = v5;
    sub_213FDC730(&v14, v13);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_2140524DC(v13, 118, 0xE100000000000000, v11);
    return v8;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21447D324()
{
  v1 = *v0;

  return v1;
}

void sub_21447D354(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}