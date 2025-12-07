uint64_t sub_1AFAC3190(void (*a1)(uint64_t))
{
  v7 = *MEMORY[0x1E69E9840];
  sub_1AFAD0A24(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C6B0;
  strcpy((inited + 32), "screenPosition");
  *(inited + 47) = -18;
  *(inited + 48) = v1 + 32;
  *(inited + 56) = 0x6E6F74747562;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = v1 + 40;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000001AFF22530;
  *(inited + 96) = v1 + 48;
  *(inited + 104) = 1937009000;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = &v6;
  v4 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
  swift_arrayDestroy();
  a1(v4);
}

uint64_t sub_1AFAC330C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1AFAD0A24(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = 0x65646F4379656BLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = 0x7461657065527369;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = v4 + 8;
  v7 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
  swift_arrayDestroy();
  a4(v7);
}

uint64_t sub_1AFAC3400(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1AFAD0A24(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  *(inited + 32) = 0x65646F4379656BLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = 0x7461657065527369;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = v3 + 8;
  v6 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
  swift_arrayDestroy();
  a3(v6);
}

uint64_t sub_1AFAC34F4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AFDFCEF8();
  v5 = v4;
  if (v3 == sub_1AFDFCEF8() && v5 == v6)
  {
    goto LABEL_13;
  }

  v8 = sub_1AFDFEE28();

  if (v8)
  {
    goto LABEL_14;
  }

  v9 = sub_1AFDFCEF8();
  v11 = v10;
  if (v9 == sub_1AFDFCEF8() && v11 == v12)
  {
LABEL_13:

    goto LABEL_14;
  }

  v14 = sub_1AFDFEE28();

  if ((v14 & 1) == 0)
  {
    v15 = sub_1AFDFCEF8();
    v17 = v16;
    if (v15 != sub_1AFDFCEF8() || v17 != v18)
    {
      v24 = sub_1AFDFEE28();

      if (v24)
      {
        goto LABEL_14;
      }

      v25 = sub_1AFDFCEF8();
      v27 = v26;
      if (v25 != sub_1AFDFCEF8() || v27 != v28)
      {
        v29 = sub_1AFDFEE28();

        if (v29)
        {
          goto LABEL_14;
        }

        v30 = sub_1AFDFCEF8();
        v32 = v31;
        if (v30 != sub_1AFDFCEF8() || v32 != v33)
        {
          v34 = sub_1AFDFEE28();

          if (v34)
          {
            goto LABEL_14;
          }

          v35 = sub_1AFDFCEF8();
          v37 = v36;
          if (v35 == sub_1AFDFCEF8() && v37 == v38)
          {
            goto LABEL_25;
          }

          v41 = sub_1AFDFEE28();

          if (v41)
          {
            goto LABEL_32;
          }

          v42 = sub_1AFDFCEF8();
          v44 = v43;
          if (v42 == sub_1AFDFCEF8() && v44 == v45)
          {
LABEL_25:
          }

          else
          {
            v46 = sub_1AFDFEE28();

            if ((v46 & 1) == 0)
            {
              sub_1AFDFE218();
              MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF45E60);
              type metadata accessor for VFXTriggerType(0);
              sub_1AFDFE458();
              result = sub_1AFDFE518();
              __break(1u);
              return result;
            }
          }

LABEL_32:
          *(a1 + 24) = &type metadata for TriggerOSEvent.KeyboardParams;
          *(a1 + 32) = &off_1F255DCB8;
          *a1 = 0;
          *(a1 + 8) = 0;
          return result;
        }
      }
    }

    goto LABEL_13;
  }

LABEL_14:
  sub_1AFAD082C(v1, &v47);
  *(a1 + 24) = &type metadata for TriggerOSEvent.TapParams;
  *(a1 + 32) = &off_1F255DCA0;
  v19 = swift_allocObject();
  *a1 = v19;
  v20 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    v39 = sub_1AFDFE108();
    if (v39)
    {
      v40 = v39;
      v20 = sub_1AFC892CC();
      sub_1AF56E46C(v20 + 32, v40, MEMORY[0x1E69E7CC0]);
    }
  }

  v19[9] = v20;
  sub_1AFAD082C(&v47, v19 + 2);
  v21 = v48;
  v19[6] = *(v48 + 56);
  v19[7] = *(v21 + 72);
  v22 = v49;
  result = sub_1AFAD0864(&v47);
  v19[8] = v22;
  return result;
}

uint64_t sub_1AFAC39F0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1AFAD0A24(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  strcpy((inited + 32), "worldTransform");
  *(inited + 47) = -18;
  *(inited + 48) = v4;
  *(inited + 56) = 0x64656B63617274;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = v4 + 64;
  v7 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
  swift_arrayDestroy();
  a4(v7);
}

uint64_t sub_1AFAC3AF0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1AFAD0A24(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C620;
  strcpy((inited + 32), "worldTransform");
  *(inited + 47) = -18;
  *(inited + 48) = v3;
  *(inited + 56) = 0x64656B63617274;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = v3 + 64;
  v6 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
  swift_arrayDestroy();
  a3(v6);
}

uint64_t sub_1AFAC3BF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_1AFAD0A24(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C680;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001AFF222F0;
  *(inited + 48) = v4;
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x80000001AFF22310;
  *(inited + 72) = v4 + 64;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001AFF22330;
  *(inited + 96) = v4 + 128;
  v7 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
  swift_arrayDestroy();
  a4(v7);
}

