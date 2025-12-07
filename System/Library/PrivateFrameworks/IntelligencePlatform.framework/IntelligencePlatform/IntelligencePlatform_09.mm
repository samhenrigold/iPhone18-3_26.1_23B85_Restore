uint64_t sub_1ABB289E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1ABF24244();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1ABB28A7C, v6, v8);
}

uint64_t sub_1ABB28A7C()
{
  sub_1ABA7BC04();
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1ABB28B20;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1ABB28B20()
{
  sub_1ABA7BC04();
  sub_1ABA7BC10();
  v1 = *v0;
  sub_1ABA7D1C8();
  *v2 = v1;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  v4 = *(v1 + 8);

  return v4();
}

id sub_1ABB28C18()
{
  ObjectType = swift_getObjectType();
  v2 = qword_1EB4D2C78;
  v3 = swift_slowAlloc();
  *v3 = 0;
  *&v0[v2] = v3;
  v4 = qword_1EB4D2C80;
  sub_1ABF247E4();
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  sub_1ABF242D4();
  *&v0[v4] = sub_1ABF23944();
  v5 = &v0[qword_1EB4D2C88];
  *v5 = 0;
  v5[8] = 2;
  *&v0[qword_1EB4D2C90] = *MEMORY[0x1E698F0A0];
  *&v0[qword_1EB4D2C98] = 0;
  v7.receiver = v0;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1ABB28D54(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_1ABF24AB4();
  return 0;
}

uint64_t sub_1ABB28D9C(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1ABB28DB4(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 2)
  {
  }

  return result;
}

unint64_t sub_1ABB28DE4()
{
  result = qword_1EB4D2C70;
  if (!qword_1EB4D2C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D2C70);
  }

  return result;
}

uint64_t sub_1ABB28E38()
{
  sub_1ABA7BC04();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1ABA7FDA0;

  return sub_1ABB26A78(v2);
}

uint64_t sub_1ABB28F2C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB28F50(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB28FB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1ABB29004(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1ABB29044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABB29110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1ABB2914C(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t initializeBufferWithCopyOfBuffer for SearchMode(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1ABB2917C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABB291BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABB29200(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_1ABB29230(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t BMDevicePlatform.deviceMetadataDevicePlatform.getter(uint64_t result)
{
  if ((result - 1) < 8)
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t Sequence<>.biomePublisher()(uint64_t a1)
{
  v3 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SequencePublisher(0, a1, v6, v7);
  (*(v3 + 16))(v5, v1, a1);
  sub_1ABB29384(v5);
  objc_opt_self();
  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t sub_1ABB293B8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1ABB2944C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60)], a1, v4);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

void sub_1ABB29548(void *a1)
{
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v7 = *(*&v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17[-v8];
  v18.val[0].f64[0] = v6;
  v18.val[0].f64[1] = *v10;
  v18.val[1] = v18.val[0];
  v11 = v17;
  vst2q_f64(v11, v18);
  type metadata accessor for SequencePublisher.Inner(0, v17);
  (*(v7 + 16))(v9, &v1[*((v5 & v3) + 0x60)], COERCE_FLOAT64_T(*&v6));
  v12 = swift_unknownObjectRetain();
  v13 = sub_1ABB29778(v12, v9);
  v14 = *((*v4 & *v13) + 0x88);
  swift_beginAccess();
  if (*(v13 + v14))
  {
    [a1 receiveSubscription_];
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x1E698F0C8]) init];
    [a1 receiveSubscription_];

    v16 = [objc_opt_self() success];
    [a1 receiveCompletion_];

    sub_1ABB297BC();
  }
}

void sub_1ABB297BC()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E7D40];
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v5 = sub_1ABF247E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  os_unfair_lock_lock(*&v0[*((v3 & v1) + 0xA0)]);
  sub_1ABA7B9B4(v8, 1, 1, v4);
  v9 = *((*v2 & *v0) + 0x70);
  swift_beginAccess();
  (*(v6 + 40))(&v0[v9], v8, v5);
  swift_endAccess();
  *&v0[*((*v2 & *v0) + 0x78)] = 0;
  swift_unknownObjectRelease();
  sub_1ABB2A428(v0);
}

void sub_1ABB29948(void *a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  sub_1ABB29548(a3);
  swift_unknownObjectRelease();
}

id sub_1ABB299B0(void *a1)
{
  v1 = a1;
  sub_1ABB29A18();

  v2 = sub_1ABF23BD4();

  return v2;
}

uint64_t sub_1ABB29A18()
{
  v1 = v0;
  v2 = *v0;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v6 = sub_1ABF247E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  os_unfair_lock_lock(*&v1[*((v4 & v2) + 0xA0)]);
  v10 = *((*v3 & *v1) + 0x70);
  swift_beginAccess();
  (*(v7 + 16))(v9, &v1[v10], v6);
  if (sub_1ABA7E1E0(v9, 1, v5) == 1)
  {
    (*(v7 + 8))(v9, v6);
LABEL_6:
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_7;
  }

  sub_1ABAD219C(&qword_1EB4D2DF8, &unk_1ABF3A5B0);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  if (!*(&v15 + 1))
  {
LABEL_7:
    sub_1ABB2B0E0(&v14);
    v11 = 0x65636E6575716553;
    goto LABEL_8;
  }

  sub_1ABA946C0(&v14, v17);
  sub_1ABA93E20(v17, v17[3]);
  v11 = sub_1ABF24FF4();
  sub_1ABA84B54(v17);
LABEL_8:
  sub_1ABB2A428(v1);
  return v11;
}

id sub_1ABB29C44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v36 = a2;
  v41 = a1;
  ObjectType = swift_getObjectType();
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v35 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1ABF247E4();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v29 - v8;
  v31 = *(v6 - 8);
  v9 = v31;
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v29 - v11;
  v12 = swift_getAssociatedTypeWitness();
  v34 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v32 = &v29 - v13;
  v29 = sub_1ABF247E4();
  v14 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v16 = &v29 - v15;
  v17 = *((v5 & v4) + 0x70);
  sub_1ABA7B9B4(v3 + v17, 1, 1, v6);
  v18 = MEMORY[0x1E69E7D40];
  v19 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x78);
  *(v3 + v19) = 0;
  v20 = *((*v18 & *v3) + 0x88);
  sub_1ABA7B9B4(v3 + v20, 1, 1, AssociatedTypeWitness);
  *(v3 + *((*v18 & *v3) + 0x90)) = *MEMORY[0x1E698F0A0];
  *(v3 + *((*v18 & *v3) + 0x98)) = 0;
  v21 = *((*v18 & *v3) + 0xA0);
  v22 = swift_slowAlloc();
  *v22 = 0;
  *(v3 + v21) = v22;
  *(v3 + v19) = v41;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v23 = *(v9 + 16);
  v24 = v36;
  v23(v16, v36, v6);
  sub_1ABA7B9B4(v16, 0, 1, v6);
  swift_beginAccess();
  (*(v14 + 40))(v3 + v17, v16, v29);
  swift_endAccess();
  v23(v33, v24, v6);
  v25 = v32;
  sub_1ABF23F04();
  (*(v34 + 32))(v3 + *((*MEMORY[0x1E69E7D40] & *v3) + 0x80), v25, v12);
  swift_beginAccess();
  swift_getAssociatedConformanceWitness();
  v26 = v37;
  sub_1ABF24864();
  swift_endAccess();
  swift_beginAccess();
  (*(v38 + 40))(v3 + v20, v26, v39);
  swift_endAccess();
  v42.receiver = v3;
  v42.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v42, sel_init);
  swift_unknownObjectRelease();
  (*(v31 + 8))(v24, v6);
  return v27;
}

id sub_1ABB2A1BC()
{
  ObjectType = swift_getObjectType();
  MEMORY[0x1AC5AB8B0](*(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0xA0)), -1, -1);
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1ABB2A25C(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x70);
  v4 = sub_1ABF247E4();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  swift_unknownObjectRelease();
  v5 = *((*v2 & *a1) + 0x80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(&a1[v5], AssociatedTypeWitness);
  v7 = *((*v2 & *a1) + 0x88);
  swift_getAssociatedTypeWitness();
  v8 = sub_1ABF247E4();
  v9 = *(*(v8 - 8) + 8);

  return v9(&a1[v7], v8);
}

void sub_1ABB2A454(void *a1)
{
  v1 = a1;
  sub_1ABB297BC();
}

void sub_1ABB2A49C(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *v2;
  v6 = *MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v71 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x68);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1ABF247E4();
  v76 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - v15;
  v64 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v78 = v7;
  v79 = &v54 - v18;
  v73 = sub_1ABF247E4();
  v19 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v57 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v72 = &v54 - v22;
  v75 = *((v6 & v5) + 0xA0);
  os_unfair_lock_lock(*(v2 + v75));
  v23 = *v4 & *v2;
  v24 = *(v23 + 0x78);
  v74 = *(v2 + v24);
  if (v74)
  {
    v25 = *(v23 + 144);
    v26 = *(v2 + v25);
    v27 = __OFADD__(v26, a1);
    v28 = v26 + a1;
    if (!v27)
    {
      *(v2 + v25) = v28;
      v29 = (*v4 & *v2);
      v69 = v29[19];
      if (*(v2 + v69))
      {
        goto LABEL_4;
      }

      v55 = v24;
      v31 = v29[14];
      v32 = v29[17];
      v62 = v29[16];
      swift_unknownObjectRetain();
      v68 = v31;
      swift_beginAccess();
      v65 = v32;
      swift_beginAccess();
      v67 = (v19 + 16);
      v56 = v19;
      v66 = (v19 + 8);
      v77 = (v76 + 16);
      v63 = (v64 + 4);
      v61 = (v76 + 40);
      v60 = (v64 + 1);
      v64 = (v76 + 8);
      v33 = v79;
      v58 = v16;
      v59 = v11;
      while (1)
      {
        if (*(v2 + v25) < 1 || (v34 = v72, v35 = v73, (*v67)(v72, v2 + v68, v73), v36 = sub_1ABA7E1E0(v34, 1, v78), (*v66)(v34, v35), v36 == 1))
        {
          os_unfair_lock_unlock(*(v2 + v75));
          swift_unknownObjectRelease();
          return;
        }

        v37 = *v77;
        v38 = v65;
        (*v77)(v16, v2 + v65, v9);
        if (sub_1ABA7E1E0(v16, 1, AssociatedTypeWitness) == 1)
        {
          (*v64)(v16, v9);
          v48 = v57;
          sub_1ABA7B9B4(v57, 1, 1, v78);
          v49 = v68;
          swift_beginAccess();
          (*(v56 + 40))(v2 + v49, v48, v73);
          swift_endAccess();
          *(v2 + v55) = 0;
          swift_unknownObjectRelease();
          os_unfair_lock_unlock(*(v2 + v75));
          v50 = [objc_opt_self() success];
          [v74 receiveCompletion_];
          swift_unknownObjectRelease();

          return;
        }

        (*v63)(v33, v16, AssociatedTypeWitness);
        v39 = *(v2 + v25);
        v27 = __OFSUB__(v39, 1);
        v40 = v39 - 1;
        if (v27)
        {
          break;
        }

        v76 = v37;
        *(v2 + v25) = v40;
        swift_beginAccess();
        swift_getAssociatedTypeWitness();
        v41 = v75;
        swift_getAssociatedConformanceWitness();
        v42 = v70;
        sub_1ABF24864();
        swift_endAccess();
        swift_beginAccess();
        (*v61)(v2 + v38, v42, v9);
        swift_endAccess();
        v43 = v69;
        *(v2 + v69) = 1;
        os_unfair_lock_unlock(*(v2 + v41));
        v44 = [v74 receiveInput_];
        swift_unknownObjectRelease();
        os_unfair_lock_lock(*(v2 + v41));
        v45 = *(v2 + v25);
        v27 = __OFADD__(v45, v44);
        v46 = &v44[v45];
        if (v27)
        {
          goto LABEL_20;
        }

        *(v2 + v25) = v46;
        *(v2 + v43) = 0;
        v47 = v59;
        (v76)(v59, v2 + v38, v9);
        if (sub_1ABA7E1E0(v47, 1, AssociatedTypeWitness) == 1)
        {
          (*v64)(v47, v9);
          v51 = v57;
          sub_1ABA7B9B4(v57, 1, 1, v78);
          v52 = v68;
          swift_beginAccess();
          (*(v56 + 40))(v2 + v52, v51, v73);
          swift_endAccess();
          *(v2 + v55) = 0;
          swift_unknownObjectRelease();
          os_unfair_lock_unlock(*(v2 + v75));
          v53 = [objc_opt_self() success];
          [v74 receiveCompletion_];
          swift_unknownObjectRelease();

          (*v60)(v79, AssociatedTypeWitness);
          return;
        }

        v33 = v79;
        (*v60)(v79, AssociatedTypeWitness);
        (*v64)(v47, v9);
        v16 = v58;
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_4:
  v30 = *(v2 + v75);

  os_unfair_lock_unlock(v30);
}

void sub_1ABB2ADC4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_1ABB2A49C(a3);
}

id _s20IntelligencePlatform25RemoteViewAccessRequesterCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1ABB2AF48(uint64_t a1)
{
  result = sub_1ABF247E4();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      result = sub_1ABF247E4();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1ABB2B0E0(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D2DF0, &qword_1ABF3A5A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1ABB2B148()
{
  v0 = objc_autoreleasePoolPush();
  sub_1ABB2B510();
  v1 = sub_1ABB2B1F4(0xD000000000000033, 0x80000001ABF87600);
  if (v1)
  {
    v8 = v1;
    objc_autoreleasePoolPop(v0);
    qword_1ED871EA8 = v8;
  }

  else
  {
    sub_1ABA8EF90("Fatal error", v2, v3, v4, v5, "IntelligencePlatform/Bundle+IntelligencePlatform.swift", v6, v7, 16, 0);
    __break(1u);
  }
}

id sub_1ABB2B1F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF23BD4();

  v3 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v3;
}

void sub_1ABB2B27C()
{
  v0 = objc_autoreleasePoolPush();
  sub_1ABB2B510();
  v1 = sub_1ABB2B1F4(0xD000000000000037, 0x80000001ABF87520);
  if (v1)
  {
    v8 = v1;
    objc_autoreleasePoolPop(v0);
    qword_1ED870630 = v8;
  }

  else
  {
    sub_1ABA8EF90("Fatal error", v2, v3, v4, v5, "IntelligencePlatform/Bundle+IntelligencePlatform.swift", v6, v7, 24, 0);
    __break(1u);
  }
}

void sub_1ABB2B328()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_allocWithZone(MEMORY[0x1E696AAE8]);
  v2 = sub_1ABF23BD4();
  v3 = [v1 initWithPath_];

  objc_autoreleasePoolPop(v0);
  qword_1ED86E3C8 = v3;
}

id sub_1ABB2B3B0(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1ABF23BD4();

  v4 = [v2 initWithPath_];

  return v4;
}

void sub_1ABB2B448()
{
  v0 = objc_autoreleasePoolPush();
  sub_1ABB2B510();
  v1 = sub_1ABB2B3B0(0xD000000000000049, 0x80000001ABF87470);
  objc_autoreleasePoolPop(v0);
  qword_1ED870620 = v1;
}

void *sub_1ABB2B4CC(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;
  v5 = v4;
  return v4;
}

unint64_t sub_1ABB2B510()
{
  result = qword_1ED871E90;
  if (!qword_1ED871E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED871E90);
  }

  return result;
}

uint64_t sub_1ABB2B554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = [swift_unknownObjectRetain() viewArtifactTableName];
  if (v7)
  {
    v8 = v7;
    sub_1ABF23C04();
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  a4[1] = a2;
  a4[2] = a3;
  if (qword_1EB4CE7E8 != -1)
  {
    swift_once();
  }

  v9 = sub_1ABF237F4();
  sub_1ABA7AA24(v9, qword_1EB4CE7F0);
  v10 = sub_1ABF237D4();
  v11 = sub_1ABF24644();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1ABA78000, v10, v11, "Fetching BundleIdentifierMap for client.", v12, 2u);
    MEMORY[0x1AC5AB8B0](v12, -1, -1);
  }

  type metadata accessor for BundleIdentifierMapView(0);
  return sub_1ABF22CE4();
}

uint64_t BundleIdentifierMapView.identifiers(for:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1ABAD219C(&unk_1EB4DA820, &qword_1ABF3A5C8);
  result = sub_1ABF22464();
  if (!v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_1ABB2B834(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v1 = *(a1 + 32);

  return v1;
}

uint64_t sub_1ABB2B878(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1ABF23E94();
  }

  else
  {
    return 0;
  }
}

void *sub_1ABB2B8C0(uint64_t a1)
{
  result = sub_1ABAB0E08();
  if (v4)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  if (result == (1 << *(a1 + 32)))
  {
    return 0;
  }

  else
  {
    return sub_1ABB2D2F8(&v5, result, v3, 0, a1);
  }
}

void *sub_1ABB2B94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1ABAB1DBC(a1);
  if (v6)
  {
    goto LABEL_8;
  }

  if (*(a1 + 36) != v5)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = (1 << *(a1 + 32));
  if (result == v8)
  {
    v9 = 0;
  }

  else
  {
    result = sub_1ABB2D3F0(result, v5, a1, &v10);
    v9 = v10;
  }

  *a2 = v9;
  *(a2 + 8) = v7 == v8;
  return result;
}

