uint64_t sub_1BC688F48()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  if (*(v0 + 9) == 1)
  {
    sub_1BC6354C8(*v0, *(v0 + 8));
    if (v6 <= 1)
    {
      return v5;
    }
  }

  else
  {

    sub_1BC75BF70();
    v7 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC638C10(v5, v6, 0);
    (*(v2 + 8))(v4, v1);
    v5 = v9;
    v6 = v10;
    if (v10 <= 1u)
    {
      return v5;
    }
  }

  if (v6 == 2)
  {
    if (sub_1BC638C30(MEMORY[0x1E69E7CC0], v5))
    {
      sub_1BC638C1C(v5, 2);
      return MEMORY[0x1E69E7CC0];
    }
  }

  else if (v6 != 3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_1BC689104(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v18 = v8;
  v19 = v9;
  v20 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC958, &qword_1BC763158);
  sub_1BC75B640();
  v11 = v16;
  if (v16)
  {
    v12 = v17;
    LOBYTE(v18) = 1;
    v16(&v18);
    sub_1BC635484(v11, v12);
  }

  v18 = v8;
  v19 = v9;
  v20 = v10;
  v16 = 0;
  v17 = 0;
  sub_1BC75B650();
  v13 = type metadata accessor for InterventionConfig.Layout(0);
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  type metadata accessor for InterventionParticipantHistoryChecker(0);
  sub_1BC660024(v7, v5, &qword_1EBCDC878, &qword_1BC763F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A8, &qword_1BC762DA0);
  sub_1BC75B650();
  return sub_1BC66008C(v7, &qword_1EBCDC878, &qword_1BC763F00);
}

uint64_t sub_1BC6892DC(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(sub_1BC68CD3C, v5);
}

uint64_t sub_1BC68936C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_1BC68CD08;
  v8[1] = v6;

  a3(v8);
}

uint64_t sub_1BC689408(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for InterventionParticipantHistoryChecker(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v12 = *a1;
  v11 = a1[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;
  v14 = sub_1BC75BE10();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  sub_1BC68B6C8(a2, v7, type metadata accessor for InterventionParticipantHistoryChecker);
  sub_1BC75BDE0();

  v15 = sub_1BC75BDD0();
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = (v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  sub_1BC635348(v7, v18 + v16, type metadata accessor for InterventionParticipantHistoryChecker);
  v20 = (v18 + v17);
  *v20 = sub_1BC68CB30;
  v20[1] = v13;
  sub_1BC652910(0, 0, v10, &unk_1BC763148, v18);
}

uint64_t sub_1BC689640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  sub_1BC75BDE0();
  v6[10] = sub_1BC75BDD0();
  v8 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC6896DC, v8, v7);
}

uint64_t sub_1BC6896DC()
{
  v1 = *(v0 + 56);

  v2 = *(v1 + 24);
  *(v0 + 16) = *(v1 + 16);
  *(v0 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B640();
  if ((*(v0 + 40) & 1) == 0)
  {
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = *(v0 + 56);
    sub_1BC689884();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v7 = *(v5 + 48);
    *(v0 + 16) = *(v5 + 32);
    *(v0 + 32) = v7;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1BC68CC60;
    *(v8 + 24) = v6;
    *(v0 + 40) = sub_1BC68CD44;
    *(v0 + 48) = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC958, &qword_1BC763158);
    sub_1BC75B650();
    *(swift_task_alloc() + 16) = v5;
    sub_1BC75B820();
    sub_1BC75A870();
  }

  v9 = *(v0 + 8);

  return v9();
}

void sub_1BC689884()
{
  v1 = v0;
  v2 = type metadata accessor for InterventionConfig.Layout(0);
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for InterventionParticipantHistoryChecker(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v34 - v17);
  v19 = *(v0 + *(v4 + 40));
  v39 = v1;

  v20 = sub_1BC68AF44(sub_1BC68CB00, v38, v19);
  v21 = sub_1BC688F48();
  v22 = sub_1BC75A160();
  (*(*(v22 - 8) + 56))(v9, 1, 1, v22);
  static InterventionConfig.Layout.tryingToCall(validating:otherParticipants:callType:)(v21, v20, v9, v18);

  sub_1BC66008C(v9, &qword_1EBCDC868, &qword_1BC762D30);
  sub_1BC660024(v18, v16, &qword_1EBCDC878, &qword_1BC763F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A8, &qword_1BC762DA0);
  sub_1BC75B650();
  sub_1BC66008C(v18, &qword_1EBCDC878, &qword_1BC763F00);
  if (qword_1EDDCF480 != -1)
  {
    swift_once();
  }

  v23 = sub_1BC75A4E0();
  __swift_project_value_buffer(v23, qword_1EDDD1920);
  sub_1BC68B6C8(v1, v6, type metadata accessor for InterventionParticipantHistoryChecker);
  v24 = sub_1BC75A4C0();
  v25 = sub_1BC75BF40();
  v26 = v6;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40 = v28;
    *v27 = 136315138;
    sub_1BC75B640();
    if ((*(v36 + 48))(v13, 1, v37))
    {
      sub_1BC66008C(v13, &qword_1EBCDC878, &qword_1BC763F00);
      v29 = 0xE300000000000000;
      v30 = 7104878;
    }

    else
    {
      v31 = v35;
      sub_1BC68B6C8(v13, v35, type metadata accessor for InterventionConfig.Layout);
      sub_1BC66008C(v13, &qword_1EBCDC878, &qword_1BC763F00);
      v30 = InterventionConfig.Layout.debugDescription.getter();
      v29 = v32;
      sub_1BC68C880(v31, type metadata accessor for InterventionConfig.Layout);
    }

    sub_1BC68C880(v26, type metadata accessor for InterventionParticipantHistoryChecker);
    v33 = sub_1BC674BD8(v30, v29, &v40);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_1BC630000, v24, v25, "Layout Updated %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x1BFB27EF0](v28, -1, -1);
    MEMORY[0x1BFB27EF0](v27, -1, -1);
  }

  else
  {

    sub_1BC68C880(v6, type metadata accessor for InterventionParticipantHistoryChecker);
  }
}

void sub_1BC689DBC(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsUIContext(0);
  v67 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1BC759CA0();
  v70 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1BC759D00();
  v79 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1BC759C70();
  v78 = *(v73 - 8);
  v7 = MEMORY[0x1EEE9AC00](v73);
  v65 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v55 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v66 = v55 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v55 - v20;
  v22 = sub_1BC759EE0();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v68 = v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v69 = v55 - v26;
  v27 = *(a1 + 24);
  LOBYTE(v83) = *(a1 + 16);
  v84 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B640();
  if ((v81 & 1) == 0)
  {
    v64 = type metadata accessor for InterventionParticipantHistoryChecker(0);
    PolicyProperty.wrappedValue.getter(v21);
    if ((*(v23 + 48))(v21, 1, v22) == 1)
    {
      v28 = &unk_1EBCDBD90;
      v29 = &unk_1BC75F850;
    }

    else
    {
      v63 = v17;
      v30 = v69;
      (*(v23 + 32))(v69, v21, v22);
      v31 = *(sub_1BC688F48() + 16);

      if (!v31)
      {
        (*(v23 + 8))(v30, v22);
LABEL_16:
        sub_1BC689884();
        return;
      }

      v62 = v14;
      v60 = v23;
      v32 = *(v23 + 16);
      v61 = v22;
      v33 = v32(v68, v30, v22);
      v82 = 3;
      v34 = MEMORY[0x1E69E7CC0];
      v81 = MEMORY[0x1E69E7CC0];
      sub_1BC65E6C8(v33, v35, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC00, &qword_1BC75F170);
      sub_1BC633C54(&qword_1EBCDBC08, &qword_1EBCDBC00, &qword_1BC75F170, MEMORY[0x1E69E6328]);
      sub_1BC75C1B0();
      v81 = v83;
      v37 = sub_1BC688F48();
      v38 = *(v37 + 16);
      if (v38)
      {
        v56 = v10;
        v57 = v2;
        v58 = v4;
        v59 = a1;
        v80 = v34;
        sub_1BC68C8E0(0, v38, 0);
        v39 = v80;
        v72 = *(v79 + 16);
        v40 = (*(v79 + 80) + 32) & ~*(v79 + 80);
        v55[1] = v37;
        v41 = v37 + v40;
        v42 = *(v79 + 72);
        v43 = (v70 + 8);
        v79 += 16;
        v44 = (v79 - 8);
        v70 = v78 + 32;
        v71 = v42;
        v45 = v65;
        v46 = v74;
        do
        {
          v47 = v75;
          v72(v46, v41, v75);
          v48 = v76;
          sub_1BC759CF0();
          sub_1BC759BA0();
          (*v43)(v48, v77);
          (*v44)(v46, v47);
          v80 = v39;
          v50 = *(v39 + 16);
          v49 = *(v39 + 24);
          if (v50 >= v49 >> 1)
          {
            sub_1BC68C8E0((v49 > 1), v50 + 1, 1);
            v39 = v80;
          }

          *(v39 + 16) = v50 + 1;
          (*(v78 + 32))(v39 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v50, v45, v73);
          v41 += v71;
          --v38;
        }

        while (v38);

        v4 = v58;
        v2 = v57;
        v10 = v56;
      }

      else
      {

        v39 = MEMORY[0x1E69E7CC0];
      }

      sub_1BC68A6FC(v39, v10);

      v51 = v66;
      sub_1BC664670(v68, &unk_1F3B28FB8, 4, 0, 4, 0, 1, &v82, v66, &v81, v10);
      v52 = v67;
      (*(v67 + 56))(v51, 0, 1, v2);
      sub_1BC660024(v51, v63, &qword_1EBCDBC50, &qword_1BC762D70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
      sub_1BC75B650();
      sub_1BC66008C(v51, &qword_1EBCDBC50, &qword_1BC762D70);
      v21 = v62;
      sub_1BC75B640();
      v53 = (*(v52 + 48))(v21, 1, v2);
      v54 = v69;
      if (!v53)
      {
        sub_1BC68B6C8(v21, v4, type metadata accessor for AnalyticsUIContext);
        sub_1BC66008C(v21, &qword_1EBCDBC50, &qword_1BC762D70);
        sub_1BC665AC0();
        sub_1BC68C880(v4, type metadata accessor for AnalyticsUIContext);
        (*(v60 + 8))(v54, v61);
        goto LABEL_16;
      }

      (*(v60 + 8))(v69, v61);
      v28 = &qword_1EBCDBC50;
      v29 = &qword_1BC762D70;
    }

    sub_1BC66008C(v21, v28, v29);
    goto LABEL_16;
  }
}

uint64_t sub_1BC68A6FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1BC759C70();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v24 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v24 - v15;
  v33 = 0;
  v31 = sub_1BC68C20C(&qword_1EBCDC928, MEMORY[0x1E697B418], MEMORY[0x1E697B440]);
  sub_1BC75C790();
  v30 = *(v5 + 16);
  v30(a2, v16, v4);
  v17 = *(a1 + 16);
  if (v17)
  {
    v25 = v16;
    v26 = v5 + 16;
    v18 = (a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
    v19 = *(v5 + 72);
    v28 = v8;
    v29 = v19;
    v32 = (v5 + 8);
    v27 = (v5 + 32);
    do
    {
      v20 = v30;
      v30(v14, v18, v4);
      v21 = MEMORY[0x1E697B418];
      sub_1BC68C20C(&qword_1EBCDC930, MEMORY[0x1E697B418], MEMORY[0x1E697B428]);
      sub_1BC75BC70();
      sub_1BC75C790();
      v20(v28, v14, v4);
      sub_1BC68C20C(&qword_1EBCDBD78, v21, MEMORY[0x1E697B438]);
      sub_1BC75C190();
      v22 = *v32;
      (*v32)(v14, v4);
      v22(a2, v4);
      (*v27)(a2, v11, v4);
      v18 += v29;
      --v17;
    }

    while (v17);
    v16 = v25;
  }

  else
  {
    v22 = *(v5 + 8);
  }

  return (v22)(v16, v4);
}

uint64_t sub_1BC68AA28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v20 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = type metadata accessor for AnalyticsUIContext(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v20 - v15;
  type metadata accessor for InterventionParticipantHistoryChecker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
  sub_1BC75B640();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1BC66008C(v9, &qword_1EBCDBC50, &qword_1BC762D70);
  }

  sub_1BC635348(v9, v16, type metadata accessor for AnalyticsUIContext);
  v18 = *(a1 + 24);
  v22 = *(a1 + 16);
  v23 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B640();
  if ((v21 & 1) == 0)
  {
    v19 = *(sub_1BC688F48() + 16);

    if (v19)
    {
      sub_1BC68B6C8(v16, v14, type metadata accessor for AnalyticsUIContext);
      sub_1BC664BAC(v14, v7);
      (*(v11 + 56))(v7, 0, 1, v10);
      sub_1BC660024(v7, v20, &qword_1EBCDBC50, &qword_1BC762D70);
      sub_1BC75B650();
      sub_1BC66008C(v7, &qword_1EBCDBC50, &qword_1BC762D70);
    }
  }

  return sub_1BC68C880(v16, type metadata accessor for AnalyticsUIContext);
}

uint64_t sub_1BC68AD2C(uint64_t a1)
{
  v17 = a1;
  v16 = sub_1BC759FE0();
  v1 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BC759D00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BC688F48();
  v9 = result;
  v10 = 0;
  v11 = *(result + 16);
  v12 = (v1 + 8);
  v15[0] = v5 + 8;
  v15[1] = v5 + 16;
  while (1)
  {
    v13 = v10;
    if (v11 == v10)
    {
LABEL_5:

      return v11 == v13;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    (*(v5 + 16))(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10++, v4);
    sub_1BC759CC0();
    v14 = MEMORY[0x1BFB24B70](v17, v3);
    (*v12)(v3, v16);
    result = (*(v5 + 8))(v7, v4);
    if (v14)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC68AF44(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_1BC759FE0();
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x1E69E7CC0];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BC6701A4(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1BC6701A4((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_1BC68B214()
{
  if (qword_1EDDCF480 != -1)
  {
    swift_once();
  }

  v0 = sub_1BC75A4E0();

  return __swift_project_value_buffer(v0, qword_1EDDD1920);
}

uint64_t sub_1BC68B27C@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a3;
  v29 = a4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v8 = MEMORY[0x1EEE9AC00](v27);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 9) = HIBYTE(a2) & 1;
  LOBYTE(v30) = 0;
  sub_1BC75B630();
  v19 = *(&v32 + 1);
  *(a5 + 16) = v32;
  *(a5 + 24) = v19;
  v30 = 0;
  v31 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC870, &unk_1BC762D60);
  sub_1BC75B630();
  v20 = v33;
  *(a5 + 32) = v32;
  *(a5 + 48) = v20;
  v21 = type metadata accessor for InterventionParticipantHistoryChecker(0);
  v22 = type metadata accessor for InterventionConfig.Layout(0);
  (*(*(v22 - 8) + 56))(v18, 1, 1, v22);
  sub_1BC660024(v18, v16, &qword_1EBCDC878, &qword_1BC763F00);
  sub_1BC75B630();
  sub_1BC66008C(v18, &qword_1EBCDC878, &qword_1BC763F00);
  v23 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  sub_1BC660024(v12, v10, &qword_1EBCDBC50, &qword_1BC762D70);
  sub_1BC75B630();
  sub_1BC66008C(v12, &qword_1EBCDBC50, &qword_1BC762D70);
  PolicyProperty.init()((a5 + v21[9]));
  v24 = v29;
  *(a5 + v21[10]) = v28;
  return sub_1BC68B62C(v24, a5 + v21[11]);
}

uint64_t sub_1BC68B588()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EDDD1920);
  __swift_project_value_buffer(v0, qword_1EDDD1920);
  return sub_1BC75A4D0();
}

uint64_t sub_1BC68B62C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC68B6C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for InterventionParticipantHistoryChecker(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1BC638C10(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 9));

  if (*(v0 + v4 + 32))
  {
  }

  v6 = v5 + v1[7];
  v7 = type metadata accessor for InterventionConfig.Layout(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload > 5)
      {
        if (EnumCaseMultiPayload != 6)
        {
          if (EnumCaseMultiPayload != 7)
          {
            goto LABEL_17;
          }
        }
      }

      else
      {
        v10 = sub_1BC759D00();
        (*(*(v10 - 8) + 8))(v6, v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload > 1)
        {
          goto LABEL_17;
        }

        v9 = sub_1BC759CA0();
        goto LABEL_12;
      }

      if (EnumCaseMultiPayload != 2)
      {
        v9 = sub_1BC759DE0();
LABEL_12:
        (*(*(v9 - 8) + 8))(v6, v9);
        goto LABEL_17;
      }
    }
  }

LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A8, &qword_1BC762DA0);

  v11 = v5 + v1[8];
  v12 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v13 = sub_1BC759940();
    (*(*(v13 - 8) + 8))(v11, v13);

    v14 = *(v12 + 24);
    v15 = sub_1BC759EE0();
    (*(*(v15 - 8) + 8))(v11 + v14, v15);
    v16 = *(v12 + 48);
    v17 = sub_1BC759C70();
    (*(*(v17 - 8) + 8))(v11 + v16, v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);

  v18 = v5 + v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
    {
      v20 = sub_1BC759EE0();
      v21 = *(v20 - 8);
      if (!(*(v21 + 48))(v18, 1, v20))
      {
        (*(v21 + 8))(v18, v20);
      }
    }
  }

  else
  {
  }

  type metadata accessor for PolicyProperty(0);

  v22 = v1[11];
  v23 = sub_1BC75A160();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v5 + v22, 1, v23))
  {
    (*(v24 + 8))(v5 + v22, v23);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1BC68BC84()
{
  v1 = *(type metadata accessor for InterventionParticipantHistoryChecker(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  v9 = v3;
  v10 = v4;
  v11 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC958, &qword_1BC763158);
  sub_1BC75B640();
  if (v7)
  {
    LOBYTE(v9) = 0;
    v7(&v9);
    sub_1BC635484(v7, v8);
  }

  v9 = v3;
  v10 = v4;
  v11 = v5;
  return sub_1BC75B650();
}

uint64_t sub_1BC68BD6C(uint64_t *a1)
{
  v3 = *(type metadata accessor for InterventionParticipantHistoryChecker(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BC689408(a1, v4);
}

void sub_1BC68BDDC()
{
  v1 = *(type metadata accessor for InterventionParticipantHistoryChecker(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BC689DBC(v2);
}

unint64_t sub_1BC68BE3C()
{
  result = qword_1EBCDC8F0;
  if (!qword_1EBCDC8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC890, &qword_1BC762D88);
    sub_1BC68BEF4();
    sub_1BC633C54(&qword_1EDDCE788, &qword_1EBCDC920, qword_1BC762ED8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC8F0);
  }

  return result;
}

unint64_t sub_1BC68BEF4()
{
  result = qword_1EBCDC8F8;
  if (!qword_1EBCDC8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8D8, &qword_1BC762E70);
    sub_1BC68BFAC();
    sub_1BC633C54(&qword_1EDDCE008, &qword_1EBCDC8E0, &qword_1BC762E78, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC8F8);
  }

  return result;
}

unint64_t sub_1BC68BFAC()
{
  result = qword_1EBCDC900;
  if (!qword_1EBCDC900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8D0, &qword_1BC762E30);
    sub_1BC68C064();
    sub_1BC633C54(&qword_1EDDCE790, &qword_1EBCDC918, &qword_1BC762ED0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC900);
  }

  return result;
}

unint64_t sub_1BC68C064()
{
  result = qword_1EBCDC908;
  if (!qword_1EBCDC908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8C8, &qword_1BC762DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC888, &qword_1BC762D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC880, &qword_1BC762D78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8B8, &unk_1BC762DB0);
    sub_1BC633C54(&qword_1EDDCE7A8, &qword_1EBCDC8B8, &unk_1BC762DB0, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BC633C54(&qword_1EDDCE798, &qword_1EBCDC910, &unk_1BC763EE0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC908);
  }

  return result;
}

uint64_t sub_1BC68C20C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC68C26C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for InterventionParticipantHistoryChecker(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BC68C2E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDC938;
  if (!qword_1EBCDC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC938);
  }

  return result;
}

uint64_t sub_1BC68C340(uint64_t a1)
{
  result = sub_1BC759A90();
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

void sub_1BC68C3E0(uint64_t a1)
{
  type metadata accessor for IntervenableAction.BoolBox();
  sub_1BC68C758(319, &qword_1EDDCEE78, MEMORY[0x1E697B548], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BC68C80C(319, &qword_1EDDCEE58, MEMORY[0x1E697B640], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BC68C7A8(319, &qword_1EDDCE700, &qword_1EBCDC940, qword_1BC7697D0, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BC68C510(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC68C560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1BC68C5B4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntervenableAction.ButtonImageKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntervenableAction.ButtonImageKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BC68C758(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1BC68C7A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BC68C80C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BC68C880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1BC68C8E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1BC68C924(a1, a2, a3, *v3, &qword_1EBCDC950, &unk_1BC763130, MEMORY[0x1E697B418]);
  *v3 = result;
  return result;
}

void *sub_1BC68C924(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1BC68CB58()
{
  v2 = *(type metadata accessor for InterventionParticipantHistoryChecker(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BC65281C;

  return sub_1BC689640(v7, v8, v9, v0 + v3, v5, v6);
}

uint64_t sub_1BC68CC60(uint64_t result)
{
  if (result)
  {
    return (*(v1 + 16))();
  }

  return result;
}

uint64_t static SensitiveContentOverlay.Kind.standard(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = 0;
  *a4 = v8;
  v9 = a3;
}

uint64_t sub_1BC68CDC4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v211 = a2;
  v3 = sub_1BC759FE0();
  v4 = *(v3 - 8);
  KeyPath = v3;
  v210 = v4;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v174 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v193 = v174 - v8;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAB0, &qword_1BC763848);
  MEMORY[0x1EEE9AC00](v186);
  v187 = v174 - v9;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA38, &qword_1BC7637D8);
  MEMORY[0x1EEE9AC00](v203);
  v188 = v174 - v10;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAB8, &qword_1BC763850);
  MEMORY[0x1EEE9AC00](v194);
  v195 = v174 - v11;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA28, &qword_1BC7637D0);
  MEMORY[0x1EEE9AC00](v199);
  v196 = v174 - v12;
  v198 = _s6LayoutV4ModeOMa(0);
  v13 = MEMORY[0x1EEE9AC00](v198);
  v176 = (v174 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v197 = v174 - v15;
  v16 = _s6LayoutVMa(0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v177 = v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v205 = v174 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v179 = v174 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v206 = v174 - v23;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAC0, &qword_1BC763858);
  v207 = *(v212 - 8);
  v24 = MEMORY[0x1EEE9AC00](v212);
  v178 = v174 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v208 = v174 - v26;
  v185 = sub_1BC759D50();
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v182 = v174 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAC8, &qword_1BC763860);
  MEMORY[0x1EEE9AC00](v200);
  v202 = v174 - v28;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAD0, &qword_1BC763868);
  MEMORY[0x1EEE9AC00](v189);
  v191 = v174 - v29;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAD8, &qword_1BC763870);
  MEMORY[0x1EEE9AC00](v180);
  v181 = v174 - v30;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA10, &qword_1BC7637B8);
  MEMORY[0x1EEE9AC00](v190);
  v183 = v174 - v31;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA08, &qword_1BC7637B0);
  MEMORY[0x1EEE9AC00](v201);
  v192 = v174 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA00, &qword_1BC7637A8);
  MEMORY[0x1EEE9AC00](v33);
  v204 = v174 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA18, &qword_1BC7637C0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = v174 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAE0, &qword_1BC763878);
  MEMORY[0x1EEE9AC00](v38);
  v40 = v174 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAE8, &unk_1BC763880);
  MEMORY[0x1EEE9AC00](v41);
  v43 = v174 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA40, &qword_1BC7637E0);
  v45 = MEMORY[0x1EEE9AC00](v44);
  v47 = v174 - v46;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    v174[1] = v38;
    v175 = v40;
    v174[3] = v33;
    v174[2] = v45;
    v51 = v213;
    switch(a1 >> 60)
    {
      case 1uLL:
        v128 = v206;
        sub_1BC6EBA60(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20), *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28));
        v129 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF88, &qword_1BC75FA38) + 48);
        v130 = v197;
        SCAParticipant.structParticipant.getter();
        *(v130 + v129) = MEMORY[0x1E69E7CC0];
        swift_storeEnumTagMultiPayload();
        v131 = v205;
        sub_1BC6EBE04(v130, 0, v205);
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        v127 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8, MEMORY[0x1E697FDF8]);
        v101 = v208;
        sub_1BC6EB4BC(v128, v131, v126, v127, v208);
        sub_1BC697848(v131, _s6LayoutVMa);
        sub_1BC66008C(v128, &qword_1EBCDC970, &unk_1BC763180);
        v102 = v207;
        v103 = v212;
        (*(v207 + 16))(v195, v101, v212);
        goto LABEL_14;
      case 2uLL:
        v95 = v206;
        sub_1BC6EBA60(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20), *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28));
        v96 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
        v97 = v197;
        SCAParticipant.structParticipant.getter();
        *(v97 + v96) = MEMORY[0x1E69E7CC0];
        swift_storeEnumTagMultiPayload();
        v98 = v205;
        sub_1BC6EBE04(v97, 0, v205);
        v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        v100 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8, MEMORY[0x1E697FDF8]);
        v101 = v208;
        sub_1BC6EB4BC(v95, v98, v99, v100, v208);
        sub_1BC697848(v98, _s6LayoutVMa);
        sub_1BC66008C(v95, &qword_1EBCDC970, &unk_1BC763180);
        v102 = v207;
        v103 = v212;
        (*(v207 + 16))(v195, v101, v212);
        swift_storeEnumTagMultiPayload();
        v216 = v99;
        v217 = v100;
        swift_getOpaqueTypeConformance2();
        v104 = v196;
        sub_1BC75AE00();
        sub_1BC660024(v104, v187, &qword_1EBCDCA28, &qword_1BC7637D0);
        swift_storeEnumTagMultiPayload();
        sub_1BC695C18();
        v105 = v188;
        sub_1BC75AE00();
        sub_1BC66008C(v104, &qword_1EBCDCA28, &qword_1BC7637D0);
        v106 = &qword_1EBCDCA38;
        v107 = &qword_1BC7637D8;
        sub_1BC660024(v105, v202, &qword_1EBCDCA38, &qword_1BC7637D8);
        goto LABEL_15;
      case 3uLL:
        v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC960, &qword_1BC763170);
        v109 = swift_projectBox();
        v110 = *(v109 + *(v108 + 48));
        v111 = *(v108 + 64);
        v112 = KeyPath;
        v113 = v210[2];
        v114 = v193;
        v113(v193, v109, KeyPath);
        v85 = v206;
        sub_1BC660024(v109 + v111, v206, &qword_1EBCDC970, &unk_1BC763180);
        v115 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF88, &qword_1BC75FA38) + 48);
        v116 = v197;
        v113(v197, v114, v112);
        *(v116 + v115) = v110;
        swift_storeEnumTagMultiPayload();

        v117 = v205;
        sub_1BC6EBE04(v116, 0, v205);
        v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        v119 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8, MEMORY[0x1E697FDF8]);
        v91 = v208;
        sub_1BC6EB4BC(v85, v117, v118, v119, v208);
        sub_1BC697848(v117, _s6LayoutVMa);
        v92 = v207;
        v93 = v212;
        (*(v207 + 16))(v195, v91, v212);
        swift_storeEnumTagMultiPayload();
        v216 = v118;
        v217 = v119;
        swift_getOpaqueTypeConformance2();
        v94 = v196;
        sub_1BC75AE00();
        sub_1BC660024(v94, v187, &qword_1EBCDCA28, &qword_1BC7637D0);
        goto LABEL_11;
      case 4uLL:
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC968, &qword_1BC763178);
        v79 = swift_projectBox();
        v80 = *(v79 + *(v78 + 48));
        v81 = *(v78 + 64);
        v82 = KeyPath;
        v83 = v210[2];
        v84 = v193;
        v83(v193, v79, KeyPath);
        v85 = v206;
        sub_1BC660024(v79 + v81, v206, &qword_1EBCDC970, &unk_1BC763180);
        v86 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
        v87 = v197;
        v83(v197, v84, v82);
        *(v87 + v86) = v80;
        swift_storeEnumTagMultiPayload();

        v88 = v205;
        sub_1BC6EBE04(v87, 0, v205);
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        v90 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8, MEMORY[0x1E697FDF8]);
        v91 = v208;
        sub_1BC6EB4BC(v85, v88, v89, v90, v208);
        sub_1BC697848(v88, _s6LayoutVMa);
        v92 = v207;
        v93 = v212;
        (*(v207 + 16))(v195, v91, v212);
        swift_storeEnumTagMultiPayload();
        v216 = v89;
        v217 = v90;
        swift_getOpaqueTypeConformance2();
        v94 = v196;
        sub_1BC75AE00();
        sub_1BC660024(v94, v187, &qword_1EBCDCA28, &qword_1BC7637D0);
