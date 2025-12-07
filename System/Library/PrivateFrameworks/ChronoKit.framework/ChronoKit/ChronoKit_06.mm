unint64_t sub_1BF421DC0()
{
  result = qword_1EDC99F18[0];
  if (!qword_1EDC99F18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC99F18);
  }

  return result;
}

unint64_t sub_1BF421E14()
{
  result = qword_1EDC963E0;
  if (!qword_1EDC963E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC963E0);
  }

  return result;
}

uint64_t sub_1BF421E90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BF421F98(uint64_t a1)
{
  sub_1BF4E9034();
  if (v1 <= 0x3F)
  {
    sub_1BF42215C(319, &qword_1EDC9D750, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1BF4E7394();
      if (v3 <= 0x3F)
      {
        sub_1BF4E7334();
        if (v4 <= 0x3F)
        {
          sub_1BF4E7194();
          if (v5 <= 0x3F)
          {
            sub_1BF415F08(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CHSPlatform(319);
              if (v7 <= 0x3F)
              {
                sub_1BF42215C(319, &qword_1EDC963F0, MEMORY[0x1E69E62F8]);
                if (v8 <= 0x3F)
                {
                  sub_1BF4221B0(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1BF422214(319);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
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

void sub_1BF42215C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1BF4221B0(uint64_t a1)
{
  if (!qword_1EDC96408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
    v1 = sub_1BF4E8CA4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC96408);
    }
  }
}

void sub_1BF422214(uint64_t a1)
{
  if (!qword_1EDC96318)
  {
    sub_1BF3901C0(255, &unk_1EDC96320, 0x1E6994288);
    v1 = sub_1BF4E90F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC96318);
    }
  }
}

uint64_t getEnumTagSinglePayload for WidgetExtensionInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for WidgetExtensionInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BF4223D0()
{
  result = qword_1EBDD8FA8;
  if (!qword_1EBDD8FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8FA8);
  }

  return result;
}

unint64_t sub_1BF422428()
{
  result = qword_1EDC99F08;
  if (!qword_1EDC99F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC99F08);
  }

  return result;
}

unint64_t sub_1BF422480()
{
  result = qword_1EDC99F10;
  if (!qword_1EDC99F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC99F10);
  }

  return result;
}

unint64_t sub_1BF4224D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BF4E9774();

  if (v2 >= 0x18)
  {
    return 24;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BF422528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF422570()
{
  v1 = *v0;

  return v1;
}

unint64_t sub_1BF4225D4()
{
  result = qword_1EDC9B460;
  if (!qword_1EDC9B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9B460);
  }

  return result;
}

unint64_t sub_1BF42263C()
{
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v1 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = v60 - v2;
  v69 = sub_1BF4E7334();
  v3 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v67 = v60 - v6;
  v77 = 0;
  v78 = 0xE000000000000000;
  v7 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](43);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v13 = sub_1BF4E7844();
  if (v13 < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:

    while (1)
    {
LABEL_18:
      sub_1BF4E9464();
      __break(1u);
    }
  }

  v73 = v3;
  v74 = v1;
  v14 = sub_1BF3D7F44(v13);
  v16 = v15;
  v18 = v17;
  v75 = 0x676E69646E696240;
  v76 = 0xE800000000000000;
  v79 = *(v7 + 16) + 1;
  v19 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v19);

  v20 = v75;
  v21 = v76;
  MEMORY[0x1BFB58C90](v75, v76);
  sub_1BF3D8840(v14, v16, v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v7;
  sub_1BF3D6680(v14, v16, v18, v20, v21, isUniquelyReferenced_nonNull_native, v23);

  sub_1BF3D88B8(v14, v16, v18);
  v24 = v75;
  v25 = v77;
  v26 = v78;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_18;
  }

  v27 = sub_1BF3E4F48(v24, v25, v26);
  if (!v0)
  {
    v60[1] = 0;
    v28 = v27;

    v24 = sub_1BF3DA8A8(MEMORY[0x1E69E7CC0]);
    v29 = v28;
    v66 = v28[2];
    if (!v66)
    {
LABEL_13:

      return v24;
    }

    v30 = 0;
    v63 = (v73 + 16);
    v64 = (v28 + 4);
    v61 = (v73 + 8);
    v62 = (v74 + 8);
    v65 = v28;
    while (v30 < v29[2])
    {
      v74 = v24;
      v31 = *&v64[8 * v30];

      v32 = sub_1BF4E92F4();
      v34 = sub_1BF48063C(v32, v33, v31);
      v36 = v35;
      v38 = v37;
      v39 = ~v37;

      if (!v39)
      {
        goto LABEL_18;
      }

      v40 = sub_1BF4244EC(v34, v36, v38);
      v42 = v41;
      sub_1BF3DB1FC(v34, v36, v38);
      if (!v42)
      {
        goto LABEL_18;
      }

      v73 = v40;
      v43 = sub_1BF4E92F4();
      v45 = sub_1BF48063C(v43, v44, v31);
      v47 = v46;
      v49 = v48;
      v50 = ~v48;

      if (!v50)
      {
        goto LABEL_17;
      }

      sub_1BF424640(v45, v47, v49, MEMORY[0x1E69E63B0]);
      v52 = v51;
      sub_1BF3DB1FC(v45, v47, v49);
      if (v52)
      {
        goto LABEL_17;
      }

      ++v30;
      v53 = v67;
      sub_1BF4E71E4();
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85C8, &unk_1BF4F20E0);
      sub_1BF38C8B4(&qword_1EDC9F080, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940B0]);
      sub_1BF38C8B4(&unk_1EDC9F058, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940D8]);
      sub_1BF38C8B4(&unk_1EDC9F070, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940B8]);
      sub_1BF38C8B4(&qword_1EDC9F068, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940C0]);
      v54 = v70;
      sub_1BF4E7784();
      v56 = v68;
      v55 = v69;
      (*v63)(v68, v53, v69);
      v57 = v74;
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v57;
      sub_1BF3D6F04(v56, v54, v58);

      (*v62)(v54, v71);
      (*v61)(v53, v55);
      v24 = v77;
      v29 = v65;
      if (v66 == v30)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_16;
  }

  return v24;
}

void sub_1BF422E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](37);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v10 = sub_1BF4E7844();
  if (v10 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = sub_1BF3D7F44(v10);
  v13 = v12;
  v15 = v14;
  v16 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v16);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v11, v13, v15);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v11, v13, v15, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v18);

  sub_1BF3D88B8(v11, v13, v15);
  if (!swift_weakLoadStrong())
  {
LABEL_7:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  sub_1BF3E4F48(v5, 0, 0xE000000000000000);
  if (v3)
  {
  }

  else
  {

    v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
    swift_getTupleTypeMetadata2();
    v20 = sub_1BF4E8BF4();
    v21 = sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994140]);
    sub_1BF3B0FE8(v20, v19, a3, v21, v22);

    MEMORY[0x1EEE9AC00](v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FB8, &unk_1BF4EF870);
    sub_1BF4E8834();
    sub_1BF38C8B4(&qword_1EDC963F8, &qword_1EBDD8FB8, &unk_1BF4EF870, MEMORY[0x1E69E6328]);
    sub_1BF4E8B14();
  }
}

uint64_t sub_1BF4232B8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v44 = a3;
  v41 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v39 - v8;
  v9 = *a2;
  v10 = sub_1BF4E92F4();
  v12 = sub_1BF48063C(v10, v11, v9);
  v14 = v13;
  v16 = v15;
  v17 = ~v15;

  if (!v17)
  {
    goto LABEL_14;
  }

  v18 = sub_1BF4244EC(v12, v14, v16);
  v20 = v19;
  sub_1BF3DB1FC(v12, v14, v16);
  if (!v20)
  {
    goto LABEL_14;
  }

  v42 = v18;
  v45 = v5;
  v46 = v4;
  v21 = sub_1BF4E92F4();
  v23 = sub_1BF48063C(v21, v22, v9);
  v25 = v24;
  v27 = v26;
  v28 = ~v26;

  if (!v28 || (sub_1BF424370(v23, v25, v27, &v47), sub_1BF3DB1FC(v23, v25, v27), v29 = *(&v47 + 1), *(&v47 + 1) >> 60 == 15))
  {

    goto LABEL_10;
  }

  v30 = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85C8, &unk_1BF4F20E0);
  sub_1BF38C8B4(&qword_1EDC9F080, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940B0]);
  sub_1BF38C8B4(&unk_1EDC9F058, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940D8]);
  sub_1BF38C8B4(&unk_1EDC9F070, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940B8]);
  sub_1BF38C8B4(&qword_1EDC9F068, &unk_1EBDD85C8, &unk_1BF4F20E0, MEMORY[0x1E69940C0]);
  v31 = v48;
  sub_1BF4E7784();
  sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
  v32 = v43;
  v33 = sub_1BF4E8EB4();
  if (v32)
  {
    (*(v45 + 8))(v31, v46);
    sub_1BF3DB210(v30, v29);
  }

  v35 = v46;
  if (!v33)
  {
LABEL_14:
    while (1)
    {
LABEL_10:
      sub_1BF4E9464();
      __break(1u);
    }
  }

  v36 = v33;

  v37 = v45;
  (*(v45 + 16))(v40, v48, v35);
  *&v47 = v36;
  sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994140]);
  sub_1BF4E8834();
  v38 = v36;
  sub_1BF4E8864();
  sub_1BF3DB210(v30, v29);

  return (*(v37 + 8))(v48, v35);
}

uint64_t ChronoMetadataStore.PreviewConfigurationStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1BF4237DC(void *a1, char *a2, uint64_t a3)
{
  v93 = a2;
  v99 = *MEMORY[0x1E69E9840];
  v6 = sub_1BF4E7334();
  v92 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_14;
  }

  v10 = *(Strong + 24);
  v11 = Strong;
  os_unfair_lock_lock(*(v10 + 16));
  v12 = *(v11 + 64);
  os_unfair_lock_unlock(*(v10 + 16));

  if (!v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!a1)
  {
    sub_1BF424054();
    return;
  }

  v13 = objc_opt_self();
  v97 = 0;
  v14 = a1;
  v15 = [v13 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v97];
  v16 = v97;
  if (!v15)
  {
    v85 = v16;
    sub_1BF4E6FF4();

    swift_willThrow();
    return;
  }

  v86 = v6;
  v87 = v14;
  v88 = v4;
  v89 = v3;
  v90 = sub_1BF4E71C4();
  v91 = v17;

  v97 = 0;
  v98 = 0xE000000000000000;
  v18 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](123);
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FAD70);
  v19 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v19);

  MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
  v20 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v20);

  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v21 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v21);

  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v22 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v22);

  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v23 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v23);

  MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4FAD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v24 = sub_1BF4E7794();
  v26 = v25;

  v28 = sub_1BF3D8148(v24, v26, v27);
  v30 = v29;
  v32 = v31;
  v95 = 0x676E69646E696240;
  v96 = 0xE800000000000000;
  v94 = *(v18 + 16) + 1;
  v33 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v33);

  v34 = v95;
  v35 = v96;
  MEMORY[0x1BFB58C90](v95, v96);
  sub_1BF3D8840(v28, v30, v32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v95 = v18;
  sub_1BF3D6680(v28, v30, v32, v34, v35, isUniquelyReferenced_nonNull_native, v37);

  sub_1BF3D88B8(v28, v30, v32);

  v38 = v95;
  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
  v39 = sub_1BF4E7844();
  if (v39 < 0)
  {
LABEL_13:
    __break(1u);
  }

  v40 = sub_1BF3D7F44(v39);
  v42 = v41;
  v44 = v43;
  v95 = 0x676E69646E696240;
  v96 = 0xE800000000000000;
  v94 = *(v38 + 16) + 1;
  v45 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v45);

  v46 = v95;
  v47 = v96;
  MEMORY[0x1BFB58C90](v95, v96);
  sub_1BF3D8840(v40, v42, v44);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v38;
  sub_1BF3D6680(v40, v42, v44, v46, v47, v48, v49);

  v50 = sub_1BF3D88B8(v40, v42, v44);
  v51 = v95;
  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020, v50);
  v93 = v8;
  v52 = v90;
  v53 = v91;
  sub_1BF3D8864(v90, v91);
  sub_1BF3D8864(v52, v53);
  v55 = sub_1BF3D8134(v52, v53, v54);
  v57 = v56;
  v59 = v58;
  v95 = 0x676E69646E696240;
  v96 = 0xE800000000000000;
  v94 = *(v51 + 16) + 1;
  v60 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v60);

  v61 = v95;
  v62 = v96;
  MEMORY[0x1BFB58C90](v95, v96);
  sub_1BF3D8840(v55, v57, v59);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v51;
  sub_1BF3D6680(v55, v57, v59, v61, v62, v63, v64);

  sub_1BF3D88B8(v55, v57, v59);
  v65 = sub_1BF3B03C0(v52, v53);
  v66 = v95;
  MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020, v65);
  v67 = v93;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  sub_1BF4E71F4();
  v69 = v68;
  (*(v92 + 8))(v67, v86);
  v70 = sub_1BF3D833C(v69);
  v72 = v71;
  v74 = v73;
  v95 = 0x676E69646E696240;
  v96 = 0xE800000000000000;
  v94 = *(v66 + 16) + 1;
  v75 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v75);

  v76 = v95;
  v77 = v96;
  MEMORY[0x1BFB58C90](v95, v96);
  sub_1BF3D8840(v70, v72, v74);
  v78 = swift_isUniquelyReferenced_nonNull_native();
  v95 = v66;
  sub_1BF3D6680(v70, v72, v74, v76, v77, v78, v79);

  v80 = sub_1BF3D88B8(v70, v72, v74);
  v81 = v95;
  MEMORY[0x1BFB58C90](0x3B29202020200ALL, 0xE700000000000000, v80);
  v82 = v97;
  v83 = v98;
  if (!swift_weakLoadStrong())
  {
LABEL_14:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  v84 = v88;
  sub_1BF3E4F48(v81, v82, v83);

  if (!v84)
  {
  }

  sub_1BF3B03C0(v90, v91);
}

void sub_1BF424054()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v2 = *(Strong + 24);
  v3 = Strong;
  os_unfair_lock_lock(*(v2 + 16));
  v4 = *(v3 + 64);
  os_unfair_lock_unlock(*(v2 + 16));

  if (!v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  v20 = v0;
  v5 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v8 = sub_1BF4E7794();
  v10 = v9;

  v12 = sub_1BF3D8148(v8, v10, v11);
  v14 = v13;
  v16 = v15;
  v17 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v12, v14, v16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v12, v14, v16, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v19);

  sub_1BF3D88B8(v12, v14, v16);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  sub_1BF3E4F48(v5, 0, 0xE000000000000000);

  if (!v20)
  {
  }
}

void sub_1BF424370(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, __int128 *a4@<X8>)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      v5 = MEMORY[0x1E69E63B0];
      v6 = &off_1F3DF0098;
    }

    else
    {
      v5 = MEMORY[0x1E69E7360];
      v6 = &off_1F3DF0090;
    }

    v12 = v5;
    v13 = v6;
    *&v11 = a1;
  }

  else if (a3 == 2)
  {
    v12 = MEMORY[0x1E69E6158];
    v13 = &off_1F3DF00A0;
    *&v11 = a1;
    *(&v11 + 1) = a2;
  }

  else if (a3 == 3)
  {
    v12 = MEMORY[0x1E6969080];
    v13 = &off_1F3DF00A8;
    *&v11 = a1;
    *(&v11 + 1) = a2;
    sub_1BF3D8864(a1, a2);
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v12 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    v13 = &off_1F3DF0088;
    *&v11 = v7;
  }

  sub_1BF38E610(&v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  if (swift_dynamicCast())
  {
    v8 = v9;
  }

  else
  {
    sub_1BF3DB210(0, 0xF000000000000000);
    v8 = xmmword_1BF4EF860;
  }

  *a4 = v8;
}

uint64_t sub_1BF4244EC(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      v3 = MEMORY[0x1E69E63B0];
      v4 = &off_1F3DF0098;
    }

    else
    {
      v3 = MEMORY[0x1E69E7360];
      v4 = &off_1F3DF0090;
    }

    v10 = v3;
    v11 = v4;
    *&v9 = a1;
  }

  else if (a3 == 2)
  {
    v10 = MEMORY[0x1E69E6158];
    v11 = &off_1F3DF00A0;
    *&v9 = a1;
    *(&v9 + 1) = a2;
  }

  else if (a3 == 3)
  {
    v10 = MEMORY[0x1E6969080];
    v11 = &off_1F3DF00A8;
    *&v9 = a1;
    *(&v9 + 1) = a2;
    sub_1BF3D8864(a1, a2);
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v10 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    v11 = &off_1F3DF0088;
    *&v9 = v5;
  }

  sub_1BF38E610(&v9, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BF424640(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      v4 = MEMORY[0x1E69E63B0];
      v5 = &off_1F3DF0098;
    }

    else
    {
      v4 = MEMORY[0x1E69E7360];
      v5 = &off_1F3DF0090;
    }

    v13 = v4;
    v14 = v5;
    *&v12 = a1;
  }

  else if (a3 == 2)
  {
    v13 = MEMORY[0x1E69E6158];
    v14 = &off_1F3DF00A0;
    *&v12 = a1;
    *(&v12 + 1) = a2;
  }

  else if (a3 == 3)
  {
    v13 = MEMORY[0x1E6969080];
    v14 = &off_1F3DF00A8;
    *&v12 = a1;
    *(&v12 + 1) = a2;
    sub_1BF3D8864(a1, a2);
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v13 = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    v14 = &off_1F3DF0088;
    *&v12 = v6;
  }

  sub_1BF38E610(&v12, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  v7 = swift_dynamicCast();
  v8 = v10;
  if (!v7)
  {
    return 0;
  }

  return v8;
}

uint64_t sub_1BF424908()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](98);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FAE90);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000022, 0x80000001BF4FAEB0);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](992545321, 0xE400000000000000);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

void sub_1BF424B3C()
{
  v1 = sub_1BF4E7854();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = 0;
  v45 = 0xE000000000000000;
  v4 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](123);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000017, 0x80000001BF4FAE70);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FAE90);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0xD000000000000022, 0x80000001BF4FAEB0);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](992545321, 0xE400000000000000);
  sub_1BF3E4F48(v4, v44, v45);

  if (!v0)
  {

    v44 = 0;
    v45 = 0xE000000000000000;
    v12 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
    MEMORY[0x1BFB58C40](57);
    MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8850);
    v13 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v13);

    MEMORY[0x1BFB58C90](10272, 0xE200000000000000);
    v14 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v14);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v15 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v15);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v16 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v16);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v17 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v17);

    MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4F8AE0);
    v18 = sub_1BF4E92F4();
    MEMORY[0x1BFB58C90](v18);

    MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
    v20 = v40;
    v19 = v41;
    (*(v40 + 104))(v3, *MEMORY[0x1E6994188], v41);
    v21 = sub_1BF4E7844();
    (*(v20 + 8))(v3, v19);
    if (v21 < 0)
    {
      __break(1u);
    }

    else
    {
      v22 = sub_1BF3D7F44(v21);
      v24 = v23;
      v26 = v25;
      v42 = 0x676E69646E696240;
      v43 = 0xE800000000000000;
      v46 = *(v12 + 16) + 1;
      v27 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v27);

      v28 = v42;
      v29 = v43;
      MEMORY[0x1BFB58C90](v42, v43);
      sub_1BF3D8840(v22, v24, v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v42 = v12;
      sub_1BF3D6680(v22, v24, v26, v28, v29, isUniquelyReferenced_nonNull_native, v31);

      v32 = sub_1BF3D88B8(v22, v24, v26);
      v33 = v42;
      MEMORY[0x1BFB58C90](542327072, 0xE400000000000000, v32);
      v34 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v34);

      MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
      v35 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v35);

      MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
      v36 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v36);

      MEMORY[0x1BFB58C90](0x204D4F524620, 0xE600000000000000);
      v37 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v37);

      MEMORY[0x1BFB58C90](59, 0xE100000000000000);
      sub_1BF3E4F48(v33, v44, v45);

      v44 = 0;
      v45 = 0xE000000000000000;
      v38 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFB58C40](16);
      MEMORY[0x1BFB58C90](0x504F524420202020, 0xEF20454C42415420);
      v39 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v39);

      MEMORY[0x1BFB58C90](59, 0xE100000000000000);
      sub_1BF3E4F48(v38, v44, v45);
    }
  }
}

