uint64_t sub_1E5B70B2C()
{
  v17 = v0;

  if (qword_1ED03E1D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 72);
  v2 = sub_1E5BF6594();
  __swift_project_value_buffer(v2, qword_1ED053DE0);
  v3 = v1;
  v4 = sub_1E5BF6574();
  v5 = sub_1E5BF71C4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 72);
  if (v6)
  {
    v8 = *(v0 + 80);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 67109378;
    *(v9 + 4) = v8;
    *(v9 + 8) = 2080;
    swift_getErrorValue();
    v11 = sub_1E5BF7454();
    v13 = sub_1E5B89CE4(v11, v12, &v16);

    *(v9 + 10) = v13;
    _os_log_impl(&dword_1E5B54000, v4, v5, "Failed to present toast confirmation with added status: %{BOOL}d, error: %s", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E6938270](v10, -1, -1);
    MEMORY[0x1E6938270](v9, -1, -1);
  }

  else
  {
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1E5B70D08(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 97);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6E314;

  return sub_1E5B708AC(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E5B70E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B70E74(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5B6E314;

  return sub_1E5B701D8(a1, v1 + 16, v4, v5, v6);
}

uint64_t sub_1E5B70F30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E238, &unk_1E5BF8A10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B70F98(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = *(v1 + 112);
  v7 = *(v1 + 120);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5B6E314;

  return sub_1E5B6FA84(a1, v1 + 16, v4, v5, v6, v7);
}

uint64_t objectdestroyTm_0(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1E5B710C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B6E314;

  return sub_1E5B6F580(a1, (v1 + 16));
}

uint64_t objectdestroy_3Tm(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t sub_1E5B711C4(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6D9A0;

  return sub_1E5B6F7C4(a1, v1 + 16, v4, v5);
}

unint64_t sub_1E5B71274()
{
  result = qword_1ED03E8A8;
  if (!qword_1ED03E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E8A8);
  }

  return result;
}

unint64_t sub_1E5B712CC()
{
  result = qword_1ED03E8B0;
  if (!qword_1ED03E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E8B0);
  }

  return result;
}

unint64_t sub_1E5B71324()
{
  result = qword_1ED03E8B8;
  if (!qword_1ED03E8B8)
  {
    type metadata accessor for StackButtonState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E8B8);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1E5B71398(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1E5B713E0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t get_enum_tag_for_layout_string_14FitnessActions18StackButtonFeatureV14TaskIdentifier33_849F923ECF76723D0306BF17E1AFAA7CLLO(uint64_t a1)
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

uint64_t sub_1E5B71460(uint64_t a1, unsigned int a2)
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

uint64_t sub_1E5B714A8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E5B714EC(uint64_t result, unsigned int a2)
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

unint64_t sub_1E5B71518()
{
  result = qword_1ED03E8C0;
  if (!qword_1ED03E8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E8C0);
  }

  return result;
}

void *sub_1E5B715D8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E8F8, &qword_1E5BF9598);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E900, &qword_1E5BF95A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E5B71778(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_1E5B71960(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a6 != 1)
      {
        return 0;
      }
    }

    else if (a6)
    {
      return 0;
    }
  }

  else
  {
    if (a3 != 2)
    {
      if (a3 == 3)
      {
        if (a6 == 3)
        {
          return (a4 ^ a1 ^ 1) & 1;
        }

        return 0;
      }

      return a6 == 4 && !(a5 | a4);
    }

    if (a6 != 2)
    {
      return 0;
    }
  }

  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  return sub_1E5BF7444();
}

uint64_t sub_1E5B71A20(uint64_t a1)
{
  sub_1E5B72C04(v1, &v7);
  if (v10 <= 1u)
  {
    v4 = v7;
    v5 = v8;
    v6 = v9;
    if (v10)
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    goto LABEL_7;
  }

  if (v10 == 2)
  {
    v4 = v7;
    v5 = v8;
    v6 = v9;
    v2 = 3;
LABEL_7:
    MEMORY[0x1E6937C10](v2);
    sub_1E5BF7244();
    return sub_1E5B6E230(&v4);
  }

  return MEMORY[0x1E6937C10](1);
}

uint64_t sub_1E5B71ADC()
{
  sub_1E5BF74B4();
  sub_1E5B71A20(v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B71B20(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5B71A20(v2);
  return sub_1E5BF7504();
}

__n128 SampleContentButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t SampleContentButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, char *a2, uint64_t *a3, uint64_t a4, int a5)
{
  LODWORD(v138) = a5;
  v139 = a4;
  v135 = a3;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E930, &qword_1E5BF95D0);
  v137 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v134 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v133 = &v123 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v123 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v127 = &v123 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
  v131 = *(v14 - 8);
  v15 = *(v131 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v132 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v123 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v129 = *(v19 - 8);
  v20 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v130 = (&v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v123 - v22;
  v24 = v5[3];
  v148 = v5[2];
  v149 = v24;
  v150 = v5[4];
  v25 = v5[1];
  v146 = *v5;
  v147 = v25;
  v27 = *a2;
  v26 = *(a2 + 1);
  v28 = type metadata accessor for SampleContentButtonState(0);
  v29 = &a2[v28[8]];
  v140 = v23;
  sub_1E5B5F864(v29, v23, &qword_1ED03E950, &unk_1E5BF95F0);
  sub_1E5B5F864(&a2[v28[9]], v18, &qword_1ED03E948, &qword_1E5BFD480);
  if (v138)
  {
    if (v138 == 1)
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v138 = v30[12];
      v31 = v30[16];
      v32 = v30[20];
      v33 = v134;
      v133 = &v134[v30[24]];
      v125 = v27;
      v141 = v27;
      v34 = v26;
      v142 = v26;
      swift_bridgeObjectRetain_n();
      sub_1E5BF7254();
      v145 = 2;
      sub_1E5B72C04(v143, &v141);
      sub_1E5B72C3C();
      sub_1E5BF7254();
      sub_1E5B72C90(v143);
      v35 = *MEMORY[0x1E6999B50];
      v36 = sub_1E5BF6E24();
      (*(*(v36 - 8) + 104))(&v33[v31], v35, v36);
      v37 = *MEMORY[0x1E6999B40];
      v38 = sub_1E5BF6E14();
      (*(*(v38 - 8) + 104))(&v33[v32], v37, v38);
      v126 = v18;
      v39 = v132;
      sub_1E5B5F864(v18, v132, &qword_1ED03E948, &qword_1E5BFD480);
      v40 = v130;
      sub_1E5B5F864(v140, v130, &qword_1ED03E950, &unk_1E5BF95F0);
      v41 = (*(v131 + 80) + 16) & ~*(v131 + 80);
      v42 = (v15 + *(v129 + 80) + v41) & ~*(v129 + 80);
      v43 = (v20 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
      v44 = (v43 + 87) & 0xFFFFFFFFFFFFFFF8;
      v45 = swift_allocObject();
      sub_1E5B5F8D4(v39, v45 + v41, &qword_1ED03E948, &qword_1E5BFD480);
      sub_1E5B5F8D4(v40, v45 + v42, &qword_1ED03E950, &unk_1E5BF95F0);
      v46 = (v45 + v43);
      v47 = v149;
      v46[2] = v148;
      v46[3] = v47;
      v46[4] = v150;
      v48 = v147;
      *v46 = v146;
      v46[1] = v48;
      v49 = (v45 + v44);
      *v49 = v125;
      v49[1] = v34;
      *(v45 + ((v44 + 23) & 0xFFFFFFFFFFFFFFF8)) = v139;
      v50 = v133;
      *v133 = &unk_1E5BF9630;
      *(v50 + 1) = v45;
      sub_1E5B74298(&v146, &v141);
      sub_1E5BF7094();
      v51 = v137;
      v52 = v33;
      v53 = v136;
      (*(v137 + 104))(v52, *MEMORY[0x1E6999AD8], v136);
      v54 = v135;
      v55 = *v135;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_1E5B7156C(0, v55[2] + 1, 1, v55);
      }

      v57 = v55[2];
      v56 = v55[3];
      v58 = v126;
      if (v57 >= v56 >> 1)
      {
        v122 = v126;
        v55 = sub_1E5B7156C((v56 > 1), v57 + 1, 1, v55);
        v58 = v122;
      }

      sub_1E5B5F804(v58, &qword_1ED03E948, &qword_1E5BFD480);
      sub_1E5B5F804(v140, &qword_1ED03E950, &unk_1E5BF95F0);
      v55[2] = v57 + 1;
      result = (*(v51 + 32))(v55 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v57, v134, v53);
      *v54 = v55;
      return result;
    }

    if (v139 > 1)
    {
      if (v139 == 2)
      {
        sub_1E5B5F804(v18, &qword_1ED03E948, &qword_1E5BFD480);
        sub_1E5B5F804(v140, &qword_1ED03E950, &unk_1E5BF95F0);
        v78 = v28[10];
        goto LABEL_26;
      }

      if (v139 == 3)
      {
        sub_1E5B5F804(v18, &qword_1ED03E948, &qword_1E5BFD480);
        sub_1E5B5F804(v140, &qword_1ED03E950, &unk_1E5BF95F0);
        v78 = v28[11];
LABEL_26:
        sub_1E5B5F804(&a2[v78], &qword_1ED03E5C0, &unk_1E5BF8A20);
        v116 = v28[7];
        v117 = sub_1E5BF6494();
        v118 = *(v117 - 8);
        (*(v118 + 16))(&a2[v78], &a2[v116], v117);
        (*(v118 + 56))(&a2[v78], 0, 1, v117);
        v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
        return (*(*(v119 - 8) + 56))(&a2[v78], 0, 1, v119);
      }

      sub_1E5B5F804(v18, &qword_1ED03E948, &qword_1E5BFD480);
      sub_1E5B5F804(v140, &qword_1ED03E950, &unk_1E5BF95F0);
      v120 = v28[11];
LABEL_29:
      sub_1E5B5F804(&a2[v120], &qword_1ED03E5C0, &unk_1E5BF8A20);
      v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
      return (*(*(v121 - 8) + 56))(&a2[v120], 1, 1, v121);
    }

    if (v139)
    {
      sub_1E5B5F804(v18, &qword_1ED03E948, &qword_1E5BFD480);
      sub_1E5B5F804(v140, &qword_1ED03E950, &unk_1E5BF95F0);
      v120 = v28[10];
      goto LABEL_29;
    }

    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v80 = v79[16];
    v81 = v79[20];
    v82 = v127;
    v83 = &v127[v79[24]];
    v141 = v27;
    v142 = v26;
    swift_bridgeObjectRetain_n();
    sub_1E5BF7254();
    v145 = 1;
    sub_1E5B72C04(v143, &v141);
    v139 = sub_1E5B72C3C();
    sub_1E5BF7254();
    sub_1E5B72C90(v143);
    v84 = *MEMORY[0x1E6999B50];
    v85 = sub_1E5BF6E24();
    v86 = *(v85 - 8);
    v87 = *(v86 + 104);
    LODWORD(v138) = v84;
    v134 = v85;
    v133 = v87;
    v132 = v86 + 104;
    (v87)(&v82[v80], v84);
    v88 = *MEMORY[0x1E6999B40];
    v89 = sub_1E5BF6E14();
    v90 = *(v89 - 8);
    v91 = *(v90 + 104);
    LODWORD(v131) = v88;
    v130 = v91;
    v129 = v90 + 104;
    (v91)(&v82[v81], v88, v89);
    v92 = swift_allocObject();
    v93 = v149;
    *(v92 + 48) = v148;
    *(v92 + 64) = v93;
    *(v92 + 80) = v150;
    v94 = v147;
    *(v92 + 16) = v146;
    *(v92 + 32) = v94;
    *(v92 + 96) = v27;
    *(v92 + 104) = v26;
    *v83 = &unk_1E5BF9650;
    *(v83 + 1) = v92;
    sub_1E5B74298(&v146, &v141);
    sub_1E5BF7094();
    v95 = v82;
    v96 = *MEMORY[0x1E6999AD8];
    v97 = v136;
    v125 = *(v137 + 104);
    v125(v95, v96, v136);
    v98 = *v135;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v98 = sub_1E5B7156C(0, v98[2] + 1, 1, v98);
    }

    v100 = v98[2];
    v99 = v98[3];
    v126 = v18;
    if (v100 >= v99 >> 1)
    {
      v98 = sub_1E5B7156C((v99 > 1), v100 + 1, 1, v98);
    }

    v98[2] = v100 + 1;
    v101 = *(v137 + 32);
    v124 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v102 = *(v137 + 72);
    v103 = v127;
    v137 += 32;
    v127 = v101;
    (v101)(v98 + v124 + v102 * v100, v103, v97);
    v104 = v79[16];
    v105 = v79[20];
    v106 = v128;
    v107 = &v128[v79[24]];
    v144 = 0;
    memset(v143, 0, sizeof(v143));
    v145 = 3;
    sub_1E5B72C04(v143, &v141);
    sub_1E5BF7254();
    sub_1E5B72C90(v143);
    v108 = &v106[v104];
    v109 = v136;
    (v133)(v108, v138, v134);
    (v130)(&v106[v105], v131, v89);
    v110 = swift_allocObject();
    v111 = v149;
    v110[3] = v148;
    v110[4] = v111;
    v110[5] = v150;
    v112 = v147;
    v110[1] = v146;
    v110[2] = v112;
    *v107 = &unk_1E5BF9660;
    *(v107 + 1) = v110;
    sub_1E5B74298(&v146, &v141);
    sub_1E5BF7094();
    v125(v106, v96, v109);
    v114 = v98[2];
    v113 = v98[3];
    if (v114 >= v113 >> 1)
    {
      v98 = sub_1E5B7156C((v113 > 1), v114 + 1, 1, v98);
    }

    v115 = v135;
    sub_1E5B5F804(v126, &qword_1ED03E948, &qword_1E5BFD480);
    sub_1E5B5F804(v140, &qword_1ED03E950, &unk_1E5BF95F0);
    v98[2] = v114 + 1;
    result = (v127)(v98 + v124 + v114 * v102, v128, v109);
    *v115 = v98;
  }

  else
  {
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v61 = v60[16];
    v62 = v60[20];
    v63 = v133;
    v64 = &v133[v60[24]];
    v141 = v27;
    v142 = v26;

    sub_1E5BF7254();
    v145 = 0;
    sub_1E5B72C04(v143, &v141);
    sub_1E5B72C3C();
    sub_1E5BF7254();
    sub_1E5B72C90(v143);
    v65 = *MEMORY[0x1E6999B50];
    v66 = sub_1E5BF6E24();
    (*(*(v66 - 8) + 104))(&v63[v61], v65, v66);
    v67 = *MEMORY[0x1E6999B40];
    v68 = sub_1E5BF6E14();
    (*(*(v68 - 8) + 104))(&v63[v62], v67, v68);
    v69 = swift_allocObject();
    v70 = v149;
    *(v69 + 48) = v148;
    *(v69 + 64) = v70;
    *(v69 + 80) = v150;
    v71 = v147;
    *(v69 + 16) = v146;
    *(v69 + 32) = v71;
    *(v69 + 96) = v139;
    *v64 = &unk_1E5BF9640;
    *(v64 + 1) = v69;
    sub_1E5B74298(&v146, &v141);
    sub_1E5BF7094();
    v72 = v137;
    v73 = v136;
    (*(v137 + 104))(v63, *MEMORY[0x1E6999AD8], v136);
    v74 = v135;
    v75 = *v135;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = sub_1E5B7156C(0, v75[2] + 1, 1, v75);
    }

    v77 = v75[2];
    v76 = v75[3];
    if (v77 >= v76 >> 1)
    {
      v75 = sub_1E5B7156C((v76 > 1), v77 + 1, 1, v75);
    }

    sub_1E5B5F804(v18, &qword_1ED03E948, &qword_1E5BFD480);
    sub_1E5B5F804(v140, &qword_1ED03E950, &unk_1E5BF95F0);
    v75[2] = v77 + 1;
    result = (*(v72 + 32))(v75 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v77, v63, v73);
    *v74 = v75;
  }

  return result;
}

unint64_t sub_1E5B72C3C()
{
  result = qword_1ED03E958;
  if (!qword_1ED03E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E958);
  }

  return result;
}

uint64_t sub_1E5B72CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = sub_1E5BF7084();
  v4[3] = sub_1E5BF7074();
  v10 = (*(a2 + 64) + **(a2 + 64));
  v8 = swift_task_alloc();
  v4[4] = v8;
  *v8 = v4;
  v8[1] = sub_1E5B6F688;

  return v10(a3, a4);
}

uint64_t sub_1E5B72DE0(uint64_t a1, int **a2)
{
  v2[2] = sub_1E5BF7084();
  v2[3] = sub_1E5BF7074();
  v6 = (*a2 + **a2);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E5B6F8E4;

  return v6();
}

uint64_t sub_1E5B72EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a3;
  *(v3 + 80) = sub_1E5BF7084();
  *(v3 + 88) = sub_1E5BF7074();
  v5 = *(a2 + 32);
  *(v3 + 96) = *(a2 + 48);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  *v6 = v3;
  v6[1] = sub_1E5B72FFC;

  return v8();
}

uint64_t sub_1E5B72FFC()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {
    *(v2 + 16) = 3;
    *(v2 + 24) = 2;
    v3 = swift_task_alloc();
    *(v2 + 152) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E9A0, &qword_1E5BF9838);
    *v3 = v2;
    v3[1] = sub_1E5B735B8;

    return MEMORY[0x1EEE01A40](v2 + 16, v4);
  }

  else
  {
    v7 = (*(v2 + 96) + **(v2 + 96));
    v5 = swift_task_alloc();
    *(v2 + 128) = v5;
    *v5 = v2;
    v5[1] = sub_1E5B73234;

    return v7();
  }
}