LABEL_11:
        swift_storeEnumTagMultiPayload();
        sub_1BC695C18();
        v120 = v188;
        sub_1BC75AE00();
        sub_1BC66008C(v94, &qword_1EBCDCA28, &qword_1BC7637D0);
        sub_1BC660024(v120, v202, &qword_1EBCDCA38, &qword_1BC7637D8);
        swift_storeEnumTagMultiPayload();
        sub_1BC6959D0();
        sub_1BC695D0C();
        v121 = v204;
        sub_1BC75AE00();
        sub_1BC66008C(v120, &qword_1EBCDCA38, &qword_1BC7637D8);
        sub_1BC660024(v121, v175, &qword_1EBCDCA00, &qword_1BC7637A8);
        swift_storeEnumTagMultiPayload();
        sub_1BC695944();
        sub_1BC695D90();
        sub_1BC75AE00();
        sub_1BC66008C(v121, &qword_1EBCDCA00, &qword_1BC7637A8);
        (*(v92 + 8))(v91, v93);
        sub_1BC66008C(v85, &qword_1EBCDC970, &unk_1BC763180);
        return (v210[1])(v193, KeyPath);
      case 5uLL:
        v134 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        sub_1BC6EBA60(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10), *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20));
        if (v134 >> 62)
        {
          v135 = sub_1BC75C3F0();
        }

        else
        {
          v135 = *((v134 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v136 = v212;
        v137 = v175;
        v138 = MEMORY[0x1E69E7CC0];
        if (!v135)
        {
          goto LABEL_29;
        }

        v216 = MEMORY[0x1E69E7CC0];
        result = sub_1BC6701A4(0, v135 & ~(v135 >> 63), 0);
        if (v135 < 0)
        {
          __break(1u);
        }

        else
        {
          v139 = 0;
          v138 = v216;
          do
          {
            if ((v134 & 0xC000000000000001) != 0)
            {
              v140 = MEMORY[0x1BFB26EB0](v139, v134);
            }

            else
            {
              v140 = *(v134 + 8 * v139 + 32);
            }

            v141 = v140;
            SCAParticipant.structParticipant.getter();

            v216 = v138;
            v143 = *(v138 + 16);
            v142 = *(v138 + 24);
            if (v143 >= v142 >> 1)
            {
              sub_1BC6701A4((v142 > 1), v143 + 1, 1);
              v138 = v216;
            }

            ++v139;
            *(v138 + 16) = v143 + 1;
            (v210[4])(v138 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + v210[9] * v143, v7, KeyPath);
          }

          while (v135 != v139);
          v136 = v212;
          v137 = v175;
LABEL_29:
          v164 = v176;
          *v176 = v138;
          swift_storeEnumTagMultiPayload();
          v165 = v177;
          sub_1BC6EBE04(v164, 0, v177);
          v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
          v167 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8, MEMORY[0x1E697FDF8]);
          v168 = v178;
          v169 = v179;
          sub_1BC6EB4BC(v179, v165, v166, v167, v178);
          sub_1BC697848(v165, _s6LayoutVMa);
          sub_1BC66008C(v169, &qword_1EBCDC970, &unk_1BC763180);
          v170 = v207;
          (*(v207 + 16))(v195, v168, v136);
          swift_storeEnumTagMultiPayload();
          v216 = v166;
          v217 = v167;
          swift_getOpaqueTypeConformance2();
          v171 = v196;
          sub_1BC75AE00();
          sub_1BC660024(v171, v187, &qword_1EBCDCA28, &qword_1BC7637D0);
          swift_storeEnumTagMultiPayload();
          sub_1BC695C18();
          v172 = v188;
          sub_1BC75AE00();
          sub_1BC66008C(v171, &qword_1EBCDCA28, &qword_1BC7637D0);
          sub_1BC660024(v172, v202, &qword_1EBCDCA38, &qword_1BC7637D8);
          swift_storeEnumTagMultiPayload();
          sub_1BC6959D0();
          sub_1BC695D0C();
          v173 = v204;
          sub_1BC75AE00();
          sub_1BC66008C(v172, &qword_1EBCDCA38, &qword_1BC7637D8);
          sub_1BC660024(v173, v137, &qword_1EBCDCA00, &qword_1BC7637A8);
          swift_storeEnumTagMultiPayload();
          sub_1BC695944();
          sub_1BC695D90();
          sub_1BC75AE00();
          sub_1BC66008C(v173, &qword_1EBCDCA00, &qword_1BC7637A8);
          result = (*(v170 + 8))(v168, v136);
        }

        break;
      case 6uLL:
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC978, &qword_1BC76E090);
        v145 = swift_projectBox();
        v147 = v145[1];
        KeyPath = *v145;
        v146 = KeyPath;
        v148 = v145[2];
        v149 = *(v184 + 16);
        v150 = v145 + *(v144 + 48);
        v151 = v182;
        v152 = v185;
        v149(v182, v150, v185);
        v210 = v148;

        v196 = v147;

        v153 = v206;
        sub_1BC6EBA60(v146, v147, v148);
        v154 = v197;
        v149(v197, v151, v152);
        swift_storeEnumTagMultiPayload();
        v155 = v205;
        sub_1BC6EBE04(v154, 0, v205);
        v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        v157 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8, MEMORY[0x1E697FDF8]);
        v158 = v208;
        sub_1BC6EB4BC(v153, v155, v156, v157, v208);
        sub_1BC697848(v155, _s6LayoutVMa);
        sub_1BC66008C(v153, &qword_1EBCDC970, &unk_1BC763180);
        v159 = v207;
        v160 = v212;
        (*(v207 + 16))(v181, v158, v212);
        swift_storeEnumTagMultiPayload();
        sub_1BC695B60();
        v216 = v156;
        v217 = v157;
        swift_getOpaqueTypeConformance2();
        v161 = v183;
        sub_1BC75AE00();
        sub_1BC660024(v161, v191, &qword_1EBCDCA10, &qword_1BC7637B8);
        swift_storeEnumTagMultiPayload();
        sub_1BC695A5C();
        sub_1BC695C18();
        v162 = v192;
        sub_1BC75AE00();
        sub_1BC66008C(v161, &qword_1EBCDCA10, &qword_1BC7637B8);
        sub_1BC660024(v162, v202, &qword_1EBCDCA08, &qword_1BC7637B0);
        swift_storeEnumTagMultiPayload();
        sub_1BC6959D0();
        sub_1BC695D0C();
        v163 = v204;
        sub_1BC75AE00();
        sub_1BC66008C(v162, &qword_1EBCDCA08, &qword_1BC7637B0);
        sub_1BC660024(v163, v175, &qword_1EBCDCA00, &qword_1BC7637A8);
        swift_storeEnumTagMultiPayload();
        sub_1BC695944();
        sub_1BC695D90();
        sub_1BC75AE00();

        sub_1BC66008C(v163, &qword_1EBCDCA00, &qword_1BC7637A8);
        (*(v159 + 8))(v158, v160);
        return (*(v184 + 8))(v182, v185);
      case 7uLL:
      case 8uLL:
      case 9uLL:
      case 0xAuLL:
        v52 = swift_projectBox();
        v53 = v52 + 1;
        v54 = (v52 + 2);
        goto LABEL_6;
      case 0xBuLL:
        v52 = ((a1 & 0xFFFFFFFFFFFFFFFLL) + 16);
        v53 = ((a1 & 0xFFFFFFFFFFFFFFFLL) + 24);
        v54 = ((a1 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
        v55 = *v53;
        v56 = *v52;
        v57 = *v54;

        v210 = v57;

        v58 = v206;
        sub_1BC6EBA60(v56, v55, v57);
        v59 = v205;
        sub_1BC6EBE54(v205);
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        v61 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8, MEMORY[0x1E697FDF8]);
        sub_1BC6EB4BC(v58, v59, v60, v61, v208);

        sub_1BC697848(v59, _s6LayoutVMa);
        sub_1BC66008C(v58, &qword_1EBCDC970, &unk_1BC763180);
        v62 = v207;
        v63 = v208;
        v64 = v212;
        (*(v207 + 16))(v43, v208, v212);
        swift_storeEnumTagMultiPayload();
        v216 = v60;
        v217 = v61;
        swift_getOpaqueTypeConformance2();
        sub_1BC75AE00();
        sub_1BC660024(v47, v175, &qword_1EBCDCA40, &qword_1BC7637E0);
        swift_storeEnumTagMultiPayload();
        sub_1BC695944();
        sub_1BC695D90();
        sub_1BC75AE00();
        sub_1BC66008C(v47, &qword_1EBCDCA40, &qword_1BC7637E0);
        result = (*(v62 + 8))(v63, v64);
        break;
      case 0xCuLL:
        v65 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v210 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v208 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        KeyPath = swift_getKeyPath();
        v215 = 0;
        v214 = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC980, &qword_1BC7631C0);
        sub_1BC75B630();
        v67 = v216;
        v66 = v217;
        v214 = 0xF000000000000007;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC988, &qword_1BC7631C8);
        sub_1BC75B630();
        v68 = v216;
        v69 = v217;
        v70 = v51;
        v71 = v215;
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        (*(*(v72 - 8) + 16))(v37, v70, v72);
        v73 = &v37[*(v35 + 36)];
        *v73 = KeyPath;
        *(v73 + 1) = 0;
        v73[16] = v71;
        *(v73 + 3) = v67;
        *(v73 + 4) = v66;
        *(v73 + 5) = v68;
        *(v73 + 6) = v69;
        *(v73 + 7) = v210;
        *(v73 + 8) = v65;
        *(v73 + 9) = v208;
        sub_1BC660024(v37, v181, &qword_1EBCDCA18, &qword_1BC7637C0);
        swift_storeEnumTagMultiPayload();
        sub_1BC695B60();
        v74 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8, MEMORY[0x1E697FDF8]);
        v216 = v72;
        v217 = v74;
        swift_getOpaqueTypeConformance2();
        v75 = v183;
        sub_1BC75AE00();
        sub_1BC660024(v75, v191, &qword_1EBCDCA10, &qword_1BC7637B8);
        swift_storeEnumTagMultiPayload();
        sub_1BC695A5C();
        sub_1BC695C18();
        v76 = v192;
        sub_1BC75AE00();
        sub_1BC66008C(v75, &qword_1EBCDCA10, &qword_1BC7637B8);
        sub_1BC660024(v76, v202, &qword_1EBCDCA08, &qword_1BC7637B0);
        swift_storeEnumTagMultiPayload();
        sub_1BC6959D0();
        sub_1BC695D0C();
        v77 = v204;
        sub_1BC75AE00();
        sub_1BC66008C(v76, &qword_1EBCDCA08, &qword_1BC7637B0);
        sub_1BC660024(v77, v175, &qword_1EBCDCA00, &qword_1BC7637A8);
        swift_storeEnumTagMultiPayload();
        sub_1BC695944();
        sub_1BC695D90();
        sub_1BC75AE00();

        sub_1BC66008C(v77, &qword_1EBCDCA00, &qword_1BC7637A8);
        result = sub_1BC66008C(v37, &qword_1EBCDCA18, &qword_1BC7637C0);
        break;
      default:
        v122 = *(a1 + 40);
        v123 = v206;
        sub_1BC6EBA60(*(a1 + 16), *(a1 + 24), *(a1 + 32));
        v124 = v197;
        swift_storeEnumTagMultiPayload();
        v125 = v205;
        sub_1BC6EBE04(v124, v122, v205);
        v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        v127 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8, MEMORY[0x1E697FDF8]);
        v101 = v208;
        sub_1BC6EB4BC(v123, v125, v126, v127, v208);
        sub_1BC697848(v125, _s6LayoutVMa);
        sub_1BC66008C(v123, &qword_1EBCDC970, &unk_1BC763180);
        v102 = v207;
        v103 = v212;
        (*(v207 + 16))(v195, v101, v212);
LABEL_14:
        swift_storeEnumTagMultiPayload();
        v216 = v126;
        v217 = v127;
        swift_getOpaqueTypeConformance2();
        v132 = v196;
        sub_1BC75AE00();
        sub_1BC660024(v132, v191, &qword_1EBCDCA28, &qword_1BC7637D0);
        swift_storeEnumTagMultiPayload();
        sub_1BC695A5C();
        sub_1BC695C18();
        v105 = v192;
        sub_1BC75AE00();
        sub_1BC66008C(v132, &qword_1EBCDCA28, &qword_1BC7637D0);
        v106 = &qword_1EBCDCA08;
        v107 = &qword_1BC7637B0;
        sub_1BC660024(v105, v202, &qword_1EBCDCA08, &qword_1BC7637B0);
LABEL_15:
        swift_storeEnumTagMultiPayload();
        sub_1BC6959D0();
        sub_1BC695D0C();
        v133 = v204;
        sub_1BC75AE00();
        sub_1BC66008C(v105, v106, v107);
        sub_1BC660024(v133, v175, &qword_1EBCDCA00, &qword_1BC7637A8);
        swift_storeEnumTagMultiPayload();
        sub_1BC695944();
        sub_1BC695D90();
        sub_1BC75AE00();
        sub_1BC66008C(v133, &qword_1EBCDCA00, &qword_1BC7637A8);
        result = (*(v102 + 8))(v101, v103);
        break;
    }
  }

  else
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
    (*(*(v48 - 8) + 16))(v43, v213, v48);
    swift_storeEnumTagMultiPayload();
    v49 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8, MEMORY[0x1E697FDF8]);
    v216 = v48;
    v217 = v49;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    sub_1BC660024(v47, v40, &qword_1EBCDCA40, &qword_1BC7637E0);
    swift_storeEnumTagMultiPayload();
    sub_1BC695944();
    sub_1BC695D90();
    sub_1BC75AE00();
    return sub_1BC66008C(v47, &qword_1EBCDCA40, &qword_1BC7637E0);
  }

  return result;
}