uint64_t static ActivityCacheKey.allTargetContents(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a6;
  v15 = sub_1BF4E90F4();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - v16;
  v18 = sub_1BF4E90F4();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v27 - v19;
  v21 = sub_1BF4E7194();
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, a1, v22);
  (*(*(a2 - 8) + 56))(v20, 1, 1, a2);
  (*(*(a3 - 8) + 56))(v17, 1, 1, a3);
  return sub_1BF4254BC(v24, v20, v17, a2, a3, a4, a5, v28, a8, a7);
}

uint64_t sub_1BF4254BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v23[0] = a4;
  v23[1] = a5;
  v23[2] = a6;
  v23[3] = a7;
  v23[4] = a8;
  v23[5] = a10;
  v16 = type metadata accessor for ActivityCacheKey(0, v23);
  v17 = *(v16 + 68);
  (*(*(a4 - 8) + 56))(a9 + v17, 1, 1, a4);
  v18 = *(v16 + 72);
  (*(*(a5 - 8) + 56))(a9 + v18, 1, 1, a5);
  v19 = sub_1BF4E7194();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = sub_1BF4E90F4();
  (*(*(v20 - 8) + 40))(a9 + v17, a2, v20);
  v21 = sub_1BF4E90F4();
  return (*(*(v21 - 8) + 40))(a9 + v18, a3, v21);
}

uint64_t static ActivityCacheKey.allContent(for:at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v29 = a6;
  v30 = a7;
  v16 = sub_1BF4E90F4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v29 - v17;
  v19 = sub_1BF4E90F4();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v29 - v20;
  v22 = sub_1BF4E7194();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, a2, v23);
  v27 = *(a3 - 8);
  (*(v27 + 16))(v21, a1, a3);
  (*(v27 + 56))(v21, 0, 1, a3);
  (*(*(a4 - 8) + 56))(v18, 1, 1, a4);
  return sub_1BF4254BC(v25, v21, v18, a3, a4, a5, v29, v30, a9, a8);
}

uint64_t ActivityCacheKey.init(baseURL:variantID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v38 = a9;
  v39 = a7;
  v34 = a6;
  v36 = a1;
  v16 = sub_1BF4E90F4();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v37 = &v32 - v17;
  v18 = sub_1BF4E90F4();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v32 - v19;
  v35 = sub_1BF4E7194();
  v21 = *(v35 - 8);
  v22 = MEMORY[0x1EEE9AC00](v35);
  v24 = &v32 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, a1, v22);
  v25 = *(a3 - 8);
  v26 = *(v25 + 16);
  v33 = a2;
  v26(v20, a2, a3);
  (*(v25 + 56))(v20, 0, 1, a3);
  v40[0] = a3;
  v40[1] = a4;
  v40[2] = a5;
  v40[3] = a6;
  v40[4] = v39;
  v40[5] = a8;
  v27 = type metadata accessor for VariantIdentifier(0, v40);
  v28 = *(a4 - 8);
  v29 = a2 + *(v27 + 68);
  v30 = v37;
  (*(v28 + 16))(v37, v29, a4);
  (*(v28 + 56))(v30, 0, 1, a4);
  sub_1BF4254BC(v24, v20, v30, a3, a4, a5, v34, v39, v38, a8);
  (*(*(v27 - 8) + 8))(v33, v27);
  return (*(v21 + 8))(v36, v35);
}

uint64_t ActivityCacheKey.init(baseURL:target:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v35 = a7;
  v36 = a8;
  v33 = a9;
  v34 = a6;
  v30 = a1;
  v31 = a3;
  v29 = a2;
  v32 = a10;
  v14 = sub_1BF4E90F4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29 - v15;
  v17 = sub_1BF4E90F4();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v29 - v18;
  v20 = sub_1BF4E7194();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v24, a1, v20, v22);
  v25 = *(a4 - 8);
  (*(v25 + 16))(v19, a2, a4);
  (*(v25 + 56))(v19, 0, 1, a4);
  v26 = *(a5 - 8);
  v27 = v31;
  (*(v26 + 16))(v16, v31, a5);
  (*(v26 + 56))(v16, 0, 1, a5);
  sub_1BF4254BC(v24, v19, v16, a4, a5, v34, v35, v36, v33, v32);
  (*(v26 + 8))(v27, a5);
  (*(v25 + 8))(v29, a4);
  return (*(v21 + 8))(v30, v20);
}

uint64_t ActivityCacheKey.targetID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 68);
  v5 = sub_1BF4E90F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ActivityCacheKey.contentID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = sub_1BF4E90F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t ActivityCacheKey.description.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v5 + 16);
  v34 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BF4E90F4();
  v33 = v3;
  v9 = sub_1BF4E90F4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v13 = &v30 - v12;
  v14 = *(a1 + 72);
  v16 = *(v15 + 56);
  v17 = *(v8 - 8);
  (*(v17 + 16))(&v30 - v12, v1 + *(a1 + 68), v8, v11);
  v18 = *(v9 - 8);
  v19 = v1 + v14;
  v20 = v34;
  (*(v18 + 16))(&v13[v16], v19, v9);
  if ((*(v20 + 48))(v13, 1, v6) == 1)
  {
    (*(v18 + 8))(&v13[v16], v9);
    (*(v17 + 8))(v13, v8);
    return 0x656B2D6568636163;
  }

  else
  {
    v22 = (*(v32 + 48))(&v13[v16], 1, v33);
    (*(v20 + 32))(v35, v13, v6);
    if (v22 == 1)
    {
      v36 = 0;
      v37 = 0xE000000000000000;
      MEMORY[0x1BFB58C90](0x656B2D6568636163, 0xEB000000003A3A79);
      v23 = v35;
      sub_1BF4E96F4();
      MEMORY[0x1BFB58C90](10799, 0xE200000000000000);
      v21 = v36;
      (*(v20 + 8))(v23, v6);
      (*(v18 + 8))(&v13[v16], v9);
    }

    else
    {
      v24 = v32;
      v25 = &v13[v16];
      v26 = v31;
      v27 = v33;
      (*(v32 + 32))(v31, v25, v33);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_1BF4E92E4();
      MEMORY[0x1BFB58C90](0x656B2D6568636163, 0xEB000000003A3A79);
      v28 = v35;
      sub_1BF4E96F4();
      MEMORY[0x1BFB58C90](47, 0xE100000000000000);
      sub_1BF4E96F4();
      v21 = v36;
      (*(v24 + 8))(v26, v27);
      (*(v20 + 8))(v28, v6);
    }
  }

  return v21;
}

uint64_t ActivityCacheKey<>.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43[1] = a3;
  v45 = a2;
  v6 = *(a1 + 24);
  v47 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v44 = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v46 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF4E90F4();
  v48 = v6;
  v13 = sub_1BF4E90F4();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v17 = v43 - v16;
  v18 = *(a1 + 68);
  v19 = *(a1 + 72);
  v21 = *(v20 + 56);
  v22 = *(v12 - 8);
  (*(v22 + 16))(v17, v4 + v18, v12, v15);
  v23 = *(v13 - 8);
  v24 = *(v23 + 16);
  v49 = v21;
  v24(&v17[v21], v4 + v19, v13);
  if ((*(v10 + 48))(v17, 1, v9) == 1)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1BF4E92E4();

    v50 = 0x656B2D6568636163;
    v51 = 0xEF402A2F2A3A3A79;
    sub_1BF4E7194();
    sub_1BF426950(v25);
    v26 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v26);

    v27 = v50;
    (*(v23 + 8))(&v17[v49], v13);
    (*(v22 + 8))(v17, v12);
  }

  else
  {
    v43[0] = v4;
    v28 = (*(v47 + 48))(&v17[v49], 1, v48);
    v29 = v10;
    v30 = v46;
    (*(v10 + 32))(v46, v17, v9);
    if (v28 == 1)
    {
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1BF4E92E4();

      v50 = 0x656B2D6568636163;
      v51 = 0xEB000000003A3A79;
      v31 = sub_1BF4E9744();
      MEMORY[0x1BFB58C90](v31);

      MEMORY[0x1BFB58C90](4205103, 0xE300000000000000);
      sub_1BF4E7194();
      sub_1BF426950(v32);
      v33 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v33);

      v27 = v50;
      (*(v10 + 8))(v30, v9);
      (*(v23 + 8))(&v17[v49], v13);
    }

    else
    {
      v35 = v47;
      v34 = v48;
      v36 = &v17[v49];
      v37 = v44;
      (*(v47 + 32))(v44, v36, v48);
      v50 = 0;
      v51 = 0xE000000000000000;
      sub_1BF4E92E4();

      v50 = 0x656B2D6568636163;
      v51 = 0xEB000000003A3A79;
      v38 = sub_1BF4E9744();
      MEMORY[0x1BFB58C90](v38);

      MEMORY[0x1BFB58C90](47, 0xE100000000000000);
      v39 = sub_1BF4E9744();
      MEMORY[0x1BFB58C90](v39);

      MEMORY[0x1BFB58C90](64, 0xE100000000000000);
      sub_1BF4E7194();
      sub_1BF426950(v40);
      v41 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v41);

      v27 = v50;
      (*(v35 + 8))(v37, v34);
      (*(v29 + 8))(v30, v9);
    }
  }

  return v27;
}

unint64_t sub_1BF426950(double a1)
{
  result = qword_1EDC9F100;
  if (!qword_1EDC9F100)
  {
    sub_1BF4E7194();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F100);
  }

  return result;
}

uint64_t sub_1BF4269BC(uint64_t a1, double a2)
{
  result = sub_1BF4E7194();
  if (v3 <= 0x3F)
  {
    result = sub_1BF4E90F4();
    if (v4 <= 0x3F)
    {
      result = sub_1BF4E90F4();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1BF426A60(unsigned __int16 *a1, unsigned int a2, uint64_t a3, double a4)
{
  v7 = sub_1BF4E7194();
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a3 + 16) - 8);
  v11 = v10;
  v12 = *(v10 + 84);
  if (v12)
  {
    v13 = v12 - 1;
  }

  else
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = v13;
  }

  v15 = *(*(a3 + 24) - 8);
  v16 = v15;
  v17 = *(v15 + 84);
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 0;
  }

  if (v18 > v14)
  {
    v14 = v18;
  }

  v19 = *(v10 + 64);
  if (!v12)
  {
    ++v19;
  }

  v20 = *(v11 + 80);
  v21 = *(v15 + 80);
  v22 = *(v15 + 64);
  if (v17)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v24 = *(*(v7 - 8) + 64) + v20;
  if (a2 <= v14)
  {
    goto LABEL_40;
  }

  v25 = v23 + ((v19 + v21 + (v24 & ~v20)) & ~v21);
  v26 = 8 * v25;
  if (v25 <= 3)
  {
    v28 = ((a2 - v14 + ~(-1 << v26)) >> v26) + 1;
    if (HIWORD(v28))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v28 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_39;
      }

      goto LABEL_26;
    }

    if (v28 < 2)
    {
LABEL_39:
      if (v14)
      {
LABEL_40:
        if (v9 == v14)
        {
          v32 = *(v8 + 48);

          return v32(a1);
        }

        else
        {
          v34 = (a1 + v24) & ~v20;
          if (v13 == v14)
          {
            v35 = (*(v11 + 48))(v34, v12);
          }

          else
          {
            v35 = (*(v16 + 48))((v34 + v19 + v21) & ~v21, v17, *(a3 + 24), v8);
          }

          if (v35 >= 2)
          {
            return v35 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_39;
  }

LABEL_26:
  v29 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v29 = 0;
  }

  if (v25)
  {
    if (v25 <= 3)
    {
      v30 = v25;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 2)
    {
      if (v30 == 3)
      {
        v31 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v31 = *a1;
      }
    }

    else if (v30 == 1)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }
  }

  else
  {
    v31 = 0;
  }

  return v14 + (v31 | v29) + 1;
}

void sub_1BF426D4C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4, double a5)
{
  v9 = sub_1BF4E7194();
  v10 = 0;
  v11 = *(v9 - 8);
  v12 = *(v11 + 84);
  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 <= v12)
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = v15;
  }

  v17 = *(a4 + 24);
  v18 = *(v17 - 8);
  v19 = *(v18 + 84);
  v20 = *(*(v9 - 8) + 64);
  v21 = *(v13 + 80);
  v22 = *(v18 + 80);
  v23 = v19 - 1;
  if (!v19)
  {
    v23 = 0;
  }

  if (v23 <= v16)
  {
    v24 = v16;
  }

  else
  {
    v24 = v23;
  }

  if (v14)
  {
    v25 = *(*(*(a4 + 16) - 8) + 64);
  }

  else
  {
    v25 = *(*(*(a4 + 16) - 8) + 64) + 1;
  }

  if (v19)
  {
    v26 = *(v18 + 64);
  }

  else
  {
    v26 = *(v18 + 64) + 1;
  }

  v27 = ((v25 + v22 + ((v20 + v21) & ~v21)) & ~v22) + v26;
  if (a3 <= v24)
  {
    goto LABEL_29;
  }

  if (v27 <= 3)
  {
    v28 = ((a3 - v24 + ~(-1 << (8 * v27))) >> (8 * v27)) + 1;
    if (HIWORD(v28))
    {
      v10 = 4;
      if (v24 >= a2)
      {
        goto LABEL_39;
      }

LABEL_30:
      v30 = ~v24 + a2;
      if (v27 >= 4)
      {
        bzero(a1, v27);
        *a1 = v30;
        v31 = 1;
        if (v10 > 1)
        {
          goto LABEL_72;
        }

        goto LABEL_69;
      }

      v31 = (v30 >> (8 * v27)) + 1;
      if (v27)
      {
        v32 = v30 & ~(-1 << (8 * v27));
        bzero(a1, v27);
        if (v27 != 3)
        {
          if (v27 == 2)
          {
            *a1 = v32;
            if (v10 > 1)
            {
LABEL_72:
              if (v10 == 2)
              {
                *&a1[v27] = v31;
              }

              else
              {
                *&a1[v27] = v31;
              }

              return;
            }
          }

          else
          {
            *a1 = v30;
            if (v10 > 1)
            {
              goto LABEL_72;
            }
          }

LABEL_69:
          if (v10)
          {
            a1[v27] = v31;
          }

          return;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v10 > 1)
      {
        goto LABEL_72;
      }

      goto LABEL_69;
    }

    if (v28 < 0x100)
    {
      v29 = 1;
    }

    else
    {
      v29 = 2;
    }

    if (v28 >= 2)
    {
      v10 = v29;
    }

    else
    {
      v10 = 0;
    }

LABEL_29:
    if (v24 >= a2)
    {
      goto LABEL_39;
    }

    goto LABEL_30;
  }

  v10 = 1;
  if (v24 < a2)
  {
    goto LABEL_30;
  }

LABEL_39:
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v27] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_46;
    }

    *&a1[v27] = 0;
LABEL_45:
    if (!a2)
    {
      return;
    }

    goto LABEL_46;
  }

  if (!v10)
  {
    goto LABEL_45;
  }

  a1[v27] = 0;
  if (!a2)
  {
    return;
  }

LABEL_46:
  if (v12 == v24)
  {
    v33 = *(v11 + 56);
    v34 = v9;
    v35 = a1;
    v36 = a2;
    v37 = v12;

LABEL_49:
    v33(v35, v36, v37, v34);
    return;
  }

  v38 = &a1[v20 + v21] & ~v21;
  if (v15 == v24)
  {
    v39 = *(v13 + 56);

    v39(v38, (a2 + 1));
  }

  else
  {
    v40 = (v38 + v25 + v22) & ~v22;
    if (v23 >= a2)
    {
      v33 = *(v18 + 56);
      v36 = (a2 + 1);
      v35 = ((v38 + v25 + v22) & ~v22);
      v37 = v19;
      v34 = v17;

      goto LABEL_49;
    }

    if (v26 <= 3)
    {
      v41 = ~(-1 << (8 * v26));
    }

    else
    {
      v41 = -1;
    }

    if (v26)
    {
      v42 = v41 & (~v23 + a2);
      if (v26 <= 3)
      {
        v43 = v26;
      }

      else
      {
        v43 = 4;
      }

      bzero(((v38 + v25 + v22) & ~v22), v26);
      if (v43 > 2)
      {
        if (v43 == 3)
        {
          *v40 = v42;
          *(v40 + 2) = BYTE2(v42);
        }

        else
        {
          *v40 = v42;
        }
      }

      else if (v43 == 1)
      {
        *v40 = v42;
      }

      else
      {
        *v40 = v42;
      }
    }
  }
}

void sub_1BF427194()
{
  v0 = sub_1BF4E73D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1BF4E73B4();
  v5 = sub_1BF4E73A4();
  (*(v1 + 8))(v3, v0);
  [v4 setTimeZone_];

  qword_1EDC9F0F8 = v4;
}

id sub_1BF4272A0()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  qword_1EDC9F0E0 = result;
  return result;
}