uint64_t sub_1E5B73234()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {
    *(v2 + 32) = 2;
    v3 = v2 + 32;
    *(v2 + 40) = 2;
    v4 = swift_task_alloc();
    *(v2 + 160) = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E9A0, &qword_1E5BF9838);
    *v4 = v2;
    v4[1] = sub_1E5B73764;
  }

  else
  {
    *(v2 + 48) = *(v2 + 72);
    v3 = v2 + 48;
    *(v2 + 56) = 1;
    v6 = swift_task_alloc();
    *(v2 + 144) = v6;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E9A0, &qword_1E5BF9838);
    *v6 = v2;
    v6[1] = sub_1E5B73418;
  }

  return MEMORY[0x1EEE01A40](v3, v5);
}

uint64_t sub_1E5B73418()
{

  v1 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B73554, v1, v0);
}

uint64_t sub_1E5B73554()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5B735B8()
{

  v1 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B736F4, v1, v0);
}

uint64_t sub_1E5B736F4()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5B73764()
{

  v1 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B738A0, v1, v0);
}

uint64_t sub_1E5B738A0()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5B73910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  v7[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0);
  v7[9] = swift_task_alloc();
  v7[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480);
  v7[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E960, &qword_1E5BFD4B0);
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  sub_1E5BF7084();
  v7[15] = sub_1E5BF7074();
  v10 = sub_1E5BF7054();
  v7[16] = v10;
  v7[17] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E5B73A90, v10, v9);
}

uint64_t sub_1E5B73A90()
{
  sub_1E5B5F864(v0[2], v0[11], &qword_1ED03E948, &qword_1E5BFD480);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v11 = v0[11];

    v12 = &qword_1ED03E948;
    v13 = &qword_1E5BFD480;
    v14 = v11;
    goto LABEL_7;
  }

  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E968, &unk_1E5BF9620) + 48);
  (*(v2 + 32))(v1, v4, v3);
  v6 = sub_1E5BF6464();
  v7 = *(*(v6 - 8) + 8);
  v7(v4 + v5, v6);
  v8 = sub_1E5BF6554();
  v0[18] = v8;
  if (!v8)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    goto LABEL_9;
  }

  v9 = v8;
  sub_1E5B5F864(v0[3], v0[9], &qword_1ED03E950, &unk_1E5BF95F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v0[13] + 8))(v0[14], v0[12]);

LABEL_9:

      goto LABEL_10;
    }

    v22 = v0[9];
    (*(v0[13] + 8))(v0[14], v0[12]);

    v12 = &qword_1ED03E950;
    v13 = &unk_1E5BF95F0;
    v14 = v22;
LABEL_7:
    sub_1E5B5F804(v14, v12, v13);
LABEL_10:

    v15 = v0[1];

    return v15();
  }

  if (EnumCaseMultiPayload)
  {
    v23 = v0[9];
    v18 = *(v23 + 8);
    v19 = *(v23 + 24);
    v20 = *(v23 + 32);
    v21 = *(v23 + 40);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E970, &qword_1E5BFD440);
    v7(v23 + *(v24 + 48), v6);
  }

  else
  {
    v17 = v0[9];
    v18 = *(v17 + 8);
    v19 = *(v17 + 24);
    v20 = *(v17 + 32);
    v21 = *(v17 + 40);
  }

  v0[20] = v19;
  v0[21] = v20;
  v0[19] = v18;
  v30 = (*(v0[4] + 16) + **(v0[4] + 16));
  v25 = swift_task_alloc();
  v0[22] = v25;
  *v25 = v0;
  v25[1] = sub_1E5B73E1C;
  v26 = v0[6];
  v27 = v0[7];
  v28 = v0[5];
  v29.n128_u64[0] = 0;

  return v30(v28, v26, v27, v21, v9, v29);
}

uint64_t sub_1E5B73E1C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1E5B74004;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1E5B73F54;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E5B73F54()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5B74004()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5B740E8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E948, &qword_1E5BFD480) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E950, &unk_1E5BF95F0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 87) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v1 + v10);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v11);
  v16 = swift_task_alloc();
  *(v2 + 16) = v16;
  *v16 = v2;
  v16[1] = sub_1E5B6D9A0;

  return sub_1E5B73910(a1, v1 + v5, v1 + v8, v1 + v9, v13, v14, v15);
}

uint64_t sub_1E5B742E4(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5B6E314;

  return sub_1E5B72EE8(a1, v1 + 16, v4);
}

uint64_t sub_1E5B7438C(uint64_t a1)
{
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5B6E314;

  return sub_1E5B72CC0(a1, v1 + 16, v4, v5);
}

uint64_t sub_1E5B74438(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B6E314;

  return sub_1E5B72DE0(a1, (v1 + 16));
}

unint64_t sub_1E5B744D4()
{
  result = qword_1ED03E978;
  if (!qword_1ED03E978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E978);
  }

  return result;
}

unint64_t sub_1E5B7452C()
{
  result = qword_1ED03E980;
  if (!qword_1ED03E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E980);
  }

  return result;
}

unint64_t sub_1E5B74584()
{
  result = qword_1ED03E988;
  if (!qword_1ED03E988)
  {
    type metadata accessor for SampleContentButtonState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E988);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_14FitnessActions26SampleContentButtonFeatureV14TaskIdentifier33_E117A2A71084C6892795640FD1E3F9C1LLO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E5B7461C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5B74658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5B746A4(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1E5B746E0()
{
  result = qword_1ED03E990;
  if (!qword_1ED03E990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E990);
  }

  return result;
}

uint64_t sub_1E5B74734(uint64_t a1, uint64_t a2)
{
  sub_1E5B72C04(a1, v9);
  sub_1E5B72C04(a2, v11);
  if (v10 > 1u)
  {
    if (v10 != 2)
    {
      if (v12 == 3)
      {
        v4 = vorrq_s8(*&v11[8], *&v11[24]);
        if (!(*&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) | *v11))
        {
          sub_1E5B72C90(v9);
          v3 = 1;
          return v3 & 1;
        }
      }

      goto LABEL_12;
    }

    sub_1E5B72C04(v9, v8);
    if (v12 != 2)
    {
LABEL_4:
      sub_1E5B6E230(v8);
LABEL_12:
      sub_1E5B5F804(v9, &qword_1ED03E998, &qword_1E5BF9830);
      v3 = 0;
      return v3 & 1;
    }
  }

  else if (v10)
  {
    sub_1E5B72C04(v9, v8);
    if (v12 != 1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_1E5B72C04(v9, v8);
    if (v12)
    {
      goto LABEL_4;
    }
  }

  v6[0] = *v11;
  v6[1] = *&v11[16];
  v7 = *&v11[32];
  v3 = MEMORY[0x1E6937980](v8, v6);
  sub_1E5B6E230(v6);
  sub_1E5B6E230(v8);
  sub_1E5B72C90(v9);
  return v3 & 1;
}

uint64_t sub_1E5B74884()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x6570704177656976;
  }
}

uint64_t sub_1E5B748CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001E5C07830 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5B749B4(uint64_t a1)
{
  v2 = sub_1E5B74DD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B749F0(uint64_t a1)
{
  v2 = sub_1E5B74DD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B74A2C(uint64_t a1)
{
  v2 = sub_1E5B74E2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B74A68(uint64_t a1)
{
  v2 = sub_1E5B74E2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B74AA4(uint64_t a1)
{
  v2 = sub_1E5B74E80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B74AE0(uint64_t a1)
{
  v2 = sub_1E5B74E80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviewButtonAction.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E9A8, &qword_1E5BF9850);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E9B0, &qword_1E5BF9858);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E9B8, &qword_1E5BF9860);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B74DD8();
  sub_1E5BF7524();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1E5B74E2C();
    sub_1E5BF7394();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1E5B74E80();
    sub_1E5BF7394();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_1E5B74DD8()
{
  result = qword_1ED03E9C0;
  if (!qword_1ED03E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9C0);
  }

  return result;
}

unint64_t sub_1E5B74E2C()
{
  result = qword_1ED03E9C8;
  if (!qword_1ED03E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9C8);
  }

  return result;
}

unint64_t sub_1E5B74E80()
{
  result = qword_1ED03E9D0;
  if (!qword_1ED03E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9D0);
  }

  return result;
}

uint64_t PreviewButtonAction.hashValue.getter(char a1)
{
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](a1 & 1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B74F60@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E5B74FAC(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1E5B74FAC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EA18, &qword_1E5BF9BD8);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EA20, &qword_1E5BF9BE0);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED03EA28, &qword_1E5BF9BE8);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B74DD8();
  v11 = v26;
  sub_1E5BF7514();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1E5BF7374();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_1E5B7FB0C();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_1E5BF7284();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
    *v19 = &type metadata for PreviewButtonAction;
    sub_1E5BF72D4();
    sub_1E5BF7274();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1E5B74E2C();
    sub_1E5BF72C4();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1E5B74E80();
    sub_1E5BF72C4();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_1E5B7546C()
{
  result = qword_1ED03E9D8;
  if (!qword_1ED03E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreviewLoadError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewLoadError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E5B75644()
{
  result = qword_1ED03E9E0;
  if (!qword_1ED03E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9E0);
  }

  return result;
}

unint64_t sub_1E5B7569C()
{
  result = qword_1ED03E9E8;
  if (!qword_1ED03E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9E8);
  }

  return result;
}

unint64_t sub_1E5B756F4()
{
  result = qword_1ED03E9F0;
  if (!qword_1ED03E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9F0);
  }

  return result;
}

unint64_t sub_1E5B7574C()
{
  result = qword_1ED03E9F8;
  if (!qword_1ED03E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E9F8);
  }

  return result;
}

unint64_t sub_1E5B757A4()
{
  result = qword_1ED03EA00;
  if (!qword_1ED03EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EA00);
  }

  return result;
}

unint64_t sub_1E5B757FC()
{
  result = qword_1ED03EA08;
  if (!qword_1ED03EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EA08);
  }

  return result;
}

unint64_t sub_1E5B75854()
{
  result = qword_1ED03EA10;
  if (!qword_1ED03EA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EA10);
  }

  return result;
}

uint64_t PreviewButtonEnvironment.init(resolvePreviewConfiguration:presentPreviewPlayer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1E5B758D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E5B75918(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E5B75960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5B759B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB40, qword_1E5BF9D30);
  sub_1E5B5FC8C(&qword_1EE2C6268, &qword_1ED03EB40, qword_1E5BF9D30, MEMORY[0x1E6999B78]);

  return sub_1E5BF6614();
}

uint64_t sub_1E5B75A58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB48, &qword_1E5BF9D48);
  sub_1E5BF6C54();
  return v1;
}

uint64_t sub_1E5B75AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  sub_1E5B76870();
  swift_getFunctionTypeMetadata1();
  return sub_1E5BF6524();
}

uint64_t (*sub_1E5B75B4C(uint64_t a1))(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1E5B76870();
  swift_getFunctionTypeMetadata1();
  sub_1E5BF6544();
  sub_1E5BF6534();
  v3 = swift_allocObject();
  v4 = *(a1 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 32) = v6;
  return sub_1E5B78658;
}

uint64_t AccountButton.init(store:contactDataProvider:avatarViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *a9 = sub_1E5B62F34;
  *(a9 + 8) = v17;
  *(a9 + 16) = 0;

  a3(v18);
  type metadata accessor for AccountButtonContactDataProvider(0);
  sub_1E5BF6C44();
  *(a9 + 24) = v21;
  *(a9 + 32) = v22;
  type metadata accessor for AccountButton(0, a7, a8, v19);
  sub_1E5B75AA8(a5, a6, a7, a8);
}

uint64_t AccountButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v67 = a1;
  v75 = *(a1 - 8);
  v73 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v74 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v4 + 16);
  v6 = sub_1E5BF66E4();
  v7 = *(a1 + 24);
  v93 = v7;
  v94 = MEMORY[0x1E697E040];
  v66 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x1E6981CD8];
  v85 = v5;
  v86 = MEMORY[0x1E6981CD8];
  v10 = v5;
  v72 = v5;
  v87 = v6;
  v88 = v6;
  v11 = MEMORY[0x1E6981CD0];
  v89 = v7;
  v90 = MEMORY[0x1E6981CD0];
  v71 = v7;
  v91 = WitnessTable;
  v92 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1E5BF71F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAB0, &qword_1E5BF9C58);
  sub_1E5BF6874();
  sub_1E5BF6BD4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAB8, &qword_1E5BF9C60);
  v70 = sub_1E5BF66E4();
  v85 = v10;
  v86 = v9;
  v87 = v6;
  v88 = v6;
  v89 = v7;
  v90 = v11;
  v91 = WitnessTable;
  v92 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v12 = swift_getWitnessTable();
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC8, &qword_1E5BF9C70);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAD0, &qword_1E5BF9C78);
  v16 = sub_1E5B7656C();
  v85 = v9;
  v86 = v11;
  v17 = swift_getOpaqueTypeConformance2();
  v18 = sub_1E5B76768();
  v85 = v13;
  v86 = v14;
  v87 = v15;
  v88 = v16;
  v89 = v17;
  v90 = v18;
  v19 = swift_getOpaqueTypeConformance2();
  v82 = v12;
  v83 = v19;
  v81 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v21 = sub_1E5B5FC8C(&qword_1ED03EB30, &qword_1ED03EAB8, &qword_1E5BF9C60, MEMORY[0x1E697DDB0]);
  v79 = v20;
  v80 = v21;
  v59 = swift_getWitnessTable();
  v22 = sub_1E5BF6CB4();
  v65 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v57 = &v56 - v23;
  v24 = swift_getWitnessTable();
  v66 = v22;
  v85 = v22;
  v86 = MEMORY[0x1E69E6370];
  v62 = v24;
  v87 = v24;
  v88 = MEMORY[0x1E69E6388];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v60 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v61 = &v56 - v28;
  v29 = v75;
  v30 = v74;
  v31 = v68;
  v32 = v67;
  v58 = *(v75 + 16);
  v58(v74, v68, v67, v27);
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v34 = swift_allocObject();
  v35 = v72;
  v36 = v71;
  *(v34 + 16) = v72;
  *(v34 + 24) = v36;
  v37 = v29 + 32;
  v38 = *(v29 + 32);
  v75 = v37;
  v38(v34 + v33, v30, v32);
  v39 = v36;
  v40 = v57;
  v76 = v35;
  v77 = v39;
  v78 = v31;
  sub_1E5BF6C84();
  v41 = sub_1E5B75A58();
  swift_getKeyPath();
  v85 = v41;
  sub_1E5B78108();
  sub_1E5BF64D4();

  v42 = *(v41 + 16);
  v43 = v42;

  if (v42)
  {
  }

  LOBYTE(v85) = v42 != 0;
  v44 = v74;
  (v58)(v74, v31, v32);
  v45 = swift_allocObject();
  v46 = v71;
  *(v45 + 16) = v72;
  *(v45 + 24) = v46;
  v38(v45 + v33, v44, v32);
  v47 = v60;
  v48 = v66;
  v49 = MEMORY[0x1E69E6370];
  v50 = v62;
  v51 = MEMORY[0x1E69E6388];
  sub_1E5BF6B54();

  (*(v65 + 8))(v40, v48);
  v85 = v48;
  v86 = v49;
  v87 = v50;
  v88 = v51;
  swift_getOpaqueTypeConformance2();
  v52 = v61;
  v53 = OpaqueTypeMetadata2;
  sub_1E5B64D48();
  v54 = *(v63 + 8);
  v54(v47, v53);
  sub_1E5B64D48();
  return (v54)(v52, v53);
}

unint64_t sub_1E5B7656C()
{
  result = qword_1ED03EAD8;
  if (!qword_1ED03EAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
    sub_1E5B765F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EAD8);
  }

  return result;
}

unint64_t sub_1E5B765F8()
{
  result = qword_1ED03EAE0;
  if (!qword_1ED03EAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAE8, &qword_1E5BF9C80);
    sub_1E5B766B0();
    sub_1E5B5FC8C(&qword_1ED03EB08, &qword_1ED03EB10, &qword_1E5BF9C90, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EAE0);
  }

  return result;
}

unint64_t sub_1E5B766B0()
{
  result = qword_1ED03EAF0;
  if (!qword_1ED03EAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAF8, &qword_1E5BF9C88);
    sub_1E5B5FC8C(&qword_1EE2C62F0, &qword_1ED03EB00, &qword_1E5C042E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EAF0);
  }

  return result;
}

unint64_t sub_1E5B76768()
{
  result = qword_1ED03EB18;
  if (!qword_1ED03EB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAD0, &qword_1E5BF9C78);
    sub_1E5B7656C();
    sub_1E5B5FC8C(&qword_1ED03EB20, &qword_1ED03EB28, &unk_1E5BFAD40, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EB18);
  }

  return result;
}

uint64_t sub_1E5B76820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AccountButton(0, a2, a3, a4);
  sub_1E5B759B8();
  sub_1E5BF6E44();
}

unint64_t sub_1E5B76870()
{
  result = qword_1EE2C6200;
  if (!qword_1EE2C6200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE2C6200);
  }

  return result;
}

uint64_t sub_1E5B768BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for AccountButton(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1E5B76820(v9, v5, v6, v7);
}

