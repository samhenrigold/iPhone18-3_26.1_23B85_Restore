id EdgeLayout.__allocating_init(item:container:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = [v5 initWithItem:a1 container:a2 insets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v6;
}

id sub_1C56233C8(void *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7, float a8)
{
  v9 = v8;
  [a1 _mapsui_disableTranslatesAutoresizingMaskIntoConstraints];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E200, &qword_1C5869760);
  swift_unknownObjectRetain();
  sub_1C56236C4();
  swift_unknownObjectRetain();
  sub_1C56236C4();
  *&v18[2] = a4;
  *&v18[3] = a5;
  *&v18[4] = a6;
  *&v18[5] = a7;
  v18[6] = a3;
  v19 = a8;
  *(v9 + OBJC_IVAR___MUEdgeLayoutInternal_builder) = sub_1C562370C(v18);

  return sub_1C562389C(v16, &off_1F44C6BC0);
}

unint64_t sub_1C56234D4(uint64_t a1)
{
  result = sub_1C56234FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C56234FC()
{
  result = qword_1ED77E8E8;
  if (!qword_1ED77E8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E8E8);
  }

  return result;
}

unint64_t sub_1C5623550()
{
  result = qword_1ED77E8E0;
  if (!qword_1ED77E8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E8E0);
  }

  return result;
}

uint64_t sub_1C56235F0(uint64_t a1)
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

uint64_t sub_1C56236C4()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1C562370C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1C562374C(a1);
  return v2;
}

void *sub_1C562374C(uint64_t a1)
{
  v3 = *v1;
  v1[2] = 1;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v1 + *(*v1 + 136)) = 1;
  *(v1 + *(*v1 + 144)) = 1;
  v4 = (v1 + *(*v1 + 152));
  v5 = MEMORY[0x1E69E7CC0];
  v6 = *(v3 + 80);
  *v4 = MEMORY[0x1E69E7CC0];
  v4[1] = v5;
  swift_unknownObjectWeakInit();
  v7 = MEMORY[0x1E69E7CD0];
  *(v1 + *(*v1 + 160)) = MEMORY[0x1E69E7CD0];
  *(v1 + *(*v1 + 168)) = v7;
  (*(*(v6 - 8) + 32))(v1 + *(*v1 + 128), a1, v6);
  return v1;
}

id sub_1C562389C(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder];
  *v4 = a1;
  *(v4 + 1) = a2;
  v10.receiver = v2;
  v10.super_class = type metadata accessor for ConstraintLayout();
  swift_unknownObjectRetain();
  v5 = objc_msgSendSuper2(&v10, sel_init);
  ObjectType = swift_getObjectType();
  v7 = *(a2 + 80);
  v8 = v5;
  v7(v5, ObjectType, a2);

  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1C5623988(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C56239D8(uint64_t a1)
{
  sub_1C5623A68(v5);
  v6 = a1;
  sub_1C5623B08(v5, v4);
  sub_1C5623B40(v4, v2);
  return sub_1C5623F2C(v5);
}

uint64_t sub_1C5623A68@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C5623B40(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_1C5623BBC(a1, a2);
  v5 = *(*(*(v4 + 80) - 8) + 8);

  return v5(a1);
}

void sub_1C5623BBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v13[-v8];
  v10 = *(v5 + 128);
  swift_beginAccess();
  (*(v7 + 16))(v9, &v3[v10], v6);
  LOBYTE(v5) = sub_1C584F620();
  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  (*(v7 + 24))(&v3[v10], a1, v6);
  swift_endAccess();
  if ((v5 & 1) == 0)
  {
    v3[*(*v3 + 136)] = 1;
    sub_1C5623E9C();
    v11 = swift_beginAccess();
    if (*(v3 + 2) == 2)
    {
      sub_1C5624064(v11, v12);
      sub_1C5627450();
    }
  }
}

BOOL sub_1C5623E30(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v3)
    {
      v4 = v3;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return Strong == v4;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

void sub_1C5623E9C()
{
  if (*(v0 + *(*v0 + 136)) == 1)
  {
    swift_beginAccess();
    if (v0[2])
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      [Strong setNeedsUpdateConstraints];
    }
  }
}

uint64_t sub_1C5623F64(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___MUConstraintLayoutInternal_layoutBuilder + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 32))(a1, ObjectType, v3);
}

void sub_1C5623FC8(uint64_t a1)
{
  swift_beginAccess();
  v3 = v1[2];
  v1[2] = a1;
  v4 = swift_beginAccess();
  if (v1[2] != v3)
  {
    *(v1 + *(*v1 + 144)) = 1;
    if (v1[2] == 2)
    {
      sub_1C5624064(v4, v5);
    }

    sub_1C5627450();
  }
}

void sub_1C5624064(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v89 - v7;
  v10 = *(v9 + 136);
  if (*(v3 + v10) == 1)
  {
    swift_beginAccess();
    if (v3[2])
    {
      *(v3 + v10) = 0;
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v12 = *(*v3 + 128);
      swift_beginAccess();
      (*(v6 + 16))(v8, v3 + v12, v5);
      v13 = *(*(v4 + 88) + 16);
      v98 = *(v4 + 88);
      v14 = v13(v5);
      v15 = *(v6 + 8);
      v99 = v5;
      v15(v8, v5);
      v16 = (v3 + *(*v3 + 152));
      swift_beginAccess();
      v119 = *v16;
      v17 = swift_allocObject();
      v18 = v16[1];
      v102 = v17;
      *(v17 + 16) = v18;
      v19 = MEMORY[0x1E69E7CC0];
      v118 = MEMORY[0x1E69E7CC0];
      v20 = swift_allocObject();
      v101 = v20;
      *(v20 + 16) = v19;
      v21 = (v20 + 16);
      v100 = swift_allocObject();
      *(v100 + 16) = MEMORY[0x1E69E7CC8];
      v103 = *(v14 + 16);
      if (v103)
      {
        v95 = v21;
        v96 = v14;
        v97 = Strong;
        v105 = v14 + 32;

        v22 = 0;
        v104 = 0;
        v23 = MEMORY[0x1E69E7CC0];
        v24 = MEMORY[0x1E69E7CC0];
        v25 = v103;
        while (1)
        {
          v26 = v105 + 112 * v22++;
          sub_1C5625A18(v26, v110);
          sub_1C5625A18(v110, v109);

          v109[12] = 0;
          v109[13] = 0;
          v27 = v23 + 4;
          v28 = v23[2] + 1;
          while (--v28)
          {
            sub_1C56263BC();
            v27 += 14;
            if (sub_1C584F620())
            {
              goto LABEL_5;
            }
          }

          v29 = v115;
          LODWORD(v106) = v115;
          LODWORD(v120[0]) = 0;
          type metadata accessor for UILayoutPriority(0);
          sub_1C5625AB0(&qword_1ED77E828, MEMORY[0x1E69DC408]);
          v30 = sub_1C584F610();
          if ((v30 & 1) == 0)
          {
            sub_1C5625A18(v109, &v106);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1C5625864(0, v23[2] + 1, 1, v23);
            }

            v49 = v23[2];
            v48 = v23[3];
            if (v49 >= v48 >> 1)
            {
              v23 = sub_1C5625864((v48 > 1), v49 + 1, 1, v23);
            }

            sub_1C562638C(v110);
            v23[2] = v49 + 1;
            sub_1C5625808(&v106, &v23[14 * v49 + 4]);
            goto LABEL_6;
          }

          MEMORY[0x1EEE9AC00](v30, v31);
          *(&v89 - 2) = v110;
          v32 = v104;
          sub_1C5625F44(sub_1C571D734, (&v89 - 4), v33);
          v104 = v32;
          if ((v35 & 1) == 0)
          {
            break;
          }

          v36 = sub_1C5625AF4(v110, v3, v100, v102, v101);
          if (!v36)
          {
LABEL_5:
            sub_1C562638C(v110);
            goto LABEL_6;
          }

          v37 = v36;
          sub_1C5626108(v113, &v106);
          if (v107 == 255)
          {
            sub_1C571D770(&v106);
            swift_getObjectType();
            v120[0] = v37;
            v93 = v112;
            v94 = v111;
            v106 = 0u;
            v107 = 0u;
            v54 = v114;
            swift_unknownObjectRetain();
            v55 = sub_1C584FDB0();
            v56 = *(&v107 + 1);
            if (*(&v107 + 1))
            {
              v57 = __swift_project_boxed_opaque_existential_1(&v106, *(&v107 + 1));
              v91 = &v89;
              v92 = v55;
              v58 = *(v56 - 8);
              MEMORY[0x1EEE9AC00](v57, v57);
              v60 = &v89 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v58 + 16))(v60);
              v61 = sub_1C584FDB0();
              (*(v58 + 8))(v60, v56);
              v55 = v92;
              __swift_destroy_boxed_opaque_existential_1(&v106);
            }

            else
            {
              v61 = 0;
            }

            v64 = [objc_opt_self() constraintWithItem:v55 attribute:v94 relatedBy:v93 toItem:v61 attribute:0 multiplier:1.0 constant:v54];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease_n();
            v63 = v64;
LABEL_31:
            v52 = v63;
LABEL_32:
            LODWORD(v53) = v29;
            [v52 setPriority_];
            v65 = v117;
            if (!v117)
            {
              goto LABEL_37;
            }

            v66 = v116;
            v67 = HIBYTE(v117) & 0xF;
            if ((v117 & 0x2000000000000000) == 0)
            {
              v67 = v116 & 0xFFFFFFFFFFFFLL;
            }

            if (v67)
            {
              *&v106 = sub_1C56262A4();
              *(&v106 + 1) = v68;
              MEMORY[0x1C6949D90](46, 0xE100000000000000);
              MEMORY[0x1C6949D90](v66, v65);
            }

            else
            {
LABEL_37:
              sub_1C56262A4();
            }

            v69 = sub_1C584F630();

            [v52 setIdentifier_];

            MEMORY[0x1C6949DF0]();
            if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1C584F7A0();
            }

            sub_1C584F7E0();
            v24 = v118;
            sub_1C5625A18(v109, &v106);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = sub_1C5625864(0, v23[2] + 1, 1, v23);
            }

            v71 = v23[2];
            v70 = v23[3];
            if (v71 >= v70 >> 1)
            {
              v23 = sub_1C5625864((v70 > 1), v71 + 1, 1, v23);
            }

            sub_1C562638C(v110);
            v23[2] = v71 + 1;
            sub_1C5625808(&v106, &v23[14 * v71 + 4]);
            goto LABEL_45;
          }

          sub_1C56251C8(&v106, v120);
          v38 = sub_1C5625AF4(v120, v3, v100, v102, v101);
          if (v38)
          {
            v39 = v38;
            swift_getObjectType();
            v108[0] = v37;
            v40 = v111;
            v94 = v112;
            *(&v107 + 1) = swift_getObjectType();
            *&v106 = v39;
            v92 = v113[3];
            v41 = *&v113[4];
            v42 = v114;
            swift_unknownObjectRetain();
            swift_unknownObjectRetain();
            v93 = sub_1C584FDB0();
            v43 = *(&v107 + 1);
            if (*(&v107 + 1))
            {
              v44 = __swift_project_boxed_opaque_existential_1(&v106, *(&v107 + 1));
              v89 = &v89;
              v90 = v40;
              v45 = *(v43 - 8);
              MEMORY[0x1EEE9AC00](v44, v44);
              v47 = &v89 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
              (*(v45 + 16))(v47);
              v91 = sub_1C584FDB0();
              (*(v45 + 8))(v47, v43);
              v40 = v90;
              __swift_destroy_boxed_opaque_existential_1(&v106);
            }

            else
            {
              v91 = 0;
            }

            v62 = [objc_opt_self() constraintWithItem:v93 attribute:v40 relatedBy:v94 toItem:v91 attribute:v92 multiplier:v41 constant:v42];
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            sub_1C5626250(v120);
            swift_unknownObjectRelease();
            v63 = v62;
            goto LABEL_31;
          }

          swift_unknownObjectRelease();
          sub_1C5626250(v120);
          sub_1C562638C(v110);