uint64_t sub_1AFAC3D04(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1AFAD0A24(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C680;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001AFF222F0;
  *(inited + 48) = v3;
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x80000001AFF22310;
  *(inited + 72) = v3 + 64;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001AFF22330;
  *(inited + 96) = v3 + 128;
  v6 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
  swift_arrayDestroy();
  a3(v6);
}

uint64_t sub_1AFAC3E18(uint64_t a1, uint64_t a2)
{
  sub_1AFAD0A24(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C630;
  *(inited + 32) = 0x6564757469747461;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = a1;
  strcpy((inited + 56), "rotationRate");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = a1 + 64;
  *(inited + 80) = 0x79746976617267;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = a1 + 80;
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x80000001AFF22470;
  *(inited + 120) = a1 + 96;
  strcpy((inited + 128), "magneticField");
  *(inited + 142) = -4864;
  *(inited + 144) = a1 + 112;
  *(inited + 152) = 0xD000000000000015;
  *(inited + 160) = 0x80000001AFF22490;
  *(inited + 168) = a1 + 128;
  *(inited + 176) = 0x676E6964616568;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = a1 + 132;
  v5 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
  swift_arrayDestroy();
  v6 = *(a2 + 56);

  v6(v5);
}

uint64_t sub_1AFAC3FC8(void (*a1)(uint64_t))
{
  sub_1AFAD0A24(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C630;
  *(inited + 32) = 0x6564757469747461;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v1;
  strcpy((inited + 56), "rotationRate");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = v1 + 64;
  *(inited + 80) = 0x79746976617267;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v1 + 80;
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x80000001AFF22470;
  *(inited + 120) = v1 + 96;
  strcpy((inited + 128), "magneticField");
  *(inited + 142) = -4864;
  *(inited + 144) = v1 + 112;
  *(inited + 152) = 0xD000000000000015;
  *(inited + 160) = 0x80000001AFF22490;
  *(inited + 168) = v1 + 128;
  *(inited + 176) = 0x676E6964616568;
  *(inited + 184) = 0xE700000000000000;
  *(inited + 192) = v1 + 132;
  v4 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
  swift_arrayDestroy();
  a1(v4);
}

uint64_t sub_1AFAC4188(void (*a1)(uint64_t))
{
  sub_1AFAD0A24(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C6A0;
  *(inited + 32) = 0x6E6F697469736F70;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v1;
  *(inited + 56) = 0x6C616D726F6ELL;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = v1 + 16;
  *(inited + 80) = 0x6F69746365726964;
  *(inited + 88) = 0xE90000000000006ELL;
  *(inited + 96) = v1 + 32;
  strcpy((inited + 104), "hasParticleID");
  *(inited + 118) = -4864;
  *(inited + 120) = v1 + 73;
  *(inited + 128) = 0x656C636974726170;
  *(inited + 136) = 0xEA00000000004449;
  *(inited + 144) = v1 + 76;
  v4 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
  swift_arrayDestroy();
  a1(v4);
}

void *sub_1AFAC42E4@<X0>(uint64_t a1@<X8>)
{
  swift_unknownObjectWeakInit();
  v2 = MEMORY[0x1E69E7CC0];
  v3 = MEMORY[0x1E69E7CD0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];
  *(a1 + 16) = v3;
  result = sub_1AF42C520(v2);
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  *(a1 + 34) = 0;
  return result;
}

void *sub_1AFAC4334@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  result = sub_1AF42D44C(MEMORY[0x1E69E7CC0]);
  *a1 = v2;
  a1[1] = result;
  return result;
}

uint64_t sub_1AFAC4368(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AF1CF8AC(a1, a2);
  v3 = *(sub_1AF0FB884(v2) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v4 = *(v3 + 184);

  sub_1AF6D5188(&type metadata for TriggerListComponent, &off_1F255DD10, v4, v7);

  swift_unknownObjectWeakAssign();
  v5 = *(v3 + 184);

  sub_1AF6D2ADC(&type metadata for TriggerListComponent, &off_1F255DD10, v5, sub_1AFAD3AF4);

  swift_unknownObjectRelease();

  return sub_1AF645830(v7);
}

uint64_t sub_1AFAC44EC(uint64_t a1, _OWORD *a2)
{
  v3 = sub_1AF1CF8AC(a1, a2);
  v4 = *(sub_1AF0FB884(v3) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v5 = *(v4 + 184);

  v6 = sub_1AF6D6574(&type metadata for CollisionEventsComponent, &off_1F255DCD0, v5);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = sub_1AF427460(0, *(v6 + 16) + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    isUniquelyReferenced_nonNull_native = sub_1AF427460(v8 > 1, v9 + 1, 1, v6);
    v6 = isUniquelyReferenced_nonNull_native;
  }

  *(v6 + 16) = v9 + 1;
  v10 = (v6 + 80 * v9);
  v10[2] = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  *(v10 + 93) = *(a2 + 61);
  v10[4] = v12;
  v10[5] = v13;
  v10[3] = v11;
  v17 = v6;
  v14 = *(v4 + 184);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  sub_1AFAD07C4(a2, v16);

  sub_1AF6D655C(&type metadata for CollisionEventsComponent, &off_1F255DCD0, v14, sub_1AFAD3AC0);

  swift_unknownObjectRelease();
}

uint64_t sub_1AFAC4744(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AF1CF8AC(a1, a2);
  v4 = *(sub_1AF0FB884(v3) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);
  v5 = *(v4 + 184);

  sub_1AF6D5188(&type metadata for TriggerListComponent, &off_1F255DD10, v5, v13);

  sub_1AFAD082C(a2, v12);
  v6 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1AF42757C(0, v6[2] + 1, 1, v6);
  }

  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1AF42757C(v7 > 1, v8 + 1, 1, v6);
  }

  v6[2] = v8 + 1;
  v9 = sub_1AFAD13A4(v12, &v6[4 * v8 + 4]);
  v14 = v6;
  v10 = *(v4 + 184);
  MEMORY[0x1EEE9AC00](v9);

  sub_1AF6D2ADC(&type metadata for TriggerListComponent, &off_1F255DD10, v10, sub_1AFAD3AF4);

  swift_unknownObjectRelease();

  return sub_1AF645830(v13);
}

uint64_t sub_1AFAC4A08(void *a1, void *a2, _BYTE *a3, void *a4, void *a5)
{
  v7 = a2;
  if (a4)
  {
    if (!a5)
    {
      if (a1)
      {
        sub_1AF0D4478(0, &qword_1ED72F7F0, &off_1E7A77B60);
        v20 = a4;
        v21 = a1;
        v22 = sub_1AFDFDC48();

        if (v22)
        {

          return 1;
        }
      }

      else
      {
        v33 = a4;
      }

      if (v7)
      {
        sub_1AF0D4478(0, &qword_1ED72F7F0, &off_1E7A77B60);
        v27 = v7;
        v29 = sub_1AFDFDC48();
LABEL_31:

        if (v29)
        {
          goto LABEL_32;
        }

        return 0;
      }

LABEL_33:

      return 0;
    }

    if (a1)
    {
      sub_1AF0D4478(0, &qword_1ED72F7F0, &off_1E7A77B60);
      v10 = a4;
      v11 = a5;
      v12 = a1;
      v13 = sub_1AFDFDC48();

      if (v13)
      {
        if (!v7)
        {

          return 0;
        }

        v14 = v11;
        v7 = v7;
        v15 = sub_1AFDFDC48();

        if (v15)
        {

          return 1;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v23 = a4;
      v24 = a5;
    }

    if (v7)
    {
LABEL_17:
      sub_1AF0D4478(0, &qword_1ED72F7F0, &off_1E7A77B60);
      v25 = v7;
      v26 = sub_1AFDFDC48();

      if ((v26 & 1) != 0 && a1)
      {
        v27 = a5;
        v28 = a1;
        v29 = sub_1AFDFDC48();

        goto LABEL_31;
      }

      goto LABEL_33;
    }

LABEL_27:
    return 0;
  }

  if (!a5)
  {
    return 1;
  }

  if (a2)
  {
    sub_1AF0D4478(0, &qword_1ED72F7F0, &off_1E7A77B60);
    v17 = v7;
    v18 = a5;
    v19 = sub_1AFDFDC48();

    if (v19)
    {

      return 1;
    }
  }

  else
  {
    v30 = a5;
  }

  if (!a1)
  {
    goto LABEL_27;
  }

  sub_1AF0D4478(0, &qword_1ED72F7F0, &off_1E7A77B60);
  v31 = a1;
  v32 = sub_1AFDFDC48();

  if (v32)
  {
LABEL_32:
    result = 1;
    *a3 = 1;
    return result;
  }

  return 0;
}

uint64_t sub_1AFAC4CE4(void *a1, void *a2)
{
  sub_1AFDFF288();
  if (!a1)
  {
    sub_1AFDFF2A8();
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1AFDFF2A8();
    return sub_1AFDFF2F8();
  }

  sub_1AFDFF2A8();
  v4 = a1;
  sub_1AFDFDC58();

  if (!a2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1AFDFF2A8();
  v5 = a2;
  sub_1AFDFDC58();

  return sub_1AFDFF2F8();
}

void sub_1AFAC4D98(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  if (!*v1)
  {
    sub_1AFDFF2A8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    sub_1AFDFF2A8();
    return;
  }

  sub_1AFDFF2A8();
  v4 = v3;
  sub_1AFDFDC58();

  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  sub_1AFDFF2A8();
  v5 = v2;
  sub_1AFDFDC58();
}

uint64_t sub_1AFAC4E5C(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  sub_1AFDFF288();
  if (!v3)
  {
    sub_1AFDFF2A8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1AFDFF2A8();
    return sub_1AFDFF2F8();
  }

  sub_1AFDFF2A8();
  v4 = v3;
  sub_1AFDFDC58();

  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1AFDFF2A8();
  v5 = v2;
  sub_1AFDFDC58();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AFAC4F14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = 0;
  Strong = swift_unknownObjectWeakLoadStrong();
  v43 = a4;
  if (Strong)
  {
    v41 = Strong;
    v42 = a1;
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v67 = qword_1ED73B840;
    v68 = 0;
    v69 = 2;
    v70 = 0;
    v71 = 2;
    v72 = 0;
    sub_1AF703D3C(1, v56);
    v65[0] = v56[0];
    v65[1] = v56[1];
    v66 = v57;
    sub_1AF6B06C0(a2, v65, 0x200000000, v58);
    if (*&v58[0])
    {
      if (v61 > 0 && (v47 = *(&v59 + 1)) != 0)
      {
        v40 = a2;
        v46 = *(&v58[2] + 1);
        v10 = *(&v60 + 1);
        v11 = *(v60 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v51 = *(*(&v60 + 1) + 32);
        v62 = *&v58[0];
        v63 = *(v58 + 8);
        v64 = *(&v58[1] + 8);
        v12 = type metadata accessor for TriggerScript(0);
        v55[2] = v58[2];
        v55[3] = v59;
        v55[4] = v60;
        v55[5] = v61;
        v55[0] = v58[0];
        v55[1] = v58[1];
        sub_1AF5DD298(v55, v53);
        v13 = 0;
        v44 = v12 - 8;
        v45 = v11;
        do
        {
          v49 = v13;
          v50 = v8;
          v14 = (v46 + 48 * v13);
          v15 = *v14;
          v48 = v14[1];
          v17 = *(v14 + 2);
          v16 = *(v14 + 3);
          v19 = *(v14 + 4);
          v18 = *(v14 + 5);
          if (v11)
          {
            v20 = *(v18 + 376);

            os_unfair_lock_lock(v20);
            os_unfair_lock_lock(*(v18 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v51);
          v21 = *(v10 + 64);
          v53[0] = *(v10 + 48);
          v53[1] = v21;
          v54 = *(v10 + 80);
          v22 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;
          *(v10 + 48) = ecs_stack_allocator_allocate(*(v10 + 32), 48 * v22, 8);
          *(v10 + 56) = v22;
          *(v10 + 72) = 0;
          *(v10 + 80) = 0;
          *(v10 + 64) = 0;
          v23 = sub_1AF64B110(v12, &off_1F255BBC8, v17, v16, v19, v10);
          v24 = v23;
          if (v17)
          {
            if (v19)
            {
              v25 = *(*v44 + 72);
              do
              {
                sub_1AF70DB3C(&v52, *&v24[*(v12 + 48)]);

                v24 += v25;
                --v19;
              }

              while (v19);
            }
          }

          else if (v15 != v48)
          {
            v26 = *(*v44 + 72);
            v27 = v48 - v15;
            v28 = &v23[v26 * v15];
            do
            {
              sub_1AF70DB3C(&v52, *&v28[*(v12 + 48)]);

              v28 += v26;
              --v27;
            }

            while (v27);
          }

          v8 = v50;
          sub_1AF630994(v10, &v62, v53);
          sub_1AF62D29C(v18);
          ecs_stack_allocator_pop_snapshot(v51);
          v11 = v45;
          if (v45)
          {
            os_unfair_lock_unlock(*(v18 + 344));
            os_unfair_lock_unlock(*(v18 + 376));
          }

          v13 = v49 + 1;
        }

        while (v49 + 1 != v47);
        sub_1AF0D9DB0(v58, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AF0D9DB0(v58, &qword_1ED725EA0, &type metadata for QueryResult);
        a2 = v40;
      }

      else
      {
        sub_1AF0D9DB0(v58, &qword_1ED725EA0, &type metadata for QueryResult);
      }
    }

    a1 = v42;
    v29 = *a3;
    v30 = *(v42 + 16);

    v31 = sub_1AFAC66D4(v29, v30);

    if (v31)
    {
      sub_1AFACFDF0(v56, &unk_1ED723DC0, type metadata accessor for TriggerScript, &off_1F255BBC8, type metadata accessor for Query1);
      v32 = v41;
    }

    else
    {
      *(v42 + 16) = *a3;

      type metadata accessor for VFXTriggerType(0);
      sub_1AFAD0C04(&qword_1EB630D10, type metadata accessor for VFXTriggerType, asc_1AFE49A2C);

      v33 = sub_1AFDFD768();

      v32 = v41;
      [v41 enableTriggerTypes_];
      sub_1AFACFDF0(v56, &unk_1ED723DC0, type metadata accessor for TriggerScript, &off_1F255BBC8, type metadata accessor for Query1);
    }
  }

  v34 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = MEMORY[0x1E69E7CC0];

  *(a1 + 32) = 0;
  *(a1 + 34) = 0;
  v35 = sub_1AF6D6500(a1, v55);
  v36 = *(a2 + 184);
  MEMORY[0x1EEE9AC00](v35);

  sub_1AF6D2ADC(&type metadata for TriggerListComponent, &off_1F255DD10, v36, sub_1AFAD0BA8);

  sub_1AF645830(v55);
  *v43 = v34;

  *&v55[0] = v34;
  v38 = *(a2 + 184);
  MEMORY[0x1EEE9AC00](v37);

  sub_1AF6D655C(&type metadata for CollisionEventsComponent, &off_1F255DCD0, v38, sub_1AFAD0BEC);
}

void sub_1AFAC55A0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1AFAD0C4C(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v9 - v7;
  if (a2 != 0xFFFFFFFF && (a2 & 0x80000000) == 0 && a2 < *(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries + 8) && (HIDWORD(a2) == 0xFFFFFFFF || *(*(a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * a2 + 8) == HIDWORD(a2)))
  {
    sub_1AFACFE6C(a3, v8, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298);
    sub_1AFBFDEEC(v8, a2);
    sub_1AFACFDF0(v8, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  }
}

uint64_t sub_1AFAC5724(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1AFAD0C4C(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  v7 = swift_projectBox();
  v8 = *(a3 + 16);
  v9 = *(a3 + 24);

  return sub_1AFACE760(v7, v8, v9, a4, a4, a1);
}

uint64_t sub_1AFAC57C0(uint64_t a1, uint64_t a2)
{
  sub_1AFAD092C(0, &unk_1ED7246F0, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam, &type metadata for Entity);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1AFAD0584(a2, &v9 - v5, &unk_1ED7246F0, &type metadata for Entity);
  v7 = *(v6 + 7);

  sub_1AFAD2E00(v6, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  v7(a1);
}

void sub_1AFAC58B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TriggerScriptRunnerSystem.TriggerParam(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    do
    {
      sub_1AFACFD88(v9, v7, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
      v7[7](a1);
      sub_1AFAD2E00(v7, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
      v9 += v10;
      --v8;
    }

    while (v8);
  }
}

void sub_1AFAC5A30(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, uint64_t a5)
{
  *&v50 = sub_1AFACFF44;
  *(&v50 + 1) = a2;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v49 = sub_1AFAC6668;
  *(&v49 + 1) = &unk_1F24E61B8;
  v10 = _Block_copy(&aBlock);

  sub_1AFADA764();
  *(&v49 + 1) = sub_1AFACFF64();
  *&aBlock = v10;
  _Block_copy(v10);
  sub_1AFAD4E28(&aBlock, 0x676F6C5F786676, 0xE700000000000000);
  v11 = *(a4 + 7);
  *(&v49 + 1) = sub_1AF0D4478(0, &qword_1EB642748, 0x1E695DF70);
  *&aBlock = v11;
  v12 = v11;
  sub_1AFAD4E28(&aBlock, 0x617261705F786676, 0xEE0073726574656DLL);
  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(&v49 + 1) = sub_1AF0D4478(0, &qword_1ED721F80, 0x1E696AD98);
  *&aBlock = v13;
  sub_1AFAD4E28(&aBlock, 0x635F747069726373, 0xEE00747865746E6FLL);
  sub_1AFAD08C0(0, &qword_1EB642760, &unk_1EB642768, MEMORY[0x1E69E7CA0] + 8, sub_1AF0D8108);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE4C680;
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 32) = 1701669236;
  *(v14 + 40) = 0xE400000000000000;
  v16 = a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  v17 = MEMORY[0x1E69E63B0];
  *(v14 + 64) = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
  *(v14 + 120) = v15;
  *(v14 + 88) = v17;
  *(v14 + 96) = 29796;
  *(v14 + 104) = 0xE200000000000000;
  v18 = *(v16 + 64);
  v19 = MEMORY[0x1E69E6448];
  *(v14 + 128) = v18;
  *(v14 + 184) = v15;
  *(v14 + 152) = v19;
  *(v14 + 160) = 0x6D5F6E75725F7369;
  *(v14 + 168) = 0xEB0000000065646FLL;
  LOBYTE(v15) = *(a2 + 57);
  *(v14 + 216) = MEMORY[0x1E69E6370];
  *(v14 + 192) = (v15 & 1) == 0;
  v20 = sub_1AF0D4478(0, &unk_1EB642770, 0x1E695DF20);
  v21 = sub_1AFDFD9E8();
  *(&v49 + 1) = v20;
  *&aBlock = v21;
  sub_1AFAD4E28(&aBlock, 0x736E6F635F786676, 0xED000073746E6174);
  sub_1AFAD0C4C(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
  v23 = *(a5 + *(v22 + 44));
  if (v23[2])
  {
    v24 = v23[4];
    v25 = v23[5];
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v26 = v24;
  v27 = v53;
  sub_1AF456138(v26, v25, MEMORY[0x1E69E7CC0]);
  if (v27)
  {

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    strcpy(&aBlock, "script error: ");
    HIBYTE(aBlock) = -18;
    swift_getErrorValue();
    v29 = sub_1AFDFF1D8();
    MEMORY[0x1B2718AE0](v29);

    v30 = aBlock;
    v31 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v46 = v31;
      swift_once();
      v31 = v46;
    }

    *&aBlock = 0;
    sub_1AF0D4F18(v31, &aBlock, v30, *(&v30 + 1));

    sub_1AFAD0C4C(0, &unk_1ED728E00, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptCompileAttempt);
    v33 = v32;
    v34 = *(v32 + 44);
    v35 = *(a5 + v34);
    *(a5 + v34) = v27;
    v36 = v27;

    swift_getErrorValue();
    v37 = sub_1AFDFF1D8();
    v39 = v38;

    v40 = (a5 + *(v33 + 48));
    *v40 = v37;
    v40[1] = v39;
  }

  else
  {
    v41 = v28;
  }

  v42 = sub_1AFDFCEC8();
  v43 = [a3 objectForKeyedSubscript_];

  if (v43)
  {
    v44 = a4[3];
    v50 = a4[2];
    v51 = v44;
    v52 = *(a4 + 8);
    v45 = a4[1];
    aBlock = *a4;
    v49 = v45;
    sub_1AFACFFBC(&aBlock, v47);
    sub_1AFAD560C(v43);
    sub_1AFACFEF0(&aBlock);
  }

  _Block_release(v10);
}

void sub_1AFAC604C(uint64_t a1, uint64_t a2, void *a3, __int128 *a4, uint64_t a5)
{
  *&v50 = sub_1AFAD3AF0;
  *(&v50 + 1) = a2;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v49 = sub_1AFAC6668;
  *(&v49 + 1) = &unk_1F255D2E0;
  v10 = _Block_copy(&aBlock);

  sub_1AFADA764();
  *(&v49 + 1) = sub_1AFACFF64();
  *&aBlock = v10;
  _Block_copy(v10);
  sub_1AFAD4E28(&aBlock, 0x676F6C5F786676, 0xE700000000000000);
  v11 = *(a4 + 7);
  *(&v49 + 1) = sub_1AF0D4478(0, &qword_1EB642748, 0x1E695DF70);
  *&aBlock = v11;
  v12 = v11;
  sub_1AFAD4E28(&aBlock, 0x617261705F786676, 0xEE0073726574656DLL);
  v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(&v49 + 1) = sub_1AF0D4478(0, &qword_1ED721F80, 0x1E696AD98);
  *&aBlock = v13;
  sub_1AFAD4E28(&aBlock, 0x635F747069726373, 0xEE00747865746E6FLL);
  sub_1AFAD08C0(0, &qword_1EB642760, &unk_1EB642768, MEMORY[0x1E69E7CA0] + 8, sub_1AF0D8108);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1AFE4C680;
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  *(v14 + 32) = 1701669236;
  *(v14 + 40) = 0xE400000000000000;
  v16 = a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock;
  v17 = MEMORY[0x1E69E63B0];
  *(v14 + 64) = *(a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 48);
  *(v14 + 120) = v15;
  *(v14 + 88) = v17;
  *(v14 + 96) = 29796;
  *(v14 + 104) = 0xE200000000000000;
  v18 = *(v16 + 64);
  v19 = MEMORY[0x1E69E6448];
  *(v14 + 128) = v18;
  *(v14 + 184) = v15;
  *(v14 + 152) = v19;
  *(v14 + 160) = 0x6D5F6E75725F7369;
  *(v14 + 168) = 0xEB0000000065646FLL;
  LOBYTE(v15) = *(a2 + 57);
  *(v14 + 216) = MEMORY[0x1E69E6370];
  *(v14 + 192) = (v15 & 1) == 0;
  v20 = sub_1AF0D4478(0, &unk_1EB642770, 0x1E695DF20);
  v21 = sub_1AFDFD9E8();
  *(&v49 + 1) = v20;
  *&aBlock = v21;
  sub_1AFAD4E28(&aBlock, 0x736E6F635F786676, 0xED000073746E6174);
  sub_1AFAD0C4C(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  v23 = *(a5 + *(v22 + 44));
  if (v23[2])
  {
    v24 = v23[4];
    v25 = v23[5];
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v26 = v24;
  v27 = v53;
  sub_1AF456138(v26, v25, MEMORY[0x1E69E7CC0]);
  if (v27)
  {

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_1AFDFE218();

    strcpy(&aBlock, "script error: ");
    HIBYTE(aBlock) = -18;
    swift_getErrorValue();
    v29 = sub_1AFDFF1D8();
    MEMORY[0x1B2718AE0](v29);

    v30 = aBlock;
    v31 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v46 = v31;
      swift_once();
      v31 = v46;
    }

    *&aBlock = 0;
    sub_1AF0D4F18(v31, &aBlock, v30, *(&v30 + 1));

    sub_1AFAD0C4C(0, &unk_1ED728DC0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptCompileAttempt);
    v33 = v32;
    v34 = *(v32 + 44);
    v35 = *(a5 + v34);
    *(a5 + v34) = v27;
    v36 = v27;

    swift_getErrorValue();
    v37 = sub_1AFDFF1D8();
    v39 = v38;

    v40 = (a5 + *(v33 + 48));
    *v40 = v37;
    v40[1] = v39;
  }

  else
  {
    v41 = v28;
  }

  v42 = sub_1AFDFCEC8();
  v43 = [a3 objectForKeyedSubscript_];

  if (v43)
  {
    v44 = a4[3];
    v50 = a4[2];
    v51 = v44;
    v52 = *(a4 + 8);
    v45 = a4[1];
    aBlock = *a4;
    v49 = v45;
    sub_1AFACFFBC(&aBlock, v47);
    sub_1AFAD560C(v43);
    sub_1AFACFEF0(&aBlock);
  }

  _Block_release(v10);
}

uint64_t sub_1AFAC6668(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1AFDFCEF8();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_1AFAC66D4(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a2 + 56;
  v9 = a1 + 64;
  v26 = a1 + 64;
  v27 = a1;
  if (v6)
  {
    while (1)
    {
      v28 = (v6 - 1) & v6;
      v10 = __clz(__rbit64(v6)) | (v3 << 6);
LABEL_12:
      v14 = *(*(a1 + 48) + 8 * v10);
      sub_1AFDFCEF8();
      sub_1AFDFF288();
      v29 = v14;
      sub_1AFDFD038();
      v15 = sub_1AFDFF2F8();

      v16 = -1 << *(a2 + 32);
      v17 = v15 & ~v16;
      if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        break;
      }

      v18 = ~v16;
      while (1)
      {
        v19 = sub_1AFDFCEF8();
        v21 = v20;
        if (v19 == sub_1AFDFCEF8() && v21 == v22)
        {

          goto LABEL_23;
        }

        v24 = sub_1AFDFEE28();

        if (v24)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v8 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

LABEL_23:
      v9 = v26;
      a1 = v27;
      v6 = v28;
      if (!v28)
      {
        goto LABEL_8;
      }
    }

LABEL_26:

    return 0;
  }

LABEL_8:
  v11 = v3 << 6;
  while (1)
  {
    v12 = v3 + 1;
    if (v3 + 1 >= v7)
    {
      return 1;
    }

    v13 = *(v9 + 8 * v3);
    v11 += 64;
    ++v3;
    if (v13)
    {
      v28 = (v13 - 1) & v13;
      v10 = __clz(__rbit64(v13)) + v11;
      v3 = v12;
      goto LABEL_12;
    }
  }
}

uint64_t sub_1AFAC6918(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = sub_1AFDFDFD8();
  if (v6 != sub_1AFDFDFD8())
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  else
  {
    return sub_1AFDFEE28() & 1;
  }
}

uint64_t sub_1AFAC69FC(void *a1, void *a2, void *a3, void *a4)
{
  if (a1)
  {
    if (!a3)
    {
      return 0;
    }

    v7 = a1;
    sub_1AF0D4478(0, &qword_1ED72F7F0, &off_1E7A77B60);
    v8 = a3;
    v9 = v7;
    LOBYTE(v7) = sub_1AFDFDC48();

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a3)
  {
    return 0;
  }

  if (a2)
  {
    if (a4)
    {
      sub_1AF0D4478(0, &qword_1ED72F7F0, &off_1E7A77B60);
      v10 = a4;
      v11 = a2;
      v12 = sub_1AFDFDC48();

      if (v12)
      {
        return 1;
      }
    }
  }

  else if (!a4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1AFAC6AEC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v76 = a6;
  v77 = a3;
  v78 = a5;
  v79 = a4;
  v80 = a2;
  v104 = *MEMORY[0x1E69E9840];
  sub_1AFAD0C4C(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v73 - v9;
  v11 = type metadata accessor for GraphScript(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v73 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v73 - v18;
  v20 = v8[13];
  v21 = *(a1 + v20);
  sub_1AFACFD88(a1, &v73 - v18, type metadata accessor for GraphScript);
  v22 = v19[40];
  sub_1AFAD2E00(v19, type metadata accessor for GraphScript);
  if (v21 != 1)
  {
    goto LABEL_4;
  }

  if (v22 == 1)
  {
    return 0;
  }

  if (!v22)
  {
LABEL_4:
    *(a1 + v20) = 1;
  }

  v75 = HIDWORD(v79);
  sub_1AFACFE6C(a1, v10, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8);
  sub_1AFACFD88(v10, v16, type metadata accessor for GraphScript);

  sub_1AFACFDF0(v10, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
  v23 = *v16;

  sub_1AFAD2E00(v16, type metadata accessor for GraphScript);
  sub_1AFACFD88(a1, v13, type metadata accessor for GraphScript);
  v24 = v13[24];
  sub_1AFAD2E00(v13, type metadata accessor for GraphScript);
  if (v24 <= 2)
  {
    v25 = v80;
  }

  else
  {
    v25 = v80;
    if (v24 != 3)
    {

LABEL_13:
      v28 = *(a1 + v8[9]);
      if (v28 && (v29 = *(v28 + 96)) != 0)
      {
        v30 = a1 + v8[14];
        v73 = *v30;
        v74 = HIDWORD(v78);
        v31 = *(v30 + 8);
        sub_1AF0D4478(0, &qword_1EB642748, 0x1E695DF70);
        swift_retain_n();
        v32 = v29;

        v33 = v76;

        v34 = MEMORY[0x1E69E7CC0];
        v35 = MEMORY[0x1B2719630](MEMORY[0x1E69E7CC0]);
        v81 = v31;
        *&v86 = v32;
        *(&v86 + 1) = v25;
        *&v87 = v23;
        *(&v87 + 1) = v33;
        v36 = v73;
        *&v88 = v73;
        v37 = v31;
        BYTE8(v88) = v31;
        *(&v88 + 9) = v82;
        BYTE11(v88) = v83;
        HIDWORD(v88) = v78;
        LODWORD(v89) = v74;
        *(&v89 + 1) = v35;
        v90 = v34;
        if (sub_1AFAD4FA4())
        {
          v39 = thread_worker_index(v38);
          v40 = v80;
          if (*v39 == -1)
          {
            v41 = *(v80 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
          }

          else
          {
            v41 = *(v80 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v39 + 8;
          }

          v42 = *(*v41 + 32);
          v43 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
          swift_unknownObjectUnownedInit();
          v44 = 3031;
          if (!v37)
          {
            v44 = v36;
          }

          *&v92 = v44;
          *(&v92 + 1) = v40;
          *(&v93 + 1) = __PAIR64__(v75, v79);
          *&v95 = 0;
          v94 = v42;
          BYTE8(v95) = 1;
          *&v96 = 0;
          *(&v96 + 1) = v43;
          if (v77)
          {
            Strong = swift_unknownObjectUnownedLoadStrong();
          }

          else
          {
            Strong = 0;
          }

          swift_unknownObjectUnownedAssign();

          sub_1AFABB57C(&v92, &v99);
          sub_1AFAC5A30(&v99, v40, v32, &v86, a1);

          sub_1AFABB5D8(&v99);
          v84[2] = v88;
          v84[3] = v89;
          v85 = v90;
          v84[0] = v86;
          v84[1] = v87;
          v55 = v84;
        }

        else
        {

          *&v100[16] = v88;
          v101 = v89;
          *&v102 = v90;
          v99 = v86;
          *v100 = v87;
          v55 = &v99;
        }

        sub_1AFACFEF0(v55);
      }

      else
      {
      }

      return 1;
    }
  }

  v27 = sub_1AFDFEE28();

  if (v27)
  {

    goto LABEL_13;
  }

  v46 = *(a1 + v8[10]);
  if (v46)
  {
    v74 = *(v46 + 32);
    v47 = v8[14];
    v48 = a1 + v8[15];
    v49 = *(v48 + 8);
    v50 = *(a1 + v47);
    LODWORD(v73) = *(a1 + v47 + 8);
    LOBYTE(v84[0]) = v73;
    LOBYTE(v82) = 0;
    if (v49)
    {
      v51 = v49;
    }

    else
    {
      v52 = *(v23 + 16);
      if (v52)
      {
        sub_1AF6B740C(0, &qword_1ED724EE0, &type metadata for CachedLocationMapping);
        v51 = sub_1AFDFD488();
        *(v51 + 16) = v52;
        v53 = 32;
        do
        {
          v54 = v51 + v53;
          *v54 = 0;
          *(v54 + 8) = 0;
          *(v54 + 16) = 0;
          *(v54 + 24) = xmmword_1AFE4C450;
          v53 += 40;
          --v52;
        }

        while (v52);
      }

      else
      {
        v51 = MEMORY[0x1E69E7CC0];
      }
    }

    *&v99 = 0;
    *(&v99 + 1) = v23;
    *v100 = v50;
    v100[8] = v84[0];
    *&v100[12] = v78;
    v100[20] = v82;
    *&v100[24] = v51;
    *&v101 = MEMORY[0x1E69E7CC0];
    *(&v101 + 1) = MEMORY[0x1E69E7CC0];
    v102 = 0uLL;
    *v103 = 0;
    *&v103[8] = xmmword_1AFE22A20;
    v56 = thread_worker_index;
    v57 = thread_worker_index(COERCE_DOUBLE(1));
    v58 = *(v25 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    if (*v57 == -1)
    {
      v59 = *(v25 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    }

    else
    {
      v59 = (v58 + 8 * *v57 + 8);
    }

    v60 = *v59;

    v61 = v77;
    if ((sub_1AFAE1FA0(v60, v77) & 1) == 0)
    {

      v96 = v102;
      v97 = *v103;
      v98 = *&v103[16];
      v92 = v99;
      v93 = *v100;
      v94 = *&v100[16];
      v95 = v101;
      sub_1AFABB4CC(&v92);
      return 0;
    }

    v78 = v99;
    v62 = *&v100[24];

    *(v48 + 8) = v62;
    v63 = (v56)(&thread_worker_index);
    if (*v63 == -1)
    {
      v64 = v58;
    }

    else
    {
      v64 = v58 + 8 * *v63 + 8;
    }

    v65 = *(*v64 + 32);
    swift_unknownObjectUnownedInit();
    v66 = 3031;
    if (!v73)
    {
      v66 = v50;
    }

    *&v86 = v66;
    *(&v86 + 1) = v25;
    *(&v87 + 1) = __PAIR64__(v75, v79);
    *&v89 = 0;
    v88 = v65;
    BYTE8(v89) = 1;
    v90 = v78;
    v91 = v76;
    if (v61)
    {
      v67 = swift_unknownObjectUnownedLoadStrong();
    }

    else
    {
      v67 = 0;
    }

    v68 = v74;
    swift_unknownObjectUnownedAssign();

    sub_1AFABB57C(&v86, &v92);
    v68(&v92);
    sub_1AFABB5D8(&v92);
    v69 = *(v101 + 16);
    if (v69)
    {
      v70 = v101 + 40;
      do
      {
        v71 = *(v70 - 8);

        v71(v72);

        v70 += 16;
        --v69;
      }

      while (v69);
    }

    v96 = v102;
    v97 = *v103;
    v98 = *&v103[16];
    v92 = v99;
    v93 = *v100;
    v94 = *&v100[16];
    v95 = v101;
    sub_1AFABB4CC(&v92);
    return 1;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AFAC73C0(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = type metadata accessor for GraphScript(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v66 = (&v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AFAD0018(0, &qword_1ED725718, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v54 - v6;
  v7 = a1;
  sub_1AFAD0C4C(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
  v64 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  if (*(v7 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81) == 1 && (*(v7 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 84) & 1) == 0)
  {
    if (qword_1ED72D720 != -1)
    {
      swift_once();
    }

    v99 = qword_1ED73B840;
    v100 = 0;
    v101 = 2;
    v102 = 0;
    v103 = 2;
    v104 = 0;
    sub_1AFCC5420(1, 1, v72);
    v90[0] = v72[0];
    v90[1] = v72[1];
    v91 = v73;
    sub_1AF6B06C0(v7, v90, 0x200000000, &v74);
    v58 = v74;
    if (v74)
    {
      v55 = v11;
      v59 = v7;
      v17 = v77;
      v18 = v78;
      v57 = v79;
      v19 = v80;
      v82 = v75;
      v83 = v76;
      v20 = MEMORY[0x1E69E7CC0];
      v71 = MEMORY[0x1E69E7CC0];
      v56 = v81;
      v60 = v16;
      if (v81 < 1 || !v78)
      {
        v68 = 0;
        v33 = v59;
        goto LABEL_19;
      }

      v54 = v9;
      v21 = *(v80 + 32);
      LODWORD(v70) = *(v57 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AF6B724C(&v74, v94, &qword_1ED725EA0, &type metadata for QueryResult);
      v22 = (v17 + 24);
      do
      {
        v68 = 0;
        v24 = *(v22 - 6);
        v23 = *(v22 - 5);
        v25 = *(v22 - 4);
        v26 = *v22;
        v69 = *(v22 - 1);
        v27 = v22[2];
        v61 = v22[1];
        v62 = v26;
        if (v70)
        {
          v28 = *(v27 + 376);

          os_unfair_lock_lock(v28);
          os_unfair_lock_lock(*(v27 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v21);
        v29 = *(v19 + 64);
        v92[0] = *(v19 + 48);
        v92[1] = v29;
        v93 = *(v19 + 80);
        v30 = *(*(*(*(v27 + 40) + 16) + 32) + 16) + 1;
        *(v19 + 48) = ecs_stack_allocator_allocate(*(v19 + 32), 48 * v30, 8);
        *(v19 + 56) = v30;
        *(v19 + 72) = 0;
        *(v19 + 80) = 0;
        *(v19 + 64) = 0;
        LOBYTE(v87) = 1;
        v94[0] = v57;
        v94[1] = v27;
        v94[2] = v19;
        v94[3] = v25;
        v94[4] = (v23 - v24 + v25);
        v94[5] = v56;
        v94[6] = v24;
        v94[7] = v23;
        v94[8] = 0;
        v94[9] = 0;
        v95 = 1;
        v96 = v69;
        v97 = v62;
        v98 = v61;
        v31 = v59;

        v32 = v68;
        sub_1AFD29024(v94, v31, &v71);
        if (v32)
        {

          v87 = v58;
          v88 = v82;
          v89 = v83;
          sub_1AF630994(v19, &v87, v92);
          sub_1AF62D29C(v27);
          ecs_stack_allocator_pop_snapshot(v21);
          os_unfair_lock_unlock(*(v27 + 344));
          os_unfair_lock_unlock(*(v27 + 376));
          __break(1u);
LABEL_36:

          os_unfair_lock_unlock(*(v19 + 344));
          __break(1u);
          return;
        }

        v84 = v58;
        v85 = v82;
        v86 = v83;
        sub_1AF630994(v19, &v84, v92);
        sub_1AF62D29C(v27);
        ecs_stack_allocator_pop_snapshot(v21);
        if (v70)
        {
          os_unfair_lock_unlock(*(v27 + 344));
          os_unfair_lock_unlock(*(v27 + 376));
        }

        v22 += 6;
        --v18;
      }

      while (v18);
      v68 = 0;
      sub_1AF0D9DB0(&v74, &qword_1ED725EA0, &type metadata for QueryResult);
      v33 = v59;

      v20 = v71;
      v16 = v60;
      v9 = v54;
LABEL_19:
      v57 = v20;
      v34 = *(v20 + 16);
      if (v34)
      {
        v58 = v33 + OBJC_IVAR____TtC3VFX13EntityManager__entries;
        v61 = (v9 + 48);
        v35 = &unk_1ED72C4F0;
        v36 = (v57 + 36);
        v37 = &off_1ED72D7D8;
        while (1)
        {
          v38 = *v36;
          v69 = *(v36 - 1);
          v70 = v34;
          v39 = v37;
          v40 = v16;
          v41 = v69 | (v38 << 32);
          v42 = v65;
          sub_1AF3CAB4C(v41, v65);
          (*v61)(v42, 1, v64);
          sub_1AFAD0144(v42, v40, v35, type metadata accessor for GraphScript, v39);
          v62 = v41;
          sub_1AFAC6AEC(v40, v33, v67, v41, v41, MEMORY[0x1E69E7CC8]);
          v43 = v63;
          sub_1AFACFE6C(v40, v63, v35, type metadata accessor for GraphScript, v39);
          v44 = v66;
          sub_1AFACFD88(v43, v66, type metadata accessor for GraphScript);
          v45 = v39;
          sub_1AFACFDF0(v43, v35, type metadata accessor for GraphScript, v39, type metadata accessor for ScriptRuntime);
          v46 = *v44;

          sub_1AFAD2E00(v44, type metadata accessor for GraphScript);
          sub_1AFABF7C8(v46);

          if (v69 == -1 && !v38)
          {
            break;
          }

          v16 = v60;
          if ((v69 & 0x80000000) != 0 || *(v58 + 8) <= v69)
          {
            goto LABEL_22;
          }

          v47 = (*v58 + 12 * v69);
          v37 = v45;
          if (v38 == -1 || v47[2] == v38)
          {
            v48 = v35;
            v49 = v55;
            sub_1AFACFE6C(v60, v55, v48, type metadata accessor for GraphScript, v45);
            v50 = v59;
            v19 = *(*(v59 + 144) + 8 * *v47 + 32);
            v51 = *(v47 + 2);
            os_unfair_lock_lock(*(v19 + 344));
            v52 = v50;
            v53 = v68;
            sub_1AFC126E4(v19, v51, v49, v52, v62);
            v68 = v53;
            if (v53)
            {
              goto LABEL_36;
            }

            os_unfair_lock_unlock(*(v19 + 344));
            sub_1AFACFDF0(v49, v48, type metadata accessor for GraphScript, v37, type metadata accessor for ScriptRuntime);
            v33 = v59;
            v35 = v48;
          }

          else
          {
            v33 = v59;
          }

LABEL_23:
          v36 += 2;
          sub_1AFACFDF0(v16, v35, type metadata accessor for GraphScript, v37, type metadata accessor for ScriptRuntime);
          v34 = v70 - 1;
          if (v70 == 1)
          {
            goto LABEL_33;
          }
        }

        v16 = v60;
LABEL_22:
        v37 = v39;
        goto LABEL_23;
      }

LABEL_33:
      sub_1AFAD2E00(v72, sub_1AFAD01C8);
      sub_1AF0D9DB0(&v74, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    else
    {
      sub_1AFAD2E00(v72, sub_1AFAD01C8);
    }
  }
}

void sub_1AFAC7C94(uint64_t a1, uint64_t a2)
{
  v100 = a2;
  v167 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for SimpleScript(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v99 = (&v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v107 = &v85 - v6;
  sub_1AFAD0018(0, &qword_1ED725700, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v106 = &v85 - v8;
  sub_1AFAD0C4C(0, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v85 - v14;
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v85 - v19;
  if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81) != 1 || (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 84) & 1) != 0)
  {
    return;
  }

  v92 = v18;
  v21 = v17;
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v128 = qword_1ED73B840;
  v129 = 0;
  v130 = 2;
  v131 = 0;
  v132 = 2;
  v133 = 0;
  sub_1AFCC565C(1, 1, v121);
  v126[0] = v121[0];
  v126[1] = v121[1];
  v127 = v122;
  sub_1AF6B06C0(a1, v126, 0x200000000, &v150);
  *&v108 = v150;
  if (!v150)
  {
    sub_1AFAD2E00(v121, sub_1AFAD0088);
    return;
  }

  v102 = v10;
  v93 = v21;
  v22 = v153;
  v23 = v154;
  v105 = v155;
  v24 = v156;
  v158 = v151;
  v159 = v152;
  v25 = MEMORY[0x1E69E7CC0];
  v116 = MEMORY[0x1E69E7CC0];
  v104 = v157;
  v94 = a1;
  v86 = v12;
  v91 = v20;
  if (v157 >= 1 && v154)
  {
    v26 = *(v156 + 32);
    v27 = v105[OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach];

    sub_1AF6B724C(&v150, v162, &qword_1ED725EA0, &type metadata for QueryResult);
    v109 = 0;
    v28 = (v22 + 24);
    LODWORD(v103) = v27;
    do
    {
      v30 = *(v28 - 6);
      v29 = *(v28 - 5);
      v31 = *(v28 - 4);
      v32 = *(v28 - 1);
      v111 = *v28;
      v112 = v32;
      v20 = v28[2];
      v110 = v28[1];
      v113 = v23;
      if (v27)
      {
        v33 = *(v20 + 47);

        os_unfair_lock_lock(v33);
        os_unfair_lock_lock(*(v20 + 43));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v26);
      v34 = *(v24 + 64);
      v35 = &v145;
      v160[0] = *(v24 + 48);
      v160[1] = v34;
      v161 = *(v24 + 80);
      v36 = *(*(*(*(v20 + 5) + 16) + 32) + 16) + 1;
      *(v24 + 48) = ecs_stack_allocator_allocate(*(v24 + 32), 48 * v36, 8);
      *(v24 + 56) = v36;
      *(v24 + 72) = 0;
      *(v24 + 80) = 0;
      *(v24 + 64) = 0;
      LOBYTE(v145) = 1;
      v162[0] = v105;
      v162[1] = v20;
      v162[2] = v24;
      v162[3] = v31;
      v162[4] = (v29 - v30 + v31);
      v162[5] = v104;
      v162[6] = v30;
      v162[7] = v29;
      v162[8] = 0;
      v162[9] = 0;
      v163 = 1;
      v164 = v112;
      v165 = v111;
      v166 = v110;
      v37 = v94;

      v38 = v109;
      sub_1AFD295C0(v162, v37, &v116);
      if (v38)
      {
        goto LABEL_63;
      }

      v123 = v108;
      v124 = v158;
      v125 = v159;
      sub_1AF630994(v24, &v123, v160);
      v109 = 0;
      sub_1AF62D29C(v20);
      ecs_stack_allocator_pop_snapshot(v26);
      v27 = v103;
      if (v103)
      {
        os_unfair_lock_unlock(*(v20 + 43));
        os_unfair_lock_unlock(*(v20 + 47));
      }

      v28 += 6;
      v23 = v113 - 1;
    }

    while (v113 != 1);
    sub_1AF0D9DB0(&v150, &qword_1ED725EA0, &type metadata for QueryResult);
    a1 = v94;

    v25 = v116;
    v20 = v91;
  }

  else
  {
    v109 = 0;
  }

  v85 = v25;
  v35 = v93;
  v97 = *(v25 + 16);
  if (!v97)
  {
LABEL_60:
    sub_1AFAD2E00(v121, sub_1AFAD0088);
    sub_1AF0D9DB0(&v150, &qword_1ED725EA0, &type metadata for QueryResult);

    return;
  }

  v26 = 0;
  v88 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v90 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  v105 = v20 + 8;
  v95 = (v102 + 48);
  v96 = v85 + 32;
  v87 = xmmword_1AFE4C450;
  *(&v39 + 1) = 0;
  v89 = xmmword_1AFE22A20;
  while (1)
  {
    *&v39 = *(v96 + 8 * v26);
    v108 = v39;
    v112 = v39;
    v113 = DWORD1(v39);
    v40 = v106;
    v111 = v39;
    sub_1AF3CAB24(v39, v106);
    (*v95)(v40, 1, v35);
    sub_1AFAD0144(v40, v20, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00);
    v24 = *(v35 + 13);
    v41 = v20[v24];
    v42 = v107;
    sub_1AFACFD88(v20, v107, type metadata accessor for SimpleScript);
    v43 = *(v42 + 56);
    sub_1AFAD2E00(v42, type metadata accessor for SimpleScript);
    if (v41 != 1)
    {
      goto LABEL_25;
    }

    if (v43 == 1)
    {
      goto LABEL_52;
    }

    if (!v43)
    {
LABEL_25:
      v20[v24] = 1;
    }

    v110 = v26;
    v38 = v92;
    sub_1AFACFE6C(v20, v92, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00);
    v44 = *&v38[*(v35 + 10)];
    if (!v44)
    {
      break;
    }

    v104 = *(v44 + 32);

    sub_1AFACFDF0(v38, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
    v45 = v98;
    sub_1AFACFE6C(v20, v98, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00);
    v46 = v99;
    sub_1AFACFD88(v45, v99, type metadata accessor for SimpleScript);
    sub_1AFACFDF0(v45, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
    v47 = *v46;

    sub_1AFAD2E00(v46, type metadata accessor for SimpleScript);
    v48 = *(v35 + 14);
    v103 = *(v35 + 15);
    v49 = *&v105[v103];
    v50 = &v20[v48];
    v51 = *v50;
    LODWORD(v102) = v50[8];
    v115 = v102;
    v114 = 0;
    if (v49)
    {
      v52 = v49;
      v53 = a1;
    }

    else
    {
      v54 = *(v47 + 16);
      if (!v54)
      {
        v58 = MEMORY[0x1E69E7CC0];
        v52 = MEMORY[0x1E69E7CC0];
        v53 = v94;
        goto LABEL_34;
      }

      sub_1AF6B740C(0, &qword_1ED724EE0, &type metadata for CachedLocationMapping);
      v52 = sub_1AFDFD488();
      *(v52 + 16) = v54;
      v55 = 32;
      v56 = v87;
      do
      {
        v57 = v52 + v55;
        *v57 = 0;
        *(v57 + 8) = 0;
        *(v57 + 16) = 0;
        *(v57 + 24) = v56;
        v55 += 40;
        --v54;
      }

      while (v54);
      v53 = v94;
    }

    v58 = MEMORY[0x1E69E7CC0];
LABEL_34:
    *(v146 + 9) = v119;
    BYTE11(v146[0]) = v120;
    *(&v146[1] + 5) = v117;
    BYTE7(v146[1]) = v118;
    *&v145 = 0;
    *(&v145 + 1) = v47;
    *&v146[0] = v51;
    BYTE8(v146[0]) = v115;
    *(v146 + 12) = v111;
    BYTE4(v146[1]) = v114;
    *(&v146[1] + 1) = v52;
    *&v147 = v58;
    *(&v147 + 1) = v58;
    v148 = 0uLL;
    *v149 = 0;
    *&v149[8] = v89;
    v59 = thread_worker_index;
    v60 = thread_worker_index(*&v89);
    v101 = v51;
    v61 = *(v53 + v90);
    if (*v60 == -1)
    {
      v62 = *(v53 + v90);
    }

    else
    {
      v62 = (v61 + 8 * *v60 + 8);
    }

    v63 = *v62;

    v64 = v63;
    v65 = v100;
    if (sub_1AFAE1FA0(v64, v100))
    {
      v66 = (v59)(&thread_worker_index);
      if (*v66 == -1)
      {
        v67 = v61;
      }

      else
      {
        v67 = v61 + 8 * *v66 + 8;
      }

      v68 = *(*v67 + 32);
      v69 = v145;
      v70 = sub_1AF43E4E8(v58);
      swift_unknownObjectUnownedInit();
      v71 = 3031;
      if (!v102)
      {
        v71 = v101;
      }

      v134[0] = v71;
      v134[1] = v53;
      v134[3] = v108;
      v134[4] = v68;
      v134[5] = 0;
      v134[6] = 0;
      v135 = 1;
      v136 = v69;
      v137 = v70;
      a1 = v53;
      if (v65)
      {
        Strong = swift_unknownObjectUnownedLoadStrong();
      }

      else
      {
        Strong = 0;
      }

      v20 = v91;
      swift_unknownObjectUnownedAssign();

      sub_1AFABB57C(v134, &v138);
      v104(&v138);
      sub_1AFABB5D8(&v138);
      v73 = *(&v146[1] + 1);
      v74 = v105;
      v75 = v103;

      *&v74[v75] = v73;
      v76 = *(v147 + 16);
      v35 = v93;
      if (v76)
      {
        v77 = v147 + 40;
        do
        {
          v78 = *(v77 - 8);

          v78(v79);

          v77 += 16;
          --v76;
        }

        while (v76);
      }

      v142 = v148;
      v143 = *v149;
      v144 = *&v149[16];
      v138 = v145;
      v139 = v146[0];
      v140 = v146[1];
      v141 = v147;
      sub_1AFABB4CC(&v138);
    }

    else
    {

      v142 = v148;
      v143 = *v149;
      v144 = *&v149[16];
      v138 = v145;
      v139 = v146[0];
      v140 = v146[1];
      v141 = v147;
      sub_1AFABB4CC(&v138);
      v35 = v93;
      v20 = v91;
      a1 = v53;
    }

    v26 = v110;
LABEL_52:

    sub_1AFABF7C8(v80);

    if (__PAIR64__(v113, v112) != 0xFFFFFFFF && (v112 & 0x80000000) == 0 && v88[1] > v112)
    {
      v81 = (*v88 + 12 * v112);
      if (v113 == -1 || v81[2] == v113)
      {
        v82 = v86;
        sub_1AFACFE6C(v20, v86, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00);
        v24 = *(*(a1 + 144) + 8 * *v81 + 32);
        v83 = *(v81 + 2);
        os_unfair_lock_lock(*(v24 + 344));
        v84 = v109;
        sub_1AFC13440(v24, v83, v82, a1, v111);
        v109 = v84;
        if (v84)
        {
          goto LABEL_64;
        }

        os_unfair_lock_unlock(*(v24 + 344));
        sub_1AFACFDF0(v82, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
      }
    }

    ++v26;
    sub_1AFACFDF0(v20, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
    if (v26 == v97)
    {
      goto LABEL_60;
    }
  }

  sub_1AFDFE518();
  __break(1u);
LABEL_63:

  *v35 = v108;
  *(v35 + 8) = *(v35 + 200);
  *(v35 + 24) = *(v35 + 216);
  sub_1AF630994(v24, &v145, v160);
  sub_1AF62D29C(v20);
  ecs_stack_allocator_pop_snapshot(v26);
  os_unfair_lock_unlock(*(v20 + 43));
  os_unfair_lock_unlock(*(v20 + 47));
  __break(1u);
LABEL_64:

  os_unfair_lock_unlock(*(v24 + 344));
  __break(1u);
}

uint64_t sub_1AFAC8A4C(uint64_t a1, void (*a2)(void))
{
  v4 = *(a1 + 57);
  sub_1AFAD0A24(0);
  inited = swift_initStackObject();
  v6 = inited;
  *(inited + 32) = 0x4165646F6ELL;
  *(inited + 16) = xmmword_1AFE4C630;
  *(inited + 40) = 0xE500000000000000;
  v7 = *(v2 + 76);
  v8 = 8;
  if (*(v2 + 76))
  {
    v8 = 16;
  }

  v9 = *(v2 + v8);
  if (v4)
  {
    v10 = v9;
    v11 = a2;
    v12 = [v10 presentationNode];

    *(v6 + 48) = v12;
    *(v6 + 56) = 0x4265646F6ELL;
    *(v6 + 64) = 0xE500000000000000;
    if (v7)
    {
      v13 = (v2 + 8);
    }

    else
    {
      v13 = (v2 + 16);
    }

    v14 = *v13;
    v15 = [v14 presentationNode];

    a2 = v11;
  }

  else
  {
    *(inited + 48) = v9;
    *(inited + 56) = 0x4265646F6ELL;
    *(inited + 64) = 0xE500000000000000;
    if (v7)
    {
      v16 = (v2 + 8);
    }

    else
    {
      v16 = (v2 + 16);
    }

    v15 = *v16;
  }

  *(v6 + 72) = v15;
  strcpy((v6 + 80), "contactPoint");
  *(v6 + 93) = 0;
  *(v6 + 94) = -5120;
  *(v6 + 96) = v2 + 32;
  strcpy((v6 + 104), "contactNormal");
  *(v6 + 118) = -4864;
  *(v6 + 120) = v2 + 48;
  *(v6 + 128) = 0xD000000000000010;
  *(v6 + 136) = 0x80000001AFF224B0;
  *(v6 + 144) = v2 + 64;
  *(v6 + 152) = 0xD000000000000013;
  *(v6 + 160) = 0x80000001AFF224D0;
  *(v6 + 168) = v2 + 68;
  *(v6 + 176) = 0xD000000000000011;
  *(v6 + 184) = 0x80000001AFF224F0;
  *(v6 + 192) = v2 + 72;
  v17 = sub_1AF43E4E8(v6);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
  swift_arrayDestroy();
  a2(v17);
}

uint64_t sub_1AFAC8CAC(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for TriggerScriptRunnerSystem.TriggerParam(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFAD0A24(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE4C6B0;
  strcpy((inited + 32), "screenPosition");
  *(inited + 47) = -18;
  *(inited + 48) = a1 + 32;
  *(inited + 56) = 0x6E6F74747562;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = a1 + 40;
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000001AFF22530;
  *(inited + 96) = a1 + 48;
  *(inited + 104) = 1937009000;
  *(inited + 112) = 0xE400000000000000;
  *(inited + 120) = &v15;
  v9 = sub_1AF43E4E8(inited);
  swift_setDeallocating();
  sub_1AF0D8108(0, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
  swift_arrayDestroy();
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_1AFACFD88(v11, v7, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
      (*(v7 + 7))(v9);
      sub_1AFAD2E00(v7, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
      v11 += v12;
      --v10;
    }

    while (v10);
  }
}

void sub_1AFAC8EE4(uint64_t a1, __CFString *a2, unsigned int a3)
{
  v827 = a3;
  v826 = a2;
  v932 = *MEMORY[0x1E69E9840];
  sub_1AFACFCD8(0, &qword_1ED7246E0, sub_1AFAD03B8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v738 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  *&v824 = &v738 - v8;
  sub_1AFAD092C(0, &unk_1ED724700, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam, &type metadata for MotionTrackingParams);
  v773 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v738 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v775 = &v738 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v772 = &v738 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v774 = &v738 - v18;
  sub_1AFAD092C(0, qword_1ED724720, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam, &type metadata for GazeTrackingParams);
  v20 = *(v19 - 8);
  v782 = v19;
  v783 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v791 = &v738 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v789 = &v738 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v781 = &v738 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v788 = &v738 - v27;
  sub_1AFAD092C(0, &unk_1ED724710, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam, &type metadata for HandTrackingParams);
  v785 = v28;
  v786 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v778 = &v738 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v738 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v784 = &v738 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v790 = &v738 - v36;
  sub_1AFAD092C(0, &unk_1ED7246F0, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam, &type metadata for Entity);
  v799 = v37;
  length = v37[-1].length;
  MEMORY[0x1EEE9AC00](v37);
  v802 = (&v738 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v798 = (&v738 - v40);
  MEMORY[0x1EEE9AC00](v41);
  v777 = &v738 - v42;
  sub_1AF442A54(0);
  v793 = v43;
  v792 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v738 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v815 = &v738 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v823 = &v738 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v780 = &v738 - v51;
  v795 = type metadata accessor for TriggerScriptRunnerSystem.TriggerParam(0);
  v822 = *(v795 - 1);
  MEMORY[0x1EEE9AC00](v795);
  v53 = (&v738 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v738 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v816 = &v738 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v831 = (&v738 - v60);
  MEMORY[0x1EEE9AC00](v61);
  *&v821 = &v738 - v62;
  MEMORY[0x1EEE9AC00](v63);
  *&v825 = &v738 - v64;
  MEMORY[0x1EEE9AC00](v65);
  *&v832 = &v738 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v771 = &v738 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v738 - v70;
  MEMORY[0x1EEE9AC00](v72);
  v787 = &v738 - v73;
  MEMORY[0x1EEE9AC00](v74);
  *&v807 = &v738 - v75;
  sub_1AFAD0018(0, &qword_1ED7256F8, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298);
  MEMORY[0x1EEE9AC00](v76 - 8);
  v806 = (&v738 - v77);
  v814 = type metadata accessor for TriggerScript(0);
  MEMORY[0x1EEE9AC00](v814);
  v808 = &v738 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF442910(0);
  v805 = v79;
  MEMORY[0x1EEE9AC00](v79);
  *&v804 = &v738 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81) != 1 || (*(a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 84) & 1) != 0)
  {
    return;
  }

  info = v80;
  v760 = v32;
  v797 = (a1 + OBJC_IVAR____TtC3VFX13EntityManager_clock);
  v741 = v10;
  v739 = v12;
  v819 = v71;
  v756 = v56;
  v754 = v53;
  v745 = v45;
  v82 = *(a1 + 184);

  sub_1AF6D5188(&type metadata for TriggerListComponent, &off_1F255DD10, v82, &v841);

  v83 = *(a1 + 184);

  v765 = sub_1AF6D6574(&type metadata for IncommingTickedEventsComponent, &off_1F255D248, v83);

  v84 = *(a1 + 184);

  v769 = sub_1AF6D4F2C(&type metadata for TickedEventsComponent, &off_1F255DCF0, v84);
  v803 = v85;

  v86 = *(a1 + 184);

  v87 = sub_1AF6D6574(&type metadata for CollisionEventsComponent, &off_1F255DCD0, v86);

  v744 = v87;
  v840[0] = v87;
  v88 = *(a1 + 184);

  v767 = sub_1AF6D6574(&type metadata for ARHandTrackingData, &off_1F254B4F0, v88);

  v89 = *(a1 + 184);

  v768 = sub_1AF6D6574(&type metadata for ARGazeData, &off_1F254B510, v89);

  v90 = *(a1 + 184);

  sub_1AF6D4CE0(&type metadata for VFXMotionDataComponent, &off_1F254AE48, v90, v899);

  v839 = MEMORY[0x1E69E7CD0];
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v872 = qword_1ED73B840;
  v873 = 0;
  v874 = 2;
  v875 = 0;
  v876 = 2;
  v877 = 0;
  sub_1AFCC594C(1, 1, v857);
  v91 = MEMORY[0x1E69E7CC0];
  v838 = sub_1AF43E608(MEMORY[0x1E69E7CC0]);
  v837 = sub_1AF43E620(v91);
  v836 = sub_1AF43E718(v91);
  v870[0] = v857[0];
  v870[1] = v857[1];
  v871 = v858;
  v794 = *(a1 + OBJC_IVAR____TtC3VFX13EntityManager_queryManager);
  sub_1AF6B06C0(a1, v870, 0x200000000, &v900);
  v810 = v900;
  if (!v900)
  {

    sub_1AFAD2E00(v857, sub_1AFAD0470);

    v111 = a1;
LABEL_177:
    sub_1AFAC4F14(&v841, v111, &v839, v840);

    goto LABEL_567;
  }

  v830 = a1;
  v92 = v903;
  v93 = v904;
  *&v809 = v905;
  v94 = v906;
  v915 = v901;
  v916 = v902;
  v835 = v91;
  v801 = v907;
  v820 = v6;
  if (v907 < 1)
  {
    v95 = v830;
  }

  else
  {
    v95 = v830;
    if (v904)
    {
      v96 = *(v906 + 4);
      LODWORD(v829.f64[0]) = *(v809 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AF6B724C(&v900, v890, &qword_1ED725EA0, &type metadata for QueryResult);
      v97 = v92 + 24;
      do
      {
        v828 = 0;
        v98 = *(v97 - 24);
        v99 = *(v97 - 20);
        v100 = *(v97 - 16);
        v101 = *(v97 - 8);
        v102 = *v97;
        v103 = *(v97 + 8);
        v104 = *(v97 + 16);
        *&v818 = v93;
        v817 = v101;
        v813 = v102;
        v812[0] = v103;
        v811 = v98;
        if (LODWORD(v829.f64[0]))
        {
          v105 = *(v104 + 47);

          os_unfair_lock_lock(v105);
          os_unfair_lock_lock(*(v104 + 43));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v96);
        v106 = *(v94 + 4);
        v925[0] = *(v94 + 3);
        v925[1] = v106;
        v926 = *(v94 + 10);
        v107 = *(v94 + 4);
        v108 = *(*(*(*(v104 + 5) + 16) + 32) + 16) + 1;

        *(v94 + 6) = ecs_stack_allocator_allocate(v107, 48 * v108, 8);
        *(v94 + 7) = v108;
        *(v94 + 9) = 0;
        *(v94 + 10) = 0;
        *(v94 + 8) = 0;

        LOBYTE(v890[0]) = 1;
        v927[0] = v809;
        v927[1] = v104;
        v927[2] = v94;
        v927[3] = v100;
        v927[4] = (v99 - v811 + v100);
        v927[5] = v801;
        v927[6] = v811;
        v927[7] = v99;
        v927[8] = 0;
        v927[9] = 0;
        v928 = 1;
        v929 = v817;
        v930 = v813;
        v931 = v812[0];
        v95 = v830;

        v109 = v828;
        sub_1AFD29F14(v927, v95, &v835);
        if (v109)
        {
          goto LABEL_571;
        }

        v862 = v810;
        v863 = v915;
        v864 = v916;
        sub_1AF630994(v94, &v862, v925);
        sub_1AF62D29C(v104);
        ecs_stack_allocator_pop_snapshot(v96);
        v110 = v818;
        if (LOBYTE(v829.f64[0]))
        {
          os_unfair_lock_unlock(*(v104 + 43));
          os_unfair_lock_unlock(*(v104 + 47));
        }

        v97 += 48;
        v93 = v110 - 1;
      }

      while (v93);
      sub_1AF0D9DB0(&v900, &qword_1ED725EA0, &type metadata for QueryResult);

      v91 = v835;
    }
  }

  v828 = 0;
  v112 = *(v91 + 16);
  v740 = v91;
  if (v112)
  {
    v113 = (v91 + ((LOBYTE(info[2].data) + 32) & ~LOBYTE(info[2].data)));
    v801 = OBJC_IVAR____TtC3VFX13EntityManager_replicationStream;
    info = info[2].info;
    v742 = @"VFXTriggerTypeGazeTracking";
    v743 = v767 + 32;
    v738 = @"VFXTriggerTypeMotionTracking";
    v764 = xmmword_1AFE201A0;
    v763 = xmmword_1AFE20150;
    v762 = xmmword_1AFE20160;
    v761 = xmmword_1AFE20180;
    v766 = MEMORY[0x1E69E7CC0];
    v755 = MEMORY[0x1E69E7CC0];
    v770 = MEMORY[0x1E69E7CC0];
    v796 = MEMORY[0x1E69E7CC0];
    v776 = MEMORY[0x1E69E7CC0];
    v114 = v808;
    while (1)
    {
      *&v818 = v112;
      v817 = v113;
      v118 = v804;
      sub_1AFACFD88(v113, v804, sub_1AF442910);
      v119 = *v118;
      v120 = v118[1];
      v810 = *(v118 + 1);
      LODWORD(v809) = *(v118 + 16);
      sub_1AFAD06F0(v118 + SLODWORD(v805[2].isa), v114, type metadata accessor for TriggerScript);
      v121 = v114;
      v122 = v806;
      v813 = (v119 | (v120 << 32));
      sub_1AF3CB2C0(v813, v806);
      sub_1AFAD0C4C(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
      (*(*(v123 - 8) + 48))(v122, 1, v123);
      v124 = swift_allocBox();
      v811 = v125;
      sub_1AFAD0144(v122, v125, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298);
      v126 = swift_allocObject();
      v127 = v826;
      *(v126 + 16) = v95;
      *(v126 + 24) = v127;
      *(v126 + 32) = v827;
      v128 = swift_allocObject();
      *(v128 + 16) = v124;
      *(v128 + 24) = v126;
      *(v128 + 32) = v119;
      *(v128 + 36) = v120;
      *&v829.f64[0] = v128;
      v129 = *(v121 + *(v814 + 48));
      v130 = v838;
      v131 = v838[2];

      v812[0] = v124;
      v132 = v129;

      if (v131 && (v133 = sub_1AF0D5878(v129), (v134 & 1) != 0))
      {
        v135 = *(v130[7] + 8 * v133);
        *&v908[0] = v135;
      }

      else
      {
        v135 = sub_1AF43E800(MEMORY[0x1E69E7CC0]);
        *&v908[0] = v135;
      }

      v136 = v809 ? v119 : v810;
      v137 = v809 ? v120 : HIDWORD(v810);
      v95 = v830;
      v138 = *(v830 + v801);
      v114 = v808;
      if (v138)
      {
        if (*(v138 + 24))
        {
          break;
        }
      }

      v115 = v818;
LABEL_22:
      v116 = v132;

      sub_1AF8256BC(v117, v116);

      sub_1AFAC55A0(v95, v813, v811);
      sub_1AFAD2E00(v114, type metadata accessor for TriggerScript);

      v113 = info + v817;
      v112 = v115 - 1;
      if (!v112)
      {
        goto LABEL_123;
      }
    }

    v810 = v132;
    *(&v890[1] + 1) = &type metadata for Entity;
    *&v890[2] = &off_1F2535EA8;
    *&v890[0] = __PAIR64__(v137, v136);
    v139 = sub_1AF441150(v890, &type metadata for Entity);
    *(&v882 + 1) = &type metadata for Entity;
    *&v883 = &off_1F2535EA8;
    v140 = sub_1AF585714(&v881);
    v141 = *v139;
    swift_unknownObjectRetain();
    *v140 = sub_1AF6C97E0(v141);
    swift_unknownObjectRelease();
    sub_1AF5C5358(0, &qword_1ED722510, &protocol descriptor for ReplicationRemappable);
    v132 = v810;
    swift_dynamicCast();
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v890);
    *&v809 = v917;
    v142 = DWORD1(v917);
    v143 = *(v814 + 52);
    v144 = v807;
    sub_1AF9B3B24(v114 + v143, v807 + 16);
    sub_1AFACFD88(v114, v144 + v795[8], type metadata accessor for TriggerScript);
    *v144 = v132;
    *(v144 + 8) = v136;
    *(v144 + 12) = v137;
    v145 = v829.f64[0];
    *(v144 + 56) = sub_1AFAD0578;
    *(v144 + 64) = v145;
    sub_1AF9B3B24(v114 + v143, &v881);
    if (v883 > 2u)
    {
      if (v883 == 3)
      {
        sub_1AFAD0B30(&v881, v890, &qword_1EB641248, &type metadata for VFXObjectReference, sub_1AF6B740C);
        sub_1AF6B724C(v890, &v917, &qword_1EB641248, &type metadata for VFXObjectReference);
        v115 = v818;
        if (v917 == __PAIR128__(1, 0))
        {
          v181 = v810;

          sub_1AF0D9DB0(&v917, &qword_1EB641248, &type metadata for VFXObjectReference);
          v95 = v830;
          goto LABEL_112;
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        v231 = v810;

        sub_1AF4459C8(&v917);
        v95 = v830;
        if (Strong)
        {
          objc_opt_self();
          v232 = swift_dynamicCastObjCClass();
          if (v232)
          {
            v233 = [v232 presentationNode];
            v234 = [v233 coreEntity];

            v235 = HIDWORD(v234);
            if (v234)
            {
              v236 = v234;
            }

            else
            {
              v236 = -1;
            }

            v237 = (v777 + SLODWORD(v799[1].data));
            sub_1AFACFD88(v807, v777, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            *v237 = v236;
            v237[1] = v235;
            v238 = v766;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v238 = sub_1AF4243F8(0, v238[2] + 1, 1, v238);
            }

            v240 = v238[2];
            v239 = v238[3];
            v766 = v238;
            v95 = v830;
            if (v240 >= v239 >> 1)
            {
              v766 = sub_1AF4243F8(v239 > 1, v240 + 1, 1, v766);
            }

            swift_unknownObjectRelease();
            sub_1AF0D9DB0(v890, &qword_1EB641248, &type metadata for VFXObjectReference);
            sub_1AFAD2E00(v807, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            v241 = v766;
            v766[2] = v240 + 1;
            v242 = v241 + ((*(length + 80) + 32) & ~*(length + 80)) + *(length + 72) * v240;
            v243 = v777;
            v244 = &unk_1ED7246F0;
            v245 = &type metadata for Entity;
LABEL_101:
            sub_1AFAD0674(v243, v242, v244, v245);
LABEL_113:
            v132 = v810;
            goto LABEL_22;
          }

          swift_unknownObjectRelease();
        }

LABEL_112:
        sub_1AF0D9DB0(v890, &qword_1EB641248, &type metadata for VFXObjectReference);
        sub_1AFAD2E00(v807, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        goto LABEL_113;
      }

      if (v883 == 5)
      {
        v153 = BYTE1(v881);
        v154 = *(v743 + 8 * v881);
        v155 = *(v154 + 16);
        v156 = v132;

        v157 = v761;
        v158 = v762;
        v159 = v763;
        v160 = v764;
        if (v155)
        {
          v161 = sub_1AF419B48(v153);
          v157 = v761;
          v158 = v762;
          v159 = v763;
          v160 = v764;
          if (v162)
          {
            v163 = (*(v154 + 56) + 80 * v161);
            v159 = *v163;
            v158 = v163[1];
            v157 = v163[2];
            v160 = v163[3];
          }
        }

        v757 = v159;
        v758 = v158;
        v759 = v157;
        v95 = v830;
        v164 = v760;
        v115 = v818;
        if (*(v154 + 16))
        {
          v809 = v160;
          v165 = sub_1AF419B48(v153);
          if (v166)
          {
            v167 = *(*(v154 + 56) + 80 * v165 + 64);
          }

          else
          {
            v167 = 0;
          }

          v160 = v809;
        }

        else
        {
          v167 = 0;
        }

        HIDWORD(v160) = 1.0;
        v809 = v160;

        v255 = v785;
        v256 = v790;
        v257 = v790 + *(v785 + 48);
        sub_1AFACFD88(v807, v790, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v258 = v758;
        *v257 = v757;
        *(v257 + 16) = v258;
        v259 = v809;
        *(v257 + 32) = v759;
        *(v257 + 48) = v259;
        *(v257 + 64) = v167;
        v260 = v256;
        v261 = v784;
        sub_1AFAD0584(v260, v784, &unk_1ED724710, &type metadata for HandTrackingParams);
        v262 = *(v255 + 48);
        v263 = *(v261 + v262 + 16);
        v809 = *(v261 + v262);
        v264 = *(v261 + v262 + 48);
        v758 = *(v261 + v262 + 32);
        v759 = v263;
        v757 = v264;
        LOBYTE(v257) = *(v261 + v262 + 64);
        v265 = v164 + v262;
        sub_1AFAD06F0(v261, v164, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v267 = v758;
        v266 = v759;
        *v265 = v809;
        *(v265 + 16) = v266;
        v268 = v757;
        *(v265 + 32) = v267;
        *(v265 + 48) = v268;
        *(v265 + 64) = v257;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v776 = sub_1AF4243DC(0, v776[2] + 1, 1, v776);
        }

        v114 = v808;
        v270 = v776[2];
        v269 = v776[3];
        if (v270 >= v269 >> 1)
        {
          v776 = sub_1AF4243DC(v269 > 1, v270 + 1, 1, v776);
        }

        sub_1AFAD0600(v790, &unk_1ED724710, &type metadata for HandTrackingParams);
        sub_1AFAD2E00(v807, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v271 = v776;
        v776[2] = v270 + 1;
        v242 = v271 + ((*(v786 + 80) + 32) & ~*(v786 + 80)) + *(v786 + 72) * v270;
        v243 = v164;
        v244 = &unk_1ED724710;
        v245 = &type metadata for HandTrackingParams;
        goto LABEL_101;
      }
    }

    else
    {
      if (!v883)
      {
        v173 = v881;
        if (v881)
        {
          v174 = v132;

          v175 = [v173 coreEntity];
          v176 = v175 & 0xFFFFFFFF00000000;
          if (v175)
          {
            v177 = v175;
          }

          else
          {
            v177 = 0xFFFFFFFFLL;
          }

          if (v135[2] && (v178 = sub_1AF449D3C(v176 | v177), (v179 & 1) != 0))
          {
            v180 = *(v135[7] + 8 * v178);
          }

          else
          {
            v180 = MEMORY[0x1E69E7CC0];
          }

          sub_1AFACFD88(v807, v787, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v180 = sub_1AF424448(0, v180[2] + 1, 1, v180);
          }

          v247 = v180[2];
          v246 = v180[3];
          if (v247 >= v246 >> 1)
          {
            v180 = sub_1AF424448(v246 > 1, v247 + 1, 1, v180);
          }

          v180[2] = v247 + 1;
          sub_1AFAD06F0(v787, v180 + ((*(v822 + 80) + 32) & ~*(v822 + 80)) + *(v822 + 72) * v247, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          sub_1AF8254E8(v180, v176 | v177);
          sub_1AF8255BC(v173, v176 | v177);
          sub_1AFAD2E00(v807, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v95 = v830;
          v115 = v818;
        }

        else
        {
          v248 = *(v793 + 48);
          v249 = v780;
          sub_1AFACFD88(v114, v780, type metadata accessor for TriggerScript);
          sub_1AFACFD88(v807, v249 + v248, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v250 = v132;

          v251 = v796;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v251 = sub_1AF424414(0, v251[2] + 1, 1, v251);
          }

          v95 = v830;
          v115 = v818;
          v253 = v251[2];
          v252 = v251[3];
          v796 = v251;
          if (v253 >= v252 >> 1)
          {
            v796 = sub_1AF424414(v252 > 1, v253 + 1, 1, v796);
          }

          sub_1AFAD2E00(v807, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v254 = v796;
          v796[2] = v253 + 1;
          sub_1AFAD06F0(v780, v254 + ((*(v792 + 80) + 32) & ~*(v792 + 80)) + *(v792 + 72) * v253, sub_1AF442A54);
        }

        goto LABEL_22;
      }

      if (v883 == 2)
      {
        v146 = v881;
        v147 = v837;
        v148 = *(v837 + 2);
        v149 = v132;

        *&v809 = v149;
        if (v148 && (v150 = sub_1AF0D5878(v149), (v151 & 1) != 0))
        {
          v152 = *(*(v147 + 7) + 8 * v150);
        }

        else
        {
          v152 = sub_1AF43E818(MEMORY[0x1E69E7CC0]);
        }

        v182 = v807;
        v183 = v819;
        sub_1AFACFD88(v807, v819, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v184 = *(&v146 + 1);
        v185 = v146;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v890[0] = v152;
        sub_1AF855B50(v183, v146, *(&v146 + 1), isUniquelyReferenced_nonNull_native);

        sub_1AF82567C(*&v890[0], v809);
        sub_1AFAD2E00(v182, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v95 = v830;
        v115 = v818;
        goto LABEL_113;
      }
    }

    v168 = sub_1AFDFCEF8();
    v170 = v169;
    if (v168 == sub_1AFDFCEF8() && v170 == v171)
    {
      v172 = v132;
    }

    else
    {
      v187 = sub_1AFDFEE28();
      v188 = v132;

      if ((v187 & 1) == 0)
      {
        v272 = sub_1AFDFCEF8();
        v274 = v273;
        if (v272 == sub_1AFDFCEF8() && v274 == v275)
        {
        }

        else
        {
          v276 = sub_1AFDFEE28();

          if ((v276 & 1) == 0)
          {
            v300 = v809 | (v142 << 32);
            v301 = sub_1AF9713C4(v300, v135);
            if (v301)
            {
              v302 = v301;
            }

            else
            {
              v302 = MEMORY[0x1E69E7CC0];
            }

            sub_1AFACFD88(v807, v771, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v302 = sub_1AF424448(0, v302[2] + 1, 1, v302);
            }

            v115 = v818;
            v304 = v302[2];
            v303 = v302[3];
            if (v304 >= v303 >> 1)
            {
              v302 = sub_1AF424448(v303 > 1, v304 + 1, 1, v302);
            }

            v302[2] = v304 + 1;
            sub_1AFAD06F0(v771, v302 + ((*(v822 + 80) + 32) & ~*(v822 + 80)) + *(v822 + 72) * v304, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            sub_1AF8254E8(v302, v300);
            sub_1AFAD2E00(v807, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            v95 = v830;
            goto LABEL_71;
          }
        }

        v277 = v773;
        v278 = v774;
        v279 = (v774 + *(v773 + 48));
        sub_1AFACFD88(v807, v774, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v280 = v899[7];
        v279[6] = v899[6];
        v279[7] = v280;
        v279[8] = v899[8];
        v281 = v899[3];
        v279[2] = v899[2];
        v279[3] = v281;
        v282 = v899[5];
        v279[4] = v899[4];
        v279[5] = v282;
        v283 = v899[1];
        *v279 = v899[0];
        v279[1] = v283;
        v284 = v278;
        v285 = v772;
        sub_1AFAD0584(v284, v772, &unk_1ED724700, &type metadata for MotionTrackingParams);
        v286 = (v285 + *(v277 + 48));
        v287 = v286[7];
        v893 = v286[6];
        v894 = v287;
        v895 = v286[8];
        v288 = v286[4];
        v892 = v286[5];
        v891[1] = v288;
        v289 = v286[2];
        v891[0] = v286[3];
        v890[2] = v289;
        v290 = *v286;
        v890[1] = v286[1];
        v890[0] = v290;
        v291 = (v775 + *(v277 + 48));
        sub_1AFAD06F0(v285, v775, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v292 = v894;
        v291[6] = v893;
        v291[7] = v292;
        v291[8] = v895;
        v293 = v891[0];
        v291[2] = v890[2];
        v291[3] = v293;
        v294 = v892;
        v291[4] = v891[1];
        v291[5] = v294;
        v295 = v890[1];
        *v291 = v890[0];
        v291[1] = v295;
        v296 = v755;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v296 = sub_1AF4241B8(0, v296[2] + 1, 1, v296);
        }

        v95 = v830;
        v115 = v818;
        v298 = v296[2];
        v297 = v296[3];
        if (v298 >= v297 >> 1)
        {
          v296 = sub_1AF4241B8(v297 > 1, v298 + 1, 1, v296);
        }

        v225 = &unk_1ED724700;
        v226 = &type metadata for MotionTrackingParams;
        sub_1AFAD0600(v774, &unk_1ED724700, &type metadata for MotionTrackingParams);
        sub_1AFAD2E00(v807, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        v296[2] = v298 + 1;
        v299 = (*(v741 + 80) + 32) & ~*(v741 + 80);
        v755 = v296;
        v228 = v296 + v299 + *(v741 + 72) * v298;
        v229 = v775;
LABEL_70:
        sub_1AFAD0674(v229, v228, v225, v226);
        v132 = v810;
LABEL_71:
        sub_1AF4470F0(&v881);
        goto LABEL_22;
      }
    }

    v189 = v768[7];
    v809 = v768[6];
    v190 = v768[9];
    v758 = v768[8];
    v759 = v189;
    v757 = v190;
    v191 = v768[2];
    v752 = v768[3];
    v753 = v191;
    v192 = v768[4];
    v750 = v768[5];
    v751 = v192;
    v193 = v768[10];
    v748 = v768[11];
    v749 = v193;
    v194 = v782;
    v195 = v788;
    v196 = (v788 + *(v782 + 48));
    v197 = v768[12];
    v746 = v768[13];
    v747 = v197;
    sub_1AFACFD88(v807, v788, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
    v199 = v758;
    v198 = v759;
    *v196 = v809;
    v196[1] = v198;
    v200 = v757;
    v196[2] = v199;
    v196[3] = v200;
    v201 = v752;
    v196[4] = v753;
    v196[5] = v201;
    v202 = v750;
    v196[6] = v751;
    v196[7] = v202;
    v203 = v748;
    v196[8] = v749;
    v196[9] = v203;
    v204 = v746;
    v196[10] = v747;
    v196[11] = v204;
    v205 = v195;
    v206 = v781;
    sub_1AFAD0584(v205, v781, qword_1ED724720, &type metadata for GazeTrackingParams);
    v207 = (v206 + *(v194 + 48));
    v208 = v207[9];
    v895 = v207[8];
    v896 = v208;
    v209 = v207[11];
    v897 = v207[10];
    v898 = v209;
    v210 = v207[5];
    v891[1] = v207[4];
    v892 = v210;
    v211 = v207[7];
    v893 = v207[6];
    v894 = v211;
    v212 = v207[1];
    v890[0] = *v207;
    v890[1] = v212;
    v213 = v207[2];
    v891[0] = v207[3];
    v890[2] = v213;
    v214 = (v789 + *(v194 + 48));
    sub_1AFAD06F0(v206, v789, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
    v215 = v896;
    v214[8] = v895;
    v214[9] = v215;
    v216 = v898;
    v214[10] = v897;
    v214[11] = v216;
    v217 = v892;
    v214[4] = v891[1];
    v214[5] = v217;
    v218 = v894;
    v214[6] = v893;
    v214[7] = v218;
    v219 = v890[1];
    *v214 = v890[0];
    v214[1] = v219;
    v220 = v891[0];
    v214[2] = v890[2];
    v214[3] = v220;
    v221 = v770;
    v222 = swift_isUniquelyReferenced_nonNull_native();
    v95 = v830;
    v115 = v818;
    if ((v222 & 1) == 0)
    {
      v221 = sub_1AF4241D4(0, v221[2] + 1, 1, v221);
    }

    v224 = v221[2];
    v223 = v221[3];
    if (v224 >= v223 >> 1)
    {
      v221 = sub_1AF4241D4(v223 > 1, v224 + 1, 1, v221);
    }

    v225 = qword_1ED724720;
    v226 = &type metadata for GazeTrackingParams;
    sub_1AFAD0600(v788, qword_1ED724720, &type metadata for GazeTrackingParams);
    sub_1AFAD2E00(v807, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
    v221[2] = v224 + 1;
    v227 = (*(v783 + 80) + 32) & ~*(v783 + 80);
    v770 = v221;
    v228 = v221 + v227 + *(v783 + 72) * v224;
    v229 = v789;
    goto LABEL_70;
  }

  v776 = MEMORY[0x1E69E7CC0];
  v796 = MEMORY[0x1E69E7CC0];
  v770 = MEMORY[0x1E69E7CC0];
  v755 = MEMORY[0x1E69E7CC0];
  v766 = MEMORY[0x1E69E7CC0];
LABEL_123:

  v305 = swift_unknownObjectWeakLoadStrong();
  if (!v305)
  {

    sub_1AF0D9DB0(&v900, &qword_1ED725EA0, &type metadata for QueryResult);
    sub_1AFAD2E00(v857, sub_1AFAD0470);

    v111 = v95;
    goto LABEL_177;
  }

  v306 = *(v765 + 16);
  v307 = v769;
  v795 = v305;
  if (v306)
  {
    v308 = (v765 + 32);
    do
    {
      v310 = *v308;
      v309 = v308[1];
      *(v856 + 13) = *(v308 + 29);
      v855 = v310;
      v856[0] = v309;
      v311 = *(&v310 + 1);
      v312 = v309;
      if (BYTE12(v856[1]))
      {
        sub_1AFAD0758(&v855, v890);
        v313 = v803;
        v314 = sub_1AF419914(v311, v312);
        if (v315)
        {
          v316 = v314;
          v317 = swift_isUniquelyReferenced_nonNull_native();
          *&v890[0] = v313;
          sub_1AF842EDC(v317, v313->length);
          v318 = *&v890[0];

          v319 = *(*(v318 + 56) + 48 * v316);

          v803 = v318;
          sub_1AF6B4360(v316, v318);
        }

        sub_1AFAD0790(&v855);
      }

      else if (*&v856[1] <= 0.0)
      {
        sub_1AFAD0758(&v855, v890);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v307 = sub_1AF424088(0, *(v307 + 2) + 1, 1, v307);
        }

        v323 = *(v307 + 2);
        v322 = *(v307 + 3);
        if (v323 >= v322 >> 1)
        {
          v307 = sub_1AF424088(v322 > 1, v323 + 1, 1, v307);
        }

        *(v307 + 2) = v323 + 1;
        v324 = &v307[48 * v323];
        v325 = v855;
        v326 = v856[0];
        *(v324 + 61) = *(v856 + 13);
        *(v324 + 2) = v325;
        *(v324 + 3) = v326;
      }

      else
      {
        sub_1AFAD0758(&v855, v890);
        sub_1AFAD0758(&v855, v890);
        v320 = v803;
        v321 = swift_isUniquelyReferenced_nonNull_native();
        *&v890[0] = v320;
        sub_1AF855808(&v855, v311, v312, v321);
        sub_1AFAD0790(&v855);
        v803 = *&v890[0];
      }

      v308 += 3;
      --v306;
    }

    while (v306);
  }

  v327 = MEMORY[0x1E69E7CC0];
  v328 = v830;
  sub_1AFBFFEAC();
  v329 = *(v307 + 2);
  *&v807 = @"VFXTriggerTypeTick";
  v810 = v329;
  v769 = v307;
  if (v329)
  {
    v330 = 0;
    *&v809 = v307 + 32;
    v331 = MEMORY[0x1E69E7CC0];
    v332 = v832;
    while (1)
    {
      v813 = v331;
      v333 = v809 + 48 * v330;
      v334 = *v333;
      v335 = *(v333 + 8);
      v336 = *(v333 + 16);
      v337 = *(v333 + 24);
      v338 = *&v797[1].data;
      v829.f64[0] = v335;
      v817 = v330;
      if (*&v337 > v338)
      {
        v818 = v337;
        v339 = *(v333 + 40);
        v340 = *(v333 + 44);
        v341 = v334;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v331 = v813;
        }

        else
        {
          v331 = sub_1AF424088(0, *(v813 + 2) + 1, 1, v813);
        }

        v343 = *(v331 + 2);
        v342 = *(v331 + 3);
        v344 = v818;
        if (v343 >= v342 >> 1)
        {
          v364 = sub_1AF424088(v342 > 1, v343 + 1, 1, v331);
          v344 = v818;
          v331 = v364;
        }

        *(v331 + 2) = v343 + 1;
        v345 = &v331[48 * v343];
        v346 = v829.f64[0];
        *(v345 + 4) = v341;
        *(v345 + 5) = v346;
        *(v345 + 6) = v336;
        *(v345 + 56) = v344;
        *(v345 + 18) = v339;
        v345[76] = v340;
        goto LABEL_141;
      }

      v347 = v838[2];
      v808 = v334;

      if (v347 && (sub_1AF0D5878(v807), (v348 & 1) != 0))
      {
      }

      else
      {
        v349 = sub_1AF43E800(MEMORY[0x1E69E7CC0]);
      }

      v350 = 0;
      v351 = 1 << v349[32];
      if (v351 < 64)
      {
        v352 = ~(-1 << v351);
      }

      else
      {
        v352 = -1;
      }

      v353 = v352 & *(v349 + 8);
      v811 = ((v351 + 63) >> 6);
      v812[0] = v349;
      while (1)
      {
LABEL_157:
        if (v353)
        {
          goto LABEL_161;
        }

LABEL_158:
        v354 = v350 + 1;
        if (v350 + 1 >= v811)
        {
          break;
        }

        v353 = *&v349[8 * v350++ + 72];
        if (!v353)
        {
          goto LABEL_158;
        }

        v350 = v354;
LABEL_161:
        v355 = __clz(__rbit64(v353));
        v353 &= v353 - 1;
        v356 = *(*(v349 + 7) + ((v350 << 9) | (8 * v355)));
        v357 = *(v356 + 16);
        if (v357)
        {
          v358 = v822;
          v359 = v356 + ((*(v822 + 80) + 32) & ~*(v822 + 80));
          *&v818 = *(*(v349 + 7) + ((v350 << 9) | (8 * v355)));

          v360 = *(v358 + 72);
          while (1)
          {
            sub_1AFACFD88(v359, v332, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            sub_1AF9B3B24(v332 + 16, v890);
            if (LOBYTE(v890[2]) == 1)
            {
              break;
            }

            sub_1AFAD2E00(v332, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            sub_1AF4470F0(v890);
LABEL_164:
            v359 += v360;
            if (!--v357)
            {

              v349 = v812[0];
              goto LABEL_157;
            }
          }

          if (*&v890[0] == *&v335 && *(&v890[0] + 1) == v336)
          {
          }

          else
          {
            v362 = sub_1AFDFEE28();

            if ((v362 & 1) == 0)
            {
              goto LABEL_174;
            }
          }

          v363 = *(v832 + 56);
          sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
          v363();
          v332 = v832;

LABEL_174:
          sub_1AFAD2E00(v332, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v335 = v829.f64[0];
          goto LABEL_164;
        }
      }

      v328 = v830;
      v331 = v813;
LABEL_141:
      v330 = v817 + 1;
      if (v817 + 1 == v810)
      {
        goto LABEL_179;
      }
    }
  }

  v331 = v327;
LABEL_179:
  v813 = v331;
  swift_bridgeObjectRetain_n();

  v365 = 1 << LOBYTE(v803[1].isa);
  if (v365 < 64)
  {
    v366 = ~(-1 << v365);
  }

  else
  {
    v366 = -1;
  }

  v367 = v366 & v803[2].isa;
  v368 = ((v365 + 63) >> 6);

  v369 = 0;
  v801 = MEMORY[0x1E69E7CC8];
  v370 = v825;
  v810 = v368;
  if (v367)
  {
LABEL_183:
    while (1)
    {
      v371 = v369;
      v372 = v803;
LABEL_187:
      v373 = __clz(__rbit64(v367));
      v367 &= v367 - 1;
      v374 = v373 | (v371 << 6);
      v375 = &v372[1].data[16 * v374];
      v377 = *v375;
      v376 = *(v375 + 8);
      v378 = (v372[1].length + 48 * v374);
      v379 = *v378;
      v380 = v378[1];
      *(v854 + 13) = *(v378 + 29);
      v854[0] = v380;
      v853 = v379;
      if (*(&v380 + 1) <= *&v797[1].data)
      {
        break;
      }

      sub_1AFAD0758(&v853, v890);

      sub_1AFAD0758(&v853, v890);
      v381 = v801;
      v382 = swift_isUniquelyReferenced_nonNull_native();
      *&v890[0] = v381;
      sub_1AF855808(&v853, v377, v376, v382);
      sub_1AFAD0790(&v853);

      v801 = *&v890[0];
      v369 = v371;
      if (!v367)
      {
        goto LABEL_184;
      }
    }

    v383 = v838;

    sub_1AFAD0758(&v853, v890);
    v384 = sub_1AF9713AC(v807, v383);
    v817 = v367;
    v812[0] = v376;
    v811 = v377;
    if (!v384)
    {
      v384 = sub_1AF43E800(MEMORY[0x1E69E7CC0]);
    }

    v385 = 0;
    v386 = 1 << *(v384 + 32);
    if (v386 < 64)
    {
      v387 = ~(-1 << v386);
    }

    else
    {
      v387 = -1;
    }

    v388 = v387 & *(v384 + 64);
    *&v818 = (v386 + 63) >> 6;
    *&v829.f64[0] = v384;
    while (1)
    {
LABEL_197:
      if (v388)
      {
        goto LABEL_201;
      }

      do
      {
        v389 = v385 + 1;
        if (v385 + 1 >= v818)
        {

          v399 = v853;
          v400 = *&v854[1] + *&v797[1].data;
          v847 = v853;
          v848 = *&v854[0];
          v849 = v400;
          v850 = *&v854[1];
          v851 = DWORD2(v854[1]) + 1;
          v852 = BYTE12(v854[1]);
          sub_1AFAD0758(&v847, v890);
          v401 = v801;
          v402 = swift_isUniquelyReferenced_nonNull_native();
          *&v890[0] = v401;
          sub_1AF855808(&v847, v811, v812[0], v402);

          v801 = *&v890[0];

          v369 = v371;
          v368 = v810;
          v367 = v817;
          if (!v817)
          {
            goto LABEL_184;
          }

          goto LABEL_183;
        }

        v388 = *(v384 + 8 * v385++ + 72);
      }

      while (!v388);
      v385 = v389;
LABEL_201:
      v390 = __clz(__rbit64(v388));
      v388 &= v388 - 1;
      v391 = *(*(v384 + 56) + ((v385 << 9) | (8 * v390)));
      v392 = *(v391 + 16);
      if (v392)
      {
        v393 = v822;
        v394 = v391 + ((*(v822 + 80) + 32) & ~*(v822 + 80));
        *&v832 = *(*(v384 + 56) + ((v385 << 9) | (8 * v390)));

        v395 = *(v393 + 72);
        while (1)
        {
          sub_1AFACFD88(v394, v370, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          sub_1AF9B3B24(v370 + 16, v890);
          if (LOBYTE(v890[2]) == 1)
          {
            break;
          }

          sub_1AFAD2E00(v370, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          sub_1AF4470F0(v890);
LABEL_204:
          v394 += v395;
          if (!--v392)
          {

            v328 = v830;
            v384 = *&v829.f64[0];
            goto LABEL_197;
          }
        }

        if (*&v890[0] == *(&v853 + 1) && *(&v890[0] + 1) == *&v854[0])
        {
        }

        else
        {
          v397 = sub_1AFDFEE28();

          if ((v397 & 1) == 0)
          {
            goto LABEL_214;
          }
        }

        v398 = *(v825 + 56);
        sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
        v398();
        v370 = v825;

LABEL_214:
        sub_1AFAD2E00(v370, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
        goto LABEL_204;
      }
    }
  }

LABEL_184:
  v372 = v803;
  while (1)
  {
    v371 = v369 + 1;
    if (v369 + 1 >= v368)
    {
      break;
    }

    v367 = *(&v803[2].info + v369++);
    if (v367)
    {
      goto LABEL_187;
    }
  }

  swift_bridgeObjectRetain_n();

  sub_1AFBFFF2C();

  v403 = v744;
  v404 = sub_1AF449D1C(v744);
  if (v404)
  {
    v405 = v404;
    v406 = 0;
    v407 = v837;
    v408 = v403 + 32;
    v811 = v404;
    v810 = v837;
    *&v809 = v403 + 32;
    do
    {
      v409 = (v408 + 80 * v406);
      v890[0] = *v409;
      v410 = v409[1];
      v411 = v409[2];
      v412 = v409[3];
      *(v891 + 13) = *(v409 + 61);
      v891[0] = v412;
      v890[2] = v411;
      v890[1] = v410;
      v882 = v409[1];
      v883 = v409[2];
      v884[0] = v409[3];
      *(v884 + 13) = *(v409 + 61);
      v881 = *v409;
      if (*(v407 + 2))
      {
        v413 = *&v890[0];
        sub_1AFAD07C4(v890, &v917);
        v414 = v413;
        v415 = sub_1AF0D5878(v414);
        if (v416)
        {
          *&v818 = v406;
          v417 = *&v890[1];
          v418 = *(&v890[0] + 1);
          v419 = *(*(v407 + 7) + 8 * v415);

          v420 = 1 << *(v419 + 32);
          if (v420 < 64)
          {
            v421 = ~(-1 << v420);
          }

          else
          {
            v421 = -1;
          }

          v422 = v421 & *(v419 + 64);
          v423 = (v420 + 63) >> 6;
          *&v829.f64[0] = v418;
          v817 = v418;
          *&v832 = v417;
          v812[0] = v417;
          v424 = 0;
          *&v825 = v419;
          v425 = v419 + 72;
          while (1)
          {
            if (v422)
            {
              v426 = v424;
LABEL_237:
              v429 = __clz(__rbit64(v422));
              v422 &= v422 - 1;
              v430 = v429 | (v426 << 6);
              v431 = *(v825 + 48) + 16 * v430;
              v433 = *v431;
              v432 = *(v431 + 8);
              v434 = v819;
              sub_1AFACFD88(*(v825 + 56) + *(v822 + 72) * v430, v819, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
              sub_1AFAD03B8(0);
              v436 = v435;
              v437 = *(v435 + 48);
              v438 = v820;
              *v820 = v433;
              *(v438 + 8) = v432;
              sub_1AFAD06F0(v434, v438 + v437, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
              (*(*(v436 - 8) + 56))(v438, 0, 1, v436);
              v439 = v432;
              v440 = v433;
            }

            else
            {
              v427 = v423 <= v424 + 1 ? v424 + 1 : v423;
              v428 = v427 - 1;
              while (1)
              {
                v426 = v424 + 1;
                if (v424 + 1 >= v423)
                {
                  break;
                }

                v422 = *(v425 + 8 * v424++);
                if (v422)
                {
                  v424 = v426;
                  goto LABEL_237;
                }
              }

              sub_1AFAD03B8(0);
              v436 = v446;
              v438 = v820;
              (*(*(v446 - 8) + 56))(v820, 1, 1, v446);
              v422 = 0;
              v424 = v428;
            }

            v441 = v824;
            sub_1AFAD0B30(v438, v824, &qword_1ED7246E0, sub_1AFAD03B8, sub_1AFACFCD8);
            sub_1AFAD03B8(0);
            if ((*(*(v436 - 8) + 48))(v441, 1, v436) == 1)
            {
              break;
            }

            v443 = *v441;
            v442 = *(v441 + 8);
            v444 = v821;
            sub_1AFAD06F0(v441 + *(v436 + 48), v821, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
            LOBYTE(v917) = 0;
            v445 = sub_1AFAC4A08(*&v829.f64[0], v832, &v917, v443, v442);
            if (v445)
            {
              BYTE12(v884[1]) = v917;
              MEMORY[0x1EEE9AC00](v445);
              *(&v738 - 2) = v444;
              sub_1AFAC8A4C(v830, sub_1AFAD3AD8);
            }

            sub_1AFAD2E00(v444, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          }

          v919 = v883;
          v920[0] = v884[0];
          *(v920 + 13) = *(v884 + 13);
          v918 = v882;
          v917 = v881;
          sub_1AFAD07FC(&v917);

          v328 = v830;
          v405 = v811;
          v406 = v818;
          v407 = v810;
          v408 = v809;
          goto LABEL_220;
        }
      }

      else
      {
        sub_1AFAD07C4(v890, &v917);
      }

      v919 = v883;
      v920[0] = v884[0];
      *(v920 + 13) = *(v884 + 13);
      v918 = v882;
      v917 = v881;
      sub_1AFAD07FC(&v917);
LABEL_220:
      v406 = v406 + 1;
    }

    while (v406 != v405);
  }

  v447 = v766;
  v811 = sub_1AF449D1C(v766);
  if (!v811)
  {
LABEL_263:

    v476 = v778;
    if (v844 == 1)
    {
      v477 = v776;
      v478 = sub_1AF449D1C(v776);
      if (v478)
      {
        v479 = v478;
        v480 = v476 + *(v785 + 48);
        v481 = v477 + ((*(v786 + 80) + 32) & ~*(v786 + 80));
        v482 = *(v786 + 72);
        v821 = xmmword_1AFE4C620;
        v483 = v819;
        do
        {
          sub_1AFAD0584(v481, v476, &unk_1ED724710, &type metadata for HandTrackingParams);
          v484 = *(v480 + 16);
          v832 = *v480;
          v829 = v484;
          v485 = *(v480 + 32);
          v824 = *(v480 + 48);
          v825 = v485;
          v486 = *(v480 + 64);
          sub_1AFAD06F0(v476, v483, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v890[0] = v832;
          v890[1] = v829;
          v890[2] = v825;
          v891[0] = v824;
          LOBYTE(v881) = v486;
          sub_1AFAD0A24(0);
          v487 = swift_allocObject();
          strcpy((v487 + 32), "worldTransform");
          *(v487 + 16) = v821;
          *(v487 + 47) = -18;
          *(v487 + 48) = v890;
          *(v487 + 56) = 0x64656B63617274;
          *(v487 + 64) = 0xE700000000000000;
          *(v487 + 72) = &v881;
          v488 = sub_1AF43E4E8(v487);
          swift_setDeallocating();
          sub_1AF0D8108(0, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          (*(v483 + 56))(v488);

          sub_1AFAD2E00(v483, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v481 += v482;
          --v479;
        }

        while (v479);
      }
    }

    if (v845 == 1)
    {
      v489 = v770;
      v490 = sub_1AF449D1C(v770);
      if (v490)
      {
        v491 = (v791 + *(v782 + 48));
        v492 = v489 + ((*(v783 + 80) + 32) & ~*(v783 + 80));
        *&v832 = 0x80000001AFF222F0;
        *&v829.f64[0] = 0x80000001AFF22310;
        *&v825 = 0x80000001AFF22330;
        v820 = *(v783 + 72);
        *&v824 = &v884[1];
        v493 = v490 - 1;
        v821 = xmmword_1AFE4C680;
        while (1)
        {
          v494 = v791;
          sub_1AFAD0584(v492, v791, qword_1ED724720, &type metadata for GazeTrackingParams);
          v495 = v491[9];
          v895 = v491[8];
          v896 = v495;
          v496 = v491[11];
          v897 = v491[10];
          v898 = v496;
          v497 = v491[5];
          v891[1] = v491[4];
          v892 = v497;
          v498 = v491[7];
          v893 = v491[6];
          v894 = v498;
          v499 = v491[1];
          v890[0] = *v491;
          v890[1] = v499;
          v500 = v491[3];
          v890[2] = v491[2];
          v891[0] = v500;
          v501 = v819;
          sub_1AFAD06F0(v494, v819, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v888[0] = v895;
          v888[1] = v896;
          v888[2] = v897;
          v888[3] = v898;
          v884[1] = v891[1];
          v885 = v892;
          v886 = v893;
          v887 = v894;
          v881 = v890[0];
          v882 = v890[1];
          v883 = v890[2];
          v884[0] = v891[0];
          sub_1AFAD0A24(0);
          v502 = swift_allocObject();
          *(v502 + 16) = v821;
          *(v502 + 32) = 0xD000000000000015;
          *(v502 + 40) = v832;
          *(v502 + 48) = &v881;
          v503 = v829.f64[0];
          *(v502 + 56) = 0xD000000000000014;
          *(v502 + 64) = v503;
          *(v502 + 72) = v824;
          *(v502 + 80) = 0xD000000000000016;
          *(v502 + 88) = v825;
          *(v502 + 96) = v888;
          v504 = sub_1AF43E4E8(v502);
          swift_setDeallocating();
          sub_1AF0D8108(0, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          (*(v501 + 56))(v504);

          sub_1AFAD2E00(v501, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          if (!v493)
          {
            break;
          }

          --v493;
          v492 += v820;
        }
      }
    }

    v505 = v830;
    if (v846 == 1)
    {
      v506 = v755;
      v507 = sub_1AF449D1C(v755);
      if (v507)
      {
        v508 = v507;
        v509 = v739;
        v510 = &v739[*(v773 + 48)];
        v511 = v506 + ((*(v741 + 80) + 32) & ~*(v741 + 80));
        v512 = *(v741 + 72);
        v513 = v819;
        do
        {
          sub_1AFAD0584(v511, v509, &unk_1ED724700, &type metadata for MotionTrackingParams);
          v514 = *(v510 + 7);
          v893 = *(v510 + 6);
          v894 = v514;
          v895 = *(v510 + 8);
          v515 = *(v510 + 3);
          v890[2] = *(v510 + 2);
          v891[0] = v515;
          v516 = *(v510 + 4);
          v892 = *(v510 + 5);
          v891[1] = v516;
          v517 = *v510;
          v890[1] = *(v510 + 1);
          v890[0] = v517;
          sub_1AFAD06F0(v509, v513, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          sub_1AFAC3E18(v890, v513);
          sub_1AFAD2E00(v513, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
          v511 += v512;
          --v508;
        }

        while (v508);
      }
    }

    v518 = v842;
    *&v809 = sub_1AF449D1C(v842);
    if (v809)
    {
      v519 = 0;
      v808 = v518 + 32;
      *&v807 = @"VFXTriggerTypeTapBegan";
      v802 = @"VFXTriggerTypeTapDragged";
      v803 = @"VFXTriggerTypeTapEnded";
      info = @"VFXTriggerTypeTapCancelled";
      v798 = @"VFXTriggerTypeMouseMoved";
      v799 = @"VFXTriggerTypeKeyDown";
      v797 = @"VFXTriggerTypeKeyUp";
      v806 = @"kHitTestIgnoreChildNodes";
      v805 = @"kHitTestRootNode";
      v804 = xmmword_1AFE4C620;
      do
      {
        *&v825 = v519;
        sub_1AFAD082C(v808 + 32 * v519, &v833);
        sub_1AFAC34F4(&v878);
        v523 = v838;
        v524 = v838[2];
        v525 = v833;
        v526 = v525;
        if (v524 && (v527 = sub_1AF0D5878(v525), (v528 & 1) != 0))
        {
          v529 = *(*(v523 + 56) + 8 * v527);
        }

        else
        {
          v529 = sub_1AF43E800(MEMORY[0x1E69E7CC0]);
        }

        v530 = sub_1AFDFCEF8();
        v532 = v531;
        v534 = v530 == sub_1AFDFCEF8() && v532 == v533;
        *&v832 = v526;
        if (v534)
        {
        }

        else
        {
          v535 = sub_1AFDFEE28();

          if ((v535 & 1) == 0)
          {
            v575 = sub_1AFDFCEF8();
            v577 = v576;
            if (v575 == sub_1AFDFCEF8() && v577 == v578)
            {
              goto LABEL_324;
            }

            v579 = sub_1AFDFEE28();

            if (v579)
            {
              goto LABEL_327;
            }

            v646 = sub_1AFDFCEF8();
            v648 = v647;
            if (v646 == sub_1AFDFCEF8() && v648 == v649)
            {
              goto LABEL_324;
            }

            v650 = sub_1AFDFEE28();

            if (v650)
            {
              goto LABEL_327;
            }

            v651 = sub_1AFDFCEF8();
            v653 = v652;
            if (v651 == sub_1AFDFCEF8() && v653 == v654)
            {
LABEL_324:

LABEL_328:
              v580 = v843;
              if (*(v843 + 16))
              {
                v581 = sub_1AF449CB8(0);
                if (v582)
                {
                  if (v529[2])
                  {
                    v583 = *(*(v580 + 56) + 8 * v581);
                    v584 = sub_1AF449D3C(v583);
                    if (v585)
                    {
                      v586 = *(v529[7] + 8 * v584);

                      v587 = v836;
                      if (v836[2] && (v588 = sub_1AF449D3C(v583), (v589 & 1) != 0) && (v590 = *(v587[7] + 8 * v588), v591 = v834[7], (v592 = swift_unknownObjectWeakLoadStrong()) != 0))
                      {
                        v593 = v592;
                        v829 = vcvtq_f64_f32(v591);
                        sub_1AFAD08C0(0, &unk_1EB642790, &qword_1EB638440, type metadata accessor for VFXHitTestOption, sub_1AFAD092C);
                        v594 = swift_allocObject();
                        v595 = sub_1AF757508(v594, 2);
                        v597 = v596;
                        v598 = v806;
                        *v596 = v806;
                        *(v596 + 8) = 1;
                        v599 = v805;
                        *(v596 + 32) = MEMORY[0x1E69E6370];
                        *(v596 + 40) = v599;
                        *(v596 + 72) = sub_1AF0D4478(0, &qword_1ED72F7F0, &off_1E7A77B60);
                        *(v597 + 48) = v590;
                        v600 = v590;
                        v601 = v598;
                        v602 = v599;
                        sub_1AF43EA40(v595);

                        type metadata accessor for VFXHitTestOption(0);
                        sub_1AFAD0C04(&qword_1EB637E00, type metadata accessor for VFXHitTestOption, byte_1AFE4BE40);
                        v603 = sub_1AFDFCBE8();

                        v604 = [v593 hitTest:v603 options:*&v829];

                        sub_1AF0D4478(0, &qword_1EB6427A0, &off_1E7A77AA8);
                        sub_1AFDFD418();

                        v605 = sub_1AF449CFC();

                        if (v605)
                        {
                          MEMORY[0x1EEE9AC00](v606);
                          *(&v738 - 2) = v586;
                          v607 = v880;
                          sub_1AF448018(&v878, v880);
                          (*(*(&v607 + 1) + 8))(v830, v826, v827, sub_1AFAD0998, &v738 - 4, v607, *(&v607 + 1));
                        }

                        else
                        {
                        }
                      }

                      else
                      {
                      }

LABEL_375:
                      v660 = sub_1AFDFCEF8();
                      v662 = v661;
                      if (v660 == sub_1AFDFCEF8() && v662 == v663)
                      {
LABEL_377:
                      }

                      else
                      {
                        v664 = sub_1AFDFEE28();

                        if ((v664 & 1) == 0)
                        {
                          v665 = sub_1AFDFCEF8();
                          v667 = v666;
                          if (v665 == sub_1AFDFCEF8() && v667 == v668)
                          {
                            goto LABEL_377;
                          }

                          v669 = sub_1AFDFEE28();

                          if ((v669 & 1) == 0)
                          {
                            goto LABEL_279;
                          }
                        }
                      }

                      sub_1AF850CFC(0);
                      goto LABEL_279;
                    }
                  }
                }
              }

              v608 = v796[2];
              v609 = v816;
              if (!v608)
              {
                goto LABEL_375;
              }

              *&v829.f64[0] = *(v793 + 48);
              v610 = *(v814 + 48);
              v611 = v796 + ((*(v792 + 80) + 32) & ~*(v792 + 80));
              v612 = *(v792 + 72);
              while (2)
              {
                v615 = v815;
                sub_1AFACFD88(v611, v815, sub_1AF442A54);
                sub_1AFAD06F0(v615 + *&v829.f64[0], v609, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                v616 = *(v615 + v610);
                sub_1AFAD2E00(v615, type metadata accessor for TriggerScript);
                v617 = sub_1AFDFCEF8();
                v619 = v618;
                if (v617 == sub_1AFDFCEF8() && v619 == v620)
                {

                  v609 = v816;
                }

                else
                {
                  v622 = sub_1AFDFEE28();

                  v609 = v816;
                  if ((v622 & 1) == 0)
                  {
LABEL_342:
                    sub_1AFAD2E00(v609, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                    v611 += v612;
                    if (!--v608)
                    {
                      goto LABEL_375;
                    }

                    continue;
                  }
                }

                break;
              }

              MEMORY[0x1EEE9AC00](v613);
              *(&v738 - 2) = v609;
              v614 = v880;
              sub_1AF448018(&v878, v880);
              (*(*(&v614 + 1) + 8))(v830, v826, v827, sub_1AFAD3AD8, &v738 - 4, v614, *(&v614 + 1));
              goto LABEL_342;
            }

            v655 = sub_1AFDFEE28();

            if (v655)
            {
LABEL_327:

              goto LABEL_328;
            }

            v656 = sub_1AFDFCEF8();
            v658 = v657;
            if (v656 == sub_1AFDFCEF8() && v658 == v659)
            {

              goto LABEL_386;
            }

            v670 = sub_1AFDFEE28();

            if (v670)
            {

LABEL_386:
              v671 = v796[2];
              if (!v671)
              {
                goto LABEL_279;
              }

              *&v829.f64[0] = *(v793 + 48);
              v672 = *(v814 + 48);
              v673 = v796 + ((*(v792 + 80) + 32) & ~*(v792 + 80));
              v674 = *(v792 + 72);
              while (2)
              {
                v678 = v745;
                sub_1AFACFD88(v673, v745, sub_1AF442A54);
                sub_1AFAD06F0(v678 + *&v829.f64[0], v756, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                v679 = *(v678 + v672);
                sub_1AFAD2E00(v678, type metadata accessor for TriggerScript);
                v680 = sub_1AFDFCEF8();
                v682 = v681;
                if (v680 == sub_1AFDFCEF8() && v682 == v683)
                {

                  v676 = v756;
                }

                else
                {
                  v685 = sub_1AFDFEE28();

                  v676 = v756;
                  if ((v685 & 1) == 0)
                  {
LABEL_390:
                    sub_1AFAD2E00(v676, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                    v673 += v674;
                    if (!--v671)
                    {
                      goto LABEL_279;
                    }

                    continue;
                  }
                }

                break;
              }

              MEMORY[0x1EEE9AC00](v675);
              *(&v738 - 2) = v676;
              v677 = v880;
              sub_1AF448018(&v878, v880);
              (*(*(&v677 + 1) + 8))(v830, v826, v827, sub_1AFAD0894, &v738 - 4, v677, *(&v677 + 1));
              goto LABEL_390;
            }

            v686 = sub_1AFDFCEF8();
            v688 = v687;
            if (v686 == sub_1AFDFCEF8() && v688 == v689)
            {
LABEL_400:

              goto LABEL_403;
            }

            v690 = sub_1AFDFEE28();

            if (v690)
            {

LABEL_403:
              v691 = sub_1AF9713AC(v526, v523);
              if (!v691)
              {
                v691 = sub_1AF43E800(MEMORY[0x1E69E7CC0]);
              }

              v692 = 0;
              v693 = 1 << *(v691 + 32);
              if (v693 < 64)
              {
                v694 = ~(-1 << v693);
              }

              else
              {
                v694 = -1;
              }

              v695 = v694 & *(v691 + 64);
              v820 = (v693 + 63) >> 6;
              *&v821 = v691;
              while (v695)
              {
LABEL_414:
                v697 = __clz(__rbit64(v695));
                v695 &= v695 - 1;
                v698 = *(*(v691 + 56) + ((v692 << 9) | (8 * v697)));
                v699 = *(*&v698 + 16);
                if (v699)
                {
                  *&v824 = v695;
                  v700 = v822;
                  v701 = *&v698 + ((*(v822 + 80) + 32) & ~*(v822 + 80));
                  v829.f64[0] = v698;

                  v702 = *(v700 + 72);
                  v703 = v754;
                  do
                  {
                    sub_1AFACFD88(v701, v703, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                    sub_1AF441194(&v878, v890);
                    sub_1AF5C5358(0, &qword_1EB642788, &protocol descriptor for TriggerParameterCallable);
                    if (swift_dynamicCast())
                    {
                      v704 = v881;
                      v705 = BYTE8(v881);
                      v706 = sub_1AF9B3B24(v703 + 16, v890);
                      if (LOBYTE(v890[2]) == 4)
                      {
                        v707 = 123;
                        switch(LOBYTE(v890[0]))
                        {
                          case 1:
                            goto LABEL_540;
                          case 2:
                            v707 = 124;
                            goto LABEL_540;
                          case 3:
                            v707 = 125;
                            goto LABEL_540;
                          case 4:
                            v707 = 126;
                            goto LABEL_540;
                          case 5:
                            v707 = 12;
                            goto LABEL_540;
                          case 6:
                            v707 = 13;
                            goto LABEL_540;
                          case 7:
                            v707 = 14;
                            goto LABEL_540;
                          case 8:
                            v707 = 15;
                            goto LABEL_540;
                          case 9:
                            v707 = 17;
                            goto LABEL_540;
                          case 0xA:
                            v707 = 16;
                            goto LABEL_540;
                          case 0xB:
                            v707 = 32;
                            goto LABEL_540;
                          case 0xC:
                            v707 = 34;
                            goto LABEL_540;
                          case 0xD:
                            v707 = 31;
                            goto LABEL_540;
                          case 0xE:
                            v707 = 35;
                            goto LABEL_540;
                          case 0xF:
                            v707 = 0;
                            goto LABEL_540;
                          case 0x10:
                            v707 = 1;
                            goto LABEL_540;
                          case 0x11:
                            v707 = 2;
                            goto LABEL_540;
                          case 0x12:
                            v707 = 3;
                            goto LABEL_540;
                          case 0x13:
                            v707 = 5;
                            goto LABEL_540;
                          case 0x14:
                            v707 = 4;
                            goto LABEL_540;
                          case 0x15:
                            v707 = 38;
                            goto LABEL_540;
                          case 0x16:
                            v707 = 40;
                            goto LABEL_540;
                          case 0x17:
                            v707 = 37;
                            goto LABEL_540;
                          case 0x18:
                            v707 = 6;
                            goto LABEL_540;
                          case 0x19:
                            v707 = 7;
                            goto LABEL_540;
                          case 0x1A:
                            v707 = 8;
                            goto LABEL_540;
                          case 0x1B:
                            v707 = 9;
                            goto LABEL_540;
                          case 0x1C:
                            v707 = 11;
                            goto LABEL_540;
                          case 0x1D:
                            v707 = 45;
                            goto LABEL_540;
                          case 0x1E:
                            v707 = 46;
                            goto LABEL_540;
                          case 0x1F:
                            v707 = 18;
                            goto LABEL_540;
                          case 0x20:
                            v707 = 19;
                            goto LABEL_540;
                          case 0x21:
                            v707 = 20;
                            goto LABEL_540;
                          case 0x22:
                            v707 = 21;
                            goto LABEL_540;
                          case 0x23:
                            v707 = 22;
                            goto LABEL_540;
                          case 0x24:
                            v707 = 23;
                            goto LABEL_540;
                          case 0x25:
                            v707 = 26;
                            goto LABEL_540;
                          case 0x26:
                            v707 = 28;
                            goto LABEL_540;
                          case 0x27:
                            v707 = 25;
                            goto LABEL_540;
                          case 0x28:
                            v707 = 29;
                            goto LABEL_540;
                          case 0x29:
                            v707 = 24;
                            goto LABEL_540;
                          case 0x2A:
                            v707 = 27;
                            goto LABEL_540;
                          case 0x2B:
                            v707 = 30;
                            goto LABEL_540;
                          case 0x2C:
                            v707 = 33;
                            goto LABEL_540;
                          case 0x2D:
                            v707 = 39;
                            goto LABEL_540;
                          case 0x2E:
                            v707 = 41;
                            goto LABEL_540;
                          case 0x2F:
                            v707 = 42;
                            goto LABEL_540;
                          case 0x30:
                            v707 = 43;
                            goto LABEL_540;
                          case 0x31:
                            v707 = 44;
                            goto LABEL_540;
                          case 0x32:
                            v707 = 47;
                            goto LABEL_540;
                          case 0x33:
                            v707 = 50;
                            goto LABEL_540;
                          case 0x34:
                            v707 = 65;
                            goto LABEL_540;
                          case 0x35:
                            v707 = 67;
                            goto LABEL_540;
                          case 0x36:
                            v707 = 69;
                            goto LABEL_540;
                          case 0x37:
                            v707 = 71;
                            goto LABEL_540;
                          case 0x38:
                            v707 = 75;
                            goto LABEL_540;
                          case 0x39:
                            v707 = 76;
                            goto LABEL_540;
                          case 0x3A:
                            v707 = 78;
                            goto LABEL_540;
                          case 0x3B:
                            v707 = 81;
                            goto LABEL_540;
                          case 0x3C:
                            v707 = 82;
                            goto LABEL_540;
                          case 0x3D:
                            v707 = 83;
                            goto LABEL_540;
                          case 0x3E:
                            v707 = 84;
                            goto LABEL_540;
                          case 0x3F:
                            v707 = 85;
                            goto LABEL_540;
                          case 0x40:
                            v707 = 86;
                            goto LABEL_540;
                          case 0x41:
                            v707 = 87;
                            goto LABEL_540;
                          case 0x42:
                            v707 = 88;
                            goto LABEL_540;
                          case 0x43:
                            v707 = 89;
                            goto LABEL_540;
                          case 0x44:
                            v707 = 91;
                            goto LABEL_540;
                          case 0x45:
                            v707 = 92;
                            goto LABEL_540;
                          case 0x46:
                            v707 = 36;
                            goto LABEL_540;
                          case 0x47:
                            v707 = 48;
                            goto LABEL_540;
                          case 0x48:
                            v707 = 49;
                            goto LABEL_540;
                          case 0x49:
                            v707 = 51;
                            goto LABEL_540;
                          case 0x4A:
                            v707 = 53;
                            goto LABEL_540;
                          case 0x4B:
                            v707 = 55;
                            goto LABEL_540;
                          case 0x4C:
                            v707 = 56;
                            goto LABEL_540;
                          case 0x4D:
                            v707 = 57;
                            goto LABEL_540;
                          case 0x4E:
                            v707 = 58;
                            goto LABEL_540;
                          case 0x4F:
                            v707 = 59;
                            goto LABEL_540;
                          case 0x50:
                            v707 = 54;
                            goto LABEL_540;
                          case 0x51:
                            v707 = 60;
                            goto LABEL_540;
                          case 0x52:
                            v707 = 61;
                            goto LABEL_540;
                          case 0x53:
                            v707 = 62;
                            goto LABEL_540;
                          case 0x54:
                            v707 = 63;
                            goto LABEL_540;
                          case 0x55:
                            v707 = 72;
                            goto LABEL_540;
                          case 0x56:
                            v707 = 73;
                            goto LABEL_540;
                          case 0x57:
                            v707 = 74;
                            goto LABEL_540;
                          case 0x58:
                            v707 = 110;
                            goto LABEL_540;
                          case 0x59:
                            v707 = 122;
                            goto LABEL_540;
                          case 0x5A:
                            v707 = 120;
                            goto LABEL_540;
                          case 0x5B:
                            v707 = 99;
                            goto LABEL_540;
                          case 0x5C:
                            v707 = 118;
                            goto LABEL_540;
                          case 0x5D:
                            v707 = 96;
                            goto LABEL_540;
                          case 0x5E:
                            v707 = 97;
                            goto LABEL_540;
                          case 0x5F:
                            v707 = 98;
                            goto LABEL_540;
                          case 0x60:
                            v707 = 100;
                            goto LABEL_540;
                          case 0x61:
                            v707 = 101;
                            goto LABEL_540;
                          case 0x62:
                            v707 = 109;
                            goto LABEL_540;
                          case 0x63:
                            v707 = 103;
                            goto LABEL_540;
                          case 0x64:
                            v707 = 111;
                            goto LABEL_540;
                          case 0x65:
                            v707 = 105;
                            goto LABEL_540;
                          case 0x66:
                            v707 = 107;
                            goto LABEL_540;
                          case 0x67:
                            v707 = 113;
                            goto LABEL_540;
                          case 0x68:
                            v707 = 106;
                            goto LABEL_540;
                          case 0x69:
                            v707 = 64;
                            goto LABEL_540;
                          case 0x6A:
                            v707 = 79;
                            goto LABEL_540;
                          case 0x6B:
                            v707 = 80;
                            goto LABEL_540;
                          case 0x6C:
                            v707 = 90;
                            goto LABEL_540;
                          case 0x6D:
                            v707 = 114;
                            goto LABEL_540;
                          case 0x6E:
                            v707 = 115;
                            goto LABEL_540;
                          case 0x6F:
                            v707 = 116;
                            goto LABEL_540;
                          case 0x70:
                            v707 = 117;
                            goto LABEL_540;
                          case 0x71:
                            v707 = 119;
                            goto LABEL_540;
                          case 0x72:
                            v707 = 121;
                            goto LABEL_540;
                          case 0x73:
                            v707 = 10;
                            goto LABEL_540;
                          case 0x74:
                            v707 = 93;
                            goto LABEL_540;
                          case 0x75:
                            v707 = 94;
                            goto LABEL_540;
                          case 0x76:
                            v707 = 95;
                            goto LABEL_540;
                          case 0x77:
                            v707 = 102;
                            goto LABEL_540;
                          case 0x78:
                            v707 = 104;
LABEL_540:
                            if (v707 == v704)
                            {
                              goto LABEL_541;
                            }

                            break;
                          default:
LABEL_541:
                            if ((BYTE1(v890[0]) & v705) != 1)
                            {
                              goto LABEL_546;
                            }

                            v708 = sub_1AFDFCEF8();
                            v710 = v709;
                            if (v708 == sub_1AFDFCEF8() && v710 == v711)
                            {
                            }

                            else
                            {
                              v712 = sub_1AFDFEE28();

                              if ((v712 & 1) == 0)
                              {
LABEL_546:
                                MEMORY[0x1EEE9AC00](v706);
                                *(&v738 - 2) = v754;
                                v713 = v880;
                                sub_1AF448018(&v878, v880);
                                (*(*(&v713 + 1) + 8))(v830, v826, v827, sub_1AFAD3AD8, &v738 - 4, v713, *(&v713 + 1));
                              }
                            }

                            break;
                        }
                      }

                      else
                      {
                        sub_1AF4470F0(v890);
                      }
                    }

                    v703 = v754;
                    sub_1AFAD2E00(v754, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                    v701 += v702;
                    --v699;
                  }

                  while (v699);

                  v691 = v821;
                  v695 = v824;
                }
              }

              while (1)
              {
                v696 = v692 + 1;
                if (v692 + 1 >= v820)
                {
                  break;
                }

                v695 = *(v691 + 8 * v692++ + 72);
                if (v695)
                {
                  v692 = v696;
                  goto LABEL_414;
                }
              }

              goto LABEL_279;
            }

            v714 = sub_1AFDFCEF8();
            v716 = v715;
            if (v714 == sub_1AFDFCEF8() && v716 == v717)
            {
              goto LABEL_400;
            }

            v718 = sub_1AFDFEE28();

            if (v718)
            {
              goto LABEL_403;
            }

            *&v821 = [objc_opt_self() worldWithWorldRef_];
            v719 = sub_1AF9713AC(v526, v523);
            if (!v719)
            {
              v719 = sub_1AF43E800(MEMORY[0x1E69E7CC0]);
            }

            v720 = 0;
            v721 = 1 << *(v719 + 32);
            if (v721 < 64)
            {
              v722 = ~(-1 << v721);
            }

            else
            {
              v722 = -1;
            }

            v723 = v722 & *(v719 + 64);
            *&v818 = (v721 + 63) >> 6;
            v724 = v819;
            v820 = v719;
            while (v723)
            {
LABEL_561:
              v726 = __clz(__rbit64(v723));
              v723 &= v723 - 1;
              v727 = *(*(v719 + 56) + ((v720 << 9) | (8 * v726)));
              v728 = *(v727 + 16);
              if (v728)
              {
                *&v829.f64[0] = v723;
                *&v832 = v720;
                v729 = v822;
                v730 = v727 + ((*(v822 + 80) + 32) & ~*(v822 + 80));
                *&v824 = v727;

                v731 = *(v729 + 72);
                v732 = v821;
                do
                {
                  v733 = sub_1AFACFD88(v730, v724, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                  v734 = *(v724 + 8);
                  MEMORY[0x1EEE9AC00](v733);
                  *(&v738 - 2) = v724;
                  v736 = *(&v880 + 1);
                  v735 = v880;
                  sub_1AF448018(&v878, v880);
                  v737 = v735;
                  v724 = v819;
                  (*(v736 + 16))(v732, v734, sub_1AFAD3AD8, &v738 - 4, v737, v736);
                  sub_1AFAD2E00(v724, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
                  v730 += v731;
                  --v728;
                }

                while (v728);

                v719 = v820;
                v720 = v832;
                v723 = *&v829.f64[0];
              }
            }

            while (1)
            {
              v725 = v720 + 1;
              if (v720 + 1 >= v818)
              {
                break;
              }

              v723 = *(v719 + 8 * v720++ + 72);
              if (v723)
              {
                v720 = v725;
                goto LABEL_561;
              }
            }

            v645 = *&v821;
            goto LABEL_364;
          }
        }

        v829.f64[0] = 0.0;
        v536 = 0;
        v537 = 0;
        v538 = 0;
        v539 = 1 << *(v529 + 32);
        if (v539 < 64)
        {
          v540 = ~(-1 << v539);
        }

        else
        {
          v540 = -1;
        }

        v541 = v540 & v529[8];
        v542 = 3.4028e38;
        v543 = (v539 + 63) >> 6;
        while (v541)
        {
          v544 = v541;
LABEL_301:
          v541 = (v544 - 1) & v544;
          v547 = v836;
          if (v836[2])
          {
            v548 = __clz(__rbit64(v544)) | (v538 << 6);
            v549 = *(v529[7] + 8 * v548);
            v550 = sub_1AF449D3C(*(v529[6] + 8 * v548));
            if (v551)
            {
              v552 = *(v547[7] + 8 * v550);
              v553 = v834[7];
              v554 = swift_unknownObjectWeakLoadStrong();
              if (v554)
              {
                *&v818 = v541;
                *&v821 = v537;
                *&v824 = v536;
                *v812 = vcvtq_f64_f32(v553);
                v810 = type metadata accessor for VFXHitTestOption;
                v811 = v554;
                sub_1AFAD08C0(0, &unk_1EB642790, &qword_1EB638440, type metadata accessor for VFXHitTestOption, sub_1AFAD092C);
                v555 = swift_allocObject();
                *(v555 + 16) = v804;
                v556 = v806;
                *(v555 + 32) = v806;
                *(v555 + 40) = 1;
                v557 = v805;
                *(v555 + 64) = MEMORY[0x1E69E6370];
                *(v555 + 72) = v557;
                *(v555 + 104) = sub_1AF0D4478(0, &qword_1ED72F7F0, &off_1E7A77B60);
                *(v555 + 80) = v552;
                v817 = v552;
                v820 = v549;

                v558 = v556;
                v559 = v557;
                sub_1AF43EA40(v555);
                swift_setDeallocating();
                sub_1AFAD092C(0, &qword_1EB638440, v810, MEMORY[0x1E69E7CA0] + 8);
                swift_arrayDestroy();
                swift_deallocClassInstance();
                type metadata accessor for VFXHitTestOption(0);
                sub_1AFAD0C04(&qword_1EB637E00, type metadata accessor for VFXHitTestOption, byte_1AFE4BE40);
                v560 = sub_1AFDFCBE8();

                v561 = v811;
                v562 = [v811 hitTest:v560 options:{*v812, *&v812[1]}];

                sub_1AF0D4478(0, &qword_1EB6427A0, &off_1E7A77AA8);
                v537 = sub_1AFDFD418();

                if (v537 >> 62)
                {
                  v563 = sub_1AFDFE108();
                }

                else
                {
                  v563 = *((v537 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v564 = v820;
                v541 = v818;
                if (v563 >= 1 && ((v537 & 0xC000000000000001) != 0 ? (v565 = MEMORY[0x1B2719C70](0, v537)) : (v565 = *(v537 + 32)), v566 = v565, [v565 sortingValue], v568 = v567, v566, v568 < v542))
                {

                  if ((v537 & 0xC000000000000001) != 0)
                  {
                    v569 = MEMORY[0x1B2719C70](0, v537);
                  }

                  else
                  {
                    v569 = *(v537 + 32);
                  }

                  v570 = v569;
                  [v569 sortingValue];
                  v542 = v571;

                  *&v829.f64[0] = v817;
                  v536 = v564;
                }

                else
                {

                  v536 = v824;
                  v537 = v821;
                }
              }
            }
          }
        }

        v545 = v831;
        while (1)
        {
          v546 = v538 + 1;
          if (v538 + 1 >= v543)
          {
            break;
          }

          v544 = v529[v538++ + 9];
          if (v544)
          {
            v538 = v546;
            goto LABEL_301;
          }
        }

        if (!v537 || !v536)
        {
          goto LABEL_350;
        }

        v572 = v829.f64[0];
        if (!*&v829.f64[0])
        {

LABEL_350:

LABEL_351:
          v623 = v796;
          v624 = sub_1AF449D1C(v796);
          if (v624)
          {
            v625 = v624;
            v626 = *(v793 + 48);
            v627 = *(v814 + 48);
            v628 = v623 + ((*(v792 + 80) + 32) & ~*(v792 + 80));
            v629 = *(v792 + 72);
            while (1)
            {
              v630 = v823;
              sub_1AFACFD88(v628, v823, sub_1AF442A54);
              sub_1AFAD06F0(v630 + v626, v545, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
              v631 = *(v630 + v627);
              sub_1AFAD2E00(v630, type metadata accessor for TriggerScript);
              v632 = sub_1AFDFCEF8();
              v634 = v633;
              if (v632 == sub_1AFDFCEF8() && v634 == v635)
              {
                break;
              }

              v637 = sub_1AFDFEE28();

              if (v637)
              {
                goto LABEL_361;
              }

LABEL_353:
              v545 = v831;
              sub_1AFAD2E00(v831, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
              v628 += v629;
              if (!--v625)
              {
                goto LABEL_363;
              }
            }

LABEL_361:
            MEMORY[0x1EEE9AC00](v638);
            *(&v738 - 2) = v831;
            v639 = v880;
            sub_1AF448018(&v878, v880);
            (*(*(&v639 + 1) + 8))(v830, v826, v827, sub_1AFAD3AD8, &v738 - 4, v639, *(&v639 + 1));
            v640 = sub_1AF449CB8(0);
            if (v641)
            {
              v642 = v640;
              v643 = swift_isUniquelyReferenced_nonNull_native();
              *&v890[0] = v843;
              v843 = 0x8000000000000000;
              sub_1AF842E84(v643, *(*&v890[0] + 24));
              v644 = *&v890[0];
              sub_1AF6B2F08(v642, *&v890[0]);
              v843 = v644;
            }

            goto LABEL_353;
          }

LABEL_363:
          v645 = v829.f64[0];
LABEL_364:

          goto LABEL_279;
        }

        sub_1AF441194(&v878, &v889);
        sub_1AF5C5358(0, &qword_1EB642788, &protocol descriptor for TriggerParameterCallable);
        v573 = *&v572;
        v574 = swift_dynamicCast();

        if ((v574 & 1) == 0)
        {

          v884[0] = 0u;
          v883 = 0u;
          v882 = 0u;
          v881 = 0u;
          sub_1AF0D9DB0(&v881, &qword_1EB6427A8, &type metadata for TriggerOSEvent.TapParams);
          v545 = v831;
          goto LABEL_351;
        }

        sub_1AFAD09A0(&v881, v890);
        v520 = sub_1AFABF06C(v537);

        *(&v891[0] + 1) = v520;
        sub_1AFAC8CAC(v890, v536);

        v521 = sub_1AF9A3170();
        v522 = swift_isUniquelyReferenced_nonNull_native();
        *&v881 = v843;
        sub_1AF852D2C(v521, 0, v522);

        v843 = v881;
        sub_1AFAD09F4(v890);
LABEL_279:
        v519 = v825 + 1;
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v878);
        sub_1AFAD0864(&v833);
        v505 = v830;
      }

      while (v519 != v809);
    }

    sub_1AF0D9DB0(&v900, &qword_1ED725EA0, &type metadata for QueryResult);
    sub_1AFAD2E00(v857, sub_1AFAD0470);

    sub_1AFAC4F14(&v841, v505, &v839, v840);

LABEL_567:

    sub_1AF645830(&v841);
    return;
  }

  v448 = 0;
  v810 = (v798 + SLODWORD(v799[1].data));
  *&v809 = v447 + ((*(length + 80) + 32) & ~*(length + 80));
  v808 = *(length + 72);
  v807 = xmmword_1AFE431C0;
LABEL_249:
  v449 = v798;
  sub_1AFAD0584(v809 + v808 * v448, v798, &unk_1ED7246F0, &type metadata for Entity);
  v450 = *v810;
  v451 = *(v810 + 1);
  v452 = v802;
  v453 = (v802 + SLODWORD(v799[1].data));
  sub_1AFAD06F0(v449, v802, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam);
  *v453 = v450;
  v453[1] = v451;
  sub_1AF5C9198(v859);
  sub_1AFAD0308(0, &qword_1ED726A10, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
  v454 = swift_allocObject();
  *(v454 + 16) = v807;
  *(v454 + 56) = &type metadata for EmitterReference;
  *(v454 + 64) = &off_1F2563D20;
  *(v454 + 32) = v450;
  v455 = (v454 + 32);
  *(v454 + 36) = v451;
  sub_1AF5FDBF0();
  sub_1AFAD2E00(v859, sub_1AF9B41F4);
  swift_setDeallocating();
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v455);
  swift_deallocClassInstance();
  v868[0] = v860[0];
  v868[1] = v860[1];
  v869 = v861;
  sub_1AF6B06C0(v328, v868, 0x200000000, v908);
  v890[2] = v908[2];
  v891[0] = v909;
  v891[1] = v910;
  v892 = v911;
  v890[0] = v908[0];
  v890[1] = v908[1];
  *&v821 = *&v908[0];
  if (!*&v908[0])
  {
    sub_1AFAD2E00(v860, sub_1AF9B41F4);
    goto LABEL_248;
  }

  v812[0] = v448;
  v457 = *(&v908[2] + 1);
  v458 = *(&v909 + 1);
  v459 = *(&v910 + 1);
  v820 = v910;
  v913 = *(v908 + 8);
  v914 = *(&v908[1] + 8);
  MEMORY[0x1EEE9AC00](v456);
  v104 = (&v738 - 6);
  v460 = v826;
  *(&v738 - 4) = v328;
  *(&v738 - 3) = v460;
  *(&v738 - 16) = v827;
  *(&v738 - 1) = v452;
  *&v818 = v461;
  if (v461 <= 0 || !v458)
  {
    sub_1AFAD2E00(v860, sub_1AF9B41F4);
    sub_1AF0D9DB0(v908, &qword_1ED725EA0, &type metadata for QueryResult);
    goto LABEL_262;
  }

  v806 = &v738;
  v462 = *(v459 + 4);
  LODWORD(v832) = *(v820 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v883 = v890[2];
  v884[0] = v891[0];
  v884[1] = v891[1];
  v885 = v892;
  v881 = v890[0];
  v882 = v890[1];
  sub_1AF5DD298(&v881, &v878);
  v463 = (v457 + 24);
  v817 = v459;
  while (1)
  {
    v464 = *(v463 - 6);
    v465 = *(v463 - 5);
    v466 = *(v463 - 4);
    v467 = *v463;
    *&v829.f64[0] = *(v463 - 1);
    *&v825 = v467;
    v468 = v463[2];
    *&v824 = v463[1];
    if (v832)
    {
      v469 = v458;
      v470 = v104;
      v471 = v462;
      v472 = *(v468 + 376);

      v473 = v472;
      v462 = v471;
      v104 = v470;
      v458 = v469;
      os_unfair_lock_lock(v473);
      os_unfair_lock_lock(*(v468 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v462);

    v94 = v817;
    sub_1AF630914(v474, v817, v912);

    LOBYTE(v878) = 1;
    *&v917 = v820;
    *(&v917 + 1) = v468;
    *&v918 = v94;
    *(&v918 + 1) = v466;
    *&v919 = (v465 - v464 + v466);
    *(&v919 + 1) = v818;
    *&v920[0] = v464;
    *(&v920[0] + 1) = v465;
    v920[1] = 0uLL;
    v921 = 1;
    v922 = v829.f64[0];
    v923 = v825;
    v924 = v824;
    v96 = v462;
    v475 = v828;
    sub_1AF88A110(&v917, sub_1AFAD0A94, v104);
    if (v475)
    {
      break;
    }

    v865 = v821;
    v866 = v913;
    v867 = v914;
    sub_1AF630994(v94, &v865, v912);
    v828 = 0;
    sub_1AF62D29C(v468);
    ecs_stack_allocator_pop_snapshot(v96);
    v462 = v96;
    if (v832)
    {
      os_unfair_lock_unlock(*(v468 + 344));
      os_unfair_lock_unlock(*(v468 + 376));
    }

    v463 += 6;
    if (!--v458)
    {
      sub_1AFAD2E00(v860, sub_1AF9B41F4);
      sub_1AF0D9DB0(v908, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AF0D9DB0(v908, &qword_1ED725EA0, &type metadata for QueryResult);
      v328 = v830;
      v452 = v802;
LABEL_262:
      v448 = v812[0];
LABEL_248:
      v448 = v448 + 1;
      sub_1AFAD0600(v452, &unk_1ED7246F0, &type metadata for Entity);
      if (v448 == v811)
      {
        goto LABEL_263;
      }

      goto LABEL_249;
    }
  }

  v878 = v821;
  v879 = v913;
  v880 = v914;
  v109 = 0;
  sub_1AF630994(v94, &v878, v912);
  sub_1AF62D29C(v468);
  ecs_stack_allocator_pop_snapshot(v96);
  os_unfair_lock_unlock(*(v468 + 344));
  os_unfair_lock_unlock(*(v468 + 376));
  __break(1u);
LABEL_571:

  *&v890[0] = v810;
  *(v890 + 8) = v915;
  *(&v890[1] + 8) = v916;
  sub_1AF630994(v94, v890, v925);
  sub_1AF62D29C(v104);
  ecs_stack_allocator_pop_snapshot(v96);
  os_unfair_lock_unlock(*(v104 + 43));
  os_unfair_lock_unlock(*(v104 + 47));
  __break(1u);
}

uint64_t sub_1AFACE760(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void), uint64_t a6)
{
  v78 = a6;
  v79 = a5;
  v80 = a3;
  v81 = a4;
  v82 = a2;
  v106 = *MEMORY[0x1E69E9840];
  sub_1AFAD0C4C(0, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v75 - v9;
  v11 = type metadata accessor for TriggerScript(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v75 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  v20 = v8[13];
  v21 = *(a1 + v20);
  sub_1AFACFD88(a1, &v75 - v18, type metadata accessor for TriggerScript);
  v22 = v19[40];
  sub_1AFAD2E00(v19, type metadata accessor for TriggerScript);
  if (v21 != 1)
  {
    goto LABEL_4;
  }

  if (v22 == 1)
  {
    return 0;
  }

  if (!v22)
  {
LABEL_4:
    *(a1 + v20) = 1;
  }

  v77 = HIDWORD(v81);
  sub_1AFACFE6C(a1, v10, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298);
  sub_1AFACFD88(v10, v16, type metadata accessor for TriggerScript);

  sub_1AFACFDF0(v10, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
  v23 = *v16;

  sub_1AFAD2E00(v16, type metadata accessor for TriggerScript);
  sub_1AFACFD88(a1, v13, type metadata accessor for TriggerScript);
  v24 = v13[24];
  sub_1AFAD2E00(v13, type metadata accessor for TriggerScript);
  if (v24 >= 4)
  {
    v26 = v82;

LABEL_11:
    v28 = *(a1 + v8[9]);
    if (v28 && (v29 = *(v28 + 96)) != 0)
    {
      v30 = v79;
      v82 = HIDWORD(v79);
      v31 = a1 + v8[14];
      v76 = *v31;
      v32 = *(v31 + 8);
      sub_1AF0D4478(0, &qword_1EB642748, 0x1E695DF70);
      v33 = v29;
      swift_retain_n();
      v34 = v33;

      v35 = v78;

      v36 = MEMORY[0x1B2719630](MEMORY[0x1E69E7CC0]);
      v83 = v32;
      *&v88 = v34;
      *(&v88 + 1) = v26;
      *&v89 = v23;
      *(&v89 + 1) = v35;
      v37 = v76;
      *&v90 = v76;
      BYTE8(v90) = v32;
      *(&v90 + 9) = v84;
      BYTE11(v90) = v85;
      HIDWORD(v90) = v30;
      LODWORD(v91) = v82;
      *(&v91 + 1) = v36;
      v92 = MEMORY[0x1E69E7CC0];
      if (sub_1AFAD4FA4())
      {
        v39 = thread_worker_index(v38);
        if (*v39 == -1)
        {
          v40 = *(v26 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
        }

        else
        {
          v40 = *(v26 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues) + 8 * *v39 + 8;
        }

        v41 = *(*v40 + 32);
        v42 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
        swift_unknownObjectUnownedInit();
        v43 = 3031;
        if (!v32)
        {
          v43 = v37;
        }

        *&v94 = v43;
        *(&v94 + 1) = v26;
        *(&v95 + 1) = __PAIR64__(v77, v81);
        *&v97 = 0;
        v96 = v41;
        BYTE8(v97) = 1;
        *&v98 = 0;
        *(&v98 + 1) = v42;
        if (v80)
        {
          Strong = swift_unknownObjectUnownedLoadStrong();
        }

        else
        {
          Strong = 0;
        }

        swift_unknownObjectUnownedAssign();

        sub_1AFABB57C(&v94, &v101);
        sub_1AFAC604C(&v101, v26, v34, &v88, a1);

        sub_1AFABB5D8(&v101);
        v86[2] = v90;
        v86[3] = v91;
        v87 = v92;
        v86[0] = v88;
        v86[1] = v89;
        v56 = v86;
      }

      else
      {

        *&v102[16] = v90;
        v103 = v91;
        *&v104 = v92;
        v101 = v88;
        *v102 = v89;
        v56 = &v101;
      }

      sub_1AFACFEF0(v56);
    }

    else
    {
    }

    return 1;
  }

  v26 = v82;
  v27 = sub_1AFDFEE28();

  if (v27)
  {

    goto LABEL_11;
  }

  v45 = *(a1 + v8[10]);
  if (v45)
  {
    v46 = *(v45 + 32);
    v47 = v8[14];
    v48 = a1 + v8[15];
    v49 = *(v48 + 8);
    v50 = a1 + v47;
    v51 = *(a1 + v47);
    LODWORD(v82) = *(v50 + 8);
    LOBYTE(v86[0]) = v82;
    LOBYTE(v84) = 0;
    if (v49)
    {
      v52 = v49;
    }

    else
    {
      v53 = *(v23 + 16);
      if (v53)
      {
        sub_1AF6B740C(0, &qword_1ED724EE0, &type metadata for CachedLocationMapping);
        v52 = sub_1AFDFD488();
        *(v52 + 16) = v53;
        v54 = 32;
        do
        {
          v55 = v52 + v54;
          *v55 = 0;
          *(v55 + 8) = 0;
          *(v55 + 16) = 0;
          *(v55 + 24) = xmmword_1AFE4C450;
          v54 += 40;
          --v53;
        }

        while (v53);
      }

      else
      {
        v52 = MEMORY[0x1E69E7CC0];
      }
    }

    *&v101 = 0;
    *(&v101 + 1) = v23;
    *v102 = v51;
    v102[8] = v86[0];
    *&v102[12] = v79;
    v102[20] = v84;
    *&v102[24] = v52;
    *&v103 = MEMORY[0x1E69E7CC0];
    *(&v103 + 1) = MEMORY[0x1E69E7CC0];
    v104 = 0uLL;
    *v105 = 0;
    *&v105[8] = xmmword_1AFE22A20;
    v57 = thread_worker_index;
    v58 = thread_worker_index(COERCE_DOUBLE(1));
    v59 = *(v26 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    if (*v58 == -1)
    {
      v60 = *(v26 + OBJC_IVAR____TtC3VFX13EntityManager_commandQueues);
    }

    else
    {
      v60 = (v59 + 8 * *v58 + 8);
    }

    v61 = *v60;

    if ((sub_1AFAE1FA0(v61, v80) & 1) == 0)
    {

      v98 = v104;
      v99 = *v105;
      v100 = *&v105[16];
      v94 = v101;
      v95 = *v102;
      v96 = *&v102[16];
      v97 = v103;
      sub_1AFABB4CC(&v94);
      return 0;
    }

    v79 = v46;
    v62 = v101;
    v63 = *&v102[24];

    v64 = v80;

    *(v48 + 8) = v63;
    v65 = (v57)(&thread_worker_index);
    if (*v65 == -1)
    {
      v66 = v59;
    }

    else
    {
      v66 = v59 + 8 * *v65 + 8;
    }

    v67 = *(*v66 + 32);
    swift_unknownObjectUnownedInit();
    v68 = 3031;
    if (!v82)
    {
      v68 = v51;
    }

    *&v88 = v68;
    *(&v88 + 1) = v26;
    *(&v89 + 1) = __PAIR64__(v77, v81);
    *&v91 = 0;
    v90 = v67;
    BYTE8(v91) = 1;
    v92 = v62;
    v93 = v78;
    if (v64)
    {
      v69 = swift_unknownObjectUnownedLoadStrong();
    }

    else
    {
      v69 = 0;
    }

    v70 = v79;
    swift_unknownObjectUnownedAssign();

    sub_1AFABB57C(&v88, &v94);
    v70(&v94);
    sub_1AFABB5D8(&v94);
    v71 = *(v103 + 16);
    if (v71)
    {
      v72 = v103 + 40;
      do
      {
        v73 = *(v72 - 8);

        v73(v74);

        v72 += 16;
        --v71;
      }

      while (v71);
    }

    v98 = v104;
    v99 = *v105;
    v100 = *&v105[16];
    v94 = v101;
    v95 = *v102;
    v96 = *&v102[16];
    v97 = v103;
    sub_1AFABB4CC(&v94);
    return 1;
  }

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void sub_1AFACF034(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v81 = a3;
  v83 = a1;
  sub_1AFACFCD8(0, &unk_1ED725EB0, type metadata accessor for GraphScript);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v78 - v6;
  v8 = type metadata accessor for GraphScript(0);
  v79 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFACFCD8(0, &qword_1ED725998, type metadata accessor for EmitterScript);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v78 - v11;
  v13 = type metadata accessor for EmitterScript(0);
  v80 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFAD0C4C(0, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v78 - v21;
  updated = type metadata accessor for ParticleUpdateScript(0);
  MEMORY[0x1EEE9AC00](updated);
  if (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 81) == 1 && (*(a2 + OBJC_IVAR____TtC3VFX13EntityManager_clock + 84) & 1) == 0)
  {
    v78 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!swift_dynamicCastMetatype())
    {
      if (swift_dynamicCastMetatype())
      {
        v31 = a2;
        v32 = v83[1];

        sub_1AF3CF378(v32, v12);

        v33 = *(v80 + 48);
        if (v33(v12, 1, v13) == 1)
        {
          *v15 = 0;
          v15[32] = 0;
          v34 = *(v13 + 32);
          v35 = type metadata accessor for ScriptIndex(0);
          (*(*(v35 - 8) + 56))(&v15[v34], 1, 1, v35);
          v36 = &v15[*(v13 + 36)];
          *v36 = 0;
          *(v36 + 1) = 0;
          *(v15 + 2) = 0x80000001AFF2B740;
          *(v15 + 3) = &unk_1F2507150;
          *(v15 + 1) = 0xD0000000000000C0;
          if (v33(v12, 1, v13) != 1)
          {
            sub_1AFACFD2C(v12, &qword_1ED725998, type metadata accessor for EmitterScript);
          }
        }

        else
        {
          sub_1AFAD06F0(v12, v15, type metadata accessor for EmitterScript);
        }

        sub_1AFAD0C4C(0, &unk_1ED72C4C0, type metadata accessor for EmitterScript, &off_1ED72CA10, type metadata accessor for ScriptRuntime);
        v43 = v31;
        v45 = sub_1AF6824B0(v44, &off_1F2558F90, v32);
        if (v45)
        {
          v46 = v45;
          v47 = v83[4];
          sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
          sub_1AFABC528(v46, v43, v81, v32, v47);

          sub_1AFABF7C8(v48);
        }

        v49 = type metadata accessor for EmitterScript;
        v29 = v15;
      }

      else
      {
        v37 = a2;
        if (!swift_dynamicCastMetatype())
        {
LABEL_51:
          *&v85[0] = 0;
          *(&v85[0] + 1) = 0xE000000000000000;
          sub_1AFDFE218();

          *&v85[0] = 0xD000000000000011;
          *(&v85[0] + 1) = 0x80000001AFF2E910;
          v77 = sub_1AFDFF4B8();
          MEMORY[0x1B2718AE0](v77);

          MEMORY[0x1B2718AE0](33, 0xE100000000000000);
          sub_1AFDFE518();
          __break(1u);
          return;
        }

        v38 = v83[1];

        sub_1AF3CF34C(v38, v7);

        v39 = *(v79 + 48);
        if (v39(v7, 1, v8) == 1)
        {
          v40 = v82;
          *v82 = MEMORY[0x1E69E7CC0];
          *(v40 + 8) = 0;
          *(v40 + 16) = 0xE000000000000000;
          *(v40 + 24) = 3;
          *(v40 + 32) = &unk_1F2507180;
          *(v40 + 40) = 0;
          *(v40 + 48) = 0;
          *(v40 + 56) = 0;
          v41 = *(v8 + 44);
          v42 = type metadata accessor for ScriptIndex(0);
          (*(*(v42 - 8) + 56))(v40 + v41, 1, 1, v42);
          if (v39(v7, 1, v8) != 1)
          {
            sub_1AFACFD2C(v7, &unk_1ED725EB0, type metadata accessor for GraphScript);
          }
        }

        else
        {
          sub_1AFAD06F0(v7, v82, type metadata accessor for GraphScript);
        }

        if (*(v82 + 41))
        {
          sub_1AFAD0C4C(0, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
          v70 = v37;
          v72 = sub_1AF6824B0(v71, &off_1F2558F90, v38);
          if (v72)
          {
            v73 = v72;
            v74 = v83[4];
            v75 = sub_1AF43E4E8(MEMORY[0x1E69E7CC0]);
            sub_1AFAC6AEC(v73, v70, v81, v38, v74, v75);

            sub_1AFABF7C8(v76);
          }
        }

        v49 = type metadata accessor for GraphScript;
        v29 = v82;
      }

      goto LABEL_46;
    }

    v25 = v83[1];
    v26 = a2;
    v27 = sub_1AF6824B0(v17, &off_1F2558F90, v25);
    if (!v27)
    {
      return;
    }

    v28 = v27;
    sub_1AFACFE6C(v27, v22, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8);
    sub_1AFACFD88(v22, v78, type metadata accessor for ParticleUpdateScript);
    sub_1AFACFDF0(v22, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
    v29 = v78;
    if (*(v78 + 24) != 2)
    {
      sub_1AFACFE6C(v28, v19, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8);
      if (*&v19[v17[10]] || *&v19[v17[11]])
      {
        sub_1AFACFDF0(v19, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
        if ((*(v78 + 40) & 1) == 0 && *(*(v78 + 32) + 16) && !sub_1AFABF13C(v83[4]))
        {
          v49 = type metadata accessor for ParticleUpdateScript;
          v29 = v78;
          goto LABEL_46;
        }

        v30 = *(a2 + 56) == 1;
        v82 = v25;
        if (v30)
        {
          sub_1AF68B2A4(v25, a2);
        }

        v79 = 0;
        v50 = *(v28 + v17[15]);
        v51 = *(v50 + 16);

        v52 = 0;
        v53 = v51 + 1;
        v54 = MEMORY[0x1E69E7CC0];
        v55 = 32;
LABEL_27:
        v56 = v55 + 40 * v52;
        while (v53 != ++v52)
        {
          v57 = *(v50 + v56);
          v56 += 40;
          if (((v57 >> 59) & 0x1E | (v57 >> 2) & 1) == 0xA)
          {

            v58 = sub_1AFDFDFD8();
            v59 = swift_conformsToProtocol2();
            if (!v59)
            {
              __break(1u);
              goto LABEL_51;
            }

            v60 = v59;
            sub_1AF443F24(v57);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v80 = v55;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v54 = sub_1AF420E4C(0, *(v54 + 2) + 1, 1, v54);
            }

            v63 = *(v54 + 2);
            v62 = *(v54 + 3);
            if (v63 >= v62 >> 1)
            {
              v54 = sub_1AF420E4C(v62 > 1, v63 + 1, 1, v54);
            }

            v64 = *(v60 + 8);
            *(v54 + 2) = v63 + 1;
            v65 = &v54[16 * v63];
            *(v65 + 4) = v58;
            *(v65 + 5) = v64;
            a2 = v26;
            v55 = v80;
            goto LABEL_27;
          }
        }

        v66 = v83;
        v67 = *(v83 + 13);
        v85[6] = *(v83 + 11);
        v85[7] = v67;
        v86 = v83[15];
        sub_1AF5B4630(v54, v84);

        sub_1AF6B06C0(a2, v84, 0x200000000, v85);
        v68 = v66[4];
        if (!*&v85[0])
        {
          v69 = v66[4];
          sub_1AFABF248(v69, v84);
          v68 = v69;
        }

        sub_1AFABBE38(v84, v85, v82, v68, v28, a2, v81);
        sub_1AF0D9DB0(v85, &qword_1ED725EA0, &type metadata for QueryResult);
        sub_1AF692DB0(v84);
      }

      else
      {
        sub_1AFACFDF0(v19, &unk_1ED72C500, type metadata accessor for ParticleUpdateScript, &off_1ED728EB8, type metadata accessor for ScriptRuntime);
      }

      v29 = v78;
    }

    v49 = type metadata accessor for ParticleUpdateScript;
LABEL_46:
    sub_1AFAD2E00(v29, v49);
  }
}

void sub_1AFACFCD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFDD58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1AFACFD2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1AFACFCD8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AFACFD88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AFACFDF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1AFAD0C4C(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1AFACFE6C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1AFAD0C4C(0, a3, a4, a5, type metadata accessor for ScriptRuntime);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

double sub_1AFACFF4C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_1AFACFF64()
{
  result = qword_1EB642750;
  if (!qword_1EB642750)
  {
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_1EB642750);
  }

  return result;
}

void sub_1AFAD0018(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_1AFAD0C4C(255, a3, a4, a5, type metadata accessor for ScriptRuntime);
    v6 = sub_1AFDFDD58();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AFAD0088(uint64_t a1)
{
  if (!qword_1ED723B10)
  {
    v2 = type metadata accessor for SimpleScript(255);
    sub_1AFAD0C4C(255, &unk_1ED72C4D0, type metadata accessor for SimpleScript, &off_1ED72CD00, type metadata accessor for ScriptRuntime);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = &off_1F255B808;
    v6[3] = &off_1F2558F90;
    v4 = type metadata accessor for Query2(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1ED723B10);
    }
  }
}

uint64_t sub_1AFAD0144(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1AFAD0C4C(0, a3, a4, a5, type metadata accessor for ScriptRuntime);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1AFAD01C8(uint64_t a1)
{
  if (!qword_1ED723B40)
  {
    v2 = type metadata accessor for GraphScript(255);
    sub_1AFAD0C4C(255, &unk_1ED72C4F0, type metadata accessor for GraphScript, &off_1ED72D7D8, type metadata accessor for ScriptRuntime);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = &off_1F255B548;
    v6[3] = &off_1F2558F90;
    v4 = type metadata accessor for Query2(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1ED723B40);
    }
  }
}

uint64_t sub_1AFAD0284(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 28);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 64);
  v10[2] = a1;
  v10[3] = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = *(v1 + 52);
  v17 = v8;
  v18 = *(v1 + 72);
  return sub_1AFC3FA8C(v3 | (v4 << 32), sub_1AFAD0360, v10);
}

void sub_1AFAD0308(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AF5C5358(255, a3, a4);
    v5 = sub_1AFDFEA18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1AFAD03B8(uint64_t a1)
{
  if (!qword_1ED7246E8)
  {
    type metadata accessor for TriggerScriptRunnerSystem.TriggerParam(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED7246E8);
    }
  }
}

uint64_t type metadata accessor for TriggerScriptRunnerSystem.TriggerParam(uint64_t a1)
{
  result = qword_1ED7247C8;
  if (!qword_1ED7247C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AFAD0470(uint64_t a1)
{
  if (!qword_1ED723AE8)
  {
    v2 = type metadata accessor for TriggerScript(255);
    sub_1AFAD0C4C(255, &unk_1ED72C4B0, type metadata accessor for TriggerScript, &off_1ED72C298, type metadata accessor for ScriptRuntime);
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = &off_1F255BBC8;
    v6[3] = &off_1F2558F90;
    v4 = type metadata accessor for Query2(a1, v6);
    if (!v5)
    {
      atomic_store(v4, &qword_1ED723AE8);
    }
  }
}

uint64_t sub_1AFAD052C(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1AFAD0584(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AFAD092C(0, a3, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AFAD0600(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AFAD092C(0, a2, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AFAD0674(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AFAD092C(0, a3, type metadata accessor for TriggerScriptRunnerSystem.TriggerParam, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AFAD06F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1AFAD08C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4, MEMORY[0x1E69E7CA0] + 8);
    v6 = sub_1AFDFEA18();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1AFAD092C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AFAD09A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v4;
  swift_unknownObjectWeakTakeInit();
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  return a2;
}

void sub_1AFAD0A24(uint64_t a1)
{
  if (!qword_1EB6427B0)
  {
    sub_1AF0D8108(255, &qword_1EB6427B8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6270]);
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6427B0);
    }
  }
}

uint64_t sub_1AFAD0B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v7 = a5(0, a3, a4);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

uint64_t sub_1AFAD0BA8(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1AF645830(a1);
  return sub_1AF6D6500(v3, a1);
}

uint64_t sub_1AFAD0C04(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

void sub_1AFAD0C4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

__n128 sub_1AFAD0CB8@<Q0>(id a1@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = [a1 nodeA];
  v7 = [a1 nodeB];
  [a1 contactPoint];
  v19 = v8;
  [a1 contactNormal];
  v18 = v9;
  [a1 collisionImpulse];
  v11 = v10;
  [a1 penetrationDistance];
  v13 = v12;
  [a1 sweepTestFraction];
  v15 = v14;

  *&v21 = a2;
  *(&v21 + 1) = v6;
  v22.n128_u64[0] = v7;
  v23 = v19;
  *v24 = v18;
  *&v24[16] = v11;
  *&v24[20] = v13;
  *&v24[24] = v15;
  v24[28] = 0;
  v25[0] = a2;
  v25[1] = v6;
  v25[2] = v7;
  v26 = v19;
  v27 = v18;
  v28 = v11;
  v29 = v13;
  v30 = v15;
  v31 = 0;
  sub_1AFAD07C4(&v21, v20);
  sub_1AFAD07FC(v25);
  v16 = *v24;
  *(a3 + 32) = v23;
  *(a3 + 48) = v16;
  *(a3 + 61) = *&v24[13];
  result = v22;
  *a3 = v21;
  *(a3 + 16) = result;
  return result;
}

void sub_1AFAD0E08(void *a1, id a2)
{
  v3 = [a2 worldRef];
  if (v3)
  {
    v9 = v3;
    if (sub_1AF1CFF64(v3, 1))
    {
    }

    else
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v9;
      *(v5 + 24) = a1;
      aBlock[4] = sub_1AFAD144C;
      aBlock[5] = v5;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AFCDA98C;
      aBlock[3] = &unk_1F255D3D0;
      v6 = _Block_copy(aBlock);
      v7 = v9;
      v8 = a1;

      [v4 postCommandWithWorldRef:v7 applyBlock:v6];
      _Block_release(v6);
    }
  }
}

void sub_1AFAD0F74(uint64_t a1, uint64_t a2, void *a3, id a4)
{
  v5 = [a4 worldRef];
  if (v5)
  {
    v13 = v5;
    if (sub_1AF1CFF64(v5, 1))
    {
    }

    else
    {
      v6 = sub_1AFDFCEC8();
      sub_1AFAD0CB8(a3, v6, v16);
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      *(v8 + 16) = v13;
      v9 = v17[0];
      *(v8 + 64) = v16[2];
      *(v8 + 80) = v9;
      *(v8 + 93) = *(v17 + 13);
      v10 = v16[1];
      *(v8 + 32) = v16[0];
      *(v8 + 48) = v10;
      aBlock[4] = sub_1AFAD13F4;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AFCDA98C;
      aBlock[3] = &unk_1F255D380;
      v11 = _Block_copy(aBlock);
      v12 = v13;
      sub_1AFAD07C4(v16, v14);

      [v7 postCommandWithWorldRef:v12 applyBlock:v11];
      _Block_release(v11);

      sub_1AFAD07FC(v16);
    }
  }
}

void sub_1AFAD1130(uint64_t a1, uint64_t a2, void *a3, void *a4, id a5)
{
  v7 = [a5 worldRef];
  if (v7)
  {
    v25 = v7;
    if (sub_1AF1CFF64(v7, 1))
    {
    }

    else
    {
      v8 = a4;
      [a3 locationInView_];
      v10 = v9;
      v12 = v11;
      [v8 frame];
      Width = CGRectGetWidth(v30);
      v23 = v12 / Width;
      [v8 frame];
      Height = CGRectGetHeight(v31);
      *&v10 = v10;
      *&v15 = v23;
      *(&v15 + 1) = 1.0 - (*&v10 / Height);
      v24 = v15;
      v16 = sub_1AFDFCEC8();
      type metadata accessor for InputEvent();
      swift_allocObject();
      v17 = a3;
      v18 = sub_1AF6A5CD4(v17, v8);

      v28[0] = v16;
      v28[1] = v18;
      swift_unknownObjectWeakInit();
      v28[3] = v24;
      v19 = objc_opt_self();
      sub_1AFAD082C(v28, v27);
      v20 = swift_allocObject();
      *(v20 + 16) = v25;
      sub_1AFAD13A4(v27, (v20 + 24));
      aBlock[4] = sub_1AFAD13E8;
      aBlock[5] = v20;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1AFCDA98C;
      aBlock[3] = &unk_1F255D330;
      v21 = _Block_copy(aBlock);
      v22 = v25;

      [v19 postCommandWithWorldRef:v22 applyBlock:v21];
      _Block_release(v21);

      sub_1AFAD0864(v28);
    }
  }
}

void *sub_1AFAD13A4(void *a1, void *a2)
{
  v4 = a1[1];
  *a2 = *a1;
  a2[1] = v4;
  swift_unknownObjectWeakTakeInit();
  a2[3] = a1[3];
  return a2;
}

double sub_1AFAD1400(void *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;

  return result;
}

uint64_t destroy for TriggerOSEvent.TapParams(id *a1)
{

  MEMORY[0x1B271E060](a1 + 2);
}

uint64_t initializeWithCopy for TriggerOSEvent.TapParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = v4;

  swift_unknownObjectWeakCopyInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithCopy for TriggerOSEvent.TapParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  swift_unknownObjectWeakCopyAssign();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t initializeWithTake for TriggerOSEvent.TapParams(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  swift_unknownObjectWeakTakeInit();
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  return a1;
}

uint64_t assignWithTake for TriggerOSEvent.TapParams(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  swift_unknownObjectWeakTakeAssign();
  v5 = a2[4];
  *(a1 + 24) = a2[3];
  *(a1 + 32) = v5;
  *(a1 + 40) = a2[5];
  *(a1 + 48) = a2[6];
  *(a1 + 56) = a2[7];

  return a1;
}

void destroy for TriggerOSEvent(id *a1)
{

  JUMPOUT(0x1B271E060);
}

void *initializeWithCopy for TriggerOSEvent(void *a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v5;
  v6 = v4;

  swift_unknownObjectWeakCopyInit();
  a1[3] = *(a2 + 24);
  return a1;
}

uint64_t assignWithCopy for TriggerOSEvent(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);

  swift_unknownObjectWeakCopyAssign();
  *(a1 + 24) = *(a2 + 24);
  return a1;
}

void *initializeWithTake for TriggerOSEvent(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  swift_unknownObjectWeakTakeInit();
  a1[3] = a2[3];
  return a1;
}

uint64_t assignWithTake for TriggerOSEvent(uint64_t a1, void *a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = a2[1];

  swift_unknownObjectWeakTakeAssign();
  *(a1 + 24) = a2[3];
  return a1;
}

void destroy for CollisionTriggerEvent(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t initializeWithCopy for CollisionTriggerEvent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  return a1;
}

uint64_t assignWithCopy for CollisionTriggerEvent(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  *(a1 + 16) = v11;
  v12 = v11;

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  return a1;
}

__n128 initializeWithTake for CollisionTriggerEvent(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 61) = *(a2 + 61);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t assignWithTake for CollisionTriggerEvent(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);

  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  return a1;
}

uint64_t getEnumTagSinglePayload for CollisionTriggerEvent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 77))
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

uint64_t storeEnumTagSinglePayload for CollisionTriggerEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 77) = 1;
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

    *(result + 77) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TriggerListComponent(void *a1)
{
  MEMORY[0x1B271E060]();
}

uint64_t initializeWithCopy for TriggerListComponent(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);

  return a1;
}

uint64_t assignWithCopy for TriggerListComponent(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyAssign();
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

__n128 initializeWithTake for TriggerListComponent(uint64_t a1, uint64_t a2)
{
  v3 = swift_unknownObjectWeakTakeInit();
  result = *(a2 + 8);
  *(v3 + 8) = result;
  *(v3 + 24) = *(a2 + 24);
  *(v3 + 32) = *(a2 + 32);
  *(v3 + 33) = *(a2 + 33);
  return result;
}

uint64_t assignWithTake for TriggerListComponent(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeAssign();
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  *(a1 + 34) = *(a2 + 34);
  return a1;
}

uint64_t getEnumTagSinglePayload for TriggerListComponent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 35))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TriggerListComponent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 35) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 35) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandTrackingParams(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HandTrackingParams(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

char *sub_1AFAD1E6C(char *a1, char **a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  v5 = *a2;
  *a1 = *a2;
  if ((v4 & 0x20000) != 0)
  {
    a1 = &v5[(v4 + 16) & ~v4];
  }

  else
  {
    *(a1 + 1) = a2[1];
    v8 = *(a2 + 48);
    v9 = v5;
    if (v8 > 1)
    {
      if (v8 == 2)
      {
        v15 = a2[2];
        v16 = a2[3];
        *(a1 + 2) = v15;
        *(a1 + 3) = v16;
        a1[48] = 2;
        v17 = v15;
        v18 = v16;
      }

      else if (v8 == 3)
      {
        if (a2[2] || a2[3] != 1)
        {
          swift_unknownObjectWeakCopyInit();
          v19 = a2[4];
          *(a1 + 3) = a2[3];
          *(a1 + 4) = v19;
          *(a1 + 5) = a2[5];
        }

        else
        {
          v11 = *(a2 + 2);
          *(a1 + 1) = *(a2 + 1);
          *(a1 + 2) = v11;
        }

        a1[48] = 3;
      }

      else
      {
        v12 = *(a2 + 2);
        *(a1 + 1) = *(a2 + 1);
        *(a1 + 2) = v12;
        a1[48] = *(a2 + 48);
      }
    }

    else if (v8)
    {
      v10 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v10;
      a1[48] = 1;
    }

    else
    {
      v13 = a2[2];
      *(a1 + 2) = v13;
      a1[48] = 0;
      v14 = v13;
    }

    v20 = a2[8];
    *(a1 + 7) = a2[7];
    *(a1 + 8) = v20;
    v21 = *(a3 + 32);
    v22 = &a1[v21];
    v23 = a2 + v21;
    v25 = *(a2 + v21);
    v24 = *(v23 + 1);
    *v22 = v25;
    *(v22 + 1) = v24;
    *(v22 + 2) = *(v23 + 2);
    v22[24] = v23[24];
    *(v22 + 4) = *(v23 + 4);
    v22[40] = v23[40];
    v22[41] = v23[41];
    v26 = *(v23 + 6);

    if (v26)
    {
      v27 = *(v23 + 7);
      *(v22 + 6) = v26;
      *(v22 + 7) = v27;
    }

    else
    {
      *(v22 + 3) = *(v23 + 3);
    }

    v28 = type metadata accessor for TriggerScript(0);
    v29 = v28[11];
    v30 = type metadata accessor for ScriptIndex(0);
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(&v23[v29], 1, v30))
    {
      sub_1AFACFCD8(0, qword_1ED730680, type metadata accessor for ScriptIndex);
      memcpy(&v22[v29], &v23[v29], *(*(v32 - 8) + 64));
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = sub_1AFDFC318();
        (*(*(v33 - 8) + 16))(&v22[v29], &v23[v29], v33);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(&v22[v29], &v23[v29], *(v31 + 64));
      }

      (*(v31 + 56))(&v22[v29], 0, 1, v30);
    }

    v34 = v28[12];
    v35 = *&v23[v34];
    *&v22[v34] = v35;
    v36 = v28[13];
    v37 = &v22[v36];
    v38 = &v23[v36];
    v39 = v23[v36 + 32];
    v40 = v35;
    if (v39 > 1)
    {
      if (v39 == 2)
      {
        v47 = *v38;
        v48 = *(v38 + 1);
        *v37 = v47;
        *(v37 + 1) = v48;
        v37[32] = 2;
        v49 = v47;
        v50 = v48;
      }

      else
      {
        if (v39 == 3)
        {
          if (*v38 || *(v38 + 1) != 1)
          {
            swift_unknownObjectWeakCopyInit();
            v51 = *(v38 + 2);
            *(v37 + 1) = *(v38 + 1);
            *(v37 + 2) = v51;
            *(v37 + 3) = *(v38 + 3);
          }

          else
          {
            v42 = *(v38 + 1);
            *v37 = *v38;
            *(v37 + 1) = v42;
          }

          v44 = 3;
        }

        else
        {
          v43 = *(v38 + 1);
          *v37 = *v38;
          *(v37 + 1) = v43;
          v44 = v38[32];
        }

        v37[32] = v44;
      }
    }

    else if (v39)
    {
      v41 = *(v38 + 1);
      *v37 = *v38;
      *(v37 + 1) = v41;
      v37[32] = 1;
    }

    else
    {
      v45 = *v38;
      *v37 = *v38;
      v37[32] = 0;
      v46 = v45;
    }
  }

  return a1;
}

void sub_1AFAD2280(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  if (v4 <= 1)
  {
    if (*(a1 + 48))
    {
      if (v4 == 1)
      {
      }

      goto LABEL_13;
    }

    v5 = *(a1 + 16);
LABEL_12:

    goto LABEL_13;
  }

  if (v4 == 2)
  {

    v5 = *(a1 + 24);
    goto LABEL_12;
  }

  if (v4 == 3 && (*(a1 + 16) || *(a1 + 24) != 1))
  {
    MEMORY[0x1B271E060](a1 + 16);
  }

LABEL_13:

  v6 = a1 + *(a2 + 32);

  if (*(v6 + 48))
  {
  }

  v7 = type metadata accessor for TriggerScript(0);
  v8 = v7[11];
  v9 = type metadata accessor for ScriptIndex(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9) && swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1AFDFC318();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  v11 = v6 + v7[13];
  v12 = *(v11 + 32);
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 != 3 || !*v11 && *(v11 + 8) == 1)
      {
        return;
      }

      MEMORY[0x1B271E060](v11);
      goto LABEL_33;
    }

    v13 = *(v11 + 8);
  }

  else
  {
    if (*(v11 + 32))
    {
      if (v12 != 1)
      {
        return;
      }

LABEL_33:

      return;
    }

    v13 = *v11;
  }
}

uint64_t sub_1AFAD24B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v7;
  v8 = *(a2 + 48);
  v9 = v6;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v15 = *(a2 + 16);
      v16 = *(a2 + 24);
      *(a1 + 16) = v15;
      *(a1 + 24) = v16;
      *(a1 + 48) = 2;
      v17 = v15;
      v18 = v16;
    }

    else if (v8 == 3)
    {
      if (*(a2 + 16) || *(a2 + 24) != 1)
      {
        swift_unknownObjectWeakCopyInit();
        v19 = *(a2 + 32);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = v19;
        *(a1 + 40) = *(a2 + 40);
      }

      else
      {
        v11 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v11;
      }

      *(a1 + 48) = 3;
    }

    else
    {
      v12 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v12;
      *(a1 + 48) = *(a2 + 48);
    }
  }

  else if (v8)
  {
    v10 = *(a2 + 24);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = v10;
    *(a1 + 48) = 1;
  }

  else
  {
    v13 = *(a2 + 16);
    *(a1 + 16) = v13;
    *(a1 + 48) = 0;
    v14 = v13;
  }

  v20 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v20;
  v21 = *(a3 + 32);
  v22 = a1 + v21;
  v23 = a2 + v21;
  v25 = *(a2 + v21);
  v24 = *(v23 + 8);
  *v22 = v25;
  *(v22 + 8) = v24;
  *(v22 + 16) = *(v23 + 16);
  *(v22 + 24) = *(v23 + 24);
  *(v22 + 32) = *(v23 + 32);
  *(v22 + 40) = *(v23 + 40);
  *(v22 + 41) = *(v23 + 41);
  v26 = *(v23 + 48);

  if (v26)
  {
    v27 = *(v23 + 56);
    *(v22 + 48) = v26;
    *(v22 + 56) = v27;
  }

  else
  {
    *(v22 + 48) = *(v23 + 48);
  }

  v28 = type metadata accessor for TriggerScript(0);
  v29 = v28[11];
  v30 = type metadata accessor for ScriptIndex(0);
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v23 + v29, 1, v30))
  {
    sub_1AFACFCD8(0, qword_1ED730680, type metadata accessor for ScriptIndex);
    memcpy((v22 + v29), (v23 + v29), *(*(v32 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = sub_1AFDFC318();
      (*(*(v33 - 8) + 16))(v22 + v29, v23 + v29, v33);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((v22 + v29), (v23 + v29), *(v31 + 64));
    }

    (*(v31 + 56))(v22 + v29, 0, 1, v30);
  }

  v34 = v28[12];
  v35 = *(v23 + v34);
  *(v22 + v34) = v35;
  v36 = v28[13];
  v37 = v22 + v36;
  v38 = v23 + v36;
  v39 = *(v23 + v36 + 32);
  v40 = v35;
  if (v39 > 1)
  {
    if (v39 == 2)
    {
      v47 = *v38;
      v48 = *(v38 + 8);
      *v37 = v47;
      *(v37 + 8) = v48;
      *(v37 + 32) = 2;
      v49 = v47;
      v50 = v48;
    }

    else
    {
      if (v39 == 3)
      {
        if (*v38 || *(v38 + 8) != 1)
        {
          swift_unknownObjectWeakCopyInit();
          v51 = *(v38 + 16);
          *(v37 + 8) = *(v38 + 8);
          *(v37 + 16) = v51;
          *(v37 + 24) = *(v38 + 24);
        }

        else
        {
          v42 = *(v38 + 16);
          *v37 = *v38;
          *(v37 + 16) = v42;
        }

        v44 = 3;
      }

      else
      {
        v43 = *(v38 + 16);
        *v37 = *v38;
        *(v37 + 16) = v43;
        v44 = *(v38 + 32);
      }

      *(v37 + 32) = v44;
    }
  }

  else if (v39)
  {
    v41 = *(v38 + 8);
    *v37 = *v38;
    *(v37 + 8) = v41;
    *(v37 + 32) = 1;
  }

  else
  {
    v45 = *v38;
    *v37 = *v38;
    *(v37 + 32) = 0;
    v46 = v45;
  }

  return a1;
}

uint64_t sub_1AFAD2880(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  if (a1 != a2)
  {
    sub_1AF4470F0(a1 + 16);
    v9 = *(a2 + 48);
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v15 = *(a2 + 16);
        *(a1 + 16) = v15;
        v16 = *(a2 + 24);
        *(a1 + 24) = v16;
        *(a1 + 48) = 2;
        v17 = v15;
        v18 = v16;
      }

      else
      {
        if (v9 != 3)
        {
LABEL_11:
          v11 = *(a2 + 16);
          v12 = *(a2 + 32);
          *(a1 + 48) = *(a2 + 48);
          *(a1 + 16) = v11;
          *(a1 + 32) = v12;
          goto LABEL_16;
        }

        if (*(a2 + 16) || *(a2 + 24) != 1)
        {
          swift_unknownObjectWeakCopyInit();
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 32) = *(a2 + 32);
          *(a1 + 40) = *(a2 + 40);
        }

        else
        {
          v10 = *(a2 + 32);
          *(a1 + 16) = *(a2 + 16);
          *(a1 + 32) = v10;
        }

        *(a1 + 48) = 3;
      }
    }

    else
    {
      if (*(a2 + 48))
      {
        if (v9 == 1)
        {
          *(a1 + 16) = *(a2 + 16);
          *(a1 + 24) = *(a2 + 24);
          *(a1 + 48) = 1;

          goto LABEL_16;
        }

        goto LABEL_11;
      }

      v13 = *(a2 + 16);
      *(a1 + 16) = v13;
      *(a1 + 48) = 0;
      v14 = v13;
    }
  }

LABEL_16:
  v19 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v19;

  v20 = *(a3 + 32);
  v21 = a1 + v20;
  v22 = a2 + v20;
  *(a1 + v20) = *(a2 + v20);

  *(v21 + 8) = *(v22 + 8);
  *(v21 + 16) = *(v22 + 16);

  *(v21 + 24) = *(v22 + 24);
  *(v21 + 32) = *(v22 + 32);

  *(v21 + 40) = *(v22 + 40);
  *(v21 + 41) = *(v22 + 41);
  v23 = *(v22 + 48);
  if (*(v21 + 48))
  {
    if (v23)
    {
      v24 = *(v22 + 56);
      *(v21 + 48) = v23;
      *(v21 + 56) = v24;

      goto LABEL_23;
    }
  }

  else if (v23)
  {
    v25 = *(v22 + 56);
    *(v21 + 48) = v23;
    *(v21 + 56) = v25;

    goto LABEL_23;
  }

  *(v21 + 48) = *(v22 + 48);
LABEL_23:
  v54 = type metadata accessor for TriggerScript(0);
  v26 = v54[11];
  v27 = type metadata accessor for ScriptIndex(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = v29(v21 + v26, 1, v27);
  v31 = v29(v22 + v26, 1, v27);
  if (!v30)
  {
    if (!v31)
    {
      if (a1 == a2)
      {
        goto LABEL_36;
      }

      sub_1AFAD2E00(v21 + v26, type metadata accessor for ScriptIndex);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v35 = sub_1AFDFC318();
        (*(*(v35 - 8) + 16))(v21 + v26, v22 + v26, v35);
        swift_storeEnumTagMultiPayload();
        goto LABEL_36;
      }

      v34 = *(v28 + 64);
LABEL_30:
      memcpy((v21 + v26), (v22 + v26), v34);
      goto LABEL_36;
    }

    sub_1AFAD2E00(v21 + v26, type metadata accessor for ScriptIndex);
LABEL_29:
    sub_1AFACFCD8(0, qword_1ED730680, type metadata accessor for ScriptIndex);
    v34 = *(*(v33 - 8) + 64);
    goto LABEL_30;
  }

  if (v31)
  {
    goto LABEL_29;
  }

  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = sub_1AFDFC318();
    (*(*(v32 - 8) + 16))(v21 + v26, v22 + v26, v32);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((v21 + v26), (v22 + v26), *(v28 + 64));
  }

  (*(v28 + 56))(v21 + v26, 0, 1, v27);
LABEL_36:
  v36 = v54[12];
  v37 = *(v22 + v36);
  v38 = *(v21 + v36);
  *(v21 + v36) = v37;
  v39 = v37;

  if (a1 != a2)
  {
    v40 = v54[13];
    v41 = v21 + v40;
    v42 = (v22 + v40);
    sub_1AF4470F0(v21 + v40);
    v43 = *(v42 + 32);
    if (v43 <= 1)
    {
      if (!*(v42 + 32))
      {
        v47 = *v42;
        *v41 = *v42;
        *(v41 + 32) = 0;
        v48 = v47;
        return a1;
      }

      if (v43 == 1)
      {
        *v41 = *v42;
        *(v41 + 8) = *(v42 + 1);
        *(v41 + 32) = 1;

        return a1;
      }

LABEL_46:
      v45 = *v42;
      v46 = v42[1];
      *(v41 + 32) = *(v42 + 32);
      *v41 = v45;
      *(v41 + 16) = v46;
      return a1;
    }

    if (v43 == 2)
    {
      v49 = *v42;
      *v41 = *v42;
      v50 = *(v42 + 1);
      *(v41 + 8) = v50;
      *(v41 + 32) = 2;
      v51 = v49;
      v52 = v50;
      return a1;
    }

    if (v43 != 3)
    {
      goto LABEL_46;
    }

    if (*v42 || *(v42 + 1) != 1)
    {
      swift_unknownObjectWeakCopyInit();
      *(v41 + 8) = *(v42 + 1);
      *(v41 + 16) = *(v42 + 2);
      *(v41 + 24) = *(v42 + 3);
    }

    else
    {
      v44 = v42[1];
      *v41 = *v42;
      *(v41 + 16) = v44;
    }

    *(v41 + 32) = 3;
  }

  return a1;
}

uint64_t sub_1AFAD2E00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AFAD2E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 + 16;
  if (*(a2 + 48) == 3)
  {
    if (*(a2 + 16))
    {
      v5 = 0;
    }

    else
    {
      v5 = *(a2 + 24) == 1;
    }

    if (v5)
    {
      v9 = *(a2 + 32);
      *v4 = *(a2 + 16);
      *(v4 + 16) = v9;
    }

    else
    {
      v6 = a2;
      v7 = a3;
      swift_unknownObjectWeakTakeInit();
      a3 = v7;
      a2 = v6;
      *(a1 + 24) = *(v6 + 24);
      *(a1 + 32) = *(v6 + 32);
    }

    *(a1 + 48) = 3;
  }

  else
  {
    v8 = *(a2 + 32);
    *v4 = *(a2 + 16);
    *(v4 + 16) = v8;
    *(v4 + 32) = *(a2 + 48);
  }

  *(a1 + 56) = *(a2 + 56);
  v10 = *(a3 + 32);
  v11 = a1 + v10;
  v12 = a2 + v10;
  *v11 = *(a2 + v10);
  *(v11 + 8) = *(a2 + v10 + 8);
  *(v11 + 24) = *(a2 + v10 + 24);
  *(v11 + 32) = *(a2 + v10 + 32);
  *(v11 + 40) = *(a2 + v10 + 40);
  *(v11 + 48) = *(a2 + v10 + 48);
  v13 = type metadata accessor for TriggerScript(0);
  v14 = v13[11];
  v15 = type metadata accessor for ScriptIndex(0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v12 + v14, 1, v15))
  {
    sub_1AFACFCD8(0, qword_1ED730680, type metadata accessor for ScriptIndex);
    memcpy((v11 + v14), (v12 + v14), *(*(v17 - 8) + 64));
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = sub_1AFDFC318();
      (*(*(v18 - 8) + 32))(v11 + v14, v12 + v14, v18);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((v11 + v14), (v12 + v14), *(v16 + 64));
    }

    (*(v16 + 56))(v11 + v14, 0, 1, v15);
  }

  *(v11 + v13[12]) = *(v12 + v13[12]);
  v19 = v13[13];
  v20 = v11 + v19;
  v21 = v12 + v19;
  if (*(v12 + v19 + 32) == 3)
  {
    if (*v21 || *(v21 + 8) != 1)
    {
      v20 = swift_unknownObjectWeakTakeInit();
      *(v20 + 8) = *(v21 + 8);
      *(v20 + 16) = *(v21 + 16);
    }

    else
    {
      v22 = *(v21 + 16);
      *v20 = *v21;
      *(v20 + 16) = v22;
    }

    v24 = 3;
  }

  else
  {
    v23 = *(v21 + 16);
    *v20 = *v21;
    *(v20 + 16) = v23;
    v24 = *(v21 + 32);
  }

  *(v20 + 32) = v24;
  return a1;
}

uint64_t sub_1AFAD310C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    sub_1AF4470F0(a1 + 16);
    if (*(a2 + 48) == 3)
    {
      if (*(a2 + 16) || *(a2 + 24) != 1)
      {
        swift_unknownObjectWeakTakeInit();
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
      }

      else
      {
        v7 = *(a2 + 32);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 32) = v7;
      }

      *(a1 + 48) = 3;
    }

    else
    {
      v8 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v8;
      *(a1 + 48) = *(a2 + 48);
    }
  }

  *(a1 + 56) = *(a2 + 56);

  v9 = *(a3 + 32);
  v10 = a1 + v9;
  v11 = a2 + v9;
  *(a1 + v9) = *(a2 + v9);

  v12 = *(v11 + 16);
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 16) = v12;

  *(v10 + 24) = *(v11 + 24);
  *(v10 + 32) = *(v11 + 32);

  *(v10 + 40) = *(v11 + 40);
  *(v10 + 41) = *(v11 + 41);
  v13 = *(v11 + 48);
  if (*(v10 + 48))
  {
    if (v13)
    {
      v14 = *(v11 + 56);
      *(v10 + 48) = v13;
      *(v10 + 56) = v14;

      goto LABEL_16;
    }
  }

  else if (v13)
  {
    v15 = *(v11 + 56);
    *(v10 + 48) = v13;
    *(v10 + 56) = v15;
    goto LABEL_16;
  }

  *(v10 + 48) = *(v11 + 48);
LABEL_16:
  v35 = type metadata accessor for TriggerScript(0);
  v16 = *(v35 + 44);
  v17 = type metadata accessor for ScriptIndex(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 48);
  v20 = v19(v10 + v16, 1, v17);
  v21 = v19(v11 + v16, 1, v17);
  if (v20)
  {
    if (!v21)
    {
      v22 = v35;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v23 = sub_1AFDFC318();
        (*(*(v23 - 8) + 32))(v10 + v16, v11 + v16, v23);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy((v10 + v16), (v11 + v16), *(v18 + 64));
      }

      (*(v18 + 56))(v10 + v16, 0, 1, v17);
      goto LABEL_28;
    }

LABEL_22:
    sub_1AFACFCD8(0, qword_1ED730680, type metadata accessor for ScriptIndex);
    memcpy((v10 + v16), (v11 + v16), *(*(v24 - 8) + 64));
    v22 = v35;
    goto LABEL_28;
  }

  if (v21)
  {
    sub_1AFAD2E00(v10 + v16, type metadata accessor for ScriptIndex);
    goto LABEL_22;
  }

  v22 = v35;
  if (a1 != a2)
  {
    sub_1AFAD2E00(v10 + v16, type metadata accessor for ScriptIndex);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = sub_1AFDFC318();
      (*(*(v25 - 8) + 32))(v10 + v16, v11 + v16, v25);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy((v10 + v16), (v11 + v16), *(v18 + 64));
    }
  }

LABEL_28:
  v26 = *(v22 + 48);
  v27 = *(v10 + v26);
  *(v10 + v26) = *(v11 + v26);

  if (a1 != a2)
  {
    v28 = *(v22 + 52);
    v29 = v10 + v28;
    v30 = v11 + v28;
    sub_1AF4470F0(v10 + v28);
    if (*(v30 + 32) == 3)
    {
      if (*v30 || *(v30 + 8) != 1)
      {
        swift_unknownObjectWeakTakeInit();
        *(v29 + 8) = *(v30 + 8);
        *(v29 + 16) = *(v30 + 16);
      }

      else
      {
        v31 = *(v30 + 16);
        *v29 = *v30;
        *(v29 + 16) = v31;
      }

      v33 = 3;
    }

    else
    {
      v32 = *(v30 + 16);
      *v29 = *v30;
      *(v29 + 16) = v32;
      v33 = *(v30 + 32);
    }

    *(v29 + 32) = v33;
  }

  return a1;
}

uint64_t sub_1AFAD3580(uint64_t a1)
{
  result = type metadata accessor for TriggerScript(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t assignWithCopy for TriggerScriptRunnerSystem.CollisionNodePair(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  return a1;
}

uint64_t destroy for TickedEvent(id *a1)
{
}

uint64_t initializeWithCopy for TickedEvent(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  v5 = v3;

  return a1;
}

uint64_t assignWithCopy for TickedEvent(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

__n128 initializeWithTake for TickedEvent(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TickedEvent(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t getEnumTagSinglePayload for TickedEvent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 45))
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

uint64_t storeEnumTagSinglePayload for TickedEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
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

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1AFAD38E8()
{
  result = qword_1EB6427C0;
  if (!qword_1EB6427C0)
  {
    result = swift_getWitnessTable(byte_1AFE99738, &type metadata for TriggerScriptRunnerSystem.CollisionNodePair, v0, v1);
    atomic_store(result, &qword_1EB6427C0);
  }

  return result;
}

void sub_1AFAD393C(uint64_t a1)
{
  if (!qword_1EB6427C8)
  {
    sub_1AFAD3998();
    v1 = sub_1AFDFE9A8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6427C8);
    }
  }
}

unint64_t sub_1AFAD3998()
{
  result = qword_1EB6427D0;
  if (!qword_1EB6427D0)
  {
    result = swift_getWitnessTable("}\b", &type metadata for GraphV1ExecutionOverride.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6427D0);
  }

  return result;
}

unint64_t sub_1AFAD3A00()
{
  result = qword_1EB6427D8;
  if (!qword_1EB6427D8)
  {
    result = swift_getWitnessTable(byte_1AFE998EC, &type metadata for GraphV1ExecutionOverride.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6427D8);
  }

  return result;
}

unint64_t sub_1AFAD3A58()
{
  result = qword_1EB6427E0;
  if (!qword_1EB6427E0)
  {
    result = swift_getWitnessTable(byte_1AFE99914, &type metadata for GraphV1ExecutionOverride.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB6427E0);
  }

  return result;
}

void sub_1AFAD3B10(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v3 = MEMORY[0x1E69E6370];
  v4 = MEMORY[0x1E69E6448];
  v5 = MEMORY[0x1E69E7668];
  v6 = MEMORY[0x1E69E76D8];
  v7 = MEMORY[0x1E69E72F0];
  v8 = MEMORY[0x1E69E7360];
  v9 = MEMORY[0x1E69E6530];
  do
  {
    if (swift_dynamicCastMetatype())
    {
      v23 = [a1 toBool];
      a3[3] = v3;
      *a3 = v23;
      return;
    }

    if (swift_dynamicCastMetatype())
    {
      [a1 toDouble];
      *&v24 = v24;
      a3[3] = v4;
      *a3 = LODWORD(v24);
      return;
    }

    if (swift_dynamicCastMetatype())
    {
      [a1 toDouble];
      a3[3] = v5;
      *a3 = v25;
      return;
    }

    if (swift_dynamicCastMetatype())
    {
      [a1 toDouble];
      a3[3] = v6;
      *a3 = v26;
      return;
    }

    if (swift_dynamicCastMetatype())
    {
      [a1 toDouble];
      a3[3] = v7;
      *a3 = v27;
      return;
    }

    if (swift_dynamicCastMetatype())
    {
      [a1 toDouble];
      a3[3] = v8;
      *a3 = v28;
      return;
    }

    if (swift_dynamicCastMetatype())
    {
      [a1 toDouble];
      a3[3] = v9;
      *a3 = v29;
      return;
    }

    sub_1AFAD5900(0, &unk_1ED72F770, sub_1AF43A0C8, v4, MEMORY[0x1E69E7428]);
    v11 = v10;
    if (swift_dynamicCastMetatype())
    {
      v30 = [a1 objectAtIndexedSubscript_];
      [v30 toDouble];
      v69 = v31;

      v32 = [a1 objectAtIndexedSubscript_];
      [v32 toDouble];
      v74 = v33;

      v34.f64[0] = v69;
      v34.f64[1] = v74;
      a3[3] = v11;
      *a3 = vcvt_f32_f64(v34);
      return;
    }

    sub_1AFAD5900(0, &qword_1ED72F740, sub_1AF43A0C8, v4, MEMORY[0x1E69E7450]);
    v13 = v12;
    if (swift_dynamicCastMetatype())
    {
      v35 = [a1 objectAtIndexedSubscript_];
      [v35 toDouble];
      v37 = v36;

      v38 = v37;
      v70 = v38;
      v39 = [a1 objectAtIndexedSubscript_];
      [v39 toDouble];
      v41 = v40;

      v42 = v41;
      v66 = v42;
      v43 = [a1 objectAtIndexedSubscript_];
      [v43 toDouble];
      v45 = v44;

      v46 = v45;
      v75 = v46;
      a3[3] = v13;
      v47 = swift_allocObject();
      v48.i64[0] = __PAIR64__(LODWORD(v66), LODWORD(v70));
      *a3 = v47;
      v48.i64[1] = LODWORD(v75);
LABEL_25:
      *(v47 + 16) = v48;
      return;
    }

    sub_1AFAD5900(0, &qword_1ED72F6E0, sub_1AF43A0C8, v4, MEMORY[0x1E69E74A8]);
    v15 = v14;
    if (swift_dynamicCastMetatype())
    {
      v49 = [a1 objectAtIndexedSubscript_];
      [v49 toDouble];
      v71 = v50;

      v51 = [a1 objectAtIndexedSubscript_];
      [v51 toDouble];
      v67 = v52;

      v53 = [a1 objectAtIndexedSubscript_];
      [v53 toDouble];
      v65 = v54;

      v55 = [a1 objectAtIndexedSubscript_];
      [v55 toDouble];
      v76 = v56;

      a3[3] = v15;
      v47 = swift_allocObject();
      v57.f64[0] = v65;
      v58.f64[0] = v71;
      v57.f64[1] = v76;
      *a3 = v47;
      v58.f64[1] = v67;
      v48 = vcvt_hight_f32_f64(vcvt_f32_f64(v58), v57);
      goto LABEL_25;
    }

    type metadata accessor for simd_quatf(0);
  }

  while (swift_dynamicCastMetatype());
  sub_1AFAD5900(0, &qword_1ED722EC8, sub_1AF477C08, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7428]);
  v17 = v16;
  if (swift_dynamicCastMetatype())
  {
    v18 = [a1 objectAtIndexedSubscript_];
    [v18 toDouble];
    v68 = v19;

    v20 = [a1 objectAtIndexedSubscript_];
    [v20 toDouble];
    v73 = v21;

    v22.f64[0] = v68;
    v22.f64[1] = v73;
    a3[3] = v17;
    *a3 = vmovn_s64(vcvtq_s64_f64(v22));
  }

  else
  {
    v59 = MEMORY[0x1E69E6158];
    if (swift_dynamicCastMetatype())
    {
      v60 = [a1 toString];
      v61 = sub_1AFDFCEF8();
      v63 = v62;

      a3[3] = v59;
      *a3 = v61;
      a3[1] = v63;
    }

    else
    {
      sub_1AF0D4478(0, &qword_1EB633BB0, 0x1E69E58C0);
      if (swift_dynamicCastMetatype() || (sub_1AFADAF14(0, &qword_1EB632948, &qword_1EB633BB0, 0x1E69E58C0, MEMORY[0x1E69E6720]), swift_dynamicCastMetatype()))
      {
        [a1 toObject];
        sub_1AFDFDFB8();

        swift_unknownObjectRelease();
      }

      else
      {
        sub_1AFDFE218();

        v64 = sub_1AFDFF4B8();
        MEMORY[0x1B2718AE0](v64);

        sub_1AFDFE518();
        __break(1u);
      }
    }
  }
}

id sub_1AFAD42DC(void *a1, void *a2)
{
  sub_1AF0D5A54(a1, v39);
  if (swift_dynamicCast())
  {
    LODWORD(v38) = v37[0];
    v4 = sub_1AFDFF168();
    v5 = [objc_opt_self() valueWithObject:v4 inContext:a2];
    swift_unknownObjectRelease();
LABEL_10:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v39);
    return v5;
  }

  sub_1AFAD5900(0, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
  if (swift_dynamicCast())
  {
    goto LABEL_4;
  }

  sub_1AFAD5900(0, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
  if (swift_dynamicCast())
  {
    TypedArray = JSObjectMakeTypedArray([a2 JSGlobalContextRef], kJSTypedArrayTypeFloat32Array, 3uLL, 0);
    v5 = [objc_opt_self() valueWithJSValueRef:TypedArray inContext:a2];
    v10 = sub_1AFDFD718();
    [v5 setObject:v10 atIndexedSubscript:0];

    v11 = sub_1AFDFD718();
    [v5 setObject:v11 atIndexedSubscript:1];

    v8 = sub_1AFDFD718();
    [v5 setObject:v8 atIndexedSubscript:2];
    goto LABEL_9;
  }

  sub_1AFAD5900(0, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
  v13 = v12;
  if (swift_dynamicCast())
  {
    v14 = JSObjectMakeTypedArray([a2 JSGlobalContextRef], kJSTypedArrayTypeFloat32Array, 4uLL, 0);
    v5 = [objc_opt_self() valueWithJSValueRef:v14 inContext:a2];
    v15 = sub_1AFDFD718();
    [v5 setObject:v15 atIndexedSubscript:0];

    v16 = sub_1AFDFD718();
    [v5 setObject:v16 atIndexedSubscript:1];

    v17 = sub_1AFDFD718();
    [v5 setObject:v17 atIndexedSubscript:2];

    v8 = sub_1AFDFD718();
    [v5 setObject:v8 atIndexedSubscript:3];
    goto LABEL_9;
  }

  type metadata accessor for simd_quatf(0);
  if (swift_dynamicCast())
  {
    v37[3] = v13;
    v37[0] = swift_allocObject();
    *(v37[0] + 1) = v38;
    v5 = sub_1AFAD42DC(v37, a2);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v37);
    goto LABEL_10;
  }

  type metadata accessor for simd_float4x4(0);
  if (swift_dynamicCast())
  {
    v19 = JSObjectMakeTypedArray([a2 JSGlobalContextRef], kJSTypedArrayTypeFloat32Array, 0x10uLL, 0);
    v5 = [objc_opt_self() valueWithJSValueRef:v19 inContext:a2];
    v20 = sub_1AFDFD718();
    [v5 setObject:v20 atIndexedSubscript:0];

    v21 = sub_1AFDFD718();
    [v5 setObject:v21 atIndexedSubscript:1];

    v22 = sub_1AFDFD718();
    [v5 setObject:v22 atIndexedSubscript:2];

    v23 = sub_1AFDFD718();
    [v5 setObject:v23 atIndexedSubscript:3];

    v24 = sub_1AFDFD718();
    [v5 setObject:v24 atIndexedSubscript:4];

    v25 = sub_1AFDFD718();
    [v5 setObject:v25 atIndexedSubscript:5];

    v26 = sub_1AFDFD718();
    [v5 setObject:v26 atIndexedSubscript:6];

    v27 = sub_1AFDFD718();
    [v5 setObject:v27 atIndexedSubscript:7];

    v28 = sub_1AFDFD718();
    [v5 setObject:v28 atIndexedSubscript:8];

    v29 = sub_1AFDFD718();
    [v5 setObject:v29 atIndexedSubscript:9];

    v30 = sub_1AFDFD718();
    [v5 setObject:v30 atIndexedSubscript:10];

    v31 = sub_1AFDFD718();
    [v5 setObject:v31 atIndexedSubscript:11];

    v32 = sub_1AFDFD718();
    [v5 setObject:v32 atIndexedSubscript:12];

    v33 = sub_1AFDFD718();
    [v5 setObject:v33 atIndexedSubscript:13];

    v34 = sub_1AFDFD718();
    [v5 setObject:v34 atIndexedSubscript:14];

    v8 = sub_1AFDFD718();
    [v5 setObject:v8 atIndexedSubscript:15];
    goto LABEL_9;
  }

  sub_1AFAD5900(0, &qword_1ED722EC8, sub_1AF477C08, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7428]);
  if (swift_dynamicCast())
  {
LABEL_4:
    v6 = JSObjectMakeTypedArray([a2 JSGlobalContextRef], kJSTypedArrayTypeFloat32Array, 2uLL, 0);
    v5 = [objc_opt_self() valueWithJSValueRef:v6 inContext:a2];
    v7 = sub_1AFDFD718();
    [v5 setObject:v7 atIndexedSubscript:0];

    v8 = sub_1AFDFD718();
    [v5 setObject:v8 atIndexedSubscript:1];
LABEL_9:

    goto LABEL_10;
  }

  if (swift_dynamicCast() || swift_dynamicCast())
  {
    v35 = [objc_opt_self() valueWithNewBigIntFromUInt64:v37[0] inContext:a2];
LABEL_19:
    v5 = v35;
    goto LABEL_10;
  }

  sub_1AF0D4478(0, &qword_1EB633BB0, 0x1E69E58C0);
  if (swift_dynamicCast())
  {
    v5 = [objc_opt_self() valueWithObject:v37[0] inContext:a2];

    goto LABEL_10;
  }

  sub_1AFADAF14(0, &qword_1EB632948, &qword_1EB633BB0, 0x1E69E58C0, MEMORY[0x1E69E6720]);
  if (swift_dynamicCast())
  {
    if (!v37[0] || (v5 = [objc_opt_self() valueWithObject:v37[0] inContext:a2]) == 0)
    {
      v5 = [objc_opt_self() valueWithNullInContext_];
    }

    goto LABEL_10;
  }

  type metadata accessor for vfx_script_buffer(0);
  if (swift_dynamicCast())
  {
    v35 = [objc_opt_self() valueWithNullInContext_];
    goto LABEL_19;
  }

  sub_1AFDFE218();

  v37[0] = 0xD000000000000011;
  v37[1] = 0x80000001AFF45EE0;
  sub_1AF441150(a1, a1[3]);
  swift_getDynamicType();
  v36 = sub_1AFDFF4B8();
  MEMORY[0x1B2718AE0](v36);

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AFAD4E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AF44CBE4(a1, v14);
  v5 = v15;
  if (v15)
  {
    v6 = sub_1AF441150(v14, v15);
    v7 = *(v5 - 8);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_1AFDFEE08();
    (*(v7 + 8))(v10, v5);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v14);
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1AFDFCEC8();

  [v3 setObject:v11 forKeyedSubscript:v12];
  swift_unknownObjectRelease();

  return sub_1AF44CB60(a1);
}

uint64_t sub_1AFAD4FA4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = v0;
  v54 = *(v0 + 32);
  v53 = *(v0 + 40);
  v52 = *(v0 + 44);
  v4 = *(v0 + 8);
  v58 = OBJC_IVAR____TtC3VFX13EntityManager_commandQueues;
  v5 = (v1 + 48);
  v57 = thread_worker_index;
  v61 = v3;
  v51 = v4;
  while (1)
  {
    v60 = v2;
    v6 = *(v5 - 2);
    v7 = *(v5 - 8);
    v8 = *v5;
    sub_1AF443EE0(v6);
    sub_1AF444224(v8);
    sub_1AFA9EF20(v6);
    if (sub_1AFADB4E4(v9, 0))
    {
      v10 = MEMORY[0x1E69E6878];
      if ((v7 & 2) == 0)
      {
        v10 = MEMORY[0x1E69E6270];
      }

      v55 = v10;
    }

    else
    {
      sub_1AFA9EF20(v6);
      v55 = v11;
    }

    v12 = (v57)(&thread_worker_index);
    v13 = *(v4 + v58);
    if (*v12 != -1)
    {
      v13 += *v12 + 1;
    }

    v14 = sub_1AFAE0478(v6, v7, v54, v53, v52, 0, *v13, 0, 0);
    if (v17 >= 0xFCu)
    {
      if (*(v4 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare) != 1)
      {
        v46 = *(v4 + OBJC_IVAR____TtC3VFX13EntityManager_logger);
        v64 = 0;
        v65 = 0xE000000000000000;

        sub_1AFDFE218();
        MEMORY[0x1B2718AE0](0xD000000000000022, 0x80000001AFF28340);
        sub_1AFDFE458();
        v47 = v8;
        v48 = v64;
        v49 = v65;
        v50 = sub_1AFDFDA08();
        v64 = 0;
        (*(*v46 + 88))(v50, &v64, v48, v49);
        sub_1AF443F24(v6);
        sub_1AF444AF4(v47);

        return 0;
      }

LABEL_37:
      sub_1AF443F24(v6);
      sub_1AF444AF4(v8);
      return 0;
    }

    v18 = v14;
    v19 = v15;
    v20 = v16;
    v21 = v17;
    if (v17 >> 6 && v17 >> 6 != 1)
    {
      v23 = (v57)(&thread_worker_index);
      v24 = *(v4 + v58);
      if (*v23 != -1)
      {
        v24 += *v23 + 1;
      }

      v22 = v18(*v24);
      v62 = v26;
      v63 = v25;
    }

    else
    {
      sub_1AF448910(v14, v15, v16, v17);
      v22 = v18;
      v62 = v20;
      v63 = v19;
    }

    v27 = (v6 >> 59) & 0x1E | (v6 >> 2) & 1;
    v59 = v8;
    if (v27 == 2)
    {
      if (v22)
      {
        v66 = sub_1AF0D4478(0, &qword_1EB633BB0, 0x1E69E58C0);
        v64 = v22;
        v37 = v22;
        goto LABEL_27;
      }

      sub_1AF93DA44(v18, v19, v20, v21);
      sub_1AF0FB8EC(v63, v62);
      goto LABEL_37;
    }

    if (v27 != 15)
    {
      if (v22)
      {
        sub_1AF871824(v22, v55, &v64);
        v3 = v61;
        goto LABEL_27;
      }

      sub_1AF0FB8EC(v63, v62);
      sub_1AF93DA44(v18, v19, v20, v21);
      goto LABEL_37;
    }

    v28 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x18);
    v56 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v29 = v61[3];
    if (!*(v29 + 16) || (v30 = v20, v31 = v6, v32 = *((v6 & 0xFFFFFFFFFFFFFFBLL) + 0x20), v33 = sub_1AF419914(v56, v28), (v34 & 1) == 0))
    {
      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](v56, v28);
      MEMORY[0x1B2718AE0](39, 0xE100000000000000);
      goto LABEL_41;
    }

    v35 = *(*(v29 + 56) + 8 * v33);
    sub_1AF90E730(v32);
    if (!v36)
    {
      break;
    }

    sub_1AF871824(v35, v36, &v64);
    v6 = v31;
    v3 = v61;
    v20 = v30;
LABEL_27:
    v38 = sub_1AFAD42DC(&v64, *v3);
    v39 = v3[8];
    sub_1AF0FBD8C(v63, v62);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_1AF423C1C(0, *(v39 + 2) + 1, 1, v39);
    }

    v41 = *(v39 + 2);
    v40 = *(v39 + 3);
    if (v41 >= v40 >> 1)
    {
      v39 = sub_1AF423C1C(v40 > 1, v41 + 1, 1, v39);
    }

    v5 += 5;
    *(v39 + 2) = v41 + 1;
    v42 = &v39[24 * v41];
    *(v42 + 4) = v22;
    *(v42 + 5) = v63;
    *(v42 + 6) = v62;
    v3 = v61;
    v61[8] = v39;
    v43 = v61[7];
    v44 = v38;
    [v43 addObject_];
    sub_1AF93DA44(v18, v19, v20, v21);

    sub_1AF443F24(v6);
    sub_1AF444AF4(v59);

    sub_1AF0FB8EC(v63, v62);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v64);
    v2 = v60 - 1;
    v4 = v51;
    if (v60 == 1)
    {
      return 1;
    }
  }

  sub_1AFDFE218();
  MEMORY[0x1B2718AE0](0x20676E697373696DLL, 0xEE00203A65736163);
  sub_1AFDFE458();
LABEL_41:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

void *sub_1AFAD560C(void *result)
{
  v24 = result;
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = (v2 + 48);
    v22 = MEMORY[0x1E69E7CA0] + 8;
    v23 = *(v2 + 16);
    while (1)
    {
      if ((*(v6 - 1) & 2) == 0)
      {
        goto LABEL_6;
      }

      v7 = *(v6 - 2);
      v8 = *v6;
      v9 = (*(v25 + 64) + v4);
      v10 = v9[4];
      v11 = v9[5];
      v12 = v9[6];
      sub_1AF443EE0(v7);
      sub_1AF444224(v8);
      sub_1AF0FBD8C(v11, v12);
      v13 = [v24 objectAtIndexedSubscript_];
      if (v13)
      {
        break;
      }

      if (v11)
      {
        goto LABEL_4;
      }

LABEL_5:
      sub_1AF443F24(v7);
      result = sub_1AF444AF4(v8);
LABEL_6:
      ++v5;
      v6 += 5;
      v4 += 24;
      if (v3 == v5)
      {
        return result;
      }
    }

    v14 = v13;
    sub_1AFA9EF20(v7);
    v16 = v15;
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_11;
    }

    type metadata accessor for frame_constants(0);
    if (swift_dynamicCastMetatype())
    {
      goto LABEL_11;
    }

    if (swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype() || swift_dynamicCastMetatype())
    {
LABEL_22:
      sub_1AFA9EF20(v7);
      v17 = v18;
LABEL_12:
      sub_1AFAD3B10(v14, v26);
      if (v10)
      {
        sub_1AF871630(v26, v10, v17);

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);
        v3 = v23;
        if (!v11)
        {
          goto LABEL_5;
        }
      }

      else
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v26);

        v3 = v23;
        if (!v11)
        {
          goto LABEL_5;
        }
      }

LABEL_4:
      v11();
      sub_1AF0FB8EC(v11, v12);
      goto LABEL_5;
    }

    if (!swift_dynamicCastMetatype() && !swift_dynamicCastMetatype())
    {
      sub_1AF8C0110(0, v19, v20, v21);
      if (!swift_dynamicCastMetatype())
      {
        if (swift_dynamicCastMetatype())
        {
          sub_1AFDFEE28();
          goto LABEL_22;
        }

        if (v16 != v22 && !swift_dynamicCastMetatype())
        {
          type metadata accessor for __vfx_sampler1d(0);
          if (!swift_dynamicCastMetatype())
          {
            type metadata accessor for __vfx_sampler2d(0);
            if (!swift_dynamicCastMetatype())
            {
              type metadata accessor for __vfx_sampler3d(0);
              if (!swift_dynamicCastMetatype())
              {
                goto LABEL_22;
              }
            }
          }
        }
      }
    }

LABEL_11:
    v17 = MEMORY[0x1E69E6878];
    goto LABEL_12;
  }

  return result;
}

void sub_1AFAD5900(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1AFAD5990(void *a1, void *a2, void *a3, void *a4)
{
  v50[10] = *MEMORY[0x1E69E9840];
  v7 = [a1 toNumber];
  v8 = [v7 unsignedIntegerValue];

  sub_1AFADAE08(v8, v49);
  sub_1AFABB57C(v49, v50);
  v9 = sub_1AFDFCEC8();
  v10 = [a2 objectForKeyedSubscript_];

  v11 = [v10 toString];
  v12 = sub_1AFDFCEF8();
  v14 = v13;

  v15 = sub_1AFDFCEC8();
  v16 = [a2 objectForKeyedSubscript_];

  v17 = [v16 toString];
  v18 = sub_1AFDFCEF8();
  v20 = v19;

  v21 = sub_1AFDFCEC8();
  v22 = [a2 objectForKeyedSubscript_];

  if (v22)
  {
    if ([v22 isNull] || objc_msgSend(v22, sel_isUndefined))
    {

LABEL_5:
      v23 = 0;
      v22 = 0;
      goto LABEL_9;
    }

    v24 = [v22 toString];

    if (!v24)
    {
      goto LABEL_5;
    }

    v25 = sub_1AFDFCEF8();
    v22 = v26;

    v23 = v25;
  }

  else
  {
    v23 = 0;
  }

LABEL_9:
  sub_1AFBFFFAC(v12, v14, v18, v20, v23, v22, v50[0], v49);

  v27 = v49[0];
  if (!v49[0])
  {
    return sub_1AFABB5D8(v50);
  }

  v28 = v49[1];
  v29 = v49[4];
  v30 = v49[5];
  if ([a3 toObject])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v45 = v41;
  v46 = v42;
  if (!*(&v42 + 1))
  {
    sub_1AF44CB60(&v45);
    goto LABEL_18;
  }

  sub_1AF0D4478(0, &qword_1EB633BB0, 0x1E69E58C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v32 = 0;
    goto LABEL_19;
  }

  v32 = v48[0];

LABEL_19:
  sub_1AFAD3B10(a4, v48);
  *(&v46 + 1) = &type metadata for Extensions;
  v47 = &off_1F253E6E8;
  sub_1AF60685C(&v45, v48);
  sub_1AF448018(&v45, *(&v46 + 1));
  v33 = sub_1AF8727C0();
  if (v32)
  {
    v34 = v33;
    v35 = v32;
    v36 = sub_1AFAF6214(v29, v35, v27, v28);

    if (v36)
    {
      sub_1AF871824(v34, v30, v44);
      ObjectType = swift_getObjectType();
      *&v39 = v35;
      *(&v42 + 1) = &type metadata for Extensions;
      v43 = &off_1F253E6E8;
      v37 = v35;
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v41);
      sub_1AF449D40(&v39, &v41);
      v38 = *(&v42 + 1);
      sub_1AF441150(&v41, *(&v42 + 1));
      sub_1AF871960(v44, v36, v38);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v44);
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v41);
    }

    else
    {
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v48);
  sub_1AFABB5D8(v50);
  return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v45);
}

void sub_1AFAD5E48(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = *(a1 + 32);

  v13 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v9(v13, v10, v11, v12);
}

id sub_1AFAD5F24(void *a1, void *a2, void *a3)
{
  v6 = [a1 toNumber];
  v7 = [v6 unsignedIntegerValue];

  sub_1AFADAE08(v7, v39);
  sub_1AFABB57C(v39, v40);
  v8 = sub_1AFDFCEC8();
  v9 = [a2 objectForKeyedSubscript_];

  v10 = [v9 toString];
  v11 = sub_1AFDFCEF8();
  v13 = v12;

  v14 = sub_1AFDFCEC8();
  v15 = [a2 objectForKeyedSubscript_];

  v16 = [v15 toString];
  v17 = sub_1AFDFCEF8();
  v19 = v18;

  v20 = sub_1AFDFCEC8();
  v21 = [a2 objectForKeyedSubscript_];

  if (v21)
  {
    if ([v21 isNull] || objc_msgSend(v21, sel_isUndefined))
    {

LABEL_5:
      v22 = 0;
      v21 = 0;
      goto LABEL_9;
    }

    v23 = [v21 toString];

    if (!v23)
    {
      goto LABEL_5;
    }

    v24 = sub_1AFDFCEF8();
    v21 = v25;

    v22 = v24;
  }

  else
  {
    v22 = 0;
  }

LABEL_9:
  sub_1AFBFFFAC(v11, v13, v17, v19, v22, v21, v40[0], v39);

  v26 = v39[0];
  if (!v39[0])
  {
    v29 = [a1 context];
    v30 = [objc_opt_self() valueWithNullInContext_];
LABEL_23:

    sub_1AFABB5D8(v40);
    return v30;
  }

  v27 = v39[1];
  v28 = v39[4];
  if ([a3 toObject])
  {
    sub_1AFDFDFB8();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  v38[0] = v36;
  v38[1] = v37;
  if (!*(&v37 + 1))
  {
    sub_1AF44CB60(v38);
    goto LABEL_20;
  }

  sub_1AF0D4478(0, &qword_1EB633BB0, 0x1E69E58C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    v29 = [a1 context];
    v30 = [objc_opt_self() valueWithNullInContext_];

    goto LABEL_23;
  }

  if (!sub_1AFAF6214(v28, v35, v26, v27))
  {
    v36 = 0u;
    v37 = 0u;
    sub_1AF44CB60(&v36);
    v29 = [a1 context];
    v30 = [objc_opt_self() valueWithNullInContext_];

    goto LABEL_23;
  }

  v31 = v35;
  swift_getAtAnyKeyPath();

  sub_1AF449D40(&v36, v38);
  v32 = [a1 context];
  v33 = sub_1AFAD42DC(v38, v32);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v38);
  sub_1AFABB5D8(v40);
  return v33;
}