void *View.sensitiveContentShield(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v456 = a3;
  v457 = a1;
  v444 = *(a2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v459 = &v416 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v458 = &v416 - v6;
  *&v485[0] = v7;
  v461 = v8;
  *(&v485[0] + 1) = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = sub_1BC75AE10();
  v445 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v416 - v11;
  v448 = sub_1BC759FE0();
  v450 = *(v448 - 8);
  v13 = MEMORY[0x1EEE9AC00](v448);
  v443 = &v416 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v430 = &v416 - v15;
  v16 = sub_1BC75AE10();
  v17 = sub_1BC75AE10();
  v429 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v428 = &v416 - v19;
  v435 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v434 = &v416 - v20;
  v438 = _s6LayoutV4ModeOMa(0);
  v21 = MEMORY[0x1EEE9AC00](v438);
  v419 = (&v416 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v436 = &v416 - v23;
  v24 = _s6LayoutVMa(0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v418 = &v416 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v437 = &v416 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v421 = &v416 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v442 = &v416 - v32;
  v451 = *(OpaqueTypeMetadata2 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v417 = &v416 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v420 = &v416 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v447 = &v416 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v449 = &v416 - v39;
  v40 = sub_1BC759D50();
  v424 = *(v40 - 8);
  v425 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v422 = &v416 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1BC75A960();
  v43 = sub_1BC75AE10();
  v427 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v426 = &v416 - v44;
  v464 = v45;
  v465 = v16;
  v46 = sub_1BC75AE10();
  v432 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v431 = &v416 - v47;
  v463 = v48;
  v466 = v17;
  v49 = sub_1BC75AE10();
  v441 = *(v49 - 8);
  v50 = MEMORY[0x1EEE9AC00](v49);
  v440 = &v416 - v51;
  v52 = *(v42 - 8);
  v53 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v416 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v423 = &v416 - v56;
  v454 = v57;
  v455 = v10;
  v58 = sub_1BC75AE10();
  v452 = *(v58 - 8);
  v453 = v58;
  MEMORY[0x1EEE9AC00](v58);
  v59 = *v457;
  v462 = &v416 - v60;
  if ((~v59 & 0xF000000000000007) != 0)
  {
    v433 = OpaqueTypeMetadata2;
    v439 = v42;
    v446 = v3;
    v85 = v443;
    switch(v59 >> 60)
    {
      case 1uLL:
        v281 = v442;
        sub_1BC6EBA60(*((v59 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((v59 & 0xFFFFFFFFFFFFFFFLL) + 0x20), *((v59 & 0xFFFFFFFFFFFFFFFLL) + 0x28));
        v282 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF88, &qword_1BC75FA38) + 48);
        v283 = v436;
        SCAParticipant.structParticipant.getter();
        *(v283 + v282) = MEMORY[0x1E69E7CC0];
        swift_storeEnumTagMultiPayload();
        v284 = v437;
        sub_1BC6EBE04(v283, 0, v437);
        v285 = v446;
        v286 = v447;
        v84 = v461;
        sub_1BC6EB4BC(v281, v284, v446, v461, v447);
        sub_1BC697848(v284, _s6LayoutVMa);
        sub_1BC66008C(v281, &qword_1EBCDC970, &unk_1BC763180);
        *&v485[0] = v285;
        *(&v485[0] + 1) = v84;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v288 = v451;
        v289 = *(v451 + 16);
        v290 = v449;
        v291 = v286;
        v292 = v286;
        v293 = v433;
        v289(v449, v292, v433);
        v294 = *(v288 + 8);
        v451 = v288 + 8;
        v460 = v294;
        v294(v291, v293);
        v289(v291, v290, v293);
        v295 = v434;
        v296 = sub_1BC633720(v291, v293, v293, OpaqueTypeConformance2, OpaqueTypeConformance2);
        v299 = sub_1BC694E64(v296, v297, v298);
        v526 = v84;
        v527 = v299;
        WitnessTable = swift_getWitnessTable();
        v525 = OpaqueTypeConformance2;
        v300 = v464;
        v301 = swift_getWitnessTable();
        v522 = OpaqueTypeConformance2;
        v523 = OpaqueTypeConformance2;
        v302 = v465;
        v303 = swift_getWitnessTable();
        v304 = v431;
        sub_1BC633720(v295, v300, v302, v301, v303);
        (*(v435 + 8))(v295, v302);
        v520 = v301;
        v521 = v303;
        v305 = v463;
        v306 = swift_getWitnessTable();
        v518 = v303;
        v519 = v303;
        v307 = v466;
        v308 = swift_getWitnessTable();
        v214 = v440;
        sub_1BC633818(v304, v305, v307, v306, v308);
        (*(v432 + 8))(v304, v305);
        v516 = v306;
        v517 = v308;
        v215 = v454;
        v216 = swift_getWitnessTable();
        v514 = OpaqueTypeConformance2;
        v515 = v84;
        goto LABEL_14;
      case 2uLL:
        v188 = v442;
        sub_1BC6EBA60(*((v59 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((v59 & 0xFFFFFFFFFFFFFFFLL) + 0x20), *((v59 & 0xFFFFFFFFFFFFFFFLL) + 0x28));
        v189 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
        v190 = v436;
        SCAParticipant.structParticipant.getter();
        *(v190 + v189) = MEMORY[0x1E69E7CC0];
        swift_storeEnumTagMultiPayload();
        v191 = v437;
        sub_1BC6EBE04(v190, 0, v437);
        v192 = v446;
        v193 = v447;
        v84 = v461;
        sub_1BC6EB4BC(v188, v191, v446, v461, v447);
        sub_1BC697848(v191, _s6LayoutVMa);
        sub_1BC66008C(v188, &qword_1EBCDC970, &unk_1BC763180);
        *&v485[0] = v192;
        *(&v485[0] + 1) = v84;
        v194 = swift_getOpaqueTypeConformance2();
        v195 = v451;
        v196 = *(v451 + 16);
        v197 = v449;
        v198 = v193;
        v199 = v193;
        v200 = v433;
        v196(v449, v199, v433);
        v201 = *(v195 + 8);
        v451 = v195 + 8;
        v460 = v201;
        v201(v198, v200);
        v196(v198, v197, v200);
        v202 = v434;
        sub_1BC633818(v198, v200, v200, v194, v194);
        v540 = v194;
        v541 = v194;
        v203 = v465;
        v204 = swift_getWitnessTable();
        v205 = v428;
        sub_1BC633818(v202, v203, v203, v204, v204);
        v206 = (*(v435 + 8))(v202, v203);
        v209 = sub_1BC694E64(v206, v207, v208);
        v538 = v84;
        v539 = v209;
        v536 = swift_getWitnessTable();
        v537 = v194;
        v534 = swift_getWitnessTable();
        v535 = v204;
        v210 = v463;
        v211 = swift_getWitnessTable();
        v532 = v204;
        v533 = v204;
        v212 = v466;
        v213 = swift_getWitnessTable();
        v214 = v440;
        sub_1BC633720(v205, v210, v212, v211, v213);
        (*(v429 + 8))(v205, v212);
        v530 = v211;
        v531 = v213;
        v215 = v454;
        v216 = swift_getWitnessTable();
        v528 = v194;
        v529 = v84;
        goto LABEL_14;
      case 3uLL:
        v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC960, &qword_1BC763170);
        v218 = swift_projectBox();
        v219 = *(v218 + *(v217 + 48));
        v220 = *(v217 + 64);
        v221 = *(v450 + 16);
        v222 = v430;
        v223 = v448;
        v221(v430, v218);
        v224 = v218 + v220;
        v225 = v442;
        sub_1BC660024(v224, v442, &qword_1EBCDC970, &unk_1BC763180);
        v226 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF88, &qword_1BC75FA38) + 48);
        v227 = v436;
        (v221)(v436, v222, v223);
        *(v227 + v226) = v219;
        swift_storeEnumTagMultiPayload();

        v228 = v437;
        sub_1BC6EBE04(v227, 0, v437);
        v229 = v446;
        v230 = v447;
        v231 = v225;
        v232 = v461;
        sub_1BC6EB4BC(v231, v228, v446, v461, v447);
        sub_1BC697848(v228, _s6LayoutVMa);
        *&v485[0] = v229;
        *(&v485[0] + 1) = v232;
        v233 = swift_getOpaqueTypeConformance2();
        v234 = v451;
        v235 = *(v451 + 16);
        v236 = v449;
        v171 = v433;
        v235(v449, v230, v433);
        v237 = *(v234 + 8);
        v451 = v234 + 8;
        v460 = v237;
        v237(v230, v171);
        v235(v230, v236, v171);
        v238 = v434;
        sub_1BC633720(v230, v171, v171, v233, v233);
        v554 = v233;
        v555 = v233;
        v239 = v465;
        v240 = swift_getWitnessTable();
        v241 = v428;
        sub_1BC633818(v238, v239, v239, v240, v240);
        v242 = (*(v435 + 8))(v238, v239);
        v245 = sub_1BC694E64(v242, v243, v244);
        v552 = v232;
        v553 = v245;
        v550 = swift_getWitnessTable();
        v551 = v233;
        v548 = swift_getWitnessTable();
        v549 = v240;
        v246 = v463;
        v247 = swift_getWitnessTable();
        v546 = v240;
        v547 = v240;
        v248 = v466;
        v249 = swift_getWitnessTable();
        v185 = v440;
        sub_1BC633720(v241, v246, v248, v247, v249);
        (*(v429 + 8))(v241, v248);
        v544 = v247;
        v84 = v461;
        v545 = v249;
        v186 = v454;
        v187 = swift_getWitnessTable();
        v542 = v233;
        v543 = v84;
        goto LABEL_11;
      case 4uLL:
        v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC968, &qword_1BC763178);
        v152 = swift_projectBox();
        v153 = *(v152 + *(v151 + 48));
        v154 = *(v151 + 64);
        v155 = *(v450 + 16);
        v156 = v430;
        v157 = v448;
        v155(v430, v152, v448);
        v158 = v152 + v154;
        v159 = v442;
        sub_1BC660024(v158, v442, &qword_1EBCDC970, &unk_1BC763180);
        v160 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
        v161 = v436;
        v155(v436, v156, v157);
        *(v161 + v160) = v153;
        swift_storeEnumTagMultiPayload();

        v162 = v437;
        sub_1BC6EBE04(v161, 0, v437);
        v163 = v446;
        v164 = v447;
        v165 = v159;
        v166 = v461;
        sub_1BC6EB4BC(v165, v162, v446, v461, v447);
        sub_1BC697848(v162, _s6LayoutVMa);
        *&v485[0] = v163;
        *(&v485[0] + 1) = v166;
        v167 = swift_getOpaqueTypeConformance2();
        v168 = v451;
        v169 = *(v451 + 16);
        v170 = v449;
        v171 = v433;
        v169(v449, v164, v433);
        v172 = *(v168 + 8);
        v451 = v168 + 8;
        v460 = v172;
        v172(v164, v171);
        v169(v164, v170, v171);
        v173 = v434;
        sub_1BC633818(v164, v171, v171, v167, v167);
        v568 = v167;
        v569 = v167;
        v174 = v465;
        v175 = swift_getWitnessTable();
        v176 = v428;
        sub_1BC633720(v173, v174, v174, v175, v175);
        v177 = (*(v435 + 8))(v173, v174);
        v180 = sub_1BC694E64(v177, v178, v179);
        v566 = v166;
        v567 = v180;
        v564 = swift_getWitnessTable();
        v565 = v167;
        v562 = swift_getWitnessTable();
        v563 = v175;
        v181 = v463;
        v182 = swift_getWitnessTable();
        v560 = v175;
        v561 = v175;
        v183 = v466;
        v184 = swift_getWitnessTable();
        v185 = v440;
        sub_1BC633720(v176, v181, v183, v182, v184);
        (*(v429 + 8))(v176, v183);
        v558 = v182;
        v84 = v461;
        v559 = v184;
        v186 = v454;
        v187 = swift_getWitnessTable();
        v556 = v167;
        v557 = v84;
LABEL_11:
        v250 = v455;
        v251 = swift_getWitnessTable();
        sub_1BC633818(v185, v186, v250, v187, v251);
        (*(v441 + 8))(v185, v186);
        v252 = v460;
        v460(v447, v171);
        v252(v449, v171);
        v3 = v446;
        sub_1BC66008C(v442, &qword_1EBCDC970, &unk_1BC763180);
        v80 = (*(v450 + 8))(v430, v448);
        goto LABEL_30;
      case 5uLL:
        v314 = *((v59 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        sub_1BC6EBA60(*((v59 & 0xFFFFFFFFFFFFFFFLL) + 0x10), *((v59 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((v59 & 0xFFFFFFFFFFFFFFFLL) + 0x20));
        v315 = v314;
        if (v314 >> 62)
        {
          v415 = sub_1BC75C3F0();
          v315 = v314;
          v316 = v415;
        }

        else
        {
          v316 = *((v314 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v84 = v461;
        v317 = v433;
        v318 = MEMORY[0x1E69E7CC0];
        if (!v316)
        {
          goto LABEL_28;
        }

        v319 = v315;
        *&v485[0] = MEMORY[0x1E69E7CC0];
        result = sub_1BC6701A4(0, v316 & ~(v316 >> 63), 0);
        v459 = v316;
        if (v316 < 0)
        {
          __break(1u);
          return result;
        }

        v321 = 0;
        v318 = *&v485[0];
        v322 = v319;
        v323 = v319 & 0xC000000000000001;
        v324 = v319;
        do
        {
          if (v323)
          {
            v325 = MEMORY[0x1BFB26EB0](v321, v322);
          }

          else
          {
            v325 = *(v322 + 8 * v321 + 32);
          }

          v326 = v325;
          SCAParticipant.structParticipant.getter();

          *&v485[0] = v318;
          v328 = *(v318 + 16);
          v327 = *(v318 + 24);
          if (v328 >= v327 >> 1)
          {
            sub_1BC6701A4((v327 > 1), v328 + 1, 1);
            v318 = *&v485[0];
          }

          ++v321;
          *(v318 + 16) = v328 + 1;
          (*(v450 + 32))(v318 + ((*(v450 + 80) + 32) & ~*(v450 + 80)) + *(v450 + 72) * v328, v85, v448);
          v322 = v324;
        }

        while (v459 != v321);
        v84 = v461;
        v317 = v433;
LABEL_28:
        v372 = v419;
        *v419 = v318;
        swift_storeEnumTagMultiPayload();
        v373 = v418;
        sub_1BC6EBE04(v372, 0, v418);
        v374 = v417;
        v375 = v421;
        v376 = v446;
        sub_1BC6EB4BC(v421, v373, v446, v84, v417);
        sub_1BC697848(v373, _s6LayoutVMa);
        sub_1BC66008C(v375, &qword_1EBCDC970, &unk_1BC763180);
        *&v485[0] = v376;
        *(&v485[0] + 1) = v84;
        v377 = swift_getOpaqueTypeConformance2();
        v378 = v451;
        v379 = *(v451 + 16);
        v380 = v420;
        v379(v420, v374, v317);
        v381 = *(v378 + 8);
        v451 = v378 + 8;
        v460 = v381;
        v381(v374, v317);
        v382 = v449;
        v379(v449, v380, v317);
        v383 = v434;
        sub_1BC633720(v382, v317, v317, v377, v377);
        v582 = v377;
        v583 = v377;
        v384 = v465;
        v385 = swift_getWitnessTable();
        v386 = v428;
        sub_1BC633720(v383, v384, v384, v385, v385);
        v387 = (*(v435 + 8))(v383, v384);
        v390 = sub_1BC694E64(v387, v388, v389);
        v580 = v84;
        v581 = v390;
        v578 = swift_getWitnessTable();
        v579 = v377;
        v576 = swift_getWitnessTable();
        v577 = v385;
        v391 = v463;
        v392 = swift_getWitnessTable();
        v574 = v385;
        v575 = v385;
        v393 = v466;
        v394 = swift_getWitnessTable();
        v395 = v440;
        sub_1BC633720(v386, v391, v393, v392, v394);
        (*(v429 + 8))(v386, v393);
        v572 = v392;
        v573 = v394;
        v396 = v454;
        v397 = swift_getWitnessTable();
        v570 = v377;
        v571 = v84;
        v398 = v455;
        v399 = swift_getWitnessTable();
        sub_1BC633818(v395, v396, v398, v397, v399);
        v400 = v395;
        v3 = v446;
        (*(v441 + 8))(v400, v396);
        v401 = v433;
        v402 = v460;
        v460(v449, v433);
        v80 = v402(v420, v401);
LABEL_30:
        v83 = v456;
        break;
      case 6uLL:
        v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC978, &qword_1BC76E090);
        v330 = swift_projectBox();
        v331 = v330[1];
        v458 = *v330;
        v332 = v458;
        v333 = v330[2];
        v334 = v425;
        v335 = *(v424 + 16);
        v336 = v422;
        v335(v422, v330 + *(v329 + 48), v425);
        v459 = v333;

        v457 = v331;

        v337 = v442;
        sub_1BC6EBA60(v332, v331, v333);
        v338 = v436;
        v335(v436, v336, v334);
        swift_storeEnumTagMultiPayload();
        v339 = v437;
        sub_1BC6EBE04(v338, 0, v437);
        v340 = v447;
        v341 = v461;
        sub_1BC6EB4BC(v337, v339, v446, v461, v447);
        sub_1BC697848(v339, _s6LayoutVMa);
        sub_1BC66008C(v337, &qword_1EBCDC970, &unk_1BC763180);
        *&v485[0] = v446;
        *(&v485[0] + 1) = v341;
        v342 = v341;
        v343 = swift_getOpaqueTypeConformance2();
        v344 = v451;
        v345 = *(v451 + 16);
        v346 = v449;
        v347 = v433;
        v345(v449, v340, v433);
        v348 = *(v344 + 8);
        v451 = v344 + 8;
        v460 = v348;
        v348(v340, v347);
        v349 = (v345)(v340, v346, v347);
        v352 = sub_1BC694E64(v349, v350, v351);
        v498 = v342;
        v499 = v352;
        v353 = v439;
        v354 = swift_getWitnessTable();
        v355 = v426;
        sub_1BC633720(v340, v353, v347, v354, v343);
        v496 = v354;
        v497 = v343;
        v356 = v464;
        v357 = swift_getWitnessTable();
        v494 = v343;
        v495 = v343;
        v358 = v465;
        v359 = swift_getWitnessTable();
        v360 = v431;
        sub_1BC633818(v355, v356, v358, v357, v359);
        (*(v427 + 8))(v355, v356);
        v492 = v357;
        v493 = v359;
        v361 = v463;
        v362 = swift_getWitnessTable();
        v490 = v359;
        v491 = v359;
        v363 = v466;
        v364 = swift_getWitnessTable();
        v365 = v440;
        sub_1BC633818(v360, v361, v363, v362, v364);
        (*(v432 + 8))(v360, v361);
        v488 = v362;
        v489 = v364;
        v366 = v454;
        v367 = swift_getWitnessTable();
        v486 = v343;
        v368 = v461;
        v487 = v461;
        v369 = v455;
        v370 = swift_getWitnessTable();
        sub_1BC633818(v365, v366, v369, v367, v370);

        (*(v441 + 8))(v365, v366);
        v371 = v460;
        v460(v447, v347);
        v371(v449, v347);
        v84 = v368;
        v3 = v446;
        v80 = (*(v424 + 8))(v422, v425);
        goto LABEL_30;
      case 7uLL:
      case 8uLL:
      case 9uLL:
      case 0xAuLL:
        v459 = v12;
        v86 = swift_projectBox();
        v87 = v86 + 1;
        v88 = (v86 + 2);
        goto LABEL_6;
      case 0xBuLL:
        v459 = v12;
        v86 = ((v59 & 0xFFFFFFFFFFFFFFFLL) + 16);
        v87 = ((v59 & 0xFFFFFFFFFFFFFFFLL) + 24);
        v88 = ((v59 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
        v89 = *v87;
        v90 = *v86;
        v91 = *v88;

        v92 = v91;

        v93 = v446;
        v94 = v447;
        v84 = v461;
        View.sensitiveContentOverlay(for:options:)(v90, v89, v91, v446, v461, v447);

        *&v485[0] = v93;
        *(&v485[0] + 1) = v84;
        v95 = swift_getOpaqueTypeConformance2();
        v96 = v451;
        v97 = *(v451 + 16);
        v98 = v449;
        v99 = v433;
        v97(v449, v94, v433);
        v460 = *(v96 + 8);
        v460(v94, v99);
        v97(v94, v98, v99);
        v100 = v459;
        v101 = sub_1BC633818(v94, v99, v446, v95, v84);
        v104 = sub_1BC694E64(v101, v102, v103);
        v596 = v84;
        v597 = v104;
        v594 = swift_getWitnessTable();
        v595 = v95;
        v105 = swift_getWitnessTable();
        v592 = v95;
        v593 = v95;
        v106 = swift_getWitnessTable();
        v590 = v105;
        v591 = v106;
        v107 = swift_getWitnessTable();
        v588 = v106;
        v589 = v106;
        v108 = swift_getWitnessTable();
        v586 = v107;
        v587 = v108;
        v109 = v100;
        v110 = v454;
        v111 = swift_getWitnessTable();
        v584 = v95;
        v585 = v84;
        v112 = v455;
        v113 = swift_getWitnessTable();
        sub_1BC633720(v109, v110, v112, v111, v113);
        (*(v445 + 8))(v109, v112);
        v114 = v460;
        v460(v447, v99);
        v115 = v99;
        v3 = v446;
        v80 = v114(v449, v115);
        goto LABEL_30;
      case 0xCuLL:
        v116 = *((v59 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v459 = *((v59 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v117 = *((v59 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        KeyPath = swift_getKeyPath();
        v484 = 0;
        *&v481 = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v458 = v116;
        swift_retain_n();
        v457 = v117;
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC980, &qword_1BC7631C0);
        sub_1BC75B630();
        v119 = v485[0];
        *&v481 = 0xF000000000000007;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC988, &qword_1BC7631C8);
        sub_1BC75B630();
        v481 = KeyPath;
        v482[0] = v484;
        *&v482[8] = v119;
        *&v482[24] = v485[0];
        *&v482[40] = v459;
        *&v483 = v116;
        *(&v483 + 1) = v117;
        v120 = v446;
        v121 = v461;
        MEMORY[0x1BFB25FF0](&v481, v446, &type metadata for StackingModifier);
        v485[1] = *v482;
        v485[2] = *&v482[16];
        v485[3] = *&v482[32];
        v485[4] = v483;
        v485[0] = v481;
        v122 = sub_1BC694EB8(v485);
        v125 = sub_1BC694E64(v122, v123, v124);
        v479 = v121;
        v480 = v125;
        v126 = v439;
        v127 = swift_getWitnessTable();
        v128 = *(v52 + 16);
        v129 = v423;
        v128(v423, v55, v126);
        v130 = *(v52 + 8);
        v451 = v52 + 8;
        v460 = v130;
        v130(v55, v126);
        v128(v55, v129, v126);
        *&v481 = v120;
        *(&v481 + 1) = v121;
        v131 = swift_getOpaqueTypeConformance2();
        v132 = v426;
        sub_1BC633818(v55, v126, v433, v127, v131);
        v477 = v127;
        v478 = v131;
        v133 = v464;
        v134 = swift_getWitnessTable();
        v475 = v131;
        v476 = v131;
        v135 = v465;
        v136 = swift_getWitnessTable();
        v137 = v431;
        sub_1BC633818(v132, v133, v135, v134, v136);
        (*(v427 + 8))(v132, v133);
        v473 = v134;
        v474 = v136;
        v138 = v463;
        v139 = swift_getWitnessTable();
        v471 = v136;
        v472 = v136;
        v140 = v466;
        v141 = swift_getWitnessTable();
        v142 = v440;
        sub_1BC633818(v137, v138, v140, v139, v141);
        (*(v432 + 8))(v137, v138);
        v469 = v139;
        v470 = v141;
        v3 = v446;
        v143 = v454;
        v144 = swift_getWitnessTable();
        v84 = v461;
        v467 = v131;
        v468 = v461;
        v145 = v455;
        v146 = swift_getWitnessTable();
        v147 = v145;
        v148 = v439;
        sub_1BC633818(v142, v143, v147, v144, v146);

        (*(v441 + 8))(v142, v143);
        v149 = v55;
        v150 = v460;
        v460(v149, v148);
        v80 = v150(v423, v148);
        goto LABEL_30;
      default:
        v253 = *(v59 + 40);
        v254 = v442;
        sub_1BC6EBA60(*(v59 + 16), *(v59 + 24), *(v59 + 32));
        v255 = v436;
        swift_storeEnumTagMultiPayload();
        v256 = v437;
        sub_1BC6EBE04(v255, v253, v437);
        v257 = v446;
        v258 = v447;
        v84 = v461;
        sub_1BC6EB4BC(v254, v256, v446, v461, v447);
        sub_1BC697848(v256, _s6LayoutVMa);
        sub_1BC66008C(v254, &qword_1EBCDC970, &unk_1BC763180);
        *&v485[0] = v257;
        *(&v485[0] + 1) = v84;
        v259 = swift_getOpaqueTypeConformance2();
        v260 = v451;
        v261 = *(v451 + 16);
        v262 = v449;
        v263 = v258;
        v264 = v258;
        v265 = v433;
        v261(v449, v264, v433);
        v266 = *(v260 + 8);
        v451 = v260 + 8;
        v460 = v266;
        v266(v263, v265);
        v261(v263, v262, v265);
        v267 = v434;
        v268 = sub_1BC633818(v263, v265, v265, v259, v259);
        v271 = sub_1BC694E64(v268, v269, v270);
        v512 = v84;
        v513 = v271;
        v510 = swift_getWitnessTable();
        v511 = v259;
        v272 = v464;
        v273 = swift_getWitnessTable();
        v508 = v259;
        v509 = v259;
        v274 = v465;
        v275 = swift_getWitnessTable();
        v276 = v431;
        sub_1BC633720(v267, v272, v274, v273, v275);
        (*(v435 + 8))(v267, v274);
        v506 = v273;
        v507 = v275;
        v277 = v463;
        v278 = swift_getWitnessTable();
        v504 = v275;
        v505 = v275;
        v279 = v466;
        v280 = swift_getWitnessTable();
        v214 = v440;
        sub_1BC633818(v276, v277, v279, v278, v280);
        (*(v432 + 8))(v276, v277);
        v502 = v278;
        v503 = v280;
        v215 = v454;
        v216 = swift_getWitnessTable();
        v500 = v259;
        v501 = v84;
LABEL_14:
        v309 = v455;
        v310 = swift_getWitnessTable();
        sub_1BC633818(v214, v215, v309, v216, v310);
        v311 = v214;
        v3 = v446;
        (*(v441 + 8))(v311, v215);
        v312 = v433;
        v313 = v460;
        v460(v447, v433);
        v80 = v313(v449, v312);
        goto LABEL_30;
    }
  }

  else
  {
    v61 = v444;
    v62 = *(v444 + 16);
    v63 = v458;
    v62(v458, v460, v3);
    v64 = v459;
    v62(v459, v63, v3);
    *&v485[0] = v3;
    v65 = v461;
    *(&v485[0] + 1) = v461;
    v66 = swift_getOpaqueTypeConformance2();
    v67 = sub_1BC633720(v64, OpaqueTypeMetadata2, v3, v66, v65);
    v70 = sub_1BC694E64(v67, v68, v69);
    v626 = v65;
    v627 = v70;
    v624 = swift_getWitnessTable();
    v625 = v66;
    v71 = swift_getWitnessTable();
    v622 = v66;
    v623 = v66;
    v72 = swift_getWitnessTable();
    v620 = v71;
    v621 = v72;
    v73 = swift_getWitnessTable();
    v618 = v72;
    v619 = v72;
    v74 = swift_getWitnessTable();
    v616 = v73;
    v617 = v74;
    v75 = v454;
    v76 = swift_getWitnessTable();
    v614 = v66;
    v615 = v65;
    v77 = v455;
    v78 = swift_getWitnessTable();
    sub_1BC633720(v12, v75, v77, v76, v78);
    (*(v445 + 8))(v12, v77);
    v79 = *(v61 + 8);
    v79(v459, v3);
    v80 = (v79)(v458, v3);
    v83 = v456;
    v84 = v65;
  }

  v403 = sub_1BC694E64(v80, v81, v82);
  v612 = v84;
  v613 = v403;
  v404 = swift_getWitnessTable();
  *&v485[0] = v3;
  *(&v485[0] + 1) = v84;
  v405 = swift_getOpaqueTypeConformance2();
  v610 = v404;
  v611 = v405;
  v406 = swift_getWitnessTable();
  v608 = v405;
  v609 = v405;
  v407 = swift_getWitnessTable();
  v606 = v406;
  v607 = v407;
  v408 = swift_getWitnessTable();
  v604 = v407;
  v605 = v407;
  v409 = swift_getWitnessTable();
  v602 = v408;
  v603 = v409;
  v410 = swift_getWitnessTable();
  v600 = v405;
  v601 = v84;
  v411 = swift_getWitnessTable();
  v598 = v410;
  v599 = v411;
  v412 = v453;
  swift_getWitnessTable();
  v413 = v452;
  v414 = v462;
  (*(v452 + 16))(v83, v462, v412);
  return (*(v413 + 8))(v414, v412);
}

uint64_t View.sensitiveContentOverlay(for:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v13 = _s6LayoutVMa(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v20 - v17;
  sub_1BC6EBA60(a1, a2, a3);
  sub_1BC6EBE54(v15);
  sub_1BC6EB4BC(v18, v15, a5, a6, x8_0);
  sub_1BC697848(v15, _s6LayoutVMa);
  return sub_1BC66008C(v18, &qword_1EBCDC970, &unk_1BC763180);
}

uint64_t View.sensitiveContentOverlay(forVideoCallWith:analysis:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  v13 = v12 | 0x1000000000000000;
  v17 = v12 | 0x1000000000000000;
  v14 = a4;
  v15 = a1;

  View.sensitiveContentShield(_:)(&v17, a5, a6);

  return sub_1BC694EE8(v13);
}

uint64_t View.sensitiveContentOverlay(forVideoCallWithJoiningParticipant:analysis:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  v13 = v12 | 0x2000000000000000;
  v17 = v12 | 0x2000000000000000;
  v14 = a4;
  v15 = a1;

  View.sensitiveContentShield(_:)(&v17, a5, a6);

  return sub_1BC694EE8(v13);
}

uint64_t View.sensitiveContentOverlay(forThumbnailWith:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC990, &unk_1BC7631D0);
  sub_1BC75B750();
  v7 = v5 | 0xB000000000000000;
  View.sensitiveContentShield(_:)(&v7, a2, a3);
  return sub_1BC694EE8(v5 | 0xB000000000000000);
}

uint64_t View.sensitiveContentOverlay(forThumbnailWith:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v6 = sub_1BC759CA0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v19 - v14;
  sub_1BC660024(a1, &v19 - v14, &qword_1EBCDC998, &qword_1BC7641A0);
  v16 = 0;
  if ((*(v7 + 48))(v15, 1, v6) != 1)
  {
    (*(v7 + 32))(v12, v15, v6);
    sub_1BC694F54();
    (*(v7 + 16))(v10, v12, v6);
    v16 = sub_1BC75BFF0();
    (*(v7 + 8))(v12, v6);
  }

  v17 = swift_allocObject();
  v22 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC990, &unk_1BC7631D0);
  sub_1BC75B750();

  v17 |= 0xB000000000000000;
  v22 = v17;
  View.sensitiveContentShield(_:)(&v22, v20, a4);
  return sub_1BC694EE8(v17);
}

uint64_t View.sensitiveContentOverlay(for:options:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v9 = _s6LayoutVMa(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6EBE54(v11);
  sub_1BC6EB4BC(a1, v11, a3, a4, x8_0);
  return sub_1BC697848(v11, _s6LayoutVMa);
}

uint64_t SensitiveParticipantWithCallback.participant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC759D00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SensitiveParticipantWithCallback.callback.getter()
{
  v1 = *(v0 + *(type metadata accessor for SensitiveParticipantWithCallback(0) + 20));

  return v1;
}

uint64_t SensitiveParticipantWithCallback.init(participant:callback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BC759D00();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for SensitiveParticipantWithCallback(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1BC692518()
{
  v1 = v0;
  v2 = sub_1BC759FE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StackingModifier.Key(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75C700();
  sub_1BC695E88(v1, v8, type metadata accessor for StackingModifier.Key);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x1BFB272F0](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1BFB272F0](1);
    sub_1BC6978A8(&qword_1EDDCEE68, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C0]);
    sub_1BC75BA70();
    (*(v3 + 8))(v5, v2);
  }

  return sub_1BC75C720();
}

uint64_t sub_1BC692708(uint64_t a1)
{
  v2 = sub_1BC759FE0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC695E88(v1, v8, type metadata accessor for StackingModifier.Key);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return MEMORY[0x1BFB272F0](0);
  }

  (*(v3 + 32))(v6, v8, v2);
  MEMORY[0x1BFB272F0](1);
  sub_1BC6978A8(&qword_1EDDCEE68, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C0]);
  sub_1BC75BA70();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1BC6928D4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1BC759FE0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75C700();
  sub_1BC695E88(v2, v9, type metadata accessor for StackingModifier.Key);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    MEMORY[0x1BFB272F0](0);
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    MEMORY[0x1BFB272F0](1);
    sub_1BC6978A8(&qword_1EDDCEE68, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C0]);
    sub_1BC75BA70();
    (*(v4 + 8))(v7, v3);
  }

  return sub_1BC75C720();
}

uint64_t sub_1BC692ACC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v52 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - v5;
  v7 = sub_1BC759CA0();
  v49 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v50 = type metadata accessor for StackingModifier.Entry(0);
  v19 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v23 = v22 >> 60;
  if ((v22 >> 60) <= 6)
  {
    if (v23 > 3)
    {
      if (v23 != 4)
      {
        if (v23 == 5)
        {
          v24 = 32;
          v25 = 24;
          v26 = 16;
LABEL_9:
          v28 = v22 & 0xFFFFFFFFFFFFFFFLL;
          v29 = *(v28 + v26);
          v30 = *(v28 + v25);
          v31 = *(v28 + v24);
          v32 = v31;

          v53 = v29;
          v54 = v30;
          v55 = v31;
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAA8, &qword_1BC763840);
          MEMORY[0x1BFB262E0](&v56, v33);

          v34 = v56;
          if (v56)
          {
            sub_1BC75BFE0();

            v35 = *(v49 + 32);
            v35(v15, v13, v7);
            v36 = v21;
            v37 = v15;
LABEL_20:
            v35(v36, v37, v7);
            v27 = v50;
            v45 = v51;
            v46 = &v21[*(v50 + 20)];
            *v46 = sub_1BC6978F0;
            v46[1] = v45;
            v47 = v52;
            sub_1BC695EF0(v21, v52, type metadata accessor for StackingModifier.Entry);
            v39 = v47;
            v38 = 0;
            return (*(v19 + 56))(v39, v38, 1, v27);
          }

          goto LABEL_13;
        }

LABEL_12:

LABEL_13:

LABEL_18:
        v38 = 1;
        v39 = v52;
        v27 = v50;
        return (*(v19 + 56))(v39, v38, 1, v27);
      }

      v40 = &qword_1EBCDC968;
      v41 = &qword_1BC763178;
    }

    else
    {
      if ((v23 - 1) < 2)
      {
        v24 = 40;
        v25 = 32;
        v26 = 24;
        goto LABEL_9;
      }

      if (!v23)
      {
        goto LABEL_12;
      }

      v40 = &qword_1EBCDC960;
      v41 = &qword_1BC763170;
    }

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v40, v41);
    v43 = swift_projectBox();
    sub_1BC660024(v43 + *(v42 + 64), v18, &qword_1EBCDC970, &unk_1BC763180);

    MEMORY[0x1BFB262E0](v16);
    sub_1BC66008C(v18, &qword_1EBCDC970, &unk_1BC763180);
    v44 = v49;
    if ((*(v49 + 48))(v6, 1, v7) != 1)
    {
      v35 = *(v44 + 32);
      v35(v10, v6, v7);
      v36 = v21;
      v37 = v10;
      goto LABEL_20;
    }

    sub_1BC66008C(v6, &qword_1EBCDC998, &qword_1BC7641A0);
    goto LABEL_18;
  }

  v27 = v50;

  v38 = 1;
  v39 = v52;
  return (*(v19 + 56))(v39, v38, 1, v27);
}

uint64_t sub_1BC692FC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC9C0, &qword_1BC763770);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20 - v2;
  v4 = v0[3];
  v5 = v0[4];
  v25 = v0[2];
  *v26 = v4;
  *&v26[16] = v5;
  v6 = v0[1];
  v23 = *v0;
  v24 = v6;
  v20 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC9C8, &qword_1BC763778);
  sub_1BC75B640();
  v7 = v22;
  sub_1BC68CDC4(v22, v3);
  sub_1BC694EE8(v7);
  v20 = *&v26[8];
  v21 = *&v26[24];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC9D0, &qword_1BC763780);
  MEMORY[0x1BFB262E0](&v22, v8);
  v9 = *(v22 + 16);

  v10 = swift_allocObject();
  v11 = *v26;
  v10[3] = v25;
  v10[4] = v11;
  v10[5] = *&v26[16];
  v12 = v24;
  v10[1] = v23;
  v10[2] = v12;
  v13 = &v3[*(v1 + 36)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC9D8, &qword_1BC763798);
  sub_1BC69573C(&v23, &v20);
  sub_1BC75BDF0();
  *&v13[*(v14 + 40)] = v9;
  *v13 = &unk_1BC763790;
  *(v13 + 1) = v10;
  v15 = swift_allocObject();
  v16 = *v26;
  v15[3] = v25;
  v15[4] = v16;
  v15[5] = *&v26[16];
  v17 = v24;
  v15[1] = v23;
  v15[2] = v17;
  sub_1BC69573C(&v23, &v20);
  v18 = sub_1BC695800();
  View.onShowContent(_:)(sub_1BC6957F8, v15, v1, v18);

  return sub_1BC66008C(v3, &qword_1EBCDC9C0, &qword_1BC763770);
}

uint64_t sub_1BC693210(uint64_t a1)
{
  v1[38] = a1;
  v2 = sub_1BC759CA0();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  v3 = type metadata accessor for StackingModifier.Entry(0);
  v1[42] = v3;
  v1[43] = *(v3 - 8);
  v1[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA90, &qword_1BC763828);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v4 = sub_1BC759FE0();
  v1[49] = v4;
  v1[50] = *(v4 - 8);
  v1[51] = swift_task_alloc();
  v5 = type metadata accessor for StackingModifier.Key(0);
  v1[52] = v5;
  v1[53] = *(v5 - 8);
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  sub_1BC75BDE0();
  v1[57] = sub_1BC75BDD0();
  v7 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC69348C, v7, v6);
}

uint64_t sub_1BC69348C()
{
  v95 = v0;
  v1 = *(v0 + 304);

  v2 = v1[9];
  v76 = v1[7];
  v77 = v1[8];
  *(v0 + 40) = v76;
  *(v0 + 48) = v77;
  v75 = v2;
  *(v0 + 56) = v2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC9D0, &qword_1BC763780);
  result = MEMORY[0x1BFB262E0]();
  v4 = *(v0 + 224);
  v5 = *(v4 + 16);
  if (!v5)
  {
LABEL_41:

    *(v0 + 280) = v76;
    *(v0 + 296) = v75;
    *(v0 + 64) = v76;
    *(v0 + 72) = v77;
    *(v0 + 80) = v75;
    sub_1BC687F14(v0 + 280, v0 + 200);

    sub_1BC660024(v0 + 296, v0 + 192, &qword_1EBCDCA98, &qword_1BC763830);
    MEMORY[0x1BFB262E0](v74);

    *(v0 + 16) = v76;
    *(v0 + 24) = v77;
    *(v0 + 32) = v75;
    *(v0 + 184) = MEMORY[0x1E69E7CC0];
    sub_1BC75B710();
    sub_1BC687F70(v0 + 280);

    sub_1BC66008C(v0 + 296, &qword_1EBCDCA98, &qword_1BC763830);

    v73 = *(v0 + 8);

    return v73();
  }

  v6 = 0;
  v7 = *(v0 + 400);
  v87 = (v7 + 56);
  v80 = (v7 + 32);
  v81 = (v7 + 16);
  v8 = *(v0 + 344);
  v89 = (v8 + 48);
  v84 = v8;
  v9 = (v8 + 56);
  v10 = *(v0 + 320);
  v78 = (v10 + 8);
  v79 = (v10 + 16);
  v82 = *(v0 + 424);
  v83 = v9;
  v11 = (v4 + 48);
  v92 = *(v0 + 304);
  v85 = *(v4 + 16);
  v86 = *(v0 + 224);
  while (1)
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    v13 = *(v11 - 1);
    v12 = *v11;
    v14 = *(v11 - 2);
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v12;
    v16 = v14 >> 60;
    if ((v14 >> 60) > 5)
    {
      goto LABEL_3;
    }

    if (v16 > 2)
    {
      break;
    }

    if ((v16 - 1) < 2)
    {
      v91 = v6;
      v93 = v15;
      v17 = *(v0 + 440);
      v18 = *(v0 + 392);
      v19 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v20 = v19;
      SCAParticipant.structParticipant.getter();

      (*v87)(v17, 0, 1, v18);
      goto LABEL_14;
    }

LABEL_3:

LABEL_4:
    ++v6;
    v11 += 3;
    if (v5 == v6)
    {
      goto LABEL_41;
    }
  }

  v93 = v15;
  v91 = v6;
  if ((v16 - 3) >= 2)
  {
    (*v87)(*(v0 + 440), 1, 1, *(v0 + 392));
  }

  else
  {
    v21 = *(v0 + 440);
    v22 = *(v0 + 408);
    v23 = *(v0 + 392);
    v24 = swift_projectBox();
    (*v81)(v22, v24, v23);
    (*v80)(v21, v22, v23);
    (*v87)(v21, 0, 1, v23);
  }

LABEL_14:
  v25 = *(v0 + 448);
  v26 = *(v0 + 432);
  v27 = *(v0 + 376);
  v28 = *(v0 + 384);
  v29 = *(v0 + 336);
  sub_1BC695EF0(*(v0 + 440), v25, type metadata accessor for StackingModifier.Key);
  v88 = v14;
  v94 = v14;

  sub_1BC692ACC(&v94, v93, v28);
  sub_1BC695E88(v25, v26, type metadata accessor for StackingModifier.Key);
  sub_1BC660024(v28, v27, &qword_1EBCDCA90, &qword_1BC763828);
  v31 = *(v92 + 24);
  v30 = *(v92 + 32);
  *(v0 + 272) = v31;
  *(v0 + 248) = v30;
  *(v0 + 152) = v31;
  *(v0 + 160) = v30;
  v90 = v30;
  sub_1BC660024(v0 + 272, v0 + 232, &qword_1EBCDC980, &qword_1BC7631C0);
  sub_1BC660024(v0 + 248, v0 + 240, &qword_1EBCDCAA0, &qword_1BC763838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA60, &qword_1BC7637F8);
  sub_1BC75B640();
  v32 = *v89;
  v33 = (*v89)(v27, 1, v29);
  v34 = *(v0 + 432);
  v35 = *(v0 + 376);
  if (v33 == 1)
  {
    sub_1BC66008C(v35, &qword_1EBCDCA90, &qword_1BC763828);
    v36 = *(v0 + 216);
    v37 = sub_1BC695F58(v34);
    if (v38)
    {
      v39 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(v0 + 216);
      v94 = v36;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BC697054();
        v36 = v94;
      }

      v41 = *(v0 + 432);
      v42 = *(v0 + 368);
      sub_1BC697848(v36[6] + *(v82 + 72) * v39, type metadata accessor for StackingModifier.Key);
      sub_1BC695EF0(v36[7] + *(v84 + 72) * v39, v42, type metadata accessor for StackingModifier.Entry);
      sub_1BC696778(v39, v36);
      sub_1BC697848(v41, type metadata accessor for StackingModifier.Key);
      v43 = 0;
    }

    else
    {
      sub_1BC697848(*(v0 + 432), type metadata accessor for StackingModifier.Key);
      v43 = 1;
    }

    v53 = *(v0 + 368);
    (*v83)(v53, v43, 1, *(v0 + 336));
    sub_1BC66008C(v53, &qword_1EBCDCA90, &qword_1BC763828);
    goto LABEL_31;
  }

  sub_1BC695EF0(v35, *(v0 + 352), type metadata accessor for StackingModifier.Entry);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *(v0 + 216);
  v36 = v94;
  v46 = sub_1BC695F58(v34);
  v47 = v36[2];
  v48 = (v45 & 1) == 0;
  result = v47 + v48;
  if (__OFADD__(v47, v48))
  {
    goto LABEL_48;
  }

  v49 = v45;
  if (v36[3] >= result)
  {
    if ((v44 & 1) == 0)
    {
      sub_1BC697054();
      v36 = v94;
    }

LABEL_27:
    v54 = *(v0 + 432);
    v55 = *(v0 + 352);
    if (v49)
    {
      sub_1BC697918(*(v0 + 352), v36[7] + *(v84 + 72) * v46);
      sub_1BC697848(v54, type metadata accessor for StackingModifier.Key);
    }

    else
    {
      v36[(v46 >> 6) + 8] |= 1 << v46;
      sub_1BC695E88(v54, v36[6] + *(v82 + 72) * v46, type metadata accessor for StackingModifier.Key);
      sub_1BC695EF0(v55, v36[7] + *(v84 + 72) * v46, type metadata accessor for StackingModifier.Entry);
      result = sub_1BC697848(v54, type metadata accessor for StackingModifier.Key);
      v56 = v36[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_49;
      }

      v36[2] = v58;
    }

LABEL_31:
    *(v0 + 120) = v31;
    *(v0 + 128) = v90;
    *(v0 + 256) = v36;
    sub_1BC75B650();
    sub_1BC66008C(v0 + 272, &qword_1EBCDC980, &qword_1BC7631C0);
    sub_1BC66008C(v0 + 248, &qword_1EBCDCAA0, &qword_1BC763838);
    *(v0 + 136) = *(v92 + 40);
    *(v0 + 104) = *(v92 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC9C8, &qword_1BC763778);
    sub_1BC75B640();
    v59 = *(v0 + 264);
    if ((~v59 & 0xF000000000000007) != 0)
    {
      v65 = *(v0 + 448);
      v66 = *(v0 + 384);
      sub_1BC694EE8(v59);

      sub_1BC66008C(v66, &qword_1EBCDCA90, &qword_1BC763828);
      v67 = v65;
    }

    else
    {
      v60 = *(v0 + 360);
      v61 = *(v0 + 336);
      sub_1BC660024(*(v0 + 384), v60, &qword_1EBCDCA90, &qword_1BC763828);
      if (v32(v60, 1, v61) == 1)
      {
        v62 = *(v0 + 448);
        v63 = *(v0 + 384);
        v64 = *(v0 + 360);

        sub_1BC66008C(v63, &qword_1EBCDCA90, &qword_1BC763828);
        sub_1BC697848(v62, type metadata accessor for StackingModifier.Key);
        result = sub_1BC66008C(v64, &qword_1EBCDCA90, &qword_1BC763828);
LABEL_40:
        v5 = v85;
        v4 = v86;
        v6 = v91;
        goto LABEL_4;
      }

      v68 = *(v0 + 360);
      v69 = *(v0 + 328);
      v70 = *(v0 + 312);
      (*v79)(v69, v68, v70);
      sub_1BC697848(v68, type metadata accessor for StackingModifier.Entry);
      LOBYTE(v68) = sub_1BC759B70();
      (*v78)(v69, v70);
      v71 = *(v0 + 448);
      v72 = *(v0 + 384);
      if (v68)
      {
        *(v0 + 88) = *(v0 + 136);
        *(v0 + 288) = v88;

        sub_1BC660024(v0 + 136, v0 + 168, &qword_1EBCDC9C8, &qword_1BC763778);
        sub_1BC75B650();

        sub_1BC694EE8(*(v0 + 88));
      }

      else
      {
      }

      sub_1BC66008C(v72, &qword_1EBCDCA90, &qword_1BC763828);
      v67 = v71;
    }

    result = sub_1BC697848(v67, type metadata accessor for StackingModifier.Key);
    goto LABEL_40;
  }

  v50 = *(v0 + 432);
  sub_1BC69615C(result, v44);
  v36 = v94;
  v51 = sub_1BC695F58(v50);
  if ((v49 & 1) == (v52 & 1))
  {
    v46 = v51;
    goto LABEL_27;
  }

  return sub_1BC75C640();
}

