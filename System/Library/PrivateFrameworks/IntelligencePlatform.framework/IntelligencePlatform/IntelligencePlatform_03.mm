uint64_t sub_1ABABEBA8()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1ABABEC00()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1ABABEC70()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1ABABECE0()
{

  sub_1ABAA4EC8();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABABED28()
{

  v0 = sub_1ABAB10A4();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABABED5C()
{

  return MEMORY[0x1EEE6BDD0](v0, 232, 7);
}

uint64_t sub_1ABABEE54()
{

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

uint64_t sub_1ABABEF6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1ABABEFF4()
{

  sub_1ABA88928();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABABF078()
{

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1ABABF438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Context = type metadata accessor for QueryContext(0);
  if (*(*(Context - 8) + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, Context);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1ABABF4E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for QueryContext(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ABABF8A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_1ABB0307C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1ABABFA1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t sub_1ABABFC88()
{
  v1 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BE8C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for InferenceServiceConfig(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  sub_1ABA8A54C();
  v6 = *(v5 + 80);
  v7 = (v6 + 72) & ~v6;
  v9 = *(v8 + 64);
  swift_unknownObjectRelease();

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v7 + *(v1 + 52), AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v9, v6 | 7);
}

uint64_t sub_1ABABFDE0()
{
  sub_1ABA9020C();
  swift_getAssociatedTypeWitness();
  sub_1ABA7D2D8();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for InferenceMessageRequest(0, AssociatedTypeWitness, v2, v3);
  sub_1ABA8A54C();
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  sub_1ABA7D08C();
  (*(v9 + 8))(v0 + v6, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v5 | 7);
}

uint64_t sub_1ABABFF88()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 64) & ~v4;
  v7 = (*(v6 + 64) + v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v4 | 7);
}

uint64_t sub_1ABAC00DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1ABAC014C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1ABAC0270()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1ABAC02A8@<X0>(uint64_t *a1@<X8>)
{
  result = static InferenceSupportBackendHelper.createCreateBackend.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1ABAC036C()
{

  sub_1ABD5A8F4(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 113));
  sub_1ABD5AA0C();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABAC03D0()
{

  sub_1ABD5A840(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_1ABA97C54();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABAC0418()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ABAC0480(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
    v9 = a1 + *(a3 + 20);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

uint64_t sub_1ABAC0514(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
    v8 = v5 + *(a4 + 20);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABAC05E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ABAC0848()
{

  sub_1ABA7D028();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAC103C()
{

  sub_1ABA7D9B8();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAC1078()
{

  sub_1ABC6D458(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 90));
  sub_1ABA8913C();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABAC10C8()
{

  sub_1ABAA4EC8();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAC1104()
{
  sub_1ABD71A94(*(v0 + 16));

  sub_1ABA7D9B8();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABAC114C()
{

  sub_1ABAA5964();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAC1190()
{

  sub_1ABA7D9B8();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAC1240()
{

  sub_1ABA8EAFC();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAC128C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ABAC12CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ABAC1304()
{

  sub_1ABA9955C();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAC1348()
{

  sub_1ABC6D458(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 90));

  return MEMORY[0x1EEE6BDD0](v0, 91, 7);
}

uint64_t sub_1ABAC1A84()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1ABAC1C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABF21CF4();

  return sub_1ABA7E1E0(a1, a2, v4);
}

uint64_t sub_1ABAC1CE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABF21CF4();

  return sub_1ABA7B9B4(a1, a2, a2, v4);
}

uint64_t sub_1ABAC2334()
{

  sub_1ABA7D028();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAC236C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for CustomKnosisResultContext(0, *(v4 + 16), *(v4 + 32), a4);
  sub_1ABA8A54C();
  v6 = *(v5 + 80);
  v8 = *(v7 + 64);
  sub_1ABA8AD50();
  v9 = sub_1ABA7D0EC();
  v10(v9);

  return MEMORY[0x1EEE6BDD0](v4, ((v6 + 48) & ~v6) + v8, v6 | 7);
}

uint64_t sub_1ABAC2464()
{
  sub_1ABA84B54((v0 + 16));
  sub_1ABA978EC();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABAC25E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4;

  return sub_1ABA7ECFC();
}

uint64_t sub_1ABAC2730()
{
  sub_1ABA90DA8();
  result = sub_1ABDA0B94();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC287C()
{
  sub_1ABA90DA8();
  result = sub_1ABDA0E70();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC28A8()
{
  sub_1ABA90DA8();
  result = sub_1ABDA0F00();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC28D4()
{
  sub_1ABA90DA8();
  result = sub_1ABDA0F90();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2900()
{
  sub_1ABA90DA8();
  result = sub_1ABDA1020();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC292C()
{
  sub_1ABA90DA8();
  result = sub_1ABDA10B0();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2958()
{
  sub_1ABA90DA8();
  result = sub_1ABDA1140();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2AF4()
{
  sub_1ABA90DA8();
  result = sub_1ABDA1524();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2B44()
{
  sub_1ABA90DA8();
  result = sub_1ABDA15EC();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2B94()
{
  sub_1ABA90DA8();
  result = sub_1ABDA16B4();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2BE4()
{
  sub_1ABA90DA8();
  result = sub_1ABDA17A8();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2C10()
{
  sub_1ABA90DA8();
  result = sub_1ABDA1838();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2C3C()
{
  sub_1ABA90DA8();
  result = sub_1ABDA18C8();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2C68()
{
  sub_1ABA90DA8();
  result = sub_1ABDA1958();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2C94()
{
  sub_1ABA90DA8();
  result = sub_1ABDA19E8();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2CC0()
{
  sub_1ABA90DA8();
  result = sub_1ABDA1A78();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2CEC()
{
  sub_1ABA90DA8();
  result = sub_1ABDA1B08();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2D18()
{
  sub_1ABA90DA8();
  result = sub_1ABDA1B98();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2D44()
{
  sub_1ABA90DA8();
  result = sub_1ABDA1C28();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2D70()
{
  sub_1ABA90DA8();
  result = sub_1ABDA1CB8();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2D9C()
{
  sub_1ABA90DA8();
  result = sub_1ABDA1DC8();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2DC8()
{
  sub_1ABA90DA8();
  result = sub_1ABDA1E58();
  *v0 = result;
  return result;
}

uint64_t sub_1ABAC2DF4()
{
  sub_1ABA90DA8();
  result = sub_1ABDA1EE8();
  *v0 = result;
  return result;
}

_BYTE *sub_1ABAC2E70@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1ABAB7354(a2, *a1);
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1ABAC2EC8@<X0>(_DWORD *a1@<X8>)
{
  result = SpeedBucket.rawValue.getter();
  *a1 = result;
  return result;
}

void sub_1ABAC3044()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v3 = sub_1ABAD219C(&qword_1EB4D37F0, &unk_1ABF61890);
  v4 = sub_1ABAA23D8(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C5B0(v5, v51);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABAA59C4(v7, v8, v9, v10, v11, v12, v13, v14, v52);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABAA549C(v16, v17, v18, v19, v20, v21, v22, v23, v53);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA97CE8(v25, v26, v27, v28, v29, v30, v31, v32, v54);
  if (v1)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v33 = sub_1ABAB0E08();
    sub_1ABA80F54(v33, v34);
    while ((v2 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v35 == v36)
      {
        break;
      }

      sub_1ABA95938();
      if (v37)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v37)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v38, v39, v40);
      sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABA7BB64();
      v41 = sub_1ABA842F4();
      v42(v41);
      v43 = sub_1ABA7DCDC();
      v44(v43);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v45 = sub_1ABA8E3D0();
      (qword_1EB4D37F0)(v45);
      sub_1ABA88CB4(objc_allocWithZone(GDTrafficBucketValue), sel_initWithBucket_bucketValue_);
      v46 = sub_1ABA96ABC();
      (qword_1EB4D37F0)(v46);
      sub_1ABAB480C(v0, &qword_1EB4D37F0, &unk_1ABF61890);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v35 == v36)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v37)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v37)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v37)
      {
        sub_1ABA94C38();
        while (v50 < v49)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v47, v48);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v47, v48);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v37)
      {
        sub_1ABA8B550();
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC3298()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v3 = sub_1ABAD219C(&qword_1EB4D37B0, &qword_1ABF3D818);
  v4 = sub_1ABAA23D8(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C5B0(v5, v51);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABAA59C4(v7, v8, v9, v10, v11, v12, v13, v14, v52);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABAA549C(v16, v17, v18, v19, v20, v21, v22, v23, v53);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA97CE8(v25, v26, v27, v28, v29, v30, v31, v32, v54);
  if (v1)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v33 = sub_1ABAB0E08();
    sub_1ABA80F54(v33, v34);
    while ((v2 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v35 == v36)
      {
        break;
      }

      sub_1ABA95938();
      if (v37)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v37)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v38, v39, v40);
      sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABA7BB64();
      v41 = sub_1ABA842F4();
      v42(v41);
      v43 = sub_1ABA7DCDC();
      v44(v43);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v45 = sub_1ABA8E3D0();
      (qword_1EB4D37B0)(v45);
      sub_1ABA88CB4(objc_allocWithZone(GDTrafficBucketValue), sel_initWithBucket_bucketValue_);
      v46 = sub_1ABA96ABC();
      (qword_1EB4D37B0)(v46);
      sub_1ABAB480C(v0, &qword_1EB4D37B0, &qword_1ABF3D818);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v35 == v36)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v37)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v37)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v37)
      {
        sub_1ABA94C38();
        while (v50 < v49)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v47, v48);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v47, v48);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v37)
      {
        sub_1ABA8B550();
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC34EC()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v3 = sub_1ABAD219C(&qword_1EB4D37E0, &unk_1ABF61830);
  v4 = sub_1ABAA23D8(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C5B0(v5, v51);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABAA59C4(v7, v8, v9, v10, v11, v12, v13, v14, v52);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABAA549C(v16, v17, v18, v19, v20, v21, v22, v23, v53);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA97CE8(v25, v26, v27, v28, v29, v30, v31, v32, v54);
  if (v1)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v33 = sub_1ABAB0E08();
    sub_1ABA80F54(v33, v34);
    while ((v2 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v35 == v36)
      {
        break;
      }

      sub_1ABA95938();
      if (v37)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v37)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v38, v39, v40);
      sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABA7BB64();
      v41 = sub_1ABA842F4();
      v42(v41);
      v43 = sub_1ABA7DCDC();
      v44(v43);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v45 = sub_1ABA8E3D0();
      (qword_1EB4D37E0)(v45);
      sub_1ABA88CB4(objc_allocWithZone(GDSpeedBucketValue), sel_initWithBucket_bucketValue_);
      v46 = sub_1ABA96ABC();
      (qword_1EB4D37E0)(v46);
      sub_1ABAB480C(v0, &qword_1EB4D37E0, &unk_1ABF61830);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v35 == v36)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v37)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v37)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v37)
      {
        sub_1ABA94C38();
        while (v50 < v49)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v47, v48);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v47, v48);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v37)
      {
        sub_1ABA8B550();
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC3740()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v3 = sub_1ABAD219C(&qword_1EB4D37C0, &unk_1ABF61990);
  v4 = sub_1ABAA23D8(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C5B0(v5, v51);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABAA59C4(v7, v8, v9, v10, v11, v12, v13, v14, v52);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABAA549C(v16, v17, v18, v19, v20, v21, v22, v23, v53);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA97CE8(v25, v26, v27, v28, v29, v30, v31, v32, v54);
  if (v1)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v33 = sub_1ABAB0E08();
    sub_1ABA80F54(v33, v34);
    while ((v2 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v35 == v36)
      {
        break;
      }

      sub_1ABA95938();
      if (v37)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v37)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v38, v39, v40);
      sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABA7BB64();
      v41 = sub_1ABA842F4();
      v42(v41);
      v43 = sub_1ABA7DCDC();
      v44(v43);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v45 = sub_1ABA8E3D0();
      (qword_1EB4D37C0)(v45);
      sub_1ABA88CB4(objc_allocWithZone(GDSpeedBucketValue), sel_initWithBucket_bucketValue_);
      v46 = sub_1ABA96ABC();
      (qword_1EB4D37C0)(v46);
      sub_1ABAB480C(v0, &qword_1EB4D37C0, &unk_1ABF61990);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v35 == v36)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v37)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v37)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v37)
      {
        sub_1ABA94C38();
        while (v50 < v49)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v47, v48);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v47, v48);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v37)
      {
        sub_1ABA8B550();
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC3994()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v3 = sub_1ABAD219C(&qword_1EB4D37D0, &qword_1ABF3D838);
  v4 = sub_1ABAA23D8(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C5B0(v5, v51);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABAA59C4(v7, v8, v9, v10, v11, v12, v13, v14, v52);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABAA549C(v16, v17, v18, v19, v20, v21, v22, v23, v53);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA97CE8(v25, v26, v27, v28, v29, v30, v31, v32, v54);
  if (v1)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v33 = sub_1ABAB0E08();
    sub_1ABA80F54(v33, v34);
    while ((v2 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v35 == v36)
      {
        break;
      }

      sub_1ABA95938();
      if (v37)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v37)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v38, v39, v40);
      sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABA7BB64();
      v41 = sub_1ABA842F4();
      v42(v41);
      v43 = sub_1ABA7DCDC();
      v44(v43);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v45 = sub_1ABA8E3D0();
      (qword_1EB4D37D0)(v45);
      sub_1ABA88CB4(objc_allocWithZone(GDRelativeFlowSpeedBucketValue), sel_initWithBucket_bucketValue_);
      v46 = sub_1ABA96ABC();
      (qword_1EB4D37D0)(v46);
      sub_1ABAB480C(v0, &qword_1EB4D37D0, &qword_1ABF3D838);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v35 == v36)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v37)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v37)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v37)
      {
        sub_1ABA94C38();
        while (v50 < v49)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v47, v48);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v47, v48);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v37)
      {
        sub_1ABA8B550();
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC3BE8()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v3 = sub_1ABAD219C(&qword_1EB4D99E0, &unk_1ABF61878);
  v4 = sub_1ABAA23D8(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C5B0(v5, v51);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABAA59C4(v7, v8, v9, v10, v11, v12, v13, v14, v52);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABAA549C(v16, v17, v18, v19, v20, v21, v22, v23, v53);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA97CE8(v25, v26, v27, v28, v29, v30, v31, v32, v54);
  if (v1)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v33 = sub_1ABAB0E08();
    sub_1ABA80F54(v33, v34);
    while ((v2 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v35 == v36)
      {
        break;
      }

      sub_1ABA95938();
      if (v37)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v37)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v38, v39, v40);
      sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABA7BB64();
      v41 = sub_1ABA842F4();
      v42(v41);
      v43 = sub_1ABA7DCDC();
      v44(v43);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v45 = sub_1ABA8E3D0();
      (qword_1EB4D99E0)(v45);
      sub_1ABA88CB4(objc_allocWithZone(GDTerrainTypeValue), sel_initWithType_typeValue_);
      v46 = sub_1ABA96ABC();
      (qword_1EB4D99E0)(v46);
      sub_1ABAB480C(v0, &qword_1EB4D99E0, &unk_1ABF61878);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v35 == v36)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v37)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v37)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v37)
      {
        sub_1ABA94C38();
        while (v50 < v49)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v47, v48);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v47, v48);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v37)
      {
        sub_1ABA8B550();
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC3E3C()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v3 = sub_1ABAD219C(&qword_1EB4D3748, &unk_1ABF3D7B0);
  v4 = sub_1ABAA23D8(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C5B0(v5, v51);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABAA59C4(v7, v8, v9, v10, v11, v12, v13, v14, v52);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABAA549C(v16, v17, v18, v19, v20, v21, v22, v23, v53);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA97CE8(v25, v26, v27, v28, v29, v30, v31, v32, v54);
  if (v1)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v33 = sub_1ABAB0E08();
    sub_1ABA80F54(v33, v34);
    while ((v2 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v35 == v36)
      {
        break;
      }

      sub_1ABA95938();
      if (v37)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v37)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v38, v39, v40);
      sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABA7BB64();
      v41 = sub_1ABA842F4();
      v42(v41);
      v43 = sub_1ABA7DCDC();
      v44(v43);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v45 = sub_1ABA8E3D0();
      (qword_1EB4D3748)(v45);
      sub_1ABA88CB4(objc_allocWithZone(GDTerrainTypeValue), sel_initWithType_typeValue_);
      v46 = sub_1ABA96ABC();
      (qword_1EB4D3748)(v46);
      sub_1ABAB480C(v0, &qword_1EB4D3748, &unk_1ABF3D7B0);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v35 == v36)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v37)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v37)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v37)
      {
        sub_1ABA94C38();
        while (v50 < v49)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v47, v48);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v47, v48);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v37)
      {
        sub_1ABA8B550();
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC4090()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v3 = sub_1ABAD219C(&qword_1EB4D99E8, &qword_1ABF61888);
  v4 = sub_1ABAA23D8(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C5B0(v5, v51);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABAA59C4(v7, v8, v9, v10, v11, v12, v13, v14, v52);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABAA549C(v16, v17, v18, v19, v20, v21, v22, v23, v53);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA97CE8(v25, v26, v27, v28, v29, v30, v31, v32, v54);
  if (v1)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v33 = sub_1ABAB0E08();
    sub_1ABA80F54(v33, v34);
    while ((v2 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v35 == v36)
      {
        break;
      }

      sub_1ABA95938();
      if (v37)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v37)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v38, v39, v40);
      sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABA7BB64();
      v41 = sub_1ABA842F4();
      v42(v41);
      v43 = sub_1ABA7DCDC();
      v44(v43);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v45 = sub_1ABA8E3D0();
      (qword_1EB4D99E8)(v45);
      sub_1ABA88CB4(objc_allocWithZone(GDWeatherTypeValue), sel_initWithType_typeValue_);
      v46 = sub_1ABA96ABC();
      (qword_1EB4D99E8)(v46);
      sub_1ABAB480C(v0, &qword_1EB4D99E8, &qword_1ABF61888);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v35 == v36)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v37)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v37)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v37)
      {
        sub_1ABA94C38();
        while (v50 < v49)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v47, v48);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v47, v48);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v37)
      {
        sub_1ABA8B550();
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC42E4()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v3 = sub_1ABAD219C(&qword_1EB4D3730, &qword_1ABF3D7A0);
  v4 = sub_1ABAA23D8(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C5B0(v5, v51);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABAA59C4(v7, v8, v9, v10, v11, v12, v13, v14, v52);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABAA549C(v16, v17, v18, v19, v20, v21, v22, v23, v53);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA97CE8(v25, v26, v27, v28, v29, v30, v31, v32, v54);
  if (v1)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v33 = sub_1ABAB0E08();
    sub_1ABA80F54(v33, v34);
    while ((v2 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v35 == v36)
      {
        break;
      }

      sub_1ABA95938();
      if (v37)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v37)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v38, v39, v40);
      sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABA7BB64();
      v41 = sub_1ABA842F4();
      v42(v41);
      v43 = sub_1ABA7DCDC();
      v44(v43);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABAA4FE8();
      sub_1ABA8C814();
      v45 = sub_1ABA8E3D0();
      (qword_1EB4D3730)(v45);
      sub_1ABA88CB4(objc_allocWithZone(GDWeatherTypeValue), sel_initWithType_typeValue_);
      v46 = sub_1ABA96ABC();
      (qword_1EB4D3730)(v46);
      sub_1ABAB480C(v0, &qword_1EB4D3730, &qword_1ABF3D7A0);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v35 == v36)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v37)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v37)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v37)
      {
        sub_1ABA94C38();
        while (v50 < v49)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v47, v48);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v47, v48);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v37)
      {
        sub_1ABA8B550();
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC4538()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v3 = sub_1ABAD219C(&qword_1EB4D3768, &qword_1ABF3D7D8);
  v4 = sub_1ABAA23D8(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C5B0(v5, v51);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABAA59C4(v7, v8, v9, v10, v11, v12, v13, v14, v52);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABAA549C(v16, v17, v18, v19, v20, v21, v22, v23, v53);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA97CE8(v25, v26, v27, v28, v29, v30, v31, v32, v54);
  if (v1)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v33 = sub_1ABAB0E08();
    sub_1ABA80F54(v33, v34);
    while ((v2 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v35 == v36)
      {
        break;
      }

      sub_1ABA95938();
      if (v37)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v37)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v38, v39, v40);
      sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABA7BB64();
      v41 = sub_1ABA842F4();
      v42(v41);
      v43 = sub_1ABA7DCDC();
      v44(v43);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABA9805C();
      sub_1ABA8C814();
      v45 = sub_1ABA8E3D0();
      (qword_1EB4D3768)(v45);
      sub_1ABA88CB4(objc_allocWithZone(GDRoadTypeValue), sel_initWithType_typeValue_);
      v46 = sub_1ABA96ABC();
      (qword_1EB4D3768)(v46);
      sub_1ABAB480C(v0, &qword_1EB4D3768, &qword_1ABF3D7D8);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v35 == v36)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v37)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v37)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v37)
      {
        sub_1ABA94C38();
        while (v50 < v49)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v47, v48);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v47, v48);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v37)
      {
        sub_1ABA8B550();
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

void sub_1ABAC47A4()
{
  sub_1ABA81AB4();
  sub_1ABA8AFB8();
  v3 = sub_1ABAD219C(&qword_1EB4D3758, &unk_1ABF3D7C0);
  v4 = sub_1ABAA23D8(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7C5B0(v5, v51);
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABAA59C4(v7, v8, v9, v10, v11, v12, v13, v14, v52);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABAA549C(v16, v17, v18, v19, v20, v21, v22, v23, v53);
  MEMORY[0x1EEE9AC00](v24);
  sub_1ABA97CE8(v25, v26, v27, v28, v29, v30, v31, v32, v54);
  if (v1)
  {
    sub_1ABA8875C(MEMORY[0x1E69E7CC0]);
    v33 = sub_1ABAB0E08();
    sub_1ABA80F54(v33, v34);
    while ((v2 & 0x8000000000000000) == 0)
    {
      sub_1ABAB5768();
      if (v35 == v36)
      {
        break;
      }

      sub_1ABA95938();
      if (v37)
      {
        goto LABEL_26;
      }

      sub_1ABA8B158();
      if (!v37)
      {
        goto LABEL_27;
      }

      sub_1ABA7F6E0(v38, v39, v40);
      sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABA7BB64();
      v41 = sub_1ABA842F4();
      v42(v41);
      v43 = sub_1ABA7DCDC();
      v44(v43);
      sub_1ABAB58F8();
      sub_1ABAE2EC4();
      sub_1ABA9805C();
      sub_1ABA8C814();
      v45 = sub_1ABA8E3D0();
      (qword_1EB4D3758)(v45);
      sub_1ABA88CB4(objc_allocWithZone(GDRoadTypeValue), sel_initWithType_typeValue_);
      v46 = sub_1ABA96ABC();
      (qword_1EB4D3758)(v46);
      sub_1ABAB480C(v0, &qword_1EB4D3758, &unk_1ABF3D7C0);
      sub_1ABF24B94();
      sub_1ABAA0C20();
      sub_1ABAA0B0C();
      sub_1ABF24BA4();
      sub_1ABAA13E4();
      if (v35 == v36)
      {
        goto LABEL_28;
      }

      sub_1ABAA26C8();
      if (v37)
      {
        goto LABEL_29;
      }

      sub_1ABAB5B38();
      if (!v37)
      {
        goto LABEL_30;
      }

      sub_1ABAA2A20();
      if (v37)
      {
        sub_1ABA94C38();
        while (v50 < v49)
        {
          sub_1ABA953E0();
          if (v0)
          {
            sub_1ABA99618(v47, v48);
            goto LABEL_21;
          }
        }

        sub_1ABA82B48(v47, v48);
      }

      else
      {
        sub_1ABA97614();
      }

LABEL_21:
      sub_1ABA81A98();
      if (v37)
      {
        sub_1ABA8B550();
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
LABEL_24:
    sub_1ABA83F0C();
    sub_1ABA8CD68();
  }
}

uint64_t sub_1ABAC4A10(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    sub_1ABDD3A24();
    v4 = sub_1ABAB0E08();
    v6 = v5;
    v7 = v1 + 64;
    v27 = v1 + 72;
    v28 = v1;
    do
    {
      if ((v4 & 0x8000000000000000) != 0 || (sub_1ABDD3960(), v10 == v11))
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        JUMPOUT(0x1ABAC4BA8);
      }

      v12 = v9 << v4;
      if ((*(v7 + 8 * (v4 >> 6)) & (v9 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v1 + 36) != v6)
      {
        goto LABEL_24;
      }

      v29 = v8;
      [objc_allocWithZone(GDRoadTypeValue) initWithType:qword_1ABF623C8[*(*(v1 + 48) + v4)] typeValue:*(*(v1 + 56) + 8 * v4)];
      v13 = sub_1ABF24B94();
      sub_1ABDD39E4(v13, v14, v15, v16, v17, v18, v19, v20, v25, v26, v27, v28, v29, v30);
      sub_1ABA9EE9C();
      v1 = v28;
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      sub_1ABDD3960();
      if (v10 == v11)
      {
        goto LABEL_25;
      }

      if ((*(v7 + 8 * (v4 >> 6)) & v12) == 0)
      {
        goto LABEL_26;
      }

      if (*(v28 + 36) != v6)
      {
        goto LABEL_27;
      }

      sub_1ABDD3640();
      if (v21)
      {
        sub_1ABA9DFE8();
        while (v23 < v22)
        {
          sub_1ABAAD2BC();
          if (v24)
          {
            sub_1ABAA91F8();
            break;
          }
        }
      }

      else
      {
        sub_1ABDD3928();
      }

      sub_1ABDD3914();
    }

    while (!v21);
    return v30;
  }

  return result;
}

uint64_t sub_1ABAC4C04()
{
  if (*(v0 + 200))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 240, 7);
}

uint64_t sub_1ABAC4C64()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ABAC4EC4()
{
  sub_1ABA96210(*(v0 + 80), *(v0 + 88));
  sub_1ABA96210(*(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1ABAC4F04()
{

  sub_1ABA96210(*(v0 + 96), *(v0 + 104));
  sub_1ABA96210(*(v0 + 112), *(v0 + 120));

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1ABAC50AC()
{
  if (*(v0 + 200))
  {
  }

  sub_1ABAABD74();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1ABAC5108()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1ABAC5230(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SearchableViewDatabaseTable(0);
    v9 = a1 + *(a3 + 20);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

void *sub_1ABAC52B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SearchableViewDatabaseTable(0);
    v8 = v5 + *(a4 + 20);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABAC53A8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABAC53E4(uint64_t *a1)
{
  type metadata accessor for LifeEventEntryView();
  type metadata accessor for CustomGraphActivityEvent(255);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7D034();
  sub_1ABA7D034();
  sub_1ABA7BC4C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7BC4C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8F8D8();
  sub_1ABDF2A2C(v1, v2, &protocol conformance descriptor for CustomGraphActivityEvent);
  sub_1ABA7D034();
  sub_1ABA7BC4C();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1ABA8C3C4();
  type metadata accessor for TypedGraphObjectSequence.Iterator(v3, v4);
  sub_1ABA938A8();
  sub_1ABDF2A2C(v5, v6, &unk_1ABF648B0);
  sub_1ABA7C60C();
  swift_getWitnessTable();
  v7 = sub_1ABA8C3C4();
  v9 = type metadata accessor for EventBaseView.EventViewSequence(v7, v8);
  return sub_1ABA7EA68(v9);
}

uint64_t sub_1ABAC55AC(uint64_t *a1)
{
  type metadata accessor for LifeEventEntryView();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA83BA4();
  sub_1ABA83BA4();
  sub_1ABA7D0F8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7D0F8();
  swift_getAssociatedConformanceWitness();
  sub_1ABA83BA4();
  sub_1ABA7D0F8();
  swift_getAssociatedConformanceWitness();
  v1 = sub_1ABA8C3C4();
  type metadata accessor for TypedGraphObjectSequence.Iterator(v1, v2);
  sub_1ABA938A8();
  sub_1ABDF2A2C(v3, v4, &unk_1ABF648B0);
  sub_1ABA7C60C();
  swift_getWitnessTable();
  v5 = sub_1ABA8C3C4();
  v7 = type metadata accessor for EventBaseView.EventViewSequence(v5, v6);
  return sub_1ABA7EA68(v7);
}

uint64_t sub_1ABAC574C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21EB4();
  v7 = a1 + *(a3 + 36);

  return sub_1ABA7E1E0(v7, a2, v6);
}

uint64_t sub_1ABAC57A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1ABF21EB4();
  v8 = a1 + *(a4 + 36);

  return sub_1ABA7B9B4(v8, a2, a2, v7);
}

uint64_t sub_1ABAC58D4(uint64_t *a1)
{
  type metadata accessor for LifeEventEntryView();
  type metadata accessor for CustomGraphActivityEvent(255);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7D034();
  sub_1ABA7D034();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8F908();
  sub_1ABDFB000(v1, v2, &protocol conformance descriptor for CustomGraphActivityEvent);
  sub_1ABA7D034();
  swift_getAssociatedConformanceWitness();
  v3 = sub_1ABA8C3C4();
  type metadata accessor for TypedGraphObjectSequence.Iterator(v3, v4);
  sub_1ABA7C624();
  sub_1ABDFB000(v5, v6, &unk_1ABF648B0);
  sub_1ABA7C60C();
  swift_getWitnessTable();
  v7 = sub_1ABA8C3C4();
  v9 = type metadata accessor for EventBaseView.EventViewSequence(v7, v8);
  return sub_1ABA7EA68(v9);
}

uint64_t sub_1ABAC5AA8(uint64_t a1)
{
  type metadata accessor for LifeEventEntryView();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA83BA4();
  sub_1ABA83BA4();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1ABA83BA4();
  swift_getAssociatedConformanceWitness();
  v1 = sub_1ABA8C3C4();
  type metadata accessor for TypedGraphObjectSequence.Iterator(v1, v2);
  sub_1ABA7C624();
  sub_1ABDFB000(v3, v4, &unk_1ABF648B0);
  sub_1ABA7C60C();
  swift_getWitnessTable();
  v5 = sub_1ABA8C3C4();
  v7 = type metadata accessor for EventBaseView.EventViewSequence(v5, v6);
  return sub_1ABA7EA68(v7);
}

uint64_t sub_1ABAC5D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 44);
  v6 = sub_1ABF21EB4();

  return sub_1ABA7E1E0(a1 + v5, a2, v6);
}

uint64_t sub_1ABAC5DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 44);
  v7 = sub_1ABF21EB4();

  return sub_1ABA7B9B4(a1 + v6, a2, a2, v7);
}

uint64_t sub_1ABAC5E88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);

  return sub_1ABA7E1E0(a1, a2, v4);
}