uint64_t sub_1E5B76940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a1;
  v37 = a4;
  v6 = sub_1E5BF66E4();
  v55 = a3;
  v56 = MEMORY[0x1E697E040];
  v36 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  v47 = a2;
  v48 = MEMORY[0x1E6981CD8];
  v49 = v6;
  v50 = v6;
  v51 = a3;
  v52 = MEMORY[0x1E6981CD0];
  v53 = WitnessTable;
  v54 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1E5BF71F4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAB0, &qword_1E5BF9C58);
  v32 = sub_1E5BF6874();
  v8 = sub_1E5BF6BD4();
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAB8, &qword_1E5BF9C60);
  v11 = sub_1E5BF66E4();
  v35 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v30 - v15;
  v38 = a2;
  v39 = a3;
  v40 = v31;
  v47 = a2;
  v48 = MEMORY[0x1E6981CD8];
  v49 = v6;
  v50 = v6;
  v51 = a3;
  v52 = MEMORY[0x1E6981CD0];
  v53 = WitnessTable;
  v54 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = swift_getWitnessTable();
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC8, &qword_1E5BF9C70);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAD0, &qword_1E5BF9C78);
  v20 = sub_1E5B7656C();
  v47 = MEMORY[0x1E6981CD8];
  v48 = MEMORY[0x1E6981CD0];
  v21 = swift_getOpaqueTypeConformance2();
  v22 = sub_1E5B76768();
  v47 = v17;
  v48 = v18;
  v49 = v19;
  v50 = v20;
  v51 = v21;
  v52 = v22;
  v23 = swift_getOpaqueTypeConformance2();
  v44 = v16;
  v45 = v23;
  v24 = swift_getWitnessTable();
  sub_1E5BF6BC4();
  v43 = v24;
  v25 = swift_getWitnessTable();
  sub_1E5B7855C();
  sub_1E5BF6B84();
  (*(v34 + 8))(v10, v8);
  v26 = sub_1E5B5FC8C(&qword_1ED03EB30, &qword_1ED03EAB8, &qword_1E5BF9C60, MEMORY[0x1E697DDB0]);
  v41 = v25;
  v42 = v26;
  swift_getWitnessTable();
  v27 = v33;
  sub_1E5B64D48();
  v28 = *(v35 + 8);
  v28(v13, v11);
  sub_1E5B64D48();
  return (v28)(v27, v11);
}

uint64_t sub_1E5B76E54@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v106 = a3;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAC8, &qword_1E5BF9C70);
  v98 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v97 = &v89 - v5;
  v92 = sub_1E5BF69B4();
  v6 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAB0, &qword_1E5BF9C58);
  v95 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v89 - v10;
  v91 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v90 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5BF66E4();
  v129 = a2;
  v130 = MEMORY[0x1E697E040];
  WitnessTable = swift_getWitnessTable();
  *&v122 = a1;
  *(&v122 + 1) = MEMORY[0x1E6981CD8];
  *&v123 = v13;
  *(&v123 + 1) = v13;
  v108 = v13;
  *&v124 = a2;
  *(&v124 + 1) = MEMORY[0x1E6981CD0];
  *&v125 = WitnessTable;
  *(&v125 + 1) = WitnessTable;
  v109 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v94 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v17 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v89 - v19;
  v20 = sub_1E5BF71F4();
  v96 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v93 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v100 = &v89 - v23;
  v104 = v9;
  v103 = sub_1E5BF6874();
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v89 - v24;
  v107 = a1;
  v110 = a2;
  v26 = type metadata accessor for AccountButton(0, a1, a2, v25);
  sub_1E5B759B8();
  swift_getKeyPath();
  sub_1E5BF6E34();

  if (v128 == 1)
  {
    v99 = v20;
    v27 = v107;
    v28 = sub_1E5B75A58();
    swift_getKeyPath();
    *&v122 = v28;
    sub_1E5B78108();
    sub_1E5BF64D4();

    v29 = *(v28 + 16);
    v30 = v29;

    if (v29)
    {
      v31 = sub_1E5B75B4C(v26);
      v32 = v90;
      v31(v30);

      v33 = sub_1E5BF6D74();
      v98 = &v89;
      MEMORY[0x1EEE9AC00](v33);
      v34 = v110;
      MEMORY[0x1EEE9AC00](v35);
      v36 = swift_checkMetadataState();
      v37 = v109;
      v38 = MEMORY[0x1E6981CD8];
      sub_1E5BF6B64();

      (*(v91 + 8))(v32, v27);
      *&v122 = v27;
      *(&v122 + 1) = v38;
      *&v123 = v36;
      *(&v123 + 1) = v36;
      *&v124 = v34;
      *(&v124 + 1) = MEMORY[0x1E6981CD0];
      *&v125 = v37;
      *(&v125 + 1) = v37;
      swift_getOpaqueTypeConformance2();
      v39 = v89;
      sub_1E5B64D48();
      v40 = v94;
      v41 = *(v94 + 8);
      v41(v17, OpaqueTypeMetadata2);
      sub_1E5B64D48();
      v41(v39, OpaqueTypeMetadata2);
      v42 = v27;
      v43 = v93;
      (*(v40 + 32))(v93, v17, OpaqueTypeMetadata2);
      v44 = 0;
    }

    else
    {
      v44 = 1;
      v42 = v27;
      v43 = v93;
      v40 = v94;
    }

    (*(v40 + 56))(v43, v44, 1, OpaqueTypeMetadata2);
    v64 = v96;
    v65 = v99;
    (*(v96 + 16))(v100, v43, v99);
    v66 = *(v64 + 8);
    v66(v43, v65);
    *&v122 = v42;
    v67 = MEMORY[0x1E6981CD8];
    *(&v122 + 1) = MEMORY[0x1E6981CD8];
    *&v123 = v108;
    *(&v123 + 1) = v108;
    *&v124 = v110;
    v68 = MEMORY[0x1E6981CD0];
    *(&v124 + 1) = MEMORY[0x1E6981CD0];
    *&v125 = v109;
    *(&v125 + 1) = v109;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v69 = swift_getWitnessTable();
    sub_1E5B64D48();
    v70 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
    v71 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAD0, &qword_1E5BF9C78);
    v72 = sub_1E5B7656C();
    *&v122 = v67;
    *(&v122 + 1) = v68;
    v73 = swift_getOpaqueTypeConformance2();
    v74 = sub_1E5B76768();
    v59 = v105;
    *&v122 = v70;
    *(&v122 + 1) = v105;
    *&v123 = v71;
    *(&v123 + 1) = v72;
    *&v124 = v73;
    *(&v124 + 1) = v74;
    v75 = swift_getOpaqueTypeConformance2();
    v76 = v101;
    sub_1E5BE14D8(v43, v65, v104, v69, v75);
    v66(v43, v65);
    v66(v100, v65);
    v62 = v76;
  }

  else
  {
    v45 = sub_1E5BF6BE4();
    sub_1E5BF6964();
    sub_1E5BF6984();

    v46 = v92;
    (*(v6 + 104))(v8, *MEMORY[0x1E6980EA8], v92);
    v47 = sub_1E5BF69C4();

    (*(v6 + 8))(v8, v46);
    KeyPath = swift_getKeyPath();
    v49 = sub_1E5BF6BB4();
    v50 = swift_getKeyPath();
    sub_1E5BF6D84();
    sub_1E5BF6674();
    *&v116 = v45;
    *(&v116 + 1) = KeyPath;
    *&v117 = v47;
    *(&v117 + 1) = v50;
    *&v118 = v49;
    sub_1E5BF6D74();
    v51 = v97;
    v52 = MEMORY[0x1E6981CD0];
    v53 = MEMORY[0x1E6981CD8];
    sub_1E5BF6834();
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAD0, &qword_1E5BF9C78);
    v56 = sub_1E5B7656C();
    *&v122 = v53;
    *(&v122 + 1) = v52;
    v57 = swift_getOpaqueTypeConformance2();
    v88 = sub_1E5B76768();
    v58 = v99;
    v59 = v105;
    sub_1E5BF6B74();
    (v98[1])(v51, v59);
    v124 = v118;
    v125 = v119;
    v126 = v120;
    v127 = v121;
    v122 = v116;
    v123 = v117;
    sub_1E5B785B0(&v122);
    *&v116 = v107;
    *(&v116 + 1) = MEMORY[0x1E6981CD8];
    *&v117 = v108;
    *(&v117 + 1) = v108;
    *&v118 = v110;
    *(&v118 + 1) = MEMORY[0x1E6981CD0];
    *&v119 = v109;
    *(&v119 + 1) = v109;
    v115 = swift_getOpaqueTypeConformance2();
    v60 = swift_getWitnessTable();
    *&v116 = v54;
    *(&v116 + 1) = v59;
    *&v117 = v55;
    *(&v117 + 1) = v56;
    *&v118 = v57;
    *(&v118 + 1) = v88;
    v61 = swift_getOpaqueTypeConformance2();
    v62 = v101;
    v63 = v104;
    sub_1E5BE15D0(v58, v20, v104, v60, v61);
    (*(v95 + 8))(v58, v63);
  }

  *&v122 = v107;
  v77 = MEMORY[0x1E6981CD8];
  *(&v122 + 1) = MEMORY[0x1E6981CD8];
  *&v123 = v108;
  *(&v123 + 1) = v108;
  *&v124 = v110;
  v78 = MEMORY[0x1E6981CD0];
  *(&v124 + 1) = MEMORY[0x1E6981CD0];
  *&v125 = v109;
  *(&v125 + 1) = v109;
  v114 = swift_getOpaqueTypeConformance2();
  v79 = swift_getWitnessTable();
  v80 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAD0, &qword_1E5BF9C78);
  v82 = sub_1E5B7656C();
  *&v122 = v77;
  *(&v122 + 1) = v78;
  v83 = swift_getOpaqueTypeConformance2();
  v84 = sub_1E5B76768();
  *&v122 = v80;
  *(&v122 + 1) = v59;
  *&v123 = v81;
  *(&v123 + 1) = v82;
  *&v124 = v83;
  *(&v124 + 1) = v84;
  v85 = swift_getOpaqueTypeConformance2();
  v112 = v79;
  v113 = v85;
  v86 = v103;
  swift_getWitnessTable();
  sub_1E5B64D48();
  return (*(v102 + 8))(v62, v86);
}

uint64_t sub_1E5B77D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1E5BF66E4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v14 - v10;
  sub_1E5BF6D84();
  sub_1E5BF6B14();
  v14[0] = a3;
  v14[1] = MEMORY[0x1E697E040];
  swift_getWitnessTable();
  sub_1E5B64D48();
  v12 = *(v6 + 8);
  v12(v8, v5);
  sub_1E5B64D48();
  return (v12)(v11, v5);
}

uint64_t sub_1E5B77F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v12[3] = *(a1 + 48);
  v12[4] = v5;
  v13 = *(a1 + 80);
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = v4;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAD0, &qword_1E5BF9C78) + 36);
  sub_1E5BF6D54();
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB28, &unk_1E5BFAD40) + 56)) = 256;
  v8 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v8;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  return sub_1E5B78690(v12, v11);
}

uint64_t sub_1E5B77FF4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for AccountButton(0, a4, a5, a4);
  sub_1E5B759B8();
  sub_1E5BF6E44();
}

id sub_1E5B78050@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E5B78108();
  sub_1E5BF64D4();

  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

void sub_1E5B780D8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1E5B86E54(v1);
}

unint64_t sub_1E5B78108()
{
  result = qword_1ED03EB38;
  if (!qword_1ED03EB38)
  {
    type metadata accessor for AccountButtonContactDataProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EB38);
  }

  return result;
}

uint64_t objectdestroy_4Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for AccountButton(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (v4 + ((*(*v5 + 80) + 32) & ~*(*v5 + 80)));
  sub_1E5B5C0A8(*v6, v6[1]);

  v7 = v5[12];
  sub_1E5B76870();
  swift_getFunctionTypeMetadata1();
  v8 = sub_1E5BF6544();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1E5B7828C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for AccountButton(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_1E5B77FF4(a1, a2, v10, v7, v8);
}

void sub_1E5B7836C(uint64_t a1)
{
  sub_1E5B78454(319);
  if (v1 <= 0x3F)
  {
    sub_1E5B784F8(319);
    if (v2 <= 0x3F)
    {
      sub_1E5B76870();
      swift_getFunctionTypeMetadata1();
      sub_1E5BF6544();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E5B78454(uint64_t a1)
{
  if (!qword_1EE2C63E8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EB40, qword_1E5BF9D30);
    sub_1E5B5FC8C(&qword_1EE2C6268, &qword_1ED03EB40, qword_1E5BF9D30, MEMORY[0x1E6999B78]);
    v1 = sub_1E5BF6624();
    if (!v2)
    {
      atomic_store(v1, qword_1EE2C63E8);
    }
  }
}

void sub_1E5B784F8(uint64_t a1)
{
  if (!qword_1EE2C62C8)
  {
    type metadata accessor for AccountButtonContactDataProvider(255);
    v1 = sub_1E5BF6C64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C62C8);
    }
  }
}

unint64_t sub_1E5B7855C()
{
  result = qword_1ED03EB50;
  if (!qword_1ED03EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EB50);
  }

  return result;
}