uint64_t sub_1BC693FC8(__int128 *a1)
{
  v84 = sub_1BC75ABB0();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v101 = &v81 - v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA50, &qword_1BC7637E8);
  v5 = MEMORY[0x1EEE9AC00](v118);
  v100 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v114 = &v81 - v7;
  v112 = sub_1BC759C40();
  v8 = *(v112 - 8);
  v9 = MEMORY[0x1EEE9AC00](v112 - 8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v99 = &v81 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v81 - v14;
  v117 = sub_1BC759CA0();
  v16 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v116 = &v81 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for StackingModifier.Entry(0);
  v91 = *(v98 - 8);
  v18 = MEMORY[0x1EEE9AC00](v98);
  v115 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v81 - v20;
  v21 = type metadata accessor for StackingModifier.Key(0);
  v89 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v88 = &v81 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA58, &qword_1BC7637F0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v102 = &v81 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v81 - v26;
  v125 = *(a1 + 24);
  v86 = a1;
  v119 = *(a1 + 24);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA60, &qword_1BC7637F8);
  sub_1BC75B640();
  v28 = 0;
  v30 = v121 + 64;
  v29 = *(v121 + 64);
  v92 = v121;
  v31 = 1 << *(v121 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v29;
  v34 = (v31 + 63) >> 6;
  v113 = (v16 + 16);
  v35 = (v8 + 16);
  v95 = (v8 + 8);
  v87 = (v8 + 32);
  v94 = (v16 + 56);
  v93 = (v16 + 8);
  v109 = v11;
  v108 = v15;
  v107 = v27;
  v97 = v121 + 64;
  v96 = v34;
  v106 = (v8 + 16);
  while (1)
  {
    if (!v33)
    {
      if (v34 <= v28 + 1)
      {
        v45 = v28 + 1;
      }

      else
      {
        v45 = v34;
      }

      v46 = v45 - 1;
      while (1)
      {
        v44 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v44 >= v34)
        {
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA68, &unk_1BC763800);
          v55 = v102;
          (*(*(v70 - 8) + 56))(v102, 1, 1, v70);
          v33 = 0;
          v28 = v46;
          goto LABEL_17;
        }

        v33 = *(v30 + 8 * v44);
        ++v28;
        if (v33)
        {
          v28 = v44;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v44 = v28;
LABEL_16:
    v47 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v48 = v47 | (v44 << 6);
    v49 = v92;
    v50 = v88;
    sub_1BC695E88(*(v92 + 48) + *(v89 + 72) * v48, v88, type metadata accessor for StackingModifier.Key);
    v51 = v90;
    sub_1BC695E88(*(v49 + 56) + *(v91 + 72) * v48, v90, type metadata accessor for StackingModifier.Entry);
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA68, &unk_1BC763800);
    v53 = *(v52 + 48);
    v54 = v50;
    v55 = v102;
    sub_1BC695EF0(v54, v102, type metadata accessor for StackingModifier.Key);
    sub_1BC695EF0(v51, v55 + v53, type metadata accessor for StackingModifier.Entry);
    (*(*(v52 - 8) + 56))(v55, 0, 1, v52);
    v27 = v107;
    v11 = v109;
    v35 = v106;
    v15 = v108;
LABEL_17:
    sub_1BC65FFBC(v55, v27, &qword_1EBCDCA58, &qword_1BC7637F0);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA68, &unk_1BC763800);
    if ((*(*(v56 - 8) + 48))(v27, 1, v56) == 1)
    {
      break;
    }

    v57 = &v27[*(v56 + 48)];
    v58 = v115;
    sub_1BC695EF0(v57, v115, type metadata accessor for StackingModifier.Entry);
    v111 = *v113;
    v111(v116, v58, v117);
    sub_1BC759C20();
    v110 = sub_1BC759C80();
    v59 = *v35;
    v105 = v60;
    v61 = v112;
    v104 = v59;
    (v59)(v11);
    v62 = MEMORY[0x1E697B3F0];
    v63 = sub_1BC6978A8(&qword_1EBCDBF78, MEMORY[0x1E697B3F0], MEMORY[0x1E697B408]);
    v64 = v114;
    v65 = v11;
    v66 = v99;
    v103 = v63;
    sub_1BC75C180();
    sub_1BC6978A8(&qword_1EBCDCA70, v62, MEMORY[0x1E697B3F8]);
    v67 = sub_1BC75BAB0();
    v68 = *(v118 + 48);
    *v64 = (v67 & 1) == 0;
    v69 = *v95;
    if (v67)
    {
      v69(v15, v61);
      (*v87)(&v64[v68], v66, v61);
      v35 = v106;
    }

    else
    {
      v69(v66, v61);
      v36 = &v64[v68];
      v35 = v106;
      v37 = v104;
      v104(v36, v15, v61);
      v37(v65, v15, v61);
      sub_1BC75C190();
      v69(v15, v61);
    }

    v38 = v100;
    sub_1BC65FFBC(v114, v100, &qword_1EBCDCA50, &qword_1BC7637E8);
    v69((v38 + *(v118 + 48)), v112);
    v110(&v119, 0);
    v40 = v115;
    v39 = v116;
    v41 = *(v115 + *(v98 + 20));
    v42 = v101;
    v43 = v117;
    v111(v101, v116, v117);
    (*v94)(v42, 0, 1, v43);
    v41(v42);
    sub_1BC66008C(v42, &qword_1EBCDC998, &qword_1BC7641A0);
    (*v93)(v39, v43);
    sub_1BC697848(v40, type metadata accessor for StackingModifier.Entry);
    v27 = v107;
    sub_1BC697848(v107, type metadata accessor for StackingModifier.Key);
    v11 = v109;
    v15 = v108;
    v30 = v97;
    v34 = v96;
  }

  v119 = v125;
  sub_1BC75B640();
  v27 = *(v121 + 16);

  if (qword_1EDDCF470 == -1)
  {
    goto LABEL_22;
  }

LABEL_31:
  swift_once();
LABEL_22:
  v71 = sub_1BC75A4E0();
  __swift_project_value_buffer(v71, qword_1EBCF45A0);
  v72 = sub_1BC75A4C0();
  v73 = sub_1BC75BF40();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 134217984;
    *(v74 + 4) = v27;
    _os_log_impl(&dword_1BC630000, v72, v73, "Called back to %ld participants", v74, 0xCu);
    MEMORY[0x1BFB27EF0](v74, -1, -1);
  }

  v75 = sub_1BC697630(MEMORY[0x1E69E7CC0]);
  v119 = v125;
  v121 = v75;
  sub_1BC75B650();
  v76 = v86;
  v124 = *(v86 + 40);
  v119 = *(v86 + 40);
  *&v123 = 0xF000000000000007;
  sub_1BC660024(&v124, &v121, &qword_1EBCDC9C8, &qword_1BC763778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC9C8, &qword_1BC763778);
  sub_1BC75B650();
  sub_1BC694EE8(v119);

  v119 = *v76;
  v120 = *(v76 + 16);
  v77 = v119;
  if (v120 == 1)
  {
    v123 = v119;
    result = sub_1BC660024(&v119, &v121, &qword_1EBCDC850, &qword_1BC762D20);
    if (v77 == 1)
    {
      return result;
    }
  }

  else
  {
    sub_1BC660024(&v119, &v121, &qword_1EBCDC850, &qword_1BC762D20);
    sub_1BC75BF70();
    v79 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    v80 = v82;
    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC66008C(&v119, &qword_1EBCDC850, &qword_1BC762D20);
    result = (*(v83 + 8))(v80, v84);
    v77 = v123;
    if (v123 == 1)
    {
      return result;
    }
  }

  v121 = v77;
  v122 = *(&v123 + 1);
  OnShowContentCallback.callAsFunction()();
  return sub_1BC635484(v121, v122);
}

uint64_t sub_1BC694DF0()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF45A0);
  __swift_project_value_buffer(v0, qword_1EBCF45A0);
  return sub_1BC75A4D0();
}

unint64_t sub_1BC694E64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD1498;
  if (!qword_1EDDD1498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD1498);
  }

  return result;
}

uint64_t sub_1BC694EE8(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1BC694F54()
{
  result = qword_1EDDCDF98;
  if (!qword_1EDDCDF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDCDF98);
  }

  return result;
}

uint64_t sub_1BC694FCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x74 && *(a1 + 8))
  {
    return (*a1 + 116);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x73)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BC69501C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x73)
  {
    *result = a2 - 116;
    if (a3 >= 0x74)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x74)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1BC6952BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    result = sub_1BC6335A0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BC69538C(uint64_t a1)
{
  v1 = sub_1BC759FE0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t get_enum_tag_for_layout_string_26SensitiveContentAnalysisUI0aB7OverlayV4KindOSg(void *a1)
{
  v1 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x73)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BC695408(uint64_t a1, int a2)
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

uint64_t sub_1BC695450(uint64_t result, int a2, int a3)
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

void type metadata accessor for SCUISensitiveContentOverlayOptions()
{
  if (!qword_1EDDCE708)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDDCE708);
    }
  }
}

unint64_t sub_1BC695628()
{
  result = qword_1EDDD15C0[0];
  if (!qword_1EDDD15C0[0])
  {
    type metadata accessor for StackingModifier.Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD15C0);
  }

  return result;
}

uint64_t sub_1BC69569C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1BC635480(result);
  }

  else
  {
  }
}

uint64_t sub_1BC6956A8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BC65281C;

  return sub_1BC693210(v0 + 16);
}

uint64_t objectdestroy_45Tm()
{
  sub_1BC69569C(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  if ((~*(v0 + 56) & 0xF000000000000007) != 0)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

unint64_t sub_1BC695800()
{
  result = qword_1EBCDC9E0;
  if (!qword_1EBCDC9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC9C0, &qword_1BC763770);
    sub_1BC6958B8();
    sub_1BC633C54(&qword_1EBCDCA48, &qword_1EBCDC9D8, &qword_1BC763798, MEMORY[0x1E697C520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC9E0);
  }

  return result;
}

unint64_t sub_1BC6958B8()
{
  result = qword_1EBCDC9E8;
  if (!qword_1EBCDC9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC9F0, &qword_1BC7637A0);
    sub_1BC695944();
    sub_1BC695D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC9E8);
  }

  return result;
}

unint64_t sub_1BC695944()
{
  result = qword_1EBCDC9F8;
  if (!qword_1EBCDC9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA00, &qword_1BC7637A8);
    sub_1BC6959D0();
    sub_1BC695D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC9F8);
  }

  return result;
}

unint64_t sub_1BC6959D0()
{
  result = qword_1EDDCE088;
  if (!qword_1EDDCE088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA08, &qword_1BC7637B0);
    sub_1BC695A5C();
    sub_1BC695C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE088);
  }

  return result;
}

unint64_t sub_1BC695A5C()
{
  result = qword_1EDDCE0C0;
  if (!qword_1EDDCE0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA10, &qword_1BC7637B8);
    sub_1BC695B60();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA20, &qword_1BC7637C8);
    sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0C0);
  }

  return result;
}

unint64_t sub_1BC695B60()
{
  result = qword_1EDDCE148;
  if (!qword_1EDDCE148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA18, &qword_1BC7637C0);
    v3 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8, MEMORY[0x1E697FDF8]);
    sub_1BC694E64(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE148);
  }

  return result;
}

unint64_t sub_1BC695C18()
{
  result = qword_1EDDCE0A8;
  if (!qword_1EDDCE0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA28, &qword_1BC7637D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA20, &qword_1BC7637C8);
    sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0A8);
  }

  return result;
}

unint64_t sub_1BC695D0C()
{
  result = qword_1EBCDCA30;
  if (!qword_1EBCDCA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA38, &qword_1BC7637D8);
    sub_1BC695C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCA30);
  }

  return result;
}

unint64_t sub_1BC695D90()
{
  result = qword_1EDDCE0B0;
  if (!qword_1EDDCE0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA40, &qword_1BC7637E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA20, &qword_1BC7637C8);
    sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0B0);
  }

  return result;
}

uint64_t sub_1BC695E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC695EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC695F58(uint64_t a1)
{
  v2 = sub_1BC759FE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StackingModifier.Key(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75C700();
  sub_1BC695E88(a1, v8, type metadata accessor for StackingModifier.Key);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x1BFB272F0](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1BFB272F0](1);
    sub_1BC6978A8(&qword_1EDDCEE68, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C0]);
    sub_1BC75BA70();
    (*(v3 + 8))(v5, v2);
  }

  v9 = sub_1BC75C720();
  return sub_1BC696C04(a1, v9);
}