uint64_t sub_1ABAC5EDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);

  return sub_1ABA7B9B4(a1, a2, a2, v4);
}

uint64_t sub_1ABAC6054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1ABAC610C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ABAC62A4()
{

  sub_1ABA7D9B8();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAC67D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);

  return sub_1ABA7E1E0(a1, a2, v4);
}

uint64_t sub_1ABAC682C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1AA8, &qword_1ABF661A0);

  return sub_1ABA7B9B4(a1, a2, a2, v4);
}

uint64_t sub_1ABAC6A44(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1ABF21EB4();
    v9 = a1 + *(a3 + 28);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

void *sub_1ABAC6ACC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABF21EB4();
    v8 = v5 + *(a4 + 28);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABAC6C08()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t sub_1ABAC6C58(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
    v9 = a1 + *(a3 + 24);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

void *sub_1ABAC6CEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
    v8 = v5 + *(a4 + 24);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABAC6E48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABE5DBC4();
  *a1 = result;
  return result;
}

uint64_t sub_1ABAC6E78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABE5DC3C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ABAC6ED0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1ABF21EB4();
    v9 = a1 + *(a3 + 20);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

uint64_t sub_1ABAC6F58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABF21EB4();
    v8 = v5 + *(a4 + 20);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABAC7090(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_1ABA8A59C(*(a1 + 24));
  }

  sub_1ABF21EB4();
  v5 = sub_1ABA8A56C(*(a3 + 36));

  return sub_1ABA7E1E0(v5, v6, v7);
}

void sub_1ABAC7108()
{
  sub_1ABAA1CCC();
  if (v3)
  {
    *(v1 + 24) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1ABF21EB4();
    v5 = sub_1ABA8A56C(*(v4 + 36));

    sub_1ABA7B9B4(v5, v6, v0, v7);
  }
}

uint64_t sub_1ABAC757C()
{
  v2 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BBD0(v2);
  v4 = *(v3 + 80);

  v5 = sub_1ABF22424();
  if (!sub_1ABA84420(v5))
  {
    sub_1ABA8AD50();
    (*(v6 + 8))(v1 + ((v4 + 32) & ~v4), v0);
  }

  sub_1ABAA3AC0();
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v1, v8 + 8, v4 | 7);
}

uint64_t sub_1ABAC7670()
{
  v2 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  sub_1ABA7BBD0(v2);
  v4 = *(v3 + 80);

  v5 = sub_1ABF22424();
  if (!sub_1ABA84420(v5))
  {
    sub_1ABA8AD50();
    (*(v6 + 8))(v1 + ((v4 + 32) & ~v4), v0);
  }

  sub_1ABAA3AC0();

  return MEMORY[0x1EEE6BDD0](v1, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_1ABAC7768()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1ABAC77E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 48);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1ABAD219C(&qword_1EB4DB968, &qword_1ABF707E8);
    v9 = a1 + *(a3 + 20);

    return sub_1ABA7E1E0(v9, a2, v8);
  }
}