uint64_t sub_1E5B785B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B78658(uint64_t a1)
{
  v2 = *(v1 + 32);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1E5B78690(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAC0, &qword_1E5BF9C68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ViewStackButtonEnvironment.init(resolveUpNextCount:navigateToStack:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t CreatePlanAlertEnvironment.init(requireWorkoutPlan:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E5B7875C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1E5B787A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5B787F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for PreviewButtonFeature.TaskIdentifier(0, a3, a4, a4);
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v8(v15, a1, v6);
  v8(v17, a2, v6);
  if (!v16)
  {
    v8(v14, v15, v6);
    if (!v19)
    {
      goto LABEL_4;
    }

LABEL_6:
    sub_1E5B6E230(v14);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(TupleTypeMetadata2 - 8) + 8))(v15, TupleTypeMetadata2);
    v9 = 0;
    return v9 & 1;
  }

  if (v16 != 1)
  {
    v8(v14, v15, v6);
    if (v19 == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  v8(v14, v15, v6);
  if (v19 != 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  v12[0] = v17[0];
  v12[1] = v17[1];
  v13 = v18;
  v9 = MEMORY[0x1E6937980](v14, v12);
  sub_1E5B6E230(v12);
  sub_1E5B6E230(v14);
  (*(v7 + 8))(v15, v6);
  return v9 & 1;
}

uint64_t sub_1E5B789D8(uint64_t a1, uint64_t a2)
{
  (*(*(a2 - 8) + 16))(&v8, v2, a2);
  if (v11)
  {
    v5 = v8;
    v6 = v9;
    v7 = v10;
    if (v11 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v5 = v8;
    v6 = v9;
    v7 = v10;
    v3 = 0;
  }

  MEMORY[0x1E6937C10](v3);
  sub_1E5BF7244();
  return sub_1E5B6E230(&v5);
}

uint64_t sub_1E5B78AA4(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5B789D8(v3, a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B78AF4(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  sub_1E5B789D8(v4, a2);
  return sub_1E5BF7504();
}

__n128 PreviewButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t PreviewButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  LODWORD(v84) = a4;
  v77 = a3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  MEMORY[0x1EEE9AC00](v75);
  v9 = &v70 - v8;
  v10 = type metadata accessor for PreviewPlayerConfiguration(0);
  v71 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v72 = v11;
  v73 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v70 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB60, &qword_1E5BF9E68);
  v81 = *(v14 - 8);
  v82 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v70 - v15;
  v17 = a5;
  v18 = *(*(a5 + 16) - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v76 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v70 - v23;
  v25 = v5[1];
  v83 = *v5;
  v26 = v5[3];
  v78 = v5[2];
  v79 = v25;
  v80 = v26;
  v28 = v27;
  v29 = a2;
  v74 = *(v18 + 16);
  v74(&v70 - v23, a2, v27, v22);
  if (v84)
  {
    v31 = v83;
    v84 = v18;
    v32 = *(v17 + 24);
    v33 = type metadata accessor for PreviewButtonState(0, v28, v32, v30);
    sub_1E5B7934C(v29 + *(v33 + 40), v9);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      v50 = v28;
      if (EnumCaseMultiPayload)
      {
        v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB68, &unk_1E5BF9E70) + 48);
        v51 = v70;
        sub_1E5B793BC(v9, v70);
        v53 = sub_1E5BF6464();
        (*(*(v53 - 8) + 8))(&v9[v52], v53);
      }

      else
      {
        v51 = v70;
        sub_1E5B793BC(v9, v70);
      }

      v54 = v31;
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
      v83 = v55[12];
      v56 = v55[16];
      v57 = v55[20];
      v58 = v16;
      v59 = &v16[v55[24]];
      v60 = v50;
      sub_1E5BF72B4();
      v86 = 2;
      v62 = type metadata accessor for PreviewButtonFeature.TaskIdentifier(0, v50, v32, v61);
      swift_getWitnessTable();
      sub_1E5BF72B4();
      (*(*(v62 - 8) + 8))(v85, v62);
      v63 = *MEMORY[0x1E6999B50];
      v64 = sub_1E5BF6E24();
      (*(*(v64 - 8) + 104))(&v58[v56], v63, v64);
      v65 = v51;
      v66 = v73;
      sub_1E5B793BC(v65, v73);
      v67 = (*(v71 + 80) + 64) & ~*(v71 + 80);
      v68 = swift_allocObject();
      v68[2] = v60;
      v68[3] = v32;
      v68[4] = v54;
      v69 = v78;
      v68[5] = v79;
      v68[6] = v69;
      v68[7] = v80;
      sub_1E5B793BC(v66, v68 + v67);
      *v59 = &unk_1E5BF9E88;
      *(v59 + 1) = v68;

      sub_1E5B6C8B8(&type metadata for PreviewButtonAction);
      sub_1E5B6C8BC(&v58[v57]);
      (*(v81 + 104))(v58, *MEMORY[0x1E6999AD8], v82);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB70, &qword_1E5BF9E90);
      sub_1E5BF7034();
      return (*(v84 + 8))(v24, v60);
    }

    else if (EnumCaseMultiPayload == 2)
    {
      (*(v84 + 8))(v24, v28);
      return sub_1E5B79944(v9);
    }

    else
    {
      return (*(v84 + 8))(v24, v28);
    }
  }

  else
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v75 = v36[12];
    v37 = v36[16];
    v84 = v36[20];
    v73 = &v16[v36[24]];
    v38 = v28;
    v39 = *(v17 + 24);
    sub_1E5BF72B4();
    v86 = 0;
    v41 = type metadata accessor for PreviewButtonFeature.TaskIdentifier(0, v38, v39, v40);
    swift_getWitnessTable();
    sub_1E5BF72B4();
    (*(*(v41 - 8) + 8))(v85, v41);
    v42 = *MEMORY[0x1E6999B50];
    v43 = sub_1E5BF6E24();
    (*(*(v43 - 8) + 104))(&v16[v37], v42, v43);
    v44 = v76;
    (v74)(v76, v24, v38);
    v45 = (*(v18 + 80) + 64) & ~*(v18 + 80);
    v46 = swift_allocObject();
    *(v46 + 2) = v38;
    *(v46 + 3) = v39;
    v48 = v79;
    v47 = v80;
    *(v46 + 4) = v83;
    *(v46 + 5) = v48;
    *(v46 + 6) = v78;
    *(v46 + 7) = v47;
    (*(v18 + 32))(&v46[v45], v44, v38);
    v49 = v73;
    *v73 = &unk_1E5BF9EA0;
    *(v49 + 1) = v46;

    sub_1E5B6C8B8(&type metadata for PreviewButtonAction);
    sub_1E5B6C8BC(&v16[v84]);
    (*(v81 + 104))(v16, *MEMORY[0x1E6999AD8], v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB70, &qword_1E5BF9E90);
    sub_1E5BF7034();
    return (*(v18 + 8))(v24, v38);
  }
}

uint64_t sub_1E5B7934C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B793BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewPlayerConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B79438(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1E5BF7084();
  v6[3] = sub_1E5BF7074();
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1E5B6F688;

  return v11(a6);
}

uint64_t sub_1E5B79554(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[2] = sub_1E5BF7084();
  v6[3] = sub_1E5BF7074();
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v6[4] = v9;
  *v9 = v6;
  v9[1] = sub_1E5B79670;

  return v11(a6);
}

uint64_t sub_1E5B79670()
{
  *(*v1 + 40) = v0;

  v3 = sub_1E5BF7054();
  if (v0)
  {
    v4 = sub_1E5B797CC;
  }

  else
  {
    v4 = sub_1E5B6FA20;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1E5B797CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5B79830(uint64_t a1)
{
  v4 = *(type metadata accessor for PreviewPlayerConfiguration(0) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5B6D9A0;

  return sub_1E5B79554(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1E5B79944(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B799AC(uint64_t a1)
{
  v4 = (*(*(v1[2] - 8) + 80) + 64) & ~*(*(v1[2] - 8) + 80);
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5B6E314;

  return sub_1E5B79438(a1, v5, v6, v7, v8, v1 + v4);
}

unint64_t sub_1E5B79AD0()
{
  result = qword_1ED03EB78;
  if (!qword_1ED03EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EB78);
  }

  return result;
}

unint64_t sub_1E5B79B28()
{
  result = qword_1ED03EB80[0];
  if (!qword_1ED03EB80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED03EB80);
  }

  return result;
}

uint64_t sub_1E5B79B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5B79BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E5B79C34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E5B79C70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E5B79D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v28 = a5;
  v29 = a1;
  v8 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v11 = sub_1E5BF69D4();
  v26 = v12;
  v27 = v11;
  v24 = v13;
  v25 = v14;
  sub_1E5BF6614();
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  *(v15 + 32) = a4 & 1;
  sub_1E5B5F5EC(a2, a3);
  v16 = sub_1E5BF6D34();
  v23 = v22;
  v22[1] = v30;
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC98, &unk_1E5BFA180);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  sub_1E5B5FC8C(&qword_1ED03ECA0, &qword_1ED03EC98, &unk_1E5BFA180, MEMORY[0x1E697FDF8]);
  sub_1E5B5FC8C(&qword_1EE2C62B8, &qword_1ED03E530, &qword_1E5BF8830, MEMORY[0x1E697D680]);
  v18 = v24;
  v19 = v27;
  v20 = v26;
  sub_1E5BF6B04();
  sub_1E5B7AD08(v19, v20, v18 & 1);
}

uint64_t sub_1E5B7A170@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, _BYTE *a4@<X8>)
{
  v36 = a3;
  v37 = a2;
  v35 = a1;
  v39 = a4;
  v4 = sub_1E5BF6494();
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5C0, &unk_1E5BF8A20);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v32 - v19;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v10 + 48))(v20, 1, v9);
  if (result != 1)
  {
    sub_1E5B7AD6C(v20, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
    sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v23 = v38;
    (*(v38 + 56))(v14, 0, 1, v4);
    v24 = *(v6 + 48);
    sub_1E5B7ADDC(v17, v8);
    sub_1E5B7ADDC(v14, &v8[v24]);
    v25 = *(v23 + 48);
    if (v25(v8, 1, v4) == 1)
    {
      sub_1E5B5F804(v14, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v17, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v25(&v8[v24], 1, v4) == 1)
      {
        result = sub_1E5B5F804(v8, &qword_1ED03E5E8, &unk_1E5BF9600);
        v26 = 1;
LABEL_10:
        v22 = v26 & 1;
        goto LABEL_11;
      }
    }

    else
    {
      v27 = v34;
      sub_1E5B7ADDC(v8, v34);
      if (v25(&v8[v24], 1, v4) != 1)
      {
        v28 = &v8[v24];
        v29 = v33;
        (*(v23 + 32))(v33, v28, v4);
        sub_1E5B7AE4C();
        v30 = v23;
        v26 = sub_1E5BF6F14();
        v31 = *(v30 + 8);
        v31(v29, v4);
        sub_1E5B5F804(v14, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v17, &qword_1ED03E5E8, &unk_1E5BF9600);
        v31(v27, v4);
        result = sub_1E5B5F804(v8, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_10;
      }

      sub_1E5B5F804(v14, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v17, &qword_1ED03E5E8, &unk_1E5BF9600);
      (*(v23 + 8))(v27, v4);
    }

    result = sub_1E5B5F804(v8, &qword_1ED03E790, &qword_1E5BF9150);
    v26 = 0;
    goto LABEL_10;
  }

  v22 = 0;
LABEL_11:
  *v39 = v22;
  return result;
}

uint64_t sub_1E5B7A6E0(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-v7];
  sub_1E5BF65D4();
  v9 = sub_1E5BF65E4();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3 & 1;
  v13 = a1;
  v14 = a2;
  v15 = a3 & 1;
  sub_1E5B5F5EC(a1, a2);
  return sub_1E5BF6C74();
}

uint64_t sub_1E5B7A83C(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

uint64_t sub_1E5B7A900@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_1E5B7AAE4@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EC88, &qword_1E5BFD3B0);
  sub_1E5B5FC8C(&qword_1ED03EC90, &qword_1ED03EC88, &qword_1E5BFD3B0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v11;
  return result;
}

uint64_t sub_1E5B7AD08(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroyTm_1()
{
  sub_1E5B5C0A8(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1E5B7AD6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B7ADDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5B7AE4C()
{
  result = qword_1ED03E7A0;
  if (!qword_1ED03E7A0)
  {
    sub_1E5BF6494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03E7A0);
  }

  return result;
}

FitnessActions::PreviewLoadError_optional __swiftcall PreviewLoadError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1E5B7AEC8@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1E5B7AEF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E5B7DE44();
  v5 = sub_1E5B7DE98();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

uint64_t PreviewPlayerConfiguration.streamingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E5BF6384();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PreviewPlayerConfiguration.contentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreviewPlayerConfiguration(0) + 20));

  return v1;
}

uint64_t type metadata accessor for PreviewPlayerConfiguration(uint64_t a1)
{
  result = qword_1EE2C6768;
  if (!qword_1EE2C6768)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PreviewPlayerConfiguration.streamingProgramIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreviewPlayerConfiguration(0) + 24));

  return v1;
}

uint64_t PreviewPlayerConfiguration.sampleContentIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for PreviewPlayerConfiguration(0) + 28));

  return v1;
}

int *PreviewPlayerConfiguration.init(streamingURL:contentIdentifier:streamingProgramIdentifier:sampleContentIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_1E5BF6384();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for PreviewPlayerConfiguration(0);
  v18 = (a8 + result[5]);
  *v18 = a2;
  v18[1] = a3;
  v19 = (a8 + result[6]);
  *v19 = a4;
  v19[1] = a5;
  v20 = (a8 + result[7]);
  *v20 = a6;
  v20[1] = a7;
  return result;
}