uint64_t ReloadState.description.getter()
{
  v1 = *v0;
  v2 = 0x64616F6C6572;
  v3 = 0x64656C696166;
  v4 = 0x64656B636F6C62;
  if (v1 != 3)
  {
    v4 = 0x646573756170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E61656C63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t ReloadState.hashValue.getter(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

unint64_t sub_1BF4273FC()
{
  result = qword_1EBDD8FC0;
  if (!qword_1EBDD8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD8FC0);
  }

  return result;
}

uint64_t sub_1BF427450()
{
  v1 = *v0;
  v2 = 0x64616F6C6572;
  v3 = 0x64656C696166;
  v4 = 0x64656B636F6C62;
  if (v1 != 3)
  {
    v4 = 0x646573756170;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E61656C63;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_1BF4274EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1BF3EC78C(a1), (v6 & 1) != 0))
  {
    v7 = (*(a2 + 56) + 24 * v5);
    v8 = *v7;
    v9 = v7[1];
    v10 = v7[2];
    *a3 = *v7;
    a3[1] = v9;
    a3[2] = v10;
    sub_1BF3D8864(v8, v9);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t sub_1BF427568(void *a1, uint64_t a2, double a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_1BF4E9434();

    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
      swift_dynamicCast();
      return v7;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1BF3EC898(a1, a3);
    if (v6)
    {
    }
  }

  return 0;
}

uint64_t sub_1BF427624(uint64_t a1, uint64_t a2, double a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_1BF4E9434();

    if (v3)
    {
      type metadata accessor for _ReloadState(0);
      swift_dynamicCast();
      return v6;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1BF3ECA90(a1, a3);
    if (v5)
    {
    }
  }

  return 0;
}

uint64_t Sequence<>.joined(separator:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[6] = sub_1BF427CEC(sub_1BF427C80, v11, a3, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], a4, a6, MEMORY[0x1E69E7410], a9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  v9 = sub_1BF4E8894();

  return v9;
}

uint64_t static Utilities.bundleIdentifier(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = BSBundleIDForAuditToken();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1BF4E8914();

  return v6;
}

uint64_t NSXPCConnection.bundleIdentifier.getter()
{
  [v0 auditToken];
  v1 = BSBundleIDForAuditToken();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1BF4E8914();

  return v3;
}

uint64_t LocaleTokenDescriptor.token.getter()
{
  v1 = *v0;
  sub_1BF3D8864(*v0, *(v0 + 8));
  return v1;
}

uint64_t LocaleTokenDescriptor.description.getter()
{
  sub_1BF4E92E4();

  strcpy(v3, "<LocaleToken: ");
  v0 = sub_1BF4E71B4();
  MEMORY[0x1BFB58C90](v0);

  MEMORY[0x1BFB58C90](8250, 0xE200000000000000);
  v1 = sub_1BF4E8774();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return v3[0];
}

void static NSLocale.currentLocaleToken()(uint64_t *a1@<X8>)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
  v9[0] = v2;
  v3 = [objc_opt_self() archivedPreferencesWithHash_];
  v4 = v9[0];

  v5 = sub_1BF4E8764();
  v6 = sub_1BF4E71C4();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
  a1[2] = v5;
}

uint64_t static NSLocale.currentLocaleToken(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A30, &qword_1BF4F3E50);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BF4EBEF0;
  (*(v5 + 16))(v7 + v6, a1, v4);
  v8 = _sSo8NSLocaleC9ChronoKitE18currentLocaleToken3forSDy0B8Services15TypedIdentifierVyAF0J4TypeO6BundleO9ContainerOGAC0eF10DescriptorVGSayAOG_tFZ_0(v7);
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  sub_1BF4274EC(a1, v8, a2);
}

uint64_t sub_1BF427CEC(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9)
{
  v46 = a9;
  v10 = v9;
  v61 = a2;
  v62 = a4;
  v60 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v44 = &v43 - v15;
  v47 = a5;
  v45 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v58 = &v43 - v19;
  v20 = sub_1BF4E90F4();
  v48 = *(v20 - 8);
  v49 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v51 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v50 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v56 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a6;
  v63 = swift_getAssociatedTypeWitness();
  v52 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v32 = &v43 - v31;
  v33 = sub_1BF4E8AC4();
  v64 = sub_1BF4E93E4();
  v59 = sub_1BF4E93F4();
  sub_1BF4E9394();
  (*(v56 + 2))(v30, v53, a3);
  v62 = v32;
  v56 = a3;
  result = sub_1BF4E8AB4();
  if (v33 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v33)
  {
    v35 = (v55 + 48);
    v36 = (v55 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1BF4E9104();
      result = (*v35)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v60(v24, v58);
      if (v10)
      {
        (*(v52 + 8))(v62, v63);

        (*(v45 + 32))(v46, v58, v47);
        return (*v36)(v24, AssociatedTypeWitness);
      }

      v10 = 0;
      (*v36)(v24, AssociatedTypeWitness);
      sub_1BF4E93D4();
      if (!--v33)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v37 = v51;
  sub_1BF4E9104();
  v38 = v37;
  v39 = v55;
  v40 = *(v55 + 48);
  v58 = (v55 + 48);
  v56 = v40;
  if (v40(v37, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v52 + 8))(v62, v63);
    (*(v48 + 8))(v38, v49);
    return v64;
  }

  else
  {
    v55 = *(v39 + 32);
    v41 = (v39 + 8);
    v42 = v44;
    while (1)
    {
      (v55)(v42, v38, AssociatedTypeWitness);
      v60(v42, v57);
      if (v10)
      {
        break;
      }

      v10 = 0;
      (*v41)(v42, AssociatedTypeWitness);
      sub_1BF4E93D4();
      sub_1BF4E9104();
      if (v56(v38, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v41)(v42, AssociatedTypeWitness);
    (*(v52 + 8))(v62, v63);

    return (*(v45 + 32))(v46, v57, v47);
  }
}

uint64_t CollectionDifference.Change.changedElement.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v4);
  v8 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8FC8, &qword_1BF4EFAB8);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return (*(*(v8 - 8) + 32))(a2, &v6[*(TupleTypeMetadata3 + 48)], v8);
}

uint64_t CollectionDifference.Change.offset.getter(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, v2);
  v6 = *v4;
  v7 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8FC8, &qword_1BF4EFAB8);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  (*(*(v7 - 8) + 8))(&v4[*(TupleTypeMetadata3 + 48)], v7);
  return v6;
}

uint64_t CollectionDifference<A>.grouping<A>(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = MEMORY[0x1EEE9AC00](a1);
  (*(v15 + 16))(&v20[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)], v16, v13);
  v17 = *(a3 + 16);
  v21 = v17;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a1;
  v26 = a2;
  swift_getWitnessTable();
  v18 = sub_1BF4E8814();
  if (!v6)
  {
    MEMORY[0x1EEE9AC00](v18);
    *&v20[-32] = v17;
    *&v20[-24] = a4;
    *&v20[-16] = a5;
    *&v20[-8] = a6;
    sub_1BF4E94E4();
    sub_1BF4E8CA4();
    a6 = sub_1BF4E8794();
  }

  return a6;
}

uint64_t sub_1BF428824(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BF4E94E4();
  CollectionDifference.Change.changedElement.getter(v9, v8);
  a2(v8);
  return (*(v6 + 8))(v8, a4);
}

uint64_t sub_1BF42892C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a2;
  v46 = a6;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BF4E94E4();
  v58 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v43 - v17;
  v44 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v43 - v20;
  v66 = *a1;
  v61 = v9;
  v62 = a3;
  v63 = a4;
  v64 = a5;
  v22 = sub_1BF4E8CA4();
  swift_getWitnessTable();
  v59 = v22;
  v23 = v60;
  v24 = sub_1BF4E8B24();
  v45 = v23;
  v66 = sub_1BF4E8734();
  if (!sub_1BF4E8C34())
  {
LABEL_15:

    v65 = v66;
    swift_getWitnessTable();
    return sub_1BF4E94F4();
  }

  v25 = 0;
  v54 = v24;
  v55 = 0;
  v26 = v11;
  v27 = 0;
  v28 = (v58 + 16);
  v52 = (v26 + 32);
  v53 = (v58 + 32);
  v50 = (v26 + 8);
  v51 = (v26 + 16);
  v48 = v21;
  v49 = v13;
  v47 = (v58 + 16);
  while (1)
  {
    v32 = sub_1BF4E8C14();
    sub_1BF4E8BD4();
    if (v32)
    {
      (*(v58 + 16))(v21, v24 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v25, v14);
      v33 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_14;
      }
    }

    else
    {
      result = sub_1BF4E9304();
      if (v44 != 8)
      {
        goto LABEL_18;
      }

      v65 = result;
      (*v28)(v21, &v65, v14);
      swift_unknownObjectRelease();
      v33 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    v60 = v33;
    v34 = v57;
    (*v53)(v57, v21, v14);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8FC8, &qword_1BF4EFAB8);
    v36 = v9;
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    (*v52)(v13, &v34[*(TupleTypeMetadata3 + 48)], v36);
    v38 = *(TupleTypeMetadata3 + 48);
    v39 = v56;
    v40 = &v56[*(TupleTypeMetadata3 + 64)];
    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    *v56 = v27;
    (*v51)(&v39[v38], v13, v36);
    *v40 = 0;
    v40[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_1BF4E8C44();
    result = (*v50)(v13, v36);
    v30 = __OFADD__(v27++, 1);
    v24 = v54;
    if (v30)
    {
      goto LABEL_17;
    }

    v9 = v36;
LABEL_5:
    v31 = sub_1BF4E8C34();
    ++v25;
    v21 = v48;
    v13 = v49;
    if (v60 == v31)
    {
      goto LABEL_15;
    }
  }

  v41 = v27;
  v42 = v55;
  *v56 = v55;
  (*v51)(&v39[v38], v13, v36);
  *v40 = 0;
  v40[8] = 1;
  swift_storeEnumTagMultiPayload();
  sub_1BF4E8C44();
  result = (*v50)(v13, v36);
  v55 = v42 + 1;
  v24 = v54;
  if (!__OFADD__(v42, 1))
  {
    v9 = v36;
    v27 = v41;
    v28 = v47;
    goto LABEL_5;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t _sSo8NSLocaleC9ChronoKitE18currentLocaleToken3forSDy0B8Services15TypedIdentifierVyAF0J4TypeO6BundleO9ContainerOGAC0eF10DescriptorVGSayAOG_tFZ_0(uint64_t a1)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v2 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v59 - v6;
  if (sub_1BF3F34B4())
  {
    return MEMORY[0x1E69E7CC8];
  }

  v61 = v4;
  v8 = *(a1 + 16);
  if (v8)
  {
    v69[0] = MEMORY[0x1E69E7CC0];
    sub_1BF3A31DC(0, v8, 0);
    v9 = v69[0];
    v62 = v2;
    v11 = *(v2 + 16);
    v10 = v2 + 16;
    v12 = a1 + ((*(v10 + 64) + 32) & ~*(v10 + 64));
    v63 = *(v10 + 56);
    v64 = v11;
    v65 = v10;
    v13 = (v10 - 8);
    do
    {
      v14 = v66;
      (v64)(v7, v12, v66);
      v15 = sub_1BF4E76B4();
      v17 = v16;
      (*v13)(v7, v14);
      v69[0] = v9;
      v19 = *(v9 + 16);
      v18 = *(v9 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1BF3A31DC((v18 > 1), v19 + 1, 1);
        v9 = v69[0];
      }

      *(v9 + 16) = v19 + 1;
      v20 = v9 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v12 += v63;
      --v8;
    }

    while (v8);
    v2 = v62;
  }

  v21 = objc_opt_self();
  v22 = sub_1BF4E8B84();

  v23 = [v21 archivedPreferencesWithHashesForBundleIDs_];

  if (!v23)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FE0, &qword_1BF4EFBD0);
  v24 = sub_1BF4E8764();

  v25 = 1 << *(v24 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v24 + 64);
  v28 = (v25 + 63) >> 6;
  v63 = v2 + 16;
  v64 = (v2 + 8);

  v29 = 0;
  v65 = MEMORY[0x1E69E7CC8];
  while (v27)
  {
LABEL_19:
    v31 = *(*(v24 + 56) + 8 * (__clz(__rbit64(v27)) | (v29 << 6)));
    v27 &= v27 - 1;
    v67 = 1752392040;
    v68 = 0xE400000000000000;

    sub_1BF4E9274();
    if (*(v31 + 16) && (v32 = sub_1BF3EC854(v69), (v33 & 1) != 0))
    {
      sub_1BF38D324(*(v31 + 56) + 32 * v32, v70);
      sub_1BF3EE198(v69);
      if (swift_dynamicCast())
      {
        v59 = v67;
        v60 = v68;

        sub_1BF4E7694();

        v34 = v65;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v69[0] = v34;
        v36 = sub_1BF3EC78C(v61);
        v38 = *(v34 + 16);
        v39 = (v37 & 1) == 0;
        v40 = __OFADD__(v38, v39);
        v41 = v38 + v39;
        if (v40)
        {
          goto LABEL_36;
        }

        if (*(v34 + 24) >= v41)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v62 = v2;
            v56 = v36;
            v57 = v37;
            sub_1BF4A37D4();
            LOBYTE(v37) = v57;
            v36 = v56;
            v2 = v62;
          }
        }

        else
        {
          LODWORD(v65) = v37;
          sub_1BF49F30C(v41, isUniquelyReferenced_nonNull_native);
          v36 = sub_1BF3EC78C(v61);
          v42 = v37 & 1;
          LOBYTE(v37) = v65;
          if ((v65 & 1) != v42)
          {
            goto LABEL_38;
          }
        }

        v43 = v69[0];
        v65 = v69[0];
        if (v37)
        {
          v44 = (*(v69[0] + 56) + 24 * v36);
          v45 = *v44;
          v46 = v44[1];
          v47 = v60;
          *v44 = v59;
          v44[1] = v47;
          v44[2] = v31;
          sub_1BF3B03C0(v45, v46);
        }

        else
        {
          *(v69[0] + 8 * (v36 >> 6) + 64) |= 1 << v36;
          v48 = v43[6] + *(v2 + 72) * v36;
          v49 = v2;
          v50 = *(v2 + 16);
          v51 = v36;
          v50(v48, v61, v66);
          v52 = (v43[7] + 24 * v51);
          v53 = v60;
          *v52 = v59;
          v52[1] = v53;
          v52[2] = v31;
          v54 = v43[2];
          v40 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v40)
          {
            goto LABEL_37;
          }

          v43[2] = v55;
          v2 = v49;
        }

        (*v64)(v61, v66);
      }
    }

    else
    {
      sub_1BF3EE198(v69);
    }
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      return v65;
    }

    v27 = *(v24 + 64 + 8 * v30);
    ++v29;
    if (v27)
    {
      v29 = v30;
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = sub_1BF4E9794();
  __break(1u);
  return result;
}

uint64_t sub_1BF429490(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BF4294D8(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

BOOL sub_1BF429528(double a1)
{
  v1 = sub_1BF4E94E4();
  v2 = CollectionDifference.Change.offset.getter(v1);
  return v2 < CollectionDifference.Change.offset.getter(v1);
}

void sub_1BF429594(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t *a4@<X8>)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      v5 = MEMORY[0x1E69E63B0];
      v6 = &off_1F3DF0098;
    }

    else
    {
      v5 = MEMORY[0x1E69E7360];
      v6 = &off_1F3DF0090;
    }

    a4[3] = v5;
    a4[4] = v6;
    *a4 = a1;
  }

  else if (a3 == 2)
  {
    a4[3] = MEMORY[0x1E69E6158];
    a4[4] = &off_1F3DF00A0;
    *a4 = a1;
    a4[1] = a2;
  }

  else if (a3 == 3)
  {
    a4[3] = MEMORY[0x1E6969080];
    a4[4] = &off_1F3DF00A8;
    *a4 = a1;
    a4[1] = a2;

    sub_1BF3D8864(a1, a2);
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    a4[3] = sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
    a4[4] = &off_1F3DF0088;
    *a4 = v8;
  }
}

void *sub_1BF4296A8(void *a1)
{
  sub_1BF38D324(a1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  if (!swift_dynamicCast())
  {
    sub_1BF3901C0(0, &qword_1EDC9D6B0, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v10 = v27;
      v11 = sub_1BF429990();

      if (v11)
      {
        [v10 doubleValue];
        v13 = sub_1BF3D833C(v12);
LABEL_13:
        v9 = v13;

        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        goto LABEL_14;
      }

      if (sub_1BF429AF0())
      {
        v13 = sub_1BF3D7F44([v10 longLongValue]);
        goto LABEL_13;
      }
    }

    sub_1BF3901C0(0, &qword_1EDC9F9A8, 0x1E696AEC0);
    if (swift_dynamicCast())
    {
      v10 = v27;
      v14 = sub_1BF4E8914();
      v13 = sub_1BF3D8148(v14, v15, v16);
    }

    else
    {
      sub_1BF3901C0(0, &qword_1EDC96300, 0x1E695DEF0);
      if (!swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        v9 = 0;
        goto LABEL_14;
      }

      v10 = v27;
      v17 = sub_1BF4E71C4();
      v19 = v18;

      v13 = sub_1BF3D8134(v17, v19, v20);
    }

    goto LABEL_13;
  }

  sub_1BF38E610(&v27, v26);
  sub_1BF38E49C(v26, v23);
  v2 = v24;
  v3 = v25;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  v9 = sub_1BF429BBC(v7, v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
LABEL_14:
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v9;
}

uint64_t sub_1BF429990()
{
  [v0 objCType];
  v1 = sub_1BF4E8A44();
  v3 = sub_1BF38F1F8(v1, v2);

  v17 = MEMORY[0x1E69E7CC0];
  sub_1BF3E14DC(0, 2, 0);
  v4 = v17;
  v6 = *(v17 + 16);
  v5 = *(v17 + 24);
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    sub_1BF3E14DC((v5 > 1), v6 + 1, 1);
    v4 = v17;
    v5 = *(v17 + 24);
    v7 = v5 >> 1;
  }

  *(v4 + 16) = v8;
  *(v4 + v6 + 32) = 102;
  v9 = v6 + 2;
  if (v7 < v9)
  {
    sub_1BF3E14DC((v5 > 1), v9, 1);
    v4 = v17;
  }

  *(v4 + 16) = v9;
  v10 = (v4 + 32);
  *(v4 + 32 + v8) = 100;
  if (v3[2] == 1)
  {
    v11 = *(v3 + 32);

    v12 = *(v4 + 16);
    do
    {
      v13 = v12-- != 0;
      v14 = v13;
      if (!v13)
      {
        break;
      }

      v15 = *v10++;
    }

    while (v15 != v11);
  }

  else
  {

    v14 = 0;
  }

  return v14;
}

BOOL sub_1BF429AF0()
{
  [v0 objCType];
  v1 = sub_1BF4E8A44();
  v3 = sub_1BF38F1F8(v1, v2);

  if (v3[2] != 1)
  {

    return 1;
  }

  v4 = *(v3 + 32);

  if (v4 != 81)
  {
    return 1;
  }

  v5 = [v0 longLongValue];
  v6 = [v0 unsignedLongLongValue];
  return v5 >= 0 && v5 == v6;
}

void *sub_1BF429BBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[3] = a2;
  v10[4] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v10);
  (*(*(a2 - 8) + 32))(boxed_opaque_existential_0, a1, a2);
  sub_1BF38E49C(v10, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
  sub_1BF3901C0(0, &qword_1EDC962F8, 0x1E695DFB0);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);

    v6 = 0;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return v6;
  }

  if ((swift_dynamicCast() & 1) != 0 || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    v6 = v8;
    goto LABEL_9;
  }

  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_9ChronoKit8SQLValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1BF429DF4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BF429E3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1BF429E80(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1BF429EA8(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4;
      }
    }

    else if (!a6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      if (a6 == 3)
      {
        return sub_1BF408374(a1, a2, a4, a5);
      }
    }

    else if (a6 == 4 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6 != 2)
  {
    return 0;
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_1BF4E9734();
  }
}

uint64_t ActivityCacheManager.cacheKeyProvider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 8));

  return sub_1BF38E610(a1, v1 + 8);
}

uint64_t ActivityCacheManager.cacheURLProvider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 48));

  return sub_1BF38E610(a1, v1 + 48);
}