uint64_t sub_1ABAC7878(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 48) = (a2 - 1);
  }

  else
  {
    v7 = sub_1ABAD219C(&qword_1EB4DB968, &qword_1ABF707E8);
    v8 = v5 + *(a4 + 20);

    return sub_1ABA7B9B4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1ABAC7A68()
{

  v0 = sub_1ABA8FE90();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAC7A98()
{

  v0 = sub_1ABA7D544();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAC7AC8@<X0>(uint64_t *a1@<X8>)
{
  result = TrialAssetManager.RefreshPolicy.AutoRefreshForAllRequestedNamespacesInfo.updateHandlers.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1ABAC7B20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TrialAssetManager.Asset(0);
  v5 = sub_1ABA7E1E0(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAC7B68(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for TrialAssetManager.Asset(0);

  return sub_1ABA7B9B4(a1, v5, a3, v6);
}

uint64_t sub_1ABAC7BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABF21CF4();
  if (*(*(v6 - 8) + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 20));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1ABAC7C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1ABF21CF4();
  if (*(*(result - 8) + 84) == a3)
  {

    return sub_1ABA7B9B4(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1ABAC7D94()
{
  swift_weakDestroy();
  v0 = sub_1ABA7D544();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAC8518()
{
  v1 = sub_1ABAD219C(&qword_1EB4DC3C0, &qword_1ABF766B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1ABAC8610@<X0>(_BYTE *a1@<X8>)
{
  result = static NSUserDefaults.isKTSEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ABAC88C0()
{
  sub_1ABA81488();
  v2 = sub_1ABAD219C(&qword_1EB4DC6C8, &qword_1ABF77858);
  v3 = sub_1ABA7E1E0(v1, v0, v2);
  if (v3 >= 2)
  {
    return v3 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAC8910(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1ABAD219C(&qword_1EB4DC6C8, &qword_1ABF77858);

  return sub_1ABA7B9B4(a1, v5, a3, v6);
}

uint64_t sub_1ABAC89A0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v3 = *(a1 + 8);
    if (v3 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    return (v3 + 1);
  }

  else
  {
    sub_1ABF235E4();
    sub_1ABA826B4();
    if (*(v7 + 84) == a2)
    {
      v8 = *(a3 + 20);
    }

    else
    {
      sub_1ABF23484();
      v8 = *(a3 + 24);
    }

    v9 = sub_1ABA8A56C(v8);

    return sub_1ABA7E1E0(v9, v10, v11);
  }
}

void sub_1ABAC8A64()
{
  sub_1ABA81488();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    sub_1ABF235E4();
    sub_1ABA826B4();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 20);
    }

    else
    {
      sub_1ABF23484();
      v7 = *(v4 + 24);
    }

    v8 = sub_1ABA8A56C(v7);

    sub_1ABA7B9B4(v8, v9, v0, v10);
  }
}

uint64_t sub_1ABAC8B20(unsigned __int8 *a1, int a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v3 = *a1;
    if (v3 >= 3)
    {
      return v3 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
    v6 = sub_1ABA8A56C(*(a3 + 24));

    return sub_1ABA7E1E0(v6, v7, v8);
  }
}

void sub_1ABAC8BA8()
{
  sub_1ABA81488();
  if (v3 == 253)
  {
    *v1 = v0 + 2;
  }

  else
  {
    v4 = v2;
    sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
    v5 = sub_1ABA8A56C(*(v4 + 24));

    sub_1ABA7B9B4(v5, v6, v0, v7);
  }
}

uint64_t sub_1ABAC8C2C()
{
  sub_1ABA81488();
  v3 = *(v2 + 20);
  v4 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);

  return sub_1ABA7E1E0(v1 + v3, v0, v4);
}

uint64_t sub_1ABAC8C88()
{
  sub_1ABA81488();
  v3 = *(v2 + 20);
  v4 = sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);

  return sub_1ABA7B9B4(v1 + v3, v0, v0, v4);
}

uint64_t sub_1ABAC8D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA826B4();
  if (*(v7 + 84) == a2)
  {

    return sub_1ABA7E1E0(a1, a2, v6);
  }

  else
  {
    v9 = *(a1 + *(a3 + 24));
    if (v9 <= 3)
    {
      v10 = 3;
    }

    else
    {
      v10 = *(a1 + *(a3 + 24));
    }

    v11 = v10 - 3;
    if (v9 >= 3)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1ABAC8DCC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_1ABA81488();
  sub_1ABAD219C(&qword_1EB4DC6F0, qword_1ABF78360);
  sub_1ABA826B4();
  if (*(v9 + 84) == a3)
  {

    sub_1ABA7B9B4(v5, v4, v4, v8);
  }

  else
  {
    *(v5 + *(a4 + 24)) = v4 + 3;
  }
}

uint64_t sub_1ABAC8EA0()
{
  v1 = *(type metadata accessor for VisualUnderstandingServiceBackendV1.EntitySequenceV1(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_1ABF233F4();
  sub_1ABA7BBB0();
  (*(v5 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1ABAC8F64(uint64_t a1, uint64_t a2)
{
  sub_1ABA82858();
  v4 = sub_1ABF233F4();

  return sub_1ABA7E1E0(v2, a2, v4);
}

uint64_t sub_1ABAC8FA8(uint64_t a1, uint64_t a2)
{
  sub_1ABA82858();
  v4 = sub_1ABF233F4();

  return sub_1ABA7B9B4(v2, a2, a2, v4);
}

uint64_t sub_1ABAC8FF0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1ABAC90A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 source];
  *a2 = result;
  return result;
}

uint64_t sub_1ABAC9108()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1ABAC91B4()
{

  sub_1ABA7D028();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1ABAC91E8()
{

  sub_1ABC6D458(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 90));

  return MEMORY[0x1EEE6BDD0](v0, 91, 7);
}

uint64_t sub_1ABAC923C()
{

  sub_1ABA7D028();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

char *sub_1ABAC9278(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1ABA8EE60(a3, result);
  }

  return result;
}

uint64_t sub_1ABAC9310(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1ABA96210(result, a2);
  }

  return result;
}

void *sub_1ABAC9324(void *result)
{
  if (*result == -1)
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

uint64_t sub_1ABAC933C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1ABAC9370(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABAC9398(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t ActivityEventType.init(activityTypeEntityClass:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_85;
  }

  v3 = *(result + 16);
  v2 = *(result + 24);
  v7 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8E8), *(_Records_GDEntityClass_records + 0x8F0), *(_Records_GDEntityClass_records + 0x8F8), &v260);
  v15 = sub_1ABA7BB78(v7, v8, v9, v10, v11, v12, v13, v14, v250, v260, v261, v262);
  v16 = v16 && v4 == v2;
  if (v16)
  {
    v17 = 0;
LABEL_9:

    goto LABEL_10;
  }

  sub_1ABA83534(v15);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 0;
LABEL_10:

LABEL_11:
    *a2 = v17;
    return result;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_94;
  }

  v18 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x900), *(_Records_GDEntityClass_records + 0x908), *(_Records_GDEntityClass_records + 0x910), &v260);
  v26 = sub_1ABA7BB78(v18, v19, v20, v21, v22, v23, v24, v25, v251, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 1;
    goto LABEL_9;
  }

  sub_1ABA83534(v26);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 1;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_103;
  }

  v28 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x918), *(_Records_GDEntityClass_records + 0x920), *(_Records_GDEntityClass_records + 0x928), &v260);
  v36 = sub_1ABA7BB78(v28, v29, v30, v31, v32, v33, v34, v35, v252, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 2;
    goto LABEL_9;
  }

  sub_1ABA83534(v36);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 2;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_112;
  }

  v38 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x930), *(_Records_GDEntityClass_records + 0x938), *(_Records_GDEntityClass_records + 0x940), &v260);
  v46 = sub_1ABA7BB78(v38, v39, v40, v41, v42, v43, v44, v45, v253, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 3;
    goto LABEL_9;
  }

  sub_1ABA83534(v46);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 3;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_121;
  }

  v48 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x948), *(_Records_GDEntityClass_records + 0x950), *(_Records_GDEntityClass_records + 0x958), &v260);
  v56 = sub_1ABA7BB78(v48, v49, v50, v51, v52, v53, v54, v55, v254, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 4;
    goto LABEL_9;
  }

  sub_1ABA83534(v56);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 4;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_130;
  }

  v58 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x960), *(_Records_GDEntityClass_records + 0x968), *(_Records_GDEntityClass_records + 0x970), &v260);
  v66 = sub_1ABA7BB78(v58, v59, v60, v61, v62, v63, v64, v65, v255, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 5;
    goto LABEL_9;
  }

  sub_1ABA83534(v66);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 5;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_139;
  }

  v68 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x978), *(_Records_GDEntityClass_records + 0x980), *(_Records_GDEntityClass_records + 0x988), &v260);
  v76 = sub_1ABA7BB78(v68, v69, v70, v71, v72, v73, v74, v75, v256, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 6;
    goto LABEL_9;
  }

  sub_1ABA83534(v76);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 6;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_148;
  }

  v78 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x990), *(_Records_GDEntityClass_records + 0x998), *(_Records_GDEntityClass_records + 0x9A0), &v260);
  v86 = sub_1ABA7BB78(v78, v79, v80, v81, v82, v83, v84, v85, v257, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 7;
    goto LABEL_9;
  }

  sub_1ABA83534(v86);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 7;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_157;
  }

  v88 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x9A8), *(_Records_GDEntityClass_records + 0x9B0), *(_Records_GDEntityClass_records + 0x9B8), &v260);
  v96 = sub_1ABA7BB78(v88, v89, v90, v91, v92, v93, v94, v95, v258, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 8;
    goto LABEL_9;
  }

  sub_1ABA83534(v96);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 8;
    goto LABEL_10;
  }

  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_166;
  }

  v98 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x9C0), *(_Records_GDEntityClass_records + 0x9C8), *(_Records_GDEntityClass_records + 0x9D0), &v260);
  v106 = sub_1ABA7BB78(v98, v99, v100, v101, v102, v103, v104, v105, v259, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 9;
    goto LABEL_9;
  }

  sub_1ABA83534(v106);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 9;
    goto LABEL_10;
  }

LABEL_85:
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_175;
  }

  v108 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x9D8), *(_Records_GDEntityClass_records + 0x9E0), *(_Records_GDEntityClass_records + 0x9E8), &v260);
  v116 = sub_1ABA7BB78(v108, v109, v110, v111, v112, v113, v114, v115, v250, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 10;
    goto LABEL_9;
  }

  sub_1ABA83534(v116);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 10;
    goto LABEL_10;
  }

LABEL_94:
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_184;
  }

  v118 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x9F0), *(_Records_GDEntityClass_records + 0x9F8), *(_Records_GDEntityClass_records + 0xA00), &v260);
  v126 = sub_1ABA7BB78(v118, v119, v120, v121, v122, v123, v124, v125, v251, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 11;
    goto LABEL_9;
  }

  sub_1ABA83534(v126);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 11;
    goto LABEL_10;
  }

LABEL_103:
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_193;
  }

  v128 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA08), *(_Records_GDEntityClass_records + 0xA10), *(_Records_GDEntityClass_records + 0xA18), &v260);
  v136 = sub_1ABA7BB78(v128, v129, v130, v131, v132, v133, v134, v135, v252, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 12;
    goto LABEL_9;
  }

  sub_1ABA83534(v136);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 12;
    goto LABEL_10;
  }

LABEL_112:
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_202;
  }

  v138 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA20), *(_Records_GDEntityClass_records + 0xA28), *(_Records_GDEntityClass_records + 0xA30), &v260);
  v146 = sub_1ABA7BB78(v138, v139, v140, v141, v142, v143, v144, v145, v253, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 13;
    goto LABEL_9;
  }

  sub_1ABA83534(v146);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 13;
    goto LABEL_10;
  }

LABEL_121:
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_211;
  }

  v148 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA38), *(_Records_GDEntityClass_records + 0xA40), *(_Records_GDEntityClass_records + 0xA48), &v260);
  v156 = sub_1ABA7BB78(v148, v149, v150, v151, v152, v153, v154, v155, v254, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 14;
    goto LABEL_9;
  }

  sub_1ABA83534(v156);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 14;
    goto LABEL_10;
  }

LABEL_130:
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_220;
  }

  v158 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xAE0), *(_Records_GDEntityClass_records + 0xAE8), *(_Records_GDEntityClass_records + 0xAF0), &v260);
  v166 = sub_1ABA7BB78(v158, v159, v160, v161, v162, v163, v164, v165, v255, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 15;
    goto LABEL_9;
  }

  sub_1ABA83534(v166);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 15;
    goto LABEL_10;
  }

LABEL_139:
  if (!_Records_GDEntityClass_records)
  {
LABEL_220:
    __break(1u);
    goto LABEL_221;
  }

  v168 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xBB8), *(_Records_GDEntityClass_records + 0xBC0), *(_Records_GDEntityClass_records + 0xBC8), &v260);
  v176 = sub_1ABA7BB78(v168, v169, v170, v171, v172, v173, v174, v175, v256, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 16;
    goto LABEL_9;
  }

  sub_1ABA83534(v176);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 16;
    goto LABEL_10;
  }

LABEL_148:
  if (!_Records_GDEntityClass_records)
  {
LABEL_221:
    __break(1u);
    goto LABEL_222;
  }

  v178 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA80), *(_Records_GDEntityClass_records + 0xA88), *(_Records_GDEntityClass_records + 0xA90), &v260);
  v186 = sub_1ABA7BB78(v178, v179, v180, v181, v182, v183, v184, v185, v257, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 17;
    goto LABEL_9;
  }

  sub_1ABA83534(v186);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 17;
    goto LABEL_10;
  }

LABEL_157:
  if (!_Records_GDEntityClass_records)
  {
LABEL_222:
    __break(1u);
    goto LABEL_223;
  }

  v188 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA98), *(_Records_GDEntityClass_records + 0xAA0), *(_Records_GDEntityClass_records + 0xAA8), &v260);
  v196 = sub_1ABA7BB78(v188, v189, v190, v191, v192, v193, v194, v195, v258, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 18;
    goto LABEL_9;
  }

  sub_1ABA83534(v196);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 18;
    goto LABEL_10;
  }

LABEL_166:
  if (!_Records_GDEntityClass_records)
  {
LABEL_223:
    __break(1u);
    goto LABEL_224;
  }

  v198 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xAB0), *(_Records_GDEntityClass_records + 0xAB8), *(_Records_GDEntityClass_records + 0xAC0), &v260);
  v206 = sub_1ABA7BB78(v198, v199, v200, v201, v202, v203, v204, v205, v259, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 19;
    goto LABEL_9;
  }

  sub_1ABA83534(v206);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 19;
    goto LABEL_10;
  }

LABEL_175:
  if (!_Records_GDEntityClass_records)
  {
LABEL_224:
    __break(1u);
    goto LABEL_225;
  }

  v208 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xAC8), *(_Records_GDEntityClass_records + 0xAD0), *(_Records_GDEntityClass_records + 0xAD8), &v260);
  v216 = sub_1ABA7BB78(v208, v209, v210, v211, v212, v213, v214, v215, v250, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 20;
    goto LABEL_9;
  }

  sub_1ABA83534(v216);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 20;
    goto LABEL_10;
  }

LABEL_184:
  if (!_Records_GDEntityClass_records)
  {
LABEL_225:
    __break(1u);
    goto LABEL_226;
  }

  v218 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA50), *(_Records_GDEntityClass_records + 0xA58), *(_Records_GDEntityClass_records + 0xA60), &v260);
  v226 = sub_1ABA7BB78(v218, v219, v220, v221, v222, v223, v224, v225, v251, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 21;
    goto LABEL_9;
  }

  sub_1ABA83534(v226);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 21;
    goto LABEL_10;
  }

LABEL_193:
  if (!_Records_GDEntityClass_records)
  {
LABEL_226:
    __break(1u);
    __break(1u);
    goto LABEL_227;
  }

  v228 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA68), *(_Records_GDEntityClass_records + 0xA70), *(_Records_GDEntityClass_records + 0xA78), &v260);
  v236 = sub_1ABA7BB78(v228, v229, v230, v231, v232, v233, v234, v235, v252, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 22;
    goto LABEL_9;
  }

  sub_1ABA83534(v236);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 22;
    goto LABEL_10;
  }

LABEL_202:
  if (!_Records_GDEntityClass_records)
  {
LABEL_227:
    __break(1u);
    __break(1u);
    goto LABEL_228;
  }

  v238 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCC0), *(_Records_GDEntityClass_records + 0xCC8), *(_Records_GDEntityClass_records + 0xCD0), &v260);
  v246 = sub_1ABA7BB78(v238, v239, v240, v241, v242, v243, v244, v245, v253, v260, v261, v262);
  if (v16 && v4 == v2)
  {
    v17 = 23;
    goto LABEL_9;
  }

  sub_1ABA83534(v246);
  sub_1ABA946E0();

  if (v5)
  {
    v17 = 23;
    goto LABEL_10;
  }

LABEL_211:
  if (_Records_GDEntityClass_records)
  {
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCF0), *(_Records_GDEntityClass_records + 0xCF8), *(_Records_GDEntityClass_records + 0xD00), &v260);
    v17 = 24;
    if (v262 != v3 || v263 != v2)
    {
      v249 = sub_1ABA83534(v262);

      if (v249)
      {
        v17 = 24;
      }

      else
      {
        v17 = 25;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

LABEL_228:
  __break(1u);
  return result;
}

void ActivityEventType.activityTypeEntityClass.getter(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_65;
      }

      v3 = *(_Records_GDEntityClass_records + 0x908);
      v4 = *(_Records_GDEntityClass_records + 0x910);
      v5 = *(_Records_GDEntityClass_records + 0x900);
      goto LABEL_52;
    case 2:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_60;
      }

      v3 = *(_Records_GDEntityClass_records + 0x920);
      v4 = *(_Records_GDEntityClass_records + 0x928);
      v5 = *(_Records_GDEntityClass_records + 0x918);
      goto LABEL_52;
    case 3:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_63;
      }

      v3 = *(_Records_GDEntityClass_records + 0x938);
      v4 = *(_Records_GDEntityClass_records + 0x940);
      v5 = *(_Records_GDEntityClass_records + 0x930);
      goto LABEL_52;
    case 4:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_56;
      }

      v3 = *(_Records_GDEntityClass_records + 0x950);
      v4 = *(_Records_GDEntityClass_records + 0x958);
      v5 = *(_Records_GDEntityClass_records + 0x948);
      goto LABEL_52;
    case 5:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_68;
      }

      v3 = *(_Records_GDEntityClass_records + 0x968);
      v4 = *(_Records_GDEntityClass_records + 0x970);
      v5 = *(_Records_GDEntityClass_records + 0x960);
      goto LABEL_52;
    case 6:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_71;
      }

      v3 = *(_Records_GDEntityClass_records + 0x980);
      v4 = *(_Records_GDEntityClass_records + 0x988);
      v5 = *(_Records_GDEntityClass_records + 0x978);
      goto LABEL_52;
    case 7:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_64;
      }

      v3 = *(_Records_GDEntityClass_records + 0x998);
      v4 = *(_Records_GDEntityClass_records + 0x9A0);
      v5 = *(_Records_GDEntityClass_records + 0x990);
      goto LABEL_52;
    case 8:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_74;
      }

      v3 = *(_Records_GDEntityClass_records + 0x9B0);
      v4 = *(_Records_GDEntityClass_records + 0x9B8);
      v5 = *(_Records_GDEntityClass_records + 0x9A8);
      goto LABEL_52;
    case 9:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_58;
      }

      v3 = *(_Records_GDEntityClass_records + 0x9C8);
      v4 = *(_Records_GDEntityClass_records + 0x9D0);
      v5 = *(_Records_GDEntityClass_records + 0x9C0);
      goto LABEL_52;
    case 0xA:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_73;
      }

      v3 = *(_Records_GDEntityClass_records + 0x9E0);
      v4 = *(_Records_GDEntityClass_records + 0x9E8);
      v5 = *(_Records_GDEntityClass_records + 0x9D8);
      goto LABEL_52;
    case 0xB:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_55;
      }

      v3 = *(_Records_GDEntityClass_records + 0x9F8);
      v4 = *(_Records_GDEntityClass_records + 0xA00);
      v5 = *(_Records_GDEntityClass_records + 0x9F0);
      goto LABEL_52;
    case 0xC:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_57;
      }

      v3 = *(_Records_GDEntityClass_records + 0xA10);
      v4 = *(_Records_GDEntityClass_records + 0xA18);
      v5 = *(_Records_GDEntityClass_records + 0xA08);
      goto LABEL_52;
    case 0xD:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_70;
      }

      v3 = *(_Records_GDEntityClass_records + 0xA28);
      v4 = *(_Records_GDEntityClass_records + 0xA30);
      v5 = *(_Records_GDEntityClass_records + 0xA20);
      goto LABEL_52;
    case 0xE:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_54;
      }

      v3 = *(_Records_GDEntityClass_records + 0xA40);
      v4 = *(_Records_GDEntityClass_records + 0xA48);
      v5 = *(_Records_GDEntityClass_records + 0xA38);
      goto LABEL_52;
    case 0xF:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_61;
      }

      v3 = *(_Records_GDEntityClass_records + 0xAE8);
      v4 = *(_Records_GDEntityClass_records + 0xAF0);
      v5 = *(_Records_GDEntityClass_records + 0xAE0);
      goto LABEL_52;
    case 0x10:
      if (_Records_GDEntityClass_records)
      {
        v3 = *(_Records_GDEntityClass_records + 0xBC0);
        v4 = *(_Records_GDEntityClass_records + 0xBC8);
        v5 = *(_Records_GDEntityClass_records + 0xBB8);
LABEL_52:
        sub_1ABA8882C(v5, v3, v4, v10);
        v6 = v10[1];
        v7 = v10[2];
        v8 = v10[3];
        v9 = v11;
        *a1 = v10[0];
        *(a1 + 8) = v6;
        *(a1 + 16) = v7;
        *(a1 + 24) = v8;
        *(a1 + 32) = v9;
      }

      else
      {
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
      }

      return;
    case 0x11:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_66;
      }

      v3 = *(_Records_GDEntityClass_records + 0xA88);
      v4 = *(_Records_GDEntityClass_records + 0xA90);
      v5 = *(_Records_GDEntityClass_records + 0xA80);
      goto LABEL_52;
    case 0x12:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_72;
      }

      v3 = *(_Records_GDEntityClass_records + 0xAA0);
      v4 = *(_Records_GDEntityClass_records + 0xAA8);
      v5 = *(_Records_GDEntityClass_records + 0xA98);
      goto LABEL_52;
    case 0x13:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_76;
      }

      v3 = *(_Records_GDEntityClass_records + 0xAB8);
      v4 = *(_Records_GDEntityClass_records + 0xAC0);
      v5 = *(_Records_GDEntityClass_records + 0xAB0);
      goto LABEL_52;
    case 0x14:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_67;
      }

      v3 = *(_Records_GDEntityClass_records + 0xAD0);
      v4 = *(_Records_GDEntityClass_records + 0xAD8);
      v5 = *(_Records_GDEntityClass_records + 0xAC8);
      goto LABEL_52;
    case 0x15:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_69;
      }

      v3 = *(_Records_GDEntityClass_records + 0xA58);
      v4 = *(_Records_GDEntityClass_records + 0xA60);
      v5 = *(_Records_GDEntityClass_records + 0xA50);
      goto LABEL_52;
    case 0x16:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_75;
      }

      v3 = *(_Records_GDEntityClass_records + 0xA70);
      v4 = *(_Records_GDEntityClass_records + 0xA78);
      v5 = *(_Records_GDEntityClass_records + 0xA68);
      goto LABEL_52;
    case 0x17:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_77;
      }

      v3 = *(_Records_GDEntityClass_records + 0xCC8);
      v4 = *(_Records_GDEntityClass_records + 0xCD0);
      v5 = *(_Records_GDEntityClass_records + 0xCC0);
      goto LABEL_52;
    case 0x18:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_59;
      }

      v3 = *(_Records_GDEntityClass_records + 0xCF8);
      v4 = *(_Records_GDEntityClass_records + 0xD00);
      v5 = *(_Records_GDEntityClass_records + 0xCF0);
      goto LABEL_52;
    default:
      if (!_Records_GDEntityClass_records)
      {
        goto LABEL_62;
      }

      v3 = *(_Records_GDEntityClass_records + 0x8F0);
      v4 = *(_Records_GDEntityClass_records + 0x8F8);
      v5 = *(_Records_GDEntityClass_records + 0x8E8);
      goto LABEL_52;
  }
}