unint64_t sub_1E5B7B23C()
{
  v1 = 0x6E696D6165727473;
  v2 = 0xD000000000000017;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E5B7B2CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5B7DCCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5B7B2F4(uint64_t a1)
{
  v2 = sub_1E5B7CD7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B7B330(uint64_t a1)
{
  v2 = sub_1E5B7CD7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreviewPlayerConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03ECA8, &qword_1E5BFA1D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B7CD7C();
  sub_1E5BF7524();
  v8[15] = 0;
  sub_1E5BF6384();
  sub_1E5B7D074(&qword_1ED03ECB8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1E5BF7424();
  if (!v1)
  {
    type metadata accessor for PreviewPlayerConfiguration(0);
    v8[14] = 1;
    sub_1E5BF73A4();
    v8[13] = 2;
    sub_1E5BF73A4();
    v8[12] = 3;
    sub_1E5BF73A4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PreviewPlayerConfiguration.hash(into:)(uint64_t a1)
{
  sub_1E5BF6384();
  sub_1E5B7D074(&qword_1ED03ECC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E5BF6EF4();
  v2 = type metadata accessor for PreviewPlayerConfiguration(0);
  if (*(v1 + v2[5] + 8))
  {
    sub_1E5BF74D4();
    sub_1E5BF6FE4();
  }

  else
  {
    sub_1E5BF74D4();
  }

  if (*(v1 + v2[6] + 8))
  {
    sub_1E5BF74D4();
    sub_1E5BF6FE4();
  }

  else
  {
    sub_1E5BF74D4();
  }

  if (!*(v1 + v2[7] + 8))
  {
    return sub_1E5BF74D4();
  }

  sub_1E5BF74D4();

  return sub_1E5BF6FE4();
}

uint64_t PreviewPlayerConfiguration.hashValue.getter()
{
  sub_1E5BF74B4();
  PreviewPlayerConfiguration.hash(into:)(v1);
  return sub_1E5BF7504();
}

uint64_t PreviewPlayerConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1E5BF6384();
  v26 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03ECC8, &unk_1E5BFA1D8);
  v27 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v7 = &v24 - v6;
  v8 = type metadata accessor for PreviewPlayerConfiguration(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B7CD7C();
  sub_1E5BF7514();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v10;
  v12 = v26;
  v33 = 0;
  sub_1E5B7D074(&qword_1ED03ECD0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  sub_1E5BF7364();
  (*(v12 + 32))(v10, v28, v4);
  v32 = 1;
  v13 = sub_1E5BF72E4();
  v14 = &v10[v8[5]];
  *v14 = v13;
  v14[1] = v15;
  v31 = 2;
  v16 = sub_1E5BF72E4();
  v17 = &v10[v8[6]];
  *v17 = v16;
  v17[1] = v18;
  v30 = 3;
  v19 = sub_1E5BF72E4();
  v21 = v20;
  (*(v27 + 8))(v7, v29);
  v22 = (v11 + v8[7]);
  *v22 = v19;
  v22[1] = v21;
  sub_1E5B7CDD0(v11, v25);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1E5B7CE34(v11);
}

uint64_t sub_1E5B7BB84()
{
  sub_1E5BF74B4();
  PreviewPlayerConfiguration.hash(into:)(v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B7BBC8(uint64_t a1)
{
  sub_1E5BF74B4();
  PreviewPlayerConfiguration.hash(into:)(v2);
  return sub_1E5BF7504();
}

uint64_t PreviewButtonState.localizedTitle.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t PreviewButtonState.init(identifier:locale:loadState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a6;
  v36 = a5;
  v34 = a2;
  v9 = sub_1E5BF64B4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v17 = *(a4 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v17 + 16);
  v32 = a4;
  v33 = a1;
  v22(v21, a1, a4, v19);
  v23 = a3;
  sub_1E5B7934C(a3, v16);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v24 = qword_1EE2CD210;
  v25 = v34;
  (*(v10 + 16))(v12, v34, v9);
  v26 = v24;
  v27 = sub_1E5BF6FD4();
  v29 = v28;
  sub_1E5B79944(v23);
  (*(v10 + 8))(v25, v9);
  v30 = v32;
  (*(v17 + 8))(v33, v32);
  return PreviewButtonState.init(identifier:loadState:localizedTitle:)(v21, v16, v27, v29, v30, v36, v35);
}

uint64_t PreviewButtonState.init(identifier:loadState:localizedTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v14 = type metadata accessor for PreviewButtonState(0, a5, a6, v13);
  result = sub_1E5B7CF18(a2, a7 + *(v14 + 40));
  v16 = (a7 + *(v14 + 36));
  *v16 = a3;
  v16[1] = a4;
  return result;
}

uint64_t sub_1E5B7C058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461745364616F6CLL && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

uint64_t sub_1E5B7C188(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x657A696C61636F6CLL;
  }

  return 0x7461745364616F6CLL;
}

uint64_t sub_1E5B7C200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5B7C058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E5B7C230@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E5B7DE3C();
  *a2 = result;
  return result;
}

uint64_t sub_1E5B7C25C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1E5B7C2B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t PreviewButtonState.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v13[0] = a2;
  v13[1] = v5;
  type metadata accessor for PreviewButtonState.CodingKeys(255, v5, v6, a4);
  swift_getWitnessTable();
  v7 = sub_1E5BF7434();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5BF7524();
  v16 = 0;
  v11 = v13[3];
  sub_1E5BF7424();
  if (!v11)
  {
    v15 = 1;
    sub_1E5BF73E4();
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
    sub_1E5B7CFA0(&qword_1ED03ECD8, MEMORY[0x1E6999B20]);
    sub_1E5BF7424();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t PreviewButtonState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v30 - v7;
  v35 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PreviewButtonState.CodingKeys(255, a2, a3, v10);
  swift_getWitnessTable();
  v40 = sub_1E5BF7384();
  v34 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v12 = &v30 - v11;
  v38 = a3;
  v14 = type metadata accessor for PreviewButtonState(0, a2, a3, v13);
  v31 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v39 = v12;
  v17 = v41;
  sub_1E5BF7514();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v34;
  v19 = v35;
  v41 = v16;
  v30 = v14;
  v20 = v36;
  v21 = v37;
  v44 = 0;
  v22 = v39;
  sub_1E5BF7364();
  (*(v19 + 32))(v41, v21, a2);
  v43 = 1;
  v23 = sub_1E5BF7324();
  v24 = v41;
  v25 = &v41[*(v30 + 36)];
  *v25 = v23;
  v25[1] = v26;
  v42 = 2;
  sub_1E5B7CFA0(&qword_1ED03ECF0, MEMORY[0x1E6999B30]);
  sub_1E5BF7364();
  (*(v18 + 8))(v22, v40);
  v27 = v30;
  sub_1E5B7CF18(v20, &v24[*(v30 + 40)]);
  v28 = v31;
  (*(v31 + 16))(v32, v24, v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v28 + 8))(v24, v27);
}

uint64_t static PreviewButtonState.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1E5BF6F14() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for PreviewButtonState(0, a3, a4, v8) + 36);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v10 == *v12 && v11 == v12[1];
  if (!v13 && (sub_1E5BF7444() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PreviewPlayerConfiguration(0);
  sub_1E5B7D074(&qword_1ED03ECF8, type metadata accessor for PreviewPlayerConfiguration, &protocol conformance descriptor for PreviewPlayerConfiguration);

  return sub_1E5BF6DE4();
}

uint64_t PreviewButtonState.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1E5BF6EF4();
  sub_1E5BF6FE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  sub_1E5B7D074(&qword_1ED03ED00, type metadata accessor for PreviewPlayerConfiguration, &protocol conformance descriptor for PreviewPlayerConfiguration);
  return sub_1E5BF6DF4();
}

uint64_t PreviewButtonState.hashValue.getter(uint64_t a1)
{
  sub_1E5BF74B4();
  PreviewButtonState.hash(into:)(v3, a1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B7CBFC(uint64_t a1, uint64_t a2)
{
  sub_1E5BF74B4();
  PreviewButtonState.hash(into:)(v4, a2);
  return sub_1E5BF7504();
}

uint64_t _s14FitnessActions26PreviewPlayerConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1E5BF6374() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PreviewPlayerConfiguration(0);
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
      v12 = sub_1E5BF7444();
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
      v20 = sub_1E5BF7444();
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
      if (v26 || (sub_1E5BF7444() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v25)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1E5B7CD7C()
{
  result = qword_1ED03ECB0;
  if (!qword_1ED03ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03ECB0);
  }

  return result;
}

uint64_t sub_1E5B7CDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreviewPlayerConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B7CE34(uint64_t a1)
{
  v2 = type metadata accessor for PreviewPlayerConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5B7CE90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B7CF18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B7CFA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EB58, &qword_1E5BF9E60);
    sub_1E5B7D074(&qword_1ED03ECE0, type metadata accessor for PreviewPlayerConfiguration, &protocol conformance descriptor for PreviewPlayerConfiguration);
    sub_1E5B7D074(&qword_1ED03ECE8, type metadata accessor for PreviewPlayerConfiguration, &protocol conformance descriptor for PreviewPlayerConfiguration);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E5B7D074(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E5B7D0C0()
{
  result = qword_1ED03ED08[0];
  if (!qword_1ED03ED08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED03ED08);
  }

  return result;
}

void sub_1E5B7D1B0(uint64_t a1)
{
  sub_1E5BF6384();
  if (v1 <= 0x3F)
  {
    sub_1E5B7D23C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E5B7D23C()
{
  if (!qword_1EE2C6230)
  {
    v0 = sub_1E5BF71F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE2C6230);
    }
  }
}

void sub_1E5B7D28C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E5B7D98C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E5B7D31C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_1E5BF6384() - 8);
  v10 = ((((((*(v9 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v11 = *(sub_1E5BF6464() - 8);
  v12 = *(v11 + 80);
  v13 = ((v10 + v12) & ~v12) + *(v11 + 64);
  if (v13 <= v10)
  {
    v13 = v10;
  }

  v14 = 40;
  if (v13 > 0x28)
  {
    v14 = v13;
  }

  v15 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_30;
  }

  v16 = v12 | *(v9 + 80) & 0xF8 | 7;
  v17 = v14 + ((((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + v16 + 16) & ~v16) + 1;
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v8 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_30;
      }

      goto LABEL_19;
    }

    if (v21 < 2)
    {
LABEL_30:
      if (v7 < 0x7FFFFFFF)
      {
        v24 = *(((a1 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v24 >= 0xFFFFFFFF)
        {
          LODWORD(v24) = -1;
        }

        return (v24 + 1);
      }

      else
      {
        v23 = *(v6 + 48);

        return v23(a1, v7, v5);
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_30;
  }

LABEL_19:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 > 3)
    {
      LODWORD(v17) = 4;
    }

    if (v17 > 2)
    {
      if (v17 == 3)
      {
        LODWORD(v17) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v17) = *a1;
      }
    }

    else if (v17 == 1)
    {
      LODWORD(v17) = *a1;
    }

    else
    {
      LODWORD(v17) = *a1;
    }
  }

  return v8 + (v17 | v22) + 1;
}

void sub_1E5B7D610(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1E5BF6384() - 8);
  v12 = ((((((*(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v13 = *(sub_1E5BF6464() - 8);
  v14 = *(v13 + 80);
  v15 = ((v12 + v14) & ~v14) + *(v13 + 64);
  if (v15 <= v12)
  {
    v15 = v12;
  }

  v16 = 40;
  if (v15 > 0x28)
  {
    v16 = v15;
  }

  v17 = *(v8 + 64);
  v18 = v14 | *(v11 + 80) & 0xF8 | 7;
  v19 = v16 + ((((v17 + 7) & 0xFFFFFFFFFFFFFFF8) + v18 + 16) & ~v18) + 1;
  if (a3 <= v10)
  {
    v20 = 0;
  }

  else if (v19 <= 3)
  {
    v23 = ((a3 - v10 + ~(-1 << (8 * v19))) >> (8 * v19)) + 1;
    if (HIWORD(v23))
    {
      v20 = 4;
    }

    else
    {
      if (v23 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v23 >= 2)
      {
        v20 = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v10 < a2)
  {
    v21 = ~v10 + a2;
    if (v19 < 4)
    {
      v22 = (v21 >> (8 * v19)) + 1;
      if (v19)
      {
        v25 = v21 & ~(-1 << (8 * v19));
        bzero(a1, v19);
        if (v19 != 3)
        {
          if (v19 == 2)
          {
            *a1 = v25;
            if (v20 > 1)
            {
LABEL_50:
              if (v20 == 2)
              {
                *&a1[v19] = v22;
              }

              else
              {
                *&a1[v19] = v22;
              }

              return;
            }
          }

          else
          {
            *a1 = v21;
            if (v20 > 1)
            {
              goto LABEL_50;
            }
          }

          goto LABEL_47;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v20 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      bzero(a1, v19);
      *a1 = v21;
      v22 = 1;
      if (v20 > 1)
      {
        goto LABEL_50;
      }
    }

LABEL_47:
    if (v20)
    {
      a1[v19] = v22;
    }

    return;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *&a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v19] = 0;
  }

  else if (v20)
  {
    a1[v19] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 < 0x7FFFFFFF)
  {
    v27 = (&a1[v17 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v27 = a2 & 0x7FFFFFFF;
      v27[1] = 0;
    }

    else
    {
      v27[1] = (a2 - 1);
    }
  }

  else
  {
    v26 = *(v28 + 56);

    v26(a1, a2, v9, v7);
  }
}

void sub_1E5B7D98C(uint64_t a1)
{
  if (!qword_1ED03ED90[0])
  {
    type metadata accessor for PreviewPlayerConfiguration(255);
    sub_1E5B7D074(&qword_1ED03ECF8, type metadata accessor for PreviewPlayerConfiguration, &protocol conformance descriptor for PreviewPlayerConfiguration);
    v1 = sub_1E5BF6E04();
    if (!v2)
    {
      atomic_store(v1, qword_1ED03ED90);
    }
  }
}

uint64_t getEnumTagSinglePayload for PreviewPlayerConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PreviewPlayerConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5B7DB74()
{
  result = qword_1ED03EE18;
  if (!qword_1ED03EE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE18);
  }

  return result;
}

unint64_t sub_1E5B7DC20()
{
  result = qword_1ED03EE20;
  if (!qword_1ED03EE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE20);
  }

  return result;
}

unint64_t sub_1E5B7DC78()
{
  result = qword_1ED03EE28;
  if (!qword_1ED03EE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE28);
  }

  return result;
}

uint64_t sub_1E5B7DCCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696D6165727473 && a2 == 0xEC0000004C525567;
  if (v4 || (sub_1E5BF7444() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001E5C078C0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E5C078E0 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001E5C07900 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E5BF7444();

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

unint64_t sub_1E5B7DE44()
{
  result = qword_1ED03EE30;
  if (!qword_1ED03EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE30);
  }

  return result;
}

unint64_t sub_1E5B7DE98()
{
  result = qword_1ED03EE38;
  if (!qword_1ED03EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE38);
  }

  return result;
}

__n128 AccountButtonFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

void AccountButtonFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, _BYTE *a2, uint64_t *a3, unsigned __int8 *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E920, &qword_1E5BF95C0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29[-v10];
  v12 = *a4;
  v13 = v4[1];
  v30 = *v4;
  v31 = v13;
  v14 = v4[3];
  v32 = v4[2];
  v33 = v14;
  if (v12 == 2)
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
    v16 = v15[16];
    v17 = v15[20];
    v18 = &v11[v15[24]];
    sub_1E5B7E1D4();
    sub_1E5BF7254();
    v19 = *MEMORY[0x1E6999B50];
    v20 = sub_1E5BF6E24();
    (*(*(v20 - 8) + 104))(&v11[v16], v19, v20);
    v21 = swift_allocObject();
    v22 = v31;
    v21[1] = v30;
    v21[2] = v22;
    v23 = v33;
    v21[3] = v32;
    v21[4] = v23;
    *v18 = &unk_1E5BFA798;
    v18[1] = v21;
    sub_1E5B7E3C8(&v30, v29);
    sub_1E5BF7094();
    v24 = *MEMORY[0x1E6999B48];
    v25 = sub_1E5BF6E14();
    (*(*(v25 - 8) + 104))(&v11[v17], v24, v25);
    (*(v9 + 104))(v11, *MEMORY[0x1E6999AD8], v8);
    v26 = *a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_1E5B71590(0, v26[2] + 1, 1, v26);
    }

    v28 = v26[2];
    v27 = v26[3];
    if (v28 >= v27 >> 1)
    {
      v26 = sub_1E5B71590((v27 > 1), v28 + 1, 1, v26);
    }

    v26[2] = v28 + 1;
    (*(v9 + 32))(v26 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v28, v11, v8);
    *a3 = v26;
  }

  else
  {
    *a2 = v12 & 1;
  }
}

unint64_t sub_1E5B7E1D4()
{
  result = qword_1ED03EE40;
  if (!qword_1ED03EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE40);
  }

  return result;
}

uint64_t sub_1E5B7E228(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1E5BF7084();
  v2[3] = sub_1E5BF7074();
  v6 = (*(a2 + 48) + **(a2 + 48));
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1E5B79670;

  return v6();
}

uint64_t sub_1E5B7E330(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B6D9A0;

  return sub_1E5B7E228(a1, v1 + 16);
}

unint64_t sub_1E5B7E40C()
{
  result = qword_1ED03EE48;
  if (!qword_1ED03EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE48);
  }

  return result;
}

unint64_t sub_1E5B7E464()
{
  result = qword_1ED03EE50;
  if (!qword_1ED03EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE50);
  }

  return result;
}

unint64_t sub_1E5B7E4BC()
{
  result = qword_1ED03EE58;
  if (!qword_1ED03EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE58);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1E5B7E524(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1E5B7E56C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E5B7E5E0()
{
  result = qword_1ED03EE60;
  if (!qword_1ED03EE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE60);
  }

  return result;
}

uint64_t sub_1E5B7E634()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B7E668()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 16;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B7E69C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B7E6D0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B7E704()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B7E738()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E5B7E76C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1E5B7E798()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5B7E7CC(uint64_t a1)
{
  v2 = sub_1E5B7EE70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B7E808(uint64_t a1)
{
  v2 = sub_1E5B7EE70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B7E844()
{
  if (*v0)
  {
    return 0x616843656C797473;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_1E5B7E88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001E5C07920 == a2 || (sub_1E5BF7444() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x616843656C797473 && a2 == 0xEC0000006465676ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1E5BF7444();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1E5B7E978(uint64_t a1)
{
  v2 = sub_1E5B7ED74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B7E9B4(uint64_t a1)
{
  v2 = sub_1E5B7ED74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5B7E9F0(uint64_t a1)
{
  v2 = sub_1E5B7EDC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B7EA2C(uint64_t a1)
{
  v2 = sub_1E5B7EDC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountButtonAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EE68, &qword_1E5BFA8D0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EE70, &qword_1E5BFA8D8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EE78, &qword_1E5BFA8E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B7ED74();
  sub_1E5BF7524();
  if (v12 == 2)
  {
    v21 = 0;
    sub_1E5B7EE70();
    sub_1E5BF7394();
    (*(v16 + 8))(v7, v17);
  }

  else
  {
    v23 = 1;
    sub_1E5B7EDC8();
    v14 = v18;
    sub_1E5BF7394();
    v22 = v12 & 1;
    sub_1E5B7EE1C();
    v15 = v20;
    sub_1E5BF7424();
    (*(v19 + 8))(v14, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1E5B7ED74()
{
  result = qword_1ED03EE80;
  if (!qword_1ED03EE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE80);
  }

  return result;
}

unint64_t sub_1E5B7EDC8()
{
  result = qword_1ED03EE88;
  if (!qword_1ED03EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE88);
  }

  return result;
}

unint64_t sub_1E5B7EE1C()
{
  result = qword_1ED03EE90;
  if (!qword_1ED03EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE90);
  }

  return result;
}

unint64_t sub_1E5B7EE70()
{
  result = qword_1ED03EE98;
  if (!qword_1ED03EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EE98);
  }

  return result;
}

uint64_t AccountButtonAction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v25 = a2;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EEA0, &qword_1E5BFA8E8);
  v24 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EEA8, &qword_1E5BFA8F0);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EEB0, &unk_1E5BFA8F8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - v10;
  v12 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E5B7ED74();
  v13 = v26;
  sub_1E5BF7514();
  if (!v13)
  {
    v26 = v5;
    v14 = v9;
    v15 = v25;
    v16 = sub_1E5BF7374();
    if (*(v16 + 16) == 1)
    {
      if (*(v16 + 32))
      {
        v30 = 1;
        sub_1E5B7EDC8();
        sub_1E5BF72C4();
        sub_1E5B7F380();
        v21 = v22;
        sub_1E5BF7364();
        (*(v24 + 8))(v4, v21);
        (*(v14 + 8))(v11, v8);
        swift_unknownObjectRelease();
        *v15 = v29;
      }

      else
      {
        v28 = 0;
        sub_1E5B7EE70();
        sub_1E5BF72C4();
        (*(v23 + 8))(v7, v26);
        (*(v9 + 8))(v11, v8);
        swift_unknownObjectRelease();
        *v15 = 2;
      }
    }

    else
    {
      v17 = sub_1E5BF7284();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E520, &unk_1E5BF8770);
      *v19 = &type metadata for AccountButtonAction;
      sub_1E5BF72D4();
      sub_1E5BF7274();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
      swift_willThrow();
      (*(v14 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v27);
}

unint64_t sub_1E5B7F380()
{
  result = qword_1ED03EEB8;
  if (!qword_1ED03EEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EEB8);
  }

  return result;
}

BOOL static AccountButtonAction.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

uint64_t AccountButtonAction.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1E6937C10](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x1E6937C10](v2);
}

uint64_t AccountButtonAction.hashValue.getter()
{
  v1 = *v0;
  sub_1E5BF74B4();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x1E6937C10](1);
    v2 = v1 & 1;
  }

  MEMORY[0x1E6937C10](v2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B7F4EC()
{
  v1 = *v0;
  sub_1E5BF74B4();
  v2 = 0;
  if (v1 != 2)
  {
    MEMORY[0x1E6937C10](1);
    v2 = v1 & 1;
  }

  MEMORY[0x1E6937C10](v2);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B7F54C()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1E6937C10](1);
    v2 = v1 & 1;
  }

  return MEMORY[0x1E6937C10](v2);
}

uint64_t sub_1E5B7F594(uint64_t a1)
{
  v2 = *v1;
  sub_1E5BF74B4();
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    MEMORY[0x1E6937C10](1);
    v3 = v2 & 1;
  }

  MEMORY[0x1E6937C10](v3);
  return sub_1E5BF7504();
}

BOOL sub_1E5B7F5F4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return ((v3 ^ v2) & 1) == 0;
}

unint64_t sub_1E5B7F638()
{
  result = qword_1ED03EEC0;
  if (!qword_1ED03EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EEC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountButtonAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AccountButtonAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1E5B7F7E0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E5B7F7F4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1E5B7F848()
{
  result = qword_1ED03EEC8;
  if (!qword_1ED03EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EEC8);
  }

  return result;
}

unint64_t sub_1E5B7F8A0()
{
  result = qword_1ED03EED0;
  if (!qword_1ED03EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EED0);
  }

  return result;
}

unint64_t sub_1E5B7F8F8()
{
  result = qword_1ED03EED8;
  if (!qword_1ED03EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EED8);
  }

  return result;
}

unint64_t sub_1E5B7F950()
{
  result = qword_1ED03EEE0;
  if (!qword_1ED03EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EEE0);
  }

  return result;
}

unint64_t sub_1E5B7F9A8()
{
  result = qword_1ED03EEE8;
  if (!qword_1ED03EEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EEE8);
  }

  return result;
}

unint64_t sub_1E5B7FA00()
{
  result = qword_1ED03EEF0;
  if (!qword_1ED03EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EEF0);
  }

  return result;
}

unint64_t sub_1E5B7FA58()
{
  result = qword_1ED03EEF8;
  if (!qword_1ED03EEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EEF8);
  }

  return result;
}

unint64_t sub_1E5B7FAB0()
{
  result = qword_1ED03EF00;
  if (!qword_1ED03EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF00);
  }

  return result;
}

uint64_t UpNextQueueButton.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_1E5B62F34;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t UpNextQueueButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v2 = sub_1E5BF66D4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF08, &qword_1E5BFACF0);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  *(v12 + 32) = v11;
  v19 = v9;
  v20 = v10;
  v21 = v11;
  sub_1E5B5F5EC(v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF10, &qword_1E5BFACF8);
  sub_1E5B8081C();
  sub_1E5BF6C84();
  (*(v3 + 104))(v5, *MEMORY[0x1E697E6E8], v2);
  sub_1E5B5FC8C(&qword_1ED03EF98, &qword_1ED03EF08, &qword_1E5BFACF0, MEMORY[0x1E697D680]);
  v13 = v18;
  sub_1E5BF6A74();
  (*(v3 + 8))(v5, v2);
  (*(v17 + 8))(v8, v6);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v10;
  *(v14 + 32) = v11;
  v15 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFA0, &qword_1E5BFAD58) + 36));
  *v15 = sub_1E5B80F14;
  v15[1] = v14;
  v15[2] = 0;
  v15[3] = 0;
  return sub_1E5B5F5EC(v9, v10);
}

uint64_t sub_1E5B7FE84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v78 = a3;
  v79 = a2;
  v80 = a4;
  v5 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v76 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E5BF69B4();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EAC8, &qword_1E5BF9C70);
  v65 = *(v11 - 8);
  v66 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v60 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF48, &qword_1E5BFAD10);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v60 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF28, &qword_1E5BFAD00);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v60 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC0, &unk_1E5BFAE50);
  MEMORY[0x1EEE9AC00](v77);
  v18 = &v60 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFC8, &qword_1E5BFB9C0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v60 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFB0, &qword_1E5BFAE48);
  v23 = sub_1E5B5FC8C(&qword_1ED03EFB8, &qword_1ED03EFB0, &qword_1E5BFAE48, MEMORY[0x1E6999B78]);
  v75 = a1;
  v67 = v23;
  v68 = v22;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v25 = *v21;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1E5B5F804(v21, &qword_1ED03EFC8, &qword_1E5BFB9C0);
LABEL_11:
    swift_storeEnumTagMultiPayload();
    sub_1E5B808A8();
    return sub_1E5BF6864();
  }

  v25 = *v21;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFD0, &qword_1E5BFAE80) + 48);
  v27 = sub_1E5BF6464();
  (*(*(v27 - 8) + 8))(v21 + v26, v27);