uint64_t ActivityCacheManager.protectionLevelProvider.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 88));

  return sub_1BF38E610(a1, v1 + 88);
}

uint64_t ActivityCacheManager.init(cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  sub_1BF38E610(a1, a6 + 8);
  sub_1BF38E610(a2, a6 + 48);
  result = sub_1BF38E610(a3, a6 + 88);
  *a6 = a4;
  *(a6 + 128) = a5 ^ 1;
  return result;
}

uint64_t ActivityCacheManager.protectionLevelForContent(from:)(void *a1)
{
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v3);
  return (*(v4 + 16))(*a1, v3, v4);
}

uint64_t ActivityCacheManager.content(key:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FE8, &unk_1BF4EFD80);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v11 - v7);
  sub_1BF42A350(a1, v3, (v11 - v7));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    return swift_willThrowTypedImpl();
  }

  else
  {
    v10 = sub_1BF4E86B4();
    return (*(*(v10 - 8) + 32))(a2, v8, v10);
  }
}

uint64_t sub_1BF42A350@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v60 = a3;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FE8, &unk_1BF4EFD80);
  MEMORY[0x1EEE9AC00](v59);
  v50 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v45 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v52 = (&v45 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9000, &qword_1BF4EFF48);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v45 - v11;
  v12 = sub_1BF4E8424();
  v47 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v48 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1BF4E7194();
  v56 = *(v14 - 8);
  v57 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9008, qword_1BF4EFF50);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v45 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v58 = &v45 - v29;
  ActivityCacheManager.url(for:)(a1, v18);
  v54 = a2;
  v55 = a1;
  v45 = v12;
  v46 = v10;
  v31 = a2[14];
  v30 = a2[15];
  __swift_project_boxed_opaque_existential_1(a2 + 11, v31);
  v32 = *a1;
  v33 = v48;
  (*(v30 + 16))(v32, v31, v30);
  v44 = *(v46 + 48);
  (*(v56 + 32))(v24, v18, v57);
  (*(v47 + 32))(&v24[v44], v33, v45);
  swift_storeEnumTagMultiPayload();
  sub_1BF405354(v24, v27, &qword_1EBDD9008, qword_1BF4EFF50);
  v34 = v58;
  sub_1BF405354(v27, v58, &qword_1EBDD9008, qword_1BF4EFF50);
  sub_1BF38C94C(v34, v21, &qword_1EBDD9008, qword_1BF4EFF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1BF38C9B4(v34, &qword_1EBDD9008, qword_1BF4EFF50);
    *v60 = *v21;
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v36 = v53;
    sub_1BF405354(v21, v53, &qword_1EBDD9000, &qword_1BF4EFF48);
    v37 = v54;
    if (v54[16])
    {
      sub_1BF3B36F0(v36, *v54);
    }

    (*(v56 + 16))(v49, v36, v57);
    v38 = v50;
    sub_1BF4E8694();
    v40 = v51;
    v39 = v52;
    swift_storeEnumTagMultiPayload();
    sub_1BF405354(v38, v40, &qword_1EBDD8FE8, &unk_1BF4EFD80);
    v41 = v55;
    sub_1BF405354(v40, v39, &qword_1EBDD8FE8, &unk_1BF4EFD80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v42 = *v39;
      v61 = v42;
      sub_1BF42C838(&v61, v37, v41, v60);
    }

    else
    {
      v43 = sub_1BF4E86B4();
      (*(*(v43 - 8) + 32))(v60, v39, v43);
    }

    swift_storeEnumTagMultiPayload();
    sub_1BF38C9B4(v36, &qword_1EBDD9000, &qword_1BF4EFF48);
    return sub_1BF38C9B4(v34, &qword_1EBDD9008, qword_1BF4EFF50);
  }
}

uint64_t ActivityCacheManager.content(for:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FE8, &unk_1BF4EFD80);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v17 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v17 - v13);
  sub_1BF42ABA8(a2, v17 - v13, type metadata accessor for ActivityKey);
  sub_1BF42ABA8(a1, v14 + *(v12 + 76), type metadata accessor for ActivityVariantKey);
  sub_1BF42A350(v14, v4, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17[1] = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    swift_willThrowTypedImpl();
    return sub_1BF38C9B4(v14, &qword_1EBDD87A8, &unk_1BF4EB2C0);
  }

  else
  {
    sub_1BF38C9B4(v14, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    v16 = sub_1BF4E86B4();
    return (*(*(v16 - 8) + 32))(a3, v10, v16);
  }
}

uint64_t sub_1BF42ABA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void **ActivityCacheManager.archiveFilePromise(for:from:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v69 = a2;
  v73 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v58 - v6;
  v8 = sub_1BF4E8424();
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FF0, &qword_1BF4EFD90);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v58 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FF8, &qword_1BF4EFD98);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v58 - v18);
  v20 = sub_1BF4E7194();
  MEMORY[0x1EEE9AC00](v20);
  MEMORY[0x1EEE9AC00](v21);
  if (*(v3 + 128) == 1)
  {
    v61 = v25;
    v62 = &v58 - v23;
    v63 = v24;
    v64 = v22;
    v60 = v7;
    sub_1BF42ABA8(v69, v19, type metadata accessor for ActivityKey);
    sub_1BF42ABA8(a1, v19 + *(v17 + 68), type metadata accessor for ActivityVariantKey);
    v27 = *(v3 + 32);
    v26 = *(v3 + 40);
    __swift_project_boxed_opaque_existential_1((v3 + 8), v27);
    (*(v26 + 24))(v19, v27, v26);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_1BF38C9B4(v12, &qword_1EBDD8FF0, &qword_1BF4EFD90);
      v28 = *v19;
      sub_1BF3F79D0();
      swift_allocError();
      *v29 = v28;
      swift_willThrow();
      v30 = v28;
      sub_1BF38C9B4(v19, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    }

    else
    {
      sub_1BF405354(v12, v16, &qword_1EBDD8FF8, &qword_1BF4EFD98);
      v32 = *(v3 + 72);
      v33 = *(v3 + 80);
      __swift_project_boxed_opaque_existential_1((v3 + 48), v32);
      v34 = v62;
      (*(v33 + 24))(v16, v32, v33);
      sub_1BF38C9B4(v16, &qword_1EBDD8FF8, &qword_1BF4EFD98);
      sub_1BF38C9B4(v19, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      v19 = *(v3 + 112);
      v35 = *(v3 + 120);
      __swift_project_boxed_opaque_existential_1((v3 + 88), v19);
      v36 = v68;
      v37 = v67;
      (*(v35 + 16))(*v69, v19, v35);
      if (v37)
      {
        (*(v63 + 8))(v34, v64);
      }

      else
      {
        v38 = *v3;
        v39 = v61;
        sub_1BF4E7134();
        v40 = sub_1BF4E7094();
        v41 = *(v63 + 8);
        v41(v39, v64);
        v69 = v38;
        *&v70 = 0;
        v42 = [v38 createDirectoryAtURL:v40 withIntermediateDirectories:1 attributes:0 error:&v70];

        v19 = v70;
        if (v42)
        {
          *&v70 = 0;
          *(&v70 + 1) = 0xE000000000000000;
          v43 = v19;
          sub_1BF4E92E4();

          *&v70 = 0x506E6F6973736573;
          *(&v70 + 1) = 0xEF2D72657474616CLL;
          sub_1BF42D700(&qword_1EDC9F100, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v44 = v64;
          v45 = sub_1BF4E96A4();
          MEMORY[0x1BFB58C90](v45);

          v59 = *(&v70 + 1);
          v67 = v70;
          v46 = *(v63 + 32);
          v46(v39, v34, v44);
          v47 = v36;
          v49 = v65;
          v48 = v66;
          v50 = v60;
          (*(v65 + 32))(v60, v47, v66);
          (*(v49 + 56))(v50, 0, 1, v48);
          v71 = sub_1BF3C82A8();
          v72 = &off_1F3DF3DC0;
          v51 = v69;
          *&v70 = v69;
          type metadata accessor for DataProtectedArchiveFilePromise(0);
          v19 = swift_allocObject();
          v52 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
          v53 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
          (*(*(v53 - 8) + 56))(v19 + v52, 1, 1, v53);
          *(v19 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise__needsCleanup) = 0;
          v54 = v59;
          v19[2] = v67;
          v19[3] = v54;
          v46(v19 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_destination, v39, v44);
          sub_1BF38E610(&v70, (v19 + 4));
          sub_1BF405354(v50, v19 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_protectionLevel, &qword_1EBDD8AF8, &qword_1BF4EC370);
          v55 = v51;
        }

        else
        {
          v56 = v70;
          sub_1BF4E6FF4();

          swift_willThrow();
          (*(v65 + 8))(v36, v66);
          v41(v34, v64);
        }
      }
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v31 = 1;
    swift_willThrow();
  }

  return v19;
}

id ActivityCacheManager.url(for:)@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FF0, &qword_1BF4EFD90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FF8, &qword_1BF4EFD98);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  v12 = v2[4];
  v11 = v2[5];
  __swift_project_boxed_opaque_existential_1(v2 + 1, v12);
  (*(v11 + 24))(a1, v12, v11);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BF38C9B4(v6, &qword_1EBDD8FF0, &qword_1BF4EFD90);
    v13 = *a1;
    sub_1BF3F79D0();
    swift_allocError();
    *v14 = v13;
    swift_willThrow();
    return v13;
  }

  else
  {
    sub_1BF405354(v6, v10, &qword_1EBDD8FF8, &qword_1BF4EFD98);
    v16 = v2[9];
    v17 = v2[10];
    __swift_project_boxed_opaque_existential_1(v2 + 6, v16);
    (*(v17 + 24))(v10, v16, v17);
    return sub_1BF38C9B4(v10, &qword_1EBDD8FF8, &qword_1BF4EFD98);
  }
}

uint64_t ActivityCacheManager.baseURL(for:)(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

id ActivityCacheManager.remove(for:)(void **a1, double a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1BF4E7194();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 128) == 1)
  {
    v10 = v7;
    result = ActivityCacheManager.url(for:)(a1, v9);
    if (!v3)
    {
      v12 = *v2;
      v13 = sub_1BF4E7094();
      v18[0] = 0;
      LOBYTE(v12) = [v12 removeItemAtURL:v13 error:v18];

      if (v12)
      {
        v14 = *(v6 + 8);
        v15 = v18[0];
        return v14(v9, v10);
      }

      else
      {
        v17 = v18[0];
        sub_1BF4E6FF4();

        swift_willThrow();
        return (*(v6 + 8))(v9, v10);
      }
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v16 = 1;
    return swift_willThrow();
  }

  return result;
}

id ActivityCacheManager.version(for:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F48, &qword_1BF4EFDA0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = sub_1BF4E7194();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = ActivityCacheManager.url(for:)(a1, v11);
  if (!v2)
  {
    v13 = v5;
    v14 = v17;
    sub_1BF42D6B0(&qword_1EBDD8F58, MEMORY[0x1E6993F88]);
    sub_1BF4E7034();
    sub_1BF4E7614();
    (*(v13 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    v15 = sub_1BF4E7394();
    return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  return result;
}

id ActivityCacheManager.markDataWithVersion(for:version:)(void **a1, uint64_t a2)
{
  v62 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F48, &qword_1BF4EFDA0);
  v60 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v48 - v5;
  v61 = sub_1BF4E7394();
  v6 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  v17 = sub_1BF4E7194();
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 128) == 1)
  {
    v56 = v19;
    v57 = v18;
    result = ActivityCacheManager.url(for:)(a1, v21);
    if (!v3)
    {
      if (qword_1EDC9EFD8 != -1)
      {
        swift_once();
      }

      v23 = sub_1BF4E7B54();
      __swift_project_value_buffer(v23, qword_1EDCA6A48);
      sub_1BF38C94C(a1, v16, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      v53 = v6;
      v24 = v61;
      v54 = *(v6 + 16);
      v55 = v6 + 16;
      v54(v10, v62, v61);
      v25 = sub_1BF4E7B34();
      v52 = sub_1BF4E8E84();
      if (os_log_type_enabled(v25, v52))
      {
        v26 = swift_slowAlloc();
        v49 = v26;
        v51 = swift_slowAlloc();
        v66 = v51;
        *v26 = 136446466;
        sub_1BF38C94C(v16, v13, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        v64 = 91;
        v65 = 0xE100000000000000;
        v27 = [*v13 description];
        v50 = v25;
        v28 = v27;
        v29 = sub_1BF4E8914();
        v31 = v30;

        MEMORY[0x1BFB58C90](v29, v31);

        MEMORY[0x1BFB58C90](58, 0xE100000000000000);
        v32 = type metadata accessor for ActivityKey(0);
        sub_1BF4E7454();
        sub_1BF42D700(&qword_1EDC9F098, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BF0]);
        v33 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v33);
        v24 = v61;

        MEMORY[0x1BFB58C90](58, 0xE100000000000000);
        MEMORY[0x1BFB58C90](*(v13 + *(v32 + 24)), *(v13 + *(v32 + 24) + 8));
        MEMORY[0x1BFB58C90](93, 0xE100000000000000);
        MEMORY[0x1BFB58C90](58, 0xE100000000000000);
        v34 = ActivityVariantKey.description.getter();
        MEMORY[0x1BFB58C90](v34);

        v35 = v64;
        v36 = v65;
        sub_1BF38C9B4(v13, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        sub_1BF38C9B4(v16, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        v37 = sub_1BF38D65C(v35, v36, &v66);

        v38 = v49;
        *(v49 + 1) = v37;
        *(v38 + 6) = 2082;
        sub_1BF42D700(&unk_1EBDD92C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v39 = sub_1BF4E96A4();
        v41 = v40;
        (*(v53 + 8))(v10, v24);
        v42 = sub_1BF38D65C(v39, v41, &v66);

        *(v38 + 14) = v42;
        v43 = v50;
        _os_log_impl(&dword_1BF389000, v50, v52, "%{public}s marking with version %{public}s", v38, 0x16u);
        v44 = v51;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v44, -1, -1);
        MEMORY[0x1BFB5A5D0](v38, -1, -1);
      }

      else
      {

        (*(v53 + 8))(v10, v24);
        sub_1BF38C9B4(v16, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      }

      v54(v58, v62, v24);
      v46 = MEMORY[0x1E69695A8];
      sub_1BF42D700(&qword_1EBDD8958, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
      sub_1BF42D700(&qword_1EDC9D5E0, v46, MEMORY[0x1E69695B0]);
      v47 = v59;
      sub_1BF4E7604();
      sub_1BF42D6B0(&qword_1EBDD8F50, MEMORY[0x1E6993F80]);
      sub_1BF4E7044();
      (*(v60 + 8))(v47, v63);
      return (*(v56 + 8))(v21, v57);
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v45 = 1;
    return swift_willThrow();
  }

  return result;
}

id ActivityCacheManager.ingestArchive(url:for:)(void *a1, void **a2, double a3)
{
  v62[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1BF4E7194();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - v17;
  if (*(v3 + 128) == 1)
  {
    v60 = a1;
    v61 = v18;
    result = ActivityCacheManager.url(for:)(a2, &v56 - v17);
    if (!v4)
    {
      sub_1BF4E7134();
      v21 = *v3;
      v22 = sub_1BF4E7094();
      v62[0] = 0;
      v23 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v62];

      v24 = v62[0];
      if (!v23)
      {
        goto LABEL_13;
      }

      v25 = v62[0];
      v26 = sub_1BF4E7094();
      v62[0] = 0;
      v27 = [v21 removeItemAtURL:v26 error:v62];

      if (v27)
      {
        v28 = v62[0];
      }

      else
      {
        v30 = v62[0];
        v31 = sub_1BF4E6FF4();

        swift_willThrow();
      }

      v32 = sub_1BF4E7094();
      v33 = sub_1BF4E7094();
      v62[0] = 0;
      v34 = [v21 moveItemAtURL:v32 toURL:v33 error:v62];

      v24 = v62[0];
      if (v34)
      {
        v35 = qword_1EDC9EFD8;
        v36 = v62[0];
        if (v35 != -1)
        {
          swift_once();
        }

        v37 = sub_1BF4E7B54();
        __swift_project_value_buffer(v37, qword_1EDCA6A48);
        v38 = *(v61 + 16);
        v38(v12, v60, v7);
        v38(v9, v19, v7);
        v39 = sub_1BF4E7B34();
        v40 = sub_1BF4E8E84();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v57 = v41;
          v60 = swift_slowAlloc();
          v62[0] = v60;
          *v41 = 136446466;
          v56 = sub_1BF42D700(&qword_1EDC9F100, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
          v59 = v39;
          v42 = sub_1BF4E96A4();
          v44 = v43;
          v58 = v40;
          v61 = *(v61 + 8);
          (v61)(v12, v7);
          v45 = sub_1BF38D65C(v42, v44, v62);

          v46 = v57;
          *(v57 + 1) = v45;
          *(v46 + 6) = 2082;
          v47 = sub_1BF4E96A4();
          v49 = v48;
          (v61)(v9, v7);
          v50 = sub_1BF38D65C(v47, v49, v62);

          *(v46 + 14) = v50;
          v51 = v59;
          _os_log_impl(&dword_1BF389000, v59, v58, "Ingested activity archive from %{public}s to %{public}s", v46, 0x16u);
          v52 = v60;
          swift_arrayDestroy();
          MEMORY[0x1BFB5A5D0](v52, -1, -1);
          MEMORY[0x1BFB5A5D0](v46, -1, -1);

          v53 = v61;
          (v61)(v15, v7);
        }

        else
        {

          v53 = *(v61 + 8);
          v53(v9, v7);
          v53(v12, v7);
          v53(v15, v7);
        }

        return (v53)(v19, v7);
      }

      else
      {
LABEL_13:
        v54 = v24;
        sub_1BF4E6FF4();

        swift_willThrow();
        v55 = *(v61 + 8);
        v55(v15, v7);
        return (v55)(v19, v7);
      }
    }
  }

  else
  {
    sub_1BF3F79D0();
    swift_allocError();
    *v29 = 1;
    return swift_willThrow();
  }

  return result;
}

id sub_1BF42C838@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v78 = a4;
  v81[1] = *MEMORY[0x1E69E9840];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  MEMORY[0x1EEE9AC00](v76);
  v8 = &v72[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v72[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v72[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BF0, &qword_1BF4ED508);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v72[-v15];
  v17 = sub_1BF4E6D64();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v72[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = *a1;
  if (*(a2 + 128) != 1)
  {
    goto LABEL_19;
  }

  v79 = v21;
  v22 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
  v23 = swift_dynamicCast();
  v24 = *(v18 + 56);
  if (v23)
  {
    v24(v16, 0, 1, v17);
    (*(v18 + 32))(v20, v16, v17);
    if (sub_1BF41B748())
    {
      if (qword_1EDC9D4C0 != -1)
      {
        swift_once();
      }

      v25 = sub_1BF4E7B54();
      __swift_project_value_buffer(v25, qword_1EDCA6940);
      sub_1BF38C94C(a3, v13, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      v26 = sub_1BF4E7B34();
      v27 = sub_1BF4E8E84();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v74 = v28;
        v75 = swift_slowAlloc();
        v81[0] = v75;
        *v28 = 136446210;
        v29 = v77;
        sub_1BF38C94C(v13, v77, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        v79 = 91;
        v80 = 0xE100000000000000;
        v30 = [*v29 description];
        v31 = sub_1BF4E8914();
        v73 = v27;
        v32 = v31;
        v34 = v33;

        MEMORY[0x1BFB58C90](v32, v34);

        MEMORY[0x1BFB58C90](58, 0xE100000000000000);
        v35 = type metadata accessor for ActivityKey(0);
        sub_1BF4E7454();
        sub_1BF42D700(&qword_1EDC9F098, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BF0]);
        v36 = sub_1BF4E96A4();
        MEMORY[0x1BFB58C90](v36);

        MEMORY[0x1BFB58C90](58, 0xE100000000000000);
        MEMORY[0x1BFB58C90](*(v29 + *(v35 + 24)), *(v29 + *(v35 + 24) + 8));
        MEMORY[0x1BFB58C90](93, 0xE100000000000000);
        MEMORY[0x1BFB58C90](58, 0xE100000000000000);
        v37 = ActivityVariantKey.description.getter();
        MEMORY[0x1BFB58C90](v37);

        v38 = v79;
        v39 = v80;
        sub_1BF38C9B4(v29, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        sub_1BF38C9B4(v13, &qword_1EBDD87A8, &unk_1BF4EB2C0);
        v40 = sub_1BF38D65C(v38, v39, v81);

        v41 = v74;
        *(v74 + 1) = v40;
        v42 = v41;
        _os_log_impl(&dword_1BF389000, v26, v73, "Not removing item for key %{public}s because of keybag", v41, 0xCu);
        v43 = v75;
        __swift_destroy_boxed_opaque_existential_1Tm(v75);
        MEMORY[0x1BFB5A5D0](v43, -1, -1);
        MEMORY[0x1BFB5A5D0](v42, -1, -1);
      }

      else
      {

        sub_1BF38C9B4(v13, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      }

      (*(v18 + 8))(v20, v17);
      goto LABEL_19;
    }

    (*(v18 + 8))(v20, v17);
  }

  else
  {
    v24(v16, 1, 1, v17);
    sub_1BF38C9B4(v16, &qword_1EBDD8BF0, &qword_1BF4ED508);
  }

  v44 = *a2;
  v45 = sub_1BF4E7094();
  v79 = 0;
  v46 = [v44 removeItemAtURL:v45 error:&v79];

  if (v46)
  {
    v47 = qword_1EDC9EFD8;
    v48 = v79;
    if (v47 != -1)
    {
      swift_once();
    }

    v49 = sub_1BF4E7B54();
    __swift_project_value_buffer(v49, qword_1EDCA6A48);
    sub_1BF38C94C(a3, v8, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    v50 = v21;
    v51 = sub_1BF4E7B34();
    v52 = sub_1BF4E8E84();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v81[0] = v75;
      *v53 = 136446466;
      v55 = v77;
      sub_1BF38C94C(v8, v77, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      v79 = 91;
      v80 = 0xE100000000000000;
      v56 = [*v55 description];
      v57 = sub_1BF4E8914();
      v59 = v58;

      MEMORY[0x1BFB58C90](v57, v59);

      MEMORY[0x1BFB58C90](58, 0xE100000000000000);
      v60 = type metadata accessor for ActivityKey(0);
      sub_1BF4E7454();
      sub_1BF42D700(&qword_1EDC9F098, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BF0]);
      v61 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v61);

      MEMORY[0x1BFB58C90](58, 0xE100000000000000);
      MEMORY[0x1BFB58C90](*(v55 + *(v60 + 24)), *(v55 + *(v60 + 24) + 8));
      MEMORY[0x1BFB58C90](93, 0xE100000000000000);
      MEMORY[0x1BFB58C90](58, 0xE100000000000000);
      v62 = ActivityVariantKey.description.getter();
      MEMORY[0x1BFB58C90](v62);

      v63 = v79;
      v64 = v80;
      sub_1BF38C9B4(v55, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      sub_1BF38C9B4(v8, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      v65 = sub_1BF38D65C(v63, v64, v81);

      *(v53 + 4) = v65;
      *(v53 + 12) = 2114;
      v66 = v21;
      v67 = _swift_stdlib_bridgeErrorToNSError();
      *(v53 + 14) = v67;
      *v54 = v67;
      _os_log_impl(&dword_1BF389000, v51, v52, "Removing item for key %{public}s because  %{public}@", v53, 0x16u);
      sub_1BF38C9B4(v54, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v54, -1, -1);
      v68 = v75;
      __swift_destroy_boxed_opaque_existential_1Tm(v75);
      MEMORY[0x1BFB5A5D0](v68, -1, -1);
      MEMORY[0x1BFB5A5D0](v53, -1, -1);
    }

    else
    {

      sub_1BF38C9B4(v8, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    }
  }

  else
  {
    v69 = v79;
    v70 = sub_1BF4E6FF4();

    swift_willThrow();
  }

LABEL_19:
  *v78 = v21;
  return v21;
}

uint64_t sub_1BF42D1E0(uint64_t a1)
{
  v3 = v1[4];
  v4 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_1BF42D24C(void *a1)
{
  v3 = v1[14];
  v4 = v1[15];
  __swift_project_boxed_opaque_existential_1(v1 + 11, v3);
  return (*(v4 + 16))(*a1, v3, v4);
}

uint64_t sub_1BF42D2D8@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FE8, &unk_1BF4EFD80);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v11 - v7);
  sub_1BF42A350(a1, v3, (v11 - v7));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11[1] = *v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
    return swift_willThrowTypedImpl();
  }

  else
  {
    v10 = sub_1BF4E86B4();
    return (*(*(v10 - 8) + 32))(a2, v8, v10);
  }
}

id sub_1BF42D450@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F48, &qword_1BF4EFDA0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = sub_1BF4E7194();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = ActivityCacheManager.url(for:)(a1, v11);
  if (!v2)
  {
    v13 = v5;
    v14 = v17;
    sub_1BF42D6B0(&qword_1EBDD8F58, MEMORY[0x1E6993F88]);
    sub_1BF4E7034();
    sub_1BF4E7614();
    (*(v13 + 8))(v7, v4);
    (*(v9 + 8))(v11, v8);
    v15 = sub_1BF4E7394();
    return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  }

  return result;
}

uint64_t sub_1BF42D6B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8F48, &qword_1BF4EFDA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF42D700(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of ActivityCacheKeyProviding.baseURL(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 8))(a1, a2);
}

{
  return (*(a3 + 16))(a1, a2);
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1BF42D970(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_1BF42D9B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BF42DA54()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__sourceEnvironmentProvider));

  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor);
}

uint64_t sub_1BF42DAC8()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__cancellable))
  {

    sub_1BF4E7BD4();
  }

  v2 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  v3 = sub_1BF4E7F64();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__sourceEnvironmentProvider));

  return v1;
}