LABEL_45:
          v25 = v103;
LABEL_6:
          sub_1C562638C(v109);
          if (v22 == v25)
          {

            Strong = v97;
            v21 = v95;
            goto LABEL_48;
          }
        }

        v50 = sub_1C571AF44(v34);
        v51 = v114;
        v52 = v50;
        [v52 setConstant_];
        goto LABEL_32;
      }

      v24 = MEMORY[0x1E69E7CC0];
LABEL_48:

      swift_beginAccess();
      v72 = *v21;
      v108[0] = v24;
      v108[1] = v72;

      v73 = Strong;
      swift_unknownObjectWeakInit();

      v74 = *v3;
      v75 = *(*v3 + 152);
      swift_beginAccess();
      v77 = type metadata accessor for LayoutBuilder.Components(0, *(v74 + 80), *(v74 + 88), v76);
      v78 = *(v77 - 8);
      (*(v78 + 16))(&v106, v3 + v75, v77);
      swift_beginAccess();
      (*(v78 + 24))(v3 + v75, v108, v77);
      swift_endAccess();
      v79 = *v3;
      v80 = v3 + *(*v3 + 152);
      swift_beginAccess();
      v82 = type metadata accessor for LayoutBuilder.Components(0, *(v79 + 80), *(v79 + 88), v81);
      v83 = *(v82 - 8);
      (*(v83 + 16))(v109, v80, v82);
      v84 = sub_1C5626784(v109, &v106);
      (*(v83 + 8))(v109, v82);
      if (!v84)
      {
        *(v3 + *(*v3 + 144)) = 1;
        swift_beginAccess();

        sub_1C5626ACC(v85, &qword_1ED77E810, 0x1E696ACD8, &qword_1EC170700, &unk_1C5877E48);
        swift_endAccess();

        swift_beginAccess();

        sub_1C5626ACC(v86, &unk_1ED77E840, 0x1E69DCC20, &qword_1EC1706F8, &qword_1C5877E40);
        swift_endAccess();
      }

      (*(v78 + 8))(&v106, v77);
      v88 = type metadata accessor for LayoutBuilder.Components(0, v99, v98, v87);
      (*(*(v88 - 8) + 8))(v108, v88);
    }
  }
}

uint64_t sub_1C5624E10()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void *sub_1C5624E4C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E210, &qword_1C5869768);
  v0 = swift_allocObject();
  sub_1C5624FF8(v0 + 32);
  sub_1C562538C(v0 + 144);
  sub_1C56252DC(v0 + 256);
  sub_1C56254E8(v0 + 368);
  sub_1C5625598(v0 + 480);
  sub_1C5625438(v0 + 592);
  v1 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 704; i += 112)
  {
    sub_1C5625648(v0 + i, v8);
    sub_1C5625728(v8, v6);
    if (v6[13] == 1)
    {
      sub_1C56259B0(v6);
    }

    else
    {
      sub_1C5625808(v6, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_1C5625864(0, v1[2] + 1, 1, v1);
      }

      v4 = v1[2];
      v3 = v1[3];
      if (v4 >= v3 >> 1)
      {
        v1 = sub_1C5625864((v3 > 1), v4 + 1, 1, v1);
      }

      v1[2] = v4 + 1;
      sub_1C5625808(v7, &v1[14 * v4 + 4]);
    }
  }

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E218, qword_1C5869770);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v1;
}

void sub_1C5624FF8(uint64_t a1@<X8>)
{
  if (*(v1 + 48))
  {
    sub_1C56250A4(v1, v7);
    v7[16] = 0;
    sub_1C56250A4(v1 + 8, v6);
    v6[16] = 0;
    v3 = *(v1 + 16);
    v4 = *(v1 + 56);
    v5 = sub_1C5625100();
    sub_1C5625108(v7, 3, 0, v6, 3, 0, 0, a1, v5, v3, v4);
  }

  else
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 96) = 0;
    *(a1 + 104) = 1;
  }
}

uint64_t sub_1C5625108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, float a11@<S2>)
{
  *(a8 + 48) = 0;
  *(a8 + 56) = -1;
  *(a8 + 40) = 0;
  sub_1C56251C8(a1, a8);
  *(a8 + 24) = a2;
  *(a8 + 32) = a3;
  sub_1C5625230(a8 + 40, &unk_1EC16FE40, &qword_1C5876370);
  result = sub_1C56251C8(a4, a8 + 40);
  *(a8 + 64) = a5;
  *(a8 + 72) = a9;
  *(a8 + 80) = a10;
  *(a8 + 88) = a11;
  *(a8 + 96) = a6;
  *(a8 + 104) = a7;
  return result;
}

uint64_t sub_1C5625230(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C56252A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C56252DC@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 48) & 4) != 0)
  {
    sub_1C56250A4(v1, v8);
    v8[16] = 0;
    sub_1C56250A4(v1 + 8, v7);
    v7[16] = 0;
    v3 = -*(v1 + 32);
    v4 = *(v1 + 56);
    v5 = sub_1C5625100();
    return sub_1C5625108(v8, 4, 0, v7, 4, 0, 0, a1, v5, v3, v4);
  }

  else
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 96) = 0;
    *(a1 + 104) = 1;
  }

  return result;
}

uint64_t sub_1C562538C@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 48) & 2) != 0)
  {
    sub_1C56250A4(v1, v8);
    v8[16] = 0;
    sub_1C56250A4(v1 + 8, v7);
    v7[16] = 0;
    v3 = *(v1 + 24);
    v4 = *(v1 + 56);
    v5 = sub_1C5625100();
    return sub_1C5625108(v8, 5, 0, v7, 5, 0, 0, a1, v5, v3, v4);
  }

  else
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 96) = 0;
    *(a1 + 104) = 1;
  }

  return result;
}

uint64_t sub_1C5625438@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 48) & 0xA) != 0)
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 96) = 0;
    *(a1 + 104) = 1;
  }

  else
  {
    sub_1C56250A4(v1, v7);
    v7[16] = 0;
    sub_1C56250A4(v1 + 8, v6);
    v6[16] = 0;
    v3 = *(v1 + 56);
    v4 = sub_1C5625100();
    return sub_1C5625108(v7, 9, 0, v6, 9, 0, 0, a1, v4, 0.0, v3);
  }

  return result;
}

uint64_t sub_1C56254E8@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 48) & 8) != 0)
  {
    sub_1C56250A4(v1, v8);
    v8[16] = 0;
    sub_1C56250A4(v1 + 8, v7);
    v7[16] = 0;
    v3 = -*(v1 + 40);
    v4 = *(v1 + 56);
    v5 = sub_1C5625100();
    return sub_1C5625108(v8, 6, 0, v7, 6, 0, 0, a1, v5, v3, v4);
  }

  else
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 96) = 0;
    *(a1 + 104) = 1;
  }

  return result;
}

uint64_t sub_1C5625598@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 48) & 5) != 0)
  {
    *(a1 + 64) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 96) = 0;
    *(a1 + 104) = 1;
  }

  else
  {
    sub_1C56250A4(v1, v7);
    v7[16] = 0;
    sub_1C56250A4(v1 + 8, v6);
    v6[16] = 0;
    v3 = *(v1 + 56);
    v4 = sub_1C5625100();
    return sub_1C5625108(v7, 10, 0, v6, 10, 0, 0, a1, v4, 0.0, v3);
  }

  return result;
}

uint64_t sub_1C5625648(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E218, qword_1C5869770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C56256B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 104);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t get_enum_tag_for_layout_string_6MapsUI23LayoutItemSpecificationOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5625728(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E218, qword_1C5869770);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5625798(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

void *sub_1C5625864(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E8B0, &qword_1C5869AC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[14 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1C56259B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E218, qword_1C5869770);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C5625A64(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1C5625AB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1C5625AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C5625EE8(a1, &v40);
  if (v42)
  {
    v9 = v40;
    v8 = v41;
    v10 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v10 = v40 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      v38 = sub_1C56262A4();
      v39 = v11;
      MEMORY[0x1C6949D90](46, 0xE100000000000000);
      MEMORY[0x1C6949D90](v9, v8);
      v13 = v38;
      v12 = v39;
    }

    else
    {
      v13 = sub_1C56262A4();
      v12 = v16;
    }

    swift_beginAccess();
    v17 = *(a3 + 16);
    if (*(v17 + 16) && (v18 = sub_1C5645D34(v13, v12), (v19 & 1) != 0))
    {
      v20 = *(*(v17 + 56) + 8 * v18);
      swift_endAccess();
      v15 = v20;
    }

    else
    {
      v35 = v13;
      v36 = v12;
      swift_endAccess();
      swift_beginAccess();
      v21 = *(a4 + 16);
      if (v21 >> 62)
      {
LABEL_38:
        v22 = sub_1C584FB90();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v23 = 0;
      while (1)
      {
        if (v22 == v23)
        {
          v15 = 0;
          goto LABEL_27;
        }

        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1C694A320](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = sub_1C5706414(v24, v9, v8);

        if (v26)
        {
          break;
        }

        if (__OFADD__(v23++, 1))
        {
          goto LABEL_37;
        }
      }

      v15 = sub_1C571AF44(v23);
LABEL_27:
      swift_endAccess();

      if (v15)
      {
        swift_beginAccess();
        v28 = v15;
        MEMORY[0x1C6949DF0]();
        if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        swift_endAccess();
        swift_beginAccess();
        v29 = v28;
        sub_1C571AE4C(v15, v35, v36);
      }

      else
      {
        v30 = [objc_allocWithZone(MEMORY[0x1E69DCC20]) init];
        v31 = sub_1C584F630();
        [v30 setIdentifier_];

        swift_beginAccess();
        v32 = v30;
        MEMORY[0x1C6949DF0]();
        if (*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
        }

        sub_1C584F7E0();
        swift_endAccess();
        swift_beginAccess();
        v15 = v32;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = *(a3 + 16);
        *(a3 + 16) = 0x8000000000000000;
        sub_1C571CC38(v15, v35, v36, isUniquelyReferenced_nonNull_native);

        *(a3 + 16) = v37;
      }

      swift_endAccess();
    }
  }

  else
  {
    sub_1C5626058(&v40, &v38);
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_1C56260B4(&v38);
    if (Strong)
    {
      return Strong;
    }

    else
    {
      return 0;
    }
  }

  return v15;
}

void sub_1C5625F44(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = sub_1C584FB90();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C694A320](v7, a3);
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_1C5626108(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16FE40, &qword_1C5876370);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5626178(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1C56262A4()
{
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRetain();
  }

  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170708, &qword_1C5877E58);
  v0 = sub_1C584F680();
  MEMORY[0x1C6949D90](v0);

  MEMORY[0x1C6949D90](58, 0xE100000000000000);
  sub_1C584FCF0();
  swift_unknownObjectRelease();
  return 0;
}

unint64_t sub_1C56263BC()
{
  result = qword_1ED77E878;
  if (!qword_1ED77E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E878);
  }

  return result;
}