LABEL_6:
  if (v25 < 1)
  {
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF38, &qword_1E5BFAD08);
    (*(*(v59 - 8) + 56))(v16, 1, 1, v59);
  }

  else
  {
    v61 = v18;
    v62 = v16;
    v63 = v14;
    v28 = sub_1E5BF6C04();
    sub_1E5BF6D84();
    sub_1E5BF6674();
    v29 = v93;
    v30 = v94;
    v31 = v95;
    v32 = v96;
    v34 = v97;
    v33 = v98;
    v35 = sub_1E5BF6944();
    sub_1E5BF65F4();
    v90 = v30;
    v89 = v32;
    v88 = 0;
    *&v81 = v28;
    *(&v81 + 1) = v29;
    LOBYTE(v82) = v30;
    *(&v82 + 1) = v31;
    LOBYTE(v83) = v32;
    *(&v83 + 1) = v34;
    *&v84 = v33;
    BYTE8(v84) = v35;
    *&v85 = v36;
    *(&v85 + 1) = v37;
    *&v86 = v38;
    *(&v86 + 1) = v39;
    v87 = 0;
    sub_1E5BF6D74();
    v40 = MEMORY[0x1E6981CD0];
    v41 = MEMORY[0x1E6981CD8];
    v42 = v64;
    sub_1E5BF6834();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF60, &unk_1E5BFAD20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF68, &unk_1E5BFAD30);
    sub_1E5B80BEC();
    *&v91[0] = v41;
    *(&v91[0] + 1) = v40;
    swift_getOpaqueTypeConformance2();
    sub_1E5B80C78();
    v43 = v73;
    v44 = v66;
    sub_1E5BF6B74();
    (*(v65 + 8))(v42, v44);
    v91[4] = v85;
    v91[5] = v86;
    v92 = v87;
    v91[0] = v81;
    v91[1] = v82;
    v91[2] = v83;
    v91[3] = v84;
    sub_1E5B5F804(v91, &qword_1ED03EF60, &unk_1E5BFAD20);
    sub_1E5BF6964();
    sub_1E5BF6984();

    v46 = v69;
    v45 = v70;
    v47 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x1E6980EA8], v71);
    v48 = sub_1E5BF69C4();

    (*(v45 + 8))(v46, v47);
    KeyPath = swift_getKeyPath();
    v50 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF58, &qword_1E5BFAD18) + 36));
    *v50 = KeyPath;
    v50[1] = v48;
    v51 = sub_1E5BF6BB4();
    v52 = swift_getKeyPath();
    *&v81 = v51;
    v53 = sub_1E5BF6684();
    v54 = (v43 + *(v72 + 36));
    *v54 = v52;
    v54[1] = v53;
    sub_1E5BF6F24();
    if (qword_1EE2C6208 != -1)
    {
      swift_once();
    }

    v55 = qword_1EE2CD210;
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    *&v81 = sub_1E5BF6FD4();
    *(&v81 + 1) = v56;
    sub_1E5B809B8();
    sub_1E5B81070();
    v16 = v62;
    sub_1E5BF6A94();

    sub_1E5B5F804(v43, &qword_1ED03EF48, &qword_1E5BFAD10);
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF38, &qword_1E5BFAD08);
    (*(*(v57 - 8) + 56))(v16, 0, 1, v57);
    v18 = v61;
  }

  sub_1E5B57900(v16, v18);
  swift_storeEnumTagMultiPayload();
  sub_1E5B808A8();
  sub_1E5BF6864();
  return sub_1E5B5F804(v16, &qword_1ED03EF28, &qword_1E5BFAD00);
}

unint64_t sub_1E5B8081C()
{
  result = qword_1ED03EF18;
  if (!qword_1ED03EF18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF10, &qword_1E5BFACF8);
    sub_1E5B808A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF18);
  }

  return result;
}

unint64_t sub_1E5B808A8()
{
  result = qword_1ED03EF20;
  if (!qword_1ED03EF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF28, &qword_1E5BFAD00);
    sub_1E5B8092C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF20);
  }

  return result;
}

unint64_t sub_1E5B8092C()
{
  result = qword_1ED03EF30;
  if (!qword_1ED03EF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF38, &qword_1E5BFAD08);
    sub_1E5B809B8();
    sub_1E5B80D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF30);
  }

  return result;
}

unint64_t sub_1E5B809B8()
{
  result = qword_1ED03EF40;
  if (!qword_1ED03EF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF48, &qword_1E5BFAD10);
    sub_1E5B80A70();
    sub_1E5B5FC8C(&qword_1ED03EF80, &qword_1ED03EF88, &qword_1E5BFAD50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF40);
  }

  return result;
}

unint64_t sub_1E5B80A70()
{
  result = qword_1ED03EF50;
  if (!qword_1ED03EF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF58, &qword_1E5BFAD18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF60, &unk_1E5BFAD20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EAC8, &qword_1E5BF9C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF68, &unk_1E5BFAD30);
    sub_1E5B80BEC();
    swift_getOpaqueTypeConformance2();
    sub_1E5B80C78();
    swift_getOpaqueTypeConformance2();
    sub_1E5B5FC8C(&qword_1EE2C62F0, &qword_1ED03EB00, &qword_1E5C042E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF50);
  }

  return result;
}

unint64_t sub_1E5B80BEC()
{
  result = qword_1ED03EF70;
  if (!qword_1ED03EF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF60, &unk_1E5BFAD20);
    sub_1E5B5FB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF70);
  }

  return result;
}

unint64_t sub_1E5B80C78()
{
  result = qword_1ED03EF78;
  if (!qword_1ED03EF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF68, &unk_1E5BFAD30);
    sub_1E5B80BEC();
    sub_1E5B5FC8C(&qword_1ED03EB20, &qword_1ED03EB28, &unk_1E5BFAD40, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF78);
  }

  return result;
}

unint64_t sub_1E5B80D30()
{
  result = qword_1ED03EF90;
  if (!qword_1ED03EF90)
  {
    sub_1E5BF68E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EF90);
  }

  return result;
}

uint64_t sub_1E5B80D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v13[4] = *(a1 + 64);
  v13[5] = v4;
  v14 = *(a1 + 96);
  v5 = *(a1 + 16);
  v13[0] = *a1;
  v13[1] = v5;
  v6 = *(a1 + 48);
  v13[2] = *(a1 + 32);
  v13[3] = v6;
  v7 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF68, &unk_1E5BFAD30) + 36);
  sub_1E5BF6D64();
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB28, &unk_1E5BFAD40) + 56)) = 256;
  v8 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v8;
  *(a2 + 96) = *(a1 + 96);
  v9 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v9;
  v10 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v10;
  return sub_1E5B810C4(v13, v12);
}

uint64_t sub_1E5B80E50(uint64_t a1, uint64_t a2, char a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFB0, &qword_1E5BFAE48);
  sub_1E5B5FC8C(&qword_1ED03EFB8, &qword_1ED03EFB0, &qword_1E5BFAE48, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  sub_1E5BF6E44();
}

unint64_t sub_1E5B80F74()
{
  result = qword_1ED03EFA8;
  if (!qword_1ED03EFA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EFA0, &qword_1E5BFAD58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03EF08, &qword_1E5BFACF0);
    sub_1E5B5FC8C(&qword_1ED03EF98, &qword_1ED03EF08, &qword_1E5BFACF0, MEMORY[0x1E697D680]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EFA8);
  }

  return result;
}

unint64_t sub_1E5B81070()
{
  result = qword_1EE2C6248;
  if (!qword_1EE2C6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C6248);
  }

  return result;
}

uint64_t sub_1E5B810C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EF60, &unk_1E5BFAD20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t WorkoutSwapItem.workoutIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WorkoutSwapItem.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

FitnessActions::WorkoutSwapItem __swiftcall WorkoutSwapItem.init(workoutIdentifier:title:)(Swift::String workoutIdentifier, Swift::String title)
{
  *v2 = workoutIdentifier;
  v2[1] = title;
  result.title = title;
  result.workoutIdentifier = workoutIdentifier;
  return result;
}

uint64_t static WorkoutSwapItem.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E5BF7444(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E5BF7444();
    }
  }

  return result;
}

uint64_t WorkoutSwapItem.hash(into:)(uint64_t a1)
{
  sub_1E5BF6FE4();

  return sub_1E5BF6FE4();
}

uint64_t WorkoutSwapItem.hashValue.getter()
{
  sub_1E5BF74B4();
  sub_1E5BF6FE4();
  sub_1E5BF6FE4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5B812FC()
{
  sub_1E5BF74B4();
  sub_1E5BF6FE4();
  sub_1E5BF6FE4();
  return sub_1E5BF7504();
}

uint64_t sub_1E5B81364(uint64_t a1)
{
  sub_1E5BF6FE4();

  return sub_1E5BF6FE4();
}

uint64_t sub_1E5B813B4(uint64_t a1)
{
  sub_1E5BF74B4();
  sub_1E5BF6FE4();
  sub_1E5BF6FE4();
  return sub_1E5BF7504();
}

unint64_t sub_1E5B8141C()
{
  result = qword_1ED03EFD8;
  if (!qword_1ED03EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EFD8);
  }

  return result;
}

uint64_t sub_1E5B81470(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1E5BF7444(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E5BF7444();
    }
  }

  return result;
}

uint64_t sub_1E5B81514(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1E5B8155C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

FitnessActions::DynamicBarButtonItemState __swiftcall DynamicBarButtonItemState.init(isHidden:style:)(Swift::Bool isHidden, FitnessActions::DynamicBarButtonItemStyle style)
{
  v3 = *style;
  *v2 = isHidden;
  v2[1] = v3;
  result.isHidden = isHidden;
  return result;
}

uint64_t sub_1E5B815D0()
{
  if (*v0)
  {
    return 0x656C797473;
  }

  else
  {
    return 0x6E65646469487369;
  }
}

uint64_t sub_1E5B81608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E65646469487369 && a2 == 0xE800000000000000;
  if (v6 || (sub_1E5BF7444() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5BF7444();

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

uint64_t sub_1E5B816E0(uint64_t a1)
{
  v2 = sub_1E5B818E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B8171C(uint64_t a1)
{
  v2 = sub_1E5B818E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DynamicBarButtonItemState.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFE0, &qword_1E5BFAFC0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  v10 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B818E0();
  sub_1E5BF7524();
  v13 = 0;
  sub_1E5BF73F4();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1E5B81934();
    sub_1E5BF7424();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1E5B818E0()
{
  result = qword_1ED03EFE8;
  if (!qword_1ED03EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EFE8);
  }

  return result;
}

unint64_t sub_1E5B81934()
{
  result = qword_1ED03EFF0;
  if (!qword_1ED03EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03EFF0);
  }

  return result;
}

uint64_t DynamicBarButtonItemState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EFF8, &qword_1E5BFAFC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B818E0();
  sub_1E5BF7514();
  if (!v2)
  {
    v15 = 0;
    v9 = sub_1E5BF7334();
    v13 = 1;
    sub_1E5B81B48();
    sub_1E5BF7364();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v9 & 1;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1E5B81B48()
{
  result = qword_1ED03F000;
  if (!qword_1ED03F000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F000);
  }

  return result;
}

uint64_t DynamicBarButtonItemState.hash(into:)()
{
  v1 = *(v0 + 1);
  sub_1E5BF74D4();
  return MEMORY[0x1E6937C10](v1);
}

uint64_t DynamicBarButtonItemState.hashValue.getter()
{
  v1 = *(v0 + 1);
  sub_1E5BF74B4();
  sub_1E5BF74D4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B81C94()
{
  v1 = *(v0 + 1);
  sub_1E5BF74B4();
  sub_1E5BF74D4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

uint64_t sub_1E5B81CF4()
{
  v1 = *(v0 + 1);
  sub_1E5BF74D4();
  return MEMORY[0x1E6937C10](v1);
}

uint64_t sub_1E5B81D34(uint64_t a1)
{
  v2 = *(v1 + 1);
  sub_1E5BF74B4();
  sub_1E5BF74D4();
  MEMORY[0x1E6937C10](v2);
  return sub_1E5BF7504();
}

unint64_t sub_1E5B81DBC()
{
  result = qword_1EE2C69E8[0];
  if (!qword_1EE2C69E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C69E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DynamicBarButtonItemState(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for DynamicBarButtonItemState(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

unint64_t sub_1E5B81F94()
{
  result = qword_1ED03F008;
  if (!qword_1ED03F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F008);
  }

  return result;
}

unint64_t sub_1E5B81FEC()
{
  result = qword_1ED03F010;
  if (!qword_1ED03F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F010);
  }

  return result;
}

unint64_t sub_1E5B82044()
{
  result = qword_1ED03F018;
  if (!qword_1ED03F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F018);
  }

  return result;
}

uint64_t sub_1E5B82098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PreviewButtonFeature(255, *(a1 + 16), *(a1 + 24), a4);
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();

  return sub_1E5BF6614();
}

uint64_t PreviewButton.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  type metadata accessor for PreviewButtonFeature(255, a3, a4, v11);
  swift_getWitnessTable();
  sub_1E5BF6E64();
  swift_getWitnessTable();
  result = sub_1E5BF6604();
  *a5 = result;
  *(a5 + 8) = v13;
  *(a5 + 16) = v14 & 1;
  return result;
}

uint64_t sub_1E5B82234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v29 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F0E0, &qword_1E5BFB300);
  v12 = *(v11 - 8);
  v27 = v11;
  v28 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v15 = *v4;
  v16 = v4[1];
  v17 = *(v4 + 16);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v30 = *(v26 + 16);
  v31 = v15;
  v32 = v16;
  v33 = v17;
  sub_1E5B5F77C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E3C0, &qword_1E5BFE810);
  sub_1E5B5FC8C(&qword_1EE2C62D0, &qword_1ED03E3C0, &qword_1E5BFE810, MEMORY[0x1E697D658]);
  sub_1E5BF6C84();
  sub_1E5BF6D74();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F0E8, &qword_1E5BFB308);
  v20 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
  v21 = sub_1E5B83AB8();
  v22 = MEMORY[0x1E6981CD8];
  v23 = MEMORY[0x1E6981CD0];
  sub_1E5BF6B74();
  (*(v8 + 8))(v10, v7);
  v34 = v7;
  v35 = v22;
  v36 = v19;
  v37 = v20;
  v38 = v23;
  v39 = v21;
  swift_getOpaqueTypeConformance2();
  v24 = v27;
  sub_1E5BF69F4();
  return (*(v28 + 8))(v14, v24);
}

uint64_t sub_1E5B82578@<X0>(uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = type metadata accessor for PreviewButton(0, a4, a5, a4);
  sub_1E5B82098(v7, v8, v9, v10);
  swift_getKeyPath();
  sub_1E5BF6E34();

  sub_1E5B81070();
  result = sub_1E5BF69E4();
  *a6 = result;
  *(a6 + 8) = v12;
  *(a6 + 16) = v13 & 1;
  *(a6 + 24) = v14;
  return result;
}

uint64_t sub_1E5B82638@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E5BF6BE4();
  *a1 = result;
  return result;
}

uint64_t sub_1E5B82678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F0E8, &qword_1E5BFB308) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F100, &qword_1E5BFB310);
  sub_1E5BF6714();
  *v4 = swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E1E0, "ܳ");
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

uint64_t PreviewButton.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_1E5B82814(v4, v5, v6, v7, v8, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  *(v9 + 48) = v6;
  v10 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ED03F020, &qword_1E5BFB1E0) + 36));
  *v10 = sub_1E5B83600;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;

  return sub_1E5B5F5EC(v4, v5);
}

uint64_t sub_1E5B82814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v104 = a6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F118, &qword_1E5BFB320);
  MEMORY[0x1EEE9AC00](v92);
  v93 = &v90 - v11;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F110, &qword_1E5BFB318);
  MEMORY[0x1EEE9AC00](v101);
  v94 = &v90 - v12;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F120, &qword_1E5BFB328);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v90 - v13;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F128, &qword_1E5BFB330);
  MEMORY[0x1EEE9AC00](v98);
  v99 = &v90 - v14;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F0D8, &qword_1E5BFB2F8);
  MEMORY[0x1EEE9AC00](v106);
  v100 = &v90 - v15;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F130, &qword_1E5BFB338);
  v107 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v17 = &v90 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB58, &qword_1E5BF9E60);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v90 - v19;
  v21 = a1;
  v116 = a1;
  v117 = a2;
  v22 = a2;
  v97 = a3;
  v118 = a3 & 1;
  v24 = type metadata accessor for PreviewButton(0, a4, a5, v23);
  sub_1E5B82098(v24, v25, v26, v27);
  v95 = a4;
  v108 = a4;
  v109 = a5;
  v96 = a5;
  swift_getKeyPath();
  sub_1E5BF6E34();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v110 = v21;
    v111 = v22;
    LOBYTE(v112) = a3 & 1;
    sub_1E5B82234(0, 0, v24, v17);
    v44 = v107;
    v45 = v102;
    (*(v107 + 16))(v99, v17, v102);
    swift_storeEnumTagMultiPayload();
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
    v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
    v49 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    v50 = sub_1E5B83AB8();
    v110 = v47;
    v111 = MEMORY[0x1E6981CD8];
    v112 = v48;
    v113 = v49;
    v114 = MEMORY[0x1E6981CD0];
    v115 = v50;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v110 = v46;
    v111 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1E5B83B9C();
    v52 = v100;
    sub_1E5BF6864();
    sub_1E5B5F864(v52, v103, &qword_1ED03F0D8, &qword_1E5BFB2F8);
    swift_storeEnumTagMultiPayload();
    sub_1E5B83940();
    sub_1E5BF6864();
    sub_1E5B5F804(v52, &qword_1ED03F0D8, &qword_1E5BFB2F8);
    return (*(v44 + 8))(v17, v45);
  }

  v29 = v102;
  v30 = v107;
  if (!EnumCaseMultiPayload)
  {
LABEL_5:
    sub_1E5B7CE34(v20);
    v110 = v21;
    v111 = v22;
    v33 = v97 & 1;
    LOBYTE(v112) = v97 & 1;
    v34 = swift_allocObject();
    v35 = v96;
    *(v34 + 16) = v95;
    *(v34 + 24) = v35;
    *(v34 + 32) = v21;
    *(v34 + 40) = v22;
    *(v34 + 48) = v33;
    sub_1E5B5F5EC(v21, v22);
    sub_1E5B82234(sub_1E5B83D14, v34, v24, v17);

    v36 = v17;
    (*(v30 + 16))(v103, v17, v29);
    swift_storeEnumTagMultiPayload();
    sub_1E5B83940();
    v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
    v40 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    v41 = sub_1E5B83AB8();
    v110 = v38;
    v111 = MEMORY[0x1E6981CD8];
    v112 = v39;
    v113 = v40;
    v114 = MEMORY[0x1E6981CD0];
    v115 = v41;
    v42 = swift_getOpaqueTypeConformance2();
    v110 = v37;
    v111 = v42;
    swift_getOpaqueTypeConformance2();
    sub_1E5BF6864();
    return (*(v30 + 8))(v36, v29);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03EB68, &unk_1E5BF9E70) + 48);
    v32 = sub_1E5BF6464();
    (*(*(v32 - 8) + 8))(&v20[v31], v32);
    goto LABEL_5;
  }

  v95 = v24;
  v91 = v17;
  v54 = *v20;
  v53 = *(v20 + 1);
  v96 = *(v20 + 2);

  sub_1E5B83D44();
  v55 = swift_allocError();
  *v56 = 1;
  v57 = sub_1E5BF6364();
  v58 = [v57 domain];

  v59 = sub_1E5BF6FA4();
  v61 = v60;

  if (v54 == v59 && v53 == v61)
  {
  }

  else
  {
    v62 = sub_1E5BF7444();

    if ((v62 & 1) == 0)
    {
LABEL_13:
      v110 = v21;
      v111 = v22;
      LOBYTE(v112) = v97 & 1;
      v74 = v91;
      sub_1E5B82234(0, 0, v95, v91);
      v75 = v107;
      (*(v107 + 16))(v93, v74, v29);
      swift_storeEnumTagMultiPayload();
      v76 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
      v77 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
      v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
      v79 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
      v80 = sub_1E5B83AB8();
      v110 = v77;
      v111 = MEMORY[0x1E6981CD8];
      v112 = v78;
      v113 = v79;
      v114 = MEMORY[0x1E6981CD0];
      v115 = v80;
      v81 = swift_getOpaqueTypeConformance2();
      v110 = v76;
      v111 = v81;
      swift_getOpaqueTypeConformance2();
      v73 = v94;
      sub_1E5BF6864();
      (*(v75 + 8))(v74, v29);
      goto LABEL_14;
    }
  }

  v63 = swift_allocError();
  *v64 = 1;
  v65 = sub_1E5BF6364();
  v66 = [v65 code];

  if (v96 != v66)
  {
    goto LABEL_13;
  }

  swift_storeEnumTagMultiPayload();
  v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
  v70 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
  v71 = sub_1E5B83AB8();
  v110 = v68;
  v111 = MEMORY[0x1E6981CD8];
  v112 = v69;
  v113 = v70;
  v114 = MEMORY[0x1E6981CD0];
  v115 = v71;
  v72 = swift_getOpaqueTypeConformance2();
  v110 = v67;
  v111 = v72;
  swift_getOpaqueTypeConformance2();
  v73 = v94;
  sub_1E5BF6864();