uint64_t sub_1BF42DBB4()
{
  sub_1BF42DAC8();

  return swift_deallocClassInstance();
}

double sub_1BF42DC14(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor;
  v6 = *(v1 + OBJC_IVAR____TtC9ChronoKit41DescriptorMixedEnvironmentProviderAdapter__lock_descriptor);
  if (v6)
  {
    if (!a1)
    {
LABEL_7:
      *(v1 + v5) = a1;
      v10 = a1;

      os_unfair_lock_unlock(*(v3 + 16));

      sub_1BF39FDFC();
      return result;
    }

    sub_1BF42DD34();
    v7 = v6;
    v8 = a1;
    v9 = sub_1BF4E90A4();

    if ((v9 & 1) == 0)
    {
      v6 = *(v1 + v5);
      goto LABEL_7;
    }
  }

  else if (a1)
  {
    v6 = 0;
    goto LABEL_7;
  }

  os_unfair_lock_unlock(*(v3 + 16));

  return result;
}

unint64_t sub_1BF42DD34()
{
  result = qword_1EDC9D720;
  if (!qword_1EDC9D720)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9D720);
  }

  return result;
}

uint64_t sub_1BF42DF4C(uint64_t result, char a2)
{
  v3 = v2 + *(*v2 + 176);
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1BF42DF74()
{
  sub_1BF4E92E4();

  strcpy(v4, "identifier: ");
  v0 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v0);

  MEMORY[0x1BFB58C90](0x69746566696C203BLL, 0xEC000000203A656DLL);
  sub_1BF42E3DC();
  v1 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FAFA0);
  v2 = ReloadConfiguration.description.getter();
  MEMORY[0x1BFB58C90](v2);

  return v4[0];
}

uint64_t sub_1BF42E0F4()
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 91;
  v22 = 0xE100000000000000;
  v20 = *(v0 + *(*v0 + 160));
  v8 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  v9 = v0 + *(*v0 + 168);
  v20 = *(v9 + *(type metadata accessor for ReloadConfiguration(0) + 24));
  v10 = ReloadConfiguration.ReloadReason.description.getter();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  sub_1BF42E4D4(v9, v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    v11 = 0xE900000000000065;
    v12 = 0x74616964656D6D69;
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    if (qword_1EDC9F0F0 != -1)
    {
      swift_once();
    }

    v13 = qword_1EDC9F0F8;
    v14 = sub_1BF4E7254();
    v15 = [v13 stringFromDate_];

    v16 = sub_1BF4E8914();
    v11 = v17;

    (*(v2 + 8))(v4, v1);
    v12 = v16;
  }

  MEMORY[0x1BFB58C90](v12, v11);

  MEMORY[0x1BFB58C90](93, 0xE100000000000000);
  return v21;
}

uint64_t sub_1BF42E3DC()
{
  v1 = v0;
  v2 = sub_1BF4E80A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E8084();
  v6 = sub_1BF4E8074();
  (*(v3 + 8))(v5, v2);
  v7 = *(v1 + *(*v1 + 184));
  result = v6 - v7;
  if (v6 < v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF42E4D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReloadConfiguration.ReloadType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF42E538(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 208));
  *v3 = a1;
  v3[1] = a2;
}

double sub_1BF42E560(uint64_t a1)
{
  *(v1 + *(*v1 + 216)) = a1;

  return result;
}

uint64_t static ReloadTask.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1BF4E88C4() & 1) == 0 || (sub_1BF4E8D54() & 1) == 0 || *(a1 + *(*a1 + 160)) != *(a2 + *(*a2 + 160)))
  {
    return 0;
  }

  v4 = a1 + *(*a1 + 168);
  v5 = a2 + *(*a2 + 168);

  return _s9ChronoKit19ReloadConfigurationV2eeoiySbAC_ACtFZ_0(v4, v5);
}

uint64_t sub_1BF42E754(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ReloadConfiguration(319);
    if (v3 <= 0x3F)
    {
      result = sub_1BF4E7B54();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_1BF42E928()
{
  result = qword_1EDC962E8;
  if (!qword_1EDC962E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC962E8);
  }

  return result;
}

uint64_t Budget.Level.hashValue.getter(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  MEMORY[0x1BFB59A70](v2);
  return sub_1BF4E9844();
}

uint64_t Budget.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF4E7334();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Budget.level.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Budget(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t Budget.level.setter(char *a1)
{
  v2 = *a1;
  *(v1 + *(type metadata accessor for Budget(0) + 24)) = v2;

  return sub_1BF42EB2C();
}

uint64_t sub_1BF42EB2C()
{
  v1 = v0;
  v2 = sub_1BF4E7334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Budget(0);
  v8 = v6;
  v9 = *(v0 + *(v6 + 32));
  if (v9 && *(v9 + 16) && (v10 = sub_1BF3EC380(*(v1 + *(v6 + 24)), v7), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v12 = 40;
    if (*(v1 + *(v8 + 24)))
    {
      v12 = 10;
    }
  }

  *(v1 + *(v8 + 20)) = v12;
  sub_1BF4E7214();
  return (*(v3 + 40))(v1, v5, v2);
}

uint64_t Budget.maximumBudgetPerWindow.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Budget(0);
  v4 = v2;
  v5 = *(v0 + *(v2 + 32));
  if (v5)
  {
    if (*(v5 + 16))
    {
      v6 = sub_1BF3EC380(*(v1 + *(v2 + 24)), v3);
      if (v7)
      {
        return *(*(v5 + 56) + 8 * v6);
      }
    }
  }

  if (*(v1 + *(v4 + 24)))
  {
    return 10;
  }

  return 40;
}

void (*Budget.level.modify(void *a1))(void **a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
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
  v6 = sub_1BF4E7334();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[3] = v8;
  v9 = type metadata accessor for Budget(0);
  v5[4] = v9;
  *(v5 + 10) = *(v9 + 24);
  return sub_1BF42EDBC;
}

void sub_1BF42EDBC(void **a1, char a2, double a3)
{
  v3 = *a1;
  if (a2)
  {
    v4 = *(v3 + 3);
    goto LABEL_11;
  }

  v5 = *v3;
  v6 = *(*v3 + *(*(v3 + 4) + 32));
  if (!v6 || !*(v6 + 16))
  {
    goto LABEL_8;
  }

  v7 = sub_1BF3EC380(*(v5 + v3[10]), a3);
  if ((v8 & 1) == 0)
  {
    v5 = *v3;
LABEL_8:
    v9 = 40;
    if (*(v5 + v3[10]))
    {
      v9 = 10;
    }

    goto LABEL_10;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  v5 = *v3;
LABEL_10:
  v4 = *(v3 + 3);
  v10 = *(v3 + 1);
  v11 = *(v3 + 2);
  *(v5 + *(*(v3 + 4) + 20)) = v9;
  sub_1BF4E7214();
  (*(v11 + 40))(v5, v4, v10);
LABEL_11:
  free(v4);

  free(v3);
}

uint64_t Budget.isExhausted.getter()
{
  v1 = sub_1BF4E7334();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Budget(0);
  if (*(v0 + v11[5]) >= 1)
  {
    (*(v2 + 56))(v10, 1, 1, v1);
LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  v13 = *(v0 + v11[7]);
  if (v13 && *(v13 + 16))
  {
    sub_1BF3EC380(*(v0 + v11[6]), v12);
  }

  sub_1BF4E7284();
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  v14 = sub_1BF4E7264();
  v15 = *(v2 + 8);
  v15(v4, v1);
  if (v14)
  {
    (*(v2 + 32))(v10, v7, v1);
    v16 = 0;
  }

  else
  {
    v15(v7, v1);
    v16 = 1;
  }

  v17 = 1;
  (*(v2 + 56))(v10, v16, 1, v1);
  if ((*(v2 + 48))(v10, 1, v1) == 1)
  {
    goto LABEL_10;
  }

LABEL_11:
  sub_1BF42FF8C(v10);
  return v17;
}

uint64_t Budget.nextResetDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF4E7334();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for Budget(0);
  if (*(v1 + v9[5]) <= 0)
  {
    v13 = *(v1 + v9[7]);
    if (v13 && *(v13 + 16))
    {
      sub_1BF3EC380(*(v1 + v9[6]), v10);
    }

    sub_1BF4E7284();
    _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
    v14 = sub_1BF4E7264();
    v15 = *(v17 + 8);
    v15(v5, v3);
    if (v14)
    {
      (*(v17 + 32))(a1, v8, v3);
      return (*(v17 + 56))(a1, 0, 1, v3);
    }

    else
    {
      v15(v8, v3);
      return (*(v17 + 56))(a1, 1, 1, v3);
    }
  }

  else
  {
    v11 = *(v17 + 56);

    return v11(a1, 1, 1, v3);
  }
}

int *Budget.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1BF4E7214();
  result = type metadata accessor for Budget(0);
  v4 = result[5];
  *(a2 + v4) = 0;
  v5 = result[6];
  *(a2 + v5) = 1;
  *(a2 + result[7]) = 0;
  *(a2 + result[8]) = 0;
  v6 = *(a2 + v5) == 0;
  v7 = 40;
  if (!v6)
  {
    v7 = 10;
  }

  *(a2 + v4) = v7;
  return result;
}

int *Budget.init(level:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_1BF4E7214();
  result = type metadata accessor for Budget(0);
  v5 = result[5];
  *(a2 + v5) = 0;
  v6 = result[6];
  *(a2 + v6) = v3;
  *(a2 + result[7]) = 0;
  *(a2 + result[8]) = 0;
  v7 = *(a2 + v6) == 0;
  v8 = 40;
  if (!v7)
  {
    v8 = 10;
  }

  *(a2 + v5) = v8;
  return result;
}

uint64_t Budget.init(startDate:remainingBudget:level:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  sub_1BF4E7214();
  v8 = type metadata accessor for Budget(0);
  v9 = v8[5];
  v10 = sub_1BF4E7334();
  result = (*(*(v10 - 8) + 40))(a4, a1, v10);
  *(a4 + v9) = a2;
  *(a4 + v8[6]) = v7;
  *(a4 + v8[7]) = 0;
  *(a4 + v8[8]) = 0;
  return result;
}

uint64_t Budget.init(startDate:remainingBudget:windowDuration:level:maximumBudgetPerWindow:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a4;
  sub_1BF4E7214();
  v12 = type metadata accessor for Budget(0);
  v13 = v12[5];
  v14 = sub_1BF4E7334();
  result = (*(*(v14 - 8) + 40))(a6, a1, v14);
  *(a6 + v13) = a2;
  *(a6 + v12[7]) = a3;
  *(a6 + v12[8]) = a5;
  *(a6 + v12[6]) = v11;
  return result;
}

Swift::Void __swiftcall Budget.reduceBudget()()
{
  Budget.resetIfNecessary()();
  v1 = *(type metadata accessor for Budget(0) + 20);
  v2 = *(v0 + v1);
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + v1) = v4;
  }
}

Swift::Void __swiftcall Budget.resetIfNecessary()()
{
  v1 = v0;
  v2 = sub_1BF4E7334();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  _s9ChronoKit24WidgetDiagnosticTriggersV19errorStateTriggered11timelineKey13succinctTitle0K11Description04fullM011timeOfIssue15remoteDeviceIDsyAA08TimelineJ0V_S3S10Foundation4DateVSaySSGSgtFfA3__0();
  if (sub_1BF4E7264())
  {
    sub_1BF4E7214();
    (*(v3 + 40))(v1, v8, v2);
  }

  v12 = type metadata accessor for Budget(0);
  v14 = v12;
  v15 = *(v1 + *(v12 + 28));
  if (v15 && *(v15 + 16))
  {
    sub_1BF3EC380(*(v1 + *(v12 + 24)), v13);
  }

  sub_1BF4E7284();
  v16 = sub_1BF4E7274();
  v17 = *(v3 + 8);
  v17(v5, v2);
  if (v16)
  {
    (*(v3 + 24))(v1, v11, v2);
    v19 = *(v1 + v14[8]);
    if (v19 && *(v19 + 16) && (v20 = sub_1BF3EC380(*(v1 + v14[6]), v18), (v21 & 1) != 0))
    {
      v22 = *(*(v19 + 56) + 8 * v20);
    }

    else if (*(v1 + v14[6]))
    {
      v22 = 10;
    }

    else
    {
      v22 = 40;
    }

    v17(v11, v2);
    *(v1 + v14[5]) = v22;
  }

  else
  {
    v17(v11, v2);
  }
}