uint64_t sub_1BC69615C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1BC759FE0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StackingModifier.Entry(0);
  v58 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StackingModifier.Key(0);
  v57 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v56 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - v13;
  v15 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA80, &qword_1BC763818);
  v59 = v4;
  result = sub_1BC75C410();
  v17 = result;
  if (*(v15 + 16))
  {
    v55 = v5;
    v48 = v2;
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v15 + 64);
    v23 = (v20 + 63) >> 6;
    v54 = (v6 + 48);
    v50 = (v6 + 32);
    v49 = (v6 + 8);
    v24 = result + 64;
    v53 = v15;
    v25 = v52;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v61 = *(v57 + 72);
      v32 = v31 + v61 * v30;
      if (v59)
      {
        sub_1BC695EF0(v32, v14, type metadata accessor for StackingModifier.Key);
        v33 = *(v15 + 56);
        v60 = *(v58 + 72);
        sub_1BC695EF0(v33 + v60 * v30, v25, type metadata accessor for StackingModifier.Entry);
      }

      else
      {
        sub_1BC695E88(v32, v14, type metadata accessor for StackingModifier.Key);
        v34 = *(v15 + 56);
        v60 = *(v58 + 72);
        sub_1BC695E88(v34 + v60 * v30, v25, type metadata accessor for StackingModifier.Entry);
      }

      sub_1BC75C700();
      v35 = v14;
      v36 = v56;
      sub_1BC695E88(v14, v56, type metadata accessor for StackingModifier.Key);
      v37 = v55;
      if ((*v54)(v36, 1, v55) == 1)
      {
        MEMORY[0x1BFB272F0](0);
      }

      else
      {
        v38 = v51;
        (*v50)(v51, v36, v37);
        MEMORY[0x1BFB272F0](1);
        sub_1BC6978A8(&qword_1EDDCEE68, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C0]);
        sub_1BC75BA70();
        v39 = v38;
        v25 = v52;
        (*v49)(v39, v37);
      }

      result = sub_1BC75C720();
      v40 = -1 << *(v17 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      v14 = v35;
      if (((-1 << v41) & ~*(v24 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v24 + 8 * v42);
          if (v46 != -1)
          {
            v26 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v41) & ~*(v24 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      sub_1BC695EF0(v35, *(v17 + 48) + v61 * v26, type metadata accessor for StackingModifier.Key);
      result = sub_1BC695EF0(v25, *(v17 + 56) + v60 * v26, type metadata accessor for StackingModifier.Entry);
      ++*(v17 + 16);
      v15 = v53;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v59 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_37;
    }

    v47 = 1 << *(v15 + 32);
    v3 = v48;
    if (v47 >= 64)
    {
      bzero(v19, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v47;
    }

    *(v15 + 16) = 0;
  }

LABEL_37:
  *v3 = v17;
  return result;
}

unint64_t sub_1BC696778(int64_t a1, uint64_t a2)
{
  v4 = sub_1BC759FE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for StackingModifier.Key(0);
  v7 = MEMORY[0x1EEE9AC00](v42);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v13 = &v42 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v49 = v4;
    v17 = ~v15;
    v18 = v11;
    v19 = sub_1BC75C1C0();
    v20 = *(v18 + 72);
    v47 = (v5 + 48);
    v48 = (v19 + 1) & v17;
    v43 = (v5 + 8);
    v44 = (v5 + 32);
    v21 = v20;
    v50 = v20;
    do
    {
      v22 = v21 * v16;
      sub_1BC695E88(*(a2 + 48) + v21 * v16, v13, type metadata accessor for StackingModifier.Key);
      sub_1BC75C700();
      sub_1BC695E88(v13, v9, type metadata accessor for StackingModifier.Key);
      v23 = v49;
      if ((*v47)(v9, 1, v49) == 1)
      {
        MEMORY[0x1BFB272F0](0);
      }

      else
      {
        v24 = *v44;
        v46 = a1;
        v25 = v13;
        v26 = a2;
        v27 = v17;
        v28 = v14;
        v29 = v45;
        v24(v45, v9, v23);
        MEMORY[0x1BFB272F0](1);
        sub_1BC6978A8(&qword_1EDDCEE68, MEMORY[0x1E697B5B0], MEMORY[0x1E697B5C0]);
        sub_1BC75BA70();
        v30 = v29;
        v14 = v28;
        v17 = v27;
        a2 = v26;
        v13 = v25;
        a1 = v46;
        (*v43)(v30, v23);
      }

      v31 = sub_1BC75C720();
      result = sub_1BC697848(v13, type metadata accessor for StackingModifier.Key);
      v32 = v31 & v17;
      if (a1 >= v48)
      {
        v21 = v50;
        if (v32 < v48)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v21 = v50;
        if (v32 >= v48)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v32)
      {
LABEL_13:
        if (v21 * a1 < v22 || *(a2 + 48) + v21 * a1 >= (*(a2 + 48) + v22 + v21))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v21 * a1 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v33 = *(a2 + 56);
        v34 = *(*(type metadata accessor for StackingModifier.Entry(0) - 8) + 72);
        v35 = v34 * a1;
        result = v33 + v34 * a1;
        v36 = v34 * v16;
        v37 = v33 + v34 * v16 + v34;
        if (v35 < v36 || result >= v37)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          a1 = v16;
          v21 = v50;
        }

        else
        {
          a1 = v16;
          v21 = v50;
          if (v35 != v36)
          {
            result = swift_arrayInitWithTakeBackToFront();
            a1 = v16;
          }
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v17;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v39 = *(a2 + 16);
  v40 = __OFSUB__(v39, 1);
  v41 = v39 - 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v41;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BC696C04(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v4 = sub_1BC759FE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA88, &qword_1BC763820);
  MEMORY[0x1EEE9AC00](v35);
  v8 = &v28 - v7;
  v9 = type metadata accessor for StackingModifier.Key(0) - 8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v28 - v14;
  v16 = v2 + 64;
  v37 = v2;
  v17 = -1 << *(v2 + 32);
  v18 = a2 & ~v17;
  if ((*(v2 + 64 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = *(v13 + 72);
    v33 = ~v17;
    v34 = v19;
    v20 = (v5 + 48);
    v29 = (v5 + 32);
    v32 = (v5 + 8);
    while (1)
    {
      sub_1BC695E88(*(v37 + 48) + v34 * v18, v15, type metadata accessor for StackingModifier.Key);
      v21 = *(v35 + 48);
      sub_1BC695E88(v15, v8, type metadata accessor for StackingModifier.Key);
      sub_1BC695E88(v36, &v8[v21], type metadata accessor for StackingModifier.Key);
      v22 = *v20;
      if ((*v20)(v8, 1, v4) == 1)
      {
        break;
      }

      sub_1BC695E88(v8, v12, type metadata accessor for StackingModifier.Key);
      if (v22(&v8[v21], 1, v4) == 1)
      {
        sub_1BC697848(v15, type metadata accessor for StackingModifier.Key);
        (*v32)(v12, v4);
LABEL_4:
        sub_1BC66008C(v8, &qword_1EBCDCA88, &qword_1BC763820);
        goto LABEL_5;
      }

      v23 = v16;
      v24 = v30;
      (*v29)(v30, &v8[v21], v4);
      v31 = MEMORY[0x1BFB24B70](v12, v24);
      v25 = *v32;
      v26 = v24;
      v16 = v23;
      (*v32)(v26, v4);
      sub_1BC697848(v15, type metadata accessor for StackingModifier.Key);
      v25(v12, v4);
      if (v31)
      {
LABEL_12:
        sub_1BC697848(v8, type metadata accessor for StackingModifier.Key);
        return v18;
      }

      sub_1BC697848(v8, type metadata accessor for StackingModifier.Key);
LABEL_5:
      v18 = (v18 + 1) & v33;
      if (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return v18;
      }
    }

    sub_1BC697848(v15, type metadata accessor for StackingModifier.Key);
    if (v22(&v8[v21], 1, v4) == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_4;
  }

  return v18;
}

char *sub_1BC697054()
{
  v1 = v0;
  v2 = type metadata accessor for StackingModifier.Entry(0);
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StackingModifier.Key(0);
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v29 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA80, &qword_1BC763818);
  v6 = *v0;
  v7 = sub_1BC75C400();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v33 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v34 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = v29;
        v23 = *(v30 + 72) * v21;
        sub_1BC695E88(*(v6 + 48) + v23, v29, type metadata accessor for StackingModifier.Key);
        v24 = v31;
        v25 = *(v32 + 72) * v21;
        sub_1BC695E88(*(v6 + 56) + v25, v31, type metadata accessor for StackingModifier.Entry);
        v26 = v33;
        sub_1BC695EF0(v22, *(v33 + 48) + v23, type metadata accessor for StackingModifier.Key);
        result = sub_1BC695EF0(v24, *(v26 + 56) + v25, type metadata accessor for StackingModifier.Entry);
        v16 = v34;
      }

      while (v34);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v27;
        v8 = v33;
        goto LABEL_18;
      }

      v20 = *(v28 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v34 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1BC697348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759FE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StackingModifier.Key(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA88, &qword_1BC763820);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1BC695E88(a1, &v20 - v13, type metadata accessor for StackingModifier.Key);
  sub_1BC695E88(a2, &v14[v15], type metadata accessor for StackingModifier.Key);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1BC695E88(v14, v10, type metadata accessor for StackingModifier.Key);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v17 = MEMORY[0x1BFB24B70](v10, v7);
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_1BC697848(v14, type metadata accessor for StackingModifier.Key);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1BC66008C(v14, &qword_1EBCDCA88, &qword_1BC763820);
    v17 = 0;
    return v17 & 1;
  }

  sub_1BC697848(v14, type metadata accessor for StackingModifier.Key);
  v17 = 1;
  return v17 & 1;
}

unint64_t sub_1BC697630(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA78, &qword_1BC763810);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA80, &qword_1BC763818);
    v7 = sub_1BC75C420();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1BC660024(v9, v5, &qword_1EBCDCA78, &qword_1BC763810);
      result = sub_1BC695F58(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for StackingModifier.Key(0);
      sub_1BC695EF0(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for StackingModifier.Key);
      v16 = v7[7];
      v17 = type metadata accessor for StackingModifier.Entry(0);
      result = sub_1BC695EF0(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StackingModifier.Entry);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BC697848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC6978A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC697918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StackingModifier.Entry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC69799C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E65767265746E69 && a2 == 0xEC0000006E6F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BC75C5E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BC697A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC698018(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC697A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC698018(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BC697AA0()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1BC697ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1BC75C5E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BC75C5E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BC697B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC69806C(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BC697BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC69806C(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t RemoteView.Config.encode(to:)(void *a1)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAF0, &qword_1BC763890);
  v61 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v3 = &v29 - v2;
  v4 = type metadata accessor for RemoteView.Config(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAF8, &qword_1BC763898);
  v33 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC698018(v10, v11, v12);
  v13 = v30;
  sub_1BC75C740();
  sub_1BC698AB0(v31, v6, type metadata accessor for RemoteView.Config);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0);
  v15 = &v6[*(v14 + 48)];
  v16 = *(v15 + 11);
  v58 = *(v15 + 10);
  v59 = v16;
  v60 = *(v15 + 12);
  v17 = *(v15 + 7);
  v54 = *(v15 + 6);
  v55 = v17;
  v18 = *(v15 + 9);
  v56 = *(v15 + 8);
  v57 = v18;
  v19 = *(v15 + 5);
  v52 = *(v15 + 4);
  v53 = v19;
  v20 = *(v15 + 3);
  v50 = *(v15 + 2);
  v51 = v20;
  v21 = *(v15 + 1);
  v48 = *v15;
  v49 = v21;
  sub_1BC69806C(v14, v22, v23);
  sub_1BC75C4E0();
  LOBYTE(v35) = 0;
  type metadata accessor for InterventionConfig(0);
  sub_1BC698670(&qword_1EBCDCB08, &protocol conformance descriptor for InterventionConfig);
  v24 = v32;
  sub_1BC75C560();
  v25 = sub_1BC6980C0(v6);
  if (v24)
  {
    sub_1BC69811C(&v48);
    (*(v61 + 8))(v3, v13);
    return (*(v33 + 8))(v9, v7);
  }

  else
  {
    v45 = v58;
    v46 = v59;
    v47 = v60;
    v41 = v54;
    v42 = v55;
    v43 = v56;
    v44 = v57;
    v37 = v50;
    v38 = v51;
    v39 = v52;
    v40 = v53;
    v35 = v48;
    v36 = v49;
    v34 = 1;
    sub_1BC698170(v25, v26, v27);
    sub_1BC75C560();
    (*(v61 + 8))(v3, v13);
    (*(v33 + 8))(v9, v7);
    return sub_1BC69811C(&v48);
  }
}

uint64_t type metadata accessor for RemoteView.Config(uint64_t a1)
{
  result = qword_1EBCE5A60;
  if (!qword_1EBCE5A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BC698018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE57D0;
  if (!qword_1EBCE57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE57D0);
  }

  return result;
}

unint64_t sub_1BC69806C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE57D8[0];
  if (!qword_1EBCE57D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE57D8);
  }

  return result;
}

uint64_t sub_1BC6980C0(uint64_t a1)
{
  v2 = type metadata accessor for InterventionConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BC698170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCB10;
  if (!qword_1EBCDCB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCB10);
  }

  return result;
}

uint64_t RemoteView.Config.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for RemoteView.Config(0);
  MEMORY[0x1EEE9AC00](v34);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB18, &qword_1BC7638A8);
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB20, &unk_1BC7638B0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  v12 = a1[3];
  v37 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1BC698018(v13, v14, v15);
  v16 = v36;
  sub_1BC75C730();
  if (!v16)
  {
    v17 = v35;
    v36 = v9;
    v18 = sub_1BC75C4D0();
    v21 = v18;
    if (*(v18 + 16) == 1)
    {
      sub_1BC69806C(v18, v19, v20);
      sub_1BC75C450();
      v34 = v21;
      type metadata accessor for InterventionConfig(0);
      v39 = 0;
      sub_1BC698670(&qword_1EBCDCB28, &protocol conformance descriptor for InterventionConfig);
      v26 = v4;
      v27 = v5;
      sub_1BC75C4C0();
      v28 = v36;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0);
      v38 = 1;
      sub_1BC6986B4(v29, v30, v31);
      sub_1BC75C4C0();
      (*(v17 + 8))(v7, v27);
      (*(v28 + 8))(v11, v8);
      swift_unknownObjectRelease();
      sub_1BC698A48(v26, v33, type metadata accessor for RemoteView.Config);
    }

    else
    {
      v22 = sub_1BC75C300();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF0, &unk_1BC767CA0);
      *v24 = v34;
      sub_1BC75C460();
      sub_1BC75C2F0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_1BC698670(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InterventionConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC6986B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCB30;
  if (!qword_1EBCDCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCB30);
  }

  return result;
}

uint64_t RemoteView.Error.hashValue.getter()
{
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](0);
  return sub_1BC75C720();
}

uint64_t sub_1BC6987B0()
{
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](0);
  return sub_1BC75C720();
}

uint64_t sub_1BC698820(uint64_t a1)
{
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](0);
  return sub_1BC75C720();
}

uint64_t sub_1BC69886C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for InterventionConfig(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RemoteView.Config(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC698AB0(v3, v11, type metadata accessor for RemoteView.Config);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0);
  v13 = &v11[*(v12 + 48)];
  v14 = *(v13 + 11);
  v33 = *(v13 + 10);
  v34 = v14;
  v35 = *(v13 + 12);
  v15 = *(v13 + 7);
  v29 = *(v13 + 6);
  v30 = v15;
  v16 = *(v13 + 9);
  v31 = *(v13 + 8);
  v32 = v16;
  v17 = *(v13 + 5);
  v27 = *(v13 + 4);
  v28 = v17;
  v18 = *(v13 + 3);
  v25 = *(v13 + 2);
  v26 = v18;
  v19 = *(v13 + 1);
  v23 = *v13;
  v24 = v19;
  sub_1BC698A48(v11, v8, type metadata accessor for InterventionConfig);
  v20 = *(v12 + 48);
  sub_1BC698AB0(v8, a2, type metadata accessor for InterventionConfig);
  v22[10] = v33;
  v22[11] = v34;
  v22[12] = v35;
  v22[6] = v29;
  v22[7] = v30;
  v22[8] = v31;
  v22[9] = v32;
  v22[2] = v25;
  v22[3] = v26;
  v22[4] = v27;
  v22[5] = v28;
  v22[0] = v23;
  v22[1] = v24;
  sub_1BC7176B8(a1, (a2 + v20));
  sub_1BC6980C0(v8);
  return sub_1BC69811C(&v23);
}

uint64_t sub_1BC698A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC698AB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC698B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCB38;
  if (!qword_1EBCDCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCB38);
  }

  return result;
}

uint64_t sub_1BC698B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BC698BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1BC698C78(uint64_t a1)
{
  sub_1BC698D4C(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = type metadata accessor for InterventionConfig(319);
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_1BC698D4C(uint64_t a1)
{
  if (!qword_1EBCDCB40)
  {
    type metadata accessor for InterventionConfig(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBCDCB40);
    }
  }
}

unint64_t sub_1BC698DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE5B70[0];
  if (!qword_1EBCE5B70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5B70);
  }

  return result;
}

unint64_t sub_1BC698E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE5D80[0];
  if (!qword_1EBCE5D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5D80);
  }

  return result;
}

unint64_t sub_1BC698EA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE5E90;
  if (!qword_1EBCE5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE5E90);
  }

  return result;
}

unint64_t sub_1BC698EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE5E98[0];
  if (!qword_1EBCE5E98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5E98);
  }

  return result;
}

unint64_t sub_1BC698F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE5F20;
  if (!qword_1EBCE5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE5F20);
  }

  return result;
}

unint64_t sub_1BC698FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE5F28[0];
  if (!qword_1EBCE5F28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5F28);
  }

  return result;
}

uint64_t sub_1BC699010(uint64_t a1)
{
  v2 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReportScreen(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC699240(v1, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      MEMORY[0x1BFB272F0](3);
      v10 = type metadata accessor for ReportScreen;
      v11 = v7;
    }

    else
    {
      sub_1BC69B938(v7, v4, type metadata accessor for Report.Authority);
      sub_1BC69B550(&qword_1EBCDCB48, type metadata accessor for Report.Authority, &protocol conformance descriptor for Report.Authority);
      sub_1BC75BA70();
      MEMORY[0x1BFB272F0](1);
      v10 = type metadata accessor for Report.Authority;
      v11 = v4;
    }

    return sub_1BC6992A4(v11, v10);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1BC6992A4(v7, type metadata accessor for ReportScreen);
      v9 = 4;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_1BC6992A4(v7, type metadata accessor for ReportScreen);
      v9 = 5;
    }

    else
    {
      v9 = 2;
    }

    return MEMORY[0x1BFB272F0](v9);
  }
}

uint64_t sub_1BC699240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportScreen(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6992A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC699304()
{
  sub_1BC75C700();
  sub_1BC699010(v1);
  return sub_1BC75C720();
}

uint64_t sub_1BC699348(uint64_t a1)
{
  sub_1BC75C700();
  sub_1BC699010(v2);
  return sub_1BC75C720();
}

void sub_1BC699388()
{
  v0 = sub_1BC75BB30();
  v1 = [objc_opt_self() systemImageNamed_];

  qword_1EBCF45B8 = v1;
}

void sub_1BC6993F8()
{
  v0 = sub_1BC75BB30();
  v1 = [objc_opt_self() systemImageNamed_];

  qword_1EBCF45C0 = v1;
}

void sub_1BC699468()
{
  v0 = sub_1BC75BB30();
  v1 = [objc_opt_self() systemImageNamed_];

  qword_1EBCF45C8 = v1;
}

void sub_1BC6994D8()
{
  v0 = sub_1BC75BB30();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BC763C30;
    *(v2 + 32) = [objc_opt_self() systemGreenColor];
    sub_1BC65F664(0, &qword_1EBCDCB88, 0x1E69DC888);
    v3 = sub_1BC75BCF0();

    v4 = [objc_opt_self() configurationWithPaletteColors_];

    v5 = [v1 imageWithSymbolConfiguration_];
  }

  else
  {
    v5 = 0;
  }

  qword_1EBCF45D0 = v5;
}

uint64_t sub_1BC699634@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ReportScreen(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC699240(v3, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1BC6992A4(v8, type metadata accessor for ReportScreen);
      v10 = 0x495454494D425553;
      v11 = 0xEA0000000000474ELL;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_1BC6992A4(v8, type metadata accessor for ReportScreen);
      v10 = 0x5F54504945434552;
      v11 = 0xED0000454C544954;
    }

    else
    {
      v10 = 0x5449545F4D524F46;
      v11 = 0xEA0000000000454CLL;
    }

    result = SCLocalizedStringKey.init(stringLiteral:)(*&v10).localized._countAndFlagsBits;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    v16._countAndFlagsBits = 0x5F554F595F455241;
    v16._object = 0xED00005944414552;
    SCLocalizedStringKey.init(stringLiteral:)(v16);
    v17 = type metadata accessor for ReportScreen;
LABEL_14:
    result = sub_1BC6992A4(v8, v17);
    goto LABEL_17;
  }

  v12 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  if ((*(*(v12 - 8) + 48))(v8, 1, v12) != 1)
  {
    v18._object = 0x80000001BC772400;
    v18._countAndFlagsBits = 0xD000000000000015;
    SCLocalizedStringKey.init(stringLiteral:)(v18);
    v17 = type metadata accessor for Report.Authority;
    goto LABEL_14;
  }

  if (a1 == 2)
  {
    v13 = "DO_YOU_WANT_TO_REPORT_TO_APPLE";
    v14 = 0xD000000000000019;
  }

  else
  {
    v13 = "iveContentAnalysis";
    v14 = 0xD00000000000001ELL;
  }

  v19 = v13 | 0x8000000000000000;
  result = SCLocalizedStringKey.init(stringLiteral:)(*&v14).localized._countAndFlagsBits;
LABEL_17:
  v20 = v21[1];
  *a2 = v21[0];
  a2[1] = v20;
  return result;
}

uint64_t sub_1BC6998B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReportScreen(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC699240(v3, v11);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        sub_1BC6992A4(v11, type metadata accessor for ReportScreen);
        if (a1)
        {
          if (a1 == 1)
          {
            SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
            v18 = 0xD00000000000001CLL;
            v19 = 0x80000001BC772440;
LABEL_16:
            SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(*&v18);
            v20._countAndFlagsBits = 0x656C707041;
            v20._object = 0xE500000000000000;
            SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v20);
            v21._countAndFlagsBits = 0;
            v21._object = 0xE000000000000000;
            SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v21);
            result = SCLocalizedStringKey.init(stringInterpolation:)(v8, &v23);
LABEL_18:
            v16 = v23;
            v17 = v24;
            goto LABEL_19;
          }

          if (a1 != 2)
          {
            v22._countAndFlagsBits = 0;
            v22._object = 0xE000000000000000;
            result = SCLocalizedStringKey.init(stringLiteral:)(v22).localized._countAndFlagsBits;
            goto LABEL_18;
          }

          SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v13 = "ADULT_SUBMITTED_TO_AUTHORITY ";
        }

        else
        {
          SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v13 = "CHILD_SUBMITTED_TO_AUTHORITY ";
        }

        v19 = (v13 - 32) | 0x8000000000000000;
        v18 = 0xD00000000000001DLL;
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (result)
  {
LABEL_11:
    result = sub_1BC6992A4(v11, type metadata accessor for ReportScreen);
    goto LABEL_12;
  }

  v14 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  result = (*(*(v14 - 8) + 48))(v11, 1, v14);
  if (result == 1)
  {
LABEL_12:
    v16 = 0;
    v17 = 0;
    goto LABEL_19;
  }

  v15._countAndFlagsBits = 0xD000000000000010;
  v15._object = 0x80000001BC772480;
  SCLocalizedStringKey.init(stringLiteral:)(v15);
  v16 = v23;
  v17 = v24;
  result = sub_1BC6992A4(v11, type metadata accessor for Report.Authority);
LABEL_19:
  *a2 = v16;
  a2[1] = v17;
  return result;
}