LABEL_14:
  v82 = v103;
  sub_1E5B5F864(v73, v99, &qword_1ED03F110, &qword_1E5BFB318);
  swift_storeEnumTagMultiPayload();
  v83 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
  v85 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
  v86 = sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
  v87 = sub_1E5B83AB8();
  v110 = v84;
  v111 = MEMORY[0x1E6981CD8];
  v112 = v85;
  v113 = v86;
  v114 = MEMORY[0x1E6981CD0];
  v115 = v87;
  v88 = swift_getOpaqueTypeConformance2();
  v110 = v83;
  v111 = v88;
  swift_getOpaqueTypeConformance2();
  sub_1E5B83B9C();
  v89 = v100;
  sub_1E5BF6864();
  sub_1E5B5F864(v89, v82, &qword_1ED03F0D8, &qword_1E5BFB2F8);
  swift_storeEnumTagMultiPayload();
  sub_1E5B83940();
  sub_1E5BF6864();
  sub_1E5B5F804(v89, &qword_1ED03F0D8, &qword_1E5BFB2F8);
  return sub_1E5B5F804(v73, &qword_1ED03F110, &qword_1E5BFB318);
}

uint64_t sub_1E5B8359C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v6 = type metadata accessor for PreviewButton(0, a4, a5, a4);
  sub_1E5B82098(v6, v7, v8, v9);
  sub_1E5BF6E44();
}

uint64_t sub_1E5B83650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1E5B836B0()
{
  result = qword_1ED03F0A8;
  if (!qword_1ED03F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ED03F020, &qword_1E5BFB1E0);
    sub_1E5B8373C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F0A8);
  }

  return result;
}

unint64_t sub_1E5B8373C()
{
  result = qword_1ED03F0B0;
  if (!qword_1ED03F0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0B8, &qword_1E5BFB2E8);
    sub_1E5B837C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F0B0);
  }

  return result;
}

unint64_t sub_1E5B837C0()
{
  result = qword_1ED03F0C0;
  if (!qword_1ED03F0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0C8, &qword_1E5BFB2F0);
    sub_1E5B83940();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    sub_1E5B83AB8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F0C0);
  }

  return result;
}

unint64_t sub_1E5B83940()
{
  result = qword_1ED03F0D0;
  if (!qword_1ED03F0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0D8, &qword_1E5BFB2F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    sub_1E5B83AB8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E5B83B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F0D0);
  }

  return result;
}

unint64_t sub_1E5B83AB8()
{
  result = qword_1ED03F0F0;
  if (!qword_1ED03F0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    sub_1E5B5FC8C(&qword_1ED03F0F8, &qword_1ED03F100, &qword_1E5BFB310, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F0F0);
  }

  return result;
}

unint64_t sub_1E5B83B9C()
{
  result = qword_1ED03F108;
  if (!qword_1ED03F108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F110, &qword_1E5BFB318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E0, &qword_1E5BFB300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03E1E0, "ܳ");
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED03F0E8, &qword_1E5BFB308);
    sub_1E5B5FC8C(&qword_1EE2C62B0, &qword_1ED03E1E0, "ܳ", MEMORY[0x1E697D680]);
    sub_1E5B83AB8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F108);
  }

  return result;
}

unint64_t sub_1E5B83D44()
{
  result = qword_1EE2C7560[0];
  if (!qword_1EE2C7560[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C7560);
  }

  return result;
}

uint64_t sub_1E5B83E18(uint64_t a1)
{
  v2 = sub_1E5BF6724();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1E5BF6754();
}

uint64_t sub_1E5B83F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v47 = a1;
  v45 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E758, &unk_1E5BFB490);
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v46 = (v33 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E760, &qword_1E5BF9120);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v37 = v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v36 = v33 - v13;
  v14 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v15 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v16 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  v44 = a4;
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  v17 = sub_1E5BF69D4();
  v39 = v18;
  v40 = v17;
  v38 = v19;
  v41 = v20;
  sub_1E5BF6614();
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  *(v21 + 32) = a4 & 1;
  sub_1E5B5F5EC(a2, a3);
  sub_1E5BF6D34();
  v34 = v49;
  v35 = v48;
  v33[1] = v50;
  sub_1E5BF6614();
  swift_getKeyPath();
  v22 = v36;
  sub_1E5BF6E34();

  v23 = v22;
  v24 = v37;
  sub_1E5B5F8D4(v23, v37, &qword_1ED03E760, &qword_1E5BF9120);
  if ((*(v42 + 48))(v24, 1, v43) == 1)
  {
    v25 = type metadata accessor for PlannedWorkoutConfirmation(0);
    v26 = v46;
    v27 = (*(*(v25 - 8) + 56))(v46, 1, 1, v25);
  }

  else
  {
    v26 = v46;
    v27 = sub_1E5B5F8D4(v24, v46, &qword_1ED03E758, &unk_1E5BFB490);
  }

  v46 = v33;
  MEMORY[0x1EEE9AC00](v27);
  MEMORY[0x1EEE9AC00](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F140, &qword_1E5BFB4E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F148, &unk_1E5BFB4F0);
  type metadata accessor for PlannedWorkoutConfirmation(0);
  sub_1E5B5FC8C(&qword_1EE2C6320, &qword_1ED03F140, &qword_1E5BFB4E8, MEMORY[0x1E697FDF8]);
  sub_1E5B5FC8C(&qword_1EE2C6298, &qword_1ED03F148, &unk_1E5BFB4F0, MEMORY[0x1E6981F48]);
  v29 = v38;
  v31 = v39;
  v30 = v40;
  sub_1E5BF6AE4();

  sub_1E5B7AD08(v30, v31, v29 & 1);

  return sub_1E5B5F804(v26, &qword_1ED03E758, &unk_1E5BFB490);
}

uint64_t sub_1E5B84588@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, _BYTE *a4@<X8>)
{
  v46 = a3;
  v47 = a2;
  v45 = a1;
  v50 = a4;
  v4 = sub_1E5BF6494();
  v49 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v42 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E790, &qword_1E5BF9150);
  MEMORY[0x1EEE9AC00](v44);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E5E8, &unk_1E5BF9600);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E758, &unk_1E5BFB490);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v41 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E760, &qword_1E5BF9120);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v41 - v23;
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = (*(v16 + 48))(v24, 1, v15);
  if (result != 1)
  {
    sub_1E5B5F8D4(v24, v21, &qword_1ED03E758, &unk_1E5BFB490);
    sub_1E5B5F864(v21, v18, &qword_1ED03E758, &unk_1E5BFB490);
    v27 = type metadata accessor for PlannedWorkoutConfirmation(0);
    v28 = (*(*(v27 - 8) + 48))(v18, 1, v27);
    v41 = v21;
    if (v28 == 1)
    {
      sub_1E5B5F804(v18, &qword_1ED03E758, &unk_1E5BFB490);
      v29 = 1;
      v30 = v48;
      v31 = v49;
    }

    else
    {
      v30 = v48;
      v31 = v49;
      (*(v49 + 16))(v48, v18, v4);
      sub_1E5B85A38(v18, type metadata accessor for PlannedWorkoutConfirmation);
      v29 = 0;
    }

    v32 = *(v31 + 56);
    v32(v30, v29, 1, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
    sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
    sub_1E5BF6614();
    swift_getKeyPath();
    sub_1E5BF6E34();

    v32(v12, 0, 1, v4);
    v33 = *(v44 + 48);
    sub_1E5B5F864(v30, v7, &qword_1ED03E5E8, &unk_1E5BF9600);
    sub_1E5B5F864(v12, &v7[v33], &qword_1ED03E5E8, &unk_1E5BF9600);
    v34 = *(v31 + 48);
    if (v34(v7, 1, v4) == 1)
    {
      sub_1E5B5F804(v12, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v30, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v41, &qword_1ED03E758, &unk_1E5BFB490);
      if (v34(&v7[v33], 1, v4) == 1)
      {
        result = sub_1E5B5F804(v7, &qword_1ED03E5E8, &unk_1E5BF9600);
        v35 = 1;
LABEL_13:
        v26 = v35 & 1;
        goto LABEL_14;
      }
    }

    else
    {
      v36 = v43;
      sub_1E5B5F864(v7, v43, &qword_1ED03E5E8, &unk_1E5BF9600);
      if (v34(&v7[v33], 1, v4) != 1)
      {
        v37 = v49;
        v38 = &v7[v33];
        v39 = v42;
        (*(v49 + 32))(v42, v38, v4);
        sub_1E5B7AE4C();
        v35 = sub_1E5BF6F14();
        v40 = *(v37 + 8);
        v40(v39, v4);
        sub_1E5B5F804(v12, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v30, &qword_1ED03E5E8, &unk_1E5BF9600);
        sub_1E5B5F804(v41, &qword_1ED03E758, &unk_1E5BFB490);
        v40(v36, v4);
        result = sub_1E5B5F804(v7, &qword_1ED03E5E8, &unk_1E5BF9600);
        goto LABEL_13;
      }

      sub_1E5B5F804(v12, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v30, &qword_1ED03E5E8, &unk_1E5BF9600);
      sub_1E5B5F804(v41, &qword_1ED03E758, &unk_1E5BFB490);
      (*(v49 + 8))(v36, v4);
    }

    result = sub_1E5B5F804(v7, &qword_1ED03E790, &qword_1E5BF9150);
    v35 = 0;
    goto LABEL_13;
  }

  v26 = 0;
LABEL_14:
  *v50 = v26;
  return result;
}

uint64_t sub_1E5B84CA4()
{
  type metadata accessor for StartWorkoutButtonAction(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E5B84CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, _BYTE *a5@<X8>)
{
  v38 = a4;
  v42 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E338, &unk_1E5BF89E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v37[-v9];
  v10 = type metadata accessor for PlannedWorkoutConfirmation(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E530, &qword_1E5BF8830);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v37[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v40 = &v37[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v37[-v23];
  sub_1E5B85898(a1, v13);
  v25 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  LOBYTE(v12) = v38 & 1;
  *(v26 + 32) = v38 & 1;
  sub_1E5B858FC(v13, v26 + v25);
  v46 = a2;
  v47 = a3;
  v48 = v12;
  sub_1E5B5F5EC(a2, a3);
  sub_1E5BF6C84();
  v27 = v39;
  sub_1E5BF65D4();
  v28 = sub_1E5BF65E4();
  (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  v29 = swift_allocObject();
  *(v29 + 16) = a2;
  *(v29 + 24) = a3;
  *(v29 + 32) = v12;
  v43 = a2;
  v44 = a3;
  v45 = v12;
  sub_1E5B5F5EC(a2, a3);
  sub_1E5BF6C74();
  v30 = *(v15 + 16);
  v31 = v40;
  v30(v40, v24, v14);
  v32 = v41;
  v30(v41, v21, v14);
  v33 = v42;
  v30(v42, v31, v14);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F150, &qword_1E5C05DD0);
  v30(&v33[*(v34 + 48)], v32, v14);
  v35 = *(v15 + 8);
  v35(v21, v14);
  v35(v24, v14);
  v35(v32, v14);
  return (v35)(v31, v14);
}

uint64_t sub_1E5B85148(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  started = type metadata accessor for StartWorkoutButtonAction(0);
  MEMORY[0x1EEE9AC00](started);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  v8 = type metadata accessor for PlannedWorkoutConfirmation(0);
  v9 = (a4 + v8[7]);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(a4 + v8[6]);
  v13 = *(a4 + v8[5]);
  *v7 = v10;
  v7[1] = v11;
  v7[2] = v12;
  v7[3] = v13;
  swift_storeEnumTagMultiPayload();

  sub_1E5BF6E44();

  return sub_1E5B85A38(v7, type metadata accessor for StartWorkoutButtonAction);
}

uint64_t sub_1E5B852BC(uint64_t a1, uint64_t a2, char a3)
{
  started = type metadata accessor for StartWorkoutButtonAction(0);
  MEMORY[0x1EEE9AC00](started);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_storeEnumTagMultiPayload();
  sub_1E5BF6E44();

  return sub_1E5B85A38(v5, type metadata accessor for StartWorkoutButtonAction);
}

uint64_t sub_1E5B853EC@<X0>(uint64_t a6@<X8>)
{
  v7 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1E5BF6F24();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a6 = result;
  *(a6 + 8) = v11;
  *(a6 + 16) = v12 & 1;
  *(a6 + 24) = v13;
  return result;
}

uint64_t sub_1E5B855D8@<X0>(uint64_t a5@<X8>)
{
  v6 = sub_1E5BF64B4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1E5BF6F94();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1E5BF6F74();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1E5BF6F64();
  sub_1E5BF6F54();
  type metadata accessor for PlannedWorkoutConfirmation(0);
  sub_1E5BF6F44();
  sub_1E5BF6F54();
  sub_1E5BF6F84();
  if (qword_1EE2C6208 != -1)
  {
    swift_once();
  }

  v9 = qword_1EE2CD210;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F138, &qword_1E5BFB4A0);
  sub_1E5B5FC8C(&qword_1EE2C6258, &qword_1ED03F138, &qword_1E5BFB4A0, MEMORY[0x1E6999B78]);
  sub_1E5BF6614();
  swift_getKeyPath();
  sub_1E5BF6E34();

  result = sub_1E5BF69D4();
  *a5 = result;
  *(a5 + 8) = v11;
  *(a5 + 16) = v12 & 1;
  *(a5 + 24) = v13;
  return result;
}

uint64_t sub_1E5B85898(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannedWorkoutConfirmation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B858FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannedWorkoutConfirmation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5B85960()
{
  v1 = *(type metadata accessor for PlannedWorkoutConfirmation(0) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = v0 + ((*(v1 + 80) + 33) & ~*(v1 + 80));

  return sub_1E5B85148(v2, v3, v4, v5);
}

uint64_t sub_1E5B85A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5B85B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5BF7444();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5B85B88(uint64_t a1)
{
  v2 = sub_1E5B85D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5B85BC4(uint64_t a1)
{
  v2 = sub_1E5B85D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccountButtonState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F158, &qword_1E5BFB540);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B85D4C();
  sub_1E5BF7524();
  v10 = v7;
  sub_1E5B7EE1C();
  sub_1E5BF7424();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1E5B85D4C()
{
  result = qword_1ED03F160;
  if (!qword_1ED03F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F160);
  }

  return result;
}

uint64_t AccountButtonState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F168, &qword_1E5BFB548);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5B85D4C();
  sub_1E5BF7514();
  if (!v2)
  {
    sub_1E5B7F380();
    sub_1E5BF7364();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t AccountButtonState.hashValue.getter()
{
  v1 = *v0;
  sub_1E5BF74B4();
  MEMORY[0x1E6937C10](v1);
  return sub_1E5BF7504();
}

unint64_t sub_1E5B85FEC()
{
  result = qword_1ED03F170;
  if (!qword_1ED03F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F170);
  }

  return result;
}

unint64_t sub_1E5B86044()
{
  result = qword_1ED03F178;
  if (!qword_1ED03F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F178);
  }

  return result;
}

unint64_t sub_1E5B8609C()
{
  result = qword_1ED03F180;
  if (!qword_1ED03F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED03F180);
  }

  return result;
}

__n128 DynamicStartWorkoutFeature.init(environment:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t DynamicStartWorkoutFeature.reduce(localState:sharedState:sideEffects:action:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v73 = a3;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E910, &qword_1E5BF95B0);
  v54 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v68 = v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v51 - v7;
  v10 = *v3;
  v9 = v3[1];
  v11 = v3[3];
  v72 = v3[2];
  v12 = *a2;
  v13 = a2[1];
  v14 = (a2 + *(type metadata accessor for DynamicStartWorkoutState(0) + 28));
  v15 = v14[1];
  v71 = *v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03E7D0, &qword_1E5BF9330);
  v59 = v16[12];
  v17 = v16[16];
  v60 = v16[20];
  v18 = &v8[v16[24]];
  v67 = v12;
  v75 = v12;
  v76 = v13;

  v66 = v13;
  swift_bridgeObjectRetain_n();
  sub_1E5BF7254();
  v78 = 7;
  sub_1E5B6C48C(v77, &v75);
  v65 = sub_1E5B6C4E8();
  sub_1E5BF7254();
  sub_1E5B6C53C(v77);
  v19 = *MEMORY[0x1E6999B50];
  v20 = sub_1E5BF6E24();
  v21 = *(v20 - 8);
  v22 = *(v21 + 104);
  v64 = v19;
  v63 = v20;
  v62 = v22;
  v61 = v21 + 104;
  (v22)(&v8[v17], v19);
  v23 = swift_allocObject();
  v24 = v72;
  v23[2] = v71;
  v23[3] = v15;
  v69 = v10;
  v70 = v9;
  v23[4] = v10;
  v23[5] = v9;
  v23[6] = v24;
  v23[7] = v11;
  *v18 = &unk_1E5BFB768;
  *(v18 + 1) = v23;
  v25 = v54;

  v71 = v11;

  sub_1E5BF7094();
  v26 = *MEMORY[0x1E6999B48];
  v27 = sub_1E5BF6E14();
  v28 = *(v27 - 8);
  v29 = *(v28 + 104);
  v30 = &v8[v60];
  LODWORD(v60) = v26;
  v59 = v27;
  v58 = v29;
  v57 = v28 + 104;
  (v29)(v30, v26);
  v31 = v25[13];
  v56 = *MEMORY[0x1E6999AD8];
  v55 = v31;
  v31(v8);
  v32 = *v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_1E5B715B4(0, v32[2] + 1, 1, v32);
  }

  v34 = v32[2];
  v33 = v32[3];
  v35 = v68;
  if (v34 >= v33 >> 1)
  {
    v32 = sub_1E5B715B4((v33 > 1), v34 + 1, 1, v32);
  }

  v32[2] = v34 + 1;
  v37 = v25[4];
  v36 = (v25 + 4);
  v53 = (v36[48] + 32) & ~v36[48];
  v38 = *(v36 + 5);
  v39 = v8;
  v40 = v74;
  v54 = v37;
  (v37)(v32 + v53 + v38 * v34, v39, v74);
  v51[1] = v16[12];
  v41 = v16[16];
  v52 = v16[20];
  v42 = &v35[v16[24]];
  v44 = v66;
  v43 = v67;
  v75 = v67;
  v76 = v66;

  sub_1E5BF7254();
  v78 = 5;
  sub_1E5B6C48C(v77, &v75);
  sub_1E5BF7254();
  sub_1E5B6C53C(v77);
  v62(&v35[v41], v64, v63);
  v45 = swift_allocObject();
  v46 = v70;
  v45[2] = v69;
  v45[3] = v46;
  v47 = v71;
  v45[4] = v72;
  v45[5] = v47;
  v45[6] = v43;
  v45[7] = v44;
  *v42 = &unk_1E5BFB778;
  *(v42 + 1) = v45;

  sub_1E5BF7094();
  v58(&v35[v52], v60, v59);
  v55(v35, v56, v40);
  v49 = v32[2];
  v48 = v32[3];
  if (v49 >= v48 >> 1)
  {
    v32 = sub_1E5B715B4((v48 > 1), v49 + 1, 1, v32);
  }

  v32[2] = v49 + 1;
  result = (v54)(v32 + v53 + v49 * v38, v35, v74);
  *v73 = v32;
  return result;
}