uint64_t sub_1C5626410(uint64_t a1, uint64_t a2)
{
  sub_1C5625EE8(a1, v8);
  sub_1C5625EE8(a2, v9);
  if (v8[16])
  {
    sub_1C5625EE8(v8, v7);
    if (v10 == 1)
    {
      if (v7[0] == v9[0] && v7[1] == v9[1])
      {

LABEL_13:
        sub_1C5626250(v8);
        v3 = 1;
        return v3 & 1;
      }

      v4 = sub_1C584FDC0();

      if (v4)
      {
        goto LABEL_13;
      }

      sub_1C5626250(v8);
      goto LABEL_10;
    }
  }

  else
  {
    sub_1C5625EE8(v8, v7);
    if ((v10 & 1) == 0)
    {
      sub_1C5626058(v9, &v6);
      v3 = sub_1C5623E2C(v7, &v6);
      sub_1C56260B4(&v6);
      sub_1C56260B4(v7);
      sub_1C5626250(v8);
      return v3 & 1;
    }

    sub_1C56260B4(v7);
  }

  sub_1C5625230(v8, &unk_1EC16FEB0, &qword_1C58768D8);
LABEL_10:
  v3 = 0;
  return v3 & 1;
}

BOOL sub_1C562656C(uint64_t a1, uint64_t a2)
{
  if ((sub_1C5626410(a1, a2) & 1) == 0 || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  sub_1C5626108(a1 + 40, v10);
  sub_1C5626108(a2 + 40, v11);
  if (v10[16] != 255)
  {
    sub_1C5626108(v10, v9);
    if (v12 != 255)
    {
      sub_1C56251C8(v11, v8);
      v4 = sub_1C5626410(v9, v8);
      sub_1C5626250(v8);
      sub_1C5626250(v9);
      sub_1C5625230(v10, &unk_1EC16FE40, &qword_1C5876370);
      if ((v4 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    sub_1C5626250(v9);
LABEL_21:
    sub_1C5625230(v10, &qword_1EC16FE50, qword_1C5876378);
    return 0;
  }

  if (v12 != 255)
  {
    goto LABEL_21;
  }

  sub_1C5625230(v10, &unk_1EC16FE40, &qword_1C5876370);
LABEL_10:
  if (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88))
  {
    return 0;
  }

  v5 = *(a1 + 104);
  v6 = *(a2 + 104);
  if (v5)
  {
    return v6 && (*(a1 + 96) == *(a2 + 96) && v5 == v6 || (sub_1C584FDC0() & 1) != 0);
  }

  return !v6;
}

uint64_t sub_1C562673C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_1C5626784(unint64_t *a1, unint64_t *a2)
{
  if ((sub_1C5626864(*a1, *a2, &qword_1ED77E810, 0x1E696ACD8) & 1) == 0 || (sub_1C5626864(a1[1], a2[1], &unk_1ED77E840, 0x1E69DCC20) & 1) == 0)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (v5)
    {
      sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
      v7 = sub_1C584FAC0();

      return (v7 & 1) != 0;
    }

    v6 = Strong;
  }

  else if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1C5626864(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1C5626E40(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1C694A320](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1C694A320](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1C584FAC0();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1C584FAC0();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1C584FB90();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1C584FB90();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

void sub_1C5626ACC(unint64_t a1, unint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C584FB90())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1C694A320](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v11 = *(a1 + 8 * j + 32);
      }

      v12 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1C5626BCC(&v14, v11, a2, a3, a4, a5);

      if (v12 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_1C5626BCC(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1C584FBA0();

    if (v17)
    {

      sub_1C5626E40(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_1C584FB90();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_1C571BACC(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_1C5627224(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_1C571BE80(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_1C5626E40(0, a3, a4);
    v19 = sub_1C584FAB0();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_1C584FAC0();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_1C5626E88(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1C5626E40(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1C5626E88(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1C5627224(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1C571C504(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1C5627018(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_1C584FAB0();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_1C5626E40(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_1C584FAC0();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C584FDF0();
  __break(1u);
}

uint64_t sub_1C5627018(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1C584FC10();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_1C584FAB0();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1C5627224(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1C584FC10();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_1C584FAB0();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

void sub_1C5627450()
{
  v1 = *(*v0 + 144);
  if (*(v0 + v1) != 1)
  {
    return;
  }

  *(v0 + v1) = 0;
  v2 = (v0 + *(*v0 + 152));
  swift_beginAccess();

  v4 = sub_1C571D14C(v3);

  v5 = *(*v0 + 160);
  swift_beginAccess();
  v6 = *(v0 + v5);

  v37 = sub_1C571AFD4(v4, v6);
  v7 = sub_1C56280FC(v37, &qword_1ED77E810, 0x1E696ACD8, &qword_1ED77E808);
  sub_1C56281CC(v7);

  *(v0 + v5) = v4;

  v35 = v2;

  v9 = sub_1C571D2D8(v8);

  v10 = *(*v0 + 168);
  swift_beginAccess();
  v11 = *(v0 + v10);

  v36 = sub_1C571B0F0(v9, v11);
  v12 = sub_1C56280FC(v36, &unk_1ED77E840, 0x1E69DCC20, &qword_1ED77E838);
  v13 = v12;
  if ((v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
  {
    v14 = sub_1C584FB90();
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = *(v12 + 16);
    if (!v14)
    {
      goto LABEL_14;
    }
  }

  if (v14 >= 1)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C694A320](i, v13);
      }

      else
      {
        v16 = *(v13 + 8 * i + 32);
      }

      v17 = v16;
      v18 = [v16 owningView];
      if (v18)
      {

        v19 = [v17 owningView];
        [v19 removeLayoutGuide_];
      }
    }

LABEL_14:

    v11 = *(v0 + v10);
    *(v0 + v10) = v9;

    swift_beginAccess();
    v20 = v0[2];
    if (v20)
    {
      if (v20 == 1)
      {

        sub_1C5628320();
        return;
      }

      if (v20 == 2)
      {

        sub_1C5628320();
        v28 = *v35;

        if (v28 >> 62)
        {
          v29 = sub_1C584FB90();
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v30 = 0;
        while (v29 != v30)
        {
          if ((v28 & 0xC000000000000001) != 0)
          {
            v31 = MEMORY[0x1C694A320](v30, v28);
          }

          else
          {
            if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_42;
            }

            v31 = *(v28 + 8 * v30 + 32);
          }

          v11 = v31;
          if (__OFADD__(v30, 1))
          {
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          v32 = [v31 isActive];

          ++v30;
          if ((v32 & 1) == 0)
          {
            v33 = objc_opt_self();
            sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
            v34 = sub_1C584F750();
            [v33 activateConstraints_];

            goto LABEL_39;
          }
        }

        goto LABEL_39;
      }

      goto LABEL_48;
    }

    sub_1C56281CC(v21);

    v11 = v35[1];
    if (!(v11 >> 62))
    {
      v22 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        return;
      }

      goto LABEL_19;
    }

    goto LABEL_44;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  v22 = sub_1C584FB90();
  if (v22)
  {
LABEL_19:
    if (v22 >= 1)
    {

      for (j = 0; j != v22; ++j)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1C694A320](j, v11);
        }

        else
        {
          v24 = *(v11 + 8 * j + 32);
        }

        v25 = v24;
        v26 = [v24 owningView];
        if (v26)
        {

          v27 = [v25 owningView];
          [v27 removeLayoutGuide_];
        }
      }

LABEL_39:

      return;
    }

    __break(1u);
LABEL_48:
    sub_1C584FD00();
    __break(1u);
  }
}

uint64_t sub_1C56279C0(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C5626E40(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C5627A10(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4, unint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v75 = a4;
  v73 = a3;
  v8 = a2;
  v93 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v9 = a1;
  v71 = a7;
  v72 = a6;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C584FB80();
    v7 = v73;
    sub_1C5626E40(0, v73, v75);
    sub_1C56279C0(a5, v73, v75);
    sub_1C584F950();
    v9 = v88;
    v12 = v89;
    v13 = v90;
    v14 = v91;
    v15 = v92;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v83 = v9;
  v84 = v12;
  v85 = v13;
  v86 = v14;
  v74 = v13;
  v19 = (v13 + 64) >> 6;
  v80 = (v8 + 56);
  v87 = v15;
  v77 = v12;
  v78 = v9;
  for (i = v19; ; v19 = i)
  {
    if (v9 < 0)
    {
      v27 = sub_1C584FBB0();
      if (!v27)
      {
        goto LABEL_65;
      }

      v81 = v27;
      sub_1C5626E40(0, v73, v75);
      swift_dynamicCast();
      v25 = v82;
      v23 = v14;
      v7 = v15;
      if (!v82)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v20 = v15;
      v21 = v14;
      if (v15)
      {
LABEL_20:
        v7 = (v20 - 1) & v20;
        v25 = *(*(v9 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));
        v26 = v25;
        v23 = v21;
      }

      else
      {
        if (v19 <= v14 + 1)
        {
          v22 = v14 + 1;
        }

        else
        {
          v22 = v19;
        }

        v23 = v22 - 1;
        v24 = v14;
        while (1)
        {
          v21 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_67;
          }

          if (v21 >= v19)
          {
            break;
          }

          v20 = *(v12 + 8 * v21);
          ++v24;
          if (v20)
          {
            goto LABEL_20;
          }
        }

        v25 = 0;
        v7 = 0;
      }

      v83 = v9;
      v84 = v12;
      v85 = v74;
      v86 = v23;
      v87 = v7;
      if (!v25)
      {
LABEL_65:
        v61 = v9;
        goto LABEL_63;
      }
    }

    v28 = v25;
    v29 = sub_1C584FAB0();
    v30 = -1 << *(v8 + 32);
    v15 = v29 & ~v30;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v80[v15 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v14 = v23;
    v15 = v7;
    v12 = v77;
    v9 = v78;
  }

  v31 = ~v30;
  v32 = sub_1C5626E40(0, v73, v75);
  v33 = *(*(v8 + 48) + 8 * v15);
  v79 = v32;
  while (1)
  {
    v34 = sub_1C584FAC0();

    if (v34)
    {
      break;
    }

    v15 = (v15 + 1) & v31;
    v9 = v15 >> 6;
    v21 = 1 << v15;
    if (((1 << v15) & v80[v15 >> 6]) == 0)
    {
      goto LABEL_10;
    }

    v33 = *(*(v8 + 48) + 8 * v15);
  }

  v37 = *(v8 + 32);
  v69 = ((1 << v37) + 63) >> 6;
  v11 = 8 * v69;
  if ((v37 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v70 = &v68;
    MEMORY[0x1EEE9AC00](v35, v36);
    v39 = &v68 - ((v38 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v39, v80, v38);
    v40 = *&v39[8 * v9] & ~v21;
    v41 = *(v8 + 16);
    v73 = v39;
    *&v39[8 * v9] = v40;
    v9 = v41 - 1;
    v43 = v77;
    v42 = v78;
    v44 = i;
LABEL_33:
    v75 = v9;
    while (v42 < 0)
    {
      v45 = sub_1C584FBB0();
      if (!v45)
      {
        goto LABEL_61;
      }

      v81 = v45;
      swift_dynamicCast();
      v15 = v82;
      if (!v82)
      {
        goto LABEL_61;
      }

LABEL_50:
      v50 = sub_1C584FAB0();
      v51 = v8;
      v52 = -1 << *(v8 + 32);
      v53 = v50 & ~v52;
      v54 = v53 >> 6;
      v55 = 1 << v53;
      if (((1 << v53) & v80[v53 >> 6]) != 0)
      {
        v56 = ~v52;
        while (1)
        {
          v57 = *(*(v51 + 48) + 8 * v53);
          v58 = sub_1C584FAC0();

          if (v58)
          {
            break;
          }

          v53 = (v53 + 1) & v56;
          v54 = v53 >> 6;
          v55 = 1 << v53;
          if (((1 << v53) & v80[v53 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v44 = i;

        v59 = v73[v54];
        v73[v54] = v59 & ~v55;
        v60 = (v59 & v55) == 0;
        v8 = v51;
        v43 = v77;
        v42 = v78;
        v9 = v75;
        if (!v60)
        {
          v9 = v75 - 1;
          if (__OFSUB__(v75, 1))
          {
            __break(1u);
          }

          if (v75 == 1)
          {

            v8 = MEMORY[0x1E69E7CD0];
            goto LABEL_62;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v8 = v51;
        v43 = v77;
        v42 = v78;
        v9 = v75;
        v44 = i;
      }
    }

    if (v7)
    {
      v21 = v23;
LABEL_48:
      v48 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(*(v42 + 48) + ((v21 << 9) | (8 * v48)));
      v49 = v15;
      v47 = v21;
LABEL_49:
      v83 = v42;
      v84 = v43;
      v85 = v74;
      v86 = v47;
      v23 = v47;
      v87 = v7;
      if (!v15)
      {
LABEL_61:
        v8 = sub_1C571C198(v73, v69, v9, v8, v72, v71);
        goto LABEL_62;
      }

      goto LABEL_50;
    }

    if (v44 <= v23 + 1)
    {
      v46 = v23 + 1;
    }

    else
    {
      v46 = v44;
    }

    v47 = v46 - 1;
    while (1)
    {
      v21 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v21 >= v44)
      {
        v15 = 0;
        v7 = 0;
        goto LABEL_49;
      }

      v7 = *(v43 + 8 * v21);
      ++v23;
      if (v7)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v63 = v11;

    v64 = v8;
    v65 = v63;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v8 = v64;
      continue;
    }

    break;
  }

  v66 = swift_slowAlloc();
  memcpy(v66, v80, v65);
  sub_1C571BF04(v66, v69, v64, v15, &v83, v73, v75, v72, v71);
  v8 = v67;

  MEMORY[0x1C694B7A0](v66, -1, -1);
LABEL_62:
  v61 = v83;
LABEL_63:
  sub_1C56280F4(v61);
  return v8;
}

uint64_t **sub_1C56280FC(uint64_t a1, unint64_t *a2, void *a3, uint64_t *a4)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v8 = sub_1C584FB90();
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v9 = sub_1C571B594(v8, 0);

    a4 = sub_1C571CF1C(&v12, v9 + 4, v8, a1, a2, a3, a4, v10);
    sub_1C56280F4(v12);
    if (a4 == v8)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v8 = *(a1 + 16);
    if (!v8)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v9;
}

void sub_1C56281CC(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_18:
    v3 = sub_1C584FB90();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v3 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C694A320](i, a1);
    }

    else
    {
      if (i >= *(v2 + 16))
      {
        goto LABEL_17;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v7 = [v5 isActive];

    if (v7)
    {
      v8 = objc_opt_self();
      sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
      v9 = sub_1C584F750();
      [v8 deactivateConstraints_];

      return;
    }
  }
}

void sub_1C5628320()
{
  v1 = v0 + *(*v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 8);
  if (v2 >> 62)
  {
    if (!sub_1C584FB90())
    {
      return;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  v3 = *(v1 + 8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (v3 >> 62)
  {
    v5 = sub_1C584FB90();
    if (!v5)
    {
LABEL_20:

      return;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  if (v5 >= 1)
  {

    v6 = 0;
    while (1)
    {
      v8 = (v3 & 0xC000000000000001) != 0 ? MEMORY[0x1C694A320](v6, v3) : *(v3 + 8 * v6 + 32);
      v9 = v8;
      v10 = [v8 owningView];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      if (Strong)
      {
        sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
        v12 = Strong;
        v13 = sub_1C584FAC0();

        if (v13)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }

      v7 = [v9 owningView];
      [v7 removeLayoutGuide_];
LABEL_8:

LABEL_9:
      ++v6;

      if (v5 == v6)
      {

        goto LABEL_20;
      }
    }

    if (!Strong)
    {
      goto LABEL_9;
    }

LABEL_18:
    v7 = Strong;
    [v7 addLayoutGuide_];
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t *sub_1C562852C()
{
  v1 = *v0;
  MEMORY[0x1C694B870](v0 + 3);
  MEMORY[0x1C694B870](v0 + 4);
  sub_1C56286BC((v0 + 5));
  v2 = *(v1 + 80);
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 128), v2);
  v3 = *(*v0 + 152);
  v5 = type metadata accessor for LayoutBuilder.Components(0, v2, *(v1 + 88), v4);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return v0;
}

uint64_t sub_1C5628664()
{
  sub_1C562852C();

  return swift_deallocClassInstance();
}

uint64_t sub_1C56287D0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5628808()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5628844()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5628960()
{
  v1 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 80) & ~v2;
  v12 = *(*(v1 - 1) + 64);

  v4 = v1[6];
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3 + v4, v5);

  v7 = v0 + v3 + v1[12];
  v8 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v6(v7, v5);
  }

  v9 = v0 + v3 + v1[14];
  v10 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v6(v9, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v12, v2 | 7);
}

uint64_t sub_1C5628BD4()
{
  v1 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v12 = *(*(v1 - 1) + 64);

  v4 = v1[6];
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3 + v4, v5);

  v7 = v0 + v3 + v1[12];
  v8 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v6(v7, v5);
  }

  v9 = v0 + v3 + v1[14];
  v10 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v6(v9, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v12 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 64, v2 | 7);
}

uint64_t sub_1C5628E58()
{
  v1 = *(type metadata accessor for MUSendToDevice(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1C584EFD0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1C5628F94()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5628FCC()
{
  v1 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 80) & ~v2;
  v12 = *(*(v1 - 1) + 64);

  v4 = v1[6];
  v5 = sub_1C584EFD0();
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v3 + v4, v5);

  v7 = v0 + v3 + v1[12];
  v8 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v6(v7, v5);
  }

  v9 = v0 + v3 + v1[14];
  v10 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v6(v9, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v12 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1C5629258()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5629298()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C56292D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584E8B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C562938C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584E8B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C5629444()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562947C()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C56294B4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C56294EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C584ED50();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C5629558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C584ED50();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C56295C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5629608()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5629644()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562967C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C56296B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C56296F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1C5629750()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1C56297A0()
{

  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_1C56608F0(*(v0 + 32), *(v0 + 40), v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1C56297EC()
{
  sub_1C5660908(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5629840()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5629878()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C56298B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C56298F8()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5629940()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C5629990()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C56299D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5629A1C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5629A5C()
{
  v1 = (type metadata accessor for WebPlacecardBridgeReply.MUNativeWebCall(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v3;
  v7 = sub_1C584EFD0();
  v8 = *(*(v7 - 8) + 8);
  v8(v6, v7);
  v9 = v6 + v1[8];
  v10 = type metadata accessor for WebPlacecardBridgeReply.MUWebMethodArguments(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v8(v9, v7);
  }

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v2 | 7);
}

uint64_t sub_1C5629BEC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5629C34()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C5629C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E260, &unk_1C586A900);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E258, &unk_1C5869AF0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C5629D90(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E260, &unk_1C586A900);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E258, &unk_1C5869AF0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C5629EB0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562A110(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

unint64_t sub_1C562A134(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1C562A15C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C584EFD0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C562A28C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C584EFD0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C562A3BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 28);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C562A4FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC30, &qword_1C586B0A8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C562A630(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C584EFD0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C562A760(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C584EFD0();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C562A8B8(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1C584EFD0();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[12];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC40, &qword_1C586B0B8);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[14]];

  return v15(v16, a2, v14);
}

char *sub_1C562AA3C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1C584EFD0();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EB18, &qword_1C586AF80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[12];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC40, &qword_1C586B0B8);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[14]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1C562ABC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 6)
    {
      v11 = 6;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 6;
    if (v10 >= 6)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C562AC8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 6;
  }

  return result;
}

uint64_t sub_1C562AD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC48, &qword_1C586B0C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 2)
  {
    v15 = ((v14 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v15 = -2;
  }

  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1C562AE78(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C584EFD0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC48, &qword_1C586B0C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1C562AF8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 28));
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C562B050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1C562B108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      v11 = ((v10 + 2147483646) & 0x7FFFFFFF) - 1;
    }

    else
    {
      v11 = -2;
    }

    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1C562B1E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_1C562B298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 44);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C562B3D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16EC50, &qword_1C586B0C8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C562B50C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
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

uint64_t sub_1C562B5D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C562B6BC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C584EFD0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1C562B768(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C584EFD0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C562B814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 242)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 0xD)
    {
      v11 = 13;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 13;
    if (v10 >= 0xD)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD0, &qword_1C586B158);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 24);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_1C562B948(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 242)
  {
    *(a1 + *(a4 + 20)) = a2 + 13;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ECD0, &qword_1C586B158);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C562BA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 44) + 8);
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

uint64_t sub_1C562BB40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 44) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C562BC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 8);
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

uint64_t sub_1C562BCF0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C562BDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_1C562BE7C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = a2;
  }

  return result;
}

uint64_t sub_1C562BF3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 <= 3)
    {
      v11 = 3;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20));
    }

    v12 = v11 - 3;
    if (v10 >= 3)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1C562C000(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_1C562C0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EFD0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
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

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED18, &qword_1C586B1A0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_1C562C228(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1C584EFD0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16ED18, &qword_1C586B1A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1C562C55C()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562C74C()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562C784()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562C7C4()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562C7FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562C83C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562C874()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562C8AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C562C974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16FE18, &unk_1C5877850);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C562CA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170510, qword_1C5877770);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1C562CB04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170510, qword_1C5877770);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1C562CBCC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562CC04()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562CC3C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C584EB30();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C562CD6C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C584EB30();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C562CEE8()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562CF6C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562CFB4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562CFF4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562D038()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C562D0A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562D0D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C562D120()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC170A88, &qword_1C58783C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C562D264()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562D29C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562D2D4(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C584EB30();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_1C562D404(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1C584EB30();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1702F0, &unk_1C5877650);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1C562D534()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562D56C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562D5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C584EEC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for PlaceActionBarLayoutItem(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1C562D6A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C584EEC0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for PlaceActionBarLayoutItem(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1C562D7A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562D7E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562D820()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562D85C()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562D894()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C562D8D4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562D914()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562D94C()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C562D99C()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562D9D4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562DA1C()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562DB28()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562DB60()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1C562DBA0()
{
  MEMORY[0x1C694B870](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562DBD8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C562DC10()
{

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1C562DC48(void *a1)
{
  sub_1C584F400();
  sub_1C584F470();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C584F410();
  swift_getWitnessTable();
  sub_1C584F450();
  return swift_getWitnessTable();
}

uint64_t sub_1C562DD8C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C562DDD4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C562DE14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C5632F48(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5632F68(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1C5632F90(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1C5632FA8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void *sub_1C5632FB8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1C5633014(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C5633034(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1C5633060(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C5633088@<X0>(uint64_t a2@<X8>)
{
  swift_unknownObjectRetain();
  result = sub_1C56236C4();
  *(a2 + 16) = 0;
  return result;
}

void sub_1C56330C0(uint64_t a1@<X8>)
{

  GEOLocationCoordinate2DMake();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 1;
}

uint64_t sub_1C563310C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      sub_1C56331B4(v3, v10);
      sub_1C563326C(v10, v7);
      sub_1C56332A4(v10);
      v4 = v8;
      v5 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      (*(v5 + 16))(v4, v5);
      result = __swift_destroy_boxed_opaque_existential_1(v7);
      v3 += 96;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1C56331B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C56332A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8C8, &qword_1C58677D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5633310(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C563337C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 8))(v9, v3, v4);
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  (*(v6 + 8))(v8, v5, v6);
  LOBYTE(a2) = sub_1C57057BC(v9, v8);
  sub_1C5626250(v8);
  sub_1C5626250(v9);
  return a2 & 1;
}

unint64_t sub_1C5633434()
{
  result = qword_1ED77E898;
  if (!qword_1ED77E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E898);
  }

  return result;
}

uint64_t sub_1C5633488()
{
  sub_1C584FEA0();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v4, v1, v2);
  sub_1C5633434();
  sub_1C584F5F0();
  sub_1C5626250(v4);
  return sub_1C584FEF0();
}

uint64_t sub_1C5633520(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v5, v2, v3);
  sub_1C5633434();
  sub_1C584F5F0();
  return sub_1C5626250(v5);
}

uint64_t sub_1C56335A8(uint64_t a1)
{
  sub_1C584FEA0();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 8))(v5, v2, v3);
  sub_1C5633434();
  sub_1C584F5F0();
  sub_1C5626250(v5);
  return sub_1C584FEF0();
}

unint64_t sub_1C5633640()
{
  result = qword_1ED77E860;
  if (!qword_1ED77E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED77E860);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C56336A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C56336F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5633A28(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t PlaceItemShareItemSource.excludedActivityTypes.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8E0, &qword_1C5867910);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C5867900;
  *(v0 + 32) = sub_1C584F660();
  *(v0 + 40) = v1;
  return v0;
}

uint64_t PlaceItemShareItemSource.includedActivityTypes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MUPlaceItemShareItemSource_includedActivityTypes;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id PlaceItemShareItemSource.__allocating_init(placeItem:applicationActivities:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1C563404C(a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

id PlaceItemShareItemSource.init(placeItem:applicationActivities:)(void *a1, uint64_t a2)
{
  v2 = sub_1C563404C(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

id PlaceItemShareItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PlaceItemShareItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C563404C(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___MUPlaceItemShareItemSource_includedActivityTypes] = 0;
  *&v3[OBJC_IVAR___MUPlaceItemShareItemSource_placeItem] = a1;
  v24 = MEMORY[0x1E69E7CC0];
  v7 = [swift_unknownObjectRetain() mapItem];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_allocWithZone(MUPlaceActivityDataProviderConfiguration) initWithMapItem_];
    if (([a1 representsPerson] & 1) == 0)
    {
      [v9 setSupportsURLShorteningService_];
    }

    v10 = [objc_allocWithZone(MUPlaceActivityDataProvider) initWithConfiguration_];
    *&v3[OBJC_IVAR___MUPlaceItemShareItemSource_dataProvider] = v10;
    v11 = objc_opt_self();
    v12 = v10;
    v13 = [v11 activityProviderFromDataProvider_];
    if (v13)
    {
      v14 = v13;
      MEMORY[0x1C6949DF0]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C584F7A0();
      }

      sub_1C584F7E0();
      v15 = v24;
      v16 = [objc_opt_self() activityProviderFromDataProvider_];
      if (v16)
      {
        v17 = v16;
        MEMORY[0x1C6949DF0]();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
        }

        sub_1C584F7E0();

        v15 = v24;
      }

      else
      {
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    if (GEOConfigGetBOOL())
    {
      v18 = [objc_allocWithZone(MUPlaceMapItemActivityProvider) initWithDataProvider_];
      if (v18)
      {
        v19 = v18;
        MEMORY[0x1C6949DF0]();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
        }

        sub_1C584F7E0();

        v15 = v24;
      }
    }

    v20 = [objc_opt_self() activityProviderFromDataProvider_];
    if (v20)
    {
      v21 = v20;
      MEMORY[0x1C6949DF0]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C584F7A0();
      }

      sub_1C584F7E0();

      v15 = v24;
    }

    else
    {
    }

    *&v3[OBJC_IVAR___MUPlaceItemShareItemSource_activityProviders] = v15;
    *&v3[OBJC_IVAR___MUPlaceItemShareItemSource_applicationActivities] = a2;
    v23.receiver = v3;
    v23.super_class = ObjectType;
    return objc_msgSendSuper2(&v23, sel_init);
  }

  else
  {
    result = sub_1C584FD00();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C5634494()
{
  result = qword_1EC16D9C8;
  if (!qword_1EC16D9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC16D9C8);
  }

  return result;
}

uint64_t MUEVChargingViewModel.SectionGroup.headerTitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MUEVChargingViewModel.SectionGroup.headerSubtitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C5634564@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 8);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1C56345C0(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = *a2 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer;
  swift_beginAccess();
  *(v3 + 8) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t MUEVChargingViewModel.observer.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*MUEVChargingViewModel.observer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C5634780;
}

void sub_1C5634780(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t MUEVChargingViewModel.isActive.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MUEVChargingViewModel.isActive.setter(char a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

char *MUEVChargingViewModel.__allocating_init(availabilityProvider:)(char *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_connectedVehiclesSectionGroups] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_otherPlugsSectionGroup] = v4;
  *&v3[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive] = 0;
  *&v3[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availabilityProvider] = a1;
  v5 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availability;
  swift_beginAccess();
  v6 = *&a1[v5];
  *&v3[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability] = v6;
  v11.receiver = v3;
  v11.super_class = v1;
  v7 = a1;
  v8 = v6;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_1C5634B14();
  MUEVChargerAvailabilityProvider.registerObserver(_:)(v9);

  return v9;
}

char *MUEVChargingViewModel.init(availabilityProvider:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_connectedVehiclesSectionGroups] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_otherPlugsSectionGroup] = v4;
  *&v1[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive] = 0;
  *&v1[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availabilityProvider] = a1;
  v5 = OBJC_IVAR____TtC6MapsUI31MUEVChargerAvailabilityProvider_availability;
  swift_beginAccess();
  v6 = *&a1[v5];
  *&v1[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability] = v6;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v7 = a1;
  v8 = v6;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  sub_1C5634B14();
  MUEVChargerAvailabilityProvider.registerObserver(_:)(v9);

  return v9;
}

uint64_t sub_1C5634B14()
{
  v4 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_connectedVehiclesSectionGroups;
  swift_beginAccess();
  v5 = MEMORY[0x1E69E7CC0];
  v172 = v4;
  *(v0 + v4) = MEMORY[0x1E69E7CC0];

  v6 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_otherPlugsSectionGroup;
  swift_beginAccess();
  v171 = v6;
  *(v0 + v6) = v5;

  v7 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability;
  v190 = [*(*(v0 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability) + OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_aggregatedInfo) status];
  v176 = v7;

  v9 = sub_1C563B950(v8);

  v10 = v9[2];
  v184 = v0;
  v189 = v9;
  if (v10)
  {
    v11 = sub_1C56383B8(v10, 0);
    v12 = sub_1C563B850(v195, (v11 + 32), v10, v9);
    v2 = v195[0];
    v3 = v195[1];
    v13 = v195[2];
    v1 = v195[3];
    swift_bridgeObjectRetain_n();
    sub_1C56280F4(v2);
    if (v12 != v10)
    {
      goto LABEL_235;
    }
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v195[0] = v11;
  sub_1C5637B74(v195);

  v13 = v195[0];
  v14 = *(*(v0 + v176) + OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_vehicles);
  if (v14 >> 62)
  {
    v10 = sub_1C584FB90();
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_15:
    v1 = 0;
    goto LABEL_16;
  }

  v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v10 < 1)
  {
    goto LABEL_236;
  }

  v1 = 0;
  v15 = 0;
  do
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1C694A320](v15, v14);
    }

    else
    {
      v16 = *(v14 + 8 * v15 + 32);
    }

    v17 = v16;
    ++v15;
    v18 = [v16 supportedConnectors];

    v1 |= v18;
  }

  while (v10 != v15);

LABEL_16:
  v194 = v5;
  v19 = *(v13 + 2);
  if (v19)
  {
    v20 = (v13 + 32);
    v21 = MEMORY[0x1E69E7CC0];
    v5 = MEMORY[0x1E69E7CC0];
    v188 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      while (1)
      {
        v24 = *v20++;
        v23 = v24;
        if (v24 > 4)
        {
          break;
        }

        if (v23 > 2)
        {
          if (v23 == 3)
          {
            v25 = v1 & 0x100;
            if ((v1 & 0x40) != 0)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v25 = v1 & 2;
            if (v23 != 4)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
          v25 = v1 & 8;
          if (v23 != 1)
          {
            v25 = v1 & 1;
            if (v23 != 2)
            {
              goto LABEL_41;
            }
          }
        }

LABEL_36:
        if (!v25)
        {
          goto LABEL_41;
        }

        if (!v190)
        {
          goto LABEL_49;
        }

LABEL_37:
        if (*(v189 + 16) && (v26 = sub_1C5637498(v23), (v27 & 1) != 0))
        {
          v28 = *(*(v189 + 56) + 8 * v26);
        }

        else
        {
          v28 = MEMORY[0x1E69E7CC0];
        }

        v31 = sub_1C563BBA8(v28);

        if (!v31)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v188 = sub_1C5638124(0, *(v188 + 2) + 1, 1, v188);
          }

          v35 = *(v188 + 2);
          v34 = *(v188 + 3);
          if (v35 >= v34 >> 1)
          {
            v188 = sub_1C5638124((v34 > 1), v35 + 1, 1, v188);
          }

          *(v188 + 2) = v35 + 1;
          v22 = &v188[4 * v35];
        }

        else
        {
LABEL_49:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1C5638124(0, *(v5 + 2) + 1, 1, v5);
          }

          v33 = *(v5 + 2);
          v32 = *(v5 + 3);
          if (v33 >= v32 >> 1)
          {
            v5 = sub_1C5638124((v32 > 1), v33 + 1, 1, v5);
          }

          *(v5 + 2) = v33 + 1;
          v22 = &v5[4 * v33];
        }

        *(v22 + 8) = v23;
        if (!--v19)
        {
          goto LABEL_59;
        }
      }

      if (v23 <= 6)
      {
        v25 = v1 & 4;
        if (v23 != 5)
        {
          v25 = v1 & 0x10;
          if (v23 != 6)
          {
            goto LABEL_41;
          }
        }

        goto LABEL_36;
      }

      v25 = v1 & 0x20;
      if (v23 == 7)
      {
        goto LABEL_36;
      }

      if (v23 == 8)
      {
        v25 = v1 & 0x80;
        goto LABEL_36;
      }

LABEL_41:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1C5638124(0, *(v21 + 2) + 1, 1, v21);
      }

      v30 = *(v21 + 2);
      v29 = *(v21 + 3);
      if (v30 >= v29 >> 1)
      {
        v21 = sub_1C5638124((v29 > 1), v30 + 1, 1, v21);
      }

      *(v21 + 2) = v30 + 1;
      *&v21[4 * v30 + 32] = v23;
      v194 = v21;
      if (!--v19)
      {
        goto LABEL_59;
      }
    }
  }

  v188 = v5;
LABEL_59:

  v193 = v188;

  sub_1C5636280(v5);
  v36 = v184;
  v37 = *(*(v184 + v176) + OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_vehicles);
  if (v190)
  {
    LODWORD(v10) = *(v188 + 2) == 0;
  }

  else
  {
    LODWORD(v10) = 1;
  }

  v38 = v193;

  v11 = v37 >> 62;
  if (v37 >> 62)
  {
    goto LABEL_233;
  }

  v39 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v175 = v38;
    if (v39 < 1)
    {
      v38 = MEMORY[0x1E69E7CC0];
      goto LABEL_176;
    }

    v181 = v37;
    v182 = *(v38 + 16);
    if (!v182)
    {
      v38 = MEMORY[0x1E69E7CC0];
      goto LABEL_176;
    }

    if (v39 == 1 || v39 >= 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAE8, &qword_1C5867AE8);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1C5867900;
      v41 = objc_opt_self();
      v42 = &selRef_evChargers;
      if (!v10)
      {
        v42 = &selRef_evChargingSectionHeaderAvailableNow;
      }

      v43 = [v41 *v42];
      v44 = sub_1C584F660();
      v46 = v45;

      if (v39 < 4)
      {
        v48 = sub_1C563BC94(v181);
        v50 = v51;
      }

      else
      {
        v47 = [objc_opt_self() forYourVehicles];
        v48 = sub_1C584F660();
        v50 = v49;
      }

      v36 = v184;
      v52 = sub_1C563636C(v175, v189);
      *(v38 + 32) = v44;
      *(v38 + 40) = v46;
      *(v38 + 48) = v48;
      *(v38 + 56) = v50;
      *(v38 + 64) = v52;
      goto LABEL_176;
    }

    if (v11)
    {
      v37 = sub_1C584FB90();
    }

    else
    {
      v37 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v169 = v10;
    if (!v37)
    {
      v185 = MEMORY[0x1E69E7CC0];
      goto LABEL_124;
    }

    v53 = 0;
    v177 = (v38 + 32);
    v1 = &_OBJC_LABEL_PROTOCOL___MUAmenityItemViewModel;
    v185 = MEMORY[0x1E69E7CC0];
    do
    {
LABEL_85:
      if ((v181 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x1C694A320](v53, v181);
      }

      else
      {
        if (v53 >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_232;
        }

        v54 = *(v181 + 32 + 8 * v53);
      }

      v55 = v54;
      v56 = __OFADD__(v53++, 1);
      if (v56)
      {
        goto LABEL_230;
      }

      v57 = v177;
      v38 = v182;
      v36 = MEMORY[0x1E69E7CC0];
      do
      {
        v60 = *v57++;
        LODWORD(v10) = v60;
        v61 = [v55 supportedConnectors];
        if (v60 > 4)
        {
          if (v10 > 6)
          {
            if (v10 == 7)
            {
              v62 = 32;
            }

            else
            {
              if (v10 != 8)
              {
                goto LABEL_94;
              }

              v62 = 128;
            }
          }

          else if (v10 == 5)
          {
            v62 = 4;
          }

          else
          {
            v62 = 16;
          }

LABEL_113:
          if ((v62 & v61) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_114;
        }

        if (v10 <= 2)
        {
          if (v10 == 1)
          {
            v62 = 8;
          }

          else
          {
            if (v10 != 2)
            {
              goto LABEL_94;
            }

            v62 = 1;
          }

          goto LABEL_113;
        }

        if (v10 != 3)
        {
          v62 = 2;
          goto LABEL_113;
        }

        if ((v61 & 0x40) == 0)
        {
          v62 = 256;
          goto LABEL_113;
        }

LABEL_114:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v195[0] = v36;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C563B164(0, *(v36 + 16) + 1, 1);
          v36 = v195[0];
        }

        v59 = *(v36 + 16);
        v58 = *(v36 + 24);
        v11 = v59 + 1;
        if (v59 >= v58 >> 1)
        {
          sub_1C563B164((v58 > 1), v59 + 1, 1);
          v36 = v195[0];
        }

        *(v36 + 16) = v11;
        *(v36 + 4 * v59 + 32) = v10;
LABEL_94:
        --v38;
      }

      while (v38);
      if (!*(v36 + 16))
      {

        if (v53 == v37)
        {
          break;
        }

        goto LABEL_85;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v185 = sub_1C5637FF0(0, v185[2] + 1, 1, v185);
      }

      v38 = v185[2];
      v64 = v185[3];
      v11 = v38 + 1;
      if (v38 >= v64 >> 1)
      {
        v185 = sub_1C5637FF0((v64 > 1), v38 + 1, 1, v185);
      }

      v185[2] = v11;
      v65 = &v185[2 * v38];
      v65[4] = v55;
      v65[5] = v36;
    }

    while (v53 != v37);
LABEL_124:
    v11 = v185;

    v38 = 0;
    v37 = sub_1C563D508(v66);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB00, &qword_1C5867B00);
    v67 = sub_1C584FD30();
    v3 = 0;
    v68 = 1 << *(v37 + 32);
    v69 = -1;
    if (v68 < 64)
    {
      v69 = ~(-1 << v68);
    }

    v70 = v37 + 64;
    v36 = v69 & *(v37 + 64);
    v13 = ((v68 + 63) >> 6);
    v183 = v67;
    v2 = (v67 + 64);
    v173 = (v67 + 64);
    v170 = v37;
    if (v36)
    {
      goto LABEL_127;
    }

LABEL_128:
    v72 = v3;
LABEL_129:
    v3 = v72 + 1;
    if (__OFADD__(v72, 1))
    {
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      v39 = sub_1C584FB90();
      continue;
    }

    break;
  }

  if (v3 >= v13)
  {

    v192 = MEMORY[0x1E69E7CD0];
    v81 = 1 << *(v183 + 32);
    v82 = -1;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    v37 = v82 & *(v183 + 64);
    v38 = (v81 + 63) >> 6;

    v83 = 0;
    if (v37)
    {
      while (1)
      {
        v10 = v83;
LABEL_148:

        v11 = sub_1C563D730(v84);

        v85 = v192;

        v1 = *(sub_1C563A9DC(v11, v85) + 16);

        if (v1)
        {
          break;
        }

        v37 &= v37 - 1;
        v36 = &v192;
        sub_1C56364A8(v11);
        v83 = v10;
        if (!v37)
        {
          goto LABEL_145;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAE8, &qword_1C5867AE8);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1C5867900;
      v112 = objc_opt_self();
      v113 = &selRef_evChargers;
      if (!v169)
      {
        v113 = &selRef_evChargingSectionHeaderAvailableNow;
      }

      v114 = [v112 *v113];
      v115 = sub_1C584F660();
      v117 = v116;

      v118 = [objc_opt_self() forYourVehicles];
      v119 = sub_1C584F660();
      v121 = v120;

      v36 = v184;
      v122 = sub_1C563636C(v175, v189);
      *(v38 + 32) = v115;
      *(v38 + 40) = v117;
      *(v38 + 48) = v119;
      *(v38 + 56) = v121;
      *(v38 + 64) = v122;

LABEL_176:

      *(v36 + v172) = v38;

      v106 = v194;
      v107 = *(v194 + 2);
      if (v107)
      {
        v108 = MEMORY[0x1E69E7CC0];
        v109 = 32;
        v110 = MEMORY[0x1E69E7CC0];
        v111 = MEMORY[0x1E69E7CC0];
        do
        {
          v124 = *&v106[v109];
          if (!v190)
          {
            goto LABEL_190;
          }

          if (*(v189 + 16) && (v125 = sub_1C5637498(*&v106[v109]), (v126 & 1) != 0))
          {
            v127 = *(*(v189 + 56) + 8 * v125);
          }

          else
          {
            v127 = v108;
          }

          v128 = sub_1C563BBA8(v127);

          if (!v128)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v111 = sub_1C5638124(0, *(v111 + 2) + 1, 1, v111);
            }

            v130 = *(v111 + 2);
            v132 = *(v111 + 3);
            v131 = v130 + 1;
            if (v130 >= v132 >> 1)
            {
              v123 = sub_1C5638124((v132 > 1), v130 + 1, 1, v111);
              v111 = v123;
            }

            else
            {
              v123 = v111;
            }
          }

          else
          {
LABEL_190:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v110 = sub_1C5638124(0, *(v110 + 2) + 1, 1, v110);
            }

            v130 = *(v110 + 2);
            v129 = *(v110 + 3);
            v131 = v130 + 1;
            if (v130 >= v129 >> 1)
            {
              v123 = sub_1C5638124((v129 > 1), v130 + 1, 1, v110);
              v110 = v123;
            }

            else
            {
              v123 = v110;
            }
          }

          *(v123 + 2) = v131;
          *&v123[4 * v130 + 32] = v124;
          v109 += 4;
          --v107;
        }

        while (v107);

        if (*(v111 + 2))
        {
          sub_1C563D404(0, 0, 0, 0, 0);
          v36 = v184;
          v133 = *(*(v184 + v172) + 16);
          v134 = objc_opt_self();
          if (v133)
          {
            v135 = [v134 evChargingOtherChargers];
            v136 = sub_1C584F660();
            v138 = v137;

            v139 = 0;
            v140 = 0xE000000000000000;
          }

          else
          {
            v143 = [v134 evChargingSectionHeaderAvailableNow];
            v139 = sub_1C584F660();
            v140 = v144;

            v136 = 0;
            v138 = 0;
          }

          v141 = sub_1C563636C(v111, v189);

          if (v140)
          {
            swift_beginAccess();
            v145 = *(v184 + v171);

            v146 = swift_isUniquelyReferenced_nonNull_native();
            *(v184 + v171) = v145;
            v147 = v136;
            if ((v146 & 1) == 0)
            {
              v145 = sub_1C5637ED0(0, *(v145 + 2) + 1, 1, v145);
              *(v184 + v171) = v145;
            }

            v149 = *(v145 + 2);
            v148 = *(v145 + 3);
            if (v149 >= v148 >> 1)
            {
              v145 = sub_1C5637ED0((v148 > 1), v149 + 1, 1, v145);
            }

            *(v145 + 2) = v149 + 1;
            v150 = &v145[40 * v149];
            *(v150 + 4) = v139;
            *(v150 + 5) = v140;
            v136 = v147;
            *(v150 + 6) = v147;
            *(v150 + 7) = v138;
            *(v150 + 8) = v141;
            v36 = v184;
            *(v184 + v171) = v145;
            swift_endAccess();
            v142 = 0;
            if (*(v110 + 2))
            {
LABEL_212:
              v191 = v136;
              v187 = v139;
              v151 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_connectedVehiclesSectionGroups;
              swift_beginAccess();
              v152 = *(*(v36 + v151) + 16);
              v153 = objc_opt_self();
              v154 = v138;
              if (v152)
              {
                v155 = [v153 evChargingOfflineChargers];
                v2 = sub_1C584F660();
                v13 = v156;

                v3 = 0;
                v1 = 0xE000000000000000;
              }

              else
              {
                if (v142)
                {
                  v157 = [v153 evChargers];
                }

                else
                {
                  v157 = [v153 evChargingOfflineChargers];
                }

                v158 = v157;
                v3 = sub_1C584F660();
                v1 = v159;

                v2 = 0;
                v13 = 0;
              }

              sub_1C563D404(v187, v140, v191, v154, v141);
              v10 = sub_1C563636C(v110, v189);

              swift_beginAccess();
              v11 = *(v184 + v171);
              v160 = swift_isUniquelyReferenced_nonNull_native();
              *(v184 + v171) = v11;
              if ((v160 & 1) == 0)
              {
                goto LABEL_237;
              }

              goto LABEL_221;
            }
          }

          else
          {
            v142 = 1;
            if (*(v110 + 2))
            {
              goto LABEL_212;
            }
          }
        }

        else
        {

          v139 = 0;
          v140 = 0;
          v136 = 0;
          v138 = 0;
          v141 = 0;
          v142 = 1;
          v36 = v184;
          if (*(v110 + 2))
          {
            goto LABEL_212;
          }
        }

        sub_1C563D404(v139, v140, v136, v138, v141);
      }

      else
      {
      }

      goto LABEL_224;
    }

    while (1)
    {
LABEL_145:
      v10 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        goto LABEL_229;
      }

      if (v10 >= v38)
      {
        break;
      }

      v37 = *&v2[8 * v10];
      ++v83;
      if (v37)
      {
        goto LABEL_148;
      }
    }

    v36 = *(v183 + 16);
    if (v36)
    {
      v86 = sub_1C5638334(*(v183 + 16), 0);
      v87 = sub_1C563B6FC(v195, v86 + 4, v36, v183);
      v88 = v195[0];
      swift_retain_n();
      sub_1C56280F4(v88);
      if (v87 == v36)
      {
LABEL_155:
        v195[0] = v86;
        sub_1C5637AF0(v195, sub_1C563B6D4, sub_1C5638760);

        v89 = v195[0];
        v37 = *(v195[0] + 2);
        if (!v37)
        {
          v38 = MEMORY[0x1E69E7CC0];
LABEL_175:

          v36 = v184;
          goto LABEL_176;
        }

        v90 = 0;
        v10 = (v195[0] + 32);
        v91 = v37 - 1;
        v38 = MEMORY[0x1E69E7CC0];
        v11 = 0x1E8216000uLL;
LABEL_157:
        v1 = v90;
        while (v1 < *(v89 + 2))
        {
          if (*(v183 + 16))
          {
            v92 = *(v10 + 8 * v1);
            v36 = v183;
            v93 = sub_1C5637404(v92);
            if (v94)
            {
              v95 = *(*(v183 + 56) + 8 * v93);
              v179 = v91;
              if (v1)
              {

                v186 = 0;
                v180 = 0xE000000000000000;
              }

              else
              {
                v96 = objc_opt_self();

                if (v169)
                {
                  v97 = [v96 evChargers];
                }

                else
                {
                  v97 = [v96 evChargingSectionHeaderAvailableNow];
                }

                v98 = v97;
                v186 = sub_1C584F660();
                v180 = v99;
              }

              v100 = sub_1C563BC94(v95);
              v174 = v101;

              v102 = sub_1C563636C(v92, v189);

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v38 = sub_1C5637ED0(0, *(v38 + 16) + 1, 1, v38);
              }

              v104 = *(v38 + 16);
              v103 = *(v38 + 24);
              v36 = v104 + 1;
              if (v104 >= v103 >> 1)
              {
                v38 = sub_1C5637ED0((v103 > 1), v104 + 1, 1, v38);
              }

              v90 = (v1 + 1);
              *(v38 + 16) = v36;
              v105 = (v38 + 40 * v104);
              v105[4] = v186;
              v105[5] = v180;
              v105[6] = v100;
              v105[7] = v174;
              v105[8] = v102;
              v91 = v179;
              v11 = 0x1E8216000;
              if (v179 != v1)
              {
                goto LABEL_157;
              }

              goto LABEL_175;
            }
          }

          if (v37 == ++v1)
          {
            goto LABEL_175;
          }
        }

        goto LABEL_231;
      }

      __break(1u);
    }

    v86 = MEMORY[0x1E69E7CC0];
    goto LABEL_155;
  }

  v73 = *(v70 + 8 * v3);
  ++v72;
  if (!v73)
  {
    goto LABEL_129;
  }

  v71 = __clz(__rbit64(v73));
  v36 = (v73 - 1) & v73;
  while (2)
  {
    v38 = v71 | (v3 << 6);
    v74 = *(*(v37 + 48) + 8 * v38);
    v11 = *(*(v37 + 56) + 8 * v38);
    v10 = *(v11 + 16);
    if (v10)
    {
      v195[0] = MEMORY[0x1E69E7CC0];
      v178 = v74;

      sub_1C584FCC0();
      v75 = 32;
      do
      {
        v76 = *(v11 + v75);
        sub_1C584FCA0();
        v1 = *(v195[0] + 2);
        sub_1C584FCD0();
        sub_1C584FCE0();
        sub_1C584FCB0();
        v75 += 16;
        --v10;
      }

      while (v10);

      v77 = v195[0];
      v2 = v173;
      v37 = v170;
      v78 = v178;
    }

    else
    {

      v77 = MEMORY[0x1E69E7CC0];
    }

    *&v2[(v38 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v38;
    *(*(v183 + 48) + 8 * v38) = v78;
    *(*(v183 + 56) + 8 * v38) = v77;
    v79 = *(v183 + 16);
    v56 = __OFADD__(v79, 1);
    v80 = v79 + 1;
    if (!v56)
    {
      *(v183 + 16) = v80;
      if (!v36)
      {
        goto LABEL_128;
      }

LABEL_127:
      v71 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  v11 = sub_1C5637ED0(0, *(v11 + 16) + 1, 1, v11);
  *(v184 + v171) = v11;
LABEL_221:
  v162 = *(v11 + 16);
  v161 = *(v11 + 24);
  if (v162 >= v161 >> 1)
  {
    v11 = sub_1C5637ED0((v161 > 1), v162 + 1, 1, v11);
  }

  *(v11 + 16) = v162 + 1;
  v163 = (v11 + 40 * v162);
  v163[4] = v3;
  v163[5] = v1;
  v163[6] = v2;
  v163[7] = v13;
  v163[8] = v10;
  v36 = v184;
  *(v184 + v171) = v11;
  swift_endAccess();
LABEL_224:
  v164 = OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_isActive;
  swift_beginAccess();
  if (*(v36 + v164) != 1)
  {
  }

  v165 = v36 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_observer;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
  }

  v166 = *(v165 + 8);
  ObjectType = swift_getObjectType();
  (*(v166 + 8))(v36, ObjectType, v166);

  return swift_unknownObjectRelease();
}

id MUEVChargingViewModel.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availabilityProvider];
  v3 = v0;
  MUEVChargerAvailabilityProvider.unregisterObserver(_:)(v3);

  v5.receiver = v3;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_1C5636280(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C5638124(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v7 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1C563636C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = (a1 + 32);
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v6 = *v4++;
    v23 = v6;
    sub_1C5636588(&v23, a2, ObjectType, &v18);
    v8 = v21;
    v7 = v22;
    v10 = v18;
    v9 = v19;
    v11 = v20;
    if (v22)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1C5637DB0(0, *(v5 + 2) + 1, 1, v5);
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_1C5637DB0((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v14 = &v5[40 * v13];
      *(v14 + 4) = v10;
      *(v14 + 5) = v9;
      *(v14 + 6) = v11;
      *(v14 + 7) = v8;
      *(v14 + 8) = v7;
    }

    else
    {
      sub_1C563D454(v18, v19, v20, v21, 0);
    }

    --v3;
  }

  while (v3);
  return v5;
}

uint64_t sub_1C56364A8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1C563A1D8(v10, *(*(v1 + 48) + ((v8 << 8) | (4 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1C5636588@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v36 = a3;
  v7 = type metadata accessor for EVChargingRow(0);
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a2 + 16) || (LODWORD(v13) = *a1, result = sub_1C5637498(*a1), (v14 & 1) == 0))
  {
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return result;
  }

  v15 = *(*(a2 + 56) + 8 * result);
  if (v15 >> 62)
  {
LABEL_26:
    v16 = sub_1C584FB90();
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_27:

    v17 = MEMORY[0x1E69E7CC0];
    if ((v15 & 0xC000000000000001) != 0)
    {
LABEL_28:
      v23 = MEMORY[0x1C694A320](0, v15);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_27;
  }

LABEL_5:
  HIDWORD(v33) = v13;
  v34 = a4;
  *&v37[0] = MEMORY[0x1E69E7CC0];

  result = sub_1C563B184(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v13 = 0;
  v17 = *&v37[0];
  v18 = v15 & 0xC000000000000001;
  v35 = v15 & 0xFFFFFFFFFFFFFF8;
  do
  {
    a4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v18)
    {
      v19 = MEMORY[0x1C694A320](v13, v15);
    }

    else
    {
      if (v13 >= *(v35 + 16))
      {
        goto LABEL_25;
      }

      v19 = *(v15 + 8 * v13 + 32);
    }

    v20 = v19;
    v39 = v19;
    sub_1C563688C(&v39, v12);

    *&v37[0] = v17;
    v22 = *(v17 + 16);
    v21 = *(v17 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1C563B184((v21 > 1), v22 + 1, 1);
      v17 = *&v37[0];
    }

    *(v17 + 16) = v22 + 1;
    result = sub_1C563D4A4(v12, v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v22);
    ++v13;
  }

  while (a4 != v16);
  a4 = v34;
  LODWORD(v13) = HIDWORD(v33);
  if (v18)
  {
    goto LABEL_28;
  }

LABEL_18:
  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_30;
  }

  v23 = *(v15 + 32);
LABEL_20:
  v24 = v23;

  v25 = [v24 connectorTypeDisplayText];

  if (v25)
  {
    v26 = sub_1C584F660();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = sub_1C5636CA0(v13);
  result = sub_1C564A0D8(v26, v28, v29, v30, v17, v37);
  v31 = v38;
  v32 = v37[1];
  *a4 = v37[0];
  *(a4 + 16) = v32;
  *(a4 + 32) = v31;
  return result;
}

uint64_t sub_1C563688C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C584E8B0();
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  sub_1C5636928(v8);
  v9 = sub_1C563CE80(v8);
  return sub_1C564A1A4(v7, v9, a2);
}

uint64_t sub_1C5636928(void *a1)
{
  v2 = sub_1C584E900();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C584ECE0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 currentTypeDisplayText];
  if (v11)
  {
    v29 = v5;
    v12 = v11;
    v13 = sub_1C584F660();
    v15 = v14;

    v16 = sub_1C5638228(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1C5638228((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[16 * v18];
    *(v19 + 4) = v13;
    *(v19 + 5) = v15;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v20 = [a1 powerWatts];
  sub_1C584EC20();
  v21 = sub_1C563C124(v10, v20);
  v23 = v22;
  (*(v7 + 8))(v10, v6);
  if (v23)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1C5638228(0, *(v16 + 2) + 1, 1, v16);
    }

    v25 = *(v16 + 2);
    v24 = *(v16 + 3);
    if (v25 >= v24 >> 1)
    {
      v16 = sub_1C5638228((v24 > 1), v25 + 1, 1, v16);
    }

    *(v16 + 2) = v25 + 1;
    v26 = &v16[16 * v25];
    *(v26 + 4) = v21;
    *(v26 + 5) = v23;
  }

  v30 = v16;
  v27 = [objc_opt_self() evChargingPlugDescriptionDelimiter];
  sub_1C584F660();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA70, &qword_1C58679D0);
  sub_1C563D368(&qword_1EC170BB0, &qword_1EC16DA70, &qword_1C58679D0, MEMORY[0x1E69E6310]);
  sub_1C584F600();

  sub_1C584E8F0();
  sub_1C584E8C0();
  v30 = [objc_opt_self() labelColor];
  sub_1C563C8DC();
  return sub_1C584E8D0();
}

unint64_t sub_1C5636CA0(int a1)
{
  v1 = 0xD000000000000014;
  if (a1 > 4)
  {
    v5 = 0xD000000000000016;
    if (a1 != 8)
    {
      v5 = 0;
    }

    if (a1 != 7)
    {
      v1 = v5;
    }

    v3 = 0xD000000000000014;
    v6 = 0xD000000000000014;
    if (a1 != 6)
    {
      v6 = 0;
    }

    if (a1 != 5)
    {
      v3 = v6;
    }

    v4 = a1 <= 6;
  }

  else
  {
    if (a1 == 4)
    {
      v2 = 0xD000000000000014;
    }

    else
    {
      v2 = 0;
    }

    if (a1 != 3)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    if (a1 != 2)
    {
      v3 = 0;
    }

    if (a1 == 1)
    {
      v3 = 0xD000000000000017;
    }

    v4 = a1 <= 2;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

id MUEVChargingViewModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MUEVChargingViewModel.evChargerAvailabilityProvider(_:didUpdateAvailability:)(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability);
  *(v2 + OBJC_IVAR____TtC6MapsUI21MUEVChargingViewModel_availability) = a2;
  v4 = a2;

  return sub_1C5634B14();
}

uint64_t sub_1C5636F1C()
{
  sub_1C584FEA0();
  sub_1C584FED0();
  return sub_1C584FEF0();
}

uint64_t sub_1C5636F90(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C584FED0();
  return sub_1C584FEF0();
}

uint64_t sub_1C5636FDC(uint64_t a1, id *a2)
{
  result = sub_1C584F640();
  *a2 = 0;
  return result;
}

uint64_t sub_1C5637054(uint64_t a1, id *a2)
{
  v3 = sub_1C584F650();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C56370D4@<X0>(uint64_t *a2@<X8>)
{
  sub_1C584F660();
  v3 = sub_1C584F630();

  *a2 = v3;
  return result;
}

uint64_t sub_1C5637118()
{
  v0 = sub_1C584F660();
  v1 = MEMORY[0x1C6949DB0](v0);

  return v1;
}

uint64_t sub_1C5637154(uint64_t a1)
{
  sub_1C584F660();
  sub_1C584F6C0();
}

uint64_t sub_1C56371A8(uint64_t a1)
{
  sub_1C584F660();
  sub_1C584FEA0();
  sub_1C584F6C0();
  v1 = sub_1C584FEF0();

  return v1;
}

_DWORD *sub_1C5637230@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1C563724C(void *a1, uint64_t *a2)
{
  v2 = sub_1C584F660();
  v4 = v3;
  if (v2 == sub_1C584F660() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C584FDC0();
  }

  return v7 & 1;
}

uint64_t sub_1C56372D4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C584F630();

  *a2 = v3;
  return result;
}

uint64_t sub_1C563731C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C584F660();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C5637348(uint64_t a1)
{
  sub_1C563D7F0(&qword_1EC170AE0, type metadata accessor for Key, &unk_1C58785E0);
  sub_1C563D7F0(&qword_1EC16DB70, type metadata accessor for Key, &unk_1C5867C24);

  return sub_1C584FD60();
}

unint64_t sub_1C5637404(uint64_t a1)
{
  sub_1C584FEA0();
  v2 = *(a1 + 16);
  MEMORY[0x1C694A560](v2);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      v3 += 4;
      sub_1C584FED0();
      --v2;
    }

    while (v2);
  }

  v4 = sub_1C584FEF0();

  return sub_1C563843C(a1, v4);
}

unint64_t sub_1C5637498(uint64_t a1)
{
  v1 = a1;
  sub_1C584FEA0();
  sub_1C584FED0();
  v2 = sub_1C584FEF0();

  return sub_1C56384F8(v1, v2);
}

unint64_t sub_1C5637504(uint64_t a1)
{
  sub_1C584F660();
  sub_1C584FEA0();
  sub_1C584F6C0();
  v2 = sub_1C584FEF0();

  return sub_1C5638564(a1, v2);
}

uint64_t sub_1C5637598(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB38, &qword_1C5867B30);
  v35 = v4;
  result = sub_1C584FD40();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1C584FEA0();
      MEMORY[0x1C694A560](*(v21 + 16));
      v23 = *(v21 + 16);
      if (v23)
      {
        v24 = v21 + 32;
        do
        {
          v24 += 4;
          sub_1C584FED0();
          --v23;
        }

        while (v23);
      }

      result = sub_1C584FEF0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v16 = v22;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v16 = v22;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v16;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1C5637860(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB48, &qword_1C5867B40);
  v30 = v4;
  result = sub_1C584FD40();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1C584FEA0();
      sub_1C584FED0();
      result = sub_1C584FEF0();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1C5637AF0(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_1C5637B74(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C563B6E8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1C584FD80();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for GEOEVChargerPlugConnectorType(0);
      v7 = sub_1C584F7C0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C5639580(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

char *sub_1C5637CAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAE0, &qword_1C5867AE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1C5637DB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAF0, &qword_1C5867AF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C5637ED0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAE8, &qword_1C5867AE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C5637FF0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB30, &qword_1C5867B28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB40, &qword_1C5867B38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C5638124(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB08, &qword_1C5867B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C5638228(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8E0, &qword_1C5867910);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C5638334(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB18, &qword_1C5867B18);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1C56383B8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB08, &qword_1C5867B08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

unint64_t sub_1C563843C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *(*(v2 + 48) + 8 * result);
      if (*(v8 + 16) == v7)
      {
        break;
      }

LABEL_3:
      result = (result + 1) & v6;
      if (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        return result;
      }
    }

    if (v7 && v8 != a1)
    {
      v9 = (v8 + 32);
      v10 = (a1 + 32);
      v11 = *(a1 + 16);
      while (v11)
      {
        if (*v9 != *v10)
        {
          goto LABEL_3;
        }

        ++v9;
        ++v10;
        if (!--v11)
        {
          return result;
        }
      }

      __break(1u);
    }
  }

  return result;
}

unint64_t sub_1C56384F8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C5638564(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1C584F660();
      v8 = v7;
      if (v6 == sub_1C584F660() && v8 == v9)
      {
        break;
      }

      v11 = sub_1C584FDC0();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_1C5638668(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C584FD80();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1C584F7C0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C56389C8(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C5638868(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C5638760(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C584FD80();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB10, &qword_1C5867B10);
        v5 = sub_1C584F7C0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C5638FA4(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C5638938(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C5638868(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1C584FDC0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C5638938(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      if (*(v7 + 16))
      {
        v11 = *(v7 + 32);
        if (!*(v10 + 16))
        {
          if ((v11 & 0x80000000) == 0)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }

      else
      {
        if (!*(v10 + 16))
        {
          goto LABEL_4;
        }

        v11 = 0;
      }

      if (v11 >= *(v10 + 32))
      {
        goto LABEL_4;
      }

LABEL_13:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1C56389C8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1C563A1C4(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1C5639ACC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1C584FDC0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1C584FDC0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C5637CAC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1C5637CAC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1C5639ACC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C563A1C4(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1C563A138(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1C584FDC0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1C5638FA4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_102:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_140;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_134:
      result = sub_1C563A1C4(v10);
      v10 = result;
    }

    v79 = *(v10 + 2);
    if (v79 >= 2)
    {
      while (*a3)
      {
        v80 = *&v10[16 * v79];
        v81 = *&v10[16 * v79 + 24];
        sub_1C5639CF4((*a3 + 8 * v80), (*a3 + 8 * *&v10[16 * v79 + 16]), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v80)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1C563A1C4(v10);
        }

        if (v79 - 2 >= *(v10 + 2))
        {
          goto LABEL_128;
        }

        v82 = &v10[16 * v79];
        *v82 = v80;
        *(v82 + 1) = v81;
        result = sub_1C563A138(v79 - 1);
        v79 = *(v10 + 2);
        if (v79 <= 1)
        {
        }
      }

      goto LABEL_138;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *a3;
      v13 = *(*a3 + 8 * v9);
      v14 = *(v13 + 16);
      if (v14)
      {
        LODWORD(v14) = *(v13 + 32);
      }

      v15 = *(v12 + 8 * v11);
      if (*(v15 + 16))
      {
        v16 = *(v15 + 32);
      }

      else
      {
        v16 = 0;
      }

      v9 = v11 + 2;
      if (v11 + 2 < v7)
      {
        do
        {
          v17 = *(v12 + 8 * v9);
          v18 = *(v17 + 16);
          if (v18)
          {
            LODWORD(v18) = *(v17 + 32);
          }

          if (*(v13 + 16))
          {
            if (v14 < v16 == v18 >= *(v13 + 32))
            {
              goto LABEL_18;
            }
          }

          else if (v14 < v16 == v18 >= 0)
          {
            goto LABEL_18;
          }

          ++v9;
          v13 = v17;
        }

        while (v7 != v9);
        v9 = v7;
        if (v14 >= v16)
        {
          goto LABEL_28;
        }

LABEL_19:
        if (v9 < v11)
        {
          goto LABEL_131;
        }

        if (v11 < v9)
        {
          v19 = 8 * v9 - 8;
          v20 = 8 * v11;
          v21 = v9;
          v22 = v11;
          do
          {
            if (v22 != --v21)
            {
              v23 = *a3;
              if (!*a3)
              {
                goto LABEL_137;
              }

              v24 = *(v23 + v20);
              *(v23 + v20) = *(v23 + v19);
              *(v23 + v19) = v24;
            }

            ++v22;
            v19 -= 8;
            v20 += 8;
          }

          while (v22 < v21);
          v7 = a3[1];
        }

        goto LABEL_28;
      }

LABEL_18:
      if (v14 < v16)
      {
        goto LABEL_19;
      }
    }

LABEL_28:
    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_130;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_132;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_51:
    if (v9 < v11)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C5637CAC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v34 = *(v10 + 3);
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      result = sub_1C5637CAC((v34 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v35;
    v36 = &v10[16 * v5];
    *(v36 + 4) = v11;
    *(v36 + 5) = v9;
    v37 = *v84;
    if (!*v84)
    {
      goto LABEL_139;
    }

    if (v5)
    {
      while (1)
      {
        v38 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v39 = *(v10 + 4);
          v40 = *(v10 + 5);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_71:
          if (v42)
          {
            goto LABEL_118;
          }

          v55 = &v10[16 * v35];
          v57 = *v55;
          v56 = *(v55 + 1);
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_121;
          }

          v61 = &v10[16 * v38 + 32];
          v63 = *v61;
          v62 = *(v61 + 1);
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_124;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_125;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v38 = v35 - 2;
            }

            goto LABEL_92;
          }

          goto LABEL_85;
        }

        v65 = &v10[16 * v35];
        v67 = *v65;
        v66 = *(v65 + 1);
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_85:
        if (v60)
        {
          goto LABEL_120;
        }

        v68 = &v10[16 * v38];
        v70 = *(v68 + 4);
        v69 = *(v68 + 5);
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_123;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_92:
        v76 = v38 - 1;
        if (v38 - 1 >= v35)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (!*a3)
        {
          goto LABEL_136;
        }

        v77 = *&v10[16 * v76 + 32];
        v5 = *&v10[16 * v38 + 40];
        sub_1C5639CF4((*a3 + 8 * v77), (*a3 + 8 * *&v10[16 * v38 + 32]), (*a3 + 8 * v5), v37);
        if (v4)
        {
        }

        if (v5 < v77)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1C563A1C4(v10);
        }

        if (v76 >= *(v10 + 2))
        {
          goto LABEL_115;
        }

        v78 = &v10[16 * v76];
        *(v78 + 4) = v77;
        *(v78 + 5) = v5;
        result = sub_1C563A138(v38);
        v35 = *(v10 + 2);
        if (v35 <= 1)
        {
          goto LABEL_3;
        }
      }

      v43 = &v10[16 * v35 + 32];
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_116;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_117;
      }

      v50 = &v10[16 * v35];
      v52 = *v50;
      v51 = *(v50 + 1);
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_119;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_122;
      }

      if (v54 >= v46)
      {
        v72 = &v10[16 * v38 + 32];
        v74 = *v72;
        v73 = *(v72 + 1);
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_126;
        }

        if (v41 < v75)
        {
          v38 = v35 - 2;
        }

        goto LABEL_92;
      }

      goto LABEL_71;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_102;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v9 - 8;
  v27 = v11 - v9;
LABEL_38:
  v28 = *(v25 + 8 * v9);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    v31 = *v30;
    if (*(v28 + 16))
    {
      v32 = *(v28 + 32);
      if (!*(v31 + 16))
      {
        if ((v32 & 0x80000000) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_46;
      }
    }

    else
    {
      if (!*(v31 + 16))
      {
        goto LABEL_37;
      }

      v32 = 0;
    }

    if (v32 >= *(v31 + 32))
    {
      goto LABEL_37;
    }

LABEL_46:
    if (!v25)
    {
      break;
    }

    *v30 = v28;
    v30[1] = v31;
    --v30;
    if (__CFADD__(v29++, 1))
    {
LABEL_37:
      ++v9;
      v26 += 8;
      --v27;
      if (v9 != v7)
      {
        goto LABEL_38;
      }

      v9 = v7;
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
  return result;
}