void *sub_1BC699B5C()
{
  v1 = type metadata accessor for ReportScreen(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC699240(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v5 = 0;
    if (EnumCaseMultiPayload == 3)
    {
      sub_1BC6992A4(v3, type metadata accessor for ReportScreen);
      if (qword_1EBCE5FD0 != -1)
      {
        swift_once();
      }

      v5 = qword_1EBCF45D0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_1BC6992A4(v3, type metadata accessor for ReportScreen);
      if (qword_1EBCE5FC8 != -1)
      {
        swift_once();
      }

      v5 = qword_1EBCF45C8;
LABEL_14:
      v7 = v5;
      return v5;
    }

    v6 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if ((*(*(v6 - 8) + 48))(v3, 1, v6) == 1)
    {
      if (qword_1EBCE5FB8 != -1)
      {
        swift_once();
      }

      v5 = qword_1EBCF45C0;
      goto LABEL_14;
    }

    if (qword_1EBCE5FB0 != -1)
    {
      swift_once();
    }

    v5 = qword_1EBCF45B8;
    v9 = qword_1EBCF45B8;
    sub_1BC6992A4(v3, type metadata accessor for Report.Authority);
  }

  return v5;
}

uint64_t sub_1BC699D98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ReportScreen(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC699240(v3, v8);
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_1BC6992A4(v8, type metadata accessor for ReportScreen);
  }

  else
  {
    v10 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    v11 = (*(*(v10 - 8) + 48))(v8, 1, v10);
    result = sub_1BC6992A4(v8, type metadata accessor for Report.Authority);
    if (v11 == 1 && a1 == 2)
    {
      v13._object = 0x80000001BC7724A0;
      v13._countAndFlagsBits = 0xD000000000000015;
      result = SCLocalizedStringKey.init(stringLiteral:)(v13).localized._countAndFlagsBits;
      v14 = v15[1];
      *a2 = v15[0];
      a2[1] = v14;
      return result;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1BC699EF8()
{
  v1 = type metadata accessor for ReportScreen(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC699240(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return *v3;
  }

  sub_1BC6992A4(v3, type metadata accessor for ReportScreen);
  return 0;
}

void sub_1BC699FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v79[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v79[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for ReportScreen(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v79[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC699240(v4, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v17 = MEMORY[0x1E69E7CC0];
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      if ((*(v10 + 48))(v15, 1, v9) != 1)
      {
        sub_1BC69B938(v15, v12, type metadata accessor for Report.Authority.DirectAuthorityDetails);
        v84 = v17;
        v46 = sub_1BC7012B4();
        swift_beginAccess();
        if (*(v46 + *(type metadata accessor for Report.TestingOptions(0) + 40)) == 1)
        {
          v47._countAndFlagsBits = 0xD00000000000006ELL;
          v47._object = 0x80000001BC772570;
          SCLocalizedStringKey.init(stringLiteral:)(v47);
          v48 = v80;
          v49 = v81;
          v50 = sub_1BC75BB30();
          v51 = [objc_opt_self() systemImageNamed_];

          if (!v51)
          {
LABEL_34:
            __break(1u);
            return;
          }

          v52 = sub_1BC69AF60(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v54 = *(v52 + 2);
          v53 = *(v52 + 3);
          if (v54 >= v53 >> 1)
          {
            v52 = sub_1BC69AF60((v53 > 1), v54 + 1, 1, v52);
          }

          *(v52 + 2) = v54 + 1;
          v55 = &v52[24 * v54];
          *(v55 + 4) = v48;
          *(v55 + 5) = v49;
          *(v55 + 6) = v51;
          v84 = v52;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB50, &qword_1BC763C50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BC763C40;
        v57 = v12[4];
        v58 = v12[2];
        *(inited + 32) = v12[3];
        *(inited + 40) = v57;
        *(inited + 48) = v58;
        v59 = v58;

        SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v60._countAndFlagsBits = 0xD000000000000019;
        v60._object = 0x80000001BC772510;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v60);
        sub_1BC68106C(&v80);
        v79[0] = v80;
        v79[1] = v81;
        v61.localized._countAndFlagsBits = v79;
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v61);

        v62._countAndFlagsBits = 0;
        v62._object = 0xE000000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v62);
        SCLocalizedStringKey.init(stringInterpolation:)(v8, &v80);
        v63 = v80;
        v64 = v81;
        v65 = sub_1BC75BB30();
        v66 = objc_opt_self();
        v67 = [v66 systemImageNamed_];

        if (v67)
        {
          *(inited + 56) = v63;
          *(inited + 64) = v64;
          *(inited + 72) = v67;
          v68._object = 0x80000001BC772530;
          v68._countAndFlagsBits = 0xD000000000000011;
          SCLocalizedStringKey.init(stringLiteral:)(v68);
          v69 = v80;
          v70 = v81;
          v71 = sub_1BC75BB30();
          v72 = [v66 systemImageNamed_];

          if (v72)
          {
            *(inited + 80) = v69;
            *(inited + 88) = v70;
            *(inited + 96) = v72;
            v73._countAndFlagsBits = 0x4F5F535941574C41;
            v73._object = 0xE90000000000004BLL;
            SCLocalizedStringKey.init(stringLiteral:)(v73);
            v74 = v80;
            v75 = v81;
            v76 = sub_1BC75BB30();
            v77 = [v66 systemImageNamed_];

            if (v77)
            {
              *(inited + 104) = v74;
              *(inited + 112) = v75;
              *(inited + 120) = v77;
              sub_1BC69AE68(inited);
              sub_1BC6992A4(v12, type metadata accessor for Report.Authority.DirectAuthorityDetails);
              return;
            }

            goto LABEL_33;
          }

          goto LABEL_31;
        }

        goto LABEL_29;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB50, &qword_1BC763C50);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1BC7615F0;
      sub_1BC6B6BC4(a4, &v82);
      v19 = v82;
      v20 = v83;
      v21 = sub_1BC75BB30();
      v22 = objc_opt_self();
      v23 = [v22 systemImageNamed_];

      if (v23)
      {
        *(v18 + 32) = v19;
        *(v18 + 40) = v20;
        *(v18 + 48) = v23;
        sub_1BC6B6C54(a4, &v82);
        v24 = v82;
        v25 = v83;
        v26 = sub_1BC75BB30();
        v27 = [v22 systemImageNamed_];

        if (v27)
        {
          *(v18 + 56) = v24;
          *(v18 + 64) = v25;
          *(v18 + 72) = v27;
          sub_1BC6B6CE4(a4, &v82);
          v28 = v82;
          v29 = v83;
          v30 = sub_1BC75BB30();
          v31 = [v22 systemImageNamed_];

          if (v31)
          {
            *(v18 + 80) = v28;
            *(v18 + 88) = v29;
            *(v18 + 96) = v31;
            return;
          }

          goto LABEL_32;
        }

        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB50, &qword_1BC763C50);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1BC7615F0;
    sub_1BC6B6D74(a4, &v82);
    v33 = v82;
    v34 = v83;
    v35 = sub_1BC75BB30();
    v36 = objc_opt_self();
    v37 = [v36 systemImageNamed_];

    if (v37)
    {
      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      *(v32 + 48) = v37;
      sub_1BC6B6E18(a4, &v82);
      v38 = v82;
      v39 = v83;
      v40 = sub_1BC75BB30();
      v41 = [v36 systemImageNamed_];

      if (v41)
      {
        *(v32 + 56) = v38;
        *(v32 + 64) = v39;
        *(v32 + 72) = v41;
        sub_1BC6B6EBC(a4, &v82);
        v42 = v82;
        v43 = v83;
        v44 = sub_1BC75BB30();

        v45 = [v36 systemImageNamed_];

        if (v45)
        {
          *(v32 + 80) = v42;
          *(v32 + 88) = v43;
          *(v32 + 96) = v45;
LABEL_15:
          sub_1BC6992A4(v15, type metadata accessor for ReportScreen);
          return;
        }

        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_15;
  }
}

uint64_t sub_1BC69A80C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for SCLocalizedStringKey.StringInterpolation(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReportScreen(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC699240(v3, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1BC6B7000(a2, &v57);
      v34 = v58;
      if (v58)
      {
        v35 = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB58, &qword_1BC763C58);
        v36 = *(type metadata accessor for ReportScreen.Button(0) - 8);
        v37 = *(v36 + 72);
        v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_1BC75F0C0;
        v40 = v39;
        v41 = (v39 + v38);
        sub_1BC6B6F78(a2, &v57);
        v42 = v58;
        *v41 = v57;
        v41[1] = v42;
        swift_storeEnumTagMultiPayload();
        v43 = (v41 + v37);
        *v43 = v35;
        v43[1] = v34;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB58, &qword_1BC763C58);
        v49 = *(type metadata accessor for ReportScreen.Button(0) - 8);
        v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
        v51 = swift_allocObject();
        *(v51 + 16) = xmmword_1BC761600;
        v40 = v51;
        v52 = (v51 + v50);
        sub_1BC6B6F78(a2, &v57);
        v53 = v58;
        *v52 = v57;
        v52[1] = v53;
      }

      swift_storeEnumTagMultiPayload();
      sub_1BC6992A4(v10, type metadata accessor for ReportScreen);
      return v40;
    }

    else
    {
      v19 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
      v20 = (*(*(v19 - 8) + 48))(v10, 1, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB58, &qword_1BC763C58);
      v21 = *(type metadata accessor for ReportScreen.Button(0) - 8);
      v22 = *(v21 + 72);
      v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1BC75F0C0;
      v25 = v24;
      v26 = (v24 + v23);
      v27 = (v26 + v22);
      v28 = 0x45554E49544E4F43;
      v29 = 0xE800000000000000;
      if (v20 == 1)
      {
        SCLocalizedStringKey.init(stringLiteral:)(*&v28);
        v30 = v58;
        *v26 = v57;
        v26[1] = v30;
        swift_storeEnumTagMultiPayload();
        if (a2)
        {
          v31 = 0x4C45434E4143;
          v32 = 0xE600000000000000;
        }

        else
        {
          v31 = 0x5F4547415353454DLL;
          v32 = 0xEF50554E574F5247;
        }

        SCLocalizedStringKey.init(stringLiteral:)(*&v31);
        v33 = v56;
        *v27 = v55;
        v27[1] = v33;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        SCLocalizedStringKey.init(stringLiteral:)(*&v28);
        v44 = v58;
        *v26 = v57;
        v26[1] = v44;
        swift_storeEnumTagMultiPayload();
        v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB60, &qword_1BC763C60) + 48);
        SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v46._object = 0x80000001BC772650;
        v46._countAndFlagsBits = 0xD000000000000011;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v46);
        sub_1BC68106C(&v55);
        v54[0] = v55;
        v54[1] = v56;
        v47.localized._countAndFlagsBits = v54;
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v47);

        v48._countAndFlagsBits = 0;
        v48._object = 0xE000000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v48);
        SCLocalizedStringKey.init(stringInterpolation:)(v7, v27);
        sub_1BC681254(v27 + v45);
        swift_storeEnumTagMultiPayload();
        sub_1BC6992A4(v10, type metadata accessor for Report.Authority);
      }

      return v25;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1BC6992A4(v10, type metadata accessor for ReportScreen);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_1BC6992A4(v10, type metadata accessor for ReportScreen);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB58, &qword_1BC763C58);
      v12 = *(type metadata accessor for ReportScreen.Button(0) - 8);
      v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1BC761600;
      v15 = (v14 + v13);
      v16._countAndFlagsBits = 1162760004;
      v16._object = 0xE400000000000000;
      SCLocalizedStringKey.init(stringLiteral:)(v16);
      v17 = v58;
      *v15 = v57;
      v15[1] = v17;
      swift_storeEnumTagMultiPayload();
      return v14;
    }

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1BC69AE68(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1BC69AF60(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1BC69AF60(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB50, &qword_1BC763C50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1BC69B080(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = type metadata accessor for Report.Evidence(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Report.Authority(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ReportScreen(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v36 - v14);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v36 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v36 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB90, &unk_1BC763D40);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v36 - v23;
  v25 = (&v36 + *(v22 + 56) - v23);
  sub_1BC699240(a1, &v36 - v23);
  sub_1BC699240(v37, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1BC699240(v24, v18);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v29 = type metadata accessor for Report.Evidence;
        v30 = v18;
        goto LABEL_18;
      }

      sub_1BC69B938(v25, v5, type metadata accessor for Report.Evidence);
      v28 = static Report.Evidence.== infix(_:_:)(v18, v5);
      v33 = type metadata accessor for Report.Evidence;
      sub_1BC6992A4(v5, type metadata accessor for Report.Evidence);
      v34 = v18;
    }

    else
    {
      sub_1BC699240(v24, v20);
      if (swift_getEnumCaseMultiPayload())
      {
        v29 = type metadata accessor for Report.Authority;
        v30 = v20;
LABEL_18:
        sub_1BC6992A4(v30, v29);
        goto LABEL_19;
      }

      sub_1BC69B938(v25, v8, type metadata accessor for Report.Authority);
      v28 = static Report.Authority.== infix(_:_:)();
      v33 = type metadata accessor for Report.Authority;
      sub_1BC6992A4(v8, type metadata accessor for Report.Authority);
      v34 = v20;
    }

    sub_1BC6992A4(v34, v33);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BC699240(v24, v15);
    v31 = *v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = *v25;
      sub_1BC65F664(0, &qword_1EBCDBC58, 0x1E69E58C0);
      v28 = sub_1BC75C040();

      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1BC699240(v24, v12);
    v27 = v12[1];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v28 = sub_1BC6B14E8(*v12, v27, *v25, v25[1]);

LABEL_22:
      sub_1BC6992A4(v24, type metadata accessor for ReportScreen);
      return v28 & 1;
    }

    goto LABEL_19;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_19:
    sub_1BC69B8D0(v24);
    v28 = 0;
    return v28 & 1;
  }

  sub_1BC6992A4(v24, type metadata accessor for ReportScreen);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_1BC69B550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC69B598(uint64_t a1)
{
  result = type metadata accessor for Report.Authority(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Report.Evidence(319);
    if (v3 <= 0x3F)
    {
      result = sub_1BC65F664(319, &qword_1EBCDCB70, 0x1E696AE38);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BC69B658(uint64_t a1)
{
  result = type metadata accessor for ReportScreen(319);
  if (v2 <= 0x3F)
  {
    result = sub_1BC69B6CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BC69B6CC()
{
  result = qword_1EBCDCB78;
  if (!qword_1EBCDCB78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBCDCB78);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BC69B744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BC69B78C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BC69B7E4(uint64_t a1)
{
  sub_1BC69B858(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1BC69B858(uint64_t a1)
{
  if (!qword_1EBCDCB80)
  {
    sub_1BC759800();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBCDCB80);
    }
  }
}

uint64_t sub_1BC69B8D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB90, &unk_1BC763D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC69B938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t View.checkingHistory(of:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v9 = type metadata accessor for ParticipantHistoryChecker(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 20);

  PolicyProperty.init()(&v12[v13]);
  sub_1BC759D90();
  sub_1BC63305C(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
  *v12 = sub_1BC75A740();
  v12[8] = v14 & 1;
  v15 = &v12[v9[6]];
  sub_1BC759D80();
  sub_1BC759F30();
  swift_allocObject();
  v21 = sub_1BC759F00();
  sub_1BC75B630();
  v16 = v23;
  *v15 = v22;
  *(v15 + 1) = v16;
  *&v12[v9[7]] = a1;
  v17 = &v12[v9[8]];
  *v17 = a2;
  *(v17 + 1) = a3;

  MEMORY[0x1BFB25FF0](v12, a4, v9, v20);
  return sub_1BC69BB9C(v12);
}

uint64_t type metadata accessor for ParticipantHistoryChecker(uint64_t a1)
{
  result = qword_1EDDD1210;
  if (!qword_1EDDD1210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC69BB9C(uint64_t a1)
{
  v2 = type metadata accessor for ParticipantHistoryChecker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC69BBF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - v3;
  v5 = sub_1BC759EE0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - v10;
  v12 = type metadata accessor for ParticipantHistoryChecker(0);
  PolicyProperty.wrappedValue.getter(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1BC66008C(v4, &unk_1EBCDBD90, &unk_1BC75F850);
    return 0;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    sub_1BC759E70();
    sub_1BC63305C(&qword_1EDDCF090, MEMORY[0x1E697B510], MEMORY[0x1E697B538]);
    v14 = sub_1BC75C170();
    v15 = *(v6 + 8);
    v15(v9, v5);
    if (v14)
    {
      v16 = (v1 + *(v12 + 24));
      v18 = *v16;
      v17 = v16[1];
      v22[2] = v18;
      v22[3] = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBE0, &qword_1BC763EC8);
      sub_1BC75B640();
      v19 = sub_1BC759F10();

      v15(v11, v5);
      return v19;
    }

    else
    {
      v20 = sub_1BC759D00();
      v21 = sub_1BC68868C(v20);
      v15(v11, v5);
      return v21;
    }
  }
}

uint64_t sub_1BC69BEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ParticipantHistoryChecker(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v8;
  v10 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v12 = sub_1BC69BBF8();
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBA8, &qword_1BC763E48);
  (*(*(v15 - 8) + 16))(a2, a1, v15);
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBB0, &qword_1BC763E50) + 36);
  *v16 = KeyPath;
  *(v16 + 8) = v12;
  *(v16 + 16) = v14;
  sub_1BC69D7F4(v2, v10);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v31[1] = v9;
  v18 = swift_allocObject();
  sub_1BC69D858(v10, v18 + v17);
  v19 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBB8, &qword_1BC763E70) + 36));
  sub_1BC75A860();
  sub_1BC75BDF0();
  *v19 = &unk_1BC763E68;
  v19[1] = v18;
  v20 = *(v6 + 36);
  v21 = v2;
  v31[0] = v2;
  v22 = *(v2 + v20);
  sub_1BC69D7F4(v21, v10);
  v23 = swift_allocObject();
  sub_1BC69D858(v10, v23 + v17);
  v24 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBC0, &qword_1BC763E88) + 36));
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBC8, &qword_1BC763E90);

  sub_1BC75BDF0();
  *(v24 + *(v25 + 40)) = v22;
  *v24 = &unk_1BC763E80;
  v24[1] = v23;
  v26 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBD0, &qword_1BC763E98) + 36));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBD8, &qword_1BC763EA0);
  v28 = v31[0];
  PolicyProperty.wrappedValue.getter(v26 + *(v27 + 40));
  sub_1BC69D7F4(v28, v10);
  v29 = swift_allocObject();
  sub_1BC69D858(v10, v29 + v17);
  result = sub_1BC75BDF0();
  *v26 = &unk_1BC763EB0;
  v26[1] = v29;
  return result;
}

uint64_t EnvironmentValues.analysisHistoryCheckStatus.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BC69C1FC(a1, a2, a3);
  sub_1BC75ABC0();
  return v4;
}

unint64_t sub_1BC69C1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD0AA0[0];
  if (!qword_1EDDD0AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD0AA0);
  }

  return result;
}

uint64_t sub_1BC69C290(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_1BC75BDB0();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_1BC75A4E0();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_1BC75BDE0();
  v1[15] = sub_1BC75BDD0();
  v5 = sub_1BC75BD80();
  v1[16] = v5;
  v1[17] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BC69C3F8, v5, v4);
}

uint64_t sub_1BC69C3F8()
{
  v1 = v0[6];
  v2 = (v1 + *(type metadata accessor for ParticipantHistoryChecker(0) + 24));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBE0, &qword_1BC763EC8);
  sub_1BC75B640();
  v0[18] = v0[4];
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_1BC69C4D0;

  return MEMORY[0x1EEDD8C48]();
}

uint64_t sub_1BC69C4D0()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1BC69C734;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1BC69C5EC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BC69C5EC()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[11];

  v4 = sub_1BC68B214();
  (*(v3 + 16))(v1, v4, v2);
  v5 = sub_1BC75A4C0();
  v6 = sub_1BC75BF50();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[14];
  v9 = v0[10];
  v10 = v0[11];
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BC630000, v5, v6, "Stopped listening for updates.", v11, 2u);
    MEMORY[0x1BFB27EF0](v11, -1, -1);
  }

  (*(v10 + 8))(v8, v9);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BC69C734()
{
  v1 = *(v0 + 160);

  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE120, &unk_1BC763ED0);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 160);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  if (v3)
  {
    v7 = *(v0 + 104);

    v8 = sub_1BC68B214();
    (*(v6 + 16))(v7, v8, v5);
    v9 = sub_1BC75A4C0();
    v10 = sub_1BC75BF50();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BC630000, v9, v10, "Stopped listening for updates", v11, 2u);
      MEMORY[0x1BFB27EF0](v11, -1, -1);
    }

    v12 = *(v0 + 104);
    v13 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = *(v0 + 64);
    v15 = *(v0 + 72);
    v17 = *(v0 + 56);

    (*(v14 + 8))(v12, v13);
    (*(v16 + 8))(v15, v17);
  }

  else
  {
    v18 = *(v0 + 96);

    v19 = sub_1BC68B214();
    (*(v6 + 16))(v18, v19, v5);
    v20 = v4;
    v21 = sub_1BC75A4C0();
    v22 = sub_1BC75BF60();

    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 160);
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = v24;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v28;
      *v26 = v28;
      _os_log_impl(&dword_1BC630000, v21, v22, "Failed to listen for updates. Error: %@", v25, 0xCu);
      sub_1BC66008C(v26, &qword_1EBCDE130, &qword_1BC7679C0);
      MEMORY[0x1BFB27EF0](v26, -1, -1);
      MEMORY[0x1BFB27EF0](v25, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1BC69CA54()
{
  v0[2] = sub_1BC75BDE0();
  v0[3] = sub_1BC75BDD0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BC6525CC;

  return sub_1BC69CB00();
}

uint64_t sub_1BC69CB00()
{
  v1[5] = v0;
  v1[6] = type metadata accessor for ParticipantHistoryChecker(0);
  v1[7] = swift_task_alloc();
  v2 = sub_1BC75A4E0();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = sub_1BC759EE0();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v1[14] = swift_task_alloc();
  sub_1BC75BDE0();
  v1[15] = sub_1BC75BDD0();
  v5 = sub_1BC75BD80();
  v1[16] = v5;
  v1[17] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1BC69CCB8, v5, v4);
}

uint64_t sub_1BC69CCB8(uint64_t a1)
{
  v2 = v1[14];
  v3 = v1[11];
  v4 = v1[12];
  PolicyProperty.wrappedValue.getter(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    v5 = v1[14];

    sub_1BC66008C(v5, &unk_1EBCDBD90, &unk_1BC75F850);
LABEL_8:

    v19 = v1[1];

    return v19();
  }

  v6 = v1[13];
  v7 = v1[14];
  v8 = v1[11];
  v9 = v1[12];
  sub_1BC759E70();
  sub_1BC63305C(&qword_1EDDCF090, MEMORY[0x1E697B510], MEMORY[0x1E697B538]);
  v10 = sub_1BC75C170();
  v11 = *(v9 + 8);
  v11(v6, v8);
  v11(v7, v8);
  if ((v10 & 1) == 0)
  {

    goto LABEL_8;
  }

  v13 = v1[5];
  v12 = v1[6];
  v14 = (v13 + *(v12 + 24));
  v16 = *v14;
  v15 = v14[1];
  v1[2] = v16;
  v1[3] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBE0, &qword_1BC763EC8);
  sub_1BC75B640();
  v1[18] = v1[4];
  v17 = *(v13 + *(v12 + 28));
  v18 = swift_task_alloc();
  v1[19] = v18;
  *v18 = v1;
  v18[1] = sub_1BC69CEF8;

  return MEMORY[0x1EEDD8C60](v17);
}

uint64_t sub_1BC69CEF8()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1BC69D0A4;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1BC69D014;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1BC69D014()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BC69D0A4()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 40);

  v6 = sub_1BC68B214();
  (*(v2 + 16))(v1, v6, v3);
  sub_1BC69D7F4(v5, v4);
  v7 = sub_1BC75A4C0();
  v8 = sub_1BC75BF60();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 56);
  if (v9)
  {
    v11 = *(v0 + 48);
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    v13 = *(*(v10 + *(v11 + 28)) + 16);
    sub_1BC69BB9C(v10);
    *(v12 + 4) = v13;
    _os_log_impl(&dword_1BC630000, v7, v8, "Failed to refetch for %ld participants", v12, 0xCu);
    MEMORY[0x1BFB27EF0](v12, -1, -1);
  }

  else
  {
    sub_1BC69BB9C(*(v0 + 56));
  }

  v15 = *(v0 + 72);
  v14 = *(v0 + 80);
  v16 = *(v0 + 64);

  (*(v15 + 8))(v14, v16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1BC69D24C()
{
  v0[2] = sub_1BC75BDE0();
  v0[3] = sub_1BC75BDD0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BC653334;

  return sub_1BC69CB00();
}

uint64_t sub_1BC69D30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BC69D71C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.analysisHistoryCheckStatus.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v6 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1BC69C1FC(v3, v4, v5);
  sub_1BC75ABC0();
  v7 = *(v6 + 24);
  *v6 = *(v6 + 16);
  *(v6 + 8) = v7;
  return sub_1BC69D410;
}

void sub_1BC69D410(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v3[2] = v4;
  v5 = *(v3 + 8);
  *(v3 + 24) = v5;
  if (a2)
  {
    sub_1BC6354C8(v4, v5);
    sub_1BC75ABD0();
    sub_1BC638C1C(*v3, *(v3 + 8));
  }

  else
  {
    sub_1BC75ABD0();
  }

  free(v3);
}

unint64_t sub_1BC69D4B0()
{
  result = qword_1EDDD1228[0];
  if (!qword_1EDDD1228[0])
  {
    type metadata accessor for ParticipantHistoryChecker(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD1228);
  }

  return result;
}