uint64_t Budget.hash(into:)(uint64_t a1)
{
  sub_1BF4E7334();
  sub_1BF430094(&qword_1EDC9F0D0, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1BF4E8884();
  v3 = type metadata accessor for Budget(0);
  MEMORY[0x1BFB59A70](*(v1 + v3[5]));
  MEMORY[0x1BFB59A70](*(v1 + v3[6]));
  v4 = *(v1 + v3[7]);
  sub_1BF4E9824();
  if (v4)
  {
    sub_1BF42FD54(a1, v4);
  }

  v5 = *(v1 + v3[8]);
  if (!v5)
  {
    return sub_1BF4E9824();
  }

  sub_1BF4E9824();

  return sub_1BF42FC34(a1, v5);
}

uint64_t Budget.hashValue.getter(double a1)
{
  sub_1BF4E9804();
  Budget.hash(into:)(v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF42F9A4(double a1)
{
  sub_1BF4E9804();
  Budget.hash(into:)(v2);
  return sub_1BF4E9844();
}

uint64_t sub_1BF42F9E8(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  Budget.hash(into:)(v3);
  return sub_1BF4E9844();
}

unint64_t sub_1BF42FA24(unint64_t result, uint64_t a2, double a3)
{
  if (result == a2)
  {
    return 1;
  }

  v4 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v5 << 6);
    v14 = *(*(v4 + 56) + 8 * v13);
    result = sub_1BF3EC380(*(*(v4 + 48) + v13), a3);
    if (v15)
    {
      a3 = *(*(a2 + 56) + 8 * result);
      if (a3 == v14)
      {
        continue;
      }
    }

    return 0;
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(v4 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF42FB2C(unint64_t result, uint64_t a2, double a3)
{
  if (result == a2)
  {
    return 1;
  }

  v4 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_13:
    v13 = v10 | (v5 << 6);
    v14 = *(*(v4 + 56) + 8 * v13);
    result = sub_1BF3EC380(*(*(v4 + 48) + v13), a3);
    if ((v15 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v14)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(v4 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF42FC34(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  for (i = (v6 + 63) >> 6; v8; v3 ^= result)
  {
    v10 = v4;
LABEL_9:
    v11 = __clz(__rbit64(v8)) | (v10 << 6);
    v12 = *(*(a2 + 56) + 8 * v11);
    v8 &= v8 - 1;
    MEMORY[0x1BFB59A70](*(*(a2 + 48) + v11));
    MEMORY[0x1BFB59A70](v12);
    result = sub_1BF4E9844();
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1BFB59A70](v3);
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF42FD54(uint64_t result, uint64_t a2)
{
  v3 = 0;
  v4 = 0;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  for (i = (v6 + 63) >> 6; v8; v3 ^= result)
  {
    v10 = v4;
LABEL_9:
    v11 = __clz(__rbit64(v8)) | (v10 << 6);
    v12 = *(*(a2 + 56) + 8 * v11);
    v8 &= v8 - 1;
    MEMORY[0x1BFB59A70](*(*(a2 + 48) + v11));
    if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x1BFB59A90](v13);
    result = sub_1BF4E9844();
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x1BFB59A70](v3);
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

BOOL _s9ChronoKit6BudgetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1BF4E72D4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for Budget(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v7 = v4[7];
  v8 = *(a2 + v7);
  if (*(a1 + v7))
  {
    if (!v8)
    {
      return 0;
    }

    v9 = v4;
    v10 = sub_1BF42FA24(*(a1 + v7), v8, v5);
    v4 = v9;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v11 = v4[8];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12)
  {
    return v13 && (sub_1BF42FB2C(v12, v13, v5) & 1) != 0;
  }

  return !v13;
}

uint64_t type metadata accessor for Budget(uint64_t a1)
{
  result = qword_1EDC96670;
  if (!qword_1EDC96670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF42FF8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BF42FFF8()
{
  result = qword_1EDC96680;
  if (!qword_1EDC96680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC96680);
  }

  return result;
}

uint64_t sub_1BF430094(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BF430104(uint64_t a1)
{
  sub_1BF4E7334();
  if (v1 <= 0x3F)
  {
    sub_1BF4301E8(319, &qword_1EDC96430, &qword_1EBDD9020, &qword_1BF4F0328);
    if (v2 <= 0x3F)
    {
      sub_1BF4301E8(319, &qword_1EDC96428, &qword_1EBDD9028, &qword_1BF4F0330);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1BF4301E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1BF4E90F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t ActivityVariantKey.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BF4E8674();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActivityVariantKey.metrics.setter(uint64_t a1)
{
  v3 = sub_1BF4E8674();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ActivityVariantKey.family.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityVariantKey(0) + 20);
  v4 = sub_1BF4E8364();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for ActivityVariantKey(uint64_t a1)
{
  result = qword_1EDC9E550;
  if (!qword_1EDC9E550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityVariantKey.family.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityVariantKey(0) + 20);
  v4 = sub_1BF4E8364();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActivityVariantKey.hostIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityVariantKey(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ActivityVariantKey.hostIdentity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ActivityVariantKey(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ActivityVariantKey.init(metrics:family:hostIdentity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BF4E8674();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for ActivityVariantKey(0);
  v10 = *(v9 + 20);
  v11 = sub_1BF4E8364();
  (*(*(v11 - 8) + 32))(a4 + v10, a2, v11);
  v12 = *(v9 + 24);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v14 = *(*(v13 - 8) + 32);

  return v14(a4 + v12, a3, v13);
}

uint64_t ActivityVariantKey.filePathComponent.getter()
{
  v4 = sub_1BF4E8664();

  MEMORY[0x1BFB58C90](46, 0xE100000000000000);

  type metadata accessor for ActivityVariantKey(0);
  v0 = sub_1BF4E8354();
  v2 = v1;

  MEMORY[0x1BFB58C90](v0, v2);

  return v4;
}

uint64_t ActivityVariantKey.description.getter()
{
  v5 = sub_1BF4E8664();
  v6 = v0;

  MEMORY[0x1BFB58C90](46, 0xE100000000000000);

  type metadata accessor for ActivityVariantKey(0);
  v1 = sub_1BF4E8354();
  v3 = v2;

  MEMORY[0x1BFB58C90](v1, v3);

  MEMORY[0x1BFB58C90](v5, v6);

  MEMORY[0x1BFB58C90](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_1BF43097C()
{
  v1 = 0x796C696D6166;
  if (*v0 != 1)
  {
    v1 = 0x6E65644974736F68;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7363697274656DLL;
  }
}

uint64_t sub_1BF4309DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1BF431E08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1BF430A04(uint64_t a1)
{
  v2 = sub_1BF431AD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF430A40(uint64_t a1)
{
  v2 = sub_1BF431AD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityVariantKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9030, &qword_1BF4F03E8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF431AD0();
  sub_1BF4E9864();
  v11 = 0;
  sub_1BF4E8674();
  sub_1BF431F20(&qword_1EDC96448, MEMORY[0x1E6985AA8], MEMORY[0x1E6985AB0]);
  sub_1BF4E9674();
  if (!v1)
  {
    type metadata accessor for ActivityVariantKey(0);
    v10 = 1;
    sub_1BF4E8364();
    sub_1BF431F20(&qword_1EDC96478, MEMORY[0x1E69858D8], MEMORY[0x1E69858E0]);
    sub_1BF4E9674();
    v9 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
    sub_1BF38C8B4(&unk_1EDC9D558, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994138]);
    sub_1BF4E9674();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ActivityVariantKey.hash(into:)(uint64_t a1)
{
  sub_1BF4E8674();
  sub_1BF431F20(&unk_1EDC9D760, MEMORY[0x1E6985AA8], MEMORY[0x1E6985AB8]);
  sub_1BF4E8884();
  type metadata accessor for ActivityVariantKey(0);
  sub_1BF4E8364();
  sub_1BF431F20(&qword_1EDC9D798, MEMORY[0x1E69858D8], MEMORY[0x1E69858E8]);
  sub_1BF4E8884();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994140]);
  return sub_1BF4E8884();
}

uint64_t ActivityVariantKey.hashValue.getter(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E8674();
  sub_1BF431F20(&unk_1EDC9D760, MEMORY[0x1E6985AA8], MEMORY[0x1E6985AB8]);
  sub_1BF4E8884();
  type metadata accessor for ActivityVariantKey(0);
  sub_1BF4E8364();
  sub_1BF431F20(&qword_1EDC9D798, MEMORY[0x1E69858D8], MEMORY[0x1E69858E8]);
  sub_1BF4E8884();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994140]);
  sub_1BF4E8884();
  return sub_1BF4E9844();
}

uint64_t ActivityVariantKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v30 = &v25 - v3;
  v4 = sub_1BF4E8364();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E8674();
  v31 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9038, &qword_1BF4F03F0);
  v32 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v10 = &v25 - v9;
  v11 = type metadata accessor for ActivityVariantKey(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF431AD0();
  v36 = v10;
  v14 = v38;
  sub_1BF4E9854();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v26 = v11;
  v38 = v13;
  v15 = a1;
  v17 = v32;
  v16 = v33;
  v18 = v34;
  v41 = 0;
  sub_1BF431F20(&qword_1EDC96440, MEMORY[0x1E6985AA8], MEMORY[0x1E6985AC0]);
  v19 = v35;
  sub_1BF4E95B4();
  v20 = *(v31 + 32);
  v35 = v7;
  v20(v38, v19, v7);
  v40 = 1;
  sub_1BF431F20(&qword_1EDC96470, MEMORY[0x1E69858D8], MEMORY[0x1E6985900]);
  v21 = v6;
  sub_1BF4E95B4();
  v22 = v38;
  (*(v16 + 32))(&v38[*(v26 + 20)], v21, v18);
  v39 = 2;
  sub_1BF38C8B4(&qword_1EDC9D548, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994158]);
  v23 = v29;
  sub_1BF4E95B4();
  (*(v17 + 8))(v36, v37);
  (*(v27 + 32))(v22 + *(v26 + 24), v30, v23);
  sub_1BF431B24(v22, v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  return sub_1BF431B88(v22);
}

uint64_t sub_1BF43150C(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E8674();
  sub_1BF431F20(&unk_1EDC9D760, MEMORY[0x1E6985AA8], MEMORY[0x1E6985AB8]);
  sub_1BF4E8884();
  sub_1BF4E8364();
  sub_1BF431F20(&qword_1EDC9D798, MEMORY[0x1E69858D8], MEMORY[0x1E69858E8]);
  sub_1BF4E8884();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994140]);
  sub_1BF4E8884();
  return sub_1BF4E9844();
}

uint64_t sub_1BF431664(uint64_t a1)
{
  sub_1BF4E8674();
  sub_1BF431F20(&unk_1EDC9D760, MEMORY[0x1E6985AA8], MEMORY[0x1E6985AB8]);
  sub_1BF4E8884();
  sub_1BF4E8364();
  sub_1BF431F20(&qword_1EDC9D798, MEMORY[0x1E69858D8], MEMORY[0x1E69858E8]);
  sub_1BF4E8884();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994140]);
  return sub_1BF4E8884();
}

uint64_t sub_1BF4317A4(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E8674();
  sub_1BF431F20(&unk_1EDC9D760, MEMORY[0x1E6985AA8], MEMORY[0x1E6985AB8]);
  sub_1BF4E8884();
  sub_1BF4E8364();
  sub_1BF431F20(&qword_1EDC9D798, MEMORY[0x1E69858D8], MEMORY[0x1E69858E8]);
  sub_1BF4E8884();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994140]);
  sub_1BF4E8884();
  return sub_1BF4E9844();
}

uint64_t _s9ChronoKit18ActivityVariantKeyV2eeoiySbAC_ACtFZ_0()
{
  if ((MEMORY[0x1BFB588A0]() & 1) != 0 && (type metadata accessor for ActivityVariantKey(0), sub_1BF4E8364(), sub_1BF431F20(&qword_1EDC9D790, MEMORY[0x1E69858D8], MEMORY[0x1E69858F8]), sub_1BF4E8B54(), sub_1BF4E8B54(), v4 == v2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
    sub_1BF38C8B4(&unk_1EDC9F008, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994150]);
    sub_1BF4E8B54();
    sub_1BF4E8B54();
    if (v5 == v3)
    {
      v0 = 1;
    }

    else
    {
      v0 = sub_1BF4E9734();
    }
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

unint64_t sub_1BF431AD0()
{
  result = qword_1EDC9E588[0];
  if (!qword_1EDC9E588[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC9E588);
  }

  return result;
}

uint64_t sub_1BF431B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityVariantKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF431B88(uint64_t a1)
{
  v2 = type metadata accessor for ActivityVariantKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1BF431C54(uint64_t a1)
{
  sub_1BF4E8674();
  if (v1 <= 0x3F)
  {
    sub_1BF4E8364();
    if (v2 <= 0x3F)
    {
      sub_1BF3D9314(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BF431D04()
{
  result = qword_1EBDD9040;
  if (!qword_1EBDD9040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9040);
  }

  return result;
}

unint64_t sub_1BF431D5C()
{
  result = qword_1EDC9E578;
  if (!qword_1EDC9E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9E578);
  }

  return result;
}

unint64_t sub_1BF431DB4()
{
  result = qword_1EDC9E580;
  if (!qword_1EDC9E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9E580);
  }

  return result;
}

uint64_t sub_1BF431E08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7363697274656DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1BF4E9734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x796C696D6166 && a2 == 0xE600000000000000 || (sub_1BF4E9734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65644974736F68 && a2 == 0xEC00000079746974)
  {

    return 2;
  }

  else
  {
    v6 = sub_1BF4E9734();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1BF431F20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1BF431F90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A68, &qword_1BF4EC038);
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

void *sub_1BF43209C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90E0, &qword_1BF4F06B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90E8, &qword_1BF4F06C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BF4321E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90A0, &qword_1BF4F0680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BF4322F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9048, &qword_1BF4F6DC0);
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

char *sub_1BF43241C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90D8, &qword_1BF4F06B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BF432528(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A90, &qword_1BF4EC060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A98, &qword_1BF4EC068);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BF432694(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90B0, &qword_1BF4F0688);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1BF432788(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD90F0, qword_1BF4F06C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BF432900(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1BF432A34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9078, &qword_1BF4F0660);
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

char *sub_1BF432C1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A40, &qword_1BF4EC018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BF432D54(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A58, &qword_1BF4EC028);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0) - 8);
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
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0) - 8);
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

uint64_t sub_1BF432F44(uint64_t a1)
{
  result = MEMORY[0x1BFB58FA0](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v15 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1BF4ACBA8(v14, v11, v12, v13);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v15;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

char *sub_1BF433060(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1BF4E9204();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x1E69E7CC0];
  result = sub_1BF3E14FC(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x1BFB59570](i, a1);
        sub_1BF3901C0(0, &qword_1EDC96340, 0x1E6966CB0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_1BF3E14FC((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_1BF38EB2C(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_1BF3901C0(0, &qword_1EDC96340, 0x1E6966CB0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1BF3E14FC((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_1BF38EB2C(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF43326C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for WidgetExtension(0);
  swift_allocObject();
  result = sub_1BF4B42C0(a1);
  if (!v2)
  {
    v7 = result;
    a2[3] = v5;
    result = sub_1BF43A1BC(&qword_1EDC9AD68, type metadata accessor for WidgetExtension, &unk_1BF4F62E8);
    a2[4] = result;
    *a2 = v7;
  }

  return result;
}

unint64_t sub_1BF4333A8()
{
  v1 = objc_opt_self();
  sub_1BF4E8104();
  sub_1BF3901C0(0, &unk_1EDC962D8, 0x1E6966CE0);
  v2 = sub_1BF4E8B84();

  v3 = [v1 executeQueries_];

  sub_1BF3901C0(0, &qword_1EDC96340, 0x1E6966CB0);
  v4 = sub_1BF4E8BA4();

  v5 = sub_1BF433060(v4);
  sub_1BF43351C(v5);

  sub_1BF4E8104();
  v6 = objc_allocWithZone(MEMORY[0x1E6966CF8]);
  v7 = sub_1BF4E8B84();

  v8 = [v6 initWithQueries_];

  v9 = OBJC_IVAR____SystemEXExtensionIdentityDiscoverer_queryController;
  v10 = *(v0 + OBJC_IVAR____SystemEXExtensionIdentityDiscoverer_queryController);
  *(v0 + OBJC_IVAR____SystemEXExtensionIdentityDiscoverer_queryController) = v8;
  v11 = v8;

  if (v11)
  {
    [v11 setDelegate_];
  }

  [*(v0 + v9) resume];
  return v4;
}

double sub_1BF43351C(uint64_t a1)
{
  if (a1 && sub_1BF4C41BC(a1))
  {
    if (qword_1EDC9D500 != -1)
    {
      swift_once();
    }

    v2 = sub_1BF4E7B54();
    __swift_project_value_buffer(v2, qword_1EDCA69A0);
    v3 = sub_1BF4E7B34();
    v4 = sub_1BF4E8E84();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1BF389000, v3, v4, "Received new extension list.", v5, 2u);
      MEMORY[0x1BFB5A5D0](v5, -1, -1);
    }

    sub_1BF4E7C14();
  }

  return result;
}

uint64_t sub_1BF433648(void *a1)
{
  if (qword_1EDC9D500 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF4E7B54();
  __swift_project_value_buffer(v2, qword_1EDCA69A0);
  v3 = a1;
  v4 = sub_1BF4E7B34();
  v5 = sub_1BF4E8E84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_1BF389000, v4, v5, "Query Controller did update: %{public}@", v6, 0xCu);
    sub_1BF38C9B4(v7, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v7, -1, -1);
    MEMORY[0x1BFB5A5D0](v6, -1, -1);
  }

  v9 = [v3 extensionIdentities];
  sub_1BF3901C0(0, &qword_1EDC96340, 0x1E6966CB0);
  v10 = sub_1BF4E8BA4();

  v11 = sub_1BF433060(v10);

  sub_1BF43351C(v11);
}

void *sub_1BF433934()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1BF4389EC(*(v2 + 16), 0);
  v5 = sub_1BF438E38(&v8, (v4 + 4), v3, v2);
  v6 = v8;

  sub_1BF39A9CC(v6);
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x1E69E7CC0];
  }

  os_unfair_lock_unlock((v1 + 24));

  return v4;
}

uint64_t sub_1BF433A1C()
{
  v1 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1BF433A60(char a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1BF433B58(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1BF38C8B4(a4, a2, a3, MEMORY[0x1E695BF88]);
  return sub_1BF4E7C84();
}

id ExtensionManager.__allocating_init(queue:remoteWidgetExtensionProvider:)(uint64_t a1, void *a2)
{
  type metadata accessor for _WidgetExtensionFactory();
  v4 = swift_allocObject();
  v5 = objc_allocWithZone(type metadata accessor for _SystemEXExtensionIdentityDiscoverer());

  v6 = [v5 init];
  sub_1BF38E49C(a2, v9);
  v7 = sub_1BF439298(a1, v4, v6, v9);

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v7;
}

id ExtensionManager.__allocating_init(queue:extensionFactory:exExtensionIdentityDiscoverer:remoteWidgetExtensionProvider:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2[3];
  v8 = a2[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v16 = a3[3];
  v15 = a3[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a3, v16);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_1BF4394E8(a1, v13, v20, a4, v24[1], v9, v16, v8, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v22;
}

id ExtensionManager.init(queue:extensionFactory:exExtensionIdentityDiscoverer:remoteWidgetExtensionProvider:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v4[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions] = 1;
  v10 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__extensionsPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  *&v4[v10] = sub_1BF4E7C34();
  v11 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__addedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9128, &qword_1BF4F06F8);
  swift_allocObject();
  *&v4[v11] = sub_1BF4E7C34();
  v12 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__updatedPublisher;
  swift_allocObject();
  *&v4[v12] = sub_1BF4E7C34();
  v13 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager__removedPublisher;
  swift_allocObject();
  *&v4[v13] = sub_1BF4E7C34();
  v14 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9148, &qword_1BF4F0700);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC8];
  *(v15 + 24) = 0;
  *(v15 + 16) = v16;
  *&v5[v14] = v15;
  v17 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_lookupLock;
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *v19 = 0;
  *(v18 + 16) = v19;
  *&v5[v17] = v18;
  *&v5[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscovererSubscription] = 0;
  *&v5[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionSubscription] = 0;
  *&v5[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_queue] = a1;
  sub_1BF38E49C(a2, &v5[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionFactory]);
  sub_1BF38E49C(a3, &v5[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscoverer]);
  sub_1BF38E49C(a4, &v5[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionProvider]);
  v22.receiver = v5;
  v22.super_class = type metadata accessor for ExtensionManager();
  v20 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v20;
}

uint64_t sub_1BF4340C4()
{
  v1 = v0;
  if (qword_1EDC9D500 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF4E7B54();
  __swift_project_value_buffer(v2, qword_1EDCA69A0);
  v3 = sub_1BF4E7B34();
  v4 = sub_1BF4E8E84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BF389000, v3, v4, "Start", v5, 2u);
    MEMORY[0x1BFB5A5D0](v5, -1, -1);
  }

  v6 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscoverer;
  sub_1BF38E49C(&v1[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscoverer], v27);
  v7 = v28;
  v8 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v8 + 8))(v7, v8);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9188, &qword_1BF4F0708);
  v9 = MEMORY[0x1E695BED8];
  sub_1BF38C8B4(&qword_1EDC9D3E0, &unk_1EBDD9188, &qword_1BF4F0708, MEMORY[0x1E695BED8]);
  v10 = sub_1BF4E7D14();

  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  *&v1[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_exExtensionIdentityDiscovererSubscription] = v10;

  sub_1BF38E49C(&v1[v6], v27);
  v11 = v28;
  v12 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v13 = (*(v12 + 24))(v11, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  v14 = *&v1[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier];

  os_unfair_lock_lock((v14 + 24));
  sub_1BF434BF8((v14 + 16), v27);
  os_unfair_lock_unlock((v14 + 24));
  v15 = v27[0];

  v16 = sub_1BF439A9C(v15);

  v27[0] = v16;
  v17 = v1;
  v18 = sub_1BF439C40(v13, v17, v27);

  sub_1BF435654(v27[0]);
  sub_1BF43698C(v18);

  v19 = &v17[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionProvider];
  v20 = *&v17[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionProvider + 24];
  v21 = *&v17[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionProvider + 32];
  __swift_project_boxed_opaque_existential_1(&v17[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionProvider], v20);
  v27[0] = (*(v21 + 8))(v20, v21);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9198, &unk_1BF4F0710);
  sub_1BF38C8B4(&qword_1EDC9D400, &qword_1EBDD9198, &unk_1BF4F0710, v9);
  v22 = sub_1BF4E7D14();

  *&v17[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_remoteWidgetExtensionSubscription] = v22;

  v23 = *(v19 + 3);
  v24 = *(v19 + 4);
  __swift_project_boxed_opaque_existential_1(v19, v23);
  v25 = (*(v24 + 16))(v23, v24);
  sub_1BF4345F8(v25, v17);
}

char *sub_1BF4344F8(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *&result[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier];
    v5 = result;

    os_unfair_lock_lock((v4 + 24));
    sub_1BF434BF8((v4 + 16), &v10);
    os_unfair_lock_unlock((v4 + 24));
    v6 = v10;

    v7 = sub_1BF439A9C(v6);

    v10 = v7;
    v8 = v5;
    v9 = sub_1BF439C40(v2, v8, &v10);

    sub_1BF435654(v10);
    sub_1BF43698C(v9);
  }

  return result;
}

uint64_t sub_1BF4345F8(uint64_t a1, uint64_t a2)
{
  v27 = type metadata accessor for RemoteWidgetExtension(0);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92A8, &unk_1BF4F08B0);
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v23 = a2;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1BF3E151C(0, v11, 0);
    v12 = v30;
    v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v24 = *(v5 + 72);
    do
    {
      sub_1BF38C94C(v13, v10, &qword_1EBDD92A8, &unk_1BF4F08B0);
      sub_1BF38C94C(v10, v7, &qword_1EBDD92A8, &unk_1BF4F08B0);
      v14 = swift_getEnumCaseMultiPayload() == 1;
      v15 = v26;
      sub_1BF43A204(v7, v26);
      *&v29[8] = v27;
      *&v29[16] = sub_1BF43A1BC(&unk_1EBDD92B0, type metadata accessor for RemoteWidgetExtension, &protocol conformance descriptor for RemoteWidgetExtension);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v28);
      sub_1BF43A204(v15, boxed_opaque_existential_0);
      sub_1BF38C9B4(v10, &qword_1EBDD92A8, &unk_1BF4F08B0);
      v29[24] = v14;
      v30 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1BF3E151C((v17 > 1), v18 + 1, 1);
        v12 = v30;
      }

      *(v12 + 16) = v18 + 1;
      v19 = (v12 + 48 * v18);
      v20 = v28;
      v21 = *v29;
      *(v19 + 57) = *&v29[9];
      v19[2] = v20;
      v19[3] = v21;
      v13 += v24;
      --v11;
    }

    while (v11);
  }

  sub_1BF43698C(v12);
}

void sub_1BF4348C0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1BF4345F8(v2, Strong);
  }
}

uint64_t sub_1BF434938@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;

  sub_1BF4E7694();
  sub_1BF38B8B8(v7, a3);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BF434A40()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);

  os_unfair_lock_lock((v1 + 24));
  sub_1BF38DBC8((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_1BF434AB8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10[-v5];

  sub_1BF4E7694();
  v7 = *(v2 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);
  v11 = v6;

  os_unfair_lock_lock((v7 + 24));
  sub_1BF38DC60((v7 + 16), &v12);
  os_unfair_lock_unlock((v7 + 24));
  v8 = v12;

  (*(v4 + 8))(v6, v3);
  return v8;
}

void sub_1BF434BF8(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  v9 = *a1;
  v10 = *a1 + 64;
  v11 = 1 << *(*a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(*a1 + 64);
  v14 = (v11 + 63) >> 6;
  v34 = v6 + 16;
  v35 = v6;
  v29 = (v6 + 32);
  v33 = (v6 + 8);
  v36 = v9;

  v15 = 0;
  v32 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v16 = v15;
    if (!v13)
    {
      break;
    }

LABEL_8:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v18 = *(v35 + 72);
    (*(v35 + 16))(v8, *(v36 + 48) + v18 * (v17 | (v15 << 6)), v3);
    sub_1BF4E7774();
    v19 = sub_1BF4E76E4();

    if (v19)
    {
      (*v33)(v8, v3);
    }

    else
    {
      v20 = *v29;
      (*v29)(v30, v8, v3);
      v21 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v21;
      v37 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BF3E153C(0, *(v21 + 16) + 1, 1);
        v23 = v37;
      }

      v25 = *(v23 + 16);
      v24 = *(v23 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v28 = v20;
        v32 = v25 + 1;
        sub_1BF3E153C((v24 > 1), v25 + 1, 1);
        v26 = v32;
        v20 = v28;
        v23 = v37;
      }

      *(v23 + 16) = v26;
      v27 = *(v35 + 80);
      v32 = v23;
      v20((v23 + ((v27 + 32) & ~v27) + v25 * v18), v30, v3);
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v14)
    {

      *v31 = v32;
      return;
    }

    v13 = *(v10 + 8 * v15);
    ++v16;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1BF434EE8(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a4;
  v60 = a3;
  v69 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD92E0, &unk_1BF4F08D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v59 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v58 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v58 - v13;
  v15 = *a1;
  v16 = [*a1 bundleIdentifier];
  sub_1BF4E8914();

  v17 = v69;
  sub_1BF4E7694();
  v18 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_requireValidExtensions;
  swift_beginAccess();
  LOBYTE(v18) = sub_1BF38CBB8(v14, 0, 0, *(v17 + v18));
  (*(v11 + 8))(v14, v10);
  if (v18)
  {
    if (qword_1EDC9D500 != -1)
    {
      swift_once();
    }

    v19 = sub_1BF4E7B54();
    __swift_project_value_buffer(v19, qword_1EDCA69A0);
    v20 = v15;
    v21 = sub_1BF4E7B34();
    v22 = sub_1BF4E8E84();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v68[0] = v24;
      *v23 = 136446210;
      v25 = [v20 0x1E80BD978];
      v26 = sub_1BF4E8914();
      v28 = v27;

      v29 = sub_1BF38D65C(v26, v28, v68);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_1BF389000, v21, v22, "Ignoring restricted or unknown extension %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1BFB5A5D0](v24, -1, -1);
      MEMORY[0x1BFB5A5D0](v23, -1, -1);
    }

    v30 = v64;
    *(v64 + 32) = 0;
    *v30 = 0u;
    *(v30 + 16) = 0u;
    *(v30 + 40) = -1;
  }

  else
  {
    v31 = [v15 bundleIdentifier];
    sub_1BF4E8914();

    sub_1BF4E7694();
    sub_1BF4E77B4();
    v32 = v59;
    sub_1BF4DADD8(v9, v59);
    sub_1BF38C9B4(v32, &unk_1EBDD92E0, &unk_1BF4F08D0);
    sub_1BF38E49C(v17 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionFactory, v65);
    v33 = v66;
    v34 = v67;
    __swift_project_boxed_opaque_existential_1(v65, v66);
    v35 = v63;
    (*(v34 + 8))(v68, v15, v33, v34);
    if (v35)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      if (qword_1EDC9D500 != -1)
      {
        swift_once();
      }

      v36 = sub_1BF4E7B54();
      __swift_project_value_buffer(v36, qword_1EDCA69A0);
      v37 = v15;
      v38 = v35;
      v39 = sub_1BF4E7B34();
      v40 = sub_1BF4E8E64();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v68[0] = v42;
        *v41 = 136446466;
        v43 = [v37 bundleIdentifier];
        v44 = sub_1BF4E8914();
        v46 = v45;

        v47 = sub_1BF38D65C(v44, v46, v68);

        *(v41 + 4) = v47;
        *(v41 + 12) = 2080;
        v65[0] = v35;
        v48 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
        v49 = sub_1BF4E8994();
        v51 = sub_1BF38D65C(v49, v50, v68);

        *(v41 + 14) = v51;
        _os_log_impl(&dword_1BF389000, v39, v40, "Failed to handle new extension of %{public}s due to %s, removing existing version as a safeguard", v41, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v42, -1, -1);
        MEMORY[0x1BFB5A5D0](v41, -1, -1);
      }

      v52 = *(v69 + OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier);
      MEMORY[0x1EEE9AC00](v53);
      *(&v58 - 2) = v9;

      os_unfair_lock_lock((v52 + 24));
      sub_1BF38B740((v52 + 16), v65);
      os_unfair_lock_unlock((v52 + 24));

      v54 = (v61 + 8);
      if (v66)
      {
        sub_1BF38E60C(v65, v68);
        v55 = v64;
        sub_1BF38E60C(v68, v64);
        *(v55 + 40) = 1;
      }

      else
      {
        sub_1BF38C9B4(v65, &unk_1EBDD91B0, &unk_1BF4F0720);
        v57 = v64;
        *(v64 + 32) = 0;
        *v57 = 0u;
        *(v57 + 16) = 0u;
        *(v57 + 40) = -1;
      }

      (*v54)(v9, v62);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v65);
      v56 = v64;
      sub_1BF38E60C(v68, v64);
      *(v56 + 40) = 0;
      (*(v61 + 8))(v9, v62);
    }
  }
}