uint64_t ActivityEventType.graphObjectType.getter()
{
  switch(*v0)
  {
    case 1:
      v1 = type metadata accessor for CustomGraphWorkingActivityEvent(0);
      sub_1ABAB5BE0();
      v4 = &protocol conformance descriptor for CustomGraphWorkingActivityEvent;
      break;
    case 2:
      v1 = type metadata accessor for CustomGraphMeetingActivityEvent(0);
      sub_1ABA97EA8();
      v4 = &protocol conformance descriptor for CustomGraphMeetingActivityEvent;
      break;
    case 3:
      v1 = type metadata accessor for CustomGraphEatingActivityEvent(0);
      sub_1ABA976F8();
      v4 = &protocol conformance descriptor for CustomGraphEatingActivityEvent;
      break;
    case 4:
      v1 = type metadata accessor for CustomGraphWatchingTVActivityEvent(0);
      sub_1ABAA4410();
      v4 = &protocol conformance descriptor for CustomGraphWatchingTVActivityEvent;
      break;
    case 5:
      v1 = type metadata accessor for CustomGraphCommunicatingActivityEvent(0);
      sub_1ABA7AB30();
      v4 = &protocol conformance descriptor for CustomGraphCommunicatingActivityEvent;
      break;
    case 6:
      v1 = type metadata accessor for CustomGraphShoppingActivityEvent(0);
      sub_1ABAA2174();
      v4 = &protocol conformance descriptor for CustomGraphShoppingActivityEvent;
      break;
    case 7:
      v1 = type metadata accessor for CustomGraphMindfulnessActivityEvent(0);
      sub_1ABA96BA0();
      v4 = &protocol conformance descriptor for CustomGraphMindfulnessActivityEvent;
      break;
    case 8:
      v1 = type metadata accessor for CustomGraphSleepingActivityEvent(0);
      sub_1ABAA2790();
      v4 = &protocol conformance descriptor for CustomGraphSleepingActivityEvent;
      break;
    case 9:
      v1 = type metadata accessor for CustomGraphTravelingActivityEvent(0);
      sub_1ABAA4C68();
      v4 = &protocol conformance descriptor for CustomGraphTravelingActivityEvent;
      break;
    case 0xA:
      v1 = type metadata accessor for CustomGraphReadingActivityEvent(0);
      sub_1ABAA249C();
      v4 = &protocol conformance descriptor for CustomGraphReadingActivityEvent;
      break;
    case 0xB:
      v1 = type metadata accessor for CustomGraphVacationingActivityEvent(0);
      sub_1ABAA3EF8();
      v4 = &protocol conformance descriptor for CustomGraphVacationingActivityEvent;
      break;
    case 0xC:
      v1 = type metadata accessor for CustomGraphSocializingActivityEvent(0);
      sub_1ABAA481C();
      v4 = &protocol conformance descriptor for CustomGraphSocializingActivityEvent;
      break;
    case 0xD:
      v1 = type metadata accessor for CustomGraphWakingUpActivityEvent(0);
      sub_1ABA968D0();
      v4 = &protocol conformance descriptor for CustomGraphWakingUpActivityEvent;
      break;
    case 0xE:
      v1 = type metadata accessor for CustomGraphGoingToBedActivityEvent(0);
      sub_1ABAA3B48();
      v4 = &protocol conformance descriptor for CustomGraphGoingToBedActivityEvent;
      break;
    case 0xF:
      v1 = type metadata accessor for CustomGraphExercisingActivityEvent(0);
      sub_1ABAA1B3C();
      v4 = &protocol conformance descriptor for CustomGraphExercisingActivityEvent;
      break;
    case 0x10:
      v1 = type metadata accessor for CustomGraphCommuteActivityEvent(0);
      sub_1ABAA3718();
      v4 = &protocol conformance descriptor for CustomGraphCommuteActivityEvent;
      break;
    case 0x11:
      v1 = type metadata accessor for CustomGraphWalkingActivityEvent(0);
      sub_1ABAA1E30();
      v4 = &protocol conformance descriptor for CustomGraphWalkingActivityEvent;
      break;
    case 0x12:
      v1 = type metadata accessor for CustomGraphRunningActivityEvent(0);
      sub_1ABA9569C();
      v4 = &protocol conformance descriptor for CustomGraphRunningActivityEvent;
      break;
    case 0x13:
      v1 = type metadata accessor for CustomGraphBicyclingActivityEvent(0);
      sub_1ABAA2B30();
      v4 = &protocol conformance descriptor for CustomGraphBicyclingActivityEvent;
      break;
    case 0x14:
      v1 = type metadata accessor for CustomGraphHikingActivityEvent(0);
      sub_1ABAB0FC4();
      v4 = &protocol conformance descriptor for CustomGraphHikingActivityEvent;
      break;
    case 0x15:
      v1 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(0);
      sub_1ABA82690();
      v4 = &protocol conformance descriptor for CustomGraphOnThePhoneActivityEvent;
      break;
    case 0x16:
      v1 = type metadata accessor for CustomGraphFacetimeActivityEvent(0);
      sub_1ABA973E8();
      v4 = &protocol conformance descriptor for CustomGraphFacetimeActivityEvent;
      break;
    case 0x17:
      v1 = type metadata accessor for CustomGraphDrivingActivityEvent(0);
      sub_1ABAA2F48();
      v4 = &protocol conformance descriptor for CustomGraphDrivingActivityEvent;
      break;
    case 0x18:
      v1 = type metadata accessor for CustomGraphBehaviorActivityEvent(0);
      sub_1ABAA5180();
      v4 = &protocol conformance descriptor for CustomGraphBehaviorActivityEvent;
      break;
    default:
      v1 = type metadata accessor for CustomGraphTransportationActivityEvent(0);
      sub_1ABAA33D4();
      v4 = &protocol conformance descriptor for CustomGraphTransportationActivityEvent;
      break;
  }

  sub_1ABAD2154(v2, v3, v4);
  return v1;
}