void sub_1BC69D540(uint64_t a1)
{
  sub_1BC69D69C(319, qword_1EDDCF110, MEMORY[0x1E697B4E8], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PolicyProperty(319);
    if (v2 <= 0x3F)
    {
      sub_1BC69D69C(319, &qword_1EDDCE778, MEMORY[0x1E697B560], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1BC69D69C(319, &qword_1EDDCF0E0, MEMORY[0x1E697B5B0], MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          sub_1BC6335A0();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BC69D69C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BC69D71C()
{
  result = qword_1EBCDCB98;
  if (!qword_1EBCDCB98)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC948, &qword_1BC766D80);
    sub_1BC69D7A0(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCB98);
  }

  return result;
}

unint64_t sub_1BC69D7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCBA0;
  if (!qword_1EBCDCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCBA0);
  }

  return result;
}

uint64_t sub_1BC69D7F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantHistoryChecker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC69D858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantHistoryChecker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC69D8BC()
{
  v2 = *(type metadata accessor for ParticipantHistoryChecker(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC69C290(v0 + v3);
}

uint64_t sub_1BC69D988()
{
  type metadata accessor for ParticipantHistoryChecker(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC65281C;

  return sub_1BC69CA54();
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for ParticipantHistoryChecker(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {
      v7 = sub_1BC759EE0();
      v8 = *(v7 - 8);
      if (!(*(v8 + 48))(v5, 1, v7))
      {
        (*(v8 + 8))(v5, v7);
      }
    }
  }

  else
  {
  }

  type metadata accessor for PolicyProperty(0);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC69DC60()
{
  type metadata accessor for ParticipantHistoryChecker(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC660280;

  return sub_1BC69D24C();
}

unint64_t sub_1BC69DD2C()
{
  result = qword_1EDDCE0F0;
  if (!qword_1EDDCE0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBD0, &qword_1BC763E98);
    sub_1BC69DDE4();
    sub_1BC633C54(&qword_1EDDCE7D0, &qword_1EBCDCBD8, &qword_1BC763EA0, MEMORY[0x1E697C520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0F0);
  }

  return result;
}

unint64_t sub_1BC69DDE4()
{
  result = qword_1EDDCE0F8;
  if (!qword_1EDDCE0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBC0, &qword_1BC763E88);
    sub_1BC69DE9C();
    sub_1BC633C54(&qword_1EDDCE7C8, &qword_1EBCDCBC8, &qword_1BC763E90, MEMORY[0x1E697C520]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0F8);
  }

  return result;
}

unint64_t sub_1BC69DE9C()
{
  result = qword_1EDDCE110;
  if (!qword_1EDDCE110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBB8, &qword_1BC763E70);
    sub_1BC69DF58();
    sub_1BC63305C(qword_1EDDCEEC0, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE110);
  }

  return result;
}

unint64_t sub_1BC69DF58()
{
  result = qword_1EDDCE138;
  if (!qword_1EDDCE138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBB0, &qword_1BC763E50);
    sub_1BC633C54(&qword_1EDDCE058, &qword_1EBCDCBA8, &qword_1BC763E48, MEMORY[0x1E697FDF8]);
    sub_1BC633C54(&qword_1EDDCE798, &qword_1EBCDC910, &unk_1BC763EE0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE138);
  }

  return result;
}

uint64_t sub_1BC69E04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a8@<X8>)
{
  v14 = a8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBE8, &unk_1BC763EF0) + 48);
  sub_1BC6EBA60(a1, a2, a3);
  *v14 = a4;
  *(v14 + 8) = a5;
  *(v14 + 16) = a6;
  type metadata accessor for Intervention.Kind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t static Intervention.Kind.attemptingToCallViaExternalRequest(_:isPresented:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{

  *a5 = sub_1BC6A4180(v9);
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  type metadata accessor for Intervention.Kind(0);
  swift_storeEnumTagMultiPayload();
}

void *static Intervention.Kind.attemptingToCallViaExternalRequest(sensitiveParticipants:otherParticipants:isPresented:callType:)@<X0>(unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v34 = a5;
  v36 = sub_1BC759FE0();
  v12 = *(v36 - 8);
  v13 = MEMORY[0x1EEE9AC00](v36);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;

  v19 = sub_1BC6A4180(v18);
  v35 = a6;
  if (a2 >> 62)
  {
    v20 = sub_1BC75C3F0();
  }

  else
  {
    v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x1E69E7CC0];
  if (!v20)
  {
LABEL_16:
    *a7 = v19;
    *(a7 + 8) = v21;
    *(a7 + 16) = a3;
    *(a7 + 24) = a4;
    *(a7 + 32) = v34 & 1;
    *(a7 + 40) = v35;
    type metadata accessor for Intervention.Kind(0);
    swift_storeEnumTagMultiPayload();
  }

  v33 = a7;
  v37 = MEMORY[0x1E69E7CC0];
  result = sub_1BC6701A4(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v30 = v19;
    v31 = a3;
    v32 = a4;
    v21 = v37;
    if ((a2 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v20; ++i)
      {
        MEMORY[0x1BFB26EB0](i, a2);
        SCAParticipant.structParticipant.getter();
        swift_unknownObjectRelease();
        v37 = v21;
        v25 = *(v21 + 16);
        v24 = *(v21 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1BC6701A4((v24 > 1), v25 + 1, 1);
          v21 = v37;
        }

        *(v21 + 16) = v25 + 1;
        (*(v12 + 32))(v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v25, v17, v36);
      }
    }

    else
    {
      v26 = (a2 + 32);
      do
      {
        v27 = *v26;
        SCAParticipant.structParticipant.getter();

        v37 = v21;
        v29 = *(v21 + 16);
        v28 = *(v21 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1BC6701A4((v28 > 1), v29 + 1, 1);
          v21 = v37;
        }

        *(v21 + 16) = v29 + 1;
        (*(v12 + 32))(v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29, v15, v36);
        ++v26;
        --v20;
      }

      while (v20);
    }

    a3 = v31;
    a4 = v32;
    a7 = v33;
    v19 = v30;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t static Intervention.Kind.attemptingToCallViaIntervenableButton(_:isPresented:callType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, char a3@<W5>, void *a4@<X8>)
{
  *a4 = a1;
  if ((a3 & 1) == 0)
  {
    a4[1] = a2;
  }

  type metadata accessor for Intervention.Kind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t static Intervention.Kind.attemptingToCallViaIntervenableButton(_:callType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for Intervention.Kind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BC69E554()
{
  v0 = sub_1BC759EE0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD18, &qword_1BC764240);
  MEMORY[0x1EEE9AC00](v26);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  PolicyProperty.wrappedValue.getter(&v24 - v14);
  v16 = 1;
  v17 = v0;
  v27 = *(v1 + 48);
  LODWORD(v0) = v27(v15, 1, v0);
  sub_1BC66008C(v15, &unk_1EBCDBD90, &unk_1BC75F850);
  if (v0 != 1)
  {
    PolicyProperty.wrappedValue.getter(v13);
    sub_1BC759ED0();
    v18 = v17;
    (*(v1 + 56))(v10, 0, 1, v17);
    v19 = *(v26 + 12);
    sub_1BC660024(v13, v4, &unk_1EBCDBD90, &unk_1BC75F850);
    sub_1BC660024(v10, &v4[v19], &unk_1EBCDBD90, &unk_1BC75F850);
    if (v27(v4, 1, v17) == 1)
    {
      sub_1BC66008C(v10, &unk_1EBCDBD90, &unk_1BC75F850);
      sub_1BC66008C(v13, &unk_1EBCDBD90, &unk_1BC75F850);
      if (v27(&v4[v19], 1, v17) == 1)
      {
        sub_1BC66008C(v4, &unk_1EBCDBD90, &unk_1BC75F850);
        v16 = 1;
        return v16 & 1;
      }
    }

    else
    {
      v26 = v13;
      v20 = v25;
      sub_1BC660024(v4, v25, &unk_1EBCDBD90, &unk_1BC75F850);
      if (v27(&v4[v19], 1, v17) != 1)
      {
        v21 = v24;
        (*(v1 + 32))(v24, &v4[v19], v18);
        sub_1BC6330A4(&qword_1EDDCEE80, MEMORY[0x1E697B510], MEMORY[0x1E697B520]);
        v16 = sub_1BC75BAB0();
        v22 = *(v1 + 8);
        v22(v21, v18);
        sub_1BC66008C(v10, &unk_1EBCDBD90, &unk_1BC75F850);
        sub_1BC66008C(v26, &unk_1EBCDBD90, &unk_1BC75F850);
        v22(v20, v18);
        sub_1BC66008C(v4, &unk_1EBCDBD90, &unk_1BC75F850);
        return v16 & 1;
      }

      sub_1BC66008C(v10, &unk_1EBCDBD90, &unk_1BC75F850);
      sub_1BC66008C(v26, &unk_1EBCDBD90, &unk_1BC75F850);
      (*(v1 + 8))(v20, v17);
    }

    sub_1BC66008C(v4, &qword_1EBCDCD18, &qword_1BC764240);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1BC69EA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v5 = type metadata accessor for PolicyCheckingIntervention(0);
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC20, &qword_1BC7640C8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC28, &unk_1BC7640D0);
  v13 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v15 = &v24 - v14;
  sub_1BC69EDBC(a1, v12);
  PolicyProperty.wrappedValue.getter(v9);
  v16 = sub_1BC759EE0();
  LOBYTE(a1) = (*(*(v16 - 8) + 48))(v9, 1, v16) != 1;
  sub_1BC66008C(v9, &unk_1EBCDBD90, &unk_1BC75F850);
  v27 = a1;
  sub_1BC63368C(v3, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PolicyCheckingIntervention);
  v17 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v18 = swift_allocObject();
  sub_1BC6A52AC(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for PolicyCheckingIntervention);
  sub_1BC6A4A10();
  sub_1BC75B420();

  sub_1BC66008C(v12, &qword_1EBCDCC20, &qword_1BC7640C8);
  KeyPath = swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCC8, &qword_1BC764180);
  v21 = v26;
  v22 = (v26 + *(v20 + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCD0, &qword_1BC764188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC10, &unk_1BC763FF0);
  sub_1BC75B640();
  *v22 = KeyPath;
  return (*(v13 + 32))(v21, v15, v25);
}

uint64_t sub_1BC69EDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v328 = a2;
  v329 = a1;
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCC0, &unk_1BC764148);
  MEMORY[0x1EEE9AC00](v330);
  v321 = &v267 - v3;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCD8, &qword_1BC764190);
  MEMORY[0x1EEE9AC00](v332);
  v331 = &v267 - v4;
  v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCE0, &qword_1BC764198);
  MEMORY[0x1EEE9AC00](v316);
  v317 = &v267 - v5;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCB8, &qword_1BC764140);
  MEMORY[0x1EEE9AC00](v327);
  v318 = &v267 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v295 = &v267 - v8;
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  v9 = MEMORY[0x1EEE9AC00](v293);
  v299 = &v267 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v298 = &v267 - v11;
  v12 = type metadata accessor for InterventionParticipantHistoryChecker(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v271 = &v267 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCE8, &qword_1BC7641A8);
  MEMORY[0x1EEE9AC00](v285);
  v286 = &v267 - v14;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC98, &qword_1BC764128);
  MEMORY[0x1EEE9AC00](v303);
  v287 = &v267 - v15;
  v282 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCA8, &qword_1BC764138);
  v16 = MEMORY[0x1EEE9AC00](v282);
  v270 = &v267 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v277 = &v267 - v18;
  v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCA0, &qword_1BC764130);
  v283 = *(v284 - 8);
  v19 = MEMORY[0x1EEE9AC00](v284);
  v280 = &v267 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v278 = &v267 - v21;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCF0, &qword_1BC7641B0);
  v288 = *(v289 - 8);
  v22 = MEMORY[0x1EEE9AC00](v289);
  v281 = &v267 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v294 = &v267 - v24;
  v311 = sub_1BC75A160();
  v314 = *(v311 - 8);
  v25 = MEMORY[0x1EEE9AC00](v311);
  v269 = &v267 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v279 = &v267 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v276 = &v267 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v275 = &v267 - v31;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCF8, &qword_1BC7641B8);
  MEMORY[0x1EEE9AC00](v324);
  v326 = &v267 - v32;
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD00, &qword_1BC7641C0);
  MEMORY[0x1EEE9AC00](v300);
  v301 = &v267 - v33;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD08, &unk_1BC7641C8);
  MEMORY[0x1EEE9AC00](v306);
  v307 = &v267 - v34;
  v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC68, &qword_1BC7640F8);
  MEMORY[0x1EEE9AC00](v322);
  v308 = &v267 - v35;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC58, &qword_1BC7640F0);
  MEMORY[0x1EEE9AC00](v325);
  v302 = &v267 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
  v38 = MEMORY[0x1EEE9AC00](v37 - 8);
  v268 = &v267 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v273 = &v267 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v291 = &v267 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  v44 = MEMORY[0x1EEE9AC00](v43 - 8);
  v272 = (&v267 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v44);
  v296 = (&v267 - v46);
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC70, &qword_1BC764100);
  v304 = *(v305 - 8);
  v47 = MEMORY[0x1EEE9AC00](v305);
  v274 = &v267 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v297 = &v267 - v49;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD10, &qword_1BC7641D8);
  v313 = *(v309 - 8);
  v50 = MEMORY[0x1EEE9AC00](v309);
  v292 = &v267 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v312 = &v267 - v52;
  v53 = sub_1BC759F50();
  v319 = *(v53 - 8);
  v320 = v53;
  v54 = MEMORY[0x1EEE9AC00](v53);
  v290 = &v267 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v315 = &v267 - v56;
  v57 = type metadata accessor for Intervention.Kind(0);
  v58 = MEMORY[0x1EEE9AC00](v57);
  v60 = &v267 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = MEMORY[0x1EEE9AC00](v58);
  v63 = &v267 - v62;
  v64 = MEMORY[0x1EEE9AC00](v61);
  v66 = (&v267 - v65);
  v67 = MEMORY[0x1EEE9AC00](v64);
  v69 = (&v267 - v68);
  v70 = MEMORY[0x1EEE9AC00](v67);
  v72 = &v267 - v71;
  v73 = MEMORY[0x1EEE9AC00](v70);
  v75 = &v267 - v74;
  MEMORY[0x1EEE9AC00](v73);
  v77 = &v267 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC48, &qword_1BC7640E8);
  MEMORY[0x1EEE9AC00](v78);
  v323 = &v267 - v79;
  if (sub_1BC69E554())
  {
    KeyPath = swift_getKeyPath();
    v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC90, &qword_1BC764120);
    v82 = v321;
    (*(*(v81 - 8) + 16))(v321, v329, v81);
    v83 = v331;
    v84 = v82 + *(v330 + 36);
    *v84 = KeyPath;
    *(v84 + 8) = 1;
    sub_1BC660024(v82, v83, &qword_1EBCDCCC0, &unk_1BC764148);
    swift_storeEnumTagMultiPayload();
    sub_1BC6A4A9C();
    sub_1BC6A5158();
    sub_1BC75AE00();
    return sub_1BC66008C(v82, &qword_1EBCDCCC0, &unk_1BC764148);
  }

  v321 = v78;
  v86 = type metadata accessor for PolicyCheckingIntervention(0);
  sub_1BC63368C(v2 + *(v86 + 24), v77, type metadata accessor for Intervention.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v310 = v77;
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1BC63368C(v77, v72, type metadata accessor for Intervention.Kind);
      v167 = *v72;
      v168 = *(v72 + 1);
      v170 = *(v72 + 2);
      v169 = *(v72 + 3);
      LODWORD(v312) = v72[32];
      v171 = *(v72 + 5);
      v173 = v319;
      v172 = v320;
      v174 = v315;
      (*(v319 + 104))(v315, *MEMORY[0x1E697B588], v320);
      v175 = sub_1BC759F40();
      (*(v173 + 8))(v174, v172);
      v88 = v331;
      if (v175)
      {
        v320 = v170;
        if ((v171 - 1) > 3)
        {
          v176 = MEMORY[0x1E697B638];
        }

        else
        {
          v176 = qword_1E7FF2770[v171 - 1];
        }

        v215 = v311;
        v216 = v275;
        (*(v314 + 104))(v275, *v176, v311);
        v217 = v314;
        v218 = v273;
        (*(v314 + 32))(v273, v216, v215);
        (*(v217 + 56))(v218, 0, 1, v215);
        v219 = v272;
        static InterventionConfig.Layout.tryingToCall(validating:otherParticipants:callType:)(v167, v168, v218, v272);

        sub_1BC66008C(v218, &qword_1EBCDC868, &qword_1BC762D30);
        v220 = v274;
        v299 = v169;
        sub_1BC6A1CB0(v320, v169, v312, v219, v274);
        sub_1BC66008C(v219, &qword_1EBCDC878, &qword_1BC763F00);
        v221 = sub_1BC759D90();
        sub_1BC759D80();
        v222 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC78, &qword_1BC764108);
        v223 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC80, &qword_1BC764110);
        v224 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC88, &qword_1BC764118);
        v225 = sub_1BC6A4D84();
        v333 = v224;
        v334 = v225;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v227 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
        v333 = v223;
        v334 = v221;
        v335 = OpaqueTypeConformance2;
        v336 = v227;
        v330 = MEMORY[0x1E69811C8];
        v228 = swift_getOpaqueTypeConformance2();
        v333 = v222;
        v334 = v228;
        v229 = swift_getOpaqueTypeConformance2();
        v230 = v292;
        v231 = v305;
        sub_1BC75B210();

        (*(v304 + 8))(v220, v231);
        v232 = v309;
        (*(v313 + 16))(v307, v230, v309);
        swift_storeEnumTagMultiPayload();
        v333 = v231;
        v334 = v221;
        v335 = v229;
        v336 = v227;
        swift_getOpaqueTypeConformance2();
        v233 = v308;
        sub_1BC75AE00();
        sub_1BC660024(v233, v301, &qword_1EBCDCC68, &qword_1BC7640F8);
        swift_storeEnumTagMultiPayload();
        sub_1BC6A4BB4();
        sub_1BC6A4E6C();
        v234 = v302;
        sub_1BC75AE00();
        sub_1BC66008C(v233, &qword_1EBCDCC68, &qword_1BC7640F8);
        sub_1BC660024(v234, v326, &qword_1EBCDCC58, &qword_1BC7640F0);
        swift_storeEnumTagMultiPayload();
        sub_1BC6A4B28();
        sub_1BC6A50A0();
        v115 = v323;
        sub_1BC75AE00();

        sub_1BC66008C(v234, &qword_1EBCDCC58, &qword_1BC7640F0);
        (*(v313 + 8))(v292, v232);
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v88 = v331;
    if (EnumCaseMultiPayload == 6)
    {
      sub_1BC63368C(v77, v63, type metadata accessor for Intervention.Kind);
      v186 = &v63[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBE8, &unk_1BC763EF0) + 48)];
      v187 = *v186;
      v188 = *(v186 + 1);
      v189 = v186[16];
      v190 = v298;
      sub_1BC6A523C(v63, v298);
      v192 = v319;
      v191 = v320;
      v193 = v315;
      (*(v319 + 104))(v315, *MEMORY[0x1E697B590], v320);
      v194 = sub_1BC759F40();
      (*(v192 + 8))(v193, v191);
      if (v194)
      {
        v195 = v295;
        MEMORY[0x1BFB262E0](v293);
        v196 = v296;
        static InterventionConfig.Layout.addingToSharedAlbum(validating:)(v195, v296);
        sub_1BC66008C(v195, &qword_1EBCDC998, &qword_1BC7641A0);
        v197 = v297;
        sub_1BC6A1CB0(v187, v188, v189, v196, v297);
        sub_1BC66008C(v196, &qword_1EBCDC878, &qword_1BC763F00);
        v198 = sub_1BC759D90();
        sub_1BC759D80();
        v199 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC78, &qword_1BC764108);
        v200 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC80, &qword_1BC764110);
        v201 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC88, &qword_1BC764118);
        v202 = sub_1BC6A4D84();
        v333 = v201;
        v334 = v202;
        v203 = swift_getOpaqueTypeConformance2();
        v329 = v187;
        v204 = v203;
        v205 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
        v333 = v200;
        v334 = v198;
        v335 = v204;
        v336 = v205;
        v206 = swift_getOpaqueTypeConformance2();
        v333 = v199;
        v334 = v206;
        v207 = swift_getOpaqueTypeConformance2();
        v208 = v312;
        v320 = v188;
        v209 = v305;
        sub_1BC75B210();

        (*(v304 + 8))(v197, v209);
        v210 = v313;
        v211 = v208;
        v212 = v309;
        (*(v313 + 16))(v307, v211, v309);
        swift_storeEnumTagMultiPayload();
        v333 = v209;
        v334 = v198;
        v335 = v207;
        v336 = v205;
        swift_getOpaqueTypeConformance2();
        v213 = v308;
        sub_1BC75AE00();
        sub_1BC660024(v213, v317, &qword_1EBCDCC68, &qword_1BC7640F8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC90, &qword_1BC764120);
        sub_1BC6A4BB4();
        sub_1BC633C54(&qword_1EDDCE7B0, &qword_1EBCDCC90, &qword_1BC764120, MEMORY[0x1E697FDF8]);
        v214 = v318;
        sub_1BC75AE00();
        sub_1BC66008C(v213, &qword_1EBCDCC68, &qword_1BC7640F8);
        sub_1BC660024(v214, v326, &qword_1EBCDCCB8, &qword_1BC764140);
        swift_storeEnumTagMultiPayload();
        sub_1BC6A4B28();
        sub_1BC6A50A0();
        v115 = v323;
        sub_1BC75AE00();

        sub_1BC66008C(v214, &qword_1EBCDCCB8, &qword_1BC764140);
        (*(v210 + 8))(v312, v212);
        sub_1BC66008C(v298, &qword_1EBCDC970, &unk_1BC763180);
        goto LABEL_40;
      }

      sub_1BC66008C(v190, &qword_1EBCDC970, &unk_1BC763180);

      goto LABEL_39;
    }

    if (EnumCaseMultiPayload != 12)
    {
LABEL_39:
      v241 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC90, &qword_1BC764120);
      (*(*(v241 - 8) + 16))(v317, v329, v241);
      swift_storeEnumTagMultiPayload();
      sub_1BC6A4BB4();
      sub_1BC633C54(&qword_1EDDCE7B0, &qword_1EBCDCC90, &qword_1BC764120, MEMORY[0x1E697FDF8]);
      v242 = v318;
      sub_1BC75AE00();
      sub_1BC660024(v242, v326, &qword_1EBCDCCB8, &qword_1BC764140);
      swift_storeEnumTagMultiPayload();
      sub_1BC6A4B28();
      sub_1BC6A50A0();
      v115 = v323;
      sub_1BC75AE00();
      sub_1BC66008C(v242, &qword_1EBCDCCB8, &qword_1BC764140);
      goto LABEL_40;
    }

    sub_1BC63368C(v310, v60, type metadata accessor for Intervention.Kind);
    v116 = &v60[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBE8, &unk_1BC763EF0) + 48)];
    v118 = *v116;
    v117 = *(v116 + 1);
    v119 = v116[16];
    v120 = v299;
    sub_1BC6A523C(v60, v299);
    v122 = v319;
    v121 = v320;
    v123 = v315;
    (*(v319 + 104))(v315, *MEMORY[0x1E697B590], v320);
    v124 = sub_1BC759F40();
    (*(v122 + 8))(v123, v121);
    if (v124)
    {
      v125 = v295;
      MEMORY[0x1BFB262E0](v293);
      v126 = v296;
      static InterventionConfig.Layout.viewingSharedAlbumAsset(validating:)(v125, v296);
      sub_1BC66008C(v125, &qword_1EBCDC998, &qword_1BC7641A0);
      v127 = v297;
      v311 = v118;
      v314 = v117;
      sub_1BC6A1CB0(v118, v117, v119, v126, v297);
      sub_1BC66008C(v126, &qword_1EBCDC878, &qword_1BC763F00);
      v128 = sub_1BC759D90();
      sub_1BC759D80();
      v129 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC78, &qword_1BC764108);
      v130 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC80, &qword_1BC764110);
      v131 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC88, &qword_1BC764118);
      v132 = sub_1BC6A4D84();
      v333 = v131;
      v334 = v132;
      v133 = swift_getOpaqueTypeConformance2();
      v134 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
      v333 = v130;
      v334 = v128;
      v335 = v133;
      v336 = v134;
      v135 = swift_getOpaqueTypeConformance2();
      v333 = v129;
      v334 = v135;
      v136 = swift_getOpaqueTypeConformance2();
      v137 = v312;
      v138 = v305;
      sub_1BC75B210();

      (*(v304 + 8))(v127, v138);
      v139 = v313;
      v140 = v309;
      (*(v313 + 16))(v307, v137, v309);
      swift_storeEnumTagMultiPayload();
      v333 = v138;
      v334 = v128;
      v335 = v136;
      v336 = v134;
      swift_getOpaqueTypeConformance2();
      v141 = v308;
      sub_1BC75AE00();
      sub_1BC660024(v141, v317, &qword_1EBCDCC68, &qword_1BC7640F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC90, &qword_1BC764120);
      sub_1BC6A4BB4();
      sub_1BC633C54(&qword_1EDDCE7B0, &qword_1EBCDCC90, &qword_1BC764120, MEMORY[0x1E697FDF8]);
      v142 = v318;
      sub_1BC75AE00();
      sub_1BC66008C(v141, &qword_1EBCDCC68, &qword_1BC7640F8);
      sub_1BC660024(v142, v326, &qword_1EBCDCCB8, &qword_1BC764140);
      swift_storeEnumTagMultiPayload();
      sub_1BC6A4B28();
      sub_1BC6A50A0();
      v115 = v323;
      sub_1BC75AE00();

      sub_1BC66008C(v142, &qword_1EBCDCCB8, &qword_1BC764140);
      (*(v139 + 8))(v137, v140);
      sub_1BC66008C(v299, &qword_1EBCDC970, &unk_1BC763180);
      v88 = v331;
      goto LABEL_40;
    }

    sub_1BC66008C(v120, &qword_1EBCDC970, &unk_1BC763180);

LABEL_30:
    v88 = v331;
    goto LABEL_39;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1BC63368C(v77, v69, type metadata accessor for Intervention.Kind);
    v143 = *v69;
    v145 = v319;
    v144 = v320;
    v146 = v315;
    (*(v319 + 104))(v315, *MEMORY[0x1E697B588], v320);
    v147 = sub_1BC759F40();
    (*(v145 + 8))(v146, v144);
    if (v147)
    {
      v148 = v291;
      (*(v314 + 56))(v291, 1, 1, v311);

      v149 = sub_1BC68B278();
      v150 = v282;
      v151 = v277;
      sub_1BC68B27C(v149, v152 & 0x1FF, v143, v148, &v277[*(v282 + 36)]);
      v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC90, &qword_1BC764120);
      (*(*(v153 - 8) + 16))(v151, v329, v153);
      v154 = swift_getKeyPath();
      v155 = sub_1BC6A4FB8();

      v156 = v278;
      View.checkingHistory(of:predicate:)(v143, sub_1BC6A5A70, v154, v150, v155);

      sub_1BC66008C(v151, &qword_1EBCDCCA8, &qword_1BC764138);
      v157 = sub_1BC759D90();
      sub_1BC759D80();
      v333 = v150;
      v334 = v155;
      v158 = swift_getOpaqueTypeConformance2();
      v159 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
      v160 = v294;
      v161 = v284;
      sub_1BC75B210();

      (*(v283 + 8))(v156, v161);
      v162 = v288;
      v163 = v160;
      v164 = v289;
      (*(v288 + 16))(v286, v163, v289);
      swift_storeEnumTagMultiPayload();
      v333 = v161;
      v334 = v157;
      v335 = v158;
      v336 = v159;
      swift_getOpaqueTypeConformance2();
      v165 = v287;
      sub_1BC75AE00();
      sub_1BC660024(v165, v301, &qword_1EBCDCC98, &qword_1BC764128);
      swift_storeEnumTagMultiPayload();
      sub_1BC6A4BB4();
      sub_1BC6A4E6C();
      v166 = v302;
      sub_1BC75AE00();
      sub_1BC66008C(v165, &qword_1EBCDCC98, &qword_1BC764128);
      sub_1BC660024(v166, v326, &qword_1EBCDCC58, &qword_1BC7640F0);
      swift_storeEnumTagMultiPayload();
      sub_1BC6A4B28();
      sub_1BC6A50A0();
      v115 = v323;
      sub_1BC75AE00();
      sub_1BC66008C(v166, &qword_1EBCDCC58, &qword_1BC7640F0);
      (*(v162 + 8))(v294, v164);
      v88 = v331;
      goto LABEL_40;
    }

LABEL_29:

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1BC63368C(v77, v66, type metadata accessor for Intervention.Kind);
    v178 = *v66;
    v177 = v66[1];
    v180 = v319;
    v179 = v320;
    v181 = v290;
    (*(v319 + 104))(v290, *MEMORY[0x1E697B588], v320);
    v182 = sub_1BC759F40();
    (*(v180 + 8))(v181, v179);
    if (v182)
    {
      v183 = *(v314 + 104);
      v184 = (v177 - 1);
      v88 = v331;
      v315 = v178;
      if (v184 > 3)
      {
        v185 = MEMORY[0x1E697B638];
      }

      else
      {
        v185 = qword_1E7FF2770[v184];
      }

      v235 = v311;
      v236 = v279;
      v183(v279, *v185, v311);
      v237 = v314;
      v238 = *(v314 + 32);
      v239 = v276;
      v238(v276, v236, v235);
      LOBYTE(v236) = sub_1BC75A150();
      (*(v237 + 8))(v239, v235);
      if (v236)
      {
        if (v184 > 3)
        {
          v240 = MEMORY[0x1E697B638];
        }

        else
        {
          v240 = qword_1E7FF2770[v184];
        }

        v243 = v269;
        v183(v269, *v240, v235);
        v244 = v268;
        v238(v268, v243, v235);
        (*(v314 + 56))(v244, 0, 1, v235);
        v245 = sub_1BC68B278();
        v247 = v246;
        v248 = v315;

        v249 = v247 & 0x1FF;
        v250 = v271;
        sub_1BC68B27C(v245, v249, v248, v244, v271);
        v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC90, &qword_1BC764120);
        v252 = v270;
        (*(*(v251 - 8) + 16))(v270, v329, v251);
        v253 = v282;
        sub_1BC6A52AC(v250, v252 + *(v282 + 36), type metadata accessor for InterventionParticipantHistoryChecker);
        v254 = swift_getKeyPath();
        v255 = sub_1BC6A4FB8();

        View.checkingHistory(of:predicate:)(v248, sub_1BC6A5314, v254, v253, v255);

        sub_1BC66008C(v252, &qword_1EBCDCCA8, &qword_1BC764138);
        v256 = sub_1BC759D90();
        sub_1BC759D80();
        v333 = v253;
        v334 = v255;
        v257 = swift_getOpaqueTypeConformance2();
        v258 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
        v259 = v281;
        v260 = v284;
        v261 = v280;
        sub_1BC75B210();

        (*(v283 + 8))(v261, v260);
        v262 = v288;
        v263 = v259;
        v264 = v289;
        (*(v288 + 16))(v286, v263, v289);
        swift_storeEnumTagMultiPayload();
        v333 = v260;
        v334 = v256;
        v335 = v257;
        v336 = v258;
        swift_getOpaqueTypeConformance2();
        v265 = v287;
        sub_1BC75AE00();
        sub_1BC660024(v265, v301, &qword_1EBCDCC98, &qword_1BC764128);
        swift_storeEnumTagMultiPayload();
        sub_1BC6A4BB4();
        sub_1BC6A4E6C();
        v266 = v302;
        sub_1BC75AE00();
        sub_1BC66008C(v265, &qword_1EBCDCC98, &qword_1BC764128);
        sub_1BC660024(v266, v326, &qword_1EBCDCC58, &qword_1BC7640F0);
        swift_storeEnumTagMultiPayload();
        sub_1BC6A4B28();
        sub_1BC6A50A0();
        v115 = v323;
        sub_1BC75AE00();
        sub_1BC66008C(v266, &qword_1EBCDCC58, &qword_1BC7640F0);
        (*(v262 + 8))(v281, v264);
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    goto LABEL_29;
  }

  v88 = v331;
  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_39;
  }

  sub_1BC63368C(v310, v75, type metadata accessor for Intervention.Kind);
  v89 = *v75;
  v90 = *(v75 + 1);
  v91 = *(v75 + 2);
  v92 = v75[24];
  v94 = v319;
  v93 = v320;
  v95 = v315;
  (*(v319 + 104))(v315, *MEMORY[0x1E697B588], v320);
  v96 = sub_1BC759F40();
  (*(v94 + 8))(v95, v93);
  if ((v96 & 1) == 0)
  {

    goto LABEL_39;
  }

  v97 = v291;
  (*(v314 + 56))(v291, 1, 1, v311);
  v98 = v296;
  static InterventionConfig.Layout.tryingToCall(validating:otherParticipants:callType:)(v89, MEMORY[0x1E69E7CC0], v97, v296);

  sub_1BC66008C(v97, &qword_1EBCDC868, &qword_1BC762D30);
  v99 = v297;
  v298 = v90;
  v299 = v91;
  sub_1BC6A1CB0(v90, v91, v92, v98, v297);
  sub_1BC66008C(v98, &qword_1EBCDC878, &qword_1BC763F00);
  v100 = sub_1BC759D90();
  sub_1BC759D80();
  v101 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC78, &qword_1BC764108);
  v102 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC80, &qword_1BC764110);
  v103 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC88, &qword_1BC764118);
  v104 = sub_1BC6A4D84();
  v333 = v103;
  v334 = v104;
  v105 = swift_getOpaqueTypeConformance2();
  v106 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
  v333 = v102;
  v334 = v100;
  v335 = v105;
  v336 = v106;
  v107 = swift_getOpaqueTypeConformance2();
  v333 = v101;
  v334 = v107;
  v108 = swift_getOpaqueTypeConformance2();
  v109 = v312;
  v110 = v305;
  sub_1BC75B210();

  (*(v304 + 8))(v99, v110);
  v111 = v313;
  v112 = v309;
  (*(v313 + 16))(v307, v109, v309);
  swift_storeEnumTagMultiPayload();
  v333 = v110;
  v334 = v100;
  v335 = v108;
  v336 = v106;
  swift_getOpaqueTypeConformance2();
  v113 = v308;
  sub_1BC75AE00();
  sub_1BC660024(v113, v301, &qword_1EBCDCC68, &qword_1BC7640F8);
  swift_storeEnumTagMultiPayload();
  sub_1BC6A4BB4();
  sub_1BC6A4E6C();
  v114 = v302;
  sub_1BC75AE00();
  sub_1BC66008C(v113, &qword_1EBCDCC68, &qword_1BC7640F8);
  sub_1BC660024(v114, v326, &qword_1EBCDCC58, &qword_1BC7640F0);
  swift_storeEnumTagMultiPayload();
  sub_1BC6A4B28();
  sub_1BC6A50A0();
  v115 = v323;
  sub_1BC75AE00();

  sub_1BC66008C(v114, &qword_1EBCDCC58, &qword_1BC7640F0);
  (*(v111 + 8))(v312, v112);