void sub_1BF435654(uint64_t a1)
{
  v74 = sub_1BF4E7FF4();
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1BF4E8064();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v5 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v90 = &v68 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v68 - v13;
  v87 = swift_allocObject();
  *(v87 + 16) = MEMORY[0x1E69E7CC0];
  v82 = v1;
  v75 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier;
  v14 = *&v1[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier];

  os_unfair_lock_lock((v14 + 24));
  v91 = *(v14 + 16);

  os_unfair_lock_unlock((v14 + 24));

  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v92 = v8 + 16;
  v89 = v8;
  v20 = v8 + 8;
  v77 = (v5 + 8);

  v21 = 0;
  v83 = 0;
  *&v22 = 136446210;
  v76 = v22;
  v84 = a1;
  v95 = v20;
  v85 = v7;
  while (v18)
  {
LABEL_12:
    v27 = v88;
    v28 = v89;
    v29 = *(v89 + 16);
    v29(v88, *(a1 + 48) + *(v89 + 72) * (__clz(__rbit64(v18)) | (v21 << 6)), v7);
    sub_1BF4E77C4();
    v94 = *(v28 + 8);
    v94(v27, v7);
    v25 = v93;
    sub_1BF4E77B4();
    v30 = v91;
    if (*(v91 + 16) && (v31 = sub_1BF38C890(v25), (v32 & 1) != 0))
    {
      sub_1BF38E49C(*(v30 + 56) + 40 * v31, aBlock);
      sub_1BF38E49C(aBlock, &v97);
      v33 = v87;
      v34 = *(v87 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v33 + 16) = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_1BF38E628(0, v34[2] + 1, 1, v34);
        *(v87 + 16) = v34;
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        v34 = sub_1BF38E628((v36 > 1), v37 + 1, 1, v34);
      }

      v34[2] = v37 + 1;
      v38 = sub_1BF38E60C(&v97, &v34[5 * v37 + 4]);
      *(v87 + 16) = v34;
      v39 = *&v82[v75];
      MEMORY[0x1EEE9AC00](v38);
      *(&v68 - 2) = v25;

      os_unfair_lock_lock(v39 + 6);
      v40 = v83;
      sub_1BF43A2B0(&v39[4]);
      os_unfair_lock_unlock(v39 + 6);
      v26 = &v98;
      v83 = v40;
      if (v40)
      {
        goto LABEL_26;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(aBlock);

      a1 = v84;
      v24 = v94;
    }

    else
    {
      v41 = v86;
      if (qword_1EDC9D500 != -1)
      {
        swift_once();
      }

      v42 = sub_1BF4E7B54();
      __swift_project_value_buffer(v42, qword_1EDCA69A0);
      v29(v41, v25, v7);
      v43 = sub_1BF4E7B34();
      v44 = sub_1BF4E8E84();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v79 = v45;
        v81 = swift_slowAlloc();
        aBlock[0] = v81;
        *v45 = v76;
        v46 = v41;
        v47 = v90;
        v80 = v44;
        sub_1BF4E77C4();
        sub_1BF38C8B4(&qword_1EDC9D568, &qword_1EBDD8B48, &unk_1BF4EC990, MEMORY[0x1E69940E0]);
        v48 = v78;
        v49 = sub_1BF4E96A4();
        v51 = v50;
        (*v77)(v47, v48);
        v24 = v94;
        v94(v46, v85);
        v52 = sub_1BF38D65C(v49, v51, aBlock);
        v53 = v84;

        v54 = v79;
        *(v79 + 1) = v52;
        v55 = v54;
        _os_log_impl(&dword_1BF389000, v43, v80, "Pending removal of extension %{public}s without existing widget extension", v54, 0xCu);
        v56 = v81;
        __swift_destroy_boxed_opaque_existential_1Tm(v81);
        v57 = v56;
        a1 = v53;
        MEMORY[0x1BFB5A5D0](v57, -1, -1);
        MEMORY[0x1BFB5A5D0](v55, -1, -1);

        v7 = v85;
      }

      else
      {

        v23 = v41;
        v24 = v94;
        v94(v23, v7);
      }

      v25 = v93;
    }

    v18 &= v18 - 1;
    v24(v25, v7);
  }

  while (1)
  {
    v26 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v26 >= v19)
    {

      v58 = swift_allocObject();
      *(v58 + 16) = 0;
      v59 = v82;
      v60 = *&v82[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_queue];
      v61 = swift_allocObject();
      v61[2] = v87;
      v61[3] = v58;
      v61[4] = v59;
      aBlock[4] = sub_1BF43A2CC;
      aBlock[5] = v61;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BF38E868;
      aBlock[3] = &block_descriptor_67;
      v62 = _Block_copy(aBlock);
      v63 = v60;

      v64 = v59;
      v65 = v69;
      sub_1BF4E8014();
      v97 = MEMORY[0x1E69E7CC0];
      sub_1BF43A1BC(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
      sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
      v66 = v72;
      v67 = v74;
      sub_1BF4E91A4();
      MEMORY[0x1BFB591B0](0, v65, v66, v62);
      _Block_release(v62);

      (*(v73 + 8))(v66, v67);
      (*(v70 + 8))(v65, v71);

      return;
    }

    v18 = *(v15 + 8 * v26);
    ++v21;
    if (v18)
    {
      v21 = v26;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:

  __break(1u);
}

uint64_t sub_1BF436088(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  (*(v7 + 16))(v9 - v5, a2, v4);
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  return sub_1BF43A7F8(v9, v6);
}

void sub_1BF436178(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (qword_1EDC9D500 != -1)
    {
      swift_once();
    }

    v4 = sub_1BF4E7B54();
    __swift_project_value_buffer(v4, qword_1EDCA69A0);

    v5 = sub_1BF4E7B34();
    v6 = sub_1BF4E8E84();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15[0] = v8;
      *v7 = 136446210;
      swift_beginAccess();
      v9 = *(a1 + 16);

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
      v11 = MEMORY[0x1BFB58E10](v9, v10);
      v13 = v12;

      v14 = sub_1BF38D65C(v11, v13, v15);

      *(v7 + 4) = v14;
      _os_log_impl(&dword_1BF389000, v5, v6, "Removed extensions [LS]: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1BFB5A5D0](v8, -1, -1);
      MEMORY[0x1BFB5A5D0](v7, -1, -1);
    }

    swift_beginAccess();

    sub_1BF4E7C14();
  }

  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
    sub_1BF4E7C74();
  }
}

double sub_1BF43642C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BF4E7FF4();
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BF4E8064();
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&v1[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier];
  v19 = a1;

  os_unfair_lock_lock(v10 + 6);
  sub_1BF43A194(&v10[4]);
  os_unfair_lock_unlock(v10 + 6);

  v11 = *&v1[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_queue];
  sub_1BF38E49C(a1, v22);
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  sub_1BF38E60C(v22, v12 + 24);
  aBlock[4] = sub_1BF43A1B0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF38E868;
  aBlock[3] = &block_descriptor_4;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  v15 = v2;
  sub_1BF4E8014();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1BF43A1BC(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
  sub_1BF4E91A4();
  MEMORY[0x1BFB591B0](0, v9, v6, v13);
  _Block_release(v13);

  (*(v18 + 8))(v6, v4);
  (*(v7 + 8))(v9, v17);

  return result;
}