uint64_t sub_1ABACA7DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABA7E270();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1ABACA808(uint64_t a1)
{
  v2 = sub_1ABAD2238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACA844(uint64_t a1)
{
  v2 = sub_1ABAD2238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACA880(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F70736E617274 && a2 == 0xEE006E6F69746174;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E696B726F77 && a2 == 0xE700000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E697465656DLL && a2 == 0xE700000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E69746165 && a2 == 0xE600000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x676E696863746177 && a2 == 0xED0000616964654DLL;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x63696E756D6D6F63 && a2 == 0xED0000676E697461;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x676E6970706F6873 && a2 == 0xE800000000000000;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C7566646E696DLL && a2 == 0xE700000000000000;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7065656C73 && a2 == 0xE500000000000000;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6C6576617274 && a2 == 0xE600000000000000;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x676E6964616572 && a2 == 0xE700000000000000;
                      if (v15 || (sub_1ABF25054() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E6F697461636176 && a2 == 0xE800000000000000;
                        if (v16 || (sub_1ABF25054() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6C6169636F73 && a2 == 0xE600000000000000;
                          if (v17 || (sub_1ABF25054() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x676E696B6177 && a2 == 0xE600000000000000;
                            if (v18 || (sub_1ABF25054() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0x426F54676E696F67 && a2 == 0xEA00000000006465;
                              if (v19 || (sub_1ABF25054() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000016 && 0x80000001ABF863C0 == a2;
                                if (v20 || (sub_1ABF25054() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6574756D6D6F63 && a2 == 0xE700000000000000;
                                  if (v21 || (sub_1ABF25054() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x676E696B6C6177 && a2 == 0xE700000000000000;
                                    if (v22 || (sub_1ABF25054() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000;
                                      if (v23 || (sub_1ABF25054() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x676E696B6962 && a2 == 0xE600000000000000;
                                        if (v24 || (sub_1ABF25054() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x676E696B6968 && a2 == 0xE600000000000000;
                                          if (v25 || (sub_1ABF25054() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6C6143656E6F6870 && a2 == 0xE90000000000006CLL;
                                            if (v26 || (sub_1ABF25054() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x656D697465636166 && a2 == 0xE800000000000000;
                                              if (v27 || (sub_1ABF25054() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x676E6976697264 && a2 == 0xE700000000000000;
                                                if (v28 || (sub_1ABF25054() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else if (a1 == 0x726F697661686562 && a2 == 0xE800000000000000)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v30 = sub_1ABF25054();

                                                  if (v30)
                                                  {
                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    return 25;
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABACAFD4(char a1)
{
  result = 0x726F70736E617274;
  switch(a1)
  {
    case 1:
      v3 = 1802661751;
      goto LABEL_29;
    case 2:
      v3 = 1952802157;
      goto LABEL_29;
    case 3:
      v5 = 1769234789;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x676E00000000;
    case 4:
      v4 = 0x696863746177;
      return v4 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    case 5:
      return 0x63696E756D6D6F63;
    case 6:
      v4 = 0x6970706F6873;
      return v4 & 0xFFFFFFFFFFFFLL | 0x676E000000000000;
    case 7:
      return 0x6C7566646E696DLL;
    case 8:
      return 0x7065656C73;
    case 9:
      return 0x6C6576617274;
    case 10:
      v3 = 1684104562;
      goto LABEL_29;
    case 11:
      return 0x6E6F697461636176;
    case 12:
      return 0x6C6169636F73;
    case 13:
      v5 = 1768644983;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x676E00000000;
    case 14:
      return 0x426F54676E696F67;
    case 15:
      return 0xD000000000000016;
    case 16:
      return 0x6574756D6D6F63;
    case 17:
      v3 = 1802264951;
      goto LABEL_29;
    case 18:
      v3 = 1852732786;
      goto LABEL_29;
    case 19:
      return 0x676E696B6962;
    case 20:
      return 0x676E696B6968;
    case 21:
      return 0x6C6143656E6F6870;
    case 22:
      return 0x656D697465636166;
    case 23:
      v3 = 1986622052;
LABEL_29:
      result = v3 | 0x676E6900000000;
      break;
    case 24:
      result = 0x726F697661686562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABACB238(uint64_t a1)
{
  v2 = sub_1ABAD23DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB274(uint64_t a1)
{
  v2 = sub_1ABAD23DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB2E0(uint64_t a1)
{
  v2 = *v1;
  sub_1ABF25234();
  sub_1ABAC9298(v4, v2);
  return sub_1ABF25294();
}

uint64_t sub_1ABACB32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABACA880(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABACB374@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABACAFCC();
  *a1 = result;
  return result;
}

uint64_t sub_1ABACB39C(uint64_t a1)
{
  v2 = sub_1ABAD21E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB3D8(uint64_t a1)
{
  v2 = sub_1ABAD21E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB414(uint64_t a1)
{
  v2 = sub_1ABAD2874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB450(uint64_t a1)
{
  v2 = sub_1ABAD2874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB48C(uint64_t a1)
{
  v2 = sub_1ABAD24D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB4C8(uint64_t a1)
{
  v2 = sub_1ABAD24D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB504(uint64_t a1)
{
  v2 = sub_1ABAD228C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB540(uint64_t a1)
{
  v2 = sub_1ABAD228C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB57C(uint64_t a1)
{
  v2 = sub_1ABAD291C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB5B8(uint64_t a1)
{
  v2 = sub_1ABAD291C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB5F4(uint64_t a1)
{
  v2 = sub_1ABAD22E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB630(uint64_t a1)
{
  v2 = sub_1ABAD22E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB66C(uint64_t a1)
{
  v2 = sub_1ABAD2580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB6A8(uint64_t a1)
{
  v2 = sub_1ABAD2580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB6E4(uint64_t a1)
{
  v2 = sub_1ABAD2388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB720(uint64_t a1)
{
  v2 = sub_1ABAD2388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB75C(uint64_t a1)
{
  v2 = sub_1ABAD2970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB798(uint64_t a1)
{
  v2 = sub_1ABAD2970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB7D4(uint64_t a1)
{
  v2 = sub_1ABAD27CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB810(uint64_t a1)
{
  v2 = sub_1ABAD27CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB84C(uint64_t a1)
{
  v2 = sub_1ABAD2334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB888(uint64_t a1)
{
  v2 = sub_1ABAD2334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB8C4(uint64_t a1)
{
  v2 = sub_1ABAD26D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB900(uint64_t a1)
{
  v2 = sub_1ABAD26D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB93C(uint64_t a1)
{
  v2 = sub_1ABAD2430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB978(uint64_t a1)
{
  v2 = sub_1ABAD2430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACB9B4(uint64_t a1)
{
  v2 = sub_1ABAD2820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACB9F0(uint64_t a1)
{
  v2 = sub_1ABAD2820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBA2C(uint64_t a1)
{
  v2 = sub_1ABAD2778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBA68(uint64_t a1)
{
  v2 = sub_1ABAD2778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBAA4(uint64_t a1)
{
  v2 = sub_1ABAD2628();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBAE0(uint64_t a1)
{
  v2 = sub_1ABAD2628();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBB1C(uint64_t a1)
{
  v2 = sub_1ABAD2A18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBB58(uint64_t a1)
{
  v2 = sub_1ABAD2A18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBB94(uint64_t a1)
{
  v2 = sub_1ABAD2724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBBD0(uint64_t a1)
{
  v2 = sub_1ABAD2724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBC0C(uint64_t a1)
{
  v2 = sub_1ABAD252C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBC48(uint64_t a1)
{
  v2 = sub_1ABAD252C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBC84(uint64_t a1)
{
  v2 = sub_1ABAD267C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBCC0(uint64_t a1)
{
  v2 = sub_1ABAD267C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBCFC(uint64_t a1)
{
  v2 = sub_1ABAD25D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBD38(uint64_t a1)
{
  v2 = sub_1ABAD25D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBD74(uint64_t a1)
{
  v2 = sub_1ABAD2484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBDB0(uint64_t a1)
{
  v2 = sub_1ABAD2484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBDEC(uint64_t a1)
{
  v2 = sub_1ABAD28C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBE28(uint64_t a1)
{
  v2 = sub_1ABAD28C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABACBE64(uint64_t a1)
{
  v2 = sub_1ABAD29C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABACBEA0(uint64_t a1)
{
  v2 = sub_1ABAD29C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityEventType.encode(to:)(void *a1)
{
  v2 = v1;
  sub_1ABAD219C(&qword_1EB4D04F8, &qword_1ABF30EB0);
  sub_1ABA7BB64();
  v157 = v5;
  v158 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7FBE0();
  v156 = v7;
  sub_1ABAD219C(&qword_1EB4D0500, &qword_1ABF30EB8);
  sub_1ABA7BB64();
  v154 = v9;
  v155 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  v153 = v11;
  sub_1ABAD219C(&qword_1EB4D0508, &qword_1ABF30EC0);
  sub_1ABA7BB64();
  v151 = v13;
  v152 = v12;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7FBE0();
  v150 = v15;
  sub_1ABAD219C(&qword_1EB4D0510, &qword_1ABF30EC8);
  sub_1ABA7BB64();
  v148 = v17;
  v149 = v16;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7FBE0();
  v147 = v19;
  sub_1ABAD219C(&qword_1EB4D0518, &qword_1ABF30ED0);
  sub_1ABA7BB64();
  v145 = v21;
  v146 = v20;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7FBE0();
  v144 = v23;
  sub_1ABAD219C(&qword_1EB4D0520, &qword_1ABF30ED8);
  sub_1ABA7BB64();
  v142 = v25;
  v143 = v24;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v26);
  sub_1ABA7FBE0();
  v141 = v27;
  v28 = sub_1ABAD219C(&qword_1EB4D0528, &qword_1ABF30EE0);
  sub_1ABA8E5AC(v28, &v165);
  v140 = v29;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v31);
  v32 = sub_1ABAD219C(&qword_1EB4D0530, &qword_1ABF30EE8);
  sub_1ABA8E5AC(v32, &v164);
  v139 = v33;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v35);
  v36 = sub_1ABAD219C(&qword_1EB4D0538, &qword_1ABF30EF0);
  sub_1ABA8E5AC(v36, &v163);
  v138 = v37;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v39);
  v40 = sub_1ABAD219C(&qword_1EB4D0540, &qword_1ABF30EF8);
  sub_1ABA8E5AC(v40, &v161);
  v137 = v41;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v43);
  v44 = sub_1ABAD219C(&qword_1EB4D0548, &qword_1ABF30F00);
  sub_1ABA8E5AC(v44, &v160);
  v136 = v45;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v46);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v47);
  v48 = sub_1ABAD219C(&qword_1EB4D0550, &qword_1ABF30F08);
  sub_1ABA8E5AC(v48, &v157);
  v135 = v49;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v50);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v51);
  v52 = sub_1ABAD219C(&qword_1EB4D0558, &qword_1ABF30F10);
  sub_1ABA8E5AC(v52, &v154);
  v134 = v53;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v54);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v55);
  v56 = sub_1ABAD219C(&qword_1EB4D0560, &qword_1ABF30F18);
  sub_1ABA8E5AC(v56, &v151);
  v133 = v57;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v58);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v59);
  v60 = sub_1ABAD219C(&qword_1EB4D0568, &qword_1ABF30F20);
  sub_1ABA8E5AC(v60, &v148);
  v132 = v61;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v62);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v63);
  v64 = sub_1ABAD219C(&qword_1EB4D0570, &qword_1ABF30F28);
  sub_1ABA8E5AC(v64, &v145);
  v131 = v65;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v66);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v67);
  v68 = sub_1ABAD219C(&qword_1EB4D0578, &qword_1ABF30F30);
  sub_1ABA8E5AC(v68, &v142);
  v130 = v69;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v70);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v71);
  v72 = sub_1ABAD219C(&qword_1EB4D0580, &qword_1ABF30F38);
  sub_1ABA8E5AC(v72, &v140);
  v129 = v73;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v74);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v75);
  v76 = sub_1ABAD219C(&qword_1EB4D0588, &qword_1ABF30F40);
  sub_1ABA8E5AC(v76, &v139);
  v128 = v77;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v78);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v79);
  v80 = sub_1ABAD219C(&qword_1EB4D0590, &qword_1ABF30F48);
  sub_1ABA8E5AC(v80, &v138);
  v127 = v81;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v82);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v83);
  v84 = sub_1ABAD219C(&qword_1EB4D0598, &qword_1ABF30F50);
  sub_1ABA8E5AC(v84, &v137);
  v126 = v85;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v86);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v87);
  v88 = sub_1ABAD219C(&qword_1EB4D05A0, &qword_1ABF30F58);
  sub_1ABA8E5AC(v88, &v136);
  v125 = v89;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v90);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v91);
  v92 = sub_1ABAD219C(&qword_1EB4D05A8, &qword_1ABF30F60);
  sub_1ABA8E5AC(v92, &v135);
  v124 = v93;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v94);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v95);
  v96 = sub_1ABAD219C(&qword_1EB4D05B0, &qword_1ABF30F68);
  sub_1ABA8E5AC(v96, &v134);
  v122 = v97;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v98);
  v100 = &v121 - v99;
  v101 = sub_1ABAD219C(&qword_1EB4D05B8, &qword_1ABF30F70);
  sub_1ABA7BB64();
  v121 = v102;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v103);
  v160 = sub_1ABAD219C(&qword_1EB4D05C0, &qword_1ABF30F78);
  sub_1ABA7BB64();
  v105 = v104;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v106);
  v108 = &v121 - v107;
  v109 = *v2;
  v110 = sub_1ABA93E20(a1, a1[3]);
  sub_1ABAD21E4();
  v159 = v108;
  sub_1ABF252E4();
  v111 = (v105 + 8);
  switch(v109)
  {
    case 1:
      v162 = 1;
      sub_1ABAD29C4();
      v118 = v159;
      v119 = v160;
      sub_1ABF24EC4();
      (*(v122 + 8))(v100, v123);
      return (*v111)(v118, v119);
    case 2:
      v162 = 2;
      sub_1ABAD2970();
      sub_1ABA93164(&type metadata for ActivityEventType.MeetingCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v135;
      goto LABEL_24;
    case 3:
      v162 = 3;
      sub_1ABAD291C();
      sub_1ABA93164(&type metadata for ActivityEventType.EatingCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v136;
      goto LABEL_24;
    case 4:
      v162 = 4;
      sub_1ABAD28C8();
      sub_1ABA93164(&type metadata for ActivityEventType.WatchingMediaCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v137;
      goto LABEL_24;
    case 5:
      v162 = 5;
      sub_1ABAD2874();
      sub_1ABA93164(&type metadata for ActivityEventType.CommunicatingCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v138;
      goto LABEL_24;
    case 6:
      v162 = 6;
      sub_1ABAD2820();
      sub_1ABA93164(&type metadata for ActivityEventType.ShoppingCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v139;
      goto LABEL_24;
    case 7:
      v162 = 7;
      sub_1ABAD27CC();
      sub_1ABA93164(&type metadata for ActivityEventType.MindfulCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v140;
      goto LABEL_24;
    case 8:
      v162 = 8;
      sub_1ABAD2778();
      sub_1ABA93164(&type metadata for ActivityEventType.SleepCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v142;
      goto LABEL_24;
    case 9:
      v162 = 9;
      sub_1ABAD2724();
      sub_1ABA93164(&type metadata for ActivityEventType.TravelCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v145;
      goto LABEL_24;
    case 10:
      v162 = 10;
      sub_1ABAD26D0();
      sub_1ABA93164(&type metadata for ActivityEventType.ReadingCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v148;
      goto LABEL_24;
    case 11:
      v162 = 11;
      sub_1ABAD267C();
      sub_1ABA93164(&type metadata for ActivityEventType.VacationCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v151;
      goto LABEL_24;
    case 12:
      v162 = 12;
      sub_1ABAD2628();
      sub_1ABA93164(&type metadata for ActivityEventType.SocialCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v154;
      goto LABEL_24;
    case 13:
      v162 = 13;
      sub_1ABAD25D4();
      sub_1ABA93164(&type metadata for ActivityEventType.WakingCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v157;
      goto LABEL_24;
    case 14:
      v162 = 14;
      sub_1ABAD2580();
      sub_1ABA93164(&type metadata for ActivityEventType.GoingToBedCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v160;
      goto LABEL_24;
    case 15:
      v162 = 15;
      sub_1ABAD252C();
      sub_1ABA93164(&type metadata for ActivityEventType.TypeOfPhysicalExerciseCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v161;
      goto LABEL_24;
    case 16:
      v162 = 16;
      sub_1ABAD24D8();
      sub_1ABA93164(&type metadata for ActivityEventType.CommuteCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v163;
      goto LABEL_24;
    case 17:
      v162 = 17;
      sub_1ABAD2484();
      sub_1ABA93164(&type metadata for ActivityEventType.WalkingCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v164;
      goto LABEL_24;
    case 18:
      v162 = 18;
      sub_1ABAD2430();
      sub_1ABA93164(&type metadata for ActivityEventType.RunningCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v115 = &v165;
LABEL_24:
      v114 = *(v115 - 32);
      break;
    case 19:
      v162 = 19;
      sub_1ABAD23DC();
      v116 = v141;
      sub_1ABA8145C(&type metadata for ActivityEventType.BikingCodingKeys, &v162);
      v117 = v142;
      v114 = v143;
      goto LABEL_28;
    case 20:
      v162 = 20;
      sub_1ABAD2388();
      v116 = v144;
      sub_1ABA8145C(&type metadata for ActivityEventType.HikingCodingKeys, &v162);
      v117 = v145;
      v114 = v146;
      goto LABEL_28;
    case 21:
      v162 = 21;
      sub_1ABAD2334();
      v116 = v147;
      sub_1ABA8145C(&type metadata for ActivityEventType.PhoneCallCodingKeys, &v162);
      v117 = v148;
      v114 = v149;
      goto LABEL_28;
    case 22:
      v162 = 22;
      sub_1ABAD22E0();
      v116 = v150;
      sub_1ABA8145C(&type metadata for ActivityEventType.FacetimeCodingKeys, &v162);
      v117 = v151;
      v114 = v152;
      goto LABEL_28;
    case 23:
      v162 = 23;
      sub_1ABAD228C();
      v116 = v153;
      sub_1ABA8145C(&type metadata for ActivityEventType.DrivingCodingKeys, &v162);
      v117 = v154;
      v114 = v155;
      goto LABEL_28;
    case 24:
      v162 = 24;
      sub_1ABAD2238();
      v116 = v156;
      sub_1ABA8145C(&type metadata for ActivityEventType.BehaviorCodingKeys, &v162);
      v117 = v157;
      v114 = v158;
LABEL_28:
      v113 = *(v117 + 8);
      v112 = v116;
      break;
    default:
      v162 = 0;
      sub_1ABAD2A18();
      sub_1ABA8145C(&type metadata for ActivityEventType.TransportationCodingKeys, &v162);
      v112 = sub_1ABA7E284();
      v114 = v101;
      break;
  }

  v113(v112, v114);
  return (*v111)(v110, v100);
}

uint64_t ActivityEventType.hashValue.getter()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

void ActivityEventType.init(from:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v178 = a2;
  v3 = sub_1ABAD219C(&qword_1EB4D0698, &qword_1ABF30F80);
  sub_1ABA8E5AC(v3, &v187);
  v167 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7FBE0();
  v177 = v6;
  v7 = sub_1ABAD219C(&qword_1EB4D06A0, &qword_1ABF30F88);
  sub_1ABA8E5AC(v7, &v186);
  v165 = v8;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v176[1] = v10;
  v11 = sub_1ABAD219C(&qword_1EB4D06A8, &qword_1ABF30F90);
  sub_1ABA8E5AC(v11, &v184);
  v163 = v12;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7FBE0();
  v176[0] = v14;
  v15 = sub_1ABAD219C(&qword_1EB4D06B0, &qword_1ABF30F98);
  sub_1ABA8E5AC(v15, &v183);
  v161 = v16;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  v175[1] = v18;
  v19 = sub_1ABAD219C(&qword_1EB4D06B8, &qword_1ABF30FA0);
  sub_1ABA8E5AC(v19, &v181);
  v159 = v20;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7FBE0();
  v175[0] = v22;
  v23 = sub_1ABAD219C(&qword_1EB4D06C0, &qword_1ABF30FA8);
  sub_1ABA8E5AC(v23, &v179);
  v157 = v24;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7FBE0();
  v174[1] = v26;
  v27 = sub_1ABAD219C(&qword_1EB4D06C8, &qword_1ABF30FB0);
  sub_1ABA8E5AC(v27, &v177);
  v155 = v28;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7FBE0();
  v174[0] = v30;
  v31 = sub_1ABAD219C(&qword_1EB4D06D0, &qword_1ABF30FB8);
  sub_1ABA8E5AC(v31, v176);
  v153[4] = v32;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7FBE0();
  v173[1] = v34;
  v35 = sub_1ABAD219C(&qword_1EB4D06D8, &qword_1ABF30FC0);
  sub_1ABA8E5AC(v35, v175);
  v153[2] = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  sub_1ABA7FBE0();
  v173[0] = v38;
  v39 = sub_1ABAD219C(&qword_1EB4D06E0, &qword_1ABF30FC8);
  sub_1ABA8E5AC(v39, v174);
  v153[0] = v40;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA7FBE0();
  v172[1] = v42;
  v43 = sub_1ABAD219C(&qword_1EB4D06E8, &qword_1ABF30FD0);
  sub_1ABA8E5AC(v43, v173);
  v152 = v44;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v45);
  sub_1ABA7FBE0();
  v172[0] = v46;
  v47 = sub_1ABAD219C(&qword_1EB4D06F0, &qword_1ABF30FD8);
  sub_1ABA8E5AC(v47, v172);
  v151 = v48;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v49);
  sub_1ABA7FBE0();
  v171[1] = v50;
  v51 = sub_1ABAD219C(&qword_1EB4D06F8, &qword_1ABF30FE0);
  sub_1ABA8E5AC(v51, v171);
  v150 = v52;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v53);
  sub_1ABA7FBE0();
  v171[0] = v54;
  v55 = sub_1ABAD219C(&qword_1EB4D0700, &qword_1ABF30FE8);
  sub_1ABA8E5AC(v55, v170);
  v149 = v56;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v57);
  sub_1ABA7FBE0();
  v170[1] = v58;
  v59 = sub_1ABAD219C(&qword_1EB4D0708, &qword_1ABF30FF0);
  sub_1ABA8E5AC(v59, v169);
  v148 = v60;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v61);
  sub_1ABA7FBE0();
  v170[0] = v62;
  v63 = sub_1ABAD219C(&qword_1EB4D0710, &qword_1ABF30FF8);
  sub_1ABA8E5AC(v63, v168);
  v147 = v64;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v65);
  sub_1ABA7FBE0();
  v181 = v66;
  v67 = sub_1ABAD219C(&qword_1EB4D0718, &qword_1ABF31000);
  sub_1ABA8E5AC(v67, &v167);
  v146 = v68;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v69);
  sub_1ABA7FBE0();
  v180 = v70;
  v71 = sub_1ABAD219C(&qword_1EB4D0720, &qword_1ABF31008);
  sub_1ABA8E5AC(v71, v166);
  v144 = v72;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v73);
  sub_1ABA7FBE0();
  v179 = v74;
  v75 = sub_1ABAD219C(&qword_1EB4D0728, &qword_1ABF31010);
  sub_1ABA8E5AC(v75, v164);
  v143 = v76;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v77);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v78);
  v79 = sub_1ABAD219C(&qword_1EB4D0730, &qword_1ABF31018);
  sub_1ABA8E5AC(v79, v162);
  v142 = v80;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v81);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v82);
  v83 = sub_1ABAD219C(&qword_1EB4D0738, &qword_1ABF31020);
  sub_1ABA8E5AC(v83, v160);
  v141 = v84;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v85);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v86);
  v87 = sub_1ABAD219C(&qword_1EB4D0740, &qword_1ABF31028);
  sub_1ABA8E5AC(v87, v158);
  v140 = v88;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v89);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v90);
  v91 = sub_1ABAD219C(&qword_1EB4D0748, &qword_1ABF31030);
  sub_1ABA8E5AC(v91, v156);
  v139 = v92;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v93);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v94);
  v95 = sub_1ABAD219C(&qword_1EB4D0750, &qword_1ABF31038);
  sub_1ABA8E5AC(v95, v154);
  v138 = v96;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v97);
  v99 = v132 - v98;
  v100 = sub_1ABAD219C(&qword_1EB4D0758, &qword_1ABF31040);
  sub_1ABA7BB64();
  v137 = v101;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v102);
  v104 = v132 - v103;
  sub_1ABAD219C(&qword_1EB4D0760, &qword_1ABF31048);
  sub_1ABA7BB64();
  v106 = v105;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v107);
  v108 = a1[3];
  v182 = a1;
  sub_1ABA93E20(a1, v108);
  sub_1ABAD21E4();
  v109 = v183;
  sub_1ABF252C4();
  if (v109)
  {
    goto LABEL_8;
  }

  v135 = v104;
  v134 = v100;
  v136 = v99;
  v110 = v180;
  v183 = v106;
  v111 = sub_1ABF24EA4();
  sub_1ABAD2F18(v111, 0);
  if (v114 == v115 >> 1)
  {
LABEL_7:
    v124 = sub_1ABF24B44();
    swift_allocError();
    v126 = v125;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v126 = &type metadata for ActivityEventType;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v124 - 8) + 104))(v126, *MEMORY[0x1E69E6AF8], v124);
    swift_willThrow();
    swift_unknownObjectRelease();
    v127 = sub_1ABAA0E34();
    v128(v127);
LABEL_8:
    v129 = v182;
LABEL_9:
    sub_1ABA84B54(v129);
    return;
  }

  v132[1] = 0;
  if (v114 < (v115 >> 1))
  {
    v133 = *(v113 + v114);
    sub_1ABAD48F8(v114 + 1, v115 >> 1, v112, v113, v114, v115);
    v117 = v116;
    v119 = v118;
    swift_unknownObjectRelease();
    if (v117 == v119 >> 1)
    {
      v120 = v178;
      switch(v133)
      {
        case 1:
          v185 = 1;
          sub_1ABAD29C4();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.WorkingCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v154;
          goto LABEL_34;
        case 2:
          v185 = 2;
          sub_1ABAD2970();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.MeetingCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v156;
          goto LABEL_34;
        case 3:
          v185 = 3;
          sub_1ABAD291C();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.EatingCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v158;
          goto LABEL_34;
        case 4:
          v185 = 4;
          sub_1ABAD28C8();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.WatchingMediaCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v160;
          goto LABEL_34;
        case 5:
          v185 = 5;
          sub_1ABAD2874();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.CommunicatingCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v162;
          goto LABEL_34;
        case 6:
          v185 = 6;
          sub_1ABAD2820();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.ShoppingCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v164;
          goto LABEL_34;
        case 7:
          v185 = 7;
          sub_1ABAD27CC();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.MindfulCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v166;
          goto LABEL_34;
        case 8:
          v185 = 8;
          sub_1ABAD2778();
          sub_1ABA8E5C4(&type metadata for ActivityEventType.SleepCodingKeys, &v185);
          swift_unknownObjectRelease();
          (*(v146 + 8))(v110, v145);
          goto LABEL_35;
        case 9:
          v185 = 9;
          sub_1ABAD2724();
          sub_1ABA8E5C4(&type metadata for ActivityEventType.TravelCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v168;
          goto LABEL_34;
        case 10:
          v185 = 10;
          sub_1ABAD26D0();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.ReadingCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v169;
          goto LABEL_34;
        case 11:
          v185 = 11;
          sub_1ABAD267C();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.VacationCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v170;
          goto LABEL_34;
        case 12:
          v185 = 12;
          sub_1ABAD2628();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.SocialCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v171;
          goto LABEL_34;
        case 13:
          v185 = 13;
          sub_1ABAD25D4();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.WakingCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v172;
          goto LABEL_34;
        case 14:
          v185 = 14;
          sub_1ABAD2580();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.GoingToBedCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v173;
          goto LABEL_34;
        case 15:
          v185 = 15;
          sub_1ABAD252C();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.TypeOfPhysicalExerciseCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v174;
          goto LABEL_34;
        case 16:
          v185 = 16;
          sub_1ABAD24D8();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.CommuteCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v175;
          goto LABEL_34;
        case 17:
          v185 = 17;
          sub_1ABAD2484();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.WalkingCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v176;
          goto LABEL_34;
        case 18:
          v185 = 18;
          sub_1ABAD2430();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.RunningCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = &v177;
          goto LABEL_34;
        case 19:
          v185 = 19;
          sub_1ABAD23DC();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.BikingCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = &v179;
          goto LABEL_34;
        case 20:
          v185 = 20;
          sub_1ABAD2388();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.HikingCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = &v181;
          goto LABEL_34;
        case 21:
          v185 = 21;
          sub_1ABAD2334();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.PhoneCallCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = &v183;
          goto LABEL_34;
        case 22:
          v185 = 22;
          sub_1ABAD22E0();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.FacetimeCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = &v184;
          goto LABEL_34;
        case 23:
          v185 = 23;
          sub_1ABAD228C();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.DrivingCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = &v186;
          goto LABEL_34;
        case 24:
          v185 = 24;
          sub_1ABAD2238();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.BehaviorCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = &v187;
          goto LABEL_34;
        default:
          v185 = 0;
          sub_1ABAD2A18();
          sub_1ABA7ECB8(&type metadata for ActivityEventType.TransportationCodingKeys, &v185);
          swift_unknownObjectRelease();
          v121 = sub_1ABA80580();
          v123 = v153;
LABEL_34:
          v122(v121, *(v123 - 32));
LABEL_35:
          v130 = sub_1ABAA0E34();
          v131(v130);
          v129 = v182;
          *v120 = v133;
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1ABACE600(uint64_t a1)
{
  sub_1ABF25234();
  ActivityEventType.hash(into:)();
  return sub_1ABF25294();
}

uint64_t ActivityEventType.lifeEventAllowedGraphObjectType.getter()
{
  switch(*v0)
  {
    case 1:
      v1 = type metadata accessor for CustomGraphWorkingActivityEvent(0);
      sub_1ABAB5BE0();
      v4 = &protocol conformance descriptor for CustomGraphWorkingActivityEvent;
      break;
    case 2:
      v1 = type metadata accessor for CustomGraphMeetingActivityEvent(0);
      sub_1ABA97EA8();
      v4 = &protocol conformance descriptor for CustomGraphMeetingActivityEvent;
      break;
    case 3:
      v1 = type metadata accessor for CustomGraphEatingActivityEvent(0);
      sub_1ABA976F8();
      v4 = &protocol conformance descriptor for CustomGraphEatingActivityEvent;
      break;
    case 4:
      v1 = type metadata accessor for CustomGraphWatchingTVActivityEvent(0);
      sub_1ABAA4410();
      v4 = &protocol conformance descriptor for CustomGraphWatchingTVActivityEvent;
      break;
    case 5:
      v1 = type metadata accessor for CustomGraphCommunicatingActivityEvent(0);
      sub_1ABA7AB30();
      v4 = &protocol conformance descriptor for CustomGraphCommunicatingActivityEvent;
      break;
    case 6:
      v1 = type metadata accessor for CustomGraphShoppingActivityEvent(0);
      sub_1ABAA2174();
      v4 = &protocol conformance descriptor for CustomGraphShoppingActivityEvent;
      break;
    case 7:
      v1 = type metadata accessor for CustomGraphMindfulnessActivityEvent(0);
      sub_1ABA96BA0();
      v4 = &protocol conformance descriptor for CustomGraphMindfulnessActivityEvent;
      break;
    case 8:
      v1 = type metadata accessor for CustomGraphSleepingActivityEvent(0);
      sub_1ABAA2790();
      v4 = &protocol conformance descriptor for CustomGraphSleepingActivityEvent;
      break;
    case 9:
      v1 = type metadata accessor for CustomGraphTravelingActivityEvent(0);
      sub_1ABAA4C68();
      v4 = &protocol conformance descriptor for CustomGraphTravelingActivityEvent;
      break;
    case 0xA:
      v1 = type metadata accessor for CustomGraphReadingActivityEvent(0);
      sub_1ABAA249C();
      v4 = &protocol conformance descriptor for CustomGraphReadingActivityEvent;
      break;
    case 0xB:
      v1 = type metadata accessor for CustomGraphVacationingActivityEvent(0);
      sub_1ABAA3EF8();
      v4 = &protocol conformance descriptor for CustomGraphVacationingActivityEvent;
      break;
    case 0xC:
      v1 = type metadata accessor for CustomGraphSocializingActivityEvent(0);
      sub_1ABAA481C();
      v4 = &protocol conformance descriptor for CustomGraphSocializingActivityEvent;
      break;
    case 0xD:
      v1 = type metadata accessor for CustomGraphWakingUpActivityEvent(0);
      sub_1ABA968D0();
      v4 = &protocol conformance descriptor for CustomGraphWakingUpActivityEvent;
      break;
    case 0xE:
      v1 = type metadata accessor for CustomGraphGoingToBedActivityEvent(0);
      sub_1ABAA3B48();
      v4 = &protocol conformance descriptor for CustomGraphGoingToBedActivityEvent;
      break;
    case 0xF:
      v1 = type metadata accessor for CustomGraphExercisingActivityEvent(0);
      sub_1ABAA1B3C();
      v4 = &protocol conformance descriptor for CustomGraphExercisingActivityEvent;
      break;
    case 0x10:
      v1 = type metadata accessor for CustomGraphCommuteActivityEvent(0);
      sub_1ABAA3718();
      v4 = &protocol conformance descriptor for CustomGraphCommuteActivityEvent;
      break;
    case 0x11:
      v1 = type metadata accessor for CustomGraphWalkingActivityEvent(0);
      sub_1ABAA1E30();
      v4 = &protocol conformance descriptor for CustomGraphWalkingActivityEvent;
      break;
    case 0x12:
      v1 = type metadata accessor for CustomGraphRunningActivityEvent(0);
      sub_1ABA9569C();
      v4 = &protocol conformance descriptor for CustomGraphRunningActivityEvent;
      break;
    case 0x13:
      v1 = type metadata accessor for CustomGraphBicyclingActivityEvent(0);
      sub_1ABAA2B30();
      v4 = &protocol conformance descriptor for CustomGraphBicyclingActivityEvent;
      break;
    case 0x14:
      v1 = type metadata accessor for CustomGraphHikingActivityEvent(0);
      sub_1ABAB0FC4();
      v4 = &protocol conformance descriptor for CustomGraphHikingActivityEvent;
      break;
    case 0x15:
      v1 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(0);
      sub_1ABA82690();
      v4 = &protocol conformance descriptor for CustomGraphOnThePhoneActivityEvent;
      break;
    case 0x16:
      v1 = type metadata accessor for CustomGraphFacetimeActivityEvent(0);
      sub_1ABA973E8();
      v4 = &protocol conformance descriptor for CustomGraphFacetimeActivityEvent;
      break;
    case 0x17:
      v1 = type metadata accessor for CustomGraphDrivingActivityEvent(0);
      sub_1ABAA2F48();
      v4 = &protocol conformance descriptor for CustomGraphDrivingActivityEvent;
      break;
    case 0x18:
      v1 = type metadata accessor for CustomGraphBehaviorActivityEvent(0);
      sub_1ABAA5180();
      v4 = &protocol conformance descriptor for CustomGraphBehaviorActivityEvent;
      break;
    default:
      v1 = type metadata accessor for CustomGraphTransportationActivityEvent(0);
      sub_1ABAA33D4();
      v4 = &protocol conformance descriptor for CustomGraphTransportationActivityEvent;
      break;
  }

  sub_1ABAD2154(v2, v3, v4);
  return v1;
}

uint64_t sub_1ABACEB28()
{
  sub_1ABA8B604();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = 0x7461636964657270;
    }

    else
    {
      v4 = 0x7463656A626FLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x7461636964657270;
    }

    else
    {
      v2 = 0x7463656A626FLL;
    }

    if (v1 == 1)
    {
      v6 = 0xE900000000000065;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v4, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_1ABACEC0C(char a1, uint64_t a2)
{
  v2 = 0x73736572646461;
  if (a1)
  {
    sub_1ABAA190C();
    if (v4 == 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    if (v4 == 1)
    {
      v9 = v6;
    }

    else
    {
      v9 = (v3 - 32) | 0x8000000000000000;
    }
  }

  else
  {
    v9 = 0xE700000000000000;
    v8 = 0x73736572646461;
  }

  if (a2)
  {
    sub_1ABAA190C();
    v15 = (v14 - 32) | 0x8000000000000000;
    if (v10 == 1)
    {
      v2 = v11;
    }

    else
    {
      v2 = v13;
    }

    if (v10 == 1)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  if (v8 == v2 && v9 == v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1ABA8BE28(v8, a2, v2);
  }

  return v18 & 1;
}

uint64_t sub_1ABACECCC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = "staticGlobalKnowledgeIndex";
  v6 = 1701736302;
  switch(v4)
  {
    case 1:
      v6 = sub_1ABA97980();
      v3 = (v7 - 32) | 0x8000000000000000;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v6 = 0x7865646E496F6ELL;
      break;
    case 3:
      v8 = 0x47746E657665;
      goto LABEL_9;
    case 4:
      v6 = 0x79676F6C6F746E6FLL;
      v3 = 0xED00007865646E49;
      break;
    case 5:
      v6 = 0x49747865746E6F63;
      v3 = 0xEC0000007865646ELL;
      break;
    case 6:
      v8 = 0x476C61636F6CLL;
LABEL_9:
      v6 = v8 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      v3 = 0xEF7865646E496870;
      break;
    case 7:
      v3 = 0x80000001ABF7EE80;
      v6 = 0xD00000000000001ALL;
      break;
    case 8:
      v3 = 0x80000001ABF7EEA0;
      v6 = 0xD000000000000018;
      break;
    default:
      break;
  }

  v9 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      sub_1ABA8BA2C();
      v9 = (v10 - 32) | 0x8000000000000000;
      break;
    case 2:
      v9 = 0xE700000000000000;
      v2 = 0x7865646E496F6ELL;
      break;
    case 3:
      v11 = 0x47746E657665;
      goto LABEL_19;
    case 4:
      v2 = 0x79676F6C6F746E6FLL;
      v9 = 0xED00007865646E49;
      break;
    case 5:
      v2 = 0x49747865746E6F63;
      v9 = 0xEC0000007865646ELL;
      break;
    case 6:
      sub_1ABA9FCC4();
      v11 = v12 & 0xFFFF0000FFFFFFFFLL | 0x476C00000000;
LABEL_19:
      v2 = v11 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
      v9 = 0xEF7865646E496870;
      break;
    case 7:
      v9 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD00000000000001ALL;
      break;
    case 8:
      sub_1ABA8A488();
      sub_1ABA7BB94();
      v2 = v13 | 8;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v9)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1ABA8BE28(v6, a2, v2);
  }

  return v15 & 1;
}

uint64_t sub_1ABACEF2C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656475746974616CLL;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x656475746974616CLL;
  v6 = "horizontalAccuracy";
  switch(v4)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 2:
      v5 = 0x6564757469746C61;
      break;
    case 3:
      v3 = 0x80000001ABF7EEE0;
      v5 = 0xD000000000000012;
      break;
    case 4:
      v5 = sub_1ABA97980();
      v3 = (v7 - 32) | 0x8000000000000000;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x6465657073;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x657372756F63;
      break;
    case 7:
      v5 = 0x6D617473656D6974;
      v3 = 0xE900000000000070;
      break;
    default:
      break;
  }

  v8 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      sub_1ABAB685C();
      break;
    case 2:
      v2 += 2805;
      break;
    case 3:
      v8 = (v6 - 32) | 0x8000000000000000;
      sub_1ABA7BB94();
      v2 = v9 | 2;
      break;
    case 4:
      sub_1ABA8BA2C();
      sub_1ABA8A488();
      break;
    case 5:
      v8 = 0xE500000000000000;
      v2 = 0x6465657073;
      break;
    case 6:
      v8 = 0xE600000000000000;
      v2 = 0x657372756F63;
      break;
    case 7:
      sub_1ABAA0874();
      v8 = v10 + 11;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1ABA8BE28(v5, a2, v2);
  }

  return v12 & 1;
}

uint64_t sub_1ABACF100(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  sub_1ABAD4F08();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA8BE28(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1ABACF18C()
{
  Features.FeatureFlag.feature.getter();
  sub_1ABF24AE4();
  sub_1ABA9FF78();
  Features.FeatureFlag.feature.getter();
  sub_1ABF24AE4();
  sub_1ABAA00D8();
  v4 = v4 && v0 == v3;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1ABA8BE28(v1, v3, v2);
  }

  return v5 & 1;
}

uint64_t sub_1ABACF230(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1954047348;
  }

  else
  {
    v3 = 0x65676E6172;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1954047348;
  }

  else
  {
    v5 = 0x65676E6172;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1ABACF2D0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x676E69727473;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x676E69727473;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x72656765746E69;
      break;
    case 2:
      v5 = 0x656C62756F64;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = sub_1ABAA5E90();
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1702125924;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x72656765746E69;
      break;
    case 2:
      v2 = 0x656C62756F64;
      break;
    case 3:
      v6 = 0xE800000000000000;
      sub_1ABA9A254();
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1702125924;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1ABACF41C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6E6F73726570;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6E6F73726570;
  switch(v4)
  {
    case 1:
      v5 = sub_1ABA7CFCC(0x616C6572u);
      v3 = 0xEC00000070696873;
      break;
    case 2:
      v5 = 0x49746361746E6F63;
      v3 = 0xEB000000006F666ELL;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x746E657665;
      break;
    case 4:
      v5 = 0x69746E6565726373;
      v3 = 0xEA0000000000656DLL;
      break;
    case 5:
      v3 = 0xE800000000000000;
      v5 = sub_1ABA7CFCC(0x61636F6Cu);
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      sub_1ABAB57D4();
      v6 = 0xEC00000070696873;
      break;
    case 2:
      v2 = 0x49746361746E6F63;
      v6 = 0xEB000000006F666ELL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x746E657665;
      break;
    case 4:
      v2 = 0x69746E6565726373;
      v6 = 0xEA0000000000656DLL;
      break;
    case 5:
      v6 = 0xE800000000000000;
      sub_1ABA9FCC4();
      sub_1ABAB57D4();
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1ABACF5C4(char a1)
{
  sub_1ABA9FAD8(a1, 0xD000000000000014);
  if (v11)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  sub_1ABAD4F08();
  if (v11)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v5 == v7 && v4 == (v10 | 0x8000000000000000);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1ABA8BE28(v5, v6, v7);
  }

  return v12 & 1;
}

uint64_t sub_1ABACF664()
{
  sub_1ABA829E0();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = sub_1ABA8BC08();
      break;
    case 2:
      v3 = sub_1ABAD4EE8();
      break;
    case 3:
      sub_1ABA8B08C();
      sub_1ABA83EA4();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_1ABAA0674();
      break;
    case 2:
      sub_1ABA9639C();
      break;
    case 3:
      sub_1ABA83E94();
      sub_1ABA8CC50();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == 0xEA00000000007963)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1ABA9055C(v3, v1, v2);
  }

  return v6 & 1;
}

uint64_t sub_1ABACF744(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656E69736F63;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x616564696C637565;
    }

    else
    {
      v4 = 7630692;
    }

    if (v3 == 1)
    {
      v5 = 0xE90000000000006ELL;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x656E69736F63;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x616564696C637565;
    }

    else
    {
      v2 = 7630692;
    }

    if (a2 == 1)
    {
      v6 = 0xE90000000000006ELL;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1ABACF828()
{
  sub_1ABAB6548();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v0 = 0xE600000000000000;
      v3 = sub_1ABA8B08C();
      break;
    case 2:
      v3 = sub_1ABA8ACF8();
      v0 = 0xE900000000000073;
      break;
    case 3:
      v3 = sub_1ABA8E050();
      break;
    case 4:
      v3 = sub_1ABA8B09C();
      break;
    case 5:
      v5 = sub_1ABA8B08C();
      v3 = sub_1ABA9FBAC(v5);
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(v1)
  {
    case 1:
      v6 = 0xE600000000000000;
      sub_1ABA83E94();
      break;
    case 2:
      sub_1ABA8A5B0();
      v6 = 0xE900000000000073;
      break;
    case 3:
      sub_1ABAD4EC8();
      break;
    case 4:
      sub_1ABA8B220();
      break;
    case 5:
      sub_1ABA83E94();
      sub_1ABA8AE90();
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v3, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_1ABACF934()
{
  sub_1ABA7BB94();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0x6C65646F6DLL;
    }

    if (v3 == 1)
    {
      v5 = 0x80000001ABF86090;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0x80000001ABF86070;
    v4 = v2 + 2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0x6C65646F6DLL;
    }

    if (v1 == 1)
    {
      v7 = 0x80000001ABF86090;
    }

    else
    {
      v7 = 0xE500000000000000;
    }
  }

  else
  {
    v7 = 0x80000001ABF86070;
    v6 = v2 + 2;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA8BE28(v4, v1, v6);
  }

  return v9 & 1;
}

uint64_t sub_1ABACFA08(char a1)
{
  sub_1ABA9FAD8(a1, 0xD000000000000017);
  if (v11)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  sub_1ABAD4F08();
  if (v11)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v11 = v5 == v7 && v4 == (v10 | 0x8000000000000000);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1ABA8BE28(v5, v6, v7);
  }

  return v12 & 1;
}

uint64_t sub_1ABACFA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return sub_1ABA7E270();
  }

  else
  {
    return sub_1ABA946D8(a1, a2, a3, a4);
  }
}

uint64_t sub_1ABACFAA8()
{
  sub_1ABA829E0();
  v3 = v2;
  v4 = 0xEA00000000007963;
  v5 = "semistructuredSearch";
  switch(v6)
  {
    case 1:
      v3 = sub_1ABA8BC08();
      break;
    case 2:
      v3 = sub_1ABAD4EE8();
      break;
    case 3:
      sub_1ABA8B08C();
      goto LABEL_7;
    case 4:
      v4 = 0x80000001ABF7F180;
      v3 = 0xD000000000000014;
      break;
    case 5:
      v3 = sub_1ABA8C8F0(16);
      break;
    case 6:
LABEL_7:
      sub_1ABA83EA4();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      sub_1ABAA0674();
      break;
    case 2:
      sub_1ABA9639C();
      break;
    case 3:
      sub_1ABA83E94();
      goto LABEL_14;
    case 4:
      v0 = (v5 - 32) | 0x8000000000000000;
      sub_1ABA7BB94();
      v2 = v7 | 4;
      break;
    case 5:
      sub_1ABAD4F14();
      break;
    case 6:
LABEL_14:
      sub_1ABA8CC50();
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA9055C(v3, v1, v2);
  }

  return v9 & 1;
}

uint64_t sub_1ABACFBFC()
{
  sub_1ABA9FE38();
  switch(v2)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 2:
      v0 = 0xEF6C65646F4D6C61;
      break;
    case 3:
      v0 = 0x80000001ABF7F110;
      break;
    case 4:
      sub_1ABA8CC50();
      break;
    case 5:
      v0 = 0x80000001ABF7F130;
      break;
    default:
      break;
  }

  sub_1ABA95098();
  switch(v7)
  {
    case 1:
      sub_1ABAB685C();
      break;
    case 2:
      v5 = 0x75747865746E6F63;
      v1 = 0xEF6C65646F4D6C61;
      break;
    case 3:
      v5 = 0xD000000000000011;
      v1 = (v6 - 32) | 0x8000000000000000;
      break;
    case 4:
      sub_1ABA83EA4();
      break;
    case 5:
      sub_1ABA8A488();
      v5 = 0xD000000000000015;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA8BE28(v3, v4, v5);
  }

  return v9 & 1;
}

uint64_t sub_1ABACFDAC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1953718636;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1954047342;
    }

    else
    {
      v4 = 0x7473726966;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1953718636;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1954047342;
    }

    else
    {
      v2 = 0x7473726966;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE500000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1ABACFE80()
{
  v0 = 0xEC0000006449746ELL;
  sub_1ABA8C508();
  v3 = v2;
  v4 = 0xEC0000006449746ELL;
  switch(v5)
  {
    case 1:
      v3 = 0x696669746E656469;
      v4 = 0xEA00000000007265;
      break;
    case 2:
      sub_1ABAB5988();
      sub_1ABAB685C();
      break;
    case 3:
      v4 = 0xE700000000000000;
      v3 = sub_1ABA95FB4();
      break;
    case 4:
      v4 = 0xE800000000000000;
      v3 = sub_1ABAB57C0();
      break;
    case 5:
      sub_1ABAA16B0();
      sub_1ABA82D80();
      break;
    case 6:
      v4 = 0xE500000000000000;
      v3 = sub_1ABA8C6D0();
      break;
    case 7:
      v4 = 0xE800000000000000;
      v3 = sub_1ABAA5E90();
      break;
    case 8:
      v4 = 0xE600000000000000;
      v3 = sub_1ABA96F2C();
      break;
    case 9:
      sub_1ABA7AB48();
      sub_1ABAA0874();
      v4 = v6 + 20;
      break;
    case 10:
      v3 = sub_1ABAA1228();
      v4 = 0xEA00000000007478;
      break;
    case 11:
      v4 = 0xE700000000000000;
      v3 = sub_1ABAB55F0();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v2 = 0x696669746E656469;
      v0 = 0xEA00000000007265;
      break;
    case 2:
      sub_1ABA951D8();
      sub_1ABAA0868();
      break;
    case 3:
      v0 = 0xE700000000000000;
      sub_1ABA90C38();
      break;
    case 4:
      v0 = 0xE800000000000000;
      sub_1ABAABC20();
      break;
    case 5:
      sub_1ABA88568();
      sub_1ABAB523C();
      break;
    case 6:
      v0 = 0xE500000000000000;
      sub_1ABAA0B3C();
      break;
    case 7:
      v0 = 0xE800000000000000;
      sub_1ABA9A254();
      break;
    case 8:
      v0 = 0xE600000000000000;
      sub_1ABAA0A00();
      break;
    case 9:
      sub_1ABA95428();
      sub_1ABAA0874();
      v0 = v7 + 20;
      break;
    case 10:
      sub_1ABAA105C();
      v0 = 0xEA00000000007478;
      break;
    case 11:
      v0 = 0xE700000000000000;
      sub_1ABAB53F8();
      break;
    default:
      break;
  }

  if (v3 == v2 && v4 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA9055C(v3, v1, v2);
  }

  return v9 & 1;
}

uint64_t sub_1ABAD0068()
{
  sub_1ABA9FCC4();
  sub_1ABA9FE38();
  switch(v2)
  {
    case 2:
      v0 = 0xED00007265626D75;
      break;
    case 3:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  sub_1ABA95098();
  switch(v6)
  {
    case 1:
      v5 = 0x6C61697274;
      break;
    case 2:
      v5 = 0x4E74656863746172;
      v1 = 0xED00007265626D75;
      break;
    case 3:
      v1 = 0xE800000000000000;
      v5 = 0x6F666E4972657375;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1ABAD01A0(char a1, char a2)
{
  v2 = "intelligencePlatformCore";
  if (a1)
  {
    v3 = "absoluteFilePath";
  }

  else
  {
    v3 = "intelligencePlatformCore";
  }

  if (a2)
  {
    v2 = "absoluteFilePath";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    sub_1ABA97980();
    sub_1ABA8BA2C();
    v4 = sub_1ABF25054();
  }

  return v4 & 1;
}

uint64_t sub_1ABAD0234(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000067;
  }

  else
  {
    v1 = 0xE800000000000000;
  }

  sub_1ABAD4F08();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA8BE28(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1ABAD02C8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000077;
  v3 = 0x6B5A7374726F7073;
  v4 = a1;
  v5 = 0x6B5A7374726F7073;
  v6 = 0xE900000000000077;
  v7 = "musicRecommendation";
  switch(v4)
  {
    case 1:
      v6 = 0x80000001ABF86030;
      v5 = 0xD000000000000013;
      break;
    case 2:
      v5 = sub_1ABA8C8F0(17);
      break;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x6C6F6F747069;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = (v7 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    case 2:
      sub_1ABAD4F14();
      break;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x6C6F6F747069;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA9055C(v5, a2, v3);
  }

  return v9 & 1;
}

uint64_t sub_1ABAD0400()
{
  sub_1ABA9FE38();
  switch(v2)
  {
    case 1:
      v0 = 0xEB0000000044495FLL;
      break;
    case 2:
      v0 = 0xE700000000000000;
      break;
    case 3:
      v0 = 0xE600000000000000;
      break;
    case 4:
      v0 = 0xE800000000000000;
      break;
    default:
      break;
  }

  sub_1ABA95098();
  switch(v6)
  {
    case 1:
      v5 = 0x61746164696B6957;
      v1 = 0xEB0000000044495FLL;
      break;
    case 2:
      v1 = 0xE700000000000000;
      v5 = 0x44495F6D616441;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v5 = 0x44495F434D55;
      break;
    case 4:
      v1 = 0xE800000000000000;
      v5 = 0x44495F7374617453;
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_1ABAD0584(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEE007372657A696CLL;
  v3 = 0x616D726F4E6C6C61;
  v4 = a1;
  v5 = 0x616D726F4E6C6C61;
  v6 = 0xEE007372657A696CLL;
  v7 = "filterSpecialCharacter";
  switch(v4)
  {
    case 1:
      sub_1ABAB685C();
      break;
    case 2:
      v5 = 0x6F72706572506F6ELL;
      v6 = 0xEF676E6973736563;
      break;
    case 3:
      v6 = 0x80000001ABF81BE0;
      v5 = 0xD000000000000016;
      break;
    case 4:
      v5 = 0x696C617469706163;
      v6 = 0xEA0000000000657ALL;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v5 = 0x74786554646170;
      break;
    case 6:
      v5 = sub_1ABA8C8F0(18);
      break;
    case 7:
      v6 = 0xE700000000000000;
      v5 = 0x6E756870726F6DLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 2:
      v3 = 0x6F72706572506F6ELL;
      v2 = 0xEF676E6973736563;
      break;
    case 3:
      v2 = (v7 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000016;
      break;
    case 4:
      v3 = 0x696C617469706163;
      v2 = 0xEA0000000000657ALL;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x74786554646170;
      break;
    case 6:
      sub_1ABAD4F14();
      break;
    case 7:
      v2 = 0xE700000000000000;
      v3 = 0x6E756870726F6DLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA9055C(v5, a2, v3);
  }

  return v9 & 1;
}

uint64_t sub_1ABAD07A8(char a1, uint64_t a2)
{
  v2 = 0xD000000000000011;
  v3 = "nonDiscretionary";
  v5 = 0xD000000000000011;
  v6 = "nonDiscretionary";
  switch(a1)
  {
    case 1:
      v6 = "includesOpenRange";
      goto LABEL_8;
    case 2:
      v6 = "includesClosedRange";
      goto LABEL_8;
    case 3:
      v6 = "includedInOpenRange";
      v5 = 0xD000000000000015;
      break;
    case 4:
      v6 = "includedInClosedRange";
      goto LABEL_10;
    case 5:
      v6 = "partialRangeFrom";
LABEL_8:
      v5 = 0xD000000000000013;
      break;
    case 6:
      v6 = "partialRangeThrough";
LABEL_10:
      v5 = 0xD000000000000010;
      break;
    case 7:
      v6 = "partialRangeUpTo";
      v5 = 0xD000000000000011;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "includesOpenRange";
      goto LABEL_18;
    case 2:
      v3 = "includesClosedRange";
      goto LABEL_18;
    case 3:
      v3 = "includedInOpenRange";
      v2 = 0xD000000000000015;
      break;
    case 4:
      v3 = "includedInClosedRange";
      goto LABEL_20;
    case 5:
      v3 = "partialRangeFrom";
LABEL_18:
      v2 = 0xD000000000000013;
      break;
    case 6:
      v3 = "partialRangeThrough";
LABEL_20:
      v2 = 0xD000000000000010;
      break;
    case 7:
      v3 = "partialRangeUpTo";
      break;
    default:
      break;
  }

  if (v5 == v2 && (v6 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1ABAD094C(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6974657263736964;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x80000001ABF86150;
  }

  else
  {
    v4 = 0xED00007972616E6FLL;
  }

  if (a2)
  {
    v5 = 0x6974657263736964;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (a2)
  {
    v6 = 0xED00007972616E6FLL;
  }

  else
  {
    v6 = 0x80000001ABF86150;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1ABAD09F0(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000079;
  }

  else
  {
    v1 = 0xE400000000000000;
  }

  sub_1ABAD4F08();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1ABA8BE28(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1ABAD0A7C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x745F6C616E676973;
  v4 = a1;
  v5 = 0x745F6C616E676973;
  v6 = 0xEB00000000657079;
  switch(v4)
  {
    case 1:
      v5 = 0x745F797469746E65;
      v6 = 0xEB00000000657079;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v5 = 0x7361696C61;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v5 = 0x44495F444DLL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x745F797469746E65;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x7361696C61;
      break;
    case 3:
      v2 = 0xE500000000000000;
      v3 = 0x44495F444DLL;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA9055C(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1ABAD0BB0()
{
  sub_1ABA9FE38();
  switch(v2)
  {
    case 1:
      sub_1ABAB5988();
      sub_1ABAA0868();
      break;
    case 2:
      v0 = 0xE700000000000000;
      sub_1ABA95FB4();
      break;
    case 3:
      v0 = 0xE800000000000000;
      sub_1ABAB57C0();
      break;
    case 4:
      sub_1ABAA16B0();
      sub_1ABAB523C();
      break;
    case 5:
      sub_1ABA8C6D0();
      break;
    case 6:
      v0 = 0xE800000000000000;
      sub_1ABAA5E90();
      break;
    case 7:
      v0 = 0xE600000000000000;
      sub_1ABA96F2C();
      break;
    case 8:
      sub_1ABA7AB48();
      sub_1ABAA0874();
      v0 = v3 + 20;
      break;
    case 9:
      sub_1ABAA1228();
      v0 = 0xEA00000000007478;
      break;
    case 10:
      v0 = 0xE700000000000000;
      sub_1ABAB55F0();
      break;
    default:
      break;
  }

  sub_1ABA95098();
  switch(v7)
  {
    case 1:
      sub_1ABA951D8();
      sub_1ABAB685C();
      break;
    case 2:
      v1 = 0xE700000000000000;
      sub_1ABA90C38();
      break;
    case 3:
      v1 = 0xE800000000000000;
      sub_1ABAABC20();
      break;
    case 4:
      sub_1ABA88568();
      sub_1ABA82D80();
      break;
    case 5:
      sub_1ABAA0B3C();
      break;
    case 6:
      v1 = 0xE800000000000000;
      sub_1ABA9A254();
      break;
    case 7:
      v1 = 0xE600000000000000;
      sub_1ABAA0A00();
      break;
    case 8:
      sub_1ABA95428();
      sub_1ABAA0874();
      v1 = v8 + 20;
      break;
    case 9:
      sub_1ABAA105C();
      v1 = 0xEA00000000007478;
      break;
    case 10:
      v1 = 0xE700000000000000;
      sub_1ABAB53F8();
      break;
    default:
      break;
  }

  if (v4 == v6 && v0 == v1)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1ABA8BE28(v4, v5, v6);
  }

  return v10 & 1;
}

uint64_t sub_1ABAD0D4C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x656C706F6570;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x656C706F6570;
  switch(v4)
  {
    case 1:
      v5 = sub_1ABA7CFCC(0x61636F6Cu);
      v3 = 0xE900000000000073;
      break;
    case 2:
      v5 = 0x73746E657665;
      break;
    case 3:
      v5 = 0x616C6C656373696DLL;
      v3 = 0xED000073756F656ELL;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      sub_1ABA9FCC4();
      sub_1ABAB57D4();
      v6 = 0xE900000000000073;
      break;
    case 2:
      v2 = 0x73746E657665;
      break;
    case 3:
      v2 = 0x616C6C656373696DLL;
      v6 = 0xED000073756F656ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1ABAD0E8C(char a1)
{
  sub_1ABAD4F08();
  if (v1 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1ABF25054();
  }

  swift_bridgeObjectRelease_n();
  return v3 & 1;
}

uint64_t sub_1ABAD0F00(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000474946;
  v3 = 0x4E4F435F4452454ELL;
  v4 = a1;
  v5 = 0x4E4F435F4452454ELL;
  v6 = 0xEB00000000474946;
  switch(v4)
  {
    case 1:
      v7 = "STANDING_MULTITASK";
      goto LABEL_10;
    case 2:
      v6 = 0x80000001ABF7EC70;
      v5 = 0xD000000000000028;
      break;
    case 3:
      v6 = 0x80000001ABF7ECA0;
      v5 = 0xD000000000000020;
      break;
    case 4:
      v6 = 0x80000001ABF7ECD0;
      v5 = 0xD00000000000001CLL;
      break;
    case 5:
      v6 = 0x80000001ABF7ECF0;
      v5 = 0xD00000000000002ELL;
      break;
    case 6:
      v6 = 0x80000001ABF7ED20;
      v5 = 0xD00000000000001DLL;
      break;
    case 7:
      v7 = "KNOWLEDGE_CONSTRUCTION_PERSON";
LABEL_10:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD00000000000001FLL;
      break;
    case 8:
      break;
    default:
      v6 = 0x80000001ABF7EC20;
      v5 = 0xD000000000000022;
      break;
  }

  switch(a2)
  {
    case 1:
      v8 = "STANDING_MULTITASK";
      goto LABEL_20;
    case 2:
      v2 = 0x80000001ABF7EC70;
      v3 = 0xD000000000000028;
      break;
    case 3:
      v2 = 0x80000001ABF7ECA0;
      v3 = 0xD000000000000020;
      break;
    case 4:
      v2 = 0x80000001ABF7ECD0;
      v3 = 0xD00000000000001CLL;
      break;
    case 5:
      v2 = 0x80000001ABF7ECF0;
      v3 = 0xD00000000000002ELL;
      break;
    case 6:
      v2 = 0x80000001ABF7ED20;
      v3 = 0xD00000000000001DLL;
      break;
    case 7:
      v8 = "KNOWLEDGE_CONSTRUCTION_PERSON";
LABEL_20:
      v2 = v8 | 0x8000000000000000;
      v3 = 0xD00000000000001FLL;
      break;
    case 8:
      break;
    default:
      v2 = 0x80000001ABF7EC20;
      v3 = 0xD000000000000022;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1ABA9055C(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_1ABAD10F8()
{
  sub_1ABA8B604();
  v2 = 0xE700000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      sub_1ABAA0868();
      break;
    case 2:
      v5 = sub_1ABA7CFCC(0x616C6572u);
      v2 = 0xEE00644970696873;
      break;
    case 3:
      v5 = 0xD000000000000015;
      v2 = 0x80000001ABF859E0;
      break;
    case 4:
      v2 = 0xE600000000000000;
      v5 = 0x7463656A626FLL;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(v0)
  {
    case 1:
      sub_1ABAB685C();
      break;
    case 2:
      sub_1ABAB57D4();
      v6 = 0xEE00644970696873;
      break;
    case 3:
      sub_1ABA8A488();
      break;
    case 4:
      v6 = 0xE600000000000000;
      v1 = 0x7463656A626FLL;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v5, v0, v1);
  }

  return v8 & 1;
}

uint64_t sub_1ABAD1260(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x4974736575716572;
  v4 = 0xE900000000000064;
  v5 = a1;
  v6 = 0x4974736575716572;
  switch(v5)
  {
    case 1:
      v6 = sub_1ABAB5988();
      v4 = 0xE900000000000065;
      break;
    case 2:
      v4 = 0xE700000000000000;
      v6 = sub_1ABA95FB4();
      break;
    case 3:
      v4 = 0xE800000000000000;
      v6 = sub_1ABAB57C0();
      break;
    case 4:
      sub_1ABAA16B0();
      sub_1ABA82D80();
      break;
    case 5:
      v4 = 0xE500000000000000;
      v6 = sub_1ABA8C6D0();
      break;
    case 6:
      v4 = 0xE800000000000000;
      v6 = sub_1ABAA5E90();
      break;
    case 7:
      v4 = 0xE600000000000000;
      v6 = sub_1ABA96F2C();
      break;
    case 8:
      v6 = sub_1ABA7AB48();
      v4 = 0xE900000000000079;
      break;
    case 9:
      v6 = sub_1ABAA1228();
      v4 = 0xEA00000000007478;
      break;
    case 10:
      v4 = 0xE700000000000000;
      v6 = sub_1ABAB55F0();
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      sub_1ABA951D8();
      v2 = 0xE900000000000065;
      break;
    case 2:
      v2 = 0xE700000000000000;
      sub_1ABA90C38();
      break;
    case 3:
      v2 = 0xE800000000000000;
      sub_1ABAABC20();
      break;
    case 4:
      sub_1ABA88568();
      sub_1ABAB523C();
      break;
    case 5:
      v2 = 0xE500000000000000;
      sub_1ABAA0B3C();
      break;
    case 6:
      v2 = 0xE800000000000000;
      sub_1ABA9A254();
      break;
    case 7:
      v2 = 0xE600000000000000;
      sub_1ABAA0A00();
      break;
    case 8:
      sub_1ABA95428();
      v2 = 0xE900000000000079;
      break;
    case 9:
      sub_1ABAA105C();
      v2 = 0xEA00000000007478;
      break;
    case 10:
      v2 = 0xE700000000000000;
      sub_1ABAB53F8();
      break;
    default:
      break;
  }

  if (v6 == v3 && v4 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA9055C(v6, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1ABAD1410(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x796C6B656577;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x796C68746E6F6DLL;
    }

    else
    {
      v4 = 0x6C61756E6E61;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x796C6B656577;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x796C68746E6F6DLL;
    }

    else
    {
      v2 = 0x6C61756E6E61;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1ABAD1524(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a1);
  sub_1ABA9FF78();
  a3(a2);
  sub_1ABAA00D8();
  v9 = v9 && v3 == v8;
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1ABA8BE28(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t sub_1ABAD15A0(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0x726F63655273746BLL;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2 == 1)
    {
      v4 = 0xED00006570795464;
    }

    else
    {
      v4 = 0x80000001ABF85F90;
    }
  }

  else
  {
    v4 = 0x80000001ABF85F60;
    v3 = 0xD000000000000014;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0x726F63655273746BLL;
    }

    else
    {
      v5 = 0xD000000000000012;
    }

    if (a2 == 1)
    {
      v6 = 0xED00006570795464;
    }

    else
    {
      v6 = 0x80000001ABF85F90;
    }
  }

  else
  {
    v6 = 0x80000001ABF85F60;
    v5 = 0xD000000000000014;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_1ABAD1684()
{
  sub_1ABAB6548();
  v3 = v2;
  switch(v4)
  {
    case 1:
      v3 = sub_1ABA8ACF8();
      v0 = 0xE900000000000073;
      break;
    case 2:
      v3 = sub_1ABA8E050();
      break;
    case 3:
      v3 = sub_1ABA8B09C();
      break;
    case 4:
      v5 = sub_1ABA8B08C();
      v3 = sub_1ABA9FBAC(v5);
      break;
    case 5:
      v3 = 0x6E69727473627573;
      v0 = 0xE900000000000067;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(v1)
  {
    case 1:
      sub_1ABA8A5B0();
      v6 = 0xE900000000000073;
      break;
    case 2:
      sub_1ABAD4EC8();
      break;
    case 3:
      sub_1ABA8B220();
      break;
    case 4:
      sub_1ABA83E94();
      sub_1ABA8AE90();
      break;
    case 5:
      v2 = 0x6E69727473627573;
      v6 = 0xE900000000000067;
      break;
    default:
      break;
  }

  if (v3 == v2 && v0 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v3, v1, v2);
  }

  return v8 & 1;
}

uint64_t sub_1ABAD17B8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x73736563637573;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x73736563637573;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x746C757365526F6ELL;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x726F727265;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x746E65746E496F6ELL;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x746C757365526F6ELL;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x726F727265;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x746E65746E496F6ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1ABA8BE28(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1ABAD18F0()
{
  v0 = 0xEF656C626154746ELL;
  sub_1ABA7BB94();
  sub_1ABA8C508();
  v4 = "ktsCadenceAnnual";
  v5 = "ktsCadenceMonthly";
  v6 = v2;
  v7 = 0xEF656C626154746ELL;
  v8 = "ktsCadenceWeekly";
  switch(v9)
  {
    case 1:
      v10 = "veScore";
      goto LABEL_5;
    case 2:
      v7 = 0x80000001ABF85F20;
      v6 = v3 + 1;
      break;
    case 3:
      v10 = "ktsCadenceMonthly";
LABEL_5:
      v7 = v10 | 0x8000000000000000;
      v6 = sub_1ABA97980();
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v11 = v8 - 32;
      goto LABEL_10;
    case 2:
      v0 = (v5 - 32) | 0x8000000000000000;
      v2 = v3 + 1;
      break;
    case 3:
      v11 = v4 - 32;
LABEL_10:
      v0 = v11 | 0x8000000000000000;
      sub_1ABA8BA2C();
      break;
    default:
      break;
  }

  if (v6 == v2 && v7 == v0)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1ABA9055C(v6, v1, v2);
  }

  return v13 & 1;
}

uint64_t sub_1ABAD1A5C()
{
  sub_1ABA7AB5C();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABAD1BAC()
{
  sub_1ABA7AB5C();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABAD1C3C()
{
  sub_1ABA81488();
  sub_1ABA7AB5C();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABAD1DAC()
{
  sub_1ABA7AB5C();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

uint64_t sub_1ABAD1DFC(uint64_t a1)
{
  sub_1ABF25234();
  sub_1ABAD4B80();
  sub_1ABF23A94();
  return sub_1ABF25294();
}

uint64_t sub_1ABAD1E60(char a1)
{
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0]((a1 & 1u) + 1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAD1EB0(char a1)
{
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](a1 & 1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAD1F38(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_1ABA7AB5C();
  v4 = a2(a1);
  sub_1ABAA023C(v4, v5, v6);

  return sub_1ABF25294();
}

uint64_t sub_1ABAD1FDC()
{
  sub_1ABA7AB5C();
  Features.FeatureFlag.feature.getter();
  v0 = sub_1ABF24AE4();
  sub_1ABAA023C(v0, v1, v2);

  return sub_1ABF25294();
}

uint64_t sub_1ABAD202C(unsigned __int8 a1)
{
  sub_1ABA7AB5C();
  sub_1ABF25264();
  return sub_1ABF25294();
}

uint64_t sub_1ABAD206C(unsigned __int8 a1, uint64_t (*a2)(void))
{
  sub_1ABA7AB5C();
  a2(a1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAD20CC(uint64_t a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  sub_1ABA7AB5C();
  a2(v5, a1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAD2114(uint64_t a1)
{
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](a1);
  return sub_1ABF25294();
}

uint64_t sub_1ABAD2154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ABAD219C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1ABAD21E4()
{
  result = qword_1EB4D05C8;
  if (!qword_1EB4D05C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D05C8);
  }

  return result;
}

unint64_t sub_1ABAD2238()
{
  result = qword_1EB4D05D0;
  if (!qword_1EB4D05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D05D0);
  }

  return result;
}

unint64_t sub_1ABAD228C()
{
  result = qword_1EB4D05D8;
  if (!qword_1EB4D05D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D05D8);
  }

  return result;
}

unint64_t sub_1ABAD22E0()
{
  result = qword_1EB4D05E0;
  if (!qword_1EB4D05E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D05E0);
  }

  return result;
}

unint64_t sub_1ABAD2334()
{
  result = qword_1EB4D05E8;
  if (!qword_1EB4D05E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D05E8);
  }

  return result;
}

unint64_t sub_1ABAD2388()
{
  result = qword_1EB4D05F0;
  if (!qword_1EB4D05F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D05F0);
  }

  return result;
}

unint64_t sub_1ABAD23DC()
{
  result = qword_1EB4D05F8;
  if (!qword_1EB4D05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D05F8);
  }

  return result;
}

unint64_t sub_1ABAD2430()
{
  result = qword_1EB4D0600;
  if (!qword_1EB4D0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0600);
  }

  return result;
}

unint64_t sub_1ABAD2484()
{
  result = qword_1EB4D0608;
  if (!qword_1EB4D0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0608);
  }

  return result;
}

unint64_t sub_1ABAD24D8()
{
  result = qword_1EB4D0610;
  if (!qword_1EB4D0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0610);
  }

  return result;
}

unint64_t sub_1ABAD252C()
{
  result = qword_1EB4D0618;
  if (!qword_1EB4D0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0618);
  }

  return result;
}

unint64_t sub_1ABAD2580()
{
  result = qword_1EB4D0620;
  if (!qword_1EB4D0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0620);
  }

  return result;
}

unint64_t sub_1ABAD25D4()
{
  result = qword_1EB4D0628;
  if (!qword_1EB4D0628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0628);
  }

  return result;
}

unint64_t sub_1ABAD2628()
{
  result = qword_1EB4D0630;
  if (!qword_1EB4D0630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0630);
  }

  return result;
}

unint64_t sub_1ABAD267C()
{
  result = qword_1EB4D0638;
  if (!qword_1EB4D0638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0638);
  }

  return result;
}

unint64_t sub_1ABAD26D0()
{
  result = qword_1EB4D0640;
  if (!qword_1EB4D0640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0640);
  }

  return result;
}

unint64_t sub_1ABAD2724()
{
  result = qword_1EB4D0648;
  if (!qword_1EB4D0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0648);
  }

  return result;
}

unint64_t sub_1ABAD2778()
{
  result = qword_1EB4D0650;
  if (!qword_1EB4D0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0650);
  }

  return result;
}

unint64_t sub_1ABAD27CC()
{
  result = qword_1EB4D0658;
  if (!qword_1EB4D0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0658);
  }

  return result;
}

unint64_t sub_1ABAD2820()
{
  result = qword_1EB4D0660;
  if (!qword_1EB4D0660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0660);
  }

  return result;
}

unint64_t sub_1ABAD2874()
{
  result = qword_1EB4D0668;
  if (!qword_1EB4D0668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0668);
  }

  return result;
}

unint64_t sub_1ABAD28C8()
{
  result = qword_1EB4D0670;
  if (!qword_1EB4D0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0670);
  }

  return result;
}

unint64_t sub_1ABAD291C()
{
  result = qword_1EB4D0678;
  if (!qword_1EB4D0678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0678);
  }

  return result;
}

unint64_t sub_1ABAD2970()
{
  result = qword_1EB4D0680;
  if (!qword_1EB4D0680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0680);
  }

  return result;
}

unint64_t sub_1ABAD29C4()
{
  result = qword_1EB4D0688;
  if (!qword_1EB4D0688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0688);
  }

  return result;
}

unint64_t sub_1ABAD2A18()
{
  result = qword_1EB4D0690;
  if (!qword_1EB4D0690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0690);
  }

  return result;
}

uint64_t sub_1ABAD2A7C(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1AC5A9A70](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_1ABAD2AD4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1ABF24424();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_1ABAD2B2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABAD2B54();
  *a1 = result;
  return result;
}

uint64_t sub_1ABAD2B64(uint64_t a1, uint64_t a2)
{
  sub_1ABF23C04();
  sub_1ABF23D34();
}

void sub_1ABAD2BD0()
{
  sub_1ABA8B804();
  nullsub_1();
  *v0 = v1;
}

uint64_t sub_1ABAD2C24()
{
  v1 = sub_1ABA8B804();
  result = sub_1ABE41F70(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

void *sub_1ABAD2C4C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1ABAD2C5C(uint64_t a1)
{
  sub_1ABAD2154(&qword_1EB4D0E40, type metadata accessor for BPSDemand, &unk_1ABF32214);
  sub_1ABAD2154(&qword_1EB4D0E48, type metadata accessor for BPSDemand, &unk_1ABF321B4);
  return sub_1ABF24D74();
}

uint64_t sub_1ABAD2D18@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1ABF23BD4();

  *a2 = v3;
  return result;
}

uint64_t sub_1ABAD2D60()
{
  v1 = sub_1ABA8B804();
  result = sub_1ABAF81A4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1ABAD2D88(uint64_t a1)
{
  sub_1ABAD2154(&qword_1ED86B968, type metadata accessor for MLModelMetadataKey, &unk_1ABF33010);
  sub_1ABAD2154(&unk_1EB4D0EE0, type metadata accessor for MLModelMetadataKey, &unk_1ABF32EB8);

  return sub_1ABF24D74();
}

uint64_t sub_1ABAD2E44(uint64_t a1)
{
  sub_1ABAD2154(&qword_1EB4D0E30, type metadata accessor for BMUseCaseIdentifier, &unk_1ABF32428);
  sub_1ABAD2154(&qword_1EB4D0E38, type metadata accessor for BMUseCaseIdentifier, &unk_1ABF323C8);

  return sub_1ABF24D74();
}

void sub_1ABAD2F18(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_1ABA90548();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1ABAD2F54()
{
  result = qword_1EB4D0838;
  if (!qword_1EB4D0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0838);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EntityIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for EntityIdentifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

__n128 sub_1ABAD3034(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1ABAD3048(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAD3068(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1ABAD318C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABAD31AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1ABAD31D4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1ABAD325C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
        break;
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABAD34CC()
{
  result = qword_1EB4D0C50;
  if (!qword_1EB4D0C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0C50);
  }

  return result;
}

unint64_t sub_1ABAD371C()
{
  result = qword_1EB4D0C90;
  if (!qword_1EB4D0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0C90);
  }

  return result;
}

unint64_t sub_1ABAD3774()
{
  result = qword_1EB4D0C98;
  if (!qword_1EB4D0C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0C98);
  }

  return result;
}

unint64_t sub_1ABAD37CC()
{
  result = qword_1EB4D0CA0;
  if (!qword_1EB4D0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CA0);
  }

  return result;
}

unint64_t sub_1ABAD3824()
{
  result = qword_1EB4D0CA8;
  if (!qword_1EB4D0CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CA8);
  }

  return result;
}

unint64_t sub_1ABAD387C()
{
  result = qword_1EB4D0CB0;
  if (!qword_1EB4D0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CB0);
  }

  return result;
}

unint64_t sub_1ABAD38D4()
{
  result = qword_1EB4D0CB8;
  if (!qword_1EB4D0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CB8);
  }

  return result;
}

unint64_t sub_1ABAD392C()
{
  result = qword_1EB4D0CC0;
  if (!qword_1EB4D0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CC0);
  }

  return result;
}

unint64_t sub_1ABAD3984()
{
  result = qword_1EB4D0CC8;
  if (!qword_1EB4D0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CC8);
  }

  return result;
}

unint64_t sub_1ABAD39DC()
{
  result = qword_1EB4D0CD0;
  if (!qword_1EB4D0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CD0);
  }

  return result;
}

unint64_t sub_1ABAD3A34()
{
  result = qword_1EB4D0CD8;
  if (!qword_1EB4D0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CD8);
  }

  return result;
}

unint64_t sub_1ABAD3A8C()
{
  result = qword_1EB4D0CE0;
  if (!qword_1EB4D0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CE0);
  }

  return result;
}

unint64_t sub_1ABAD3AE4()
{
  result = qword_1EB4D0CE8;
  if (!qword_1EB4D0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CE8);
  }

  return result;
}

unint64_t sub_1ABAD3B3C()
{
  result = qword_1EB4D0CF0;
  if (!qword_1EB4D0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CF0);
  }

  return result;
}

unint64_t sub_1ABAD3B94()
{
  result = qword_1EB4D0CF8;
  if (!qword_1EB4D0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0CF8);
  }

  return result;
}

unint64_t sub_1ABAD3BEC()
{
  result = qword_1EB4D0D00;
  if (!qword_1EB4D0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D00);
  }

  return result;
}

unint64_t sub_1ABAD3C44()
{
  result = qword_1EB4D0D08;
  if (!qword_1EB4D0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D08);
  }

  return result;
}

unint64_t sub_1ABAD3C9C()
{
  result = qword_1EB4D0D10;
  if (!qword_1EB4D0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D10);
  }

  return result;
}

unint64_t sub_1ABAD3CF4()
{
  result = qword_1EB4D0D18;
  if (!qword_1EB4D0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D18);
  }

  return result;
}

unint64_t sub_1ABAD3D4C()
{
  result = qword_1EB4D0D20;
  if (!qword_1EB4D0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D20);
  }

  return result;
}

unint64_t sub_1ABAD3DA4()
{
  result = qword_1EB4D0D28;
  if (!qword_1EB4D0D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D28);
  }

  return result;
}

unint64_t sub_1ABAD3DFC()
{
  result = qword_1EB4D0D30;
  if (!qword_1EB4D0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D30);
  }

  return result;
}

unint64_t sub_1ABAD3E54()
{
  result = qword_1EB4D0D38;
  if (!qword_1EB4D0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D38);
  }

  return result;
}

unint64_t sub_1ABAD3EAC()
{
  result = qword_1EB4D0D40;
  if (!qword_1EB4D0D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D40);
  }

  return result;
}

unint64_t sub_1ABAD3F04()
{
  result = qword_1EB4D0D48;
  if (!qword_1EB4D0D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D48);
  }

  return result;
}

unint64_t sub_1ABAD3F5C()
{
  result = qword_1EB4D0D50;
  if (!qword_1EB4D0D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D50);
  }

  return result;
}

unint64_t sub_1ABAD3FB4()
{
  result = qword_1EB4D0D58;
  if (!qword_1EB4D0D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D58);
  }

  return result;
}

unint64_t sub_1ABAD400C()
{
  result = qword_1EB4D0D60;
  if (!qword_1EB4D0D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D60);
  }

  return result;
}

unint64_t sub_1ABAD4064()
{
  result = qword_1EB4D0D68;
  if (!qword_1EB4D0D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D68);
  }

  return result;
}

unint64_t sub_1ABAD40BC()
{
  result = qword_1EB4D0D70;
  if (!qword_1EB4D0D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D70);
  }

  return result;
}

unint64_t sub_1ABAD4114()
{
  result = qword_1EB4D0D78;
  if (!qword_1EB4D0D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D78);
  }

  return result;
}

unint64_t sub_1ABAD416C()
{
  result = qword_1EB4D0D80;
  if (!qword_1EB4D0D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D80);
  }

  return result;
}

unint64_t sub_1ABAD41C4()
{
  result = qword_1EB4D0D88;
  if (!qword_1EB4D0D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D88);
  }

  return result;
}

unint64_t sub_1ABAD421C()
{
  result = qword_1EB4D0D90;
  if (!qword_1EB4D0D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D90);
  }

  return result;
}

unint64_t sub_1ABAD4274()
{
  result = qword_1EB4D0D98;
  if (!qword_1EB4D0D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D0D98);
  }

  return result;
}