LABEL_40:
  sub_1BC6A4570(v310, type metadata accessor for Intervention.Kind);
  sub_1BC660024(v115, v88, &qword_1EBCDCC48, &qword_1BC7640E8);
  swift_storeEnumTagMultiPayload();
  sub_1BC6A4A9C();
  sub_1BC6A5158();
  sub_1BC75AE00();
  return sub_1BC66008C(v115, &qword_1EBCDCC48, &qword_1BC7640E8);
}

uint64_t sub_1BC6A1BAC(_BYTE *a1)
{
  v2 = type metadata accessor for IntervenableAction(0);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 == 1)
  {
    type metadata accessor for PolicyCheckingIntervention(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC10, &unk_1BC763FF0);
    sub_1BC75B640();
    v6 = *v5;

    sub_1BC6A4570(v5, type metadata accessor for IntervenableAction);
    (*(*v6 + 96))(0);
  }

  return result;
}

uint64_t sub_1BC6A1CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a3;
  v34 = a1;
  v35 = a2;
  v42 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC88, &qword_1BC764118);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC80, &qword_1BC764110);
  v10 = *(v9 - 8);
  v38 = v9;
  v39 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC78, &qword_1BC764108);
  v14 = *(v13 - 8);
  v40 = v13;
  v41 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v33 - v18;
  v20 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = &v8[*(v6 + 36)];
  v22 = type metadata accessor for InterventionPresenter(0);
  sub_1BC660024(a4, &v21[v22[7]], &qword_1EBCDC878, &qword_1BC763F00);
  sub_1BC660024(v19, &v21[v22[8]], &qword_1EBCDBC50, &qword_1BC762D70);
  KeyPath = swift_getKeyPath();
  PolicyProperty.init()(&v21[v22[6]]);
  v24 = v35;
  *v21 = v34;
  *(v21 + 1) = v24;
  v21[16] = v36;
  *(v21 + 3) = KeyPath;
  *(v21 + 4) = 0;
  v21[40] = 0;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC90, &qword_1BC764120);
  (*(*(v25 - 8) + 16))(v8, v37, v25);
  v26 = sub_1BC6A4D84();

  View.prefetchSensitiveContentPolicy()(v6, v26);
  sub_1BC66008C(v8, &qword_1EBCDCC88, &qword_1BC764118);
  v27 = sub_1BC759D90();
  sub_1BC759D80();
  v43 = v6;
  v44 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
  v30 = v38;
  sub_1BC75B210();

  (*(v39 + 8))(v12, v30);
  v43 = v30;
  v44 = v27;
  v45 = OpaqueTypeConformance2;
  v46 = v29;
  swift_getOpaqueTypeConformance2();
  v31 = v40;
  sub_1BC75B310();
  (*(v41 + 8))(v16, v31);
  return sub_1BC66008C(v19, &qword_1EBCDBC50, &qword_1BC762D70);
}

uint64_t sub_1BC6A2124@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC759C00();
  *a1 = result & 1;
  return result;
}

uint64_t View.intervention(isPresented:with:analyticsContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v62 = a8;
  v53 = a7;
  v57 = a5;
  v58 = a6;
  v56 = a4;
  v60 = a3;
  v59 = a2;
  v49 = a1;
  v9 = type metadata accessor for InterventionPresenter(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BC75A960();
  v61 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v54 = &v43 - v13;
  v14 = sub_1BC6A45D0(qword_1EDDD1378, type metadata accessor for InterventionPresenter, &unk_1BC76401C);
  v67 = a7;
  v68 = v14;
  WitnessTable = swift_getWitnessTable();
  v63 = v12;
  v64 = WitnessTable;
  v16 = WitnessTable;
  v50 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v55 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v52 = &v43 - v18;
  v19 = sub_1BC759D90();
  v63 = v12;
  v64 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
  v63 = OpaqueTypeMetadata2;
  v64 = v19;
  v44 = OpaqueTypeMetadata2;
  v22 = v19;
  v43 = v19;
  v65 = OpaqueTypeConformance2;
  v66 = v21;
  v46 = OpaqueTypeConformance2;
  v23 = v21;
  v45 = v21;
  v24 = swift_getOpaqueTypeMetadata2();
  v47 = v24;
  v51 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v43 - v25;
  v63 = OpaqueTypeMetadata2;
  v64 = v22;
  v65 = OpaqueTypeConformance2;
  v66 = v23;
  v48 = swift_getOpaqueTypeConformance2();
  v63 = v24;
  v64 = v48;
  v27 = swift_getOpaqueTypeMetadata2();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v43 - v32;
  sub_1BC660024(v56, &v11[v9[7]], &qword_1EBCDC878, &qword_1BC763F00);
  sub_1BC660024(v57, &v11[v9[8]], &qword_1EBCDBC50, &qword_1BC762D70);
  KeyPath = swift_getKeyPath();
  PolicyProperty.init()(&v11[v9[6]]);
  v35 = v59;
  *v11 = v49;
  *(v11 + 1) = v35;
  v11[16] = v60;
  *(v11 + 3) = KeyPath;
  *(v11 + 4) = 0;
  v11[40] = 0;

  v36 = v54;
  MEMORY[0x1BFB25FF0](v11, v58, v9, v53);
  sub_1BC6A4570(v11, type metadata accessor for InterventionPresenter);
  v37 = v52;
  View.prefetchSensitiveContentPolicy()(v12, v50);
  (*(v61 + 8))(v36, v12);
  swift_checkMetadataState();
  sub_1BC759D80();
  v38 = v44;
  sub_1BC75B210();

  (*(v55 + 8))(v37, v38);
  v39 = v47;
  sub_1BC75B310();
  (*(v51 + 8))(v26, v39);
  v40 = *(v28 + 16);
  v40(v33, v31, v27);
  v41 = *(v28 + 8);
  v41(v31, v27);
  v40(v62, v33, v27);
  return (v41)(v33, v27);
}

uint64_t sub_1BC6A2AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v46[1] = a5;
  v50 = a4;
  v48 = a3;
  v53 = a1;
  v54 = a2;
  v60 = a6;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD48, &qword_1BC764280);
  MEMORY[0x1EEE9AC00](v55);
  v59 = v46 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD38, &qword_1BC764260);
  v49 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v8 = v46 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD30, &qword_1BC764258);
  v47 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v10 = v46 - v9;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD50, &qword_1BC764288);
  v52 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v51 = v46 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v46 - v13;
  v15 = type metadata accessor for InterventionConfig(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v19 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v46 - v20;
  sub_1BC660024(v53, v14, &qword_1EBCDC250, &qword_1BC761340);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1BC66008C(v14, &qword_1EBCDC250, &qword_1BC761340);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD40, &qword_1BC764268);
    (*(*(v22 - 8) + 16))(v59, v54, v22);
    swift_storeEnumTagMultiPayload();
    v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBF0, &unk_1BC763F38);
    v24 = sub_1BC633C54(&qword_1EDDCE7B8, &qword_1EBCDCD40, &qword_1BC764268, MEMORY[0x1E697FDF8]);
    v25 = type metadata accessor for RemoteOrInProcessInterventionView(255);
    v26 = sub_1BC6330A4(qword_1EDDCEF48, type metadata accessor for RemoteOrInProcessInterventionView, &unk_1BC764380);
    v61 = v25;
    v62 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v61 = v22;
    v62 = v23;
    v63 = v24;
    v64 = OpaqueTypeConformance2;
    v28 = swift_getOpaqueTypeConformance2();
    v61 = v56;
    v62 = v28;
    v29 = swift_getOpaqueTypeConformance2();
    v61 = v57;
    v62 = v29;
    swift_getOpaqueTypeConformance2();
    return sub_1BC75AE00();
  }

  else
  {
    sub_1BC6A52AC(v14, v21, type metadata accessor for InterventionConfig);
    sub_1BC63368C(v21, v19, type metadata accessor for InterventionConfig);
    v31 = (*(v16 + 80) + 16) & ~*(v16 + 80);
    v32 = swift_allocObject();
    sub_1BC6A52AC(v19, v32 + v31, type metadata accessor for InterventionConfig);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD40, &qword_1BC764268);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBF0, &unk_1BC763F38);
    v35 = sub_1BC633C54(&qword_1EDDCE7B8, &qword_1EBCDCD40, &qword_1BC764268, MEMORY[0x1E697FDF8]);
    v36 = type metadata accessor for RemoteOrInProcessInterventionView(255);
    v37 = sub_1BC6330A4(qword_1EDDCEF48, type metadata accessor for RemoteOrInProcessInterventionView, &unk_1BC764380);
    v61 = v36;
    v62 = v37;
    v45 = swift_getOpaqueTypeConformance2();
    sub_1BC75B3C0();

    v61 = v33;
    v62 = v34;
    v63 = v35;
    v64 = v45;
    v38 = swift_getOpaqueTypeConformance2();
    v39 = v56;
    sub_1BC75B310();
    (*(v49 + 8))(v8, v39);
    v61 = v39;
    v62 = v38;
    v40 = swift_getOpaqueTypeConformance2();
    v41 = v51;
    v42 = v57;
    sub_1BC75B350();
    (*(v47 + 8))(v10, v42);
    v43 = v52;
    v44 = v58;
    (*(v52 + 16))(v59, v41, v58);
    swift_storeEnumTagMultiPayload();
    v61 = v42;
    v62 = v40;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    (*(v43 + 8))(v41, v44);
    return sub_1BC6A4570(v21, type metadata accessor for InterventionConfig);
  }
}

uint64_t sub_1BC6A3300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v72 = a5;
  v73 = a3;
  v74 = a4;
  v79 = a2;
  v76 = a1;
  v83 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBF0, &unk_1BC763F38);
  type metadata accessor for RemoteOrInProcessInterventionView(255);
  sub_1BC6330A4(qword_1EDDCEF48, type metadata accessor for RemoteOrInProcessInterventionView, &unk_1BC764380);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v88 = a6;
  v89 = v10;
  v90 = a7;
  v91 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v69 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v68 = &v61 - v13;
  v88 = a6;
  v89 = v10;
  v71 = v10;
  v82 = a7;
  v90 = a7;
  v91 = OpaqueTypeConformance2;
  v67 = OpaqueTypeConformance2;
  v14 = swift_getOpaqueTypeConformance2();
  v88 = OpaqueTypeMetadata2;
  v89 = v14;
  v15 = swift_getOpaqueTypeMetadata2();
  v65 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v61 - v16;
  v70 = OpaqueTypeMetadata2;
  v88 = OpaqueTypeMetadata2;
  v89 = v14;
  v64 = v14;
  v80 = swift_getOpaqueTypeConformance2();
  v81 = v15;
  v88 = v15;
  v89 = v80;
  v17 = swift_getOpaqueTypeMetadata2();
  v66 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v63 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v62 = &v61 - v21;
  v22 = *(a6 - 8);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v61 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v61 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v61 - v29;
  v31 = type metadata accessor for InterventionConfig(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v35 = &v61 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v75 = &v61 - v36;
  v77 = v17;
  v84 = a6;
  v37 = sub_1BC75AE10();
  v78 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v85 = &v61 - v38;
  sub_1BC660024(v76, v30, &qword_1EBCDC250, &qword_1BC761340);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_1BC66008C(v30, &qword_1EBCDC250, &qword_1BC761340);
    v39 = *(v22 + 16);
    v40 = v84;
    v39(v27, v79, v84);
    v39(v25, v27, v40);
    v42 = v80;
    v41 = v81;
    v88 = v81;
    v89 = v80;
    v43 = swift_getOpaqueTypeConformance2();
    v44 = v82;
    sub_1BC633720(v25, v77, v40, v43, v82);
    v45 = *(v22 + 8);
    v45(v25, v40);
    v45(v27, v40);
  }

  else
  {
    v46 = v75;
    sub_1BC6A52AC(v30, v75, type metadata accessor for InterventionConfig);
    sub_1BC63368C(v46, v35, type metadata accessor for InterventionConfig);
    v47 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v48 = swift_allocObject();
    sub_1BC6A52AC(v35, v48 + v47, type metadata accessor for InterventionConfig);
    v44 = v82;
    v49 = v68;
    sub_1BC75B3C0();

    v50 = v61;
    v51 = v70;
    sub_1BC75B310();
    (*(v69 + 8))(v49, v51);
    v52 = v63;
    v42 = v80;
    v41 = v81;
    sub_1BC75B350();
    (*(v65 + 8))(v50, v41);
    v88 = v41;
    v89 = v42;
    v76 = swift_getOpaqueTypeConformance2();
    v79 = v37;
    v53 = v66;
    v54 = *(v66 + 16);
    v55 = v62;
    v56 = v77;
    v54(v62, v52, v77);
    v57 = *(v53 + 8);
    v57(v52, v56);
    v54(v52, v55, v56);
    sub_1BC633818(v52, v56, v84, v76, v44);
    v57(v52, v56);
    v57(v55, v56);
    v37 = v79;
    sub_1BC6A4570(v75, type metadata accessor for InterventionConfig);
  }

  v88 = v41;
  v89 = v42;
  v86 = swift_getOpaqueTypeConformance2();
  v87 = v44;
  swift_getWitnessTable();
  v58 = v78;
  v59 = v85;
  (*(v78 + 16))(v83, v85, v37);
  return (*(v58 + 8))(v59, v37);
}

uint64_t sub_1BC6A3C38(uint64_t a1)
{
  v2 = type metadata accessor for InterventionConfig(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RemoteOrInProcessInterventionView(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC63368C(a1, v4, type metadata accessor for InterventionConfig);
  sub_1BC6A6914(v4, v7);
  sub_1BC6330A4(qword_1EDDCEF48, type metadata accessor for RemoteOrInProcessInterventionView, &unk_1BC764380);
  sub_1BC75B310();
  return sub_1BC6A4570(v7, type metadata accessor for RemoteOrInProcessInterventionView);
}

void sub_1BC6A3D90(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1BC75ABB0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v9 = *(a2 + 24);
    v10 = *(a2 + 32);
    if (*(a2 + 40) == 1)
    {
      sub_1BC63302C(*(a2 + 24), *(a2 + 32));
      if (v9 == 1)
      {
        return;
      }
    }

    else
    {
      v11 = v6;

      sub_1BC75BF70();
      v12 = sub_1BC75AFC0();
      sub_1BC75A4B0();

      sub_1BC75ABA0();
      swift_getAtKeyPath();
      sub_1BC63906C(v9, v10, 0);
      (*(v5 + 8))(v8, v11);
      v9 = v15;
      v10 = v16;
      if (v15 == 1)
      {
        return;
      }
    }

    type metadata accessor for SCAError(0);
    v14[1] = 20;
    sub_1BC678250(MEMORY[0x1E69E7CC0]);
    sub_1BC6330A4(&unk_1EBCDC290, type metadata accessor for SCAError, &unk_1BC7614B4);
    sub_1BC759700();
    v13 = v15;
    sub_1BC7120B0(v15, v9);
    sub_1BC635468(v9, v10);
  }
}

void *sub_1BC6A3FA8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC210, &qword_1BC761190);
  v10 = *(sub_1BC759D00() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1BC759D00() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1BC6A4180(unint64_t a1)
{
  v2 = sub_1BC759CA0();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BC759FE0();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v33 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1BC759D00();
  v36 = *(v32 - 8);
  result = MEMORY[0x1EEE9AC00](v32);
  v37 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = sub_1BC75C3B0();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    a1 = result | 0x8000000000000000;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v8 = a1 + 64;
    v9 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 64);
  }

  v14 = 0;
  v15 = (v9 + 64) >> 6;
  v31[0] = v9;
  v31[1] = v36 + 32;
  v16 = MEMORY[0x1E69E7CC0];
  v35 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v17 = v14;
    v18 = v10;
    v19 = v14;
    if (!v10)
    {
      break;
    }

LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = (v19 << 9) | (8 * __clz(__rbit64(v18)));
    v22 = *(*(a1 + 48) + v21);
    v23 = *(*(a1 + 56) + v21);
    v24 = v22;
    v25 = v23;
    if (!v24)
    {
LABEL_22:
      sub_1BC639AFC(v35);
      return v16;
    }

    while (1)
    {
      SCAParticipant.structParticipant.getter();
      sub_1BC75BFE0();
      sub_1BC759CB0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1BC6A3FA8(0, v16[2] + 1, 1, v16);
      }

      v30 = v16[2];
      v29 = v16[3];
      if (v30 >= v29 >> 1)
      {
        v16 = sub_1BC6A3FA8((v29 > 1), v30 + 1, 1, v16);
      }

      v16[2] = v30 + 1;
      result = (*(v36 + 32))(v16 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v30, v37, v32);
      v14 = v19;
      v10 = v20;
      a1 = v35;
      if ((v35 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v26 = sub_1BC75C3C0();
      if (v26)
      {
        v28 = v27;
        v38 = v26;
        sub_1BC65F664(0, &qword_1EDDCDFB0, 0x1E697B648);
        swift_dynamicCast();
        v24 = v39;
        v38 = v28;
        sub_1BC65F664(0, &qword_1EDDCDF98, 0x1E697B670);
        swift_dynamicCast();
        v25 = v39;
        v19 = v14;
        v20 = v10;
        if (v24)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
      goto LABEL_22;
    }

    v18 = *(v8 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC6A4570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC6A45D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BC6A463C(uint64_t a1)
{
  if (!qword_1EDDCE728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    type metadata accessor for SCACallType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDDCE728);
    }
  }
}

void sub_1BC6A46E4(uint64_t a1)
{
  if (!qword_1EDDCE730)
  {
    MEMORY[0x1EEE9AC00](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC808, &qword_1BC763F60);
    type metadata accessor for SCACallType(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDDCE730);
    }
  }
}

void sub_1BC6A482C(uint64_t a1)
{
  if (!qword_1EDDCE800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC08, &qword_1BC763FE8);
    v1 = sub_1BC75A720();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDCE800);
    }
  }
}

void sub_1BC6A48B8(uint64_t a1)
{
  type metadata accessor for PolicyProperty(319);
  if (v1 <= 0x3F)
  {
    sub_1BC632880(319, &qword_1EBCDCC18, type metadata accessor for IntervenableAction, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Intervention.Kind(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BC6A49A0(uint64_t a1, _BYTE *a2)
{
  type metadata accessor for PolicyCheckingIntervention(0);

  return sub_1BC6A1BAC(a2);
}

unint64_t sub_1BC6A4A10()
{
  result = qword_1EBCDCC38;
  if (!qword_1EBCDCC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC20, &qword_1BC7640C8);
    sub_1BC6A4A9C();
    sub_1BC6A5158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCC38);
  }

  return result;
}

unint64_t sub_1BC6A4A9C()
{
  result = qword_1EBCDCC40;
  if (!qword_1EBCDCC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC48, &qword_1BC7640E8);
    sub_1BC6A4B28();
    sub_1BC6A50A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCC40);
  }

  return result;
}

unint64_t sub_1BC6A4B28()
{
  result = qword_1EBCDCC50;
  if (!qword_1EBCDCC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC58, &qword_1BC7640F0);
    sub_1BC6A4BB4();
    sub_1BC6A4E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCC50);
  }

  return result;
}

unint64_t sub_1BC6A4BB4()
{
  result = qword_1EBCDCC60;
  if (!qword_1EBCDCC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC68, &qword_1BC7640F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC70, &qword_1BC764100);
    sub_1BC759D90();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC78, &qword_1BC764108);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC80, &qword_1BC764110);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC88, &qword_1BC764118);
    sub_1BC6A4D84();
    swift_getOpaqueTypeConformance2();
    sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCC60);
  }

  return result;
}

unint64_t sub_1BC6A4D84()
{
  result = qword_1EDDCE7D8;
  if (!qword_1EDDCE7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC88, &qword_1BC764118);
    sub_1BC633C54(&qword_1EDDCE7B0, &qword_1EBCDCC90, &qword_1BC764120, MEMORY[0x1E697FDF8]);
    sub_1BC6A45D0(qword_1EDDD1378, type metadata accessor for InterventionPresenter, &unk_1BC76401C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE7D8);
  }

  return result;
}

unint64_t sub_1BC6A4E6C()
{
  result = qword_1EDDCE7C0;
  if (!qword_1EDDCE7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC98, &qword_1BC764128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCCA0, &qword_1BC764130);
    sub_1BC759D90();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCCA8, &qword_1BC764138);
    sub_1BC6A4FB8();
    swift_getOpaqueTypeConformance2();
    sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE7C0);
  }

  return result;
}

unint64_t sub_1BC6A4FB8()
{
  result = qword_1EDDCE7E0;
  if (!qword_1EDDCE7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCCA8, &qword_1BC764138);
    sub_1BC633C54(&qword_1EDDCE7B0, &qword_1EBCDCC90, &qword_1BC764120, MEMORY[0x1E697FDF8]);
    sub_1BC6330A4(qword_1EDDCE8B0, type metadata accessor for InterventionParticipantHistoryChecker, &unk_1BC762F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE7E0);
  }

  return result;
}

unint64_t sub_1BC6A50A0()
{
  result = qword_1EBCDCCB0;
  if (!qword_1EBCDCCB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCCB8, &qword_1BC764140);
    sub_1BC6A4BB4();
    sub_1BC633C54(&qword_1EDDCE7B0, &qword_1EBCDCC90, &qword_1BC764120, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCCB0);
  }

  return result;
}

unint64_t sub_1BC6A5158()
{
  result = qword_1EDDCE7E8;
  if (!qword_1EDDCE7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCCC0, &unk_1BC764148);
    sub_1BC633C54(&qword_1EDDCE7B0, &qword_1EBCDCC90, &qword_1BC764120, MEMORY[0x1E697FDF8]);
    sub_1BC633C54(&qword_1EDDCE790, &qword_1EBCDC918, &qword_1BC762ED0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE7E8);
  }

  return result;
}

uint64_t sub_1BC6A523C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6A52AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC6A5340()
{
  result = qword_1EDDCDFF8;
  if (!qword_1EDDCDFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCD20, &qword_1BC764248);
    sub_1BC6A53C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCDFF8);
  }

  return result;
}

unint64_t sub_1BC6A53C4()
{
  result = qword_1EDDCE0A0;
  if (!qword_1EDDCE0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCD28, &qword_1BC764250);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCD30, &qword_1BC764258);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCD38, &qword_1BC764260);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCD40, &qword_1BC764268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBF0, &unk_1BC763F38);
    sub_1BC633C54(&qword_1EDDCE7B8, &qword_1EBCDCD40, &qword_1BC764268, MEMORY[0x1E697FDF8]);
    type metadata accessor for RemoteOrInProcessInterventionView(255);
    sub_1BC6330A4(qword_1EDDCEF48, type metadata accessor for RemoteOrInProcessInterventionView, &unk_1BC764380);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0A0);
  }

  return result;
}

uint64_t objectdestroy_42Tm()
{
  v1 = type metadata accessor for InterventionConfig(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  type metadata accessor for InterventionConfig.Layout(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
      v8 = sub_1BC759D00();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload > 1)
      {
        goto LABEL_14;
      }

      v7 = sub_1BC759CA0();
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload != 2)
    {
      v7 = sub_1BC759DE0();
LABEL_9:
      (*(*(v7 - 8) + 8))(v0 + v3, v7);
      goto LABEL_14;
    }
  }

LABEL_14:
  v9 = *(v1 + 20);
  v10 = sub_1BC759EE0();
  v11 = *(*(v10 - 8) + 8);
  v11(v5 + v9, v10);

  v12 = v5 + *(v1 + 32);
  v13 = sub_1BC759940();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = type metadata accessor for AnalyticsUIContext(0);

  v11(v12 + *(v14 + 24), v10);
  v15 = *(v14 + 48);
  v16 = sub_1BC759C70();
  (*(*(v16 - 8) + 8))(v12 + v15, v16);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}