uint64_t sub_1ABB2B9E4(uint64_t a1)
{
  result = sub_1ABAB1DBC(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_1ABB2D444(result, v3, 0, a1);
  return v5;
}

id sub_1ABB2BA64(uint64_t a1, uint64_t (*a2)(id *))
{
  sub_1ABB2D5E4(a1, a2);
  v4 = v3;
  if (v3 == sub_1ABAAB7C8(a1))
  {
    return 0;
  }

  sub_1ABAAB7C0(v4, (a1 & 0xC000000000000001) == 0, a1);
  if ((a1 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1AC5AA170](v4, a1);
  }

  else
  {
    return *(a1 + 8 * v4 + 32);
  }
}

uint64_t sub_1ABB2BAF8()
{
  v3 = sub_1ABA8BEA8();
  v4 = type metadata accessor for KGQ.Value(v3);
  v5 = v4;
  if (v2)
  {
    sub_1ABB2D38C(v1 + ((*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80)), v0);
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  return sub_1ABA7B9B4(v0, v6, 1, v5);
}

uint64_t sub_1ABB2BB90@<X0>(uint64_t result@<X0>, __int16 *a2@<X8>)
{
  if (*(result + 16))
  {
    v2 = *(result + 32);
  }

  else
  {
    v2 = 1280;
  }

  *a2 = v2;
  return result;
}

double sub_1ABB2BBAC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1ABB2D574(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1ABB2BBD0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1ABB2D510(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_1ABB2BBF4(uint64_t a1)
{
  result = sub_1ABAB1DBC(a1);
  if (v4)
  {
    goto LABEL_7;
  }

  if (*(a1 + 36) != v3)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1ABB2D494(result, v3, 0, a1);
  }
}

uint64_t sub_1ABB2BC74()
{
  v3 = sub_1ABA8BEA8();
  v5 = v4(v3);
  v6 = v5;
  if (v2)
  {
    (*(*(v5 - 8) + 16))(v0, v1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return sub_1ABA7B9B4(v0, v7, 1, v6);
}

uint64_t sub_1ABB2BD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v56 = a1;
  v51 = a3;
  v4 = sub_1ABAD219C(&qword_1EB4D50F0, &unk_1ABF3A620);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50 - v6;
  type metadata accessor for BundleIdentifierMapView(0);
  v66 = a2;
  v60 = sub_1ABF22D14();
  v61 = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(&v58);
  sub_1ABF22D24();
  v64 = sub_1ABF22424();
  v65 = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(&v62);
  sub_1ABAD219C(&unk_1EB4D2E60, &qword_1ABF4D8A0);
  sub_1ABAB47C4(&qword_1ED86B990, &unk_1EB4D2E60, &qword_1ABF4D8A0, MEMORY[0x1E69E6508]);
  sub_1ABF23EE4();
  sub_1ABA84B54(&v58);
  sub_1ABAD219C(&qword_1EB4D2E00, &unk_1ABF3A5D0);
  sub_1ABF22CA4();
  sub_1ABA84B54(&v62);
  sub_1ABAB47C4(&qword_1ED870CC0, &qword_1EB4D50F0, &unk_1ABF3A620, MEMORY[0x1E699FF60]);
  v8 = v57;
  v9 = sub_1ABF22294();
  v10 = v8;
  result = (*(v5 + 8))(v7, v4);
  if (v8)
  {
    return result;
  }

  v12 = sub_1ABAAB7C8(v9);
  v13 = 0;
  v55 = v9 & 0xC000000000000001;
  v56 = v12;
  v14 = MEMORY[0x1E69E7CC8];
  v54 = v9 & 0xFFFFFFFFFFFFFF8;
  v15 = v51;
  v52 = v9;
  while (1)
  {
    if (v56 == v13)
    {

      *v15 = v14;
      return result;
    }

    if (v55)
    {
      MEMORY[0x1AC5AA170](v13, v9);
    }

    else
    {
      if (v13 >= *(v54 + 16))
      {
        goto LABEL_28;
      }
    }

    if (__OFADD__(v13, 1))
    {
      break;
    }

    sub_1ABB32E40();
    if (v10)
    {
      goto LABEL_31;
    }

    v18 = v16;
    v19 = v17;
    sub_1ABB370C4(&v62);
    v57 = 0;
    if ((v63 & 1) == 0)
    {
      v53 = v62;
      swift_isUniquelyReferenced_nonNull_native();
      v34 = sub_1ABA94FC8(v18, v19, v28, v29, v30, v31, v32, v33, v50, v51, v52, v53, v54, v55, v56, v57, v14, v59);
      if (__OFADD__(v14[2], (v35 & 1) == 0))
      {
        goto LABEL_29;
      }

      v36 = v34;
      v37 = v35;
      sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
      if (sub_1ABF24C64())
      {
        v44 = sub_1ABA94FC8(v18, v19, v38, v39, v40, v41, v42, v43, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
        v9 = v52;
        if ((v37 & 1) != (v45 & 1))
        {
          goto LABEL_32;
        }

        v36 = v44;
        if ((v37 & 1) == 0)
        {
LABEL_18:
          v14 = v58;
          v58[(v36 >> 6) + 8] |= 1 << v36;
          v46 = (v14[6] + 16 * v36);
          *v46 = v18;
          v46[1] = v19;
          *(v14[7] + 8 * v36) = v53;

          v47 = v14[2];
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_30;
          }

          v14[2] = v49;
          goto LABEL_22;
        }
      }

      else
      {
        v9 = v52;
        if ((v37 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v14 = v58;
      *(v58[7] + 8 * v36) = v53;

LABEL_22:
      v15 = v51;
      goto LABEL_23;
    }

    sub_1ABA94FC8(v18, v19, v20, v21, v22, v23, v24, v25, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59);
    v27 = v26;

    if (v27)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v58 = v14;
      sub_1ABAD219C(&qword_1EB4D80A0, &unk_1ABF3A630);
      v9 = v52;
      sub_1ABF24C64();
      v14 = v58;

      sub_1ABF24C84();
    }

LABEL_23:
    v10 = v57;
    ++v13;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  swift_unexpectedError();
  __break(1u);
LABEL_32:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

void sub_1ABB2C288()
{
  sub_1ABA8A238();
  sub_1ABA8E0FC();
  if (v1 && (sub_1ABAD219C(&qword_1EB4D2B80, &qword_1ABF39DE0), v5 = sub_1ABA8EFB8(), (v6 = *(v0 + 16)) != 0))
  {
    sub_1ABA83644();
    while (v2 < *(v0 + 16))
    {
      v7 = *(v4 + 8 * v2++);
      sub_1ABF25234();
      MEMORY[0x1AC5AA8D0](v7);
      sub_1ABF25294();
      while (1)
      {
        sub_1ABA93220();
        if (v12)
        {
          break;
        }

        if (*(*(v5 + 48) + 8 * v8) == v7)
        {
          goto LABEL_11;
        }
      }

      *(v3 + 8 * v9) = v11 | v10;
      *(*(v5 + 48) + 8 * v8) = v7;
      sub_1ABA7EE04();
      if (v14)
      {
        goto LABEL_14;
      }

      *(v5 + 16) = v13;
LABEL_11:
      if (v2 == v6)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    sub_1ABA9A2A8();
  }
}

void sub_1ABB2C388(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16) && (sub_1ABAD219C(&unk_1EB4D2E20, &qword_1ABF39E10), v2 = sub_1ABA8EFB8(), v3 = v2, (v29 = *(v1 + 16)) != 0))
  {
    v4 = 0;
    v5 = v2 + 56;
    v27 = v1;
    v28 = v1 + 32;
    while (v4 < *(v1 + 16))
    {
      v6 = *(v28 + v4++);
      sub_1ABF25234();
      switch(v6)
      {
        case 3:
        case 6:
          sub_1ABA99294();
          break;
        case 4:
          sub_1ABA947B0();
          break;
        case 7:
        case 8:
          sub_1ABA7BB94();
          break;
        default:
          break;
      }

      sub_1ABF23D34();

      sub_1ABF25294();
      sub_1ABA7D1D8();
      v8 = ~v7;
      v10 = v9 & ~v7;
      v11 = v10 >> 6;
      v12 = *(v5 + 8 * (v10 >> 6));
      v13 = 1 << v10;
      if (((1 << v10) & v12) != 0)
      {
        while (1)
        {
          v14 = 0xE400000000000000;
          v15 = 1701736302;
          switch(*(*(v3 + 48) + v10))
          {
            case 1:
              v15 = 0xD000000000000010;
              v14 = 0x80000001ABF7EE20;
              break;
            case 2:
              v14 = 0xE700000000000000;
              v15 = 0x7865646E496F6ELL;
              break;
            case 3:
            case 6:
              sub_1ABA99294();
              break;
            case 4:
              sub_1ABA947B0();
              break;
            case 5:
              v15 = 0x49747865746E6F63;
              v14 = 0xEC0000007865646ELL;
              break;
            case 7:
              sub_1ABA7BB94();
              v15 = v16 + 10;
              v14 = 0x80000001ABF7EE80;
              break;
            case 8:
              sub_1ABA7BB94();
              v15 = v17 + 8;
              v14 = 0x80000001ABF7EEA0;
              break;
            default:
              break;
          }

          v18 = 0xE400000000000000;
          v19 = 1701736302;
          switch(v6)
          {
            case 1:
              v19 = 0xD000000000000010;
              v18 = 0x80000001ABF7EE20;
              break;
            case 2:
              v18 = 0xE700000000000000;
              v19 = 0x7865646E496F6ELL;
              break;
            case 3:
              v20 = 0x47746E657665;
              goto LABEL_26;
            case 4:
              v19 = 0x79676F6C6F746E6FLL;
              v18 = 0xED00007865646E49;
              break;
            case 5:
              v19 = 0x49747865746E6F63;
              v18 = 0xEC0000007865646ELL;
              break;
            case 6:
              v20 = 0x476C61636F6CLL;
LABEL_26:
              v19 = v20 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
              v18 = 0xEF7865646E496870;
              break;
            case 7:
              sub_1ABA7BB94();
              v19 = v21 + 10;
              v18 = 0x80000001ABF7EE80;
              break;
            case 8:
              sub_1ABA7BB94();
              v19 = v22 + 8;
              v18 = 0x80000001ABF7EEA0;
              break;
            default:
              break;
          }

          if (v15 == v19 && v14 == v18)
          {
            break;
          }

          v24 = sub_1ABF25054();

          if (v24)
          {
            goto LABEL_37;
          }

          v10 = (v10 + 1) & v8;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
          if ((v12 & (1 << v10)) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      else
      {
LABEL_34:
        *(v5 + 8 * v11) = v12 | v13;
        *(*(v3 + 48) + v10) = v6;
        sub_1ABA7EE04();
        if (v26)
        {
          goto LABEL_40;
        }

        *(v3 + 16) = v25;
      }

LABEL_37:
      v1 = v27;
      if (v4 == v29)
      {
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
  }

  else
  {
LABEL_38:
  }
}

void sub_1ABB2C7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_1ABA8A238();
  sub_1ABA8E0FC();
  if (v31 && (sub_1ABAD219C(&qword_1EB4D2E70, &unk_1ABF4AF30), v32 = sub_1ABA8EFB8(), v33 = v32, (v34 = *(v30 + 16)) != 0))
  {
    v35 = 0;
    v36 = v32 + 56;
    while (v35 < *(v30 + 16))
    {
      v37 = (v30 + 32 + 16 * v35);
      v39 = *v37;
      v38 = v37[1];
      ++v35;
      sub_1ABF25234();

      sub_1ABF23D34();
      sub_1ABF25294();
      sub_1ABA7D1D8();
      v42 = ~v41;
      while (1)
      {
        v43 = v40 & v42;
        v44 = (v40 & v42) >> 6;
        v45 = *(v36 + 8 * v44);
        v46 = 1 << (v40 & v42);
        if ((v46 & v45) == 0)
        {
          break;
        }

        v47 = (*(v33 + 48) + 16 * v43);
        v48 = *v47 == v39 && v47[1] == v38;
        if (v48 || (sub_1ABF25054() & 1) != 0)
        {

          goto LABEL_16;
        }

        v40 = v43 + 1;
      }

      *(v36 + 8 * v44) = v46 | v45;
      v49 = (*(v33 + 48) + 16 * v43);
      *v49 = v39;
      v49[1] = v38;
      sub_1ABA7EE04();
      if (v51)
      {
        goto LABEL_19;
      }

      *(v33 + 16) = v50;
LABEL_16:
      if (v35 == v34)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    sub_1ABA9A2A8();
  }
}

uint64_t type metadata accessor for BundleIdentifierMapView(uint64_t a1)
{
  result = qword_1EB4CEF20;
  if (!qword_1EB4CEF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1ABB2C9E0(uint64_t a1)
{
  sub_1ABAAE1D0();
  if (v1 <= 0x3F)
  {
    sub_1ABB2CA7C();
    if (v2 <= 0x3F)
    {
      sub_1ABB2CAD4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1ABB2CA7C()
{
  result = qword_1ED871848;
  if (!qword_1ED871848)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED871848);
  }

  return result;
}

void sub_1ABB2CAD4(uint64_t a1)
{
  if (!qword_1ED871AE0)
  {
    sub_1ABF22BB4();
    v1 = sub_1ABF22CF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED871AE0);
    }
  }
}

uint64_t sub_1ABB2CB2C(uint64_t a1)
{
  v2 = sub_1ABF21FD4();
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v27 - v6;
  if (!*(a1 + 16))
  {
    v8 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  sub_1ABAD219C(&qword_1EB4D2E08, &qword_1ABF3A600);
  result = sub_1ABA8EFB8();
  v8 = result;
  v31 = *(a1 + 16);
  if (!v31)
  {
LABEL_15:

    return v8;
  }

  v9 = 0;
  v35 = result + 56;
  v10 = *(v32 + 80);
  v29 = a1;
  v30 = a1 + ((v10 + 32) & ~v10);
  v34 = v32 + 16;
  v11 = (v32 + 8);
  v28 = (v32 + 32);
  while (v9 < *(a1 + 16))
  {
    v12 = *(v32 + 72);
    v33 = v9 + 1;
    v13 = *(v32 + 16);
    v13(v36, v30 + v12 * v9, v2);
    sub_1ABB2CE3C(&qword_1EB4D2E10, MEMORY[0x1E6969AD8]);
    v14 = sub_1ABF23A84();
    v15 = ~(-1 << *(v8 + 32));
    while (1)
    {
      v16 = v14 & v15;
      v17 = (v14 & v15) >> 6;
      v18 = *(v35 + 8 * v17);
      v19 = 1 << (v14 & v15);
      if ((v19 & v18) == 0)
      {
        break;
      }

      v20 = v8;
      v13(v4, *(v8 + 48) + v16 * v12, v2);
      sub_1ABB2CE3C(&qword_1EB4D2E18, MEMORY[0x1E6969AE0]);
      v21 = sub_1ABF23BB4();
      v22 = *v11;
      (*v11)(v4, v2);
      if (v21)
      {
        result = (v22)(v36, v2);
        v8 = v20;
        goto LABEL_12;
      }

      v14 = v16 + 1;
      v8 = v20;
    }

    v23 = v36;
    *(v35 + 8 * v17) = v19 | v18;
    result = (*v28)(*(v8 + 48) + v16 * v12, v23, v2);
    v24 = *(v8 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v26;
LABEL_12:
    v9 = v33;
    a1 = v29;
    if (v33 == v31)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1ABB2CE3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1ABF21FD4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1ABB2CEA8()
{
  sub_1ABA8A238();
  sub_1ABA8E0FC();
  if (v1 && (sub_1ABAD219C(v5, v6), v7 = sub_1ABA8EFB8(), (v8 = *(v0 + 16)) != 0))
  {
    sub_1ABA83644();
    while (v2 < *(v0 + 16))
    {
      v9 = *(v4 + v2++);
      sub_1ABF25234();
      MEMORY[0x1AC5AA8A0](v9);
      sub_1ABF25294();
      while (1)
      {
        sub_1ABA93220();
        if (v14)
        {
          break;
        }

        if (*(*(v7 + 48) + v10) == v9)
        {
          goto LABEL_11;
        }
      }

      *(v3 + 8 * v11) = v13 | v12;
      *(*(v7 + 48) + v10) = v9;
      sub_1ABA7EE04();
      if (v16)
      {
        goto LABEL_14;
      }

      *(v7 + 16) = v15;
LABEL_11:
      if (v2 == v8)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
LABEL_12:

    sub_1ABA9A2A8();
  }
}

void sub_1ABB2CFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_1ABA8E108();
  sub_1ABA8E0FC();
  if (v36 && (sub_1ABAD219C(&qword_1EB4D2B38, &unk_1ABF39DA0), v39 = sub_1ABA8EFB8(), (v50 = *(v35 + 16)) != 0))
  {
    sub_1ABA80734();
    while (v37 < *(v35 + 16))
    {
      v40 = (a10 + v37 * v38);
      v42 = *v40;
      v41 = v40[1];
      v43 = v40[3];
      v51 = v40[2];
      sub_1ABA83F44();

      sub_1ABF23D34();
      sub_1ABF25294();
      sub_1ABA7D1D8();
      while (1)
      {
        sub_1ABA7E384();
        if (v46)
        {
          break;
        }

        v45 = (*(v39 + 48) + v35 * v38);
        v46 = *v45 == v42 && v45[1] == v41;
        if (v46 || (sub_1ABF25054() & 1) != 0)
        {

          goto LABEL_15;
        }
      }

      sub_1ABA8FE5C(v44);
      *v47 = v42;
      *(v47 + 8) = v41;
      *(v47 + 16) = v51;
      *(v47 + 24) = v43;
      *(v47 + 32) = a13;
      sub_1ABA7EE04();
      if (v49)
      {
        goto LABEL_18;
      }

      *(v39 + 16) = v48;
LABEL_15:
      v35 = a9;
      if (v37 == v50)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_16:

    sub_1ABA905E0();
  }
}

void sub_1ABB2D0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  sub_1ABA8E108();
  v35 = v34;
  if (*(v34 + 16) && (sub_1ABAD219C(&qword_1EB4D2B60, &unk_1ABF3A610), v36 = sub_1ABA8EFB8(), v37 = v36, (v58 = *(v35 + 16)) != 0))
  {
    v38 = 0;
    v39 = v36 + 56;
    v56 = v35;
    v57 = v35 + 32;
    while (v38 < *(v35 + 16))
    {
      v40 = *(v57 + v38);
      sub_1ABF25234();
      if (v40)
      {
        v41 = 0x7241746E65746E69;
      }

      else
      {
        v41 = 0x79676F6C6F746E6FLL;
      }

      if (v40)
      {
        v42 = 0xE900000000000067;
      }

      else
      {
        v42 = 0xE800000000000000;
      }

      sub_1ABF23D34();

      v43 = sub_1ABF25294() & ~(-1 << *(v37 + 32));
      sub_1ABA81560();
      if ((v46 & v45) != 0)
      {
        v55 = v40;
        v48 = ~v47;
        while (1)
        {
          v49 = *(*(v37 + 48) + v43) ? 0x7241746E65746E69 : 0x79676F6C6F746E6FLL;
          v50 = *(*(v37 + 48) + v43) ? 0xE900000000000067 : 0xE800000000000000;
          if (v49 == v41 && v50 == v42)
          {
            break;
          }

          v52 = sub_1ABF25054();

          if (v52)
          {
            goto LABEL_29;
          }

          v43 = (v43 + 1) & v48;
          sub_1ABA81560();
          if ((v45 & v46) == 0)
          {
            LOBYTE(v40) = v55;
            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_26:
        *(v39 + 8 * v44) = v45 | v46;
        *(*(v37 + 48) + v43) = v40;
        sub_1ABA7EE04();
        if (v54)
        {
          goto LABEL_32;
        }

        *(v37 + 16) = v53;
      }

LABEL_29:
      ++v38;
      v35 = v56;
      if (v38 == v58)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_30:

    sub_1ABA905E0();
  }
}

void *sub_1ABB2D2F8(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    *result = *(*(a5 + 56) + 8 * a2);

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1ABB2D38C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KGQ.Value(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB2D3F0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 56) + 8 * result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1ABB2D444(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB2D494(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 56) + 16 * result);

    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1ABB2D510(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1ABB2D574(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&unk_1EB4D2E40, &qword_1ABF33948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1ABB2D5E4(uint64_t a1, uint64_t (*a2)(id *))
{
  v4 = sub_1ABAAB7C8(a1);
  v5 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1AC5AA170](v5, a1);
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_13:
        __break(1u);
        return;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v7 = v6;
    v10 = v6;
    v8 = a2(&v10);

    if (v8)
    {
      return;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_13;
    }
  }
}

void sub_1ABB2D70C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = *v3;
  sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = sub_1ABF21EB4();
  sub_1ABA7BD7C();
  v36 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v35 = &v34 - v15;
  v16 = v5[10];
  sub_1ABA7BD7C();
  v18 = v17;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  v22 = v5[11];
  type metadata accessor for MemoryCache.WrappedKey(0, v16, v22, v5[12]);
  (*(v18 + 16))(v21, a1, v16);
  v23 = sub_1ABB2DAEC(v21);
  v24 = [*(v3 + 16) objectForKey_];
  if (!v24)
  {
    sub_1ABA7B9B4(v37, 1, 1, v22);

    return;
  }

  v25 = v24;
  sub_1ABB2E9FC(&v24[*((*MEMORY[0x1E69E7D40] & *v24) + 0x70)], v8, &qword_1EB4D9BF0, &qword_1ABF34240);
  if (sub_1ABA7E1E0(v8, 1, v9) == 1)
  {

    sub_1ABA925A4(v8, &qword_1EB4D9BF0, &qword_1ABF34240);
    v26 = v37;
LABEL_8:
    sub_1ABA7ABF0();
    (*(*(v22 - 8) + 16))(v26, &v25[*(v33 + 104)], v22);

    v31 = v26;
    v32 = 0;
    goto LABEL_9;
  }

  v27 = v35;
  v28 = v36;
  (*(v36 + 32))(v35, v8, v9);
  sub_1ABF21EA4();
  v29 = sub_1ABF21E44();
  v30 = *(v28 + 8);
  v30(v13, v9);
  if ((v29 & 1) == 0)
  {
    v30(v27, v9);

    v26 = v37;
    goto LABEL_8;
  }

  [*(v3 + 16) removeObjectForKey_];

  v30(v27, v9);
  v31 = v37;
  v32 = 1;
LABEL_9:
  sub_1ABA7B9B4(v31, v32, 1, v22);
}

void sub_1ABB2DB20(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v4 = *(*v2 + 80);
  sub_1ABA7D1E8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA93238();
  v9 = *(v8 + 88);
  sub_1ABA7D1E8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v15 = *(v2 + 16);
  v16 = sub_1ABA7BE04();
  type metadata accessor for MemoryCache.Entry(v16, v17, v18, v19);
  (*(v11 + 16))(v14, v26, v9);
  v20 = sub_1ABB2DCF4(v14, *(v2 + 24), *(v2 + 32));
  v21 = sub_1ABA7BE04();
  type metadata accessor for MemoryCache.WrappedKey(v21, v22, v23, v24);
  (*(v6 + 16))(v3, v27, v4);
  v25 = sub_1ABB2DAEC(v3);
  [v15 setObject:v20 forKey:v25];
}

void sub_1ABB2DD40(uint64_t a1)
{
  v3 = v1;
  v5 = *(*v3 + 10);
  sub_1ABA7D1E8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA93238();
  type metadata accessor for MemoryCache.WrappedKey(0, v5, *(v9 + 88), *(v10 + 96));
  (*(v7 + 16))(v2, a1, v5);
  v11 = sub_1ABB2DAEC(v2);
  [v3[2] removeObjectForKey_];
}

uint64_t sub_1ABB2DE90()
{
  sub_1ABB2DE70();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB2DEDC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1ABB2E000(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_1ABA7ABF0();
  v7 = *((v6 & v5) + 0x50);
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v1[*(v4 + 104)], a1, v7);
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a1, v7);
  return v9;
}

uint64_t sub_1ABB2E0F8(void *a1)
{
  v1 = a1;
  v2 = sub_1ABB2E12C();

  return v2;
}

uint64_t sub_1ABB2E12C()
{
  sub_1ABA7ABF0();
  sub_1ABA7ABF0();
  return sub_1ABF23AA4();
}

uint64_t sub_1ABB2E194(uint64_t a1)
{
  swift_getObjectType();
  sub_1ABA7ABF0();
  sub_1ABB2E9FC(a1, v5, &qword_1EB4D3000, &unk_1ABF3AA60);
  if (!v6)
  {
    sub_1ABA925A4(v5, &qword_1EB4D3000, &unk_1ABF3AA60);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = sub_1ABF23BB4();

  return v2 & 1;
}

uint64_t sub_1ABB2E2D4(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_1ABF248F4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = sub_1ABB2E194(v8);

  sub_1ABA925A4(v8, &qword_1EB4D3000, &unk_1ABF3AA60);
  return v6 & 1;
}

id sub_1ABB2E35C@<X0>(uint64_t *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1ABA7BD7C();
  sub_1ABA7BB88();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  (*(v10 + 16))(&v12 - v6, v1 + *((v9 & v8) + 0x68), v5);
  result = sub_1ABB2DAEC(v7);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_1ABB2E454(void *a1)
{
  v1 = a1;
  sub_1ABB2E35C(v4);

  sub_1ABA93E20(v4, v4[3]);
  v2 = sub_1ABF25044();
  sub_1ABA84B54(v4);
  return v2;
}

void sub_1ABB2E574(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1ABAE8794(319);
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

id sub_1ABB2E644(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = *v4;
  v9 = *MEMORY[0x1E69E7D40];
  v10 = sub_1ABF21EB4();
  sub_1ABA7BD7C();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7BB88();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - v18;
  v20 = *((v9 & v8) + 0x68);
  v21 = *((v9 & v8) + 0x58);
  v22 = *(v21 - 8);
  (*(v22 + 16))(&v4[v20], a1, v21, v17);
  if (a3)
  {
    sub_1ABA7B9B4(&v4[*((*MEMORY[0x1E69E7D40] & *v4) + 0x70)], 1, 1, v10);
LABEL_5:
    v28.receiver = v4;
    v28.super_class = ObjectType;
    v25 = objc_msgSendSuper2(&v28, sel_init);
    (*(v22 + 8))(a1, v21);
    return v25;
  }

  v23 = MEMORY[0x1E69E7D40];
  result = sub_1ABF21EA4();
  if ((a2 * 3600) >> 64 == (3600 * a2) >> 63)
  {
    sub_1ABF21E24();
    (*(v12 + 8))(v15, v10);
    sub_1ABA7B9B4(v19, 0, 1, v10);
    sub_1ABAE84E0(v19, &v4[*((*v23 & *v4) + 0x70)]);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB2E924(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x58) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x68)]);
  return sub_1ABA925A4(&a1[*((*v2 & *a1) + 0x70)], &qword_1EB4D9BF0, &qword_1ABF34240);
}

uint64_t sub_1ABB2E9FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1ABAD219C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1ABB2EAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  swift_getAssociatedTypeWitness();
  v8 = sub_1ABF247E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a3, v13);
  (*(v9 + 16))(v11, a1, v8);
  return Cache.subscript.setter(v11, v15, v6, v7);
}

uint64_t Cache.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_1ABF247E4();
  sub_1ABA7BD7C();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  sub_1ABA7BD7C();
  v16 = v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v26 - v19;
  v21 = *(v11 + 16);
  v27 = a1;
  v21(v14, a1, v9, v18);
  if (sub_1ABA7E1E0(v14, 1, AssociatedTypeWitness) == 1)
  {
    v22 = *(v11 + 8);
    v22(v14, v9);
    (*(a4 + 48))(a2, a3, a4);
    sub_1ABA80750();
    sub_1ABA7D1F8();
    (*(v23 + 8))(a2);
    return (v22)(v27, v9);
  }

  else
  {
    (*(v16 + 32))(v20, v14, AssociatedTypeWitness);
    (*(a4 + 40))(v20, a2, a3, a4);
    sub_1ABA80750();
    sub_1ABA7D1F8();
    (*(v25 + 8))(a2);
    (*(v11 + 8))(v27, v9);
    return (*(v16 + 8))(v20, AssociatedTypeWitness);
  }
}

void (*Cache.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = sub_1ABAFDD10(0x58uLL);
  *a1 = v9;
  v9[1] = a4;
  v9[2] = v4;
  *v9 = a3;
  swift_getAssociatedTypeWitness();
  v10 = sub_1ABF247E4();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v9[4] = v11;
  v12 = *(v11 + 64);
  v9[5] = sub_1ABAFDD10(v12);
  v9[6] = sub_1ABAFDD10(v12);
  v9[7] = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v14 = v13;
  v9[8] = v13;
  v16 = *(v15 + 64);
  v9[9] = sub_1ABAFDD10(v16);
  v9[10] = sub_1ABAFDD10(v16);
  (*(v14 + 16))();
  (*(a4 + 32))(a2, a3, a4);
  return sub_1ABB2F0E8;
}

void sub_1ABB2F0E8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[9];
  v4 = (*a1)[10];
  if (a2)
  {
    v5 = v2[8];
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v9 = v2[4];
    v10 = v2[1];
    v12 = v2[7];
    v11 = *v2;
    (*(v9 + 16))(v7, v6, v8);
    (*(v5 + 32))(v3, v4, v12);
    Cache.subscript.setter(v7, v3, v11, v10);
    (*(v9 + 8))(v6, v8);
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    Cache.subscript.setter(v6, v4, *v2, v2[1]);
  }

  free(v4);
  free(v3);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_1ABB2F24C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = *(a1 + 40);
  __dst[0] = 0uLL;
  *&__dst[1] = v4;
  *(&__dst[1] + 1) = v2;
  memset(&__dst[2], 0, 26);

  KnosisServer.executeKGQ(request:)();
  v39[0] = 0uLL;
  v39[1] = __dst[1];
  v40[0] = 0uLL;
  *(v40 + 10) = *(&__dst[2] + 10);
  sub_1ABB2F6BC(v39);
  memcpy(__dst, __src, 0xA8uLL);
  v5 = *&__dst[2];

  sub_1ABB2F710(__dst);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = v5 + 32;
    v9 = v3;
    v34 = *(v5 + 16);
    v35 = v5;
    v33 = v5 + 32;
    while (v7 < *(v5 + 16))
    {
      v10 = (v8 + 112 * v7);
      if (*(v10 + 34) == 1)
      {
        v11 = *(v10[13] + 16);
        if (v11)
        {
          v36 = v7;
          v42 = *v10;
          v12 = v11 - 1;
          for (i = ( + 40); ; i += 2)
          {
            v14 = *(i - 1);
            v15 = *i;
            v16 = sub_1ABF25054();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABAD9858();
              v9 = v20;
            }

            v17 = *(v9 + 16);
            if (v17 >= *(v9 + 24) >> 1)
            {
              sub_1ABAD9858();
              v9 = v21;
            }

            *(v9 + 16) = v17 + 1;
            v18 = v9 + 136 * v17;
            *(v18 + 32) = v42;
            *(v18 + 40) = xmmword_1ABF3A760;
            *(v18 + 56) = 0x3FF0000000000000;
            *(v18 + 64) = 4;
            v19 = *(__src + 3);
            *(v18 + 65) = __src[0];
            *(v18 + 68) = v19;
            *(v18 + 72) = v14;
            *(v18 + 80) = v15;
            *(v18 + 88) = 0u;
            *(v18 + 104) = 0u;
            *(v18 + 120) = 0x3FF0000000000000;
            *(v18 + 128) = v16 & 1;
            *(v18 + 132) = *&v37[3];
            *(v18 + 129) = *v37;
            *(v18 + 136) = v3;
            *(v18 + 144) = v3;
            *(v18 + 152) = v3;
            *(v18 + 160) = v3;
            if (!v12)
            {
              break;
            }

            --v12;
          }

          v6 = v34;
          v5 = v35;
          v7 = v36;
          v8 = v33;
        }
      }

      if (++v7 == v6)
      {

        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_19:
    if (qword_1ED871B18 == -1)
    {
      goto LABEL_20;
    }
  }

  swift_once();
LABEL_20:
  v22 = sub_1ABF237F4();
  sub_1ABA7AA24(v22, qword_1ED871B20);
  v23 = sub_1ABF237D4();
  v24 = sub_1ABF24684();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    __src[0] = v26;
    *v25 = 136642819;

    v28 = MEMORY[0x1AC5A9750](v27, &type metadata for RetrievedCandidate);
    v30 = v29;

    v31 = sub_1ABADD6D8(v28, v30, __src);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1ABA78000, v23, v24, "knosis candidate generation result: %{sensitive}s", v25, 0xCu);
    sub_1ABA84B54(v26);
    MEMORY[0x1AC5AB8B0](v26, -1, -1);
    MEMORY[0x1AC5AB8B0](v25, -1, -1);
  }

  return v9;
}

uint64_t sub_1ABB2F634()
{

  return swift_deallocClassInstance();
}

BOOL sub_1ABB2F764()
{
  sub_1ABA9324C();
  v3 = (v2 + 40);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *v3;
    v10[0] = *(v3 - 1);
    v10[1] = v6;

    v7 = v1(v10);
    if (v0)
    {

      return v5 != 0;
    }

    v8 = v7;
    v3 += 2;
  }

  while ((v8 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1ABB2F808()
{
  sub_1ABA9324C();
  v4 = v3 + 64;
  v6 = v5 + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    sub_1ABA82710();
    v10 = v7;

    v1(v9);
    sub_1ABAB1024();

    if (v0)
    {
      break;
    }

    v4 += 40;
  }

  while ((v2 & 1) == 0);
  return v6 != 0;
}

BOOL sub_1ABB2F8A4()
{
  sub_1ABA9324C();
  v3 = (v2 + 32);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    memcpy(__dst, v3, sizeof(__dst));
    memcpy(__src, v3, sizeof(__src));
    sub_1ABB345D8(__dst, v9);
    v6 = v1(__src);
    if (v0)
    {
      memcpy(v9, __src, sizeof(v9));
      sub_1ABB34634(v9);
      return v5 != 0;
    }

    v7 = v6;
    v3 += 112;
    memcpy(v9, __src, sizeof(v9));
    sub_1ABB34634(v9);
  }

  while ((v7 & 1) == 0);
  return v5 != 0;
}

BOOL sub_1ABB2F984()
{
  sub_1ABA9324C();
  v4 = v3 + 64;
  v6 = v5 + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    sub_1ABA82710();
    v9[32] = v7;

    v1(v9);
    sub_1ABAB1024();

    if (v0)
    {
      break;
    }

    v4 += 40;
  }

  while ((v2 & 1) == 0);
  return v6 != 0;
}

BOOL sub_1ABB2FA20(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for K2TTextualization(0) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

BOOL sub_1ABB2FAF4()
{
  sub_1ABA9324C();
  v3 = (v2 + 56);
  v5 = v4 + 1;
  do
  {
    if (!--v5)
    {
      break;
    }

    v6 = *(v3 - 2);
    v7 = *(v3 - 1);
    v8 = *v3;
    v11 = *(v3 - 3);
    v12 = v6;
    v13 = v7;
    v14 = v8;
    sub_1ABB344B0(v11, v6, v7, v8);
    v9 = v1(&v11);
    sub_1ABB344F0(v11, v12, v13, v14);
    if (v0)
    {
      break;
    }

    v3 += 32;
  }

  while ((v9 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1ABB2FB98(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v69 = a3;
  v7 = sub_1ABF223D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v70 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v59 - v11;
  v13 = sub_1ABAAB7C8(a1);
  v14 = 0;
  v60 = a2;
  v74 = a2 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_subgraphTable;
  v75 = a1 & 0xFFFFFFFFFFFFFF8;
  v76 = a1 & 0xC000000000000001;
  v59[0] = a1;
  v72 = a1 + 32;
  v73 = (v8 + 8);
  v66 = (v8 + 16);
  v59[1] = "ever";
  *&v15 = 136380675;
  v62 = v15;
  v61 = MEMORY[0x1E69E7CC0];
  v67 = v13;
  v68 = v12;
  v71 = v7;
  while (v14 != v13)
  {
    if (v76)
    {
      MEMORY[0x1AC5AA170](v14, v59[0]);
      v16 = v7;
    }

    else
    {
      if (v14 >= *(v75 + 16))
      {
        goto LABEL_32;
      }

      v16 = v7;
    }

    if (__OFADD__(v14++, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      while (1)
      {
LABEL_33:
        swift_unexpectedError();
        __break(1u);
      }
    }

    type metadata accessor for SearchableViewDatabaseTable(0);
    sub_1ABB33C40();
    if (v4)
    {
      goto LABEL_33;
    }

    v18 = sub_1ABF251F4();
    if (v19)
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v20 = sub_1ABF237F4();
      sub_1ABA7AA24(v20, qword_1ED871B40);
      v21 = v70;
      (*v66)(v70, v12, v16);
      v22 = sub_1ABF237D4();
      v23 = v21;
      v24 = sub_1ABF24664();
      v25 = os_log_type_enabled(v22, v24);
      v26 = v73;
      v27 = v16;
      if (v25)
      {
        v28 = swift_slowAlloc();
        v63 = v28;
        v64 = swift_slowAlloc();
        v79[0] = v64;
        *v28 = v62;
        sub_1ABB3440C(&qword_1EB4D3048, MEMORY[0x1E699FE40], MEMORY[0x1E699FE48]);
        v29 = v70;
        v30 = sub_1ABF24FF4();
        v65 = 0;
        v32 = v31;
        v33 = *v26;
        v33(v29, v71);
        v34 = sub_1ABADD6D8(v30, v32, v79);
        v4 = v65;

        v35 = v63;
        *(v63 + 1) = v34;
        _os_log_impl(&dword_1ABA78000, v22, v24, "EntityIdentifier: failed to initialize from database value: %{private}s", v35, 0xCu);
        v36 = v64;
        sub_1ABA84B54(v64);
        v37 = v36;
        v27 = v71;
        MEMORY[0x1AC5AB8B0](v37, -1, -1);
        MEMORY[0x1AC5AB8B0](v35, -1, -1);
      }

      else
      {

        v33 = *v26;
        v33(v23, v16);
      }

      v12 = v68;
      v7 = v27;
      v33(v68, v27);

      v13 = v67;
    }

    else
    {
      v38 = v18;
      (*v73)(v12, v16);
      v39 = *v69;
      if (*(*v69 + 16))
      {
        v40 = sub_1ABF25224();
        v41 = ~(-1 << *(v39 + 32));
        while (1)
        {
          v42 = v40 & v41;
          if (((*(v39 + 56 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
          {
            break;
          }

          v40 = v42 + 1;
          if (*(*(v39 + 48) + 8 * v42) == v38)
          {
            goto LABEL_20;
          }
        }
      }

      sub_1ABF22BC4();
      if (v79[3])
      {
        sub_1ABAD219C(&qword_1EB4D38B0, &qword_1ABF3A890);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_20;
        }

        v43 = v77;
        v44 = v78;
        sub_1ABB18C18(v79, v38);
        sub_1ABB33054();
        v46 = v45;
        v47 = *(v60 + 16);
        v48 = sub_1ABF25054();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = 0;
        v50 = v47;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ABAD9858();
          v61 = v56;
        }

        v51 = *(v61 + 16);
        if (v51 >= *(v61 + 24) >> 1)
        {
          sub_1ABAD9858();
          v61 = v57;
        }

        v52 = v61;
        *(v61 + 16) = v51 + 1;
        v53 = v52 + 136 * v51;
        *(v53 + 40) = 0;
        *(v53 + 48) = 0;
        *(v53 + 32) = v38;
        *(v53 + 56) = -v46;
        *(v53 + 64) = v50;
        v54 = *(v79 + 3);
        *(v53 + 65) = v79[0];
        *(v53 + 68) = v54;
        *(v53 + 72) = 0u;
        *(v53 + 88) = 0u;
        *(v53 + 104) = v43;
        *(v53 + 112) = v44;
        *(v53 + 120) = 0x3FF0000000000000;
        *(v53 + 128) = v48 & 1;
        LODWORD(v52) = v77;
        *(v53 + 132) = *(&v77 + 3);
        *(v53 + 129) = v52;
        v55 = MEMORY[0x1E69E7CC0];
        *(v53 + 136) = MEMORY[0x1E69E7CC0];
        *(v53 + 144) = v55;
        *(v53 + 152) = v55;
        *(v53 + 160) = v55;
        v4 = v65;
        v13 = v67;
        v12 = v68;
      }

      else
      {
        sub_1ABA925A4(v79, &qword_1EB4D3050, &qword_1ABF3DF20);
LABEL_20:
      }
    }
  }

  return v61;
}

uint64_t sub_1ABB30290(uint64_t a1, uint64_t *a2, char a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  *(v3 + 16) = 3;
  sub_1ABB34574(a1, v3 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_subgraphTable);
  v7 = v3 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_searchMode;
  *v7 = v5;
  *(v7 + 8) = v6;
  *(v3 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_searchPattern) = a3;
  return v3;
}

unint64_t sub_1ABB302FC(void *a1, __int128 *a2, char a3)
{
  if (a1[1])
  {
    v21 = a2[1];
    v22 = *a2;
    v6 = *(a2 + 34);
    v7 = *(a2 + 16);
    v8 = sub_1ABF23EC4();
    v9 = MEMORY[0x1AC5A9330](v8);
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      LOWORD(v24) = v7;
      BYTE2(v24) = (v7 | (v6 << 16)) >> 16;

      sub_1ABB30474(v9, v11, v13, &v23, a3 & 1, 0, v14, v15, v21, *(&v21 + 1), v22, *(&v22 + 1), v22, *(&v22 + 1), v21, *(&v21 + 1), v24, v25, v26, v27);
      if (!v4)
      {
        v3 = v16;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v3 = 0x80000001ABF87840;
    v17 = sub_1ABB32C5C();
    v18 = sub_1ABA7BD00(&type metadata for EntityResolutionError, v17);
    *v19 = 0xD00000000000001BLL;
    v19[1] = 0x80000001ABF87840;
    sub_1ABA7BE50(v18, v19);
  }

  return v3;
}

void sub_1ABB30474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  v115 = v21;
  v22 = v20;
  HIDWORD(v112) = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = *v22;
  v31 = sub_1ABAD219C(&qword_1EB4D3030, &unk_1ABF3A960);
  sub_1ABA7AB80(v31);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  v114 = v103 - v33;
  v34 = sub_1ABF22384();
  sub_1ABA7BB64();
  v36 = v35;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v103 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v42 = v103 - v41;
  v43 = sub_1ABAD219C(&qword_1EB4D3038, &unk_1ABF3A870);
  sub_1ABA7AB80(v43);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v44);
  v113 = v103 - v45;
  v46 = sub_1ABF220F4();
  v47 = sub_1ABA7AB80(v46);
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA7BC58();
  v50 = v49 - v48;
  if (*(v25 + 34) == 255)
  {
    ObjectType = v50;
    v103[1] = v30;
    v107 = v29;
    if (qword_1ED871B18 != -1)
    {
      swift_once();
    }

    v51 = sub_1ABF237F4();
    v52 = sub_1ABA7AA24(v51, qword_1ED871B20);

    v108 = v52;
    v53 = sub_1ABF237D4();
    v54 = sub_1ABF24644();

    v55 = os_log_type_enabled(v53, v54);
    v109 = v36;
    v110 = v34;
    v111 = v27;
    v106 = v42;
    v104 = v39;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v56 = 136315394;
      *(v56 + 4) = sub_1ABADD6D8(0x7463656A626FLL, 0xE600000000000000, &v116);
      *(v56 + 12) = 2080;
      v57 = sub_1ABB389B8(*(v22 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_searchPattern));
      v59 = sub_1ABADD6D8(v57, v58, &v116);

      *(v56 + 14) = v59;
      _os_log_impl(&dword_1ABA78000, v53, v54, "ECR subgraph cangen: FTS search for column(%s) and pattern(%s", v56, 0x16u);
      swift_arrayDestroy();
      sub_1ABA7BC34();
      sub_1ABA7BC34();
    }

    v60 = *(v22 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_searchPattern);
    v61 = (v22 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_subgraphTable);
    v62 = *(v22 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_searchMode);
    v63 = *(v22 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_searchMode + 8);
    v64 = type metadata accessor for SearchableViewDatabaseTable(0);
    v116 = 0x7463656A626FLL;
    v117 = 0xE600000000000000;
    MEMORY[0x1EEE9AC00](v64);
    v103[-2] = &v116;
    v65 = v115;
    if (sub_1ABB2F764())
    {
      v113 = v61[1];
      ObjectType = swift_getObjectType();
      v115 = v103;
      MEMORY[0x1EEE9AC00](ObjectType);
      v66 = v111;
      v103[-16] = v107;
      v103[-15] = v66;
      LOBYTE(v103[-14]) = v60;
      v103[-13] = v61;
      LOBYTE(v103[-12]) = BYTE4(v112) & 1;
      v103[-11] = 0x7463656A626FLL;
      v103[-10] = 0xE600000000000000;
      v103[-9] = v62;
      LOBYTE(v103[-8]) = v63;
      *&v103[-7] = 0u;
      *&v103[-5] = 0u;
      *&v103[-3] = 0u;
      sub_1ABAD219C(&qword_1EB4D3040, &unk_1ABF3A880);
      sub_1ABF22464();
      v67 = v65;
      if (!v65)
      {
        v102 = v116;
        v116 = MEMORY[0x1E69E7CD0];

        sub_1ABB2FB98(v102, v22, &v116);

        goto LABEL_19;
      }

      v68 = v110;
    }

    else
    {
      sub_1ABF22364();
      v116 = 0;
      v117 = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0xD00000000000003ELL, 0x80000001ABF87860);
      MEMORY[0x1AC5A9410](v61[2], v61[3]);
      MEMORY[0x1AC5A9410](32, 0xE100000000000000);
      MEMORY[0x1AC5A9410](0x7463656A626FLL, 0xE600000000000000);
      v72 = sub_1ABF22854();
      sub_1ABA7B9B4(v113, 1, 1, v72);
      v73 = sub_1ABB3440C(&qword_1EB4DB310, MEMORY[0x1E699FE10], MEMORY[0x1E699FE18]);
      v68 = v110;
      v67 = sub_1ABA7BD00(v110, v73);
      sub_1ABF22344();
      swift_willThrow();
    }

    v116 = v67;
    v74 = v67;
    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    v75 = v114;
    v76 = swift_dynamicCast();
    v77 = v109;
    if (v76)
    {
      sub_1ABA7B9B4(v75, 0, 1, v68);
      v78 = v106;
      (*(v77 + 32))(v106, v75, v68);
      v79 = v104;
      (*(v77 + 16))(v104, v78, v68);
      v80 = sub_1ABF237D4();
      v81 = sub_1ABF24664();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v116 = v115;
        *v82 = 136315138;
        v114 = sub_1ABF22354();
        v84 = v83;
        v85 = *(v77 + 8);
        v85(v79, v68);
        v86 = sub_1ABADD6D8(v114, v84, &v116);

        *(v82 + 4) = v86;
        _os_log_impl(&dword_1ABA78000, v80, v81, "DatabaseError: %s", v82, 0xCu);
        sub_1ABA84B54(v115);
        sub_1ABA7BC34();
        sub_1ABA7BC34();

        v85(v106, v68);
      }

      else
      {

        v95 = *(v77 + 8);
        v95(v79, v68);
        v95(v78, v68);
      }
    }

    else
    {
      sub_1ABA7B9B4(v75, 1, 1, v68);
      sub_1ABA925A4(v75, &qword_1EB4D3030, &unk_1ABF3A960);
      v87 = v67;
      v88 = v111;

      v89 = sub_1ABF237D4();
      v90 = sub_1ABF24664();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        *v91 = 136315650;
        *(v91 + 4) = sub_1ABADD6D8(0x7463656A626FLL, 0xE600000000000000, &v116);
        *(v91 + 12) = 2080;
        *(v91 + 14) = sub_1ABADD6D8(v107, v88, &v116);
        *(v91 + 22) = 2080;
        swift_getErrorValue();
        v92 = sub_1ABF25154();
        v94 = sub_1ABADD6D8(v92, v93, &v116);

        *(v91 + 24) = v94;
        _os_log_impl(&dword_1ABA78000, v89, v90, "Unexpected error while call searchFTS(columnName: %s, query: %s). Error: %s", v91, 0x20u);
        swift_arrayDestroy();
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }
    }

    swift_getErrorValue();
    v96 = sub_1ABF25154();
    v98 = v97;
    v99 = sub_1ABB32C5C();
    v100 = sub_1ABA7BD00(&type metadata for EntityResolutionError, v99);
    *v101 = v96;
    v101[1] = v98;
    sub_1ABA7BE50(v100, v101);
  }

  else
  {
    v69 = sub_1ABB32C5C();
    v70 = sub_1ABA7BD00(&type metadata for EntityResolutionError, v69);
    *v71 = 0xD000000000000034;
    v71[1] = 0x80000001ABF878A0;
    sub_1ABA7BE50(v70, v71);
  }

LABEL_19:
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABB30E50()
{
  sub_1ABB34454(v0 + OBJC_IVAR____TtC20IntelligencePlatform40SubgraphMatchingSearchCandidateRetriever_subgraphTable);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SubgraphMatchingSearchCandidateRetriever(uint64_t a1)
{
  result = qword_1EB4D3020;
  if (!qword_1EB4D3020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABB30F08(uint64_t a1)
{
  result = type metadata accessor for SearchableViewDatabaseTable(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABB30FDC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_1ABB31024(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v3 = sub_1ABAAB7C8(a1);
    v4 = v3 - 1;
    if (__OFSUB__(v3, 1))
    {
      __break(1u);
    }

    else
    {
      sub_1ABAAB7C0(v3 - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
      }
    }

    return MEMORY[0x1AC5AA170](v4, a1);
  }

  result = sub_1ABF24CA4();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1ABB310C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB310F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB31118(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_1ABF23D64();
  return sub_1ABF23E94();
}

uint64_t sub_1ABB31198(uint64_t a1, uint64_t a2, unint64_t a3, int a4, unint64_t a5, int a6, char *a7, uint64_t (*a8)(char *, char *, uint64_t), uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v75 = a7;
  v76 = a8;
  LODWORD(v82) = a6;
  LODWORD(v81) = a4;
  v20 = sub_1ABF22854();
  v80 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1ABAD219C(&qword_1EB4D3068, &unk_1ABF3A8A0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v72 - v24;
  v26 = sub_1ABF22164();
  v86 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v78 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v72 - v29;
  v31 = *(type metadata accessor for SearchableViewDatabaseTable(0) + 28);
  v77 = a5;
  v32 = (a5 + v31);
  v33 = *v32;
  v34 = v32[1];
  v74 = a2;
  v35 = a2;
  v36 = a3;
  v37 = v81;
  v79 = a1;
  sub_1ABB318A4(v35, v36, v81, a1, v33, v34, v82, v25);
  if (sub_1ABA7E1E0(v25, 1, v26) == 1)
  {
    sub_1ABA925A4(v25, &qword_1EB4D3068, &unk_1ABF3A8A0);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v38 = sub_1ABF237F4();
    sub_1ABA7AA24(v38, qword_1ED871B40);

    v39 = sub_1ABF237D4();
    v40 = sub_1ABF24664();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v84[0] = v42;
      *v41 = 136315394;
      v43 = sub_1ABB389B8(v37);
      v45 = sub_1ABADD6D8(v43, v44, v84);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_1ABADD6D8(v74, v36, v84);
      _os_log_impl(&dword_1ABA78000, v39, v40, "Cannot create FTS5Pattern(%s) for query: %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1AC5AB8B0](v42, -1, -1);
      MEMORY[0x1AC5AB8B0](v41, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v81 = v22;
    v82 = v20;
    v73 = a13;
    v74 = a14;
    (*(v86 + 32))(v30, v25, v26);
    v77 = sub_1ABB325C0(v75, v76, a9, a10, a11, a12, v73, v74, a15, a16);
    v48 = v47;
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v49 = sub_1ABF237F4();
    sub_1ABA7AA24(v49, qword_1ED871B40);
    v50 = v86;
    v51 = v86 + 16;
    v52 = v78;
    v76 = *(v86 + 16);
    v76(v78, v30, v26);
    v53 = sub_1ABF237D4();
    v54 = sub_1ABF24654();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = v52;
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v75 = v30;
      v58 = v57;
      *&v84[0] = v57;
      *v56 = 136315138;
      v59 = sub_1ABF22104();
      v73 = v51;
      v74 = v48;
      v60 = v59;
      v62 = v61;
      v78 = *(v50 + 8);
      (v78)(v55, v26);
      v63 = sub_1ABADD6D8(v60, v62, v84);

      *(v56 + 4) = v63;
      _os_log_impl(&dword_1ABA78000, v53, v54, "FTS Pattern: %s", v56, 0xCu);
      sub_1ABA84B54(v58);
      v64 = v58;
      v30 = v75;
      MEMORY[0x1AC5AB8B0](v64, -1, -1);
      MEMORY[0x1AC5AB8B0](v56, -1, -1);
    }

    else
    {

      v78 = *(v50 + 8);
      (v78)(v52, v26);
    }

    v65 = v83;
    v66 = v80;
    v67 = v81;
    sub_1ABF22BB4();
    sub_1ABAD219C(&qword_1EB4D5820, &unk_1ABF39E30);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1ABF34740;
    v68 = MEMORY[0x1E699FDA0];
    *(v46 + 56) = v26;
    *(v46 + 64) = v68;
    v69 = sub_1ABA93DC0((v46 + 32));
    v76(v69, v30, v26);
    sub_1ABF22834();
    v85 = 0;
    memset(v84, 0, sizeof(v84));
    v70 = sub_1ABF22B84();
    if (!v65)
    {
      v46 = v70;
    }

    sub_1ABA925A4(v84, &unk_1EB4D38A0, &qword_1ABF3A8B0);
    (*(v66 + 8))(v67, v82);
    (v78)(v30, v26);
  }

  return v46;
}

void sub_1ABB318A4(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v100 = a5;
  v101 = a6;
  v107 = a4;
  v108 = a8;
  v109 = a1;
  v110 = a2;
  v10 = sub_1ABF22384();
  v105 = *(v10 - 8);
  v106 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v102 = v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v104 = v93 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v103 = v93 - v15;
  v16 = sub_1ABF22484();
  v99 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1ABAD219C(&qword_1EB4D3070, &qword_1ABF3A8B8);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = (v93 - v21);
  v23 = sub_1ABF229A4();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a3)
  {
    case 1:
      v27 = HIBYTE(v110) & 0xF;
      if ((v110 & 0x2000000000000000) == 0)
      {
        v27 = v109 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        v28 = 42;
        if (a7)
        {
          v28 = 0;
        }

        v94 = v28;
        v29 = 0xE100000000000000;
        if (a7)
        {
          v29 = 0xE000000000000000;
        }

        v97 = v29;
        type metadata accessor for UnicodeWrapperTokenizer();
        sub_1ABB3440C(qword_1ED871EB8, type metadata accessor for UnicodeWrapperTokenizer, &protocol conformance descriptor for UnicodeWrapperTokenizer);
        sub_1ABF22874();
        v30 = 0;
        sub_1ABF22E14();
        (*(v24 + 8))(v26, v23);
        swift_getObjectType();
        v63 = sub_1ABF223E4();
        swift_unknownObjectRelease();
        v64 = *(v63 + 16);
        if (v64)
        {
          v98 = *(v19 + 48);
          v65 = (*(v20 + 80) + 32) & ~*(v20 + 80);
          v93[1] = v63;
          v66 = v63 + v65;
          v67 = (v99 + 8);
          v99 = MEMORY[0x1E69E7CC0];
          v68 = *(v20 + 72);
          v95 = v68;
          v96 = 0;
          do
          {
            sub_1ABB3439C(v66, v22);
            sub_1ABF22474();
            sub_1ABB3440C(&qword_1EB4D0220, MEMORY[0x1E699FE80], MEMORY[0x1E699FE88]);
            v69 = sub_1ABF24924();
            (*v67)(v18, v16);
            if (v69)
            {
              sub_1ABA925A4(v22, &qword_1EB4D3070, &qword_1ABF3A8B8);
            }

            else
            {
              v111 = 34;
              v112 = 0xE100000000000000;
              MEMORY[0x1AC5A9410](*v22, v22[1]);
              MEMORY[0x1AC5A9410](34, 0xE100000000000000);
              v70 = v111;
              v71 = v112;
              sub_1ABA925A4(v22, &qword_1EB4D3070, &qword_1ABF3A8B8);
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v72 = v99;
              }

              else
              {
                sub_1ABAAA4F4();
                v72 = v75;
              }

              v73 = *(v72 + 16);
              if (v73 >= *(v72 + 24) >> 1)
              {
                sub_1ABAAA4F4();
                v72 = v76;
              }

              *(v72 + 16) = v73 + 1;
              v99 = v72;
              v74 = v72 + 16 * v73;
              *(v74 + 32) = v70;
              *(v74 + 40) = v71;
              v68 = v95;
              v30 = v96;
            }

            v66 += v68;
            --v64;
          }

          while (v64);

          v77 = v99;
        }

        else
        {

          v77 = MEMORY[0x1E69E7CC0];
        }

        v52 = v108;
        v79 = v105;
        v78 = v106;
        v80 = v104;
        v81 = v110;
        v82 = v97;
        if (!*(v77 + 16))
        {
          v92 = sub_1ABF22164();
          sub_1ABA7B9B4(v52, 1, 1, v92);

          return;
        }

        v83 = 0xE000000000000000;
        v111 = 0;
        v112 = 0xE000000000000000;
        v99 = v77;
        v84 = sub_1ABB30FDC(v77);
        if (v85)
        {
          v83 = v85;
        }

        else
        {
          v84 = 0;
        }

        MEMORY[0x1AC5A9410](v84, v83);

        MEMORY[0x1AC5A9410](v94, v82);
        v86 = v112;
        if (*(v99 + 16) < 2uLL)
        {
          v91 = v111;
        }

        else
        {
          v87 = v99;

          v111 = v87;
          sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
          sub_1ABAAA5C0();
          v88 = sub_1ABF23B54();
          v90 = v89;

          v111 = v88;
          v112 = v90;
          MEMORY[0x1AC5A9410](v94, v97);

          v91 = v111;
          v86 = v112;
        }

        v111 = 94;
        v112 = 0xE100000000000000;
        MEMORY[0x1AC5A9410](v91, v86);

        sub_1ABF22E34();
        if (v30)
        {

          v111 = v30;
          v33 = v30;
          sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
          v34 = v103;
          if (swift_dynamicCast())
          {

            (*(v79 + 32))(v80, v34, v78);
            if (qword_1ED871B38 != -1)
            {
              swift_once();
            }

            v35 = sub_1ABF237F4();
            sub_1ABA7AA24(v35, qword_1ED871B40);

            v36 = sub_1ABF237D4();
            v37 = sub_1ABF24664();

            if (os_log_type_enabled(v36, v37))
            {
              v38 = swift_slowAlloc();
              v39 = swift_slowAlloc();
              v113[0] = v39;
              *v38 = 136315138;
              *(v38 + 4) = sub_1ABADD6D8(v109, v81, v113);
              _os_log_impl(&dword_1ABA78000, v36, v37, "Failed to create FTS5Pattern with prefix pattern for query: %s", v38, 0xCu);
              sub_1ABA84B54(v39);
              MEMORY[0x1AC5AB8B0](v39, -1, -1);
              MEMORY[0x1AC5AB8B0](v38, -1, -1);
            }

            v40 = v102;
            (*(v79 + 16))(v102, v80, v78);
            v41 = sub_1ABF237D4();
            v42 = sub_1ABF24664();
            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              v113[0] = v44;
              *v43 = 136315138;
              v45 = sub_1ABF22354();
              v46 = v80;
              v48 = v47;
              v49 = *(v79 + 8);
              v49(v40, v78);
              v50 = sub_1ABADD6D8(v45, v48, v113);

              *(v43 + 4) = v50;
              _os_log_impl(&dword_1ABA78000, v41, v42, "Error description: %s", v43, 0xCu);
              sub_1ABA84B54(v44);
              MEMORY[0x1AC5AB8B0](v44, -1, -1);
              MEMORY[0x1AC5AB8B0](v43, -1, -1);

              v51 = v46;
              v52 = v108;
              v49(v51, v78);
            }

            else
            {

              v61 = *(v79 + 8);
              v61(v40, v78);
              v61(v80, v78);
            }

            v62 = sub_1ABF22164();
            sub_1ABA7B9B4(v52, 1, 1, v62);

            return;
          }

          if (qword_1ED871B38 != -1)
          {
            swift_once();
          }

          v53 = sub_1ABF237F4();
          sub_1ABA7AA24(v53, qword_1ED871B40);

          v54 = sub_1ABF237D4();
          v55 = sub_1ABF24664();

          if (os_log_type_enabled(v54, v55))
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v111 = v57;
            *v56 = 136315138;
            *(v56 + 4) = sub_1ABADD6D8(v109, v81, &v111);
            _os_log_impl(&dword_1ABA78000, v54, v55, "Failed to create FTS5Pattern with prefix pattern for query: %s", v56, 0xCu);
            sub_1ABA84B54(v57);
            MEMORY[0x1AC5AB8B0](v57, -1, -1);
            MEMORY[0x1AC5AB8B0](v56, -1, -1);
          }

          v58 = sub_1ABF22164();
          v59 = v52;
          v60 = 1;
        }

        else
        {

          v58 = sub_1ABF22164();
          v59 = v52;
          v60 = 0;
        }

        sub_1ABA7B9B4(v59, v60, 1, v58);
        return;
      }

      v31 = sub_1ABF22164();
      v32 = v108;

      sub_1ABA7B9B4(v32, 1, 1, v31);
      return;
    case 2:

      sub_1ABF22134();
      return;
    case 3:

      sub_1ABF22154();
      return;
    case 4:

      sub_1ABF22114();
      return;
    case 5:

      sub_1ABF22144();
      return;
    default:

      sub_1ABF22124();
      return;
  }
}

unint64_t sub_1ABB325C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = a4;
  if (a6 && a8)
  {
    v28 = a4;
    sub_1ABF24AB4();

    if (a10)
    {
      MEMORY[0x1AC5A9410](*(v10 + 16), *(v10 + 24));
      MEMORY[0x1AC5A9410](0x20455245485720, 0xE700000000000000);
      v16 = a9;
      v17 = a10;
    }

    else
    {
      v16 = *(v10 + 16);
      v17 = *(v10 + 24);
    }

    MEMORY[0x1AC5A9410](v16, v17);
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD00000000000001ALL, 0x80000001ABF87920);
    MEMORY[0x1AC5A9410](a5, a6);
    MEMORY[0x1AC5A9410](0xD00000000000001ALL, 0x80000001ABF87940);
    MEMORY[0x1AC5A9410](0xD000000000000015, 0x80000001ABF87900);

    MEMORY[0x1AC5A9410](0xD00000000000001BLL, 0x80000001ABF87960);
    v25 = (v10 + *(type metadata accessor for SearchableViewDatabaseTable(0) + 28));
    v23 = *v25;
    v24 = v25[1];
    MEMORY[0x1AC5A9410](*v25, v24);
    MEMORY[0x1AC5A9410](0xD000000000000046, 0x80000001ABF87980);
    MEMORY[0x1AC5A9410](a7, a8);
    MEMORY[0x1AC5A9410](0xD000000000000014, 0x80000001ABF879D0);
    MEMORY[0x1AC5A9410](a7, a8);
    MEMORY[0x1AC5A9410](0x4A2052454E4E490ALL, 0xEC000000204E494FLL);
    MEMORY[0x1AC5A9410](v23, v24);
    MEMORY[0x1AC5A9410](0xD00000000000001ALL, 0x80000001ABF879F0);
    MEMORY[0x1AC5A9410](v23, v24);
    MEMORY[0x1AC5A9410](0x570A6469776F722ELL, 0xEE00202045524548);
    MEMORY[0x1AC5A9410](v23, v24);
    MEMORY[0x1AC5A9410](46, 0xE100000000000000);
    MEMORY[0x1AC5A9410](a1, a2);
    MEMORY[0x1AC5A9410](0x3A20484354414D20, 0xED0000686374616DLL);
    v11 = v28;
  }

  else
  {
    if (a10)
    {
      MEMORY[0x1AC5A9410](a9, a10, a3, a4, a5);
      v19 = 541347393;
      v18 = 0xE400000000000000;
    }

    else
    {
      v19 = 0;
      v18 = 0xE000000000000000;
    }

    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0x454C455320202020, 0xEB00000000205443);
    v21 = *(v10 + 16);
    v20 = *(v10 + 24);
    MEMORY[0x1AC5A9410](v21, v20);
    MEMORY[0x1AC5A9410](539765294, 0xE400000000000000);
    v22 = (v10 + *(type metadata accessor for SearchableViewDatabaseTable(0) + 28));
    v23 = *v22;
    v24 = v22[1];
    MEMORY[0x1AC5A9410](*v22, v24);
    MEMORY[0x1AC5A9410](0x20200A6B6E61722ELL, 0xEF204D4F52462020);
    MEMORY[0x1AC5A9410](v21, v20);
    MEMORY[0x1AC5A9410](0x204E494F4A20, 0xE600000000000000);
    MEMORY[0x1AC5A9410](v23, v24);
    MEMORY[0x1AC5A9410](0x204E4F202020200ALL, 0xE800000000000000);
    MEMORY[0x1AC5A9410](v21, v20);
    MEMORY[0x1AC5A9410](0x3D206469776F722ELL, 0xE900000000000020);
    MEMORY[0x1AC5A9410](v23, v24);
    MEMORY[0x1AC5A9410](0xD000000000000011, 0x80000001ABF878E0);
    MEMORY[0x1AC5A9410](v23, v24);
    MEMORY[0x1AC5A9410](46, 0xE100000000000000);
    MEMORY[0x1AC5A9410](a1, a2);
    MEMORY[0x1AC5A9410](0x3A20484354414D20, 0xEE0020686374616DLL);
    MEMORY[0x1AC5A9410](v19, v18);
  }

  if (v11 != -1)
  {
    if (v11)
    {
      sub_1ABF24AB4();

      v31 = 0x4220524544524F20;
      v32 = 0xEA00000000002059;
      MEMORY[0x1AC5A9410](v23, v24);
      MEMORY[0x1AC5A9410](0x494C206B6E61722ELL, 0xEC0000002054494DLL);
      v26 = sub_1ABF24FF4();
      MEMORY[0x1AC5A9410](v26);
    }

    else
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_1ABF24AB4();
      MEMORY[0x1AC5A9410](0x20444E4120, 0xE500000000000000);
      MEMORY[0x1AC5A9410](v23, v24);
      MEMORY[0x1AC5A9410](0x203C206B6E61722ELL, 0xE800000000000000);
      sub_1ABF24374();
    }

    MEMORY[0x1AC5A9410](v31, v32);
  }

  return 0;
}

unint64_t sub_1ABB32C5C()
{
  result = qword_1ED86D378;
  if (!qword_1ED86D378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D378);
  }

  return result;
}

uint64_t sub_1ABB32CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054() & 1;
  }
}

uint64_t sub_1ABB32CF4(uint64_t a1)
{
  sub_1ABAA3BCC(a1);
  v3 = v3 && v1 == v2;
  if (v3)
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054() & 1;
  }
}

uint64_t sub_1ABB32D34(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v4, a2, sizeof(v4));
  return static ExtendedTriple.== infix(_:_:)(__dst, v4) & 1;
}

uint64_t sub_1ABB32D94(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1ABF25054() & 1;
  }
}

BOOL sub_1ABB32DEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v12 = a4;
  v9[0] = a5;
  v9[1] = a6;
  v9[2] = a7;
  v10 = a8;
  return sub_1ABDEF364(v11, v9);
}

void sub_1ABB32E40()
{
  sub_1ABA7BCA8();
  sub_1ABAA5F0C();
  v0 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v0);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1ABA947C4();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7EE10();
  if (v4)
  {
    v5 = sub_1ABF22D64();
    v6 = sub_1ABA7BE18(v5);
    sub_1ABAA21D8(v6);
    sub_1ABF22774();
    sub_1ABA8EFE8();
    v9 = sub_1ABB3440C(v7, v8, MEMORY[0x1E699FEA0]);
    sub_1ABA992A8(v9);
    sub_1ABA8E688();
    v10 = sub_1ABA7ABFC();
    v11(v10);
    swift_willThrow();
LABEL_10:
    sub_1ABA83F0C();
    sub_1ABA7BC90();
    return;
  }

  if (!sub_1ABF22B54())
  {
    sub_1ABAA4CCC(MEMORY[0x1E69E6158]);
    goto LABEL_10;
  }

  sub_1ABA97484();
  if (v12 != v13)
  {
    __break(1u);
  }

  else
  {
    sub_1ABAA2BCC();
    if (v12 ^ v13 | v14)
    {
      sub_1ABA8FE70();
      MEMORY[0x1EEE9AC00](v15);
      v17 = sub_1ABA8365C(v16);
      if (v17 == 5)
      {
        MEMORY[0x1EEE9AC00](v17);
        sub_1ABA8BEBC();
        *(v18 - 16) = sub_1ABB34730;
        *(v18 - 8) = v2;
        sub_1ABA7E39C();
        sub_1ABAA3438();
      }

      else
      {
        sub_1ABA979F8();
        sub_1ABF23CB4();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1ABB33054()
{
  sub_1ABA7BCA8();
  sub_1ABAA5F0C();
  v0 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v0);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1ABA947C4();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7EE10();
  if (v4)
  {
    v5 = sub_1ABF22D64();
    v6 = sub_1ABA7BE18(v5);
    sub_1ABAA21D8(v6);
    sub_1ABF22774();
    sub_1ABA8EFE8();
    v9 = sub_1ABB3440C(v7, v8, MEMORY[0x1E699FEA0]);
    sub_1ABA992A8(v9);
    sub_1ABA8E688();
    v10 = sub_1ABA7ABFC();
    v11(v10);
    swift_willThrow();
LABEL_10:
    sub_1ABA83F0C();
    sub_1ABA7BC90();
    return;
  }

  if (!sub_1ABF22B54())
  {
    sub_1ABAA4CCC(MEMORY[0x1E69E63B0]);
    goto LABEL_10;
  }

  sub_1ABA97484();
  if (v12 != v13)
  {
    __break(1u);
  }

  else
  {
    sub_1ABAA2BCC();
    if (v12 ^ v13 | v14)
    {
      sub_1ABA8FE70();
      MEMORY[0x1EEE9AC00](v15);
      v17 = sub_1ABA8365C(v16);
      if (v17 == 5)
      {
        MEMORY[0x1EEE9AC00](v17);
        sub_1ABA8BEBC();
        *(v18 - 16) = sub_1ABB3436C;
        *(v18 - 8) = v2;
        sub_1ABA7E39C();
        sub_1ABAA3438();
      }

      else
      {
        sub_1ABA979F8();
        sub_1ABF24324();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1ABB33264()
{
  sub_1ABA7BCA8();
  sub_1ABAA5F0C();
  v0 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v0);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1ABA947C4();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7EE10();
  if (v4)
  {
    v5 = sub_1ABF22D64();
    v6 = sub_1ABA7BE18(v5);
    sub_1ABAA21D8(v6);
    sub_1ABF22774();
    sub_1ABA8EFE8();
    v9 = sub_1ABB3440C(v7, v8, MEMORY[0x1E699FEA0]);
    sub_1ABA992A8(v9);
    sub_1ABA8E688();
    v10 = sub_1ABA7ABFC();
    v11(v10);
    swift_willThrow();
LABEL_10:
    sub_1ABA83F0C();
    sub_1ABA7BC90();
    return;
  }

  if (!sub_1ABF22B54())
  {
    sub_1ABAA4CCC(MEMORY[0x1E69E6530]);
    goto LABEL_10;
  }

  sub_1ABA97484();
  if (v12 != v13)
  {
    __break(1u);
  }

  else
  {
    sub_1ABAA2BCC();
    if (v12 ^ v13 | v14)
    {
      sub_1ABA8FE70();
      MEMORY[0x1EEE9AC00](v15);
      v17 = sub_1ABA8365C(v16);
      if (v17 == 5)
      {
        MEMORY[0x1EEE9AC00](v17);
        sub_1ABA8BEBC();
        *(v18 - 16) = sub_1ABB34730;
        *(v18 - 8) = v2;
        sub_1ABA7E39C();
        sub_1ABAA3438();
      }

      else
      {
        sub_1ABA979F8();
        sub_1ABF251E4();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1ABB33474()
{
  sub_1ABA7BCA8();
  sub_1ABAA5F0C();
  v0 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v0);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1ABA947C4();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7EE10();
  if (v4)
  {
    v5 = sub_1ABF22D64();
    v6 = sub_1ABA7BE18(v5);
    sub_1ABAA21D8(v6);
    sub_1ABF22774();
    sub_1ABA8EFE8();
    v9 = sub_1ABB3440C(v7, v8, MEMORY[0x1E699FEA0]);
    sub_1ABA992A8(v9);
    sub_1ABA8E688();
    v10 = sub_1ABA7ABFC();
    v11(v10);
    swift_willThrow();
LABEL_10:
    sub_1ABA83F0C();
    sub_1ABA7BC90();
    return;
  }

  if (!sub_1ABF22B54())
  {
    sub_1ABAA4CCC(MEMORY[0x1E69E6370]);
    goto LABEL_10;
  }

  sub_1ABA97484();
  if (v12 != v13)
  {
    __break(1u);
  }

  else
  {
    sub_1ABAA2BCC();
    if (v12 ^ v13 | v14)
    {
      sub_1ABA8FE70();
      MEMORY[0x1EEE9AC00](v15);
      v17 = sub_1ABA8365C(v16);
      if (v17 == 5)
      {
        MEMORY[0x1EEE9AC00](v17);
        sub_1ABA8BEBC();
        *(v18 - 16) = sub_1ABB34730;
        *(v18 - 8) = v2;
        sub_1ABA7E39C();
        sub_1ABAA3438();
      }

      else
      {
        sub_1ABA979F8();
        sub_1ABF24234();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1ABB33688()
{
  sub_1ABA7BCA8();
  sub_1ABAA5F0C();
  v0 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v0);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1ABA947C4();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7EE10();
  if (v4)
  {
    v5 = sub_1ABF22D64();
    v6 = sub_1ABA7BE18(v5);
    sub_1ABAA21D8(v6);
    sub_1ABF22774();
    sub_1ABA8EFE8();
    v9 = sub_1ABB3440C(v7, v8, MEMORY[0x1E699FEA0]);
    sub_1ABA992A8(v9);
    sub_1ABA8E688();
    v10 = sub_1ABA7ABFC();
    v11(v10);
    swift_willThrow();
LABEL_10:
    sub_1ABA83F0C();
    sub_1ABA7BC90();
    return;
  }

  if (!sub_1ABF22B54())
  {
    sub_1ABAA4CCC(MEMORY[0x1E69E7360]);
    goto LABEL_10;
  }

  sub_1ABA97484();
  if (v12 != v13)
  {
    __break(1u);
  }

  else
  {
    sub_1ABAA2BCC();
    if (v12 ^ v13 | v14)
    {
      sub_1ABA8FE70();
      MEMORY[0x1EEE9AC00](v15);
      v17 = sub_1ABA8365C(v16);
      if (v17 == 5)
      {
        MEMORY[0x1EEE9AC00](v17);
        sub_1ABA8BEBC();
        *(v18 - 16) = sub_1ABB34730;
        *(v18 - 8) = v2;
        sub_1ABA7E39C();
        sub_1ABAA3438();
      }

      else
      {
        sub_1ABA979F8();
        sub_1ABF251E4();
      }

      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1ABB33898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v24 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v24);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  v28 = sub_1ABF22824();
  sub_1ABA7BB64();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7BC58();
  v34 = v33 - v32;
  v35 = sub_1ABF22B74();
  if (v36)
  {
    v37 = sub_1ABF22D64();
    sub_1ABA81574(v27, v38, v39, v37);
    sub_1ABF22814();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    v42 = sub_1ABB3440C(v40, v41, MEMORY[0x1E699FEA0]);
    sub_1ABA992A8(v42);
    sub_1ABF22764();
    (*(v30 + 8))(v34, v28);
    swift_willThrow();
LABEL_10:
    sub_1ABA83F0C();
    sub_1ABA7BC90();
    return;
  }

  v43 = v35;
  if (!sub_1ABF22B54())
  {
    sub_1ABF22B24();
    goto LABEL_10;
  }

  if (v43 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v43 <= 0x7FFFFFFF)
  {
    sub_1ABA8FE70();
    MEMORY[0x1EEE9AC00](v44);
    *(&a9 - 2) = v20;
    *(&a9 - 1) = v43;
    v46 = sqlite3_column_type(v45, v43);
    if (v46 == 5)
    {
      MEMORY[0x1EEE9AC00](v46);
      sub_1ABA8BEBC();
      *(v47 - 16) = sub_1ABB34730;
      *(v47 - 8) = &a9 - 4;
      sub_1ABF229B4();
      sub_1ABAA3438();
    }

    else
    {
      v48 = sub_1ABF21D54();
      v49 = a10;
      *a10 = v48;
      v49[1] = v50;
    }

    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1ABB33B40(uint64_t a1, uint64_t a2)
{
  v3 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  *(&v9 - v4) = a2;
  v6 = *MEMORY[0x1E69A0060];
  v7 = sub_1ABF22D64();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  sub_1ABA7B9B4(v5, 0, 1, v7);

  return sub_1ABF22814();
}

void sub_1ABB33C40()
{
  sub_1ABA7BCA8();
  sub_1ABAA2FA8();
  v0 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v0);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA947C4();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BC58();
  sub_1ABAA5710();
  if (v3)
  {
    v4 = sub_1ABF22D64();
    sub_1ABA7BE18(v4);
    sub_1ABF22814();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    v7 = sub_1ABB3440C(v5, v6, MEMORY[0x1E699FEA0]);
    sub_1ABAA51DC(v7);
    sub_1ABA905FC();
    v8 = sub_1ABA805B4();
    v9(v8);
    swift_willThrow();
  }

  else
  {
    sub_1ABF223D4();
    sub_1ABA95720();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABB33DA0()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v1);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABAA1E6C();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BC58();
  sub_1ABAA5710();
  if (v4)
  {
    v5 = sub_1ABF22D64();
    sub_1ABA81574(v0, v6, v7, v5);
    sub_1ABF22814();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    v10 = sub_1ABB3440C(v8, v9, MEMORY[0x1E699FEA0]);
    sub_1ABAA51DC(v10);
    sub_1ABA905FC();
    v11 = sub_1ABA805B4();
    v12(v11);
    swift_willThrow();
  }

  else
  {
    sub_1ABB34530();
    sub_1ABF22A14();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABB33F94()
{
  sub_1ABA7BCA8();
  v14 = v1;
  sub_1ABAA2FA8();
  v2 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v2);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABAA1E6C();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  sub_1ABAA5710();
  if (v5)
  {
    v6 = sub_1ABF22D64();
    sub_1ABA81574(v0, v7, v8, v6);
    sub_1ABF22814();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    v11 = sub_1ABB3440C(v9, v10, MEMORY[0x1E699FEA0]);
    sub_1ABAA51DC(v11);
    sub_1ABA905FC();
    v12 = sub_1ABA805B4();
    v13(v12);
    swift_willThrow();
  }

  else
  {
    v14();
    sub_1ABF22A14();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABB34118()
{
  sub_1ABA7BCA8();
  sub_1ABAA2FA8();
  v0 = sub_1ABAD219C(&qword_1EB4D3058, &qword_1ABF3A898);
  sub_1ABA7AB80(v0);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA947C4();
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7BC58();
  sub_1ABAA5710();
  if (v3)
  {
    v4 = sub_1ABF22D64();
    sub_1ABA7BE18(v4);
    sub_1ABF22814();
    sub_1ABF22774();
    sub_1ABA8EFE8();
    v7 = sub_1ABB3440C(v5, v6, MEMORY[0x1E699FEA0]);
    sub_1ABAA51DC(v7);
    sub_1ABA905FC();
    v8 = sub_1ABA805B4();
    v9(v8);
    swift_willThrow();
  }

  else
  {
    sub_1ABB346DC();
    sub_1ABA95720();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABB342C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, int a4@<W3>, unint64_t a5@<X4>, int a6@<W5>, char *a7@<X6>, uint64_t (*a8)(char *, char *, uint64_t)@<X7>, uint64_t *a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  result = sub_1ABB31198(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17);
  if (!v17)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_1ABB3439C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3070, &qword_1ABF3A8B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB3440C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ABB34454(uint64_t a1)
{
  v2 = type metadata accessor for SearchableViewDatabaseTable(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABB344B0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 >> 5;
  if (v4 == 4 || v4 == 3)
  {
  }

  if (!(a4 >> 5))
  {
    return sub_1ABB344D8(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1ABB344D8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1ABB344F0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v4 = a4 >> 5;
  if (v4 == 4 || v4 == 3)
  {
  }

  if (!(a4 >> 5))
  {
    return sub_1ABB34518(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1ABB34518(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1ABB34530()
{
  result = qword_1ED86B910;
  if (!qword_1ED86B910)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED86B910);
  }

  return result;
}

uint64_t sub_1ABB34574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchableViewDatabaseTable(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABB34688()
{
  result = qword_1EB4CFD08[0];
  if (!qword_1EB4CFD08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB4CFD08);
  }

  return result;
}

unint64_t sub_1ABB346DC()
{
  result = qword_1ED86DB20;
  if (!qword_1ED86DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DB20);
  }

  return result;
}

uint64_t sub_1ABB34738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, void (*a6)(void, void), void *a7, uint64_t a8)
{
  result = sub_1ABAAB7C8(a1);
  v12 = result;
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  v19 = a7;
  while (1)
  {
    if (v12 == v13)
    {

LABEL_19:

      swift_unknownObjectRelease();
      return v14;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1AC5AA170](v13, a1);
      v15 = result;
    }

    else
    {
      if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v15 = *(a1 + 8 * v13 + 32);
    }

    if (__OFADD__(v13, 1))
    {
      break;
    }

    v29 = v15;
    sub_1ABB35D30(&v29, a2, a3, a4, a5, a6, a7, __src);
    if (v8)
    {

      goto LABEL_19;
    }

    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1ABB373A8(__dst) == 1)
    {
      memcpy(v26, __src, sizeof(v26));
      result = sub_1ABA925A4(v26, &qword_1EB4D3078, &unk_1ABF3A970);
    }

    else
    {
      memcpy(v26, __src, sizeof(v26));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD9858();
        v14 = v17;
      }

      v16 = *(v14 + 16);
      if (v16 >= *(v14 + 24) >> 1)
      {
        sub_1ABAD9858();
        v14 = v18;
      }

      memcpy(v25, v26, sizeof(v25));
      *(v14 + 16) = v16 + 1;
      result = memcpy((v14 + 136 * v16 + 32), v25, 0x88uLL);
      a7 = v19;
    }

    ++v13;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1ABB34988(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  *(v4 + 16) = 3;
  sub_1ABB34574(a1, v4 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_aliasTable);
  *(v4 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_subgraphTables) = a2;
  v9 = v4 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_searchMode;
  *v9 = v7;
  *(v9 + 8) = v8;
  *(v4 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_searchPattern) = a4;
  return v4;
}

unint64_t sub_1ABB34A0C(void *a1, __int128 *a2, char a3, char a4, uint64_t a5)
{
  if (a1[1])
  {
    v8 = a1[7];
    v23 = a2[1];
    v24 = *a2;
    v9 = *(a2 + 34);
    v10 = *(a2 + 16);
    v11 = sub_1ABF23EC4();
    v12 = MEMORY[0x1AC5A9330](v11);
    v14 = v13;

    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      if (v8)
      {
        v16 = v8;
      }

      else
      {
        v16 = MEMORY[0x1E69E7CC0];
      }

      v26[0] = v24;
      v26[1] = v23;
      v27 = v10;
      v28 = (v10 | (v9 << 16)) >> 16;

      v17 = v29;
      v18 = sub_1ABB34B9C(v12, v14, v16, v26, a3 & 1, a4 & 1, a5);
      if (!v5)
      {
        v17 = v18;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v17 = 0x80000001ABF87840;
    v19 = sub_1ABB32C5C();
    v20 = sub_1ABA7BD00(&type metadata for EntityResolutionError, v19);
    *v21 = 0xD00000000000001BLL;
    v21[1] = 0x80000001ABF87840;
    sub_1ABA7BE50(v20, v21);
  }

  return v17;
}

void *sub_1ABB34B9C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v9 = v8;
  v10 = v7;
  v125 = a3;
  v126 = a7;
  v133 = a5;
  v143 = a2;
  v135 = a1;
  v124 = *v10;
  v13 = sub_1ABAD219C(&qword_1EB4D3030, &unk_1ABF3A960);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v136 = &v120 - v14;
  v15 = sub_1ABF22384();
  v138 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v137 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v142 = &v120 - v18;
  v19 = sub_1ABAD219C(&qword_1EB4D3038, &unk_1ABF3A870);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v134 = (&v120 - v20);
  v21 = sub_1ABF220F4();
  MEMORY[0x1EEE9AC00](v21 - 8);
  v132 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a4 + 8);
  *&v139 = *a4;
  *(&v139 + 1) = v23;
  v24 = *(a4 + 24);
  v140 = *(a4 + 16);
  v25 = *(a4 + 34);
  v26 = *(a4 + 32);
  v27 = v10 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_aliasTable;
  v28 = type metadata accessor for SearchableViewDatabaseTable(0);
  v29 = *(v28 + 36);
  v141 = v27;
  v30 = &v27[v29];
  v31 = *v30;
  v32 = v30[1];
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v33)
  {
    v36 = sub_1ABB32C5C();
    v37 = sub_1ABA7BD00(&type metadata for EntityResolutionError, v36);
    *v38 = 0xD00000000000002CLL;
    v38[1] = 0x80000001ABF87A90;
    sub_1ABA7BE50(v37, v38);
    return v24;
  }

  v127 = v15;
  v34 = v26 | (v25 << 16);
  p_cache = (&OBJC_METACLASS____TtC20IntelligencePlatform3Add + 16);
  v130 = v28;
  ObjectType = v8;
  if (BYTE2(v34) == 255)
  {
    sub_1ABA7EE3C();
LABEL_16:
    v140 = v32;
    if (p_cache[355] != -1)
    {
      goto LABEL_47;
    }

    while (1)
    {
      v54 = sub_1ABF237F4();
      v55 = sub_1ABA7AA24(v54, qword_1ED871B20);

      *(&v139 + 1) = v55;
      v56 = sub_1ABF237D4();
      v57 = sub_1ABF24644();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *&v144 = swift_slowAlloc();
        *v58 = 136315394;
        v59 = sub_1ABA7D20C();
        *(v58 + 4) = sub_1ABADD6D8(v59, v60, v61);
        *(v58 + 12) = 2080;
        v62 = sub_1ABB389B8(*(v10 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_searchPattern));
        v64 = sub_1ABADD6D8(v62, v63, &v144);

        *(v58 + 14) = v64;
        _os_log_impl(&dword_1ABA78000, v56, v57, "ECR text cangen: FTS search for column(%s) and pattern(%s", v58, 0x16u);
        swift_arrayDestroy();
        v9 = ObjectType;
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }

      v66 = v141;
      if (a6)
      {
        v141 = 0;
        v67 = 0;
      }

      else
      {
        v68 = v141[3];
        *&v144 = v141[2];
        *(&v144 + 1) = v68;

        MEMORY[0x1AC5A9410](46, 0xE100000000000000);
        MEMORY[0x1AC5A9410](0xD000000000000017, 0x80000001ABF87A70);
        v65 = MEMORY[0x1AC5A9410](0x39392E30203E20, 0xE700000000000000);
        v67 = *(&v144 + 1);
        v141 = v144;
      }

      v69 = *(v10 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_searchPattern);
      *&v139 = *(v10 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_searchMode);
      v70 = *(v10 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_searchMode + 8);
      *&v144 = 0x7361696C61;
      *(&v144 + 1) = 0xE500000000000000;
      MEMORY[0x1EEE9AC00](v65);
      *(&v120 - 2) = &v144;
      if (!sub_1ABB2F764())
      {
        break;
      }

      v132 = v66[1];
      ObjectType = swift_getObjectType();
      v134 = &v120;
      MEMORY[0x1EEE9AC00](ObjectType);
      v71 = v143;
      *(&v120 - 16) = v135;
      *(&v120 - 15) = v71;
      *(&v120 - 112) = v69;
      *(&v120 - 13) = v66;
      *(&v120 - 96) = v133 & 1;
      *(&v120 - 11) = 0x7361696C61;
      v72 = v139;
      *(&v120 - 10) = 0xE500000000000000;
      *(&v120 - 9) = v72;
      *(&v120 - 64) = v70;
      v73 = v129;
      *(&v120 - 7) = v123;
      *(&v120 - 6) = v73;
      v74 = v140;
      *(&v120 - 5) = v128;
      *(&v120 - 4) = v74;
      *(&v120 - 3) = v141;
      *(&v120 - 2) = v67;
      sub_1ABAD219C(&qword_1EB4D3040, &unk_1ABF3A880);
      sub_1ABF22464();
      if (v9)
      {

        v75 = v127;
        goto LABEL_26;
      }

      v111 = v144;
      *&v144 = sub_1ABF239C4();
      v112 = sub_1ABAAB7C8(v111);
      v113 = 0;
      LOBYTE(a6) = v111 & 0xF8;
      while (1)
      {
        if (v112 == v113)
        {
          v115 = v144;
          *&v144 = MEMORY[0x1E69E7CD0];
          v116 = v125;

          sub_1ABE8B0FC();
          v118 = v117;
          v119 = v126;
          swift_unknownObjectRetain();

          v24 = sub_1ABB34738(v111, v116, v118, v10, &v144, v115, v119, v124);

          return v24;
        }

        if ((v111 & 0xC000000000000001) != 0)
        {
          v114 = MEMORY[0x1AC5AA170](v113, v111);
        }

        else
        {
          if (v113 >= *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v114 = *(v111 + 8 * v113 + 32);
        }

        if (__OFADD__(v113, 1))
        {
          break;
        }

        v148[0] = v114;
        sub_1ABB35A8C(&v144, v148);

        ++v113;
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    sub_1ABF22364();
    *&v144 = 0;
    *(&v144 + 1) = 0xE000000000000000;
    sub_1ABF24AB4();
    MEMORY[0x1AC5A9410](0xD00000000000003ELL, 0x80000001ABF87860);
    MEMORY[0x1AC5A9410](v66[2], v66[3]);
    MEMORY[0x1AC5A9410](32, 0xE100000000000000);
    v76 = sub_1ABA7D20C();
    MEMORY[0x1AC5A9410](v76);
    v77 = sub_1ABF22854();
    sub_1ABA7B9B4(v134, 1, 1, v77);
    v78 = sub_1ABB3723C();
    v75 = v127;
    v9 = sub_1ABA7BD00(v127, v78);
    sub_1ABF22344();
    swift_willThrow();
LABEL_26:
    *&v144 = v9;
    v79 = v9;
    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    v80 = v136;
    v81 = swift_dynamicCast();
    v83 = v137;
    v82 = v138;
    v84 = v142;
    v24 = v143;
    if (v81)
    {
      sub_1ABA7B9B4(v80, 0, 1, v75);
      (*(v82 + 32))(v84, v80, v75);
      (*(v82 + 16))(v83, v84, v75);
      v85 = sub_1ABF237D4();
      v86 = sub_1ABF24664();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        LODWORD(v141) = v86;
        v143 = v88;
        *&v144 = v88;
        *v87 = 136315138;
        v140 = sub_1ABF22354();
        v90 = v89;
        v91 = *(v82 + 8);
        v91(v83, v75);
        v92 = sub_1ABADD6D8(v140, v90, &v144);

        *(v87 + 4) = v92;
        _os_log_impl(&dword_1ABA78000, v85, v141, "DatabaseError: %s", v87, 0xCu);
        v24 = v143;
        sub_1ABA84B54(v143);
        sub_1ABA7BC34();
        sub_1ABA7BC34();

        v91(v142, v75);
      }

      else
      {

        v103 = *(v82 + 8);
        v103(v83, v75);
        v103(v84, v75);
      }
    }

    else
    {
      sub_1ABA7B9B4(v80, 1, 1, v75);
      sub_1ABA925A4(v80, &qword_1EB4D3030, &unk_1ABF3A960);
      v93 = v9;

      v94 = sub_1ABF237D4();
      v95 = sub_1ABF24664();

      if (os_log_type_enabled(v94, v95))
      {
        v96 = v24;
        v24 = swift_slowAlloc();
        *&v144 = swift_slowAlloc();
        *v24 = 136315650;
        v97 = sub_1ABA7D20C();
        *(v24 + 4) = sub_1ABADD6D8(v97, v98, v99);
        *(v24 + 6) = 2080;
        *(v24 + 14) = sub_1ABADD6D8(v135, v96, &v144);
        *(v24 + 11) = 2080;
        swift_getErrorValue();
        v100 = sub_1ABF25154();
        v102 = sub_1ABADD6D8(v100, v101, &v144);

        v24[3] = v102;
        _os_log_impl(&dword_1ABA78000, v94, v95, "Unexpected error while call searchFTS(columnName: %s, query: %s). Error: %s", v24, 0x20u);
        swift_arrayDestroy();
        sub_1ABA7BC34();
        sub_1ABA7BC34();
      }
    }

    swift_getErrorValue();
    v104 = sub_1ABF25154();
    v106 = v105;
    v107 = sub_1ABB32C5C();
    v108 = sub_1ABA7BD00(&type metadata for EntityResolutionError, v107);
    *v109 = v104;
    v109[1] = v106;
    sub_1ABA7BE50(v108, v109);

    return v24;
  }

  v128 = v31;
  v122 = a6;
  if (_Records_GDEntityClass_records)
  {
    v39 = *(_Records_GDEntityClass_records + 0x278);
    v40 = *(_Records_GDEntityClass_records + 0x280);
    v41 = *(_Records_GDEntityClass_records + 0x270);
    v121 = v24;
    sub_1ABB37294(v139, *(&v139 + 1), v140, v24, v34, SBYTE2(v34));
    sub_1ABA8882C(v41, v39, v40, &v144);
    v156[0] = v144;
    v156[1] = v145;
    v157 = v146;
    sub_1ABAD538C();
    sub_1ABA88934(v156);
    if (*(&v149 + 1))
    {
      v152[0] = v149;
      v152[1] = v150;
      v153 = v151;
      v42 = v139;
      v144 = v139;
      v43 = v140;
      v44 = v121;
      *&v145 = v140;
      *(&v145 + 1) = v121;
      v146 = v34;
      v147 = BYTE2(v34);
      v123 = sub_1ABB38A78(v152, v128, v32);
      v129 = v45;
      v154 = v152[0];
      sub_1ABAFEEA0(&v154);
      swift_unknownObjectRelease();
      v155 = v153;
      sub_1ABAFEEA0(&v155);
      sub_1ABB37314(v42, *(&v42 + 1), v43, v44, v34);

LABEL_15:
      v9 = ObjectType;
      LOBYTE(a6) = v122;
      p_cache = &OBJC_METACLASS____TtC20IntelligencePlatform3Add.cache;
      goto LABEL_16;
    }

    LODWORD(v129) = v34;
    p_cache = &OBJC_METACLASS____TtC20IntelligencePlatform3Add.cache;
    v9 = ObjectType;
    if (qword_1ED871B18 != -1)
    {
      sub_1ABA7BE6C(&qword_1ED871B18);
    }

    v46 = sub_1ABF237F4();
    sub_1ABA7AA24(v46, qword_1ED871B20);
    v47 = sub_1ABF237D4();
    v32 = sub_1ABF24664();
    v48 = os_log_type_enabled(v47, v32);
    v49 = v24;
    v50 = v140;
    if (!v48)
    {
      sub_1ABB37314(v139, *(&v139 + 1), v140, v24, v129);

      sub_1ABA7EE3C();
      LOBYTE(a6) = v122;
      goto LABEL_16;
    }

    v51 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v148[0] = v128;
    *v51 = 136315138;
    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), &v144);
      v52 = v145;

      v53 = sub_1ABADD6D8(v52, *(&v52 + 1), v148);

      *(v51 + 4) = v53;
      _os_log_impl(&dword_1ABA78000, v47, v32, "ECR text cangen: Can't find subgraph table for entity type %s. Constraint ignored.", v51, 0xCu);
      sub_1ABA84B54(v128);
      sub_1ABA7BC34();
      sub_1ABA7BC34();
      sub_1ABB37314(v139, *(&v139 + 1), v50, v49, v129);

      sub_1ABA7EE3C();
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1ABB35A8C(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1ABF223D4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SearchableViewDatabaseTable(0);
  sub_1ABB33C40();
  if (v2)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    static EntityIdentifier.fromDatabaseValue(_:)(v7, &v23);
    (*(v5 + 8))(v7, v4);
    if (v24)
    {
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v8 = sub_1ABF237F4();
      sub_1ABA7AA24(v8, qword_1ED871B20);
      v9 = sub_1ABF237D4();
      v10 = sub_1ABF24664();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1ABA78000, v9, v10, "Could not make entity identifier from subject id", v11, 2u);
        MEMORY[0x1AC5AB8B0](v11, -1, -1);
      }
    }

    else
    {
      v12 = v23;
      v13 = sub_1ABAD542C(v23, *a1);
      v14 = MEMORY[0x1E69E7CC0];
      if (v13)
      {
        v14 = v13;
      }

      v23 = v14;

      MEMORY[0x1AC5A9710](v15);
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1ABF24134();
      }

      sub_1ABF24184();
      v16 = v23;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v25 = *a1;
      sub_1ABAFB1D8(v16, v12, isUniquelyReferenced_nonNull_native, v18, v19, v20, v21, v22, v23, v24);
      *a1 = v25;
    }
  }
}

void *sub_1ABB35D30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void **a5@<X4>, void (*a6)(void, void)@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v126 = a7;
  v129 = a5;
  v141 = a3;
  v14 = sub_1ABAD219C(&qword_1EB4D3DA0, &qword_1ABF406C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v127 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v134 = &v123 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v137 = &v123 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v123 - v21;
  v23 = sub_1ABF223D4();
  v139 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v130 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v133 = &v123 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v138 = &v123 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v143 = &v123 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v123 - v32;
  v34 = *(a2 + 16);
  v142 = *a1;
  v128 = a4;
  if (v34)
  {
    v136 = a6;
    v140 = a2;
    v131 = a8;
    sub_1ABB32E40();
    if (v8)
    {
      goto LABEL_86;
    }

    v37 = sub_1ABB7F054(v35, v36);
    v39 = v38;
    v41 = v40;
    v43 = v42;

    if (v43)
    {
      if (!_Records_GDEntityClass_records)
      {
        __break(1u);
        while (1)
        {
LABEL_86:
          swift_unexpectedError();
          __break(1u);
        }
      }

      v44 = *(_Records_GDEntityClass_records + 8);
      v45 = *(_Records_GDEntityClass_records + 8 + 8);
      v46 = *_Records_GDEntityClass_records;
    }

    else
    {
      v46 = v37;
      v44 = v39;
      v45 = v41;
    }

    sub_1ABA8882C(v46, v44, v45, __src);
    v145[0] = __src[0];
    v145[1] = __src[1];
    v145[2] = __src[2];
    v145[3] = __src[3];
    v146 = __src[4];
    sub_1ABAA6788(v145, v141, v47, v48, v49, v50, v51, v52, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, __src[0]);
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      a8 = v131;
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v74 = sub_1ABF237F4();
      sub_1ABA7AA24(v74, qword_1ED871B20);

      v75 = sub_1ABF237D4();
      v76 = sub_1ABF24644();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v147 = v143;
        *v77 = 136315394;
        sub_1ABB32E40();
        v79 = v78;
        v81 = v80;

        v82 = sub_1ABB7F054(v79, v81);
        v84 = v83;
        v86 = v85;
        v88 = v87;

        if (v88)
        {
          v89 = 0x80000001ABF87AC0;
          v90 = 0xD000000000000014;
        }

        else
        {
          sub_1ABA8882C(v82, v84, v86, __src);
          v90 = __src[2];
          v89 = __src[3];
        }

        a8 = v131;
        v100 = sub_1ABADD6D8(v90, v89, &v147);

        *(v77 + 4) = v100;
        *(v77 + 12) = 2080;
        v101 = MEMORY[0x1AC5A9750](v140, &type metadata for EntityClass);
        v103 = sub_1ABADD6D8(v101, v102, &v147);

        *(v77 + 14) = v103;
        _os_log_impl(&dword_1ABA78000, v75, v76, "Filtering result: %s. Class set: %s", v77, 0x16u);
        v104 = v143;
        swift_arrayDestroy();
        MEMORY[0x1AC5AB8B0](v104, -1, -1);
        MEMORY[0x1AC5AB8B0](v77, -1, -1);
      }

      else
      {
      }

      goto LABEL_64;
    }

    a8 = v131;
    a6 = v136;
  }

  type metadata accessor for SearchableViewDatabaseTable(0);
  sub_1ABB33C40();
  if (v8)
  {
    goto LABEL_86;
  }

  static EntityIdentifier.fromDatabaseValue(_:)(v33, __src);
  v136 = v139[1];
  v135 = v139 + 1;
  v136(v33, v23);
  if (__src[1] & 1) != 0 || (v55 = __src[0], (sub_1ABB134F0(__src[0], *v129)) || (v56 = sub_1ABAD542C(v55, a6)) == 0)
  {
LABEL_64:
    sub_1ABB373C0(__src);
    v105 = a8;
    return memcpy(v105, __src, 0x88uLL);
  }

  v57 = v56;
  v124 = v55;
  v131 = a8;
  v58 = sub_1ABAAB7C8(v56);
  v59 = 0;
  v141 = v57 & 0xC000000000000001;
  v140 = v57 & 0xFFFFFFFFFFFFFF8;
  v139 += 4;
  v125 = 0x80000001ABF87790;
  v132 = v58;
  while (v58 != v59)
  {
    if (v141)
    {
      MEMORY[0x1AC5AA170](v59, v57);
    }

    else
    {
      if (v59 >= *(v140 + 16))
      {
        goto LABEL_83;
      }
    }

    if (__OFADD__(v59, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:

      sub_1ABB373C0(__src);
      goto LABEL_81;
    }

    sub_1ABB37138(v22);
    if (sub_1ABA7E1E0(v22, 1, v23) == 1)
    {

      sub_1ABA925A4(v22, &qword_1EB4D3DA0, &qword_1ABF406C0);
      goto LABEL_31;
    }

    v60 = v57;
    v61 = *v139;
    (*v139)(v143, v22, v23);
    v62 = v137;
    sub_1ABB37138(v137);
    if (sub_1ABA7E1E0(v62, 1, v23) == 1)
    {
      v136(v143, v23);

LABEL_28:
      sub_1ABA925A4(v62, &qword_1EB4D3DA0, &qword_1ABF406C0);
      goto LABEL_29;
    }

    v61(v138, v62, v23);
    v62 = v134;
    sub_1ABB37138(v134);
    if (sub_1ABA7E1E0(v62, 1, v23) == 1)
    {

      v63 = v136;
      v136(v138, v23);
LABEL_27:
      v63(v143, v23);
      goto LABEL_28;
    }

    v61(v133, v62, v23);
    v62 = v127;
    sub_1ABB37138(v127);
    if (sub_1ABA7E1E0(v62, 1, v23) == 1)
    {

      v63 = v136;
      v136(v133, v23);
      v63(v138, v23);
      goto LABEL_27;
    }

    v61(v130, v62, v23);
    v64 = sub_1ABF23CC4();
    v57 = v60;
    if (v65)
    {
      if (v64 == 0xD000000000000012 && v65 == v125)
      {

        goto LABEL_47;
      }

      v67 = sub_1ABF25054();

      if (v67)
      {
        goto LABEL_44;
      }
    }

    v68 = sub_1ABF23CC4();
    if (!v69)
    {
      goto LABEL_44;
    }

    if (v68 == 0xD000000000000012 && v69 == v125)
    {
    }

    else
    {
      HIDWORD(v123) = sub_1ABF25054();

      if ((v123 & 0x100000000) == 0)
      {
LABEL_44:

LABEL_47:
        v71 = v136;
        v136(v130, v23);
        v71(v133, v23);
        v71(v138, v23);
        v71(v143, v23);
        goto LABEL_30;
      }
    }

    v72 = v133;
    HIDWORD(v123) = sub_1ABF223C4();

    v73 = v136;
    v136(v130, v23);
    v73(v72, v23);
    v73(v138, v23);
    v73(v143, v23);
    if ((v123 & 0x100000000) != 0)
    {
      goto LABEL_84;
    }

LABEL_29:
    v57 = v60;
LABEL_30:
    v58 = v132;
LABEL_31:
    ++v59;
  }

  v91 = v124;
  sub_1ABB18C18(__src, v124);
  v92 = v126;
  if (v126)
  {
    __src[0] = v91;
    swift_unknownObjectRetain();
    sub_1ABF24FF4();
    v93 = sub_1ABF23BD4();

    v94 = [v92 personForIdentifier_];

    if (v94)
    {
      v95 = [v94 names];
      v143 = sub_1ABF240D4();

      v96 = [v94 contactIdentifiers];
      v141 = sub_1ABF240D4();

      v97 = [v94 visualIdentifiers];
      v140 = sub_1ABF240D4();

      v98 = [v94 emails];
      v99 = sub_1ABF240D4();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v99 = MEMORY[0x1E69E7CC0];
      v140 = MEMORY[0x1E69E7CC0];
      v141 = MEMORY[0x1E69E7CC0];
      v143 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v99 = MEMORY[0x1E69E7CC0];
    v140 = MEMORY[0x1E69E7CC0];
    v141 = MEMORY[0x1E69E7CC0];
    v143 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABB33054();
  v108 = v107;
  v109 = *(v128 + 16);
  v110 = sub_1ABB36D74(0x745F6C616E676973, 0xEB00000000657079);
  v112 = v111;
  v113 = sub_1ABB36D74(0x7361696C61, 0xE500000000000000);
  v115 = v114;
  sub_1ABB33054();
  v117 = v116;
  v118 = -v108;
  if (v112)
  {
    v119 = v110;
  }

  else
  {
    v119 = 0;
  }

  if (v112)
  {
    v120 = v112;
  }

  else
  {
    v120 = 0xE000000000000000;
  }

  if (v119 == 0xD000000000000012 && v125 == v120)
  {
    v122 = 1;
  }

  else
  {
    v122 = sub_1ABF25054();
  }

  __src[0] = v124;
  __src[1] = v110;
  __src[2] = v112;
  *&__src[3] = v118;
  LOBYTE(__src[4]) = v109;
  memset(&__src[5], 0, 32);
  __src[9] = v113;
  __src[10] = v115;
  __src[11] = v117;
  LOBYTE(__src[12]) = v122 & 1;
  __src[13] = v143;
  __src[14] = v141;
  __src[15] = v140;
  __src[16] = v99;
  nullsub_1();
LABEL_81:
  v105 = v131;
  return memcpy(v105, __src, 0x88uLL);
}

uint64_t sub_1ABB36D74(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF22B74();
  if (v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = sub_1ABF22B54();
  if (!v5)
  {
    sub_1ABF22B64();
    return v7;
  }

  if (v4 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    result = sub_1ABA93260(v5, "GRDBInternal/Row.swift");
    __break(1u);
    return result;
  }

  if (sqlite3_column_type(v5, v4) == 5)
  {
    return 0;
  }

  return sub_1ABF23CB4();
}

sqlite3_stmt *sub_1ABB36E48@<X0>(sqlite3_stmt **a3@<X8>)
{
  v4 = sub_1ABF22B74();
  if (v5)
  {
    goto LABEL_6;
  }

  v6 = v4;
  result = sub_1ABF22B54();
  if (!result)
  {
    return sub_1ABF22B64();
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v6 <= 0x7FFFFFFF)
  {
    if (sqlite3_column_type(result, v6) != 5)
    {
      result = sub_1ABF21D54();
      goto LABEL_7;
    }

LABEL_6:
    result = 0;
    v8 = 0xF000000000000000;
LABEL_7:
    *a3 = result;
    a3[1] = v8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB36F1C()
{
  sub_1ABB34454(v0 + OBJC_IVAR____TtC20IntelligencePlatform36TextMatchingSearchCandidateRetriever_aliasTable);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TextMatchingSearchCandidateRetriever(uint64_t a1)
{
  result = qword_1ED86E758;
  if (!qword_1ED86E758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1ABB36FE4(uint64_t a1)
{
  result = type metadata accessor for SearchableViewDatabaseTable(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1ABB370C4@<X0>(uint64_t a3@<X8>)
{
  result = sub_1ABF22B74();
  if (v5)
  {
    *a3 = 0;
    *(a3 + 8) = 1;
  }

  else
  {
    sub_1ABAA98EC();
    return sub_1ABF229F4();
  }

  return result;
}

uint64_t sub_1ABB37138@<X0>(uint64_t a3@<X8>)
{
  sub_1ABF22B74();
  if (v4)
  {
    v5 = sub_1ABF223D4();
    return sub_1ABA7B9B4(a3, 1, 1, v5);
  }

  else
  {
    sub_1ABF223D4();
    return sub_1ABF229F4();
  }
}

uint64_t sub_1ABB371C0(uint64_t a1, uint64_t a2)
{
  sub_1ABF22B74();
  if (v3)
  {
    return 0;
  }

  sub_1ABB373C8();
  result = sub_1ABF229F4();
  if (!v2)
  {
    return v5;
  }

  return result;
}

unint64_t sub_1ABB3723C()
{
  result = qword_1EB4DB310;
  if (!qword_1EB4DB310)
  {
    sub_1ABF22384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4DB310);
  }

  return result;
}

uint64_t sub_1ABB37294(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:

      goto LABEL_6;
    case 1:
    case 2:
LABEL_6:

      break;
    case 3:
    case 4:

      break;
    default:
      return v7;
  }

  return v7;
}

uint64_t sub_1ABB37314(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_1ABB37328(result, a2, a3, a4, a5, SBYTE2(a5));
  }

  return result;
}

uint64_t sub_1ABB37328(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  switch(a6)
  {
    case 0:

      goto LABEL_6;
    case 1:
    case 2:
LABEL_6:

      break;
    case 3:
    case 4:

      break;
    default:
      return v7;
  }

  return v7;
}

uint64_t sub_1ABB373A8(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1ABB373C8()
{
  result = qword_1ED86B920;
  if (!qword_1ED86B920)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED86B920);
  }

  return result;
}

unint64_t sub_1ABB3740C(void *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1AC0, &qword_1ABF33C50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v22 - v3;
  if (a1[1])
  {
    v5 = sub_1ABF23EC4();
    v6 = MEMORY[0x1AC5A9330](v5);
    v8 = v7;

    v9 = [objc_opt_self() service];
    type metadata accessor for UniversalEmbeddingModelClient();
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v11 = dispatch_semaphore_create(0);
    type metadata accessor for VectorSearchCandidateRetriever.EmbeddingContainer();
    v12 = swift_allocObject();
    *(v12 + 16) = 0;
    v13 = sub_1ABF24294();
    sub_1ABA7B9B4(v4, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v11;
    v14[5] = v10;
    v14[6] = v6;
    v14[7] = v8;
    v14[8] = v12;
    v15 = v11;

    sub_1ABD403AC(0, 0, v4, &unk_1ABF3AA78, v14);

    sub_1ABF24734();
    v16 = *(v12 + 16);
    if (v16)
    {
    }

    else
    {
      sub_1ABB32C5C();
      sub_1ABA7D104();
      v19 = swift_allocError();
      *v20 = xmmword_1ABF3A980;
      sub_1ABA8F000(v19, v20);
      swift_willThrow();
    }
  }

  else
  {
    v16 = 0x80000001ABF87840;
    sub_1ABB32C5C();
    sub_1ABA7D104();
    v17 = swift_allocError();
    *v18 = 0xD00000000000001BLL;
    v18[1] = 0x80000001ABF87840;
    sub_1ABA8F000(v17, v18);
    swift_willThrow();
  }

  return v16;
}

uint64_t sub_1ABB37674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1ABB3769C, 0, 0);
}

uint64_t sub_1ABB3769C()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_1ABF34740;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;

  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_1ABB37784;

  return UniversalEmbeddingModelClient.embed(items:)(v3);
}

uint64_t sub_1ABB37784(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_1ABB37998;
  }

  else
  {

    v4 = sub_1ABB378A0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1ABB378A0()
{
  v1 = v0[9];
  if (*(v1 + 16))
  {
    v2 = v0[6];
    v3 = *(v1 + 32);

    *(v2 + 16) = v3;
  }

  else
  {

    sub_1ABB32C5C();
    sub_1ABA7D104();
    v5 = swift_allocError();
    *v6 = xmmword_1ABF3A980;
    sub_1ABA8F000(v5, v6);
    swift_willThrow();
  }

  sub_1ABF24744();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1ABB37998()
{

  sub_1ABF24744();
  v1 = *(v0 + 8);

  return v1();
}

void *sub_1ABB37A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(_OWORD *), unint64_t a7)
{
  v9 = v7;
  v14 = sub_1ABF23104();
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 34) != 255)
  {
    v26 = "Candidate constraints not supported with vector search";
LABEL_7:
    a7 = (v26 - 32) | 0x8000000000000000;
    sub_1ABB32C5C();
    sub_1ABA7D104();
    v27 = swift_allocError();
    v29 = 0xD000000000000036;
LABEL_9:
    *v28 = v29;
    v28[1] = a7;
    sub_1ABA8F000(v27, v28);
    swift_willThrow();
    return a7;
  }

  v18 = *(a1 + 8);
  if (!v18)
  {
    a7 = 0x80000001ABF87840;
    sub_1ABB32C5C();
    sub_1ABA7D104();
    v27 = swift_allocError();
    v29 = 0xD00000000000001BLL;
    goto LABEL_9;
  }

  v47 = v15;
  *&v50[0] = *a1;
  *(&v50[0] + 1) = v18;
  v19 = *(a1 + 32);
  v50[1] = *(a1 + 16);
  v50[2] = v19;
  v50[3] = *(a1 + 48);
  *(&v50[3] + 9) = *(a1 + 57);
  a6(v50);
  if (v8)
  {
    return a7;
  }

  if (*(v9 + 40) != 1)
  {

    v26 = "Non Top-k search mode not supported via vector search.";
    goto LABEL_7;
  }

  v20 = sub_1ABF24104();
  v22 = v21;

  v23 = v20;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = sub_1ABF23004();
  v31 = v25;
  v41 = v22;
  v32 = *(v25 + 16);
  if (!v32)
  {

    sub_1ABA96210(v23, v41);
    return MEMORY[0x1E69E7CC0];
  }

  v51 = v24;
  result = sub_1ABADDF2C(0, v32, 0);
  v33 = 0;
  v34 = v47;
  v45 = v31 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
  a7 = v51;
  v43 = v31;
  v44 = v47 + 16;
  v46 = v47 + 8;
  v42 = v32 - 1;
  while (v33 < *(v31 + 16))
  {
    (*(v34 + 16))(v17, v45 + *(v34 + 72) * v33, v14);
    sub_1ABB37DF4(&v49, v50);
    v35 = v23;
    v36 = sub_1ABA7EE4C();
    v37(v36);
    memcpy(v48, v50, sizeof(v48));
    v51 = a7;
    v39 = *(a7 + 16);
    v38 = *(a7 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_1ABADDF2C((v38 > 1), v39 + 1, 1);
      a7 = v51;
    }

    *(a7 + 16) = v39 + 1;
    result = memcpy((a7 + 136 * v39 + 32), v48, 0x88uLL);
    if (v42 == v33)
    {
      sub_1ABA96210(v35, v41);

      return a7;
    }

    ++v33;
    v34 = v47;
    v23 = v35;
    v31 = v43;
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABB37DF4@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = sub_1ABF230A4();
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v53 - v8;
  v9 = sub_1ABF230F4();
  if (v10 >> 60 == 15)
  {
    goto LABEL_17;
  }

  v11 = v9;
  v12 = v10;
  v55 = v4;
  v56 = a2;
  v13 = objc_opt_self();
  v14 = sub_1ABF21DB4();
  v62[0] = 0;
  v15 = v11;
  v16 = [v13 JSONObjectWithData:v14 options:0 error:v62];

  if (!v16)
  {
    v44 = v62[0];
    v45 = sub_1ABF21BE4();

    swift_willThrow();
    sub_1ABAC9310(v15, v12);

LABEL_17:
    sub_1ABB32C5C();
    v46 = swift_allocError();
    *v47 = 0xD000000000000017;
    *(v47 + 8) = 0x80000001ABF87C30;
    *(v47 + 16) = 4;
    result = swift_willThrow();
    *a1 = v46;
    return result;
  }

  v57 = v15;
  v17 = v62[0];
  sub_1ABF248F4();
  swift_unknownObjectRelease();
  sub_1ABAD219C(&qword_1EB4D3080, &unk_1ABF47A00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    sub_1ABAC9310(v57, v12);
    goto LABEL_17;
  }

  v18 = v60;
  if (!*(v60 + 16) || (, sub_1ABA94FC8(0x7463656A627573, 0xE700000000000000, v19, v20, v21, v22, v23, v24, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0]), v26 = v25, , (v26 & 1) == 0) || !*(v18 + 16) || (, sub_1ABA94FC8(0x7463656A626FLL, 0xE600000000000000, v27, v28, v29, v30, v31, v32, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62[0]), v34 = v33, , (v34 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_1ABAD5444(v62, 0x7463656A627573, 0xE700000000000000, v18);
  if (!v63)
  {
    sub_1ABAC9310(v57, v12);

LABEL_21:
    sub_1ABB384B8(v62);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1ABAC9310(v57, v12);

    goto LABEL_17;
  }

  v35 = v60;
  sub_1ABAD5444(v62, 0x7463656A626FLL, 0xE600000000000000, v18);

  if (!v63)
  {
    sub_1ABAC9310(v57, v12);
    goto LABEL_21;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v36 = v35;
  v53 = v61;
  v54 = v60;
  sub_1ABF230D4();
  v38 = v37;
  v39 = v58;
  sub_1ABF230E4();
  v40 = v59;
  v41 = v55;
  (*(v59 + 16))(v6, v39, v55);
  v42 = (*(v40 + 88))(v6, v41);
  if (v42 == *MEMORY[0x1E69DF528])
  {
    v43 = 0;
LABEL_26:
    (*(v40 + 8))(v39, v41);
    v49 = sub_1ABF25054();
    result = sub_1ABAC9310(v57, v12);
    v50 = v56;
    *(v56 + 8) = 0;
    *(v50 + 16) = 0;
    *v50 = v36;
    *(v50 + 24) = v38;
    *(v50 + 32) = v43;
    *(v50 + 33) = v62[0];
    *(v50 + 36) = *(v62 + 3);
    *(v50 + 40) = 0u;
    *(v50 + 56) = 0u;
    v51 = v53;
    *(v50 + 72) = v54;
    *(v50 + 80) = v51;
    *(v50 + 88) = 0x3FF0000000000000;
    *(v50 + 96) = v49 & 1;
    *(v50 + 97) = v60;
    *(v50 + 100) = *(&v60 + 3);
    v52 = MEMORY[0x1E69E7CC0];
    *(v50 + 104) = MEMORY[0x1E69E7CC0];
    *(v50 + 112) = v52;
    *(v50 + 120) = v52;
    *(v50 + 128) = v52;
    return result;
  }

  if (v42 == *MEMORY[0x1E69DF518])
  {
    v43 = 2;
    goto LABEL_26;
  }

  if (v42 == *MEMORY[0x1E69DF520])
  {
    v43 = 1;
    goto LABEL_26;
  }

  result = sub_1ABF24CD4();
  __break(1u);
  return result;
}

uint64_t sub_1ABB383B0()
{

  return v0;
}

uint64_t sub_1ABB383D8()
{
  sub_1ABB383B0();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB3845C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB384B8(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D3000, &unk_1ABF3AA60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABB38520(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1ABB385FC;

  return sub_1ABB37674(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1ABB385FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1ABB386F0(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t, void *))
{
  v3 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v34 = MEMORY[0x1E69E7CC0];
    sub_1ABADDFDC(0, v3, 0);
    v29 = v34;
    result = sub_1ABAB0E08();
    v6 = result;
    v8 = v7;
    v9 = 0;
    v10 = a1 + 64;
    v25 = v7;
    v26 = v3;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v10 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_24;
      }

      v28 = v5;
      v12 = *(*(a1 + 48) + 8 * v6);
      v13 = (*(a1 + 56) + 136 * v6);
      memcpy(__dst, v13, sizeof(__dst));
      memcpy(&__src[1], v13, 0x88uLL);
      __src[0] = v12;
      sub_1ABB3E0C0(__dst, v33);
      a2(v33, v12, &__src[1]);
      memcpy(v32, __src, sizeof(v32));
      sub_1ABAB480C(v32, &qword_1EB4D30F8, &qword_1ABF3AC78);
      v14 = v29;
      v34 = v29;
      v16 = *(v29 + 16);
      v15 = *(v29 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1ABADDFDC((v15 > 1), v16 + 1, 1);
        v14 = v34;
      }

      *(v14 + 16) = v16 + 1;
      v29 = v14;
      result = memcpy((v14 + 328 * v16 + 32), v33, 0x145uLL);
      v17 = 1 << *(a1 + 32);
      if (v6 >= v17)
      {
        goto LABEL_25;
      }

      v10 = a1 + 64;
      v18 = *(a1 + 64 + 8 * v11);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v11 << 6;
        v21 = v11 + 1;
        v22 = (a1 + 72 + 8 * v11);
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1ABAC933C(v6, v8, v28 & 1);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_19;
          }
        }

        result = sub_1ABAC933C(v6, v8, v28 & 1);
      }

LABEL_19:
      v5 = 0;
      ++v9;
      v6 = v17;
      v8 = v25;
      if (v9 == v26)
      {
        return v29;
      }
    }

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
  }

  return result;
}

uint64_t sub_1ABB389B8(char a1)
{
  result = 0x6E656B6F54796E61;
  switch(a1)
  {
    case 1:
      result = 0x786966657270;
      break;
    case 2:
      result = 0x6E656B6F546C6C61;
      break;
    case 3:
      result = 0x69666572506C6C61;
      break;
    case 4:
      result = 0x657361726870;
      break;
    case 5:
      result = 0x6850786966657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB38A78(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  switch(*(v3 + 34))
  {
    case 1:
      sub_1ABA7D220();
      sub_1ABF24AB4();
      sub_1ABA8BECC();
      MEMORY[0x1AC5A9410](a1[4], a1[5]);
      sub_1ABAA5730();
      sub_1ABAA21F0();
      sub_1ABA947E4();
      MEMORY[0x1AC5A9410](*a1, a1[1]);
      sub_1ABA93280();
      sub_1ABF24C54();
      MEMORY[0x1AC5A9410](0x204E4920544F4E20, 0xE900000000000028);
      if (*(v5 + 16))
      {
        sub_1ABA7AC28();
        do
        {
          sub_1ABA82724();
          sub_1ABAA4CE8();
          if (v19)
          {
            sub_1ABADDBD4(v30 > 1, v4, 1);
          }

          sub_1ABAA196C();
        }

        while (!v20);
      }

      goto LABEL_20;
    case 2:
      sub_1ABA7D220();
      sub_1ABF24AB4();
      sub_1ABA8BECC();
      MEMORY[0x1AC5A9410](a1[4], a1[5]);
      sub_1ABAA5730();
      sub_1ABAA21F0();
      sub_1ABA947E4();
      MEMORY[0x1AC5A9410](*a1, a1[1]);
      sub_1ABA93280();
      sub_1ABF24C54();
      MEMORY[0x1AC5A9410](0x28204E4920, 0xE500000000000000);
      if (*(v5 + 16))
      {
        sub_1ABA7AC28();
        do
        {
          sub_1ABA82724();
          sub_1ABAA4CE8();
          if (v19)
          {
            sub_1ABADDBD4(v18 > 1, v4, 1);
          }

          sub_1ABAA196C();
        }

        while (!v20);
      }

LABEL_20:
      sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
      sub_1ABAB47C4(&qword_1ED870668, &unk_1EB4D33D0, &unk_1ABF3A8C0, MEMORY[0x1E69E6310]);
      v31 = sub_1ABF23B54();
      v33 = v32;

      MEMORY[0x1AC5A9410](v31, v33);

      v8 = 41;
      goto LABEL_21;
    case 3:
      v66 = *(v5 + 56);
      v68 = *(v5 + 64);
      v71 = *(v5 + 72);
      v73 = *(v5 + 80);
      LODWORD(v74) = *(v5 + 88);
      HIDWORD(v76) = *(v5 + 90);
      if (*(v5 + 50) >= 3u)
      {
        sub_1ABA7D220();
        sub_1ABF24AB4();

        sub_1ABA815A4();
        sub_1ABAA24EC();
        v51 = sub_1ABA90620();
        v59 = sub_1ABAA3F50(v51, v52, v53, v54, v55, v56, v57, v58, v63, v66, v68, v71, v73, v74, v76, a3);
        MEMORY[0x1AC5A9410](v59);

        sub_1ABAA48AC();
        v29 = v80;
      }

      else
      {
        v21 = sub_1ABA90620();
        v29 = sub_1ABAA3F50(v21, v22, v23, v24, v25, v26, v27, v28, v63, v66, v68, v71, v73, v74, v76, a3);
      }

      if (v77 >= 3)
      {
        sub_1ABA7D220();
        sub_1ABF24AB4();

        sub_1ABA815A4();
        sub_1ABAA24EC();
        sub_1ABA96C04();
        v61 = sub_1ABA7EE60();
        MEMORY[0x1AC5A9410](v61);

        sub_1ABAA48AC();
        v44 = v80;
        v46 = v82;
      }

      else
      {
        sub_1ABA96C04();
        v44 = sub_1ABA7EE60();
        v46 = v60;
      }

      v83 = v29;
      v49 = 0x45535245544E490ALL;
      v50 = 0xEB000000000A5443;
      goto LABEL_32;
    case 4:
      v65 = *(v5 + 56);
      v67 = *(v5 + 64);
      v72 = *(v5 + 72);
      v75 = *(v5 + 80);
      HIDWORD(v76) = *(v5 + 88);
      LODWORD(v69) = *(v5 + 90);
      if (*(v5 + 50) >= 3u)
      {
        sub_1ABA7D220();
        v17 = v34;
        sub_1ABF24AB4();

        v35 = sub_1ABA90620();
        v43 = sub_1ABAA3F50(v35, v36, v37, v38, v39, v40, v41, v42, a2, v65, v67, v69, v72, v75, v76, a3);
        MEMORY[0x1AC5A9410](v43);

        sub_1ABAA48AC();
      }

      else
      {
        v9 = sub_1ABA90620();
        v17 = sub_1ABAA3F50(v9, v10, v11, v12, v13, v14, v15, v16, a2, v65, v67, v69, v72, v75, v76, a3);
      }

      if (v70 >= 3)
      {
        sub_1ABA7D220();
        sub_1ABF24AB4();

        sub_1ABA815A4();
        v81 = v47;
        sub_1ABA96C04();
        v48 = sub_1ABA7EE60();
        MEMORY[0x1AC5A9410](v48);

        sub_1ABAA48AC();
        v44 = v81;
        v46 = 0xEF28204D4F524620;
      }

      else
      {
        sub_1ABA96C04();
        v44 = sub_1ABA7EE60();
        v46 = v45;
      }

      v83 = v17;
      v49 = 0xA4E4F494E550ALL;
      v50 = 0xE700000000000000;
LABEL_32:
      MEMORY[0x1AC5A9410](v49, v50);
      MEMORY[0x1AC5A9410](v44, v46);

      break;
    default:
      v7 = v3[1];
      sub_1ABA7D220();
      sub_1ABF24AB4();
      sub_1ABA8BECC();
      MEMORY[0x1AC5A9410](a1[4], a1[5]);
      sub_1ABAA5730();
      sub_1ABAA21F0();
      sub_1ABA947E4();
      MEMORY[0x1AC5A9410](*a1, a1[1]);
      sub_1ABA93280();
      sub_1ABF24C54();
      MEMORY[0x1AC5A9410](656424224, 0xE400000000000000);

      MEMORY[0x1AC5A9410](v5, v7);

      v8 = 39;
LABEL_21:
      MEMORY[0x1AC5A9410](v8, 0xE100000000000000);
      break;
  }

  return v83;
}

unint64_t sub_1ABB3910C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF24D84();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1ABB39170@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABB3910C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1ABB391A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABB389B8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1ABB39288(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69646465626D65 && a2 == 0xEF68637261655367;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65537369736F6E6BLL && a2 == 0xEC00000068637261;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001ABF7F1A0 == a2;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001ABF87F90 == a2;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000016 && 0x80000001ABF87FB0 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1ABB39444(char a1)
{
  result = 0x6E69646465626D65;
  switch(a1)
  {
    case 1:
      result = 0x65537369736F6E6BLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB39520(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E726574746170 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

void sub_1ABB39598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, unsigned __int8 a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1ABA7BCA8();
  a26 = v28;
  a27 = v29;
  v78 = v27;
  v76 = v30;
  v32 = v31;
  sub_1ABAD219C(&qword_1EB4D3118, &qword_1ABF3AD40);
  sub_1ABA7BB64();
  v74 = v34;
  v75 = v33;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7FBE0();
  v73 = v36;
  sub_1ABAD219C(&qword_1EB4D3120, &qword_1ABF3AD48);
  sub_1ABA7BB64();
  v71 = v38;
  v72 = v37;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABAD219C(&qword_1EB4D3128, &qword_1ABF3AD50);
  sub_1ABA7BB64();
  v69 = v41;
  v70 = v40;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA7FBE0();
  v68 = v43;
  sub_1ABAD219C(&qword_1EB4D3130, &qword_1ABF3AD58);
  sub_1ABA7BB64();
  v66 = v45;
  v67 = v44;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v65 - v47;
  v49 = sub_1ABAD219C(&qword_1EB4D3138, &qword_1ABF3AD60);
  sub_1ABA7BB64();
  v65 = v50;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v65 - v52;
  sub_1ABAD219C(&qword_1EB4D3140, &qword_1ABF3AD68);
  sub_1ABA7BB64();
  v77 = v54;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v55);
  sub_1ABA93E20(v32, v32[3]);
  sub_1ABB3E970();
  v56 = v76;
  sub_1ABF252E4();
  if (!(v56 >> 6))
  {
    a15 = 3;
    sub_1ABB3EA6C();
    sub_1ABAA5F1C(&type metadata for CandidateGenerationAlgorithm.TextMatchingSearchCodingKeys, &a15);
    a14 = v56;
    sub_1ABB3EA18();
    v57 = v72;
    sub_1ABF24F84();
    v58 = sub_1ABAA2BD8();
    goto LABEL_5;
  }

  if (v56 >> 6 == 1)
  {
    a17 = 4;
    sub_1ABB3E9C4();
    sub_1ABAA5F1C(&type metadata for CandidateGenerationAlgorithm.SubgraphMatchingSearchCodingKeys, &a17);
    a16 = v56 & 0x3F;
    sub_1ABB3EA18();
    v57 = v75;
    sub_1ABF24F84();
    v58 = sub_1ABA992D8();
LABEL_5:
    v59(v58, v57);
    v60 = sub_1ABA82DD8();
    v61(v60);
    goto LABEL_12;
  }

  if (v56 == 128)
  {
    a11 = 0;
    sub_1ABB3EB68();
    sub_1ABAA5F1C(&type metadata for CandidateGenerationAlgorithm.EmbeddingSearchCodingKeys, &a11);
    (*(v65 + 8))(v53, v49);
  }

  else if (v56 == 129)
  {
    a12 = 1;
    sub_1ABB3EB14();
    sub_1ABAA5F1C(&type metadata for CandidateGenerationAlgorithm.KnosisSearchCodingKeys, &a12);
    (*(v66 + 8))(v48, v67);
  }

  else
  {
    a13 = 2;
    sub_1ABB3EAC0();
    v62 = v68;
    sub_1ABAA5F1C(&type metadata for CandidateGenerationAlgorithm.StructuredSearchCodingKeys, &a13);
    (*(v69 + 8))(v62, v70);
  }

  v63 = sub_1ABA82DD8();
  v64(v63);
LABEL_12:
  sub_1ABA7BC90();
}

uint64_t sub_1ABB39A6C(uint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    MEMORY[0x1AC5AA8A0](3);
    v3 = a2;
    goto LABEL_5;
  }

  if (a2 >> 6 == 1)
  {
    MEMORY[0x1AC5AA8A0](4);
    v3 = a2 & 0x3F;
LABEL_5:
    sub_1ABB389B8(v3);
    sub_1ABF23D34();
  }

  if (a2 == 128)
  {
    v5 = 0;
  }

  else if (a2 == 129)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  return MEMORY[0x1AC5AA8A0](v5);
}

uint64_t sub_1ABB39B24(unsigned __int8 a1)
{
  sub_1ABF25234();
  sub_1ABB39A6C(v3, a1);
  return sub_1ABF25294();
}

void sub_1ABB39B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_1ABA7BCA8();
  a26 = v28;
  a27 = v29;
  v113 = v27;
  v31 = v30;
  v105 = sub_1ABAD219C(&qword_1EB4D3150, &qword_1ABF3AD70);
  sub_1ABA7BB64();
  v107 = v32;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7FBE0();
  v111 = v34;
  v104 = sub_1ABAD219C(&qword_1EB4D3158, &qword_1ABF3AD78);
  sub_1ABA7BB64();
  v106 = v35;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7FBE0();
  v110 = v37;
  v109 = sub_1ABAD219C(&qword_1EB4D3160, &qword_1ABF3AD80);
  sub_1ABA7BB64();
  v103 = v38;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA7FBE0();
  v108 = v40;
  sub_1ABAD219C(&qword_1EB4D3168, &qword_1ABF3AD88);
  sub_1ABA7BB64();
  v101 = v42;
  v102 = v41;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v94 - v44;
  v46 = sub_1ABAD219C(&qword_1EB4D3170, &qword_1ABF3AD90);
  sub_1ABA7BB64();
  v100 = v47;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v94 - v49;
  v51 = sub_1ABAD219C(&qword_1EB4D3178, &unk_1ABF3AD98);
  sub_1ABA7BB64();
  v53 = v52;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v94 - v55;
  v57 = v31[3];
  v112 = v31;
  sub_1ABA93E20(v31, v57);
  sub_1ABB3E970();
  v58 = v113;
  sub_1ABF252C4();
  if (v58)
  {
    goto LABEL_9;
  }

  v97 = v46;
  v98 = v50;
  v99 = v45;
  v59 = v109;
  v113 = v53;
  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  if (v61 == v62 >> 1)
  {
LABEL_8:
    v72 = sub_1ABF24B44();
    sub_1ABA7BD00(v72, MEMORY[0x1E69E6B28]);
    v74 = v73;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v74 = &type metadata for CandidateGenerationAlgorithm;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v72 - 8) + 104))(v74, *MEMORY[0x1E69E6AF8], v72);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v113 + 8))(v56, v51);
LABEL_9:
    v75 = v112;
LABEL_10:
    sub_1ABA84B54(v75);
    sub_1ABA7BC90();
    return;
  }

  v96 = v56;
  if (v61 < (v62 >> 1))
  {
    v63 = v51;
    v95 = *(v60 + v61);
    sub_1ABAD4E90();
    v65 = v64;
    v67 = v66;
    swift_unknownObjectRelease();
    if (v65 == v67 >> 1)
    {
      switch(v95)
      {
        case 1:
          a12 = 1;
          sub_1ABB3EB14();
          sub_1ABAA51FC(&type metadata for CandidateGenerationAlgorithm.KnosisSearchCodingKeys, &a12);
          swift_unknownObjectRelease();
          v86 = sub_1ABA992D8();
          v87(v86);
          v88 = sub_1ABA992C8();
          v89(v88, v51);
          goto LABEL_15;
        case 2:
          a13 = 2;
          sub_1ABB3EAC0();
          v77 = v108;
          sub_1ABAA51FC(&type metadata for CandidateGenerationAlgorithm.StructuredSearchCodingKeys, &a13);
          swift_unknownObjectRelease();
          (*(v103 + 8))(v77, v59);
          v78 = sub_1ABA992C8();
          v79(v78, v63);
          goto LABEL_15;
        case 3:
          a15 = 3;
          sub_1ABB3EA6C();
          v80 = v51;
          v81 = v96;
          sub_1ABF24D94();
          sub_1ABB3EBBC();
          v84 = v104;
          sub_1ABF24E64();
          v85 = v113;
          swift_unknownObjectRelease();
          v92 = sub_1ABAA2BD8();
          v93(v92, v84);
          (*(v85 + 8))(v81, v80);
          goto LABEL_15;
        case 4:
          a17 = 4;
          sub_1ABB3E9C4();
          v76 = v96;
          sub_1ABF24D94();
          sub_1ABB3EBBC();
          v82 = v105;
          sub_1ABF24E64();
          v83 = v113;
          swift_unknownObjectRelease();
          v90 = sub_1ABA992D8();
          v91(v90, v82);
          (*(v83 + 8))(v76, v63);
          v75 = v112;
          goto LABEL_10;
        default:
          a11 = 0;
          sub_1ABB3EB68();
          sub_1ABAA51FC(&type metadata for CandidateGenerationAlgorithm.EmbeddingSearchCodingKeys, &a11);
          swift_unknownObjectRelease();
          v68 = sub_1ABA992D8();
          v69(v68, v97);
          v70 = sub_1ABA992C8();
          v71(v70, v51);
LABEL_15:
          v75 = v112;
          break;
      }

      goto LABEL_10;
    }

    v56 = v96;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_1ABB3A3E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB39288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB3A410@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABB3943C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB3A438(uint64_t a1)
{
  v2 = sub_1ABB3E970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3A474(uint64_t a1)
{
  v2 = sub_1ABB3E970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3A4B0(uint64_t a1)
{
  v2 = sub_1ABB3EB68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3A4EC(uint64_t a1)
{
  v2 = sub_1ABB3EB68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3A528(uint64_t a1)
{
  v2 = sub_1ABB3EB14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3A564(uint64_t a1)
{
  v2 = sub_1ABB3EB14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3A5A0(uint64_t a1)
{
  v2 = sub_1ABB3EAC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3A5DC(uint64_t a1)
{
  v2 = sub_1ABB3EAC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3A61C(uint64_t a1)
{
  v2 = sub_1ABB3E9C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3A658(uint64_t a1)
{
  v2 = sub_1ABB3E9C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3A694(uint64_t a1)
{
  v2 = sub_1ABB3EA6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB3A6D0(uint64_t a1)
{
  v2 = sub_1ABB3EA6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB3A77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABB3A7C8(unsigned __int8 a1, unsigned __int8 a2)
{
  if (!(a1 >> 6))
  {
    if (a2 <= 0x3Fu)
    {
      sub_1ABA9773C();
      v10 = v9;
      v7 = v2;
      switch(v10)
      {
        case 1:
          v7 = sub_1ABAB5C48();
          break;
        case 2:
          v7 = sub_1ABAA4444();
          break;
        case 3:
          v7 = sub_1ABA8E050();
          break;
        case 4:
          v7 = sub_1ABA8B09C();
          break;
        case 5:
          v7 = sub_1ABA83F64();
          break;
        default:
          break;
      }

      v12 = 0xE800000000000000;
      switch(v8)
      {
        case 1:
LABEL_27:
          v12 = 0xE600000000000000;
          v2 = 0x786966657270;
          break;
        case 2:
LABEL_29:
          v2 = 0x6E656B6F546C6C61;
          v12 = 0xE900000000000073;
          break;
        case 3:
LABEL_30:
          v2 = 0x69666572506C6C61;
          v12 = 0xEB00000000736578;
          break;
        case 4:
LABEL_28:
          v12 = 0xE600000000000000;
          v2 = 0x657361726870;
          break;
        case 5:
LABEL_31:
          v2 = 0x6850786966657270;
          v12 = 0xEC00000065736172;
          break;
        default:
          goto LABEL_32;
      }

      goto LABEL_32;
    }

    return 0;
  }

  if (a1 >> 6 != 1)
  {
    if (a1 == 128)
    {
      if (a2 == 128)
      {
        return 1;
      }
    }

    else if (a1 == 129)
    {
      if (a2 == 129)
      {
        return 1;
      }
    }

    else if (a2 == 130)
    {
      return 1;
    }

    return 0;
  }

  if ((a2 & 0xC0) != 0x40)
  {
    return 0;
  }

  sub_1ABA9773C();
  v4 = v3 & 0x3F;
  v6 = v5 & 0x3F;
  v7 = v2;
  switch(v6)
  {
    case 1:
      v7 = sub_1ABAB5C48();
      break;
    case 2:
      v7 = sub_1ABAA4444();
      break;
    case 3:
      v7 = sub_1ABA8E050();
      break;
    case 4:
      v7 = sub_1ABA8B09C();
      break;
    case 5:
      v7 = sub_1ABA83F64();
      break;
    default:
      break;
  }

  v12 = 0xE800000000000000;
  switch(v4)
  {
    case 1:
      goto LABEL_27;
    case 2:
      goto LABEL_29;
    case 3:
      goto LABEL_30;
    case 4:
      goto LABEL_28;
    case 5:
      goto LABEL_31;
    default:
      break;
  }

LABEL_32:
  if (v7 != v2 || v12 != 0xE800000000000000)
  {
    v14 = sub_1ABF25054();

    return v14 & 1;
  }

  return 1;
}

void *sub_1ABB3AA24@<X0>(void *a1@<X8>)
{
  v3 = v1[20];
  v4 = v3;
  v5 = v1[21];
  v6 = v1[22];
  v7 = v1[23];
  if (v3 == 1)
  {
    ContactFinder.init()();
    if (v8)
    {

      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v4 = v14;
      v5 = v15;
      v6 = v16;
      v7 = v17;
    }

    v12 = v1[21];
    v13 = v1[20];
    v10 = v1[23];
    v11 = v1[22];
    v1[20] = v4;
    v1[21] = v5;
    v1[22] = v6;
    v1[23] = v7;
    sub_1ABB3E1D8(v4);
    sub_1ABB3E048(v13, v12, v11, v10);
  }

  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  return sub_1ABB3E238(v3);
}

void sub_1ABB3AB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  sub_1ABA7BCA8();
  v149 = v24;
  v150 = v23;
  v25 = v22;
  v151 = v26;
  v136 = v27;
  v148 = v28;
  v156 = v29;
  v145 = v30;
  v152 = v31;
  v33 = v32;
  v34 = sub_1ABAD219C(&qword_1EB4D3100, &qword_1ABF3AC80);
  MEMORY[0x1EEE9AC00](v34 - 8);
  sub_1ABA7AC18();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v130 = v129 - v39;
  v134 = type metadata accessor for SearchableViewDatabaseTable(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1ABA7AC18();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v42);
  v129[0] = v129 - v43;
  v142 = sub_1ABF23744();
  sub_1ABA7BB64();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  sub_1ABA7AC18();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v129 - v48;
  v50 = sub_1ABF237F4();
  sub_1ABA7BB64();
  v52 = v51;
  MEMORY[0x1EEE9AC00](v53);
  sub_1ABA7BC58();
  v56 = v55 - v54;
  v139 = sub_1ABF23774();
  sub_1ABA7BB64();
  v138 = v57;
  MEMORY[0x1EEE9AC00](v58);
  sub_1ABA7BC58();
  v61 = v60 - v59;
  v137 = type metadata accessor for LogSignpost(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v62);
  sub_1ABA7BC58();
  v144 = (v64 - v63);
  v65 = v33[1];
  v135 = *v33;
  v131 = v65;
  v132 = *(v33 + 16);
  v141 = *(v33 + 17);
  v147 = *(v33 + 18);
  *(v25 + 24) = 0u;
  *(v25 + 40) = 0u;
  *(v25 + 56) = 0;
  *(v25 + 160) = 1;
  *(v25 + 168) = 0;
  *(v25 + 176) = 0;
  *(v25 + 184) = 0;
  v133 = v25 + 24;
  if (qword_1ED871F20 != -1)
  {
    swift_once();
  }

  v143 = a22;
  v66 = sub_1ABA7AA24(v50, qword_1ED871EF8);
  (*(v52 + 16))(v56, v66, v50);
  sub_1ABF23754();
  sub_1ABF23764();
  sub_1ABF23714();
  v67 = sub_1ABF23764();
  v68 = sub_1ABF24714();
  if (sub_1ABF247D4())
  {
    v69 = v37;
    v70 = v25;
    v71 = sub_1ABA88598();
    *v71 = 0;
    v72 = sub_1ABF23724();
    _os_signpost_emit_with_name_impl(&dword_1ABA78000, v67, v68, v72, "ECR.CanGen.init", "", v71, 2u);
    v25 = v70;
    v37 = v69;
    sub_1ABA7BC34();
  }

  v146 = a21;

  v73 = v142;
  (*(v45 + 16))(v140, v49, v142);
  sub_1ABF237B4();
  swift_allocObject();
  v74 = sub_1ABF237A4();
  (*(v45 + 8))(v49, v73);
  v75 = v144;
  *v144 = "ECR.CanGen.init";
  *(v75 + 8) = 15;
  *(v75 + 16) = 2;
  *(v75 + 24) = v74;
  (*(v138 + 32))(v75 + *(v137 + 24), v61, v139);
  v76 = v141;
  *(v25 + 16) = v141;
  *(v25 + 17) = v147;
  v77 = v145;
  v78 = v145[1];
  *(v25 + 64) = *v145;
  *(v25 + 80) = v78;
  *(v25 + 96) = *(v77 + 32);
  sub_1ABB3E5B4(v156, v25 + 112, &qword_1EB4D3098, &unk_1ABF3AC28);
  v79 = v143;
  *(v25 + 152) = v143;
  if (!(v152 >> 6))
  {
    v90 = v130;
    sub_1ABB3E5B4(v151, v130, &qword_1EB4D3100, &qword_1ABF3AC80);
    v91 = sub_1ABA7E1E0(v90, 1, v134);
    v81 = v149;
    if (v91 == 1)
    {
      v92 = sub_1ABA97EF0();
      sub_1ABB3E5B4(v92, v93, v94, v95);
      swift_unknownObjectRetain();
      sub_1ABA96934();
      sub_1ABAA14A4();
      sub_1ABAB480C(v90, &qword_1EB4D3100, &qword_1ABF3AC80);
    }

    else
    {
      sub_1ABB34574(v90, v129[0]);
      sub_1ABAA1700();
      v109 = sub_1ABA97EF0();
      sub_1ABB3E5B4(v109, v110, v111, v112);
      swift_unknownObjectRetain();
      sub_1ABA96934();
      v113 = sub_1ABA9A2C4();
      v114 = type metadata accessor for TextMatchingSearchCandidateRetriever(v113);
      v115 = swift_allocObject();
      v116 = sub_1ABB34988(v37, v136, v153, v152);
      v154 = v114;
      v155 = &off_1F20793F0;
      sub_1ABA83680(v116);
      sub_1ABA80770();
      sub_1ABB3E6D0(v153, v115);
      swift_endAccess();
    }

    v80 = v148;
    goto LABEL_20;
  }

  v80 = v148;
  v81 = v149;
  if (v152 >> 6 == 1)
  {
    v82 = sub_1ABA97EF0();
    sub_1ABB3E5B4(v82, v83, v84, v85);
    swift_unknownObjectRetain();
    sub_1ABAA14A4();
    sub_1ABB3E5B4(v81, v37, &qword_1EB4D3100, &qword_1ABF3AC80);
    if (sub_1ABA7E1E0(v37, 1, v134) == 1)
    {
      sub_1ABA96934();
      sub_1ABAB480C(v37, &qword_1EB4D3100, &qword_1ABF3AC80);
      v86 = sub_1ABA97A04();
      sub_1ABA7BD00(&type metadata for EntityResolutionError, v86);
      sub_1ABAA1B90();
      sub_1ABA8FE80(v88, v87 | 0x18);
      v150 = v89;
      swift_willThrow();
      sub_1ABB3B594(v79);
      swift_unknownObjectRelease();

LABEL_23:
      sub_1ABAB480C(v77, &qword_1EB4D3108, &qword_1ABF3AC88);
      sub_1ABA95230(v81);
      sub_1ABA95230(v151);
      sub_1ABAB480C(v156, &qword_1EB4D3098, &unk_1ABF3AC28);
      sub_1ABA8E6AC();
      v120 = v79;
      goto LABEL_24;
    }

    sub_1ABB34574(v37, v129[1]);
    sub_1ABAA1700();
    sub_1ABA96934();
    v105 = sub_1ABA9A2C4();
    v106 = type metadata accessor for SubgraphMatchingSearchCandidateRetriever(v105);
    v107 = swift_allocObject();
    v108 = sub_1ABB30290(v37, v153, v152 & 0x3F);
    v154 = v106;
    v155 = &off_1F2095C18;
    v80 = v148;
    sub_1ABA83680(v108);
    sub_1ABA80770();
    goto LABEL_19;
  }

  v96 = sub_1ABA97EF0();
  if (v100 != 128)
  {
    sub_1ABB3E5B4(v96, v97, v98, v99);
    swift_unknownObjectRetain();
    sub_1ABA96934();
    sub_1ABAA14A4();
    if (!v80)
    {
      v125 = sub_1ABA97A04();
      sub_1ABA7BD00(&type metadata for EntityResolutionError, v125);
      sub_1ABAA1B90();
      sub_1ABA8FE80(v126, v127);
      v150 = v128;
      swift_willThrow();
      sub_1ABB3B594(v79);
      swift_unknownObjectRelease();

      goto LABEL_23;
    }

    v107 = type metadata accessor for KnosisCandidateRetriever();
    v117 = swift_allocObject();
    *(v117 + 16) = v80;
    v154 = v107;
    v155 = &off_1F20806C8;
    v153[0] = v117;
    sub_1ABA80770();
    v118 = v80;
LABEL_19:
    sub_1ABB3E6D0(v153, v107);
    swift_endAccess();
    goto LABEL_20;
  }

  sub_1ABB3E5B4(v96, v97, v98, v99);
  swift_unknownObjectRetain();
  sub_1ABAA14A4();
  v101 = v146;
  if (!v146)
  {
    sub_1ABA96934();
    v121 = sub_1ABA97A04();
    sub_1ABA7BD00(&type metadata for EntityResolutionError, v121);
    sub_1ABAA1B90();
    sub_1ABA8FE80(v123, v122 | 3);
    v150 = v124;
    swift_willThrow();
    sub_1ABB3B594(v79);
    swift_unknownObjectRelease();

    v81 = v149;
    goto LABEL_23;
  }

  v102 = type metadata accessor for VectorSearchCandidateRetriever();
  v103 = swift_allocObject();
  v104 = v135;
  *(v103 + 16) = v101;
  *(v103 + 24) = v104;
  *(v103 + 32) = v131;
  *(v103 + 40) = v132;
  *(v103 + 41) = v76;
  *(v103 + 42) = v147;
  v154 = v102;
  v155 = &off_1F207C2D0;
  v153[0] = v103;
  sub_1ABA80770();

  sub_1ABB3E6D0(v153, v102);
  swift_endAccess();
  v81 = v149;
LABEL_20:
  sub_1ABB3B594(v75);
  swift_unknownObjectRelease();

  sub_1ABAB480C(v77, &qword_1EB4D3108, &qword_1ABF3AC88);
  sub_1ABA95230(v81);
  sub_1ABA95230(v151);
  sub_1ABAB480C(v156, &qword_1EB4D3098, &unk_1ABF3AC28);
  sub_1ABA8E6AC();
  v120 = v75;
LABEL_24:
  sub_1ABB3E678(v120, v119);
  sub_1ABA7BC90();
}

uint64_t sub_1ABB3B594(uint64_t a1)
{
  v2 = sub_1ABF23784();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1ABF23744();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for LogSignpost(0);
  v9 = *a1;
  v10 = *(a1 + 16);
  v11 = sub_1ABF23764();
  sub_1ABF23794();
  v18 = sub_1ABF24704();
  result = sub_1ABF247D4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v6 + 8))(v8, v5);
  }

  if ((v10 & 1) == 0)
  {
    if (v9)
    {
LABEL_9:

      sub_1ABF237C4();

      v13 = v19;
      if ((*(v19 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
      {
        v14 = "[Error] Interval already ended";
      }

      else
      {
        (*(v13 + 8))(v4, v2);
        v14 = "";
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_1ABF23724();
      _os_signpost_emit_with_name_impl(&dword_1ABA78000, v11, v18, v16, v9, v14, v15, 2u);
      MEMORY[0x1AC5AB8B0](v15, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v9 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v9 & 0xFFFFF800) != 0xD800)
  {
    if (v9 >> 16 <= 0x10)
    {
      v9 = &v20;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1ABB3B83C(void *__src)
{
  memcpy(v2, __src, 0x49uLL);
  type metadata accessor for VectorSearchCandidateRetriever();
  return sub_1ABB3740C(v2);
}

void sub_1ABB3B88C()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  memcpy(v102, v16, 0x49uLL);
  v85 = v15[1];
  v87 = *v15;
  v17 = *(v15 + 34);
  v18 = *(v15 + 16);
  swift_beginAccess();
  sub_1ABB3E5B4(v3 + 24, __dst, &qword_1EB4D3090, &qword_1ABF3AC20);
  if (*&__dst[24])
  {
    v84 = v9;
    v19 = v18 | (v17 << 16);
    sub_1ABA946C0(__dst, v91);
    v20 = v91[3];
    v21 = v13;
    v22 = v91[4];
    sub_1ABA93E20(v91, v91[3]);
    memcpy(__dst, v102, 0x49uLL);
    *__src = v87;
    *&__src[16] = v85;
    __src[34] = BYTE2(v19);
    *&__src[32] = v19;
    v23 = *(v22 + 8);
    v82 = v22;
    v13 = v21;
    v24 = v23(__dst, __src, v21 & 1, v11 & 1, *(v3 + 152), v7, v5, v20, v82);
    v2 = v1;
    sub_1ABA84B54(v91);
    if (v1)
    {
      goto LABEL_39;
    }

    if ((v84 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_1ABAB480C(__dst, &qword_1EB4D3090, &qword_1ABF3AC20);
  if (v9)
  {
    v24 = MEMORY[0x1E69E7CC0];
LABEL_7:
    if ((v13 & 1) != 0 && !*(v24 + 16))
    {
      if (qword_1ED871B18 != -1)
      {
        goto LABEL_53;
      }

      while (1)
      {
        v38 = sub_1ABF237F4();
        sub_1ABA7AA24(v38, qword_1ED871B20);
        v39 = sub_1ABF237D4();
        v40 = sub_1ABF24664();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = sub_1ABA88598();
          *v41 = 0;
          _os_log_impl(&dword_1ABA78000, v39, v40, "No entities found for query. Executing backup path and querying stores directly", v41, 2u);
          sub_1ABA7BC34();
        }

        sub_1ABB3AA24(__dst);
        v42 = *__dst;
        if (!*__dst)
        {
          break;
        }

        v43 = v102[1];
        if (!v102[1])
        {
          v65 = sub_1ABF237D4();
          v66 = sub_1ABF24654();
          if (os_log_type_enabled(v65, v66))
          {
            *sub_1ABA88598() = 0;
            sub_1ABAA2FB8();
            _os_log_impl(v67, v68, v69, v70, v71, 2u);
            sub_1ABA7BC34();
          }

          sub_1ABB3E058(v42);
          goto LABEL_36;
        }

        v44 = v102[0];
        v83 = *__dst;
        ContactFinder.search(_:)(v102[0], v102[1]);
        if (v2)
        {
          v46 = v2;
          v47 = sub_1ABF237D4();
          v48 = sub_1ABF24664();

          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            *v49 = 138412290;
            v51 = v2;
            v52 = _swift_stdlib_bridgeErrorToNSError();
            *(v49 + 4) = v52;
            *v50 = v52;
            sub_1ABAA2FB8();
            _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
            sub_1ABAB480C(v50, &unk_1EB4D57F0, &qword_1ABF390C0);
            sub_1ABA7BC34();
            sub_1ABA7BC34();
          }

          sub_1ABB3E058(v83);

          goto LABEL_37;
        }

        v73 = v45;
        v86 = v43;
        v2 = 0;
        v88 = *(v45 + 16);
        v28 = MEMORY[0x1E69E7CC0];
        v74 = (v45 + 80);
        v103 = v44;
        while (1)
        {
          if (v88 == v2)
          {
            sub_1ABB3E058(v83);

            goto LABEL_38;
          }

          if (v2 >= *(v73 + 16))
          {
            break;
          }

          v76 = *(v74 - 1);
          v75 = *v74;
          v77 = *(v74 - 16);
          v78 = *(v74 - 3);
          v93 = *(v74 - 6);
          v94 = *(v74 - 5);
          v95 = v78;
          v96 = v77;
          v97 = v76;
          v98 = v75;

          sub_1ABB3C12C(&v93, v44, v86, __dst);

          memcpy(v91, __dst, 0x145uLL);
          if (sub_1ABB373A8(v91) == 1)
          {
            memcpy(__src, __dst, sizeof(__src));
            sub_1ABAB480C(__src, &qword_1EB4D30A0, &qword_1ABF3AC38);
          }

          else
          {
            memcpy(__src, __dst, sizeof(__src));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_1ABAD9BE8();
              v28 = v80;
            }

            v79 = v28[2];
            if (v79 >= v28[3] >> 1)
            {
              sub_1ABAD9BE8();
              v28 = v81;
            }

            memcpy(v89, __src, 0x145uLL);
            v28[2] = v79 + 1;
            memcpy(&v28[41 * v79 + 4], v89, 0x145uLL);
            v44 = v103;
          }

          v74 += 7;
          ++v2;
        }

        __break(1u);
LABEL_53:
        swift_once();
      }

      v58 = sub_1ABF237D4();
      v59 = sub_1ABF24664();
      if (os_log_type_enabled(v58, v59))
      {
        *sub_1ABA88598() = 0;
        sub_1ABAA2FB8();
        _os_log_impl(v60, v61, v62, v63, v64, 2u);
        sub_1ABA7BC34();
      }

      goto LABEL_37;
    }

LABEL_9:
    v25 = *(v3 + 17);
    v26 = *(v3 + 16);
    if ((v25 & 1) != 0 || *(v3 + 16))
    {
      v37 = *(v3 + 80);
      v101[0] = *(v3 + 64);
      v101[1] = v37;
      v101[2] = *(v3 + 96);
      v28 = sub_1ABB3C9A4(v24, v101, v26 & 1u | ((v25 & 1) == 0), v25);

      if (v2)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }

    v27 = *(v24 + 16);
    if (v27)
    {
      v100 = MEMORY[0x1E69E7CC0];
      sub_1ABADDFDC(0, v27, 0);
      v28 = v100;
      sub_1ABB3E0B8(__src);
      v29 = v27 - 1;
      for (i = 32; ; i += 136)
      {
        memcpy(v89, (v24 + i), 0x88uLL);
        memcpy(v91, (v24 + i), 0x88uLL);
        memcpy(&v91[17], __src, 0xB8uLL);
        v99 = 1;
        memcpy(__dst, v91, 0x140uLL);
        sub_1ABB3E0C0(v89, &v93);
        v100 = v28;
        v32 = v28[2];
        v31 = v28[3];
        if (v32 >= v31 >> 1)
        {
          sub_1ABADDFDC((v31 > 1), v32 + 1, 1);
          v28 = v100;
        }

        v28[2] = v32 + 1;
        v33 = &v28[41 * v32];
        memcpy(v33 + 4, __dst, 0x140uLL);
        *(v33 + 88) = 0;
        *(v33 + 356) = 1;
        if (!v29)
        {
          break;
        }

        --v29;
      }

      goto LABEL_38;
    }

LABEL_36:

LABEL_37:
    v28 = MEMORY[0x1E69E7CC0];
LABEL_38:
    type metadata accessor for PopulatedCandidatesForMention();
    v72 = swift_allocObject();
    *(v72 + 16) = v28;
    memcpy((v72 + 24), v102, 0x49uLL);
    sub_1ABB3E11C(v102, __dst);
    goto LABEL_39;
  }

  v34 = sub_1ABB32C5C();
  sub_1ABA7BD00(&type metadata for EntityResolutionError, v34);
  sub_1ABAA1B90();
  sub_1ABA8FE80(v35, v36);
  swift_willThrow();
LABEL_39:
  sub_1ABA7BC90();
}

void *sub_1ABB3C12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v66 = a2;
  v67 = a3;
  v7 = sub_1ABF23924();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1ABF23914();
  v10 = *(v9 - 8);
  v76 = v9;
  v77 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v59 - v13;
  v14 = sub_1ABF23C54();
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 8);
  v19 = *(a1 + 16);
  v21 = *(a1 + 24);
  v22 = *(a1 + 32);
  v23 = *(a1 + 48);
  v65 = *(a1 + 40);
  v82 = v4;
  if (!v20)
  {
    if (!v21)
    {
      sub_1ABB3E178(v81);
      v58 = a4;
      return memcpy(v58, v81, 0x145uLL);
    }

    v74 = v16;
    v75 = v15;
    v61 = v22;
    v63 = v23;
    v73 = a4;
    v81[0] = v19;
    v81[1] = v21;

    v72 = 0xE800000000000000;
    v62 = 0x6E6F737265504850;
    MEMORY[0x1AC5A9410](0x6E6F737265504850, 0xE800000000000000);
    v25 = v81[0];
    v26 = v81[1];
    v71 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  v74 = v16;
  v75 = v15;
  v60 = v19;
  v61 = v22;
  v63 = v23;
  v72 = 0xE900000000000074;
  v73 = a4;
  v81[0] = *a1;
  v24 = v81[0];
  v81[1] = v20;
  swift_bridgeObjectRetain_n();
  v62 = 0x6361746E6F434E43;
  MEMORY[0x1AC5A9410](0x6361746E6F434E43, 0xE900000000000074);
  v25 = v81[0];
  v26 = v81[1];
  sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
  v27 = swift_allocObject();
  v71 = v27;
  *(v27 + 16) = xmmword_1ABF34740;
  *(v27 + 32) = v24;
  *(v27 + 40) = v20;
  if (v21)
  {
    v19 = v60;
LABEL_6:
    swift_bridgeObjectRetain_n();
    sub_1ABAD219C(&qword_1EB4D10F0, &qword_1ABF3A5C0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1ABF34740;
    *(v28 + 32) = v19;
    *(v28 + 40) = v21;
    goto LABEL_8;
  }

  swift_bridgeObjectRetain_n();
  v28 = MEMORY[0x1E69E7CC0];
LABEL_8:

  sub_1ABF23C44();
  v29 = sub_1ABF23C14();
  v31 = v30;

  (*(v74 + 8))(v18, v75);

  if (v31 >> 60 == 15)
  {
    v32 = v25;

    if (qword_1ED871B18 != -1)
    {
      swift_once();
    }

    v33 = sub_1ABF237F4();
    sub_1ABA7AA24(v33, qword_1ED871B20);

    v34 = sub_1ABF237D4();
    v35 = sub_1ABF24664();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v81[0] = v37;
      *v36 = 136380675;
      v38 = sub_1ABADD6D8(v32, v26, v81);

      *(v36 + 4) = v38;
      _os_log_impl(&dword_1ABA78000, v34, v35, "Failed to encode identifier as UTF8 data: %{private}s", v36, 0xCu);
      sub_1ABA84B54(v37);
      MEMORY[0x1AC5AB8B0](v37, -1, -1);
      MEMORY[0x1AC5AB8B0](v36, -1, -1);
    }

    else
    {
    }

    sub_1ABB3E178(v81);
    v58 = v73;
    return memcpy(v58, v81, 0x145uLL);
  }

  v74 = v28;
  v75 = v25;
  sub_1ABB3E180();
  v39 = v68;
  v40 = v70;
  sub_1ABF238F4();
  sub_1ABB0DBF0(v29, v31);
  v41 = v82;
  sub_1ABE70664(v29, v31, v39);
  v82 = v41;
  sub_1ABAC9310(v29, v31);
  sub_1ABF238E4();
  v69[1](v39, v40);
  v70 = v29;
  if (!_Records_GDEntityClass_records)
  {
    __break(1u);
    goto LABEL_32;
  }

  sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), v81);
  v68 = v81[1];
  v42 = LOBYTE(v81[4]);
  v43 = v77;
  v44 = v64;
  v45 = v76;
  (*(v77 + 16))(v64, v78, v76);
  sub_1ABAD219C(&qword_1EB4D30A8, &qword_1ABF3F400);
  v46 = v82;
  sub_1ABF23904();
  v82 = v46;
  if (v81[1])
  {
LABEL_32:
    result = sub_1ABF24CD4();
    __break(1u);
    return result;
  }

  v60 = v26;
  v47 = v81[0];
  v48 = 0xD000000000000012;
  v49 = *(v43 + 8);
  v77 = v43 + 8;
  v69 = v49;
  (v49)(v44, v45);

  v68 = ((v47 >> 9) | (v42 << 56));
  if (v61)
  {
    v50 = 0x80000001ABF87790;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  if (v61)
  {
    v51 = v50;
  }

  else
  {
    v51 = 0xE000000000000000;
  }

  if (0x80000001ABF87790 == v51)
  {
    v52 = v61;
  }

  else
  {
    v52 = 0;
  }

  v53 = 1;
  if ((v52 & 1) == 0)
  {
    v53 = sub_1ABF25054();
  }

  v54 = v65;

  v55 = v63;

  v56 = v67;

  sub_1ABAC9310(v70, v31);
  (v69)(v78, v76);
  sub_1ABB3E0B8(v80);
  memcpy(&v81[17], v80, 0xB8uLL);
  v79 = 1;
  v81[0] = v68;
  v81[1] = v48;
  v81[2] = v50;
  v81[3] = 0x3FF0000000000000;
  LOBYTE(v81[4]) = 3;
  v81[5] = v75;
  v81[6] = v60;
  v81[7] = v62;
  v81[8] = v72;
  v81[9] = v66;
  v81[10] = v56;
  v81[11] = 0x3FF0000000000000;
  LOBYTE(v81[12]) = v53 & 1;
  v81[13] = v54;
  v81[14] = v71;
  v81[15] = v74;
  v81[16] = v55;
  LODWORD(v81[40]) = 0;
  BYTE4(v81[40]) = 1;
  nullsub_1();
  return memcpy(v73, v81, 0x145uLL);
}

void *sub_1ABB3C9A4(uint64_t a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v7 = (a2 + 2);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v61 = v8;
  if (v8)
  {
    v67[0] = MEMORY[0x1E69E7CC0];
    sub_1ABADDFFC(0, v8, 0);
    v9 = v67[0];
    v11 = (a1 + 32);
    v12 = *(v67[0] + 16);
    do
    {
      v14 = *v11;
      v11 += 17;
      v13 = v14;
      v67[0] = v9;
      v15 = v9[3];
      if (v12 >= v15 >> 1)
      {
        sub_1ABADDFFC((v15 > 1), v12 + 1, 1);
        v9 = v67[0];
      }

      v9[2] = v12 + 1;
      v9[v12++ + 4] = v13;
      --v8;
    }

    while (v8);
    v16 = a2;
    v5 = v4;
  }

  else
  {
    v16 = a2;
  }

  v77 = MEMORY[0x1E69E7CC8];
  if (a4)
  {
    v17 = v9;
    v18 = sub_1ABB3D084(v9);
    if (v5)
    {

      return v16;
    }

    v77 = v18;
    v9 = v17;
  }

  v60 = v9;
  v19 = v16[1];
  if (v19)
  {
    *&v68 = *v16;
    *(&v68 + 1) = v19;
    v20 = v7[1];
    v69 = *v7;
    v70 = v20;
    if (a3)
    {
      v16 = *(&v69 + 1);
      ObjectType = swift_getObjectType();
      MEMORY[0x1EEE9AC00](ObjectType);

      swift_unknownObjectRetain();

      sub_1ABAD219C(&qword_1EB4D30C0, &qword_1ABF3AC50);
      sub_1ABF22464();
      if (v5)
      {

        v75 = v68;
        sub_1ABAFEEA0(&v75);
        swift_unknownObjectRelease();
        v76 = v70;
        sub_1ABAFEEA0(&v76);

        return v16;
      }

      v71 = v68;
      sub_1ABAFEEA0(&v71);
      swift_unknownObjectRelease();
      v72 = v70;
      sub_1ABAFEEA0(&v72);
      v22 = v67[0];
      goto LABEL_18;
    }

    v73 = v68;

    swift_unknownObjectRetain();

    sub_1ABAFEEA0(&v73);
    swift_unknownObjectRelease();
    v74 = v70;
    sub_1ABAFEEA0(&v74);
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v23 = 0;
  v64 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC8];
  v25 = 32;
  v63 = v22;
  while (v64 != v23)
  {
    if (v23 >= *(v22 + 16))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      result = sub_1ABF25104();
      __break(1u);
      return result;
    }

    v26 = v25;
    memcpy(v67, (v22 + v25), sizeof(v67));
    v27 = v67[0];
    sub_1ABB3E248(v67, v66);
    sub_1ABB3E248(v67, v66);
    swift_isUniquelyReferenced_nonNull_native();
    v28 = sub_1ABAFF5A4(v27);
    if (__OFADD__(v24[2], (v29 & 1) == 0))
    {
      goto LABEL_47;
    }

    v30 = v28;
    v31 = v29;
    sub_1ABAD219C(&qword_1EB4D30B0, &qword_1ABF3AC40);
    if (sub_1ABF24C64())
    {
      v32 = sub_1ABAFF5A4(v27);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_52;
      }

      v30 = v32;
    }

    if (v31)
    {
      v34 = (v24[7] + 184 * v30);
      memcpy(v66, v34, sizeof(v66));
      memcpy(v34, v67, 0xB8uLL);
      sub_1ABB3E2A4(v66);
      sub_1ABB3E2A4(v67);
    }

    else
    {
      v24[(v30 >> 6) + 8] |= 1 << v30;
      *(v24[6] + 8 * v30) = v27;
      memcpy((v24[7] + 184 * v30), v67, 0xB8uLL);
      sub_1ABB3E2A4(v67);
      v35 = v24[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_48;
      }

      v24[2] = v37;
    }

    v25 = v26 + 184;
    ++v23;
    v22 = v63;
  }

  v38 = sub_1ABF239C4();
  v39 = a1;

  v41 = v60;
  v40 = v61;
  v42 = 0;
  v43 = 32;
  while (1)
  {
    v44 = v41[2];
    if (v42 == v44)
    {
      break;
    }

    if (v42 >= v44)
    {
      goto LABEL_49;
    }

    if (v40 == v42)
    {
      break;
    }

    v65 = v42;
    v45 = v41[v42 + 4];
    v46 = v43;
    memcpy(v67, (v39 + v43), 0x88uLL);
    sub_1ABB3E0C0(v67, v66);
    swift_isUniquelyReferenced_nonNull_native();
    v47 = sub_1ABAFF5A4(v45);
    if (__OFADD__(v38[2], (v48 & 1) == 0))
    {
      goto LABEL_50;
    }

    v49 = v47;
    v50 = v48;
    sub_1ABAD219C(&qword_1EB4D30B8, &qword_1ABF3AC48);
    if (sub_1ABF24C64())
    {
      v51 = sub_1ABAFF5A4(v45);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_52;
      }

      v49 = v51;
    }

    if (v50)
    {
      v53 = (v38[7] + 136 * v49);
      memcpy(v66, v53, 0x88uLL);
      memcpy(v53, v67, 0x88uLL);
      sub_1ABB3E2F8(v66);
    }

    else
    {
      v38[(v49 >> 6) + 8] |= 1 << v49;
      *(v38[6] + 8 * v49) = v45;
      memcpy((v38[7] + 136 * v49), v67, 0x88uLL);
      v54 = v38[2];
      v36 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v36)
      {
        goto LABEL_51;
      }

      v38[2] = v55;
    }

    v43 = v46 + 136;
    v42 = v65 + 1;
    v40 = v61;
    v39 = a1;
    v41 = v60;
  }

  MEMORY[0x1EEE9AC00](v56);
  v16 = sub_1ABB386F0(v38, sub_1ABB3E34C);

  return v16;
}

void *sub_1ABB3D084(uint64_t *a1)
{
  v3 = v2;
  sub_1ABB3E5B4(v1 + 112, &v58, &qword_1EB4D3098, &unk_1ABF3AC28);
  if (!v59)
  {
    sub_1ABAB480C(&v58, &qword_1EB4D3098, &unk_1ABF3AC28);
    if (a1[2])
    {
      if (qword_1ED871B18 != -1)
      {
        swift_once();
      }

      v28 = sub_1ABF237F4();
      sub_1ABA7AA24(v28, qword_1ED871B20);
      v29 = sub_1ABF237D4();
      v30 = sub_1ABF24664();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1ABA78000, v29, v30, "Could not unwrap ranking service in candidate generator. returning null entity relevances.", v31, 2u);
        MEMORY[0x1AC5AB8B0](v31, -1, -1);
      }
    }

    sub_1ABAD219C(&qword_1EB4D30C8, &qword_1ABF3AC58);
    return sub_1ABF239C4();
  }

  sub_1ABA946C0(&v58, v60);
  sub_1ABA93E20(v60, v60[3]);
  sub_1ABB3E374(0, 0, 0, 0, 16711680);
  v56 = 1;
  memset(__src, 0, 42);
  BYTE10(__src[2]) = -1;
  *&__src[3] = 1;
  BYTE8(__src[3]) = 2;
  *&__src[4] = 0;
  BYTE8(__src[4]) = 1;
  sub_1ABBC84B4(a1, __src, &v57);
  if (v2)
  {
    memcpy(__dst, __src, 0x49uLL);
    sub_1ABB3E408(__dst);
    if (qword_1ED871B18 != -1)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v5 = sub_1ABF237F4();
      sub_1ABA7AA24(v5, qword_1ED871B20);
      v6 = v3;
      v7 = sub_1ABF237D4();
      v8 = sub_1ABF24664();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        *v9 = 138412290;
        v11 = v2;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        *(v9 + 4) = v12;
        *v10 = v12;
        _os_log_impl(&dword_1ABA78000, v7, v8, "Failed to fetch entity relevances with error: %@", v9, 0xCu);
        sub_1ABAB480C(v10, &unk_1EB4D57F0, &qword_1ABF390C0);
        MEMORY[0x1AC5AB8B0](v10, -1, -1);
        MEMORY[0x1AC5AB8B0](v9, -1, -1);
      }

      v13 = a1[2];
      if (!v13)
      {
        break;
      }

      v14 = MEMORY[0x1E69E7CC8];
      a1 += 4;
      v3 = &qword_1ABF3AC60;
      while (1)
      {
        v16 = *a1++;
        v15 = v16;
        swift_isUniquelyReferenced_nonNull_native();
        v17 = sub_1ABAFF5A4(v16);
        if (__OFADD__(v14[2], (v18 & 1) == 0))
        {
          break;
        }

        v19 = v17;
        v20 = v18;
        sub_1ABAD219C(&qword_1EB4D30D0, &qword_1ABF3AC60);
        if (sub_1ABF24C64())
        {
          v21 = sub_1ABAFF5A4(v15);
          if ((v20 & 1) != (v22 & 1))
          {
            goto LABEL_52;
          }

          v19 = v21;
        }

        if (v20)
        {
          v23 = (v14[7] + 16 * v19);
          *v23 = 0;
          v23[1] = 0;
        }

        else
        {
          v14[(v19 >> 6) + 8] |= 1 << v19;
          *(v14[6] + 8 * v19) = v15;
          v24 = (v14[7] + 16 * v19);
          *v24 = 0;
          v24[1] = 0;
          v25 = v14[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_49;
          }

          v14[2] = v27;
        }

        if (!--v13)
        {
          goto LABEL_43;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      swift_once();
    }

    v14 = MEMORY[0x1E69E7CC8];
LABEL_43:

    sub_1ABA84B54(v60);
    return v14;
  }

  memcpy(__dst, __src, 0x49uLL);
  sub_1ABB3E408(__dst);
  v32 = v57;
  v53 = sub_1ABAAB7C8(v57);
  v33 = 0;
  v51 = v32 & 0xC000000000000001;
  v14 = MEMORY[0x1E69E7CC8];
  v52 = v32;
  v50 = v32 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v53 == v33)
    {

      sub_1ABA84B54(v60);
      return v14;
    }

    if (v51)
    {
      v34 = MEMORY[0x1AC5AA170](v33, v52);
    }

    else
    {
      if (v33 >= *(v50 + 16))
      {
        goto LABEL_47;
      }

      v34 = *(v52 + 8 * v33 + 32);
    }

    if (__OFADD__(v33, 1))
    {
      goto LABEL_46;
    }

    v35 = v34[2];
    v36 = v34[3];
    a1 = v34[6];
    swift_isUniquelyReferenced_nonNull_native();
    v37 = sub_1ABAFF5A4(v35);
    v39 = v14[2];
    v40 = (v38 & 1) == 0;
    v3 = (v39 + v40);
    if (__OFADD__(v39, v40))
    {
      goto LABEL_48;
    }

    v41 = v37;
    v42 = v38;
    sub_1ABAD219C(&qword_1EB4D30D0, &qword_1ABF3AC60);
    if (sub_1ABF24C64())
    {
      break;
    }

LABEL_35:
    if (v42)
    {
      v45 = (v14[7] + 16 * v41);
      *v45 = v36;
      v45[1] = a1;
    }

    else
    {
      v14[(v41 >> 6) + 8] |= 1 << v41;
      *(v14[6] + 8 * v41) = v35;
      v46 = (v14[7] + 16 * v41);
      *v46 = v36;
      v46[1] = a1;

      v47 = v14[2];
      v26 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v26)
      {
        goto LABEL_50;
      }

      v14[2] = v48;
    }

    ++v33;
  }

  v43 = sub_1ABAFF5A4(v35);
  if ((v42 & 1) == (v44 & 1))
  {
    v41 = v43;
    goto LABEL_35;
  }

LABEL_52:
  result = sub_1ABF25104();
  __break(1u);
  return result;
}

uint64_t sub_1ABB3D6D4@<X0>(uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v13 = a4;
  v6 = sub_1ABAD219C(&qword_1EB4D30D8, &unk_1ABF3AC68);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v15[6] = a2;
  v14[3] = sub_1ABF22D14();
  v14[4] = MEMORY[0x1E69A0050];
  sub_1ABA93DC0(v14);

  sub_1ABF22D24();
  v15[3] = sub_1ABF22424();
  v15[4] = MEMORY[0x1E699FE60];
  sub_1ABA93DC0(v15);
  sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  sub_1ABAB47C4(&qword_1EB4CF830, &qword_1EB4D1720, &qword_1ABF338B0, MEMORY[0x1E69E6328]);
  sub_1ABB3E45C();
  sub_1ABF23EE4();
  sub_1ABA84B54(v14);
  sub_1ABB3E4B0();
  sub_1ABF221C4();
  sub_1ABA84B54(v15);
  sub_1ABAB47C4(&qword_1EB4D30E8, &qword_1EB4D30D8, &unk_1ABF3AC68, MEMORY[0x1E699FF60]);
  sub_1ABB3E504();
  v10 = sub_1ABF22234();
  result = (*(v7 + 8))(v9, v6);
  if (!v4)
  {
    *v13 = v10;
  }

  return result;
}

void *sub_1ABB3D92C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a5 + 8);
  memcpy(__dst, a2, 0x88uLL);
  v12 = COERCE_DOUBLE(sub_1ABAD5664(a1, *a3));
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  if (v14)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v12;
  }

  if (*(a4 + 16) && (v17 = sub_1ABAFF5A4(a1), (v18 & 1) != 0))
  {
    v19 = *(a4 + 56) + 184 * v17;
    v21 = *(v19 + 16);
    v20 = *(v19 + 24);
    v23 = *(v19 + 128);
    v22 = *(v19 + 136);
    v41 = *(v19 + 144);
    v24 = *(v19 + 160);
    v35 = *(v19 + 48);
    v36 = *(v19 + 32);
    v39 = *(v19 + 80);
    v40 = *(v19 + 64);
    v37 = *(v19 + 112);
    v38 = *(v19 + 96);
    __src[0] = *v19;
    *&__src[1] = v21;
    *(&__src[1] + 1) = v20;
    __src[2] = v36;
    __src[3] = v35;
    __src[4] = v40;
    __src[5] = v39;
    __src[6] = v38;
    __src[7] = v37;
    *&__src[8] = v23;
    *(&__src[8] + 1) = v22;
    __src[9] = v41;
    *&__src[10] = v24;
    *(&__src[10] + 1) = v16;
    *&__src[11] = v15;
    nullsub_1();
    memcpy(a6, __dst, 0x88uLL);
    memcpy((a6 + 136), __src, 0xB8uLL);
    *(a6 + 320) = 0;
    *(a6 + 324) = 1;

    return sub_1ABB3E0C0(__dst, v42);
  }

  else
  {
    if (v11)
    {
      v26 = *a5;
      *v42 = *(a5 + 24);
      *&v42[16] = *(a5 + 40);
      v27 = qword_1ED871B18;

      swift_unknownObjectRetain();

      if (v27 != -1)
      {
        swift_once();
      }

      v28 = sub_1ABF237F4();
      sub_1ABA7AA24(v28, qword_1ED871B20);
      v44 = *&v42[8];

      swift_unknownObjectRetain();
      sub_1ABB3E558(&v44, __src);
      v29 = sub_1ABF237D4();
      v30 = sub_1ABF24664();
      swift_unknownObjectRelease();

      sub_1ABAFEEA0(&v44);
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *&__src[0] = v32;
        *v31 = 136315394;

        v33 = sub_1ABADD6D8(v26, v11, __src);

        *(v31 + 4) = v33;
        *(v31 + 12) = 2048;
        *(v31 + 14) = a1;
        _os_log_impl(&dword_1ABA78000, v29, v30, "Table(%s) misses features for MD_ID: %llu.", v31, 0x16u);
        sub_1ABA84B54(v32);
        MEMORY[0x1AC5AB8B0](v32, -1, -1);
        MEMORY[0x1AC5AB8B0](v31, -1, -1);
        swift_unknownObjectRelease();

        sub_1ABAFEEA0(&v44);
      }

      else
      {
        swift_unknownObjectRelease();

        sub_1ABAFEEA0(&v44);
      }
    }

    v34 = __dst[0];
    sub_1ABB3E0C0(__dst, __src);
    sub_1ABBE69B0(v34, v15, __src, v16);
    nullsub_1();
    memcpy(a6, __dst, 0x88uLL);
    result = memcpy((a6 + 136), __src, 0xB8uLL);
    *(a6 + 320) = 0;
    *(a6 + 324) = 1;
  }

  return result;
}

void *sub_1ABB3DD24()
{
  sub_1ABAB480C(v0 + 24, &qword_1EB4D3090, &qword_1ABF3AC20);
  sub_1ABB3DFF8(*(v0 + 64), *(v0 + 72), *(v0 + 80));
  sub_1ABAB480C(v0 + 112, &qword_1EB4D3098, &unk_1ABF3AC28);
  swift_unknownObjectRelease();
  sub_1ABB3E048(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  return v0;
}

uint64_t sub_1ABB3DD90()
{
  sub_1ABB3DD24();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TriplesQuery.FullTextSearchType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SearchPattern(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}