uint64_t sub_1BF43676C(uint64_t a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10[-v4 - 8];
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  sub_1BF436840(v6, v7);
  sub_1BF38E49C(a2, v10);
  return sub_1BF43A7F8(v10, v5);
}

void sub_1BF436840(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetExtensionInfo(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(a2 + 32))(a1, a2, v5);
  v8 = *v7;
  sub_1BF38DB44(v7);
  sub_1BF4E9024();
}

uint64_t sub_1BF436900(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A50, &qword_1BF4EC020);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BF4EBEF0;
  sub_1BF38E49C(a2, v3 + 32);
  sub_1BF4E7C14();
}

void sub_1BF43698C(uint64_t a1)
{
  v2 = v1;
  v111 = 0;
  v4 = sub_1BF4E7FF4();
  v94 = *(v4 - 8);
  v95 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v92 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1BF4E8064();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v90 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1BF4E7394();
  v7 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CC0];
  *(v9 + 16) = MEMORY[0x1E69E7CC0];
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v112 = swift_allocObject();
  *(v112 + 16) = v10;
  v13 = *(a1 + 16);
  v108 = v11;
  v109 = v2;
  v107 = v9;
  if (v13)
  {
    v14 = a1 + 32;
    v98 = (v7 + 8);
    v110 = OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier;
    *&v12 = 136446210;
    v97 = v12;
    *&v12 = 136446722;
    v96 = v12;
    while (1)
    {
      sub_1BF38C94C(v14, aBlock, &qword_1EBDD8A98, &qword_1BF4EC068);
      if (v123)
      {
        sub_1BF38E60C(aBlock, v125);
        sub_1BF38E49C(v125, v124);
        v16 = v112;
        v17 = *(v112 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v16 + 16) = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = sub_1BF38E628(0, v17[2] + 1, 1, v17);
          *(v112 + 16) = v17;
        }

        v20 = v17[2];
        v19 = v17[3];
        if (v20 >= v19 >> 1)
        {
          v17 = sub_1BF38E628((v19 > 1), v20 + 1, 1, v17);
          *(v112 + 16) = v17;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v125);
        v17[2] = v20 + 1;
        sub_1BF38E60C(v124, &v17[5 * v20 + 4]);
        *(v112 + 16) = v17;
      }

      else
      {
        v21 = sub_1BF38E60C(aBlock, v125);
        v22 = *&v2[v110];
        MEMORY[0x1EEE9AC00](v21);
        *(&v90 - 2) = v125;

        os_unfair_lock_lock((v22 + 24));
        v23 = v111;
        sub_1BF43A294((v22 + 16), v120);
        os_unfair_lock_unlock((v22 + 24));
        v111 = v23;
        if (v23)
        {

          __break(1u);
          goto LABEL_40;
        }

        if (v121)
        {
          sub_1BF38E60C(v120, v124);
          v24 = v126;
          v25 = v127;
          __swift_project_boxed_opaque_existential_1(v125, v126);
          if ((*(v25 + 312))(v124, v24, v25))
          {
            if (qword_1EDC9D500 != -1)
            {
              swift_once();
            }

            v26 = sub_1BF4E7B54();
            __swift_project_value_buffer(v26, qword_1EDCA69A0);
            sub_1BF38E49C(v125, v120);
            v27 = sub_1BF4E7B34();
            v28 = sub_1BF4E8E84();
            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              v30 = swift_slowAlloc();
              v117[0] = v30;
              *v29 = v97;
              __swift_project_boxed_opaque_existential_1(v120, v121);
              v31 = sub_1BF4E96A4();
              v33 = v32;
              __swift_destroy_boxed_opaque_existential_1Tm(v120);
              v34 = sub_1BF38D65C(v31, v33, v117);
              v11 = v108;

              *(v29 + 4) = v34;
              _os_log_impl(&dword_1BF389000, v27, v28, "Unchanged extension: %{public}s", v29, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v30);
              v35 = v30;
              v9 = v107;
              MEMORY[0x1BFB5A5D0](v35, -1, -1);
              MEMORY[0x1BFB5A5D0](v29, -1, -1);

              v15 = v124;
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1Tm(v124);
              v15 = v120;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v15);
            v2 = v109;
          }

          else
          {
            if (qword_1EDC9D500 != -1)
            {
              swift_once();
            }

            v40 = sub_1BF4E7B54();
            __swift_project_value_buffer(v40, qword_1EDCA69A0);
            sub_1BF38E49C(v125, v120);
            sub_1BF38E49C(v125, v117);
            sub_1BF38E49C(v124, v114);
            v41 = sub_1BF4E7B34();
            v42 = sub_1BF4E8E84();
            if (os_log_type_enabled(v41, v42))
            {
              v43 = swift_slowAlloc();
              v44 = swift_slowAlloc();
              v105 = v41;
              v106 = v44;
              v113 = v44;
              *v43 = v96;
              __swift_project_boxed_opaque_existential_1(v120, v121);
              v45 = sub_1BF4E96A4();
              v47 = v46;
              __swift_destroy_boxed_opaque_existential_1Tm(v120);
              v48 = sub_1BF38D65C(v45, v47, &v113);

              *(v43 + 4) = v48;
              *(v43 + 12) = 2082;
              v50 = v118;
              v49 = v119;
              __swift_project_boxed_opaque_existential_1(v117, v118);
              v51 = v99;
              (*(v49 + 64))(v50, v49);
              v103 = sub_1BF43A1BC(&unk_1EBDD92C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
              v52 = v100;
              v53 = sub_1BF4E96A4();
              v55 = v54;
              v104 = v42;
              v102 = *v98;
              v102(v51, v52);
              __swift_destroy_boxed_opaque_existential_1Tm(v117);
              v56 = sub_1BF38D65C(v53, v55, &v113);

              v101 = v43;
              *(v43 + 14) = v56;
              *(v43 + 22) = 2082;
              v57 = v115;
              v58 = v116;
              __swift_project_boxed_opaque_existential_1(v114, v115);
              v59 = *(v58 + 64);
              v60 = v57;
              v61 = v58;
              v9 = v107;
              v11 = v108;
              v59(v60, v61);
              v62 = sub_1BF4E96A4();
              v64 = v63;
              v102(v51, v52);
              __swift_destroy_boxed_opaque_existential_1Tm(v114);
              v65 = sub_1BF38D65C(v62, v64, &v113);

              v66 = v101;
              *(v101 + 24) = v65;
              v67 = v105;
              _os_log_impl(&dword_1BF389000, v105, v104, "Updated extension: %{public}s, now with pluginUUID %{public}s, (was %{public}s)", v66, 0x20u);
              v68 = v106;
              swift_arrayDestroy();
              MEMORY[0x1BFB5A5D0](v68, -1, -1);
              MEMORY[0x1BFB5A5D0](v66, -1, -1);
            }

            else
            {

              __swift_destroy_boxed_opaque_existential_1Tm(v114);
              __swift_destroy_boxed_opaque_existential_1Tm(v117);
              __swift_destroy_boxed_opaque_existential_1Tm(v120);
            }

            v2 = v109;
            sub_1BF38E49C(v125, v120);
            v69 = *(v11 + 16);
            v70 = swift_isUniquelyReferenced_nonNull_native();
            *(v11 + 16) = v69;
            if ((v70 & 1) == 0)
            {
              v69 = sub_1BF38E628(0, v69[2] + 1, 1, v69);
              *(v11 + 16) = v69;
            }

            v72 = v69[2];
            v71 = v69[3];
            if (v72 >= v71 >> 1)
            {
              v69 = sub_1BF38E628((v71 > 1), v72 + 1, 1, v69);
              *(v11 + 16) = v69;
            }

            __swift_destroy_boxed_opaque_existential_1Tm(v124);
            v69[2] = v72 + 1;
            sub_1BF38E60C(v120, &v69[5 * v72 + 4]);
            *(v11 + 16) = v69;
          }
        }

        else
        {
          sub_1BF38C9B4(v120, &unk_1EBDD91B0, &unk_1BF4F0720);
          sub_1BF38E49C(v125, v124);
          v36 = *(v9 + 16);
          v37 = swift_isUniquelyReferenced_nonNull_native();
          *(v9 + 16) = v36;
          if ((v37 & 1) == 0)
          {
            v36 = sub_1BF38E628(0, v36[2] + 1, 1, v36);
            *(v9 + 16) = v36;
          }

          v39 = v36[2];
          v38 = v36[3];
          if (v39 >= v38 >> 1)
          {
            v36 = sub_1BF38E628((v38 > 1), v39 + 1, 1, v36);
          }

          v36[2] = v39 + 1;
          sub_1BF38E60C(v124, &v36[5 * v39 + 4]);
          *(v9 + 16) = v36;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v125);
      }

      v14 += 48;
      if (!--v13)
      {
        v73 = *(v112 + 16);
        v74 = *(v9 + 16);
        goto LABEL_37;
      }
    }
  }

  v74 = v10;
  v73 = v10;
LABEL_37:
  aBlock[0] = v74;

  v76 = sub_1BF44BA70(v75);
  v77 = aBlock[0];
  v78 = v109;
  v79 = *&v109[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_extensionsByIdentifier];
  MEMORY[0x1EEE9AC00](v76);
  *(&v90 - 2) = v73;
  *(&v90 - 1) = v77;

  os_unfair_lock_lock((v79 + 24));
  v23 = v111;
  sub_1BF43A268((v79 + 16));
  os_unfair_lock_unlock((v79 + 24));
  if (v23)
  {
LABEL_40:

    __break(1u);
  }

  else
  {

    v80 = swift_allocObject();
    *(v80 + 16) = 0;
    v81 = *&v78[OBJC_IVAR____TtC9ChronoKit16ExtensionManager_queue];
    v82 = swift_allocObject();
    v82[2] = v9;
    v82[3] = v80;
    v83 = v108;
    v82[4] = v78;
    v82[5] = v83;
    v82[6] = v112;
    aBlock[4] = sub_1BF43A284;
    v123 = v82;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF38E868;
    aBlock[3] = &block_descriptor_59;
    v84 = _Block_copy(aBlock);
    v85 = v81;

    v86 = v78;

    v87 = v90;
    sub_1BF4E8014();
    v125[0] = MEMORY[0x1E69E7CC0];
    sub_1BF43A1BC(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
    v88 = v92;
    v89 = v95;
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v87, v88, v84);
    _Block_release(v84);

    (*(v94 + 8))(v88, v89);
    (*(v91 + 8))(v87, v93);
  }
}

double sub_1BF43766C@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  sub_1BF436840(v10, v11);
  v12 = *a1;
  if (*(*a1 + 16) && (v13 = sub_1BF38C890(v9), (v14 & 1) != 0))
  {
    sub_1BF38E49C(*(v12 + 56) + 40 * v13, a3);
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void sub_1BF4377D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (a2 + 32);
    v48 = &v46 - v9;
    v49 = (v6 + 8);
    do
    {
      v13 = v12[3];
      v14 = v12[4];
      __swift_project_boxed_opaque_existential_1(v12, v13);
      sub_1BF436840(v13, v14);
      v15 = sub_1BF38C890(v10);
      if (v16)
      {
        v17 = v15;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *a1;
        v53 = *a1;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1BF4A3A84();
          v19 = v53;
        }

        v20 = *(v19 + 48) + *(v6 + 72) * v17;
        v21 = v6;
        v22 = *(v6 + 8);
        v22(v20, v5);
        sub_1BF38E60C(*(v19 + 56) + 40 * v17, v51);
        sub_1BF47C320(v17, v19);
        v23 = v48;
        v22(v48, v5);
        v6 = v21;
        v10 = v23;
        *a1 = v19;
      }

      else
      {
        (*v49)(v10, v5);
        v52 = 0;
        memset(v51, 0, sizeof(v51));
      }

      sub_1BF38C9B4(v51, &unk_1EBDD91B0, &unk_1BF4F0720);
      v12 += 5;
      --v11;
    }

    while (v11);
  }

  v24 = *(v47 + 16);
  if (!v24)
  {
    return;
  }

  v25 = (v47 + 32);
  v48 = (v6 + 16);
  v49 = (v6 + 8);
  while (1)
  {
    v27 = v25[3];
    v28 = v25[4];
    __swift_project_boxed_opaque_existential_1(v25, v27);
    v29 = v50;
    sub_1BF436840(v27, v28);
    sub_1BF38E49C(v25, v51);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v53 = *a1;
    v31 = v53;
    v32 = sub_1BF38C890(v29);
    v34 = v31[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      break;
    }

    v38 = v33;
    if (v31[3] < v37)
    {
      sub_1BF49F724(v37, v30);
      v32 = sub_1BF38C890(v50);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_26;
      }

LABEL_18:
      v40 = v53;
      if (v38)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

    if (v30)
    {
      goto LABEL_18;
    }

    v45 = v32;
    sub_1BF4A3A84();
    v32 = v45;
    v40 = v53;
    if (v38)
    {
LABEL_11:
      v26 = (v40[7] + 40 * v32);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      sub_1BF38E60C(v51, v26);
      (*v49)(v50, v5);
      goto LABEL_12;
    }

LABEL_19:
    v40[(v32 >> 6) + 8] |= 1 << v32;
    v41 = v32;
    v42 = v50;
    (*(v6 + 16))(v40[6] + *(v6 + 72) * v32, v50, v5);
    sub_1BF38E60C(v51, v40[7] + 40 * v41);
    (*(v6 + 8))(v42, v5);
    v43 = v40[2];
    v36 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (v36)
    {
      goto LABEL_25;
    }

    v40[2] = v44;
LABEL_12:
    *a1 = v40;
    v25 += 5;
    if (!--v24)
    {
      return;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1BF4E9794();
  __break(1u);
}

void sub_1BF437BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (*(*(a1 + 16) + 16))
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (qword_1EDC9D498 != -1)
    {
      swift_once();
    }

    v8 = sub_1BF4E7B54();
    __swift_project_value_buffer(v8, qword_1EDCA68F8);

    v9 = sub_1BF4E7B34();
    v10 = sub_1BF4E8E84();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v45[0] = v12;
      *v11 = 136446210;
      swift_beginAccess();
      v41 = a5;
      v13 = *(a1 + 16);

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
      v15 = MEMORY[0x1BFB58E10](v13, v14);
      v17 = v16;
      a5 = v41;

      v18 = sub_1BF38D65C(v15, v17, v45);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_1BF389000, v9, v10, "Added extensions: %{public}s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1BFB5A5D0](v12, -1, -1);
      MEMORY[0x1BFB5A5D0](v11, -1, -1);
    }

    swift_beginAccess();
    v44[6] = *(a1 + 16);

    sub_1BF4E7C14();
  }

  swift_beginAccess();
  if (*(*(a4 + 16) + 16))
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (qword_1EDC9D498 != -1)
    {
      swift_once();
    }

    v19 = sub_1BF4E7B54();
    __swift_project_value_buffer(v19, qword_1EDCA68F8);

    v20 = sub_1BF4E7B34();
    v21 = sub_1BF4E8E84();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v44[0] = v23;
      *v22 = 136446210;
      swift_beginAccess();
      v24 = *(a4 + 16);

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
      v26 = MEMORY[0x1BFB58E10](v24, v25);
      v28 = v27;

      v29 = sub_1BF38D65C(v26, v28, v44);

      *(v22 + 4) = v29;
      _os_log_impl(&dword_1BF389000, v20, v21, "Updated extensions: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x1BFB5A5D0](v23, -1, -1);
      MEMORY[0x1BFB5A5D0](v22, -1, -1);
    }

    swift_beginAccess();
    v43[6] = *(a4 + 16);

    sub_1BF4E7C14();
  }

  swift_beginAccess();
  if (*(*(a5 + 16) + 16))
  {
    swift_beginAccess();
    *(a2 + 16) = 1;
    if (qword_1EDC9D498 != -1)
    {
      swift_once();
    }

    v30 = sub_1BF4E7B54();
    __swift_project_value_buffer(v30, qword_1EDCA68F8);

    v31 = sub_1BF4E7B34();
    v32 = sub_1BF4E8E84();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43[0] = v34;
      *v33 = 136446210;
      swift_beginAccess();
      v35 = *(a5 + 16);

      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
      v37 = MEMORY[0x1BFB58E10](v35, v36);
      v39 = v38;

      v40 = sub_1BF38D65C(v37, v39, v43);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_1BF389000, v31, v32, "Removed extensions: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x1BFB5A5D0](v34, -1, -1);
      MEMORY[0x1BFB5A5D0](v33, -1, -1);
    }

    swift_beginAccess();

    sub_1BF4E7C14();
  }

  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
    sub_1BF4E7C74();
  }
}

uint64_t sub_1BF4382A0()
{
  result = sub_1BF4382C4();
  byte_1EDC9AA30 = result & 1;
  return result;
}

uint64_t sub_1BF4382C4()
{
  v0 = sub_1BF4E88E4();
  v1 = MGCopyAnswer();

  if (v1 && (swift_dynamicCast() & 1) != 0)
  {
    if (v4 == 18499 && v5 == 0xE200000000000000)
    {

      v2 = 1;
    }

    else
    {
      v2 = sub_1BF4E9734();
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

id ExtensionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1BF43844C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BF438588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_1BF38C8B4(a6, a4, a5, MEMORY[0x1E695BF88]);
  return sub_1BF4E7C84();
}

uint64_t sub_1BF438640@<X0>(uint64_t a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;

  sub_1BF4E7694();
  sub_1BF38B8B8(v7, a3);
  return (*(v5 + 8))(v7, v4);
}

void *sub_1BF4387DC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9258, &unk_1BF4F0870);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_1BF43886C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A68, &qword_1BF4EC038);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1BF4388F0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD92F0, &qword_1BF4EC070);
  v4 = *(sub_1BF4E8454() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF4389EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A50, &qword_1BF4EC020);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_1BF438A7C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = *(a4 + 16);
    if (v5)
    {
      v6 = a2;
      v13 = a3;
      v14 = result;
      v7 = 0;
      v8 = (a4 + 64);
      v9 = a3 - 1;
      while (v7 < *(a4 + 16))
      {
        v10 = *(v8 - 2);
        v11 = *(v8 - 1);
        v12 = *v8;

        sub_1BF3D8840(v10, v11, v12);

        *v6 = v10;
        *(v6 + 8) = v11;
        *(v6 + 16) = v12;
        if (v9 == v7)
        {
          a3 = v13;
          result = v14;
          goto LABEL_13;
        }

        v6 += 24;
        ++v7;
        v8 += 40;
        if (v5 == v7)
        {
          a3 = v5;
          result = v14;
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    a3 = 0;
    goto LABEL_13;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_1BF438B78(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1BF4E8454();
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40, v10);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1BF438E38(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      sub_1BF38E49C(*(a4 + 56) + 40 * (v17 | (v12 << 6)), v20);
      sub_1BF38E60C(v20, v21);
      sub_1BF38E60C(v21, v11);
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

void *sub_1BF438FEC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1BF439144(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}