uint64_t sub_1E5B866D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a2;
  v7[3] = a3;
  sub_1E5BF7084();
  v7[6] = sub_1E5BF7074();
  v9 = sub_1E5BF7054();
  v7[7] = v9;
  v7[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E5B86770, v9, v8);
}

uint64_t sub_1E5B86770()
{
  v1 = v0[3];
  if (v1)
  {
    v6 = (v0[4] + *v0[4]);
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1E5B6C734;
    v3 = v0[2];

    return v6(v3, v1);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1E5B868B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5B6E314;

  return sub_1E5B866D4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1E5B86984(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_1E5BF7084();
  v7[3] = sub_1E5BF7074();
  v13 = (a2 + *a2);
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_1E5B6F8E4;

  return v13(a6, a7);
}

uint64_t objectdestroyTm_2(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 24));

  a2(*(v2 + 56));

  return swift_deallocObject();
}

uint64_t sub_1E5B86B14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5B6D9A0;

  return sub_1E5B86984(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1E5B86BE8()
{
  result = qword_1EE2C69A8;
  if (!qword_1EE2C69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69A8);
  }

  return result;
}

unint64_t sub_1E5B86C40()
{
  result = qword_1EE2C69B0;
  if (!qword_1EE2C69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C69B0);
  }

  return result;
}

unint64_t sub_1E5B86C98()
{
  result = qword_1EE2C6DE0[0];
  if (!qword_1EE2C6DE0[0])
  {
    type metadata accessor for DynamicStartWorkoutState(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2C6DE0);
  }

  return result;
}

uint64_t sub_1E5B86D00()
{
  v0 = sub_1E5BF6594();
  __swift_allocate_value_buffer(v0, qword_1ED053DE0);
  __swift_project_value_buffer(v0, qword_1ED053DE0);
  return sub_1E5BF6584();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void *sub_1E5B86DDC()
{
  swift_getKeyPath();
  sub_1E5B78108();
  sub_1E5BF64D4();

  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_1E5B86E54(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E5B78108();
    sub_1E5BF64C4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1E5B76870();
  v5 = v4;
  v6 = a1;
  v7 = sub_1E5BF71E4();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 16);
LABEL_8:
  *(v2 + 16) = a1;
}

uint64_t sub_1E5B86FA4()
{
  swift_getKeyPath();
  sub_1E5B78108();
  sub_1E5BF64D4();

  swift_beginAccess();
}

uint64_t sub_1E5B8702C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E5B78108();
  sub_1E5BF64D4();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1E5B870BC(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1E5BAF15C(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E5B78108();
    sub_1E5BF64C4();
  }
}

uint64_t sub_1E5B871D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

uint64_t AccountButtonContactDataProvider.__allocating_init(makeAccountChangedStream:makeUserContactChangedStream:fetchUserContact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  AccountButtonContactDataProvider.init(makeAccountChangedStream:makeUserContactChangedStream:fetchUserContact:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void *AccountButtonContactDataProvider.init(makeAccountChangedStream:makeUserContactChangedStream:fetchUserContact:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v48 = a1;
  v49 = a4;
  v46 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F188, &qword_1E5BFB840);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - v12;
  v14 = MEMORY[0x1E69E7CC0];
  v7[2] = 0;
  v7[5] = v14;
  v15 = v7 + 5;
  sub_1E5BF6504();
  v7[3] = a5;
  v7[4] = a6;
  v16 = sub_1E5BF70C4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v18(v13, 1, 1, v16);
  v20 = sub_1E5BF7084();
  v47 = a6;

  v21 = sub_1E5BF7074();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v7;
  sub_1E5B880B4(0, 0, v13, &unk_1E5BFB850, v22);

  v43 = v19;
  v44 = v18;
  v18(v13, 1, 1, v16);
  v24 = swift_allocObject();
  swift_weakInit();

  v45 = v20;
  v25 = sub_1E5BF7074();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v23;
  v26[4] = v48;
  v26[5] = a2;
  v48 = a2;
  v26[6] = v24;

  v27 = sub_1E5B880B4(0, 0, v13, &unk_1E5BFB8A0, v26);
  swift_getKeyPath();
  v50 = v7;
  sub_1E5B78108();
  sub_1E5BF64D4();

  v50 = v7;
  swift_getKeyPath();
  sub_1E5BF64F4();

  swift_beginAccess();
  v28 = v7[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[5] = v28;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = sub_1E5B715D8(0, v28[2] + 1, 1, v28);
    *v15 = v28;
  }

  v31 = v28[2];
  v30 = v28[3];
  if (v31 >= v30 >> 1)
  {
    v28 = sub_1E5B715D8((v30 > 1), v31 + 1, 1, v28);
  }

  v28[2] = v31 + 1;
  v28[v31 + 4] = v27;
  v7[5] = v28;
  swift_endAccess();
  v50 = v7;
  swift_getKeyPath();
  sub_1E5BF64E4();

  v44(v13, 1, 1, v16);
  v32 = swift_allocObject();
  swift_weakInit();

  v33 = v49;

  v34 = sub_1E5BF7074();
  v35 = swift_allocObject();
  v35[2] = v34;
  v36 = v46;
  v35[3] = MEMORY[0x1E69E85E0];
  v35[4] = v36;
  v35[5] = v33;
  v35[6] = v32;

  v37 = sub_1E5B880B4(0, 0, v13, &unk_1E5BFB8D8, v35);
  swift_getKeyPath();
  v50 = v7;
  sub_1E5BF64D4();

  v50 = v7;
  swift_getKeyPath();
  sub_1E5BF64F4();

  swift_beginAccess();
  v38 = v7[5];
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v7[5] = v38;
  if ((v39 & 1) == 0)
  {
    v38 = sub_1E5B715D8(0, v38[2] + 1, 1, v38);
    *v15 = v38;
  }

  v41 = v38[2];
  v40 = v38[3];
  if (v41 >= v40 >> 1)
  {
    v38 = sub_1E5B715D8((v40 > 1), v41 + 1, 1, v38);
  }

  v38[2] = v41 + 1;
  v38[v41 + 4] = v37;
  v7[5] = v38;
  swift_endAccess();
  v50 = v7;
  swift_getKeyPath();
  sub_1E5BF64E4();

  return v7;
}

uint64_t sub_1E5B87850()
{
  v0[2] = sub_1E5BF7084();
  v0[3] = sub_1E5BF7074();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1E5B878FC;

  return sub_1E5B87B4C();
}

uint64_t sub_1E5B878FC()
{

  v1 = sub_1E5BF7054();

  return MEMORY[0x1EEE6DFA0](sub_1E5B87A38, v1, v0);
}

uint64_t sub_1E5B87A38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5B87A98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5B6E314;

  return sub_1E5B87850();
}

uint64_t sub_1E5B87B4C()
{
  v1[7] = v0;
  sub_1E5BF7084();
  v1[8] = sub_1E5BF7074();
  v3 = sub_1E5BF7054();
  v1[9] = v3;
  v1[10] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5B87BE4, v3, v2);
}

uint64_t sub_1E5B87BE4()
{
  v3 = (*(*(v0 + 56) + 24) + **(*(v0 + 56) + 24));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1E5B87CD0;

  return v3();
}

uint64_t sub_1E5B87CD0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_1E5B87E64;
  }

  else
  {
    v4[13] = a1;
    v5 = v4[9];
    v6 = v4[10];
    v7 = sub_1E5B87DF8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E5B87DF8()
{
  v1 = *(v0 + 104);

  sub_1E5B86E54(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5B87E64()
{
  v17 = v0;

  if (qword_1ED03E1D0 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = sub_1E5BF6594();
  __swift_project_value_buffer(v2, qword_1ED053DE0);
  v3 = v1;
  v4 = sub_1E5BF6574();
  v5 = sub_1E5BF71A4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136446210;
    swift_getErrorValue();
    v8 = sub_1E5BF7454();
    v10 = sub_1E5B89CE4(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1E5B54000, v4, v5, "[AccountButtonContactDataProvider] Failed fetching user contact: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E6938270](v7, -1, -1);
    MEMORY[0x1E6938270](v6, -1, -1);
  }

  v11 = v0[7];
  v12 = v0[12];
  if (*(v11 + 16))
  {
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v11;
    *(v13 + 24) = 0;
    v0[5] = v11;
    sub_1E5B78108();
    sub_1E5BF64C4();
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E5B880B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F188, &qword_1E5BFB840);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1E5B8A304(a3, v25 - v10);
  v12 = sub_1E5BF70C4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1E5B8A374(v11);
  }

  else
  {
    sub_1E5BF70B4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1E5BF7054();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1E5BF6FC4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1E5B8A374(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1E5B8A374(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1E5B88374(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a6;
  v6[16] = sub_1E5BF7084();
  v6[17] = sub_1E5BF7074();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[18] = v8;
  *v8 = v6;
  v8[1] = sub_1E5B88490;

  return v10(v6 + 7);
}

uint64_t sub_1E5B88490()
{
  v1 = *v0;

  v3 = sub_1E5BF7054();
  *(v1 + 152) = v3;
  *(v1 + 160) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5B885D4, v3, v2);
}

uint64_t sub_1E5B885D4()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5BF70F4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  swift_beginAccess();
  v5 = sub_1E5BF7074();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1E5B887C4;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 25, v5, v7);
}

uint64_t sub_1E5B887C4()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x1EEE6DFA0](sub_1E5B888D8, v4, v5);
  }

  return result;
}

uint64_t sub_1E5B888D8()
{
  if (*(v0 + 200))
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    *(v0 + 184) = Strong;
    if (Strong)
    {
      v4 = swift_task_alloc();
      *(v0 + 192) = v4;
      *v4 = v0;
      v4[1] = sub_1E5B88A80;

      return sub_1E5B87B4C();
    }

    else
    {
      v5 = sub_1E5BF7074();
      *(v0 + 168) = v5;
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
      v6 = swift_task_alloc();
      *(v0 + 176) = v6;
      *v6 = v0;
      v6[1] = sub_1E5B887C4;
      v7 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D8D0](v0 + 200, v5, v7);
    }
  }
}

uint64_t sub_1E5B88A80()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E5B88BC4, v3, v2);
}

uint64_t sub_1E5B88BC4(uint64_t a1)
{
  v2 = sub_1E5BF7074();
  v1[21] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_1E5B887C4;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 25, v2, v4);
}

uint64_t sub_1E5B88CA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5B6D9A0;

  return sub_1E5B88374(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for AccountButtonContactDataProvider(uint64_t a1)
{
  result = qword_1EE2C6530;
  if (!qword_1EE2C6530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5B88DB4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a6;
  v6[16] = sub_1E5BF7084();
  v6[17] = sub_1E5BF7074();
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v6[18] = v8;
  *v8 = v6;
  v8[1] = sub_1E5B88ED0;

  return v10(v6 + 7);
}

uint64_t sub_1E5B88ED0()
{
  v1 = *v0;

  v3 = sub_1E5BF7054();
  *(v1 + 152) = v3;
  *(v1 + 160) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E5B89014, v3, v2);
}

uint64_t sub_1E5B89014()
{
  v1 = v0[10];
  v2 = __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = *(v1 - 8);
  v4 = swift_task_alloc();
  (*(v3 + 16))(v4, v2, v1);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1E5BF70F4();

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  swift_beginAccess();
  v5 = sub_1E5BF7074();
  v0[21] = v5;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_1E5B89204;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 25, v5, v7);
}

uint64_t sub_1E5B89204()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x1EEE6DFA0](sub_1E5B89318, v4, v5);
  }

  return result;
}

uint64_t sub_1E5B89318()
{
  if (*(v0 + 200))
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    Strong = swift_weakLoadStrong();
    *(v0 + 184) = Strong;
    if (Strong)
    {
      v4 = swift_task_alloc();
      *(v0 + 192) = v4;
      *v4 = v0;
      v4[1] = sub_1E5B894C0;

      return sub_1E5B87B4C();
    }

    else
    {
      v5 = sub_1E5BF7074();
      *(v0 + 168) = v5;
      __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
      v6 = swift_task_alloc();
      *(v0 + 176) = v6;
      *v6 = v0;
      v6[1] = sub_1E5B89204;
      v7 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6D8D0](v0 + 200, v5, v7);
    }
  }
}

uint64_t sub_1E5B894C0()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E5B89604, v3, v2);
}

uint64_t sub_1E5B89604(uint64_t a1)
{
  v2 = sub_1E5BF7074();
  v1[21] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v1[5]);
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_1E5B89204;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v1 + 25, v2, v4);
}

uint64_t AccountButtonContactDataProvider.deinit()
{

  v1 = OBJC_IVAR____TtC14FitnessActions32AccountButtonContactDataProvider___observationRegistrar;
  v2 = sub_1E5BF6514();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AccountButtonContactDataProvider.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC14FitnessActions32AccountButtonContactDataProvider___observationRegistrar;
  v2 = sub_1E5BF6514();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E5B8980C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5B89904;

  return v6(a1);
}

uint64_t sub_1E5B89904()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5B89A44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5B6E314;

  return sub_1E5B88DB4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E5B89B14(uint64_t a1)
{
  result = sub_1E5BF6514();
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

void sub_1E5B89CAC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
  v4 = v2;
}

unint64_t sub_1E5B89CE4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E5B89DB0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E5B8A28C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1E5B89DB0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E5B89EBC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1E5BF7294();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_1E5B89EBC(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E5B89F08(a1, a2);
  sub_1E5B8A038(&unk_1F5F732E0);
  return v3;
}

void *sub_1E5B89F08(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E5B8A124(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E5BF7294();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E5BF6FF4();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E5B8A124(v10, 0);
        result = sub_1E5BF7264();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E5B8A038(uint64_t result)
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

  result = sub_1E5B8A198(result, v11, 1, v3);
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

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

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

void *sub_1E5B8A124(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F190, &qword_1E5BFB9A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E5B8A198(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED03F190, &qword_1E5BFB9A0);
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