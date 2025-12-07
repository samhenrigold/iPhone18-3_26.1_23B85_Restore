double Order.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x277D84FA0];
  *a1 = MEMORY[0x277D84FA0];
  *(a1 + 8) = v2;
  *(a1 + 16) = v2;
  *(a1 + 24) = v2;
  *(a1 + 32) = v2;
  *(a1 + 40) = v2;
  *(a1 + 48) = v2;
  v3 = MEMORY[0x277D84F90];
  *(a1 + 56) = sub_24ABEE868(MEMORY[0x277D84F90]);
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = v3;
  *(a1 + 104) = v2;
  return result;
}

unint64_t sub_24ABEE868(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AAB0, &unk_24AC118F0);
    v3 = sub_24AC0F6B8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24AC03818(v5, v6);
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

BOOL sub_24ABEE98C(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

uint64_t SourceValue.init(value:sourceTypes:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  (*(*(a3 - 8) + 32))(a7, a1);
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  result = type metadata accessor for SourceValue(0, v14);
  *(a7 + *(result + 52)) = v12;
  return result;
}

uint64_t sub_24ABEEA70(uint64_t a1, uint64_t a2)
{
  sub_24AC0F7C8();
  SourceValue.hash(into:)(v4, a2);
  return sub_24AC0F808();
}

uint64_t sub_24ABEEAE8@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v109 = a3;
  v5 = sub_24AC0F3A8();
  v110 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v103 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v102 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v102 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v104 = &v102 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v102 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v102 - v19;
  v21 = a1[4];
  v22 = a1[5];
  v23 = a1[2];
  v115 = a1[3];
  v116 = v21;
  v24 = a1[6];
  v117 = v22;
  v118 = v24;
  v25 = a1[1];
  v112 = *a1;
  v113 = v25;
  v114 = v23;
  v26 = a2[1];
  v119 = *a2;
  v120 = v26;
  v27 = a2[2];
  v28 = a2[3];
  v29 = a2[6];
  v124 = a2[5];
  v125 = v29;
  v30 = a2[4];
  v122 = v28;
  v123 = v30;
  v121 = v27;
  sub_24AC0F388();
  sub_24ABF391C(&v112, v111);
  v31 = sub_24AC0F398();
  v32 = sub_24AC0F558();
  sub_24ABF3954(&v112);
  v33 = os_log_type_enabled(v31, v32);
  v105 = v10;
  v106 = v13;
  v107 = v18;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v111[0] = v108;
    *v34 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8C8, &qword_24AC10640);
    sub_24ABF42F4(&qword_27EF9AAC0, &qword_27EF9A8C8, &qword_24AC10640, &protocol conformance descriptor for SourceValue<A>);
    v35 = sub_24AC0F538();
    v37 = sub_24ABF433C(v35, v36, v111);

    *(v34 + 4) = v37;
    *(v34 + 12) = 2080;
    v38 = sub_24AC0F538();
    v40 = sub_24ABF433C(v38, v39, v111);

    *(v34 + 14) = v40;
    *(v34 + 22) = 2080;
    v41 = sub_24AC0F538();
    v43 = sub_24ABF433C(v41, v42, v111);

    *(v34 + 24) = v43;
    _os_log_impl(&dword_24ABED000, v31, v32, "order 1 - orderNumber:%s, senderDomain:%s, trackingNumbers:%s", v34, 0x20u);
    v44 = v108;
    swift_arrayDestroy();
    MEMORY[0x24C22C700](v44, -1, -1);
    v45 = v34;
    v18 = v107;
    MEMORY[0x24C22C700](v45, -1, -1);
  }

  v108 = *(v110 + 8);
  v108(v20, v5);
  sub_24AC0F388();
  sub_24ABF391C(&v119, v111);
  v46 = sub_24AC0F398();
  v47 = sub_24AC0F558();
  sub_24ABF3954(&v119);
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v102 = v5;
    v50 = v49;
    v111[0] = v49;
    *v48 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8C8, &qword_24AC10640);
    sub_24ABF42F4(&qword_27EF9AAC0, &qword_27EF9A8C8, &qword_24AC10640, &protocol conformance descriptor for SourceValue<A>);
    v51 = sub_24AC0F538();
    v53 = sub_24ABF433C(v51, v52, v111);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2080;
    v54 = sub_24AC0F538();
    v56 = sub_24ABF433C(v54, v55, v111);

    *(v48 + 14) = v56;
    *(v48 + 22) = 2080;
    v57 = sub_24AC0F538();
    v59 = sub_24ABF433C(v57, v58, v111);

    *(v48 + 24) = v59;
    _os_log_impl(&dword_24ABED000, v46, v47, "order 2 - orderNumber:%s, senderDomain:%s, trackingNumbers:%s", v48, 0x20u);
    swift_arrayDestroy();
    v60 = v50;
    v5 = v102;
    MEMORY[0x24C22C700](v60, -1, -1);
    MEMORY[0x24C22C700](v48, -1, -1);

    v61 = v107;
  }

  else
  {

    v61 = v18;
  }

  v62 = v108;
  v108(v61, v5);
  v63 = sub_24AC0748C(v112);
  v64 = sub_24ABEF6F0(v63);

  v65 = sub_24AC0748C(v119);
  v66 = sub_24ABEF6F0(v65);

  v67 = sub_24AC07260(*(&v112 + 1));
  v68 = sub_24ABEF6F0(v67);

  v69 = sub_24AC07260(*(&v119 + 1));
  v70 = sub_24ABEF6F0(v69);

  v71 = *(v66 + 16);
  if (*(v64 + 16))
  {
    v72 = 1.0;
    if (v71)
    {
      goto LABEL_13;
    }
  }

  else if (!v71)
  {
    v73 = 1061997773;
    goto LABEL_12;
  }

  v73 = 1063675494;
LABEL_12:
  v72 = *&v73;
LABEL_13:
  if (sub_24ABEFA58(v66, v64))
  {
  }

  else
  {
    v74 = sub_24ABEFA58(v70, v68);

    if ((v74 & 1) == 0)
    {

      v97 = v104;
      sub_24AC0F388();
      v98 = sub_24AC0F398();
      v99 = sub_24AC0F558();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 134217984;
        *(v100 + 4) = v72;
        _os_log_impl(&dword_24ABED000, v98, v99, "basic match passed with confidence %f", v100, 0xCu);
        MEMORY[0x24C22C700](v100, -1, -1);
      }

      result = v62(v97, v5);
      v96 = v109;
      *v109 = 1;
      *(v96 + 3) = 0;
      *(v96 + 1) = 0;
      goto LABEL_31;
    }
  }

  v75 = sub_24AC0748C(v113);
  v76 = sub_24ABEF6F0(v75);

  v77 = sub_24AC0748C(v120);
  v78 = sub_24ABEF6F0(v77);

  v79 = sub_24ABEFA58(v78, v76);

  if ((v79 & 1) == 0)
  {

    v92 = v106;
    sub_24AC0F388();
    v93 = sub_24AC0F398();
    v94 = sub_24AC0F558();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 134217984;
      *(v95 + 4) = v72;
      _os_log_impl(&dword_24ABED000, v93, v94, "basic match passed with confidence %f", v95, 0xCu);
      MEMORY[0x24C22C700](v95, -1, -1);
    }

    result = v62(v92, v5);
    v96 = v109;
    *v109 = 1;
    *(v96 + 3) = 0;
    *(v96 + 1) = 1;
LABEL_31:
    *(v96 + 2) = 0;
    *(v96 + 8) = v72;
    v96[36] = 0;
    return result;
  }

  v80 = v105;
  sub_24AC0F378();
  v81 = sub_24AC0F398();
  v82 = sub_24AC0F558();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    *v83 = 0;
    _os_log_impl(&dword_24ABED000, v81, v82, "basic match failed", v83, 2u);
    MEMORY[0x24C22C700](v83, -1, -1);
  }

  v62(v80, v5);
  if ((sub_24ABEFA58(v66, v64) & 1) == 0)
  {

    goto LABEL_33;
  }

  v84 = *(v64 + 16);

  if (!v84)
  {
LABEL_33:

    goto LABEL_34;
  }

  v85 = *(v66 + 16);

  if (!v85)
  {
LABEL_34:
    v101 = v109;
    *v109 = 0;
    *(v101 + 1) = 0;
    *(v101 + 2) = 0;
    *(v101 + 3) = 1;
    *(v101 + 8) = 0;
    v101[36] = 1;
    return result;
  }

  v87 = v103;
  sub_24AC0F378();
  v88 = sub_24AC0F398();
  v89 = sub_24AC0F558();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    *v90 = 0;
    _os_log_impl(&dword_24ABED000, v88, v89, "skip full match because of orderNumber mismatch", v90, 2u);
    MEMORY[0x24C22C700](v90, -1, -1);
  }

  result = v62(v87, v5);
  v91 = v109;
  *v109 = 0;
  v91[2] = 0;
  v91[3] = 0;
  v91[1] = 3;
  *(v91 + 29) = 0;
  return result;
}

char *sub_24ABEF514(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AAB8, &unk_24AC11EE0);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_24ABEF620(char *a1, int64_t a2, char a3)
{
  result = sub_24ABEF514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_24ABEF644@<X0>(uint64_t *a3@<X8>)
{
  sub_24ABEF690();
  result = sub_24AC0F5A8();
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_24ABEF690()
{
  result = qword_27EF9ABB0;
  if (!qword_27EF9ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9ABB0);
  }

  return result;
}

uint64_t sub_24ABEF6E4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_24ABEF6F0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x24C22BD60](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_24ABEF788(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_24ABEF788(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24AC0F7C8();
  sub_24AC0F3D8();
  v8 = sub_24AC0F808();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24AC0F798() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24ABEF8D8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24ABEF8D8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24AC0A814(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AC0B298();
      goto LABEL_16;
    }

    sub_24AC0B7A4(v8 + 1);
  }

  v10 = *v4;
  sub_24AC0F7C8();
  sub_24AC0F3D8();
  result = sub_24AC0F808();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24AC0F798();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24AC0F7A8();
  __break(1u);
  return result;
}

uint64_t sub_24ABEFA58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_24AC0F7C8();

      sub_24AC0F3D8();
      v19 = sub_24AC0F808();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_24AC0F798() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_17FinHealthInsights16OrderMatchReasonVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
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

FinHealthInsights::ShippingFulfillment __swiftcall ShippingFulfillment.init()()
{
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t ShippingFulfillment.trackingNumber.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t _s17FinHealthInsights19ShippingFulfillmentV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_24AC0F7E8();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_24AC0F7E8();
  }

  sub_24AC0F7E8();
  sub_24AC0F3D8();
  if (!v2)
  {
    return sub_24AC0F7E8();
  }

LABEL_3:
  sub_24AC0F7E8();

  return sub_24AC0F3D8();
}

uint64_t CurrencyAmount.hash(into:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A9F8, &qword_24AC106B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_24AC0F368();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

  sub_24AC0F578();
  v6 = v5;

  sub_24ABF7420(v3, &qword_27EF9A9F8, &qword_24AC106B0);
  if ((v6 & 0x100000000) != 0)
  {
    return sub_24AC0F7E8();
  }

  sub_24AC0F7E8();
  return sub_24AC0F568();
}

BOOL sub_24ABEFF5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_24AC0F658();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_24ABF0078@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, _BYTE *a3@<X8>)
{
  v598 = a3;
  v586 = sub_24AC0F358();
  v594 = *(v586 - 8);
  v5 = MEMORY[0x28223BE20](v586);
  v563 = &v554 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v562 = &v554 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v575 = &v554 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v567 = &v554 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v593 = &v554 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v583 = &v554 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v588 = &v554 - v18;
  MEMORY[0x28223BE20](v17);
  v589 = &v554 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AAC8, &qword_24AC11980);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v572 = &v554 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v591 = &v554 - v23;
  v595 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AAD0, &qword_24AC11988);
  v601 = *(v595 - 8);
  v24 = MEMORY[0x28223BE20](v595);
  v569 = &v554 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v585 = &v554 - v27;
  MEMORY[0x28223BE20](v26);
  v599 = &v554 - v28;
  v29 = sub_24AC0F3A8();
  v30 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29);
  v566 = &v554 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v565 = &v554 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v570 = &v554 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v554 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v574 = &v554 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v564 = &v554 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v578 = &v554 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v577 = &v554 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v579 = &v554 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v584 = &v554 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v580 = &v554 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v568 = &v554 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v576 = &v554 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v592 = &v554 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  *&v600 = &v554 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v590 = &v554 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  *&v602 = &v554 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v68 = &v554 - v67;
  MEMORY[0x28223BE20](v66);
  v70 = &v554 - v69;
  v71 = a1[5];
  v632 = a1[4];
  v633 = v71;
  v634 = a1[6];
  v72 = a1[1];
  v628 = *a1;
  v629 = v72;
  v73 = a1[3];
  v630 = a1[2];
  v631 = v73;
  v74 = a2[1];
  v635 = *a2;
  v636 = v74;
  v75 = a2[2];
  v76 = a2[3];
  v77 = a2[6];
  v640 = a2[5];
  v641 = v77;
  v78 = a2[4];
  v638 = v76;
  v639 = v78;
  v637 = v75;
  sub_24AC0F388();
  v79 = sub_24AC0F398();
  v80 = sub_24AC0F558();
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    *v81 = 0;
    _os_log_impl(&dword_24ABED000, v79, v80, "=== OrderMatcher full match START ===", v81, 2u);
    MEMORY[0x24C22C700](v81, -1, -1);
  }

  v84 = *(v30 + 8);
  v82 = v30 + 8;
  v83 = v84;
  v84(v70, v29);
  sub_24AC0F388();
  sub_24ABF391C(&v628, &v621);
  sub_24ABF391C(&v635, &v621);
  v85 = sub_24AC0F398();
  v86 = sub_24AC0F558();
  sub_24ABF3954(&v628);
  sub_24ABF3954(&v635);
  v87 = os_log_type_enabled(v85, v86);
  v607 = v29;
  v608 = v84;
  v573 = v39;
  if (v87)
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v620[0] = v89;
    *v88 = 136315394;
    v625 = v632;
    v626 = v633;
    v627 = v634;
    v621 = v628;
    v622 = v629;
    v623 = v630;
    v624 = v631;
    sub_24ABF391C(&v628, v616);
    sub_24ABF3984();
    v90 = sub_24AC0F778();
    v92 = v91;
    v616[4] = v625;
    v616[5] = v626;
    v616[6] = v627;
    v616[0] = v621;
    v616[1] = v622;
    v616[2] = v623;
    v616[3] = v624;
    sub_24ABF3954(v616);
    v93 = sub_24ABF433C(v90, v92, v620);

    *(v88 + 4) = v93;
    *(v88 + 12) = 2080;
    v613 = v639;
    v614 = v640;
    v615 = v641;
    v609 = v635;
    v610 = v636;
    v611 = v637;
    v612 = v638;
    sub_24ABF391C(&v635, &v621);
    v83 = v608;
    v94 = sub_24AC0F778();
    v96 = v95;
    v625 = v613;
    v626 = v614;
    v627 = v615;
    v621 = v609;
    v622 = v610;
    v623 = v611;
    v624 = v612;
    sub_24ABF3954(&v621);
    v97 = sub_24ABF433C(v94, v96, v620);

    *(v88 + 14) = v97;
    _os_log_impl(&dword_24ABED000, v85, v86, "Order 1:%s, Order 2: %s", v88, 0x16u);
    swift_arrayDestroy();
    v98 = v89;
    v29 = v607;
    MEMORY[0x24C22C700](v98, -1, -1);
    MEMORY[0x24C22C700](v88, -1, -1);
  }

  (v83)(v68, v29);
  *&v616[0] = sub_24ABF45BC(MEMORY[0x277D84F90]);
  v99 = sub_24AC0748C(v628);
  v100 = sub_24ABEF6F0(v99);

  v101 = sub_24AC0748C(v635);
  v102 = sub_24ABEF6F0(v101);

  *&v603 = v102;
  *&v604 = v100;
  LODWORD(v596) = sub_24ABEFA58(v102, v100);
  v103 = v602;
  sub_24AC0F388();
  sub_24ABF391C(&v628, &v621);
  sub_24ABF391C(&v635, &v621);
  v104 = sub_24AC0F398();
  v105 = sub_24AC0F558();
  sub_24ABF3954(&v628);
  sub_24ABF3954(&v635);
  v106 = os_log_type_enabled(v104, v105);
  v605 = v82;
  v597 = 0;
  if (v106)
  {
    v107 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    *&v621 = v108;
    *v107 = 136315394;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8C8, &qword_24AC10640);
    sub_24ABF42F4(&qword_27EF9AAC0, &qword_27EF9A8C8, &qword_24AC10640, &protocol conformance descriptor for SourceValue<A>);
    v109 = sub_24AC0F538();
    v111 = sub_24ABF433C(v109, v110, &v621);

    *(v107 + 4) = v111;
    *(v107 + 12) = 2080;
    v112 = sub_24AC0F538();
    v114 = sub_24ABF433C(v112, v113, &v621);

    *(v107 + 14) = v114;
    _os_log_impl(&dword_24ABED000, v104, v105, "full match orderNumber : order1:%s order2:%s", v107, 0x16u);
    swift_arrayDestroy();
    v115 = v108;
    v83 = v608;
    MEMORY[0x24C22C700](v115, -1, -1);
    v116 = v107;
    v29 = v607;
    MEMORY[0x24C22C700](v116, -1, -1);

    v117 = v602;
  }

  else
  {

    v117 = v103;
  }

  (v83)(v117, v29);
  v118 = v604;
  v119 = v603;
  if (*(v604 + 16) && ((*(v603 + 16) != 0) & v596) == 1)
  {

    sub_24AC0F388();
    v120 = sub_24AC0F398();
    v121 = sub_24AC0F558();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&dword_24ABED000, v120, v121, "full match exits early because orderNumbers don't match", v122, 2u);
      MEMORY[0x24C22C700](v122, -1, -1);
    }

    v123 = v590;
    v124 = v29;
    goto LABEL_13;
  }

  v125 = sub_24AC0C6E4(v119, v118);
  v126 = v125;
  v127 = v125 + 7;
  v128 = 1 << *(v125 + 32);
  v129 = -1;
  if (v128 < 64)
  {
    v129 = ~(-1 << v128);
  }

  v130 = v129 & v125[7];
  v131 = (v128 + 63) >> 6;

  v133 = 0;
  v134 = v606;
  v582 = v132;
  if (v130)
  {
    while (1)
    {
      v135 = v133;
LABEL_21:
      v136 = (v126[6] + ((v135 << 10) | (16 * __clz(__rbit64(v130)))));
      v137 = v136[1];
      *&v621 = *v136;
      *(&v621 + 1) = v137;

      v138 = sub_24AC07738(&v621, v134);

      if (!v138)
      {
        break;
      }

      v130 &= v130 - 1;
      v133 = v135;
      if (!v130)
      {
        goto LABEL_18;
      }
    }

    v561 = 1;
  }

  else
  {
    while (1)
    {
LABEL_18:
      v135 = v133 + 1;
      if (__OFADD__(v133, 1))
      {
        goto LABEL_263;
      }

      if (v135 >= v131)
      {
        break;
      }

      v130 = v127[v135];
      ++v133;
      if (v130)
      {
        goto LABEL_21;
      }
    }

    v561 = 0;
  }

  v139 = v630 + 56;
  v140 = 1 << *(v630 + 32);
  v141 = -1;
  if (v140 < 64)
  {
    v141 = ~(-1 << v140);
  }

  v83 = v141 & *(v630 + 56);
  v142 = (v140 + 63) >> 6;

  v144 = 0;
  v145 = MEMORY[0x277D84F90];
  *&v602 = v143;
  if (!v83)
  {
    goto LABEL_30;
  }

  do
  {
LABEL_28:
    while (1)
    {
      v146 = __clz(__rbit64(v83));
      v83 &= v83 - 1;
      v147 = (*(v143 + 48) + 40 * (v146 | (v144 << 6)));
      v148 = v147[1];
      if (v148)
      {
        break;
      }

      if (!v83)
      {
        goto LABEL_30;
      }
    }

    v590 = *v147;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v145 = sub_24ABF41E8(0, *(v145 + 2) + 1, 1, v145);
    }

    v134 = *(v145 + 2);
    v150 = *(v145 + 3);
    if (v134 >= v150 >> 1)
    {
      v145 = sub_24ABF41E8((v150 > 1), v134 + 1, 1, v145);
    }

    *(v145 + 2) = v134 + 1;
    v151 = &v145[16 * v134];
    *(v151 + 4) = v590;
    *(v151 + 5) = v148;
    v143 = v602;
  }

  while (v83);
  while (1)
  {
LABEL_30:
    v149 = v144 + 1;
    if (__OFADD__(v144, 1))
    {
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
      goto LABEL_264;
    }

    if (v149 >= v142)
    {
      break;
    }

    v83 = *(v139 + 8 * v149);
    ++v144;
    if (v83)
    {
      v144 = v149;
      goto LABEL_28;
    }
  }

  v152 = sub_24ABEF6F0(v145);

  *&v609 = v152;
  v83 = *(&v634 + 1) + 56;
  v153 = 1 << *(*(&v634 + 1) + 32);
  v154 = -1;
  if (v153 < 64)
  {
    v154 = ~(-1 << v153);
  }

  v155 = v154 & *(*(&v634 + 1) + 56);
  v156 = (v153 + 63) >> 6;

  v158 = 0;
  v159 = MEMORY[0x277D84F90];
  v590 = v157;
  if (!v155)
  {
    goto LABEL_45;
  }

  do
  {
LABEL_43:
    while (1)
    {
      v160 = __clz(__rbit64(v155));
      v155 &= v155 - 1;
      v161 = *(v157 + 48) + 152 * (v160 | (v158 << 6));
      v162 = *(v161 + 88);
      if (v162)
      {
        break;
      }

      if (!v155)
      {
        goto LABEL_45;
      }
    }

    v164 = *(v161 + 80);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v587 = v164;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v159 = sub_24ABF41E8(0, *(v159 + 2) + 1, 1, v159);
    }

    v134 = *(v159 + 2);
    v166 = *(v159 + 3);
    v157 = v590;
    if (v134 >= v166 >> 1)
    {
      v159 = sub_24ABF41E8((v166 > 1), v134 + 1, 1, v159);
      v157 = v590;
    }

    *(v159 + 2) = v134 + 1;
    v167 = &v159[16 * v134];
    *(v167 + 4) = v587;
    *(v167 + 5) = v162;
  }

  while (v155);
  while (1)
  {
LABEL_45:
    v163 = v158 + 1;
    if (__OFADD__(v158, 1))
    {
      goto LABEL_260;
    }

    if (v163 >= v156)
    {
      break;
    }

    v155 = *(v83 + 8 * v163);
    ++v158;
    if (v155)
    {
      v158 = v163;
      goto LABEL_43;
    }
  }

  sub_24ABF545C(v159);

  v168 = v637;
  v169 = v637 + 56;
  v170 = 1 << *(v637 + 32);
  v171 = -1;
  if (v170 < 64)
  {
    v171 = ~(-1 << v170);
  }

  v134 = v171 & *(v637 + 56);
  v172 = (v170 + 63) >> 6;

  v173 = 0;
  v174 = MEMORY[0x277D84F90];
  if (!v134)
  {
    goto LABEL_60;
  }

  do
  {
LABEL_58:
    while (1)
    {
      v175 = __clz(__rbit64(v134));
      v134 &= v134 - 1;
      v176 = (*(v168 + 48) + 40 * (v175 | (v173 << 6)));
      v177 = v176[1];
      if (v177)
      {
        break;
      }

      if (!v134)
      {
        goto LABEL_60;
      }
    }

    v587 = *v176;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v174 = sub_24ABF41E8(0, *(v174 + 2) + 1, 1, v174);
    }

    v180 = *(v174 + 2);
    v179 = *(v174 + 3);
    v181 = (v180 + 1);
    if (v180 >= v179 >> 1)
    {
      v581 = (v180 + 1);
      v183 = v174;
      v184 = v180;
      v185 = sub_24ABF41E8((v179 > 1), v180 + 1, 1, v183);
      v181 = v581;
      v180 = v184;
      v174 = v185;
    }

    *(v174 + 2) = v181;
    v182 = &v174[16 * v180];
    *(v182 + 4) = v587;
    *(v182 + 5) = v177;
  }

  while (v134);
  while (1)
  {
LABEL_60:
    v178 = v173 + 1;
    if (__OFADD__(v173, 1))
    {
      goto LABEL_261;
    }

    if (v178 >= v172)
    {
      break;
    }

    v134 = *(v169 + 8 * v178);
    ++v173;
    if (v134)
    {
      v173 = v178;
      goto LABEL_58;
    }
  }

  v186 = sub_24ABEF6F0(v174);

  v620[0] = v186;
  v187 = *(&v641 + 1) + 56;
  v188 = 1 << *(*(&v641 + 1) + 32);
  v189 = -1;
  if (v188 < 64)
  {
    v189 = ~(-1 << v188);
  }

  v134 = v189 & *(*(&v641 + 1) + 56);
  v190 = (v188 + 63) >> 6;

  v192 = 0;
  v193 = MEMORY[0x277D84F90];
  v587 = v191;
  if (!v134)
  {
    goto LABEL_75;
  }

  do
  {
LABEL_73:
    while (1)
    {
      v194 = __clz(__rbit64(v134));
      v134 &= v134 - 1;
      v195 = *(v191 + 48) + 152 * (v194 | (v192 << 6));
      v196 = *(v195 + 88);
      if (v196)
      {
        break;
      }

      if (!v134)
      {
        goto LABEL_75;
      }
    }

    v581 = *(v195 + 80);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v193 = sub_24ABF41E8(0, *(v193 + 2) + 1, 1, v193);
    }

    v199 = *(v193 + 2);
    v198 = *(v193 + 3);
    v200 = v199 + 1;
    v191 = v587;
    if (v199 >= v198 >> 1)
    {
      v571 = v199 + 1;
      v202 = v193;
      v203 = v199;
      v204 = sub_24ABF41E8((v198 > 1), v199 + 1, 1, v202);
      v200 = v571;
      v199 = v203;
      v193 = v204;
      v191 = v587;
    }

    *(v193 + 2) = v200;
    v201 = &v193[16 * v199];
    *(v201 + 4) = v581;
    *(v201 + 5) = v196;
  }

  while (v134);
  while (1)
  {
LABEL_75:
    v197 = v192 + 1;
    if (__OFADD__(v192, 1))
    {
      goto LABEL_262;
    }

    if (v197 >= v190)
    {
      break;
    }

    v134 = *(v187 + 8 * v197);
    ++v192;
    if (v134)
    {
      v192 = v197;
      goto LABEL_73;
    }
  }

  sub_24ABF545C(v193);

  v205 = v600;
  sub_24AC0F388();
  sub_24ABF391C(&v628, &v621);
  sub_24ABF391C(&v635, &v621);
  v206 = sub_24AC0F398();
  v207 = sub_24AC0F558();
  sub_24ABF3954(&v628);
  sub_24ABF3954(&v635);
  if (!os_log_type_enabled(v206, v207))
  {

    v230 = v205;
LABEL_104:
    v608(v230, v607);
    v245 = v620[0];
    v246 = v606;
    v247 = *(*v606 + 120);
    v581 = v609;
    v248 = v247();
    v625 = v632;
    v626 = v633;
    v627 = v634;
    v621 = v628;
    v622 = v629;
    v623 = v630;
    v624 = v631;
    v249 = *(*v246 + 104);
    v250 = *v246 + 104;
    v251 = v249(&v621);
    v625 = v639;
    v626 = v640;
    v627 = v641;
    v621 = v635;
    v622 = v636;
    v623 = v637;
    v624 = v638;
    v556 = v250;
    v557 = v249;
    v252 = v249(&v621);
    v253 = *(*v246 + 112);
    v254 = v591;
    v559 = *v246 + 112;
    v560 = v253;
    v253(v251, v252);

    v255 = *(v601 + 48);
    v256 = v595;
    v601 += 48;
    v558 = v255;
    v257 = v255(v254, 1, v595);
    v258 = v599;
    if (v257 == 1)
    {
      sub_24ABF7420(v254, &qword_27EF9AAC8, &qword_24AC11980);
      v259 = 1.79769313e308;
    }

    else
    {
      *&v602 = v187;
      v571 = v245;
      sub_24AC0D054(v254, v599);
      v260 = v585;
      sub_24AC0D894(v258, v585, &qword_27EF9AAD0, &qword_24AC11988);
      v261 = *(v256 + 48);
      v262 = v594;
      v263 = *(v594 + 32);
      v264 = v589;
      v265 = v586;
      v263(v589, v260, v586);
      v266 = v260 + v261;
      v267 = v264;
      v268 = v588;
      v263(v588, v266, v265);
      sub_24AC0F348();
      v259 = fabs(v269);
      sub_24AC0F388();
      v270 = *(v262 + 16);
      v271 = v583;
      v270(v583, v267, v265);
      v270(v593, v268, v265);
      v272 = sub_24AC0F398();
      v273 = sub_24AC0F558();
      if (os_log_type_enabled(v272, v273))
      {
        v274 = swift_slowAlloc();
        *&v600 = swift_slowAlloc();
        *&v621 = v600;
        *v274 = 136315394;
        sub_24ABF7608(&qword_27EF9AAD8, MEMORY[0x277CC95B8]);
        LODWORD(v591) = v273;
        v555 = v272;
        v275 = sub_24AC0F778();
        v277 = v276;
        v278 = *(v594 + 8);
        v278(v271, v265);
        v279 = sub_24ABF433C(v275, v277, &v621);

        *(v274 + 4) = v279;
        *(v274 + 12) = 2080;
        v280 = v593;
        v281 = sub_24AC0F778();
        v283 = v282;
        v278(v280, v265);
        v284 = sub_24ABF433C(v281, v283, &v621);

        *(v274 + 14) = v284;
        v285 = v555;
        _os_log_impl(&dword_24ABED000, v555, v591, "full match closest date pair: date1:%s date2:%s", v274, 0x16u);
        v286 = v600;
        swift_arrayDestroy();
        MEMORY[0x24C22C700](v286, -1, -1);
        MEMORY[0x24C22C700](v274, -1, -1);

        v608(v592, v607);
        v278(v588, v265);
        v278(v589, v265);
      }

      else
      {

        v287 = *(v594 + 8);
        v287(v593, v265);
        v287(v271, v265);
        v608(v592, v607);
        v287(v268, v265);
        v287(v267, v265);
      }

      sub_24ABF7420(v599, &qword_27EF9AAD0, &qword_24AC11988);
      v245 = v571;
      v187 = v602;
    }

    v625 = v632;
    v626 = v633;
    v627 = v634;
    v621 = v628;
    v622 = v629;
    v623 = v630;
    v624 = v631;
    v288 = *(*v606 + 136);
    if (v288(&v621) & 1) != 0 || (v625 = v639, v626 = v640, v627 = v641, v621 = v635, v622 = v636, v623 = v637, v624 = v638, (v288(&v621)))
    {
      if (v248 <= 0.3)
      {

        v304 = v580;
        sub_24AC0F388();
        v305 = sub_24AC0F398();
        v306 = sub_24AC0F558();
        if (os_log_type_enabled(v305, v306))
        {
          v307 = swift_slowAlloc();
          *v307 = 0;
          _os_log_impl(&dword_24ABED000, v305, v306, "full match exits early because merchant names don't match", v307, 2u);
          MEMORY[0x24C22C700](v307, -1, -1);
        }

        v608(v304, v607);
        goto LABEL_187;
      }

      v571 = v245;
      v289 = *&v616[0];
      v290 = swift_isUniquelyReferenced_nonNull_native();
      *&v621 = v289;
      LOBYTE(v619) = 0;
      sub_24ABF4770(LODWORD(v248), 2, v290);
      *&v616[0] = v621;
      v291 = *(&v630 + 1) + 56;
      v292 = 1 << *(*(&v630 + 1) + 32);
      v293 = -1;
      if (v292 < 64)
      {
        v293 = ~(-1 << v292);
      }

      v134 = v293 & *(*(&v630 + 1) + 56);
      v294 = (v292 + 63) >> 6;
      v599 = *(&v630 + 1);

      v295 = 0;
      v296 = MEMORY[0x277D84F90];
      if (v134)
      {
        goto LABEL_120;
      }

      while (1)
      {
        v297 = v295 + 1;
        if (__OFADD__(v295, 1))
        {
          goto LABEL_265;
        }

        if (v297 >= v294)
        {

          v308 = sub_24ABF7CEC(v296);

          v619 = v308;
          v309 = 1 << *(v590 + 32);
          v310 = -1;
          if (v309 < 64)
          {
            v310 = ~(-1 << v309);
          }

          v311 = v310 & *(v590 + 56);
          v312 = (v309 + 63) >> 6;

          v314 = 0;
          v315 = MEMORY[0x277D84F90];
          v134 = 152;
          if (!v311)
          {
            goto LABEL_134;
          }

          do
          {
LABEL_132:
            while (1)
            {
              v316 = __clz(__rbit64(v311));
              v311 &= v311 - 1;
              v317 = (*(v313 + 48) + 152 * (v316 | (v314 << 6)));
              v318 = v317[7];
              if (v318 != 1)
              {
                break;
              }

              if (!v311)
              {
                goto LABEL_134;
              }
            }

            *&v602 = v317[6];
            v320 = v317[9];
            *&v603 = v317[8];
            *&v604 = v320;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v315 = sub_24ABF7BE0(0, *(v315 + 2) + 1, 1, v315);
            }

            v322 = *(v315 + 2);
            v321 = *(v315 + 3);
            v323 = v322 + 1;
            v313 = v590;
            if (v322 >= v321 >> 1)
            {
              *&v600 = v322 + 1;
              v326 = sub_24ABF7BE0((v321 > 1), v322 + 1, 1, v315);
              v323 = v600;
              v315 = v326;
              v313 = v590;
            }

            *(v315 + 2) = v323;
            v324 = &v315[32 * v322];
            *(v324 + 4) = v602;
            *(v324 + 5) = v318;
            v325 = v604;
            *(v324 + 6) = v603;
            *(v324 + 7) = v325;
          }

          while (v311);
LABEL_134:
          while (1)
          {
            v319 = v314 + 1;
            if (__OFADD__(v314, 1))
            {
              goto LABEL_266;
            }

            if (v319 >= v312)
            {

              sub_24ABF81F0(v315);

              v83 = *(&v637 + 1);
              v327 = *(&v637 + 1) + 56;
              v328 = 1 << *(*(&v637 + 1) + 32);
              v329 = -1;
              if (v328 < 64)
              {
                v329 = ~(-1 << v328);
              }

              v134 = v329 & *(*(&v637 + 1) + 56);
              v330 = (v328 + 63) >> 6;

              v331 = 0;
              v332 = MEMORY[0x277D84F90];
              if (v134)
              {
                goto LABEL_151;
              }

              while (1)
              {
                v333 = v331 + 1;
                if (__OFADD__(v331, 1))
                {
                  goto LABEL_267;
                }

                if (v333 >= v330)
                {

                  v340 = sub_24ABF7CEC(v332);

                  v618 = v340;
                  v341 = 1 << *(v587 + 32);
                  v342 = -1;
                  if (v341 < 64)
                  {
                    v342 = ~(-1 << v341);
                  }

                  v343 = v342 & *(v587 + 56);
                  v344 = (v341 + 63) >> 6;

                  v346 = 0;
                  v347 = MEMORY[0x277D84F90];
                  v134 = 152;
                  if (!v343)
                  {
                    goto LABEL_162;
                  }

                  do
                  {
LABEL_160:
                    while (1)
                    {
                      v348 = __clz(__rbit64(v343));
                      v343 &= v343 - 1;
                      v349 = (*(v345 + 48) + 152 * (v348 | (v346 << 6)));
                      v350 = v349[7];
                      if (v350 != 1)
                      {
                        break;
                      }

                      if (!v343)
                      {
                        goto LABEL_162;
                      }
                    }

                    *&v602 = v349[6];
                    v352 = v349[9];
                    *&v603 = v349[8];
                    *&v604 = v352;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v347 = sub_24ABF7BE0(0, *(v347 + 2) + 1, 1, v347);
                    }

                    v354 = *(v347 + 2);
                    v353 = *(v347 + 3);
                    v355 = v354 + 1;
                    v345 = v587;
                    if (v354 >= v353 >> 1)
                    {
                      *&v600 = v354 + 1;
                      v358 = sub_24ABF7BE0((v353 > 1), v354 + 1, 1, v347);
                      v355 = v600;
                      v347 = v358;
                      v345 = v587;
                    }

                    *(v347 + 2) = v355;
                    v356 = &v347[32 * v354];
                    *(v356 + 4) = v602;
                    *(v356 + 5) = v350;
                    v357 = v604;
                    *(v356 + 6) = v603;
                    *(v356 + 7) = v357;
                  }

                  while (v343);
LABEL_162:
                  while (1)
                  {
                    v351 = v346 + 1;
                    if (__OFADD__(v346, 1))
                    {
                      goto LABEL_268;
                    }

                    if (v351 >= v344)
                    {

                      sub_24ABF81F0(v347);

                      v359 = v619;
                      v360 = v618;
                      v361 = sub_24ABF8288(v618, v619);
                      LOBYTE(v621) = 0;
                      LODWORD(v603) = v361;
                      v362 = 1065353216;
                      if (v361)
                      {
                        v362 = 0;
                      }

                      sub_24ABF46B4(v362, 1);
                      v363 = v584;
                      sub_24AC0F388();
                      sub_24ABF391C(&v628, &v621);
                      sub_24ABF391C(&v635, &v621);
                      v364 = sub_24AC0F398();
                      v365 = sub_24AC0F558();
                      sub_24ABF3954(&v628);
                      sub_24ABF3954(&v635);
                      v366 = os_log_type_enabled(v364, v365);
                      *&v604 = v359;
                      if (v366)
                      {
                        v367 = swift_slowAlloc();
                        *&v602 = swift_slowAlloc();
                        *&v621 = v602;
                        *v367 = 136315394;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A908, &qword_24AC10660);
                        sub_24ABF42F4(&qword_27EF9AAE8, &qword_27EF9A908, &qword_24AC10660, &protocol conformance descriptor for SourceValue<A>);
                        v368 = sub_24AC0F538();
                        v370 = v360;
                        v371 = sub_24ABF433C(v368, v369, &v621);

                        *(v367 + 4) = v371;
                        *(v367 + 12) = 2080;
                        v372 = sub_24AC0F538();
                        v374 = sub_24ABF433C(v372, v373, &v621);

                        *(v367 + 14) = v374;
                        v360 = v370;
                        _os_log_impl(&dword_24ABED000, v364, v365, "full match amounts: order1:%s order2:%s", v367, 0x16u);
                        v375 = v602;
                        swift_arrayDestroy();
                        MEMORY[0x24C22C700](v375, -1, -1);
                        MEMORY[0x24C22C700](v367, -1, -1);

                        v376 = v584;
                      }

                      else
                      {

                        v376 = v363;
                      }

                      v387 = v607;
                      v386 = v608;
                      v608(v376, v607);
                      if (v603)
                      {

                        sub_24AC0F388();
                        v388 = sub_24AC0F398();
                        v389 = sub_24AC0F558();
                        if (os_log_type_enabled(v388, v389))
                        {
                          v390 = swift_slowAlloc();
                          *v390 = 0;
                          _os_log_impl(&dword_24ABED000, v388, v389, "full match exits early because amounts don't match", v390, 2u);
                          MEMORY[0x24C22C700](v390, -1, -1);
                        }

                        v386(v579, v387);
                        goto LABEL_187;
                      }

                      *&v603 = v360;
                      v625 = v632;
                      v626 = v633;
                      v627 = v634;
                      v621 = v628;
                      v622 = v629;
                      v623 = v630;
                      v624 = v631;
                      v393 = v557;
                      v394 = v557(&v621);
                      v625 = v639;
                      v626 = v640;
                      v627 = v641;
                      v621 = v635;
                      v622 = v636;
                      v623 = v637;
                      v624 = v638;
                      v395 = v393(&v621);
                      v396 = v577;
                      sub_24AC0F388();
                      sub_24ABF391C(&v635, &v621);
                      sub_24ABF391C(&v628, &v621);
                      v397 = sub_24AC0F398();
                      v398 = sub_24AC0F558();
                      sub_24ABF3954(&v628);
                      sub_24ABF3954(&v635);
                      if (os_log_type_enabled(v397, v398))
                      {
                        v399 = swift_slowAlloc();
                        *&v600 = swift_slowAlloc();
                        *&v621 = v600;
                        *v399 = 136316418;
                        LODWORD(v599) = v398;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8C8, &qword_24AC10640);
                        *&v602 = v395;
                        sub_24ABF42F4(&qword_27EF9AAC0, &qword_27EF9A8C8, &qword_24AC10640, &protocol conformance descriptor for SourceValue<A>);
                        v400 = sub_24AC0F538();
                        v402 = sub_24ABF433C(v400, v401, &v621);

                        *(v399 + 4) = v402;
                        *(v399 + 12) = 2080;
                        v403 = v597;
                        sub_24AC07ADC(v634);
                        v596 = v397;
                        v404 = MEMORY[0x24C22BD30]();
                        v406 = v405;

                        v407 = sub_24ABF433C(v404, v406, &v621);

                        *(v399 + 14) = v407;
                        *(v399 + 22) = 2080;
                        sub_24AC07BE4(v590);
                        v408 = MEMORY[0x24C22BD30]();
                        v410 = v409;

                        v411 = sub_24ABF433C(v408, v410, &v621);

                        *(v399 + 24) = v411;
                        *(v399 + 32) = 2080;
                        v412 = sub_24AC0F538();
                        v414 = sub_24ABF433C(v412, v413, &v621);

                        *(v399 + 34) = v414;
                        *(v399 + 42) = 2080;
                        sub_24AC07ADC(v641);
                        v415 = MEMORY[0x24C22BD30]();
                        v417 = v416;

                        v418 = sub_24ABF433C(v415, v417, &v621);

                        *(v399 + 44) = v418;
                        *(v399 + 52) = 2080;
                        sub_24AC07BE4(v587);
                        v597 = v403;
                        v419 = MEMORY[0x24C22BD30]();
                        v421 = v420;

                        v422 = sub_24ABF433C(v419, v421, &v621);

                        *(v399 + 54) = v422;
                        v423 = v596;
                        _os_log_impl(&dword_24ABED000, v596, v599, "full match dateTime: order1(orderDates:%s dateSent:%s transactionDate:%s) order2(orderDates:%s dateSent:%s transactionDate:%s)", v399, 0x3Eu);
                        v424 = v600;
                        swift_arrayDestroy();
                        MEMORY[0x24C22C700](v424, -1, -1);
                        v425 = v399;
                        v387 = v607;
                        v395 = v602;
                        MEMORY[0x24C22C700](v425, -1, -1);

                        v426 = v577;
                      }

                      else
                      {

                        v426 = v396;
                      }

                      v608(v426, v387);
                      v434 = v578;
                      sub_24AC0F388();

                      v435 = sub_24AC0F398();
                      v436 = sub_24AC0F558();

                      if (os_log_type_enabled(v435, v436))
                      {
                        v437 = swift_slowAlloc();
                        *&v602 = swift_slowAlloc();
                        *&v621 = v602;
                        *v437 = 136315394;
                        sub_24ABF7608(&qword_27EF9AAE0, MEMORY[0x277CC9588]);
                        LODWORD(v600) = v436;
                        v438 = sub_24AC0F538();
                        v440 = v395;
                        v441 = v394;
                        v442 = v387;
                        v443 = sub_24ABF433C(v438, v439, &v621);

                        *(v437 + 4) = v443;
                        v387 = v442;
                        v394 = v441;
                        v395 = v440;
                        *(v437 + 12) = 2080;
                        v444 = sub_24AC0F538();
                        v446 = sub_24ABF433C(v444, v445, &v621);

                        *(v437 + 14) = v446;
                        _os_log_impl(&dword_24ABED000, v435, v600, "full match converted dateTime: order1:%s order2:%s", v437, 0x16u);
                        v447 = v602;
                        swift_arrayDestroy();
                        MEMORY[0x24C22C700](v447, -1, -1);
                        MEMORY[0x24C22C700](v437, -1, -1);

                        v448 = v578;
                      }

                      else
                      {

                        v448 = v434;
                      }

                      v608(v448, v387);
                      v449 = v575;
                      v450 = v572;
                      v451 = v595;
                      v560(v394, v395);

                      if (v558(v450, 1, v451) == 1)
                      {
                        sub_24ABF7420(v450, &qword_27EF9AAC8, &qword_24AC11980);
                      }

                      else
                      {
                        v452 = v569;
                        sub_24AC0D054(v450, v569);
                        v453 = v585;
                        sub_24AC0D894(v452, v585, &qword_27EF9AAD0, &qword_24AC11988);
                        v454 = *(v451 + 48);
                        v455 = v594;
                        v456 = *(v594 + 32);
                        v457 = v567;
                        v458 = v586;
                        v456(v567, v453, v586);
                        v456(v449, v453 + v454, v458);
                        v459 = v457;
                        sub_24AC0F348();
                        v461 = fabs(v460);
                        if (v461 >= 345600.0)
                        {

                          v530 = v564;
                          sub_24AC0F388();
                          v531 = *(v455 + 16);
                          v532 = v562;
                          v531(v562, v459, v458);
                          v533 = v563;
                          v531(v563, v449, v458);
                          v534 = sub_24AC0F398();
                          v535 = sub_24AC0F558();
                          if (os_log_type_enabled(v534, v535))
                          {
                            v536 = swift_slowAlloc();
                            v606 = swift_slowAlloc();
                            *&v621 = v606;
                            *v536 = 134218498;
                            *(v536 + 4) = v461;
                            *(v536 + 12) = 2080;
                            sub_24ABF7608(&qword_27EF9AAD8, MEMORY[0x277CC95B8]);
                            LODWORD(v604) = v535;
                            v537 = sub_24AC0F778();
                            *&v603 = v534;
                            v538 = v533;
                            v540 = v539;
                            v541 = *(v455 + 8);
                            v541(v532, v458);
                            v542 = sub_24ABF433C(v537, v540, &v621);

                            *(v536 + 14) = v542;
                            *(v536 + 22) = 2080;
                            v543 = sub_24AC0F778();
                            v545 = v544;
                            v541(v538, v458);
                            v546 = sub_24ABF433C(v543, v545, &v621);

                            *(v536 + 24) = v546;
                            v547 = v603;
                            _os_log_impl(&dword_24ABED000, v603, v604, "full match exits early because of timeDifference=%f date1=%s date2=%s", v536, 0x20u);
                            v548 = v606;
                            swift_arrayDestroy();
                            MEMORY[0x24C22C700](v548, -1, -1);
                            MEMORY[0x24C22C700](v536, -1, -1);

                            v608(v564, v607);
                            v541(v575, v458);
                            v541(v567, v458);
                          }

                          else
                          {

                            v553 = *(v455 + 8);
                            v553(v533, v458);
                            v553(v532, v458);
                            v608(v530, v607);
                            v553(v449, v458);
                            v553(v459, v458);
                          }

                          sub_24ABF7420(v569, &qword_27EF9AAD0, &qword_24AC11988);
                          goto LABEL_187;
                        }

                        *&v462 = v461 / -345600.0 + 1.0;
                        v463 = v462;
                        v464 = *&v616[0];
                        v465 = swift_isUniquelyReferenced_nonNull_native();
                        *&v621 = v464;
                        v617 = 0;
                        sub_24ABF4770(v463, 0, v465);
                        v466 = *(v455 + 8);
                        v466(v449, v458);
                        v466(v457, v458);
                        sub_24ABF7420(v452, &qword_27EF9AAD0, &qword_24AC11988);
                        *&v616[0] = v621;
                        v387 = v607;
                      }

                      v467 = sub_24AC07D54(v590, sub_24AC0D954);
                      v468 = sub_24ABEF6F0(v467);

                      v469 = sub_24AC07D54(v587, sub_24AC0D878);

                      v470 = sub_24ABEF6F0(v469);

                      v471 = sub_24ABEFA58(v470, v468);
                      LOBYTE(v621) = 0;
                      v472 = 1065353216;
                      if (v471)
                      {
                        v472 = 0;
                      }

                      sub_24ABF46B4(v472, 3);
                      v473 = v574;
                      sub_24AC0F388();

                      v474 = sub_24AC0F398();
                      v475 = sub_24AC0F558();

                      if (os_log_type_enabled(v474, v475))
                      {
                        v476 = swift_slowAlloc();
                        v477 = swift_slowAlloc();
                        *&v621 = v477;
                        *v476 = 136315394;
                        v478 = sub_24AC0F538();
                        v480 = v479;

                        v481 = sub_24ABF433C(v478, v480, &v621);

                        *(v476 + 4) = v481;
                        *(v476 + 12) = 2080;
                        v482 = sub_24AC0F538();
                        v484 = v483;

                        v485 = sub_24ABF433C(v482, v484, &v621);

                        *(v476 + 14) = v485;
                        _os_log_impl(&dword_24ABED000, v474, v475, "full match last4digits: order1:%s order2:%s", v476, 0x16u);
                        swift_arrayDestroy();
                        MEMORY[0x24C22C700](v477, -1, -1);
                        MEMORY[0x24C22C700](v476, -1, -1);

                        v486 = v574;
                        v487 = v607;
                      }

                      else
                      {

                        v486 = v473;
                        v487 = v387;
                      }

                      v83 = v608;
                      v608(v486, v487);
                      v134 = v573;
                      if (qword_27EF9D3F0 != -1)
                      {
                        goto LABEL_269;
                      }

                      goto LABEL_212;
                    }

                    v343 = *(v187 + 8 * v351);
                    ++v346;
                    if (v343)
                    {
                      v346 = v351;
                      goto LABEL_160;
                    }
                  }
                }

                v134 = *(v327 + 8 * v333);
                ++v331;
                if (v134)
                {
                  v331 = v333;
                  do
                  {
LABEL_151:
                    v334 = (*(v83 + 48) + 40 * (__clz(__rbit64(v134)) | (v331 << 6)));
                    v335 = *v334;
                    v603 = v334[1];
                    v604 = v335;

                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v332 = sub_24ABF7BE0(0, *(v332 + 2) + 1, 1, v332);
                    }

                    v337 = *(v332 + 2);
                    v336 = *(v332 + 3);
                    if (v337 >= v336 >> 1)
                    {
                      v332 = sub_24ABF7BE0((v336 > 1), v337 + 1, 1, v332);
                    }

                    v134 &= v134 - 1;
                    *(v332 + 2) = v337 + 1;
                    v338 = &v332[32 * v337];
                    v339 = v603;
                    *(v338 + 2) = v604;
                    *(v338 + 3) = v339;
                  }

                  while (v134);
                }
              }
            }

            v311 = *(v83 + 8 * v319);
            ++v314;
            if (v311)
            {
              v314 = v319;
              goto LABEL_132;
            }
          }
        }

        v134 = *(v291 + 8 * v297);
        ++v295;
        if (v134)
        {
          v295 = v297;
          do
          {
LABEL_120:
            v298 = (*(v599 + 48) + 40 * (__clz(__rbit64(v134)) | (v295 << 6)));
            v299 = v298[1];
            v602 = *v298;
            v600 = v299;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v296 = sub_24ABF7BE0(0, *(v296 + 2) + 1, 1, v296);
            }

            v301 = *(v296 + 2);
            v300 = *(v296 + 3);
            if (v301 >= v300 >> 1)
            {
              v296 = sub_24ABF7BE0((v300 > 1), v301 + 1, 1, v296);
            }

            v134 &= v134 - 1;
            *(v296 + 2) = v301 + 1;
            v302 = &v296[32 * v301];
            v303 = v600;
            *(v302 + 2) = v602;
            *(v302 + 3) = v303;
          }

          while (v134);
        }
      }
    }

    v377 = v596;
    v378 = (v248 > 0.3) & ~v596;
    v379 = v378 | sub_24ABF6A04(v636, v629) ^ 1;
    if (((v377 | v561) & 1) == 0)
    {
      LOBYTE(v379) = v379 | (v259 <= 2592000.0);
    }

    v380 = v607;
    v381 = v608;
    v382 = v576;
    if ((v379 & 1) == 0)
    {

      sub_24AC0F388();
      v427 = sub_24AC0F398();
      v428 = sub_24AC0F558();
      if (os_log_type_enabled(v427, v428))
      {
        v429 = swift_slowAlloc();
        v430 = swift_slowAlloc();
        *&v621 = v430;
        *v429 = 136315650;
        if (v378)
        {
          v431 = 1936941424;
        }

        else
        {
          v431 = 1818845542;
        }

        v432 = sub_24ABF433C(v431, 0xE400000000000000, &v621);

        *(v429 + 4) = v432;
        *(v429 + 12) = 2080;
        *(v429 + 14) = sub_24ABF433C(1818845542, 0xE400000000000000, &v621);
        *(v429 + 22) = 2080;
        *(v429 + 24) = sub_24ABF433C(1818845542, 0xE400000000000000, &v621);
        _os_log_impl(&dword_24ABED000, v427, v428, "full match exits because fails to meet security constraints. order number and merchant match: %s tracking number match: %s order number match with length and time difference constraint: %s", v429, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C22C700](v430, -1, -1);
        MEMORY[0x24C22C700](v429, -1, -1);
      }

      v381(v382, v380);
      v433 = v598;
      *v598 = 0;
      *(v433 + 2) = 0;
      *(v433 + 3) = 0;
      *(v433 + 1) = 4;
      *(v433 + 8) = 0;
      v433[36] = 1;
    }

    if (*(v604 + 16))
    {
      v383 = *(v603 + 16);

      v384 = v568;
      if (v383)
      {

        v385 = 1.0;
LABEL_253:
        sub_24AC0F388();
        v549 = sub_24AC0F398();
        v550 = sub_24AC0F558();
        if (os_log_type_enabled(v549, v550))
        {
          v551 = swift_slowAlloc();
          *v551 = 134217984;
          *(v551 + 4) = v385;
          _os_log_impl(&dword_24ABED000, v549, v550, "=== OrderMatcher full match END : PASS === confidence %f", v551, 0xCu);
          MEMORY[0x24C22C700](v551, -1, -1);
        }

        v381(v384, v380);
        goto LABEL_256;
      }
    }

    else
    {

      v528 = *(v603 + 16);

      v384 = v568;
      if (!v528)
      {
        v529 = 1061997773;
LABEL_252:
        v385 = *&v529;
        goto LABEL_253;
      }
    }

    v529 = 1063675494;
    goto LABEL_252;
  }

  LODWORD(v571) = v207;
  v581 = v206;
  v208 = swift_slowAlloc();
  v560 = swift_slowAlloc();
  *&v621 = v560;
  *v208 = 136315906;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8E8, &qword_24AC10650);
  v210 = sub_24ABF42F4(&qword_27EF9AAF0, &qword_27EF9A8E8, &qword_24AC10650, &protocol conformance descriptor for SourceValue<A>);
  *&v602 = v209;
  v559 = v210;
  v211 = sub_24AC0F538();
  v134 = sub_24ABF433C(v211, v212, &v621);

  *(v208 + 4) = v134;
  *(v208 + 12) = 2080;
  v213 = 1 << *(v590 + 32);
  if (v213 < 64)
  {
    v214 = ~(-1 << v213);
  }

  else
  {
    v214 = -1;
  }

  v215 = v214 & *(v590 + 56);
  v216 = (v213 + 63) >> 6;

  v218 = 0;
  v219 = MEMORY[0x277D84F90];
  if (!v215)
  {
    goto LABEL_92;
  }

  do
  {
LABEL_90:
    while (1)
    {
      v220 = __clz(__rbit64(v215));
      v215 &= v215 - 1;
      v221 = *(v217 + 48) + 152 * (v220 | (v218 << 6));
      v134 = *(v221 + 88);
      if (v134)
      {
        break;
      }

      if (!v215)
      {
        goto LABEL_92;
      }
    }

    v558 = *(v221 + 80);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v219 = sub_24ABF41E8(0, *(v219 + 2) + 1, 1, v219);
    }

    v224 = *(v219 + 2);
    v223 = *(v219 + 3);
    v225 = (v224 + 1);
    v217 = v590;
    if (v224 >= v223 >> 1)
    {
      v557 = (v224 + 1);
      v227 = v219;
      v228 = v224;
      v229 = sub_24ABF41E8((v223 > 1), v224 + 1, 1, v227);
      v225 = v557;
      v224 = v228;
      v219 = v229;
      v217 = v590;
    }

    *(v219 + 2) = v225;
    v226 = &v219[16 * v224];
    *(v226 + 4) = v558;
    *(v226 + 5) = v134;
  }

  while (v215);
LABEL_92:
  while (1)
  {
    v222 = v218 + 1;
    if (__OFADD__(v218, 1))
    {
      break;
    }

    if (v222 >= v216)
    {

      v231 = MEMORY[0x24C22BD30](v219, MEMORY[0x277D837D0]);
      v233 = v232;

      v234 = sub_24ABF433C(v231, v233, &v621);

      *(v208 + 14) = v234;
      *(v208 + 22) = 2080;
      v235 = sub_24AC0F538();
      v237 = sub_24ABF433C(v235, v236, &v621);

      *(v208 + 24) = v237;
      *(v208 + 32) = 2080;
      v238 = v597;
      sub_24AC07954(v587);
      v597 = v238;
      v239 = MEMORY[0x24C22BD30]();
      v241 = v240;

      v242 = sub_24ABF433C(v239, v241, &v621);

      *(v208 + 34) = v242;
      v243 = v581;
      _os_log_impl(&dword_24ABED000, v581, v571, "full match merchants: order1(merchants:%s transactionDescription:%s) order2(merchants:%s transactionDescription:%s)", v208, 0x2Au);
      v244 = v560;
      swift_arrayDestroy();
      MEMORY[0x24C22C700](v244, -1, -1);
      MEMORY[0x24C22C700](v208, -1, -1);

      v230 = v600;
      goto LABEL_104;
    }

    v215 = *(v83 + 8 * v222);
    ++v218;
    if (v215)
    {
      v218 = v222;
      goto LABEL_90;
    }
  }

LABEL_264:
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
LABEL_269:
  swift_once();
LABEL_212:
  v489 = 0;
  v490 = qword_27EF9DC28;
  v606 = 0x800000024AC12860;
  v385 = 0.0;
  *&v488 = 136315650;
  v604 = v488;
  do
  {
    if (*(v490 + 16))
    {
      v491 = byte_285E22DC8[v489 + 32];
      v492 = sub_24ABF489C(v491);
      if (v493)
      {
        v494 = *(v490 + 56) + 8 * v492;
        if ((*(v494 + 4) & 1) == 0)
        {
          v495 = *&v616[0];
          if (*(*&v616[0] + 16))
          {
            v496 = *v494;
            v497 = sub_24ABF489C(v491);
            if (v498)
            {
              v499 = *(v495 + 56) + 8 * v497;
              if ((*(v499 + 4) & 1) == 0)
              {
                v500 = *v499;
                v385 = v385 + (v496 * *v499);
                sub_24AC0F388();
                v501 = sub_24AC0F398();
                v502 = sub_24AC0F558();
                if (os_log_type_enabled(v501, v502))
                {
                  v503 = swift_slowAlloc();
                  v504 = swift_slowAlloc();
                  *&v621 = v504;
                  *v503 = v604;
                  v505 = 0xD000000000000013;
                  if (v491 != 2)
                  {
                    v505 = 0x72756F467473616CLL;
                  }

                  v506 = v606;
                  if (v491 != 2)
                  {
                    v506 = 0xEE00737469676944;
                  }

                  v507 = 0x656D695465746164;
                  if (v491)
                  {
                    v507 = 0x746E756F6D61;
                  }

                  v508 = 0xE800000000000000;
                  if (v491)
                  {
                    v508 = 0xE600000000000000;
                  }

                  if (v491 <= 1)
                  {
                    v509 = v507;
                  }

                  else
                  {
                    v509 = v505;
                  }

                  if (v491 <= 1)
                  {
                    v510 = v508;
                  }

                  else
                  {
                    v510 = v506;
                  }

                  v511 = sub_24ABF433C(v509, v510, &v621);

                  *(v503 + 4) = v511;
                  *(v503 + 12) = 2048;
                  *(v503 + 14) = v500;
                  *(v503 + 22) = 2048;
                  *(v503 + 24) = v496;
                  _os_log_impl(&dword_24ABED000, v501, v502, "%s \t score: %f weight: %f", v503, 0x20u);
                  __swift_destroy_boxed_opaque_existential_1(v504);
                  MEMORY[0x24C22C700](v504, -1, -1);
                  MEMORY[0x24C22C700](v503, -1, -1);

                  v134 = v573;
                  v83 = v608;
                  v608(v573, v607);
                }

                else
                {

                  (v83)(v134, v607);
                }
              }
            }
          }
        }
      }
    }

    ++v489;
  }

  while (v489 != 4);
  v512 = v570;
  sub_24AC0F388();
  v513 = sub_24AC0F398();
  v514 = sub_24AC0F558();
  if (os_log_type_enabled(v513, v514))
  {
    v515 = swift_slowAlloc();
    *v515 = 134218496;
    *(v515 + 4) = v385;
    *(v515 + 12) = 2048;
    *(v515 + 14) = 0xC010E4C780000000;
    *(v515 + 22) = 2048;
    *(v515 + 24) = 0x4001DF0AE0000000;
    _os_log_impl(&dword_24ABED000, v513, v514, "totalScore: %f intercept: %f threshold:%f", v515, 0x20u);
    MEMORY[0x24C22C700](v515, -1, -1);
  }

  v516 = v512;
  v517 = v607;
  (v83)(v516, v607);
  if ((v385 + -4.2234) <= 2.2339)
  {
    v523 = v566;
    sub_24AC0F388();
    v524 = sub_24AC0F398();
    v525 = sub_24AC0F558();
    if (os_log_type_enabled(v524, v525))
    {
      v526 = swift_slowAlloc();
      *v526 = 0;
      _os_log_impl(&dword_24ABED000, v524, v525, "=== OrderMatcher full match END : FAIL ===", v526, 2u);
      v527 = v526;
      v523 = v566;
      MEMORY[0x24C22C700](v527, -1, -1);
    }

    v123 = v523;
    v124 = v517;
LABEL_13:
    (v83)(v123, v124);
LABEL_187:
    v391 = v598;
    *v598 = 0;
    *(v391 + 1) = 0;
    *(v391 + 2) = 0;
    *(v391 + 3) = 1;
    *(v391 + 8) = 0;
    v391[36] = 1;
  }

  v518 = v565;
  sub_24AC0F388();
  v519 = sub_24AC0F398();
  v520 = sub_24AC0F558();
  if (os_log_type_enabled(v519, v520))
  {
    v521 = swift_slowAlloc();
    *v521 = 0;
    _os_log_impl(&dword_24ABED000, v519, v520, "=== OrderMatcher full match END : PASS ===", v521, 2u);
    v522 = v521;
    v518 = v565;
    MEMORY[0x24C22C700](v522, -1, -1);
  }

  (v83)(v518, v517);
LABEL_256:
  v552 = v598;
  *v598 = 1;
  *(v552 + 2) = 0;
  *(v552 + 3) = 0;
  *(v552 + 1) = 2;
  *(v552 + 8) = v385;
  v552[36] = 0;
}

unint64_t sub_24ABF3984()
{
  result = qword_27EF9AAF8;
  if (!qword_27EF9AAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AAF8);
  }

  return result;
}

uint64_t Order.description.getter()
{
  v2 = 0;
  v3 = MEMORY[0x277D84F90];
  v53 = v0[8];
  v54 = v0[9];
  v55 = v0[10];
  v58 = v0[11];
  v4 = v0[12];
  v5 = v0[13];
  v64 = MEMORY[0x277D84F90];
  v6 = *(v4 + 2);
  v7 = v4 - 40;
  v59 = v5;
LABEL_2:
  v8 = &v7[72 * v2];
  while (v6 != v2)
  {
    if (v2 >= *(v4 + 2))
    {
LABEL_60:
      __break(1u);
LABEL_61:
      v4 = sub_24ABF41E8(0, *(v4 + 2) + 1, 1, v4);
      goto LABEL_55;
    }

    ++v2;
    v9 = v8 + 72;
    v10 = v8[80];
    v8 += 72;
    if ((v10 & 1) == 0)
    {
      v56 = v7;
      v11 = v9[64];
      *&v62[0] = 0;
      *(&v62[0] + 1) = 0xE000000000000000;

      sub_24AC0F668();
      MEMORY[0x24C22BC80](0x6164286C69616D45, 0xEF3A746E65536574);
      sub_24AC0F528();
      MEMORY[0x24C22BC80](0x546C69616D65202CLL, 0xEC0000003A657079);
      v12 = 0xD000000000000019;
      if (v11 == 5)
      {
        v12 = 0xD00000000000001ALL;
      }

      v13 = 0x800000024AC12710;
      if (v11 == 5)
      {
        v13 = 0x800000024AC12730;
      }

      v14 = 0x737349726564726FLL;
      if (v11 == 3)
      {
        v14 = 0xD000000000000011;
      }

      v15 = 0x800000024AC12750;
      if (v11 != 3)
      {
        v15 = 0xEA00000000006575;
      }

      if (v11 <= 4)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0x647055726564726FLL;
      if (v11 == 1)
      {
        v16 = 0xD000000000000011;
      }

      v17 = 0x800000024AC12770;
      if (v11 != 1)
      {
        v17 = 0xEB00000000657461;
      }

      if (!v11)
      {
        v16 = 0x6E776F6E6B6E75;
        v17 = 0xE700000000000000;
      }

      if (v11 <= 2)
      {
        v18 = v16;
      }

      else
      {
        v18 = v12;
      }

      if (v11 <= 2)
      {
        v19 = v17;
      }

      else
      {
        v19 = v13;
      }

      MEMORY[0x24C22BC80](v18, v19);

      MEMORY[0x24C22BC80](41, 0xE100000000000000);

      v20 = *(&v62[0] + 1);
      v1 = *&v62[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_24ABF41E8(0, *(v3 + 2) + 1, 1, v3);
      }

      v22 = *(v3 + 2);
      v21 = *(v3 + 3);
      if (v22 >= v21 >> 1)
      {
        v3 = sub_24ABF41E8((v21 > 1), v22 + 1, 1, v3);
      }

      *(v3 + 2) = v22 + 1;
      v23 = &v3[16 * v22];
      *(v23 + 4) = v1;
      *(v23 + 5) = v20;
      v5 = v59;
      v7 = v56;
      goto LABEL_2;
    }
  }

  sub_24ABF40F4(v3);
  v4 = (v5 + 56);
  v24 = 1 << *(v5 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v1 = v25 & *(v5 + 56);
  v26 = (v24 + 63) >> 6;

  v27 = 0;
  v2 = MEMORY[0x277D84F90];
LABEL_36:
  if (!v1)
  {
    goto LABEL_38;
  }

  do
  {
    v28 = v27;
LABEL_41:
    v29 = __clz(__rbit64(v1));
    v1 &= v1 - 1;
    v30 = *(v5 + 48) + 152 * (v29 | (v28 << 6));
    v31 = *(v30 + 16);
    v62[0] = *v30;
    v62[1] = v31;
    v32 = *(v30 + 80);
    v34 = *(v30 + 32);
    v33 = *(v30 + 48);
    v62[4] = *(v30 + 64);
    v62[5] = v32;
    v62[2] = v34;
    v62[3] = v33;
    v35 = *(v30 + 96);
    v36 = *(v30 + 112);
    v37 = *(v30 + 128);
    v63 = *(v30 + 144);
    v62[7] = v36;
    v62[8] = v37;
    v62[6] = v35;
    v38 = *(&v62[0] + 1);
    if (*(&v62[0] + 1))
    {
      v39 = *&v62[0];
      strcpy(v61, "Transaction(");
      BYTE5(v61[1]) = 0;
      HIWORD(v61[1]) = -5120;
      sub_24AC05008(v62, v60);
      MEMORY[0x24C22BC80](v39, v38);
      MEMORY[0x24C22BC80](41, 0xE100000000000000);
      sub_24ABF7420(v62, &qword_27EF9A970, &qword_24AC10690);
      v40 = v61[1];
      v57 = v61[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_24ABF41E8(0, *(v2 + 16) + 1, 1, v2);
      }

      v42 = *(v2 + 16);
      v41 = *(v2 + 24);
      if (v42 >= v41 >> 1)
      {
        v2 = sub_24ABF41E8((v41 > 1), v42 + 1, 1, v2);
      }

      *(v2 + 16) = v42 + 1;
      v43 = v2 + 16 * v42;
      *(v43 + 32) = v57;
      *(v43 + 40) = v40;
      v27 = v28;
      v5 = v59;
      goto LABEL_36;
    }

    v27 = v28;
  }

  while (v1);
  while (1)
  {
LABEL_38:
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
      goto LABEL_60;
    }

    if (v28 >= v26)
    {
      break;
    }

    v1 = *&v4[8 * v28];
    ++v27;
    if (v1)
    {
      goto LABEL_41;
    }
  }

  sub_24ABF40F4(v2);
  if (!v58)
  {
    v4 = v64;
    goto LABEL_58;
  }

  *&v62[0] = 0;
  *(&v62[0] + 1) = 0xE000000000000000;
  sub_24AC0F668();

  if (v54)
  {
    strcpy(v62, "ClassicOrder(");
    HIWORD(v62[0]) = -4864;
    MEMORY[0x24C22BC80](v55, v58);
    MEMORY[0x24C22BC80](8236, 0xE200000000000000);
    v44 = v53;
    v45 = v54;
  }

  else
  {
    strcpy(v62, "TrackedOrder(");
    HIWORD(v62[0]) = -4864;
    v44 = v55;
    v45 = v58;
  }

  MEMORY[0x24C22BC80](v44, v45);
  MEMORY[0x24C22BC80](41, 0xE100000000000000);
  v1 = *(&v62[0] + 1);
  v2 = *&v62[0];
  v4 = v64;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_61;
  }

LABEL_55:
  v47 = *(v4 + 2);
  v46 = *(v4 + 3);
  if (v47 >= v46 >> 1)
  {
    v4 = sub_24ABF41E8((v46 > 1), v47 + 1, 1, v4);
  }

  *(v4 + 2) = v47 + 1;
  v48 = &v4[16 * v47];
  *(v48 + 4) = v2;
  *(v48 + 5) = v1;
  v64 = v4;
LABEL_58:
  strcpy(v62, "Order( ");
  *(&v62[0] + 1) = 0xE700000000000000;
  v60[0] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A888, &qword_24AC10628);
  sub_24ABF42F4(&qword_27EF9A890, &qword_27EF9A888, &qword_24AC10628, MEMORY[0x277D83958]);
  v49 = sub_24AC0F3E8();
  v51 = v50;

  MEMORY[0x24C22BC80](v49, v51);

  MEMORY[0x24C22BC80](10528, 0xE200000000000000);
  return *&v62[0];
}

uint64_t sub_24ABF40F4(uint64_t result)
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

  result = sub_24ABF41E8(result, v10, 1, v3);
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

char *sub_24ABF41E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AAB8, &unk_24AC11EE0);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_24ABF42F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24ABF433C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24ABF4408(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_24ABF4514(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_24ABF4408(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24ABF56CC(a5, a6);
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
    result = sub_24AC0F678();
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

uint64_t sub_24ABF4514(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

unint64_t sub_24ABF45BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB98, &qword_24AC11E48);
    v3 = sub_24AC0F6B8();

    for (i = (a1 + 40); ; i += 12)
    {
      v5 = *(i - 8);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_24ABF489C(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 8 * result;
      *v10 = v6;
      *(v10 + 4) = v7;
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

uint64_t sub_24ABF46B4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  if ((a1 & 0x10000000000) != 0)
  {
    result = sub_24ABF489C(a2);
    if (v8)
    {
      v9 = result;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v2;
      v13 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_24AC0C41C();
        v11 = v13;
      }

      result = sub_24AC0C1E8(v9, v11);
      *v3 = v11;
    }
  }

  else
  {
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v3;
    result = sub_24ABF4770(a1 | ((HIDWORD(a1) & 1) << 32), a2, v6);
    *v3 = v12;
  }

  return result;
}

uint64_t sub_24ABF4770(unint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_24ABF489C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_24AC0C41C();
      result = v17;
      goto LABEL_8;
    }

    sub_24ABF4B50(v14, a3 & 1);
    result = sub_24ABF489C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_24AC0F7B8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 8 * result;
    *v20 = a1;
    *(v20 + 4) = BYTE4(a1) & 1;
  }

  else
  {

    return sub_24ABF4E70(result, a2, a1 | ((HIDWORD(a1) & 1) << 32), v19);
  }

  return result;
}

unint64_t sub_24ABF489C(uint64_t a1)
{
  v1 = a1;
  sub_24AC0F7C8();
  sub_24AC0F3D8();

  v2 = sub_24AC0F808();

  return sub_24ABF4994(v1, v2);
}

unint64_t sub_24ABF4994(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0xD000000000000013 : 0x72756F467473616CLL;
      v8 = v6 == 2 ? 0x800000024AC12860 : 0xEE00737469676944;
      v9 = *(*(v23 + 48) + v4) ? 0x746E756F6D61 : 0x656D695465746164;
      v10 = *(*(v23 + 48) + v4) ? 0xE600000000000000 : 0xE800000000000000;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0xD000000000000013 : 0x72756F467473616CLL;
      v14 = v5 == 2 ? 0x800000024AC12860 : 0xEE00737469676944;
      v15 = v5 ? 0x746E756F6D61 : 0x656D695465746164;
      v16 = v5 ? 0xE600000000000000 : 0xE800000000000000;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = sub_24AC0F798();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_24ABF4B50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB98, &qword_24AC11E48);
  result = sub_24AC0F6A8();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v4;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 56) + 8 * v23;
      v25 = *(*(v5 + 48) + v23);
      v33 = *(v24 + 4);
      v26 = *v24;
      sub_24AC0F7C8();
      sub_24AC0F3D8();

      result = sub_24AC0F808();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_34:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v25;
      v19 = *(v7 + 56) + 8 * v18;
      *v19 = v26;
      *(v19 + 4) = v33;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

unint64_t sub_24ABF4E70(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  v4 = a4[7] + 8 * result;
  *v4 = a3;
  *(v4 + 4) = BYTE4(a3) & 1;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

char *sub_24ABF4EC0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64) + 1;
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (*(v5 + 64) != -1)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t SourceValue.description.getter(uint64_t a1)
{
  BYTE8(v5) = 0;
  sub_24AC0F668();
  MEMORY[0x24C22BC80](0x203A65756C6156, 0xE700000000000000);
  sub_24AC0F788();
  MEMORY[0x24C22BC80](0x656372756F53202CLL, 0xEF203A7365707954);
  *&v5 = *(v1 + *(a1 + 52));
  v3 = SourceTypes.description.getter();
  MEMORY[0x24C22BC80](v3);

  return *(&v5 + 1);
}

uint64_t SourceTypes.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((*v0 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_24ABF41E8(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24ABF41E8((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6C69616D65;
  *(v5 + 5) = 0xE500000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24ABF41E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_24ABF41E8((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x746361736E617274;
    *(v8 + 5) = 0xEB000000006E6F69;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24ABF41E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_24ABF41E8((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    strcpy(v11 + 32, "classicOrder");
    v11[45] = 0;
    *(v11 + 23) = -5120;
  }

  if ((v1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24ABF41E8(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_24ABF41E8((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    strcpy(v14 + 32, "trackedOrder");
    v14[45] = 0;
    *(v14 + 23) = -5120;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A888, &qword_24AC10628);
  sub_24ABF42F4(&qword_27EF9A890, &qword_27EF9A888, &qword_24AC10628, MEMORY[0x277D83958]);
  v15 = sub_24AC0F3E8();

  return v15;
}

uint64_t sub_24ABF545C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_24ABEF788(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_24ABF54D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *sub_24ABF5528(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24ABF5658(v5, 0);
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

  result = sub_24AC0F678();
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
        v10 = sub_24AC0F488();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24ABF5658(v10, 0);
        result = sub_24AC0F648();
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

void *sub_24ABF5658(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9ABB8, qword_24AC11EA0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_24ABF56CC(uint64_t a1, unint64_t a2)
{
  v3 = sub_24ABF5528(a1, a2);
  sub_24ABF5718(&unk_285E22DA0);
  return v3;
}

uint64_t sub_24ABF5718(uint64_t result)
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

  result = sub_24AC0A3F0(result, v11, 1, v3);
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

uint64_t sub_24ABF5804(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = a2 + 56;

  v9 = 0;
  v10 = 0.0;
  v28 = v6;
  v29 = v2;
LABEL_6:
  if (v5)
  {
    v11 = v9;
LABEL_11:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];
    v16 = 1 << *(a2 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(a2 + 56);
    v19 = (v16 + 63) >> 6;

    v20 = 0;
    while (v18)
    {
      v21 = v20;
LABEL_20:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v23 = (*(a2 + 48) + ((v21 << 10) | (16 * v22)));
      v24 = *v23;
      v25 = v23[1];

      static MerchantMatcher.merchantSimilarity(merchant1:merchant2:)(v15, v14, v24, v25);
      v27 = v26;

      if (v10 <= v27)
      {
        v10 = v27;
      }
    }

    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        v9 = v11;
        v6 = v28;
        v2 = v29;
        goto LABEL_6;
      }

      v18 = *(v7 + 8 * v21);
      ++v20;
      if (v18)
      {
        v20 = v21;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v6)
      {
      }

      v5 = *(v2 + 8 * v11);
      ++v9;
      if (v5)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t static MerchantMatcher.fuzzyMatchScore(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, __n128 a5)
{
  v5 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v8 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v8)
    {
      v9 = sub_24ABF5D18(result, a2);
      result = sub_24ABF5D18(a3, a4);
      v10 = result;
      v35 = *(v9 + 16);
      if (v35)
      {
        v11 = 0;
        v32 = (result + 40);
        v33 = v9 + 32;
        v34 = *(result + 16);
        v12 = 0.0;
        v13 = 0.0;
        v31 = v9;
        while (v11 < *(v9 + 16))
        {
          if (v34)
          {
            v36 = v11;
            v14 = (v33 + 16 * v11);
            v16 = *v14;
            v15 = v14[1];
            v17 = *(v10 + 16);

            if (!v17)
            {
LABEL_38:
              __break(1u);
              break;
            }

            v18 = 0;
            v19 = 0.0;
            v20 = v32;
            while (1)
            {
              v22 = *(v20 - 1);
              v21 = *v20;
              v23 = v16 == v22 && v15 == v21;
              if (v23 || (result = sub_24AC0F798(), (result & 1) != 0))
              {
                if (v19 <= 1.0)
                {
                  v19 = 1.0;
                }
              }

              else
              {
                sub_24ABEF690();

                if (sub_24AC0F5D8() & 1) != 0 || (sub_24AC0F5D8())
                {

                  if (v19 <= 0.3)
                  {
                    v19 = 0.3;
                  }
                }

                else
                {

                  v24 = sub_24ABF5F08(v16, v15);

                  v25 = sub_24ABF5F08(v22, v21);
                  v26 = sub_24AC0E750(v25, v24, sub_24ABF6298, sub_24ABF6298);

                  v27 = v26[2];

                  v28 = sub_24AC0F448();
                  v29 = sub_24AC0F448();

                  if (v29 <= v28)
                  {
                    v30 = v28;
                  }

                  else
                  {
                    v30 = v29;
                  }

                  if (v19 <= v27 / v30 * 0.5)
                  {
                    v19 = v27 / v30 * 0.5;
                  }
                }
              }

              if (v34 - 1 == v18)
              {
                break;
              }

              ++v18;
              v20 += 2;
              if (v18 >= *(v10 + 16))
              {
                goto LABEL_38;
              }
            }

            v9 = v31;
            v11 = v36;
          }

          else
          {
            v19 = 0.0;
          }

          ++v11;
          v12 = v12 + v19;
          v13 = v13 + 1.0;
          if (v11 == v35)
          {
          }
        }

        __break(1u);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_24ABF5D18(uint64_t a1, uint64_t a2)
{
  v2 = sub_24AC0F318();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[0] = sub_24AC0F418();
  v19[1] = v6;
  sub_24AC0F308();
  sub_24ABEF690();
  v7 = sub_24AC0F598();
  (*(v3 + 8))(v5, v2);

  v9 = 0;
  v10 = *(v7 + 16);
  v11 = MEMORY[0x277D84F90];
LABEL_2:
  v12 = (v7 + 40 + 16 * v9);
  while (1)
  {
    if (v10 == v9)
    {

      return v11;
    }

    if (v9 >= *(v7 + 16))
    {
      break;
    }

    ++v9;
    v14 = *(v12 - 1);
    v13 = *v12;
    v12 += 2;
    v15 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v15 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {

      result = swift_isUniquelyReferenced_nonNull_native();
      v19[0] = v11;
      if ((result & 1) == 0)
      {
        result = sub_24ABEF620(0, *(v11 + 16) + 1, 1);
        v11 = v19[0];
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_24ABEF620((v16 > 1), v17 + 1, 1);
        v11 = v19[0];
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v13;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24ABF5F08(uint64_t a1, unint64_t a2)
{
  v4 = sub_24AC0F448();
  v5 = MEMORY[0x24C22BD60](v4, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v14 = v5;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v13[2] = a1;
  v13[3] = a2;
  v13[4] = 0;
  v13[5] = v6;
  v7 = sub_24AC0F478();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      sub_24ABF5FC8(v13, v9, v10);

      v9 = sub_24AC0F478();
      v10 = v11;
    }

    while (v11);
    v5 = v14;
  }

  return v5;
}

uint64_t sub_24ABF5FC8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_24AC0F7C8();
  sub_24AC0F3D8();
  v8 = sub_24AC0F808();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_24AC0F798() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_24ABF6118(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24ABF6118(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24AC0E4F0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AC0E9C4();
      goto LABEL_16;
    }

    sub_24AC0EB20(v8 + 1);
  }

  v10 = *v4;
  sub_24AC0F7C8();
  sub_24AC0F3D8();
  result = sub_24AC0F808();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24AC0F798();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24AC0F7A8();
  __break(1u);
  return result;
}

uint64_t sub_24ABF6298(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v47 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v50 = 0;
    v27 = 0;
    v28 = a3 + 56;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_32:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
LABEL_39:
      v49 = v34 | (v27 << 6);
      v37 = (*(a3 + 48) + 16 * v49);
      v38 = *v37;
      v39 = v37[1];
      sub_24AC0F7C8();
      sub_24AC0F3D8();
      result = sub_24AC0F808();
      v40 = a4;
      v41 = ~(-1 << *(a4 + 32));
      for (i = result & v41; ((*(v33 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v41)
      {
        v43 = (*(v40 + 48) + 16 * i);
        result = *v43;
        if (*v43 != v38 || v43[1] != v39)
        {
          result = sub_24AC0F798();
          v40 = a4;
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        *(v47 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
        v26 = __OFADD__(v50++, 1);
        if (v26)
        {
          goto LABEL_52;
        }

        goto LABEL_32;
      }
    }

    v35 = v27;
    while (1)
    {
      v27 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v27 >= v32)
      {
        v4 = a3;
LABEL_48:

        return sub_24ABF662C(v47, a2, v50, v4);
      }

      v36 = *(v28 + 8 * v27);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v31 = (v36 - 1) & v36;
        goto LABEL_39;
      }
    }
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v48 = v8 & *(a4 + 56);
    v50 = 0;
    v45 = (v7 + 63) >> 6;
    v9 = a3 + 56;
LABEL_6:
    while (v48)
    {
      v10 = __clz(__rbit64(v48));
      v48 &= v48 - 1;
      v11 = v10 | (v5 << 6);
      v12 = a4;
LABEL_13:
      v15 = (*(v12 + 48) + 16 * v11);
      v16 = *v15;
      v17 = v15[1];
      sub_24AC0F7C8();
      sub_24AC0F3D8();
      result = sub_24AC0F808();
      v18 = -1 << *(v4 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      v21 = 1 << v19;
      if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) != 0)
      {
        v22 = (*(v4 + 48) + 16 * v19);
        result = *v22;
        if (*v22 != v16 || v22[1] != v17)
        {
          v24 = ~v18;
          do
          {
            result = sub_24AC0F798();
            if (result)
            {
              break;
            }

            v19 = (v19 + 1) & v24;
            v20 = v19 >> 6;
            v21 = 1 << v19;
            if (((1 << v19) & *(v9 + 8 * (v19 >> 6))) == 0)
            {
              v4 = a3;
              goto LABEL_6;
            }

            v25 = (*(a3 + 48) + 16 * v19);
            result = *v25;
          }

          while (*v25 != v16 || v25[1] != v17);
        }

        v47[v20] |= v21;
        v4 = a3;
        v26 = __OFADD__(v50++, 1);
        if (v26)
        {
          goto LABEL_51;
        }
      }
    }

    v13 = v5;
    v12 = a4;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v45)
      {
        goto LABEL_48;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v48 = (v14 - 1) & v14;
        v11 = __clz(__rbit64(v14)) | (v5 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_24ABF662C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF9ABC0, &qword_24AC11EF0);
  result = sub_24AC0F638();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v18 = *v16;
    v17 = v16[1];
    sub_24AC0F7C8();
    sub_24AC0F3D8();
    result = sub_24AC0F808();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v18;
    v27[1] = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_24ABF6850(void *a1)
{
  v1 = a1[9];
  v2 = a1[11];
  v22 = a1[12];
  v3 = a1[13];
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  if (!v6)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (*(v3 + 48) + 152 * (v11 | (v9 << 6)));
      v13 = v12[1];
      if (v13)
      {
        break;
      }

      if (!v6)
      {
        goto LABEL_6;
      }
    }

    v20 = *v12;

    result = swift_isUniquelyReferenced_nonNull_native();
    v21 = v1;
    if ((result & 1) == 0)
    {
      result = sub_24ABF41E8(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
    }

    v16 = *(v10 + 16);
    v15 = *(v10 + 24);
    v17 = v16 + 1;
    if (v16 >= v15 >> 1)
    {
      result = sub_24ABF41E8((v15 > 1), v16 + 1, 1, v10);
      v17 = v16 + 1;
      v10 = result;
    }

    *(v10 + 16) = v17;
    v18 = v10 + 16 * v16;
    v1 = v21;
    *(v18 + 32) = v20;
    *(v18 + 40) = v13;
  }

  while (v6);
  while (1)
  {
LABEL_6:
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v7)
    {
      break;
    }

    v6 = *(v3 + 56 + 8 * v14);
    ++v9;
    if (v6)
    {
      v9 = v14;
      goto LABEL_4;
    }
  }

  v19 = *(v10 + 16);

  result = 0;
  if (v19 && !v2 && !v1)
  {
    return *(v22 + 16) == 0;
  }

  return result;
}

uint64_t sub_24ABF6A04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (v2 >= v3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1;
  }

  v6 = v4 + 56;
  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8C8, &qword_24AC10640);
  v10 = (v7 + 63) >> 6;
  v19 = v5 + 56;

  v12 = 0;
  while (v9)
  {
LABEL_17:
    if (*(v5 + 16))
    {
      sub_24ABF42F4(&qword_27EF9AAC0, &qword_27EF9A8C8, &qword_24AC10640, &protocol conformance descriptor for SourceValue<A>);

      v14 = sub_24AC0F3B8();
      v15 = -1 << *(v5 + 32);
      v16 = v14 & ~v15;
      if ((*(v19 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        sub_24ABF42F4(&qword_27EF9ABA0, &qword_27EF9A8C8, &qword_24AC10640, &protocol conformance descriptor for SourceValue<A>);
        while (1)
        {

          v18 = sub_24AC0F3F8();

          if (v18)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v19 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        return 0;
      }
    }

    else
    {
    }

LABEL_24:
    v9 &= v9 - 1;
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

      return 1;
    }

    v9 = *(v6 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24ABF6C98(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB00, &qword_24AC11990);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v73 - v3;
  v5 = sub_24AC0F358();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v73 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v74 = &v73 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v84 = &v73 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v87 = &v73 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v80 = &v73 - v16;
  MEMORY[0x28223BE20](v15);
  v76 = &v73 - v17;
  v18 = a1[3];
  v19 = a1[13];
  v85 = a1[12];
  v75 = v19;
  v20 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v21 = sub_24AC0F408();
  v82 = v20;
  [v20 setDateFormat_];

  v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v23 = sub_24AC0F408();
  v24 = v5;
  v81 = v22;
  v25 = v22;
  v26 = v4;
  [v25 setDateFormat_];

  v27 = v18 + 56;
  v28 = 1 << *(v18 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v18 + 56);
  v31 = (v28 + 63) >> 6;
  v79 = (v6 + 48);
  v86 = v6;
  v32 = (v6 + 32);
  v83 = v18;

  v33 = 0;
  v34 = 0;
  v35 = MEMORY[0x277D84F90];
  v77 = v24;
  if (v30)
  {
LABEL_10:
    while (1)
    {
      v37 = *(v83 + 48) + 24 * (__clz(__rbit64(v30)) | (v33 << 6));
      v38 = *v37;
      v39 = *(v37 + 8);
      LOBYTE(v37) = *(v37 + 16);
      v88[0] = v38;
      v88[1] = v39;
      v89 = v37;

      sub_24AC08788(v88, v81, v82, v26);
      if (v34)
      {
        goto LABEL_48;
      }

      v30 &= v30 - 1;

      if ((*v79)(v26, 1, v24) == 1)
      {
        sub_24ABF7420(v26, &qword_27EF9AB00, &qword_24AC11990);
        if (!v30)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v78 = 0;
        v40 = v26;
        v41 = *v32;
        v42 = v76;
        v43 = v40;
        (*v32)(v76);
        (v41)(v80, v42, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_24AC0A008(0, v35[2] + 1, 1, v35);
        }

        v45 = v35[2];
        v44 = v35[3];
        if (v45 >= v44 >> 1)
        {
          v35 = sub_24AC0A008((v44 > 1), v45 + 1, 1, v35);
        }

        v35[2] = v45 + 1;
        v46 = v35 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v45;
        v24 = v77;
        (v41)(v46, v80, v77);
        v26 = v43;
        v34 = v78;
        if (!v30)
        {
          goto LABEL_6;
        }
      }
    }
  }

  while (1)
  {
LABEL_6:
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    if (v36 >= v31)
    {
      break;
    }

    v30 = *(v27 + 8 * v36);
    ++v33;
    if (v30)
    {
      v33 = v36;
      goto LABEL_10;
    }
  }

  v47 = sub_24ABF7480(v35);

  v88[0] = v47;
  v48 = v85;
  v49 = *(v85 + 16);
  if (!v49)
  {
    v52 = MEMORY[0x277D84F90];
LABEL_29:
    sub_24ABF764C(v52);

    v57 = v75 + 56;
    v58 = 1 << *(v75 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & *(v75 + 56);
    v61 = (v58 + 63) >> 6;

    v63 = 0;
    v64 = MEMORY[0x277D84F90];
    if (!v60)
    {
      goto LABEL_34;
    }

    do
    {
LABEL_32:
      while (1)
      {
        v65 = __clz(__rbit64(v60));
        v60 &= v60 - 1;
        if ((*(*(v62 + 48) + 152 * (v65 | (v63 << 6)) + 104) & 1) == 0)
        {
          break;
        }

        if (!v60)
        {
          goto LABEL_34;
        }
      }

      v67 = v73;
      sub_24AC0F328();
      v68 = *v32;
      (*v32)(v74, v67, v77);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v68;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v64 = sub_24AC0A008(0, v64[2] + 1, 1, v64);
      }

      v71 = v64[2];
      v70 = v64[3];
      if (v71 >= v70 >> 1)
      {
        v64 = sub_24AC0A008((v70 > 1), v71 + 1, 1, v64);
      }

      v64[2] = v71 + 1;
      (v87)(v64 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v71, v74, v77);
      v62 = v75;
    }

    while (v60);
LABEL_34:
    while (1)
    {
      v66 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        goto LABEL_46;
      }

      if (v66 >= v61)
      {

        sub_24ABF764C(v64);

        return v88[0];
      }

      v60 = *(v57 + 8 * v66);
      ++v63;
      if (v60)
      {
        v63 = v66;
        goto LABEL_32;
      }
    }
  }

  v50 = 0;
  v51 = (v85 + 40);
  v52 = MEMORY[0x277D84F90];
  while (v50 < *(v48 + 16))
  {
    if ((*v51 & 1) == 0)
    {
      v53 = v84;
      sub_24AC0F328();
      v54 = *v32;
      (*v32)(v87, v53, v24);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_24AC0A008(0, v52[2] + 1, 1, v52);
      }

      v56 = v52[2];
      v55 = v52[3];
      if (v56 >= v55 >> 1)
      {
        v52 = sub_24AC0A008((v55 > 1), v56 + 1, 1, v52);
      }

      v52[2] = v56 + 1;
      (v54)(v52 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v56, v87, v24);
      v48 = v85;
    }

    ++v50;
    v51 += 72;
    if (v49 == v50)
    {
      goto LABEL_29;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:

  __break(1u);
  return result;
}

uint64_t sub_24ABF7420(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_24ABF7480(uint64_t a1)
{
  v2 = sub_24AC0F358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_24ABF7608(&qword_27EF9AAE0, MEMORY[0x277CC9588]);
  result = MEMORY[0x24C22BD60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_24AC0A55C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_24ABF7608(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_24AC0F358();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24ABF764C(uint64_t a1)
{
  v2 = sub_24AC0F358();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_24AC0A55C(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24ABF7794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_24AC0F358();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v56 = &v44 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v44 - v13;
  MEMORY[0x28223BE20](v12);
  v52 = &v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AAD0, &qword_24AC11988);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v48 = v16;
  v49 = a3;
  v46 = v17 + 56;
  v47 = v18;
  (v18)(a3, 1, 1);
  v19 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(a1 + 56);
  v23 = (v20 + 63) >> 6;
  v60 = v7 + 32;
  v61 = v7 + 16;
  v62 = a2;
  v24 = a2 + 56;
  v53 = v7;
  v54 = a1;
  v25 = (v7 + 8);

  v27 = 0;
  v28 = 1.79769313e308;
  v50 = v23;
  v51 = a1 + 56;
LABEL_6:
  if (v22)
  {
    v29 = v27;
LABEL_11:
    v30 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v31 = v53;
    v32 = *(v54 + 48);
    v57 = *(v53 + 72);
    v33 = v52;
    v59 = *(v53 + 16);
    v59(v52, v32 + v57 * (v30 | (v29 << 6)), v6);
    v58 = *(v31 + 32);
    (v58)(v14, v33, v6);
    v34 = 1 << *(v62 + 32);
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v36 = v35 & *(v62 + 56);
    v37 = (v34 + 63) >> 6;

    v38 = 0;
    while (1)
    {
      v39 = v38;
      if (!v36)
      {
        break;
      }

LABEL_19:
      v40 = __clz(__rbit64(v36));
      v36 &= v36 - 1;
      v59(v56, *(v62 + 48) + (v40 | (v38 << 6)) * v57, v6);
      v41 = v55;
      v58();
      sub_24AC0F348();
      v43 = fabs(v42);
      if (v43 < v28)
      {
        sub_24ABF7420(v49, &qword_27EF9AAC8, &qword_24AC11980);
        v45 = *(v48 + 48);
        v59(v49, v14, v6);
        (v58)(&v49[v45], v41, v6);
        result = v47(v49, 0, 1, v48);
        v28 = v43;
      }

      else
      {
        result = (*v25)(v41, v6);
      }
    }

    while (1)
    {
      v38 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v38 >= v37)
      {

        result = (*v25)(v14, v6);
        v27 = v29;
        v23 = v50;
        v19 = v51;
        goto LABEL_6;
      }

      v36 = *(v24 + 8 * v38);
      ++v39;
      if (v36)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v23)
      {
      }

      v22 = *(v19 + 8 * v29);
      ++v27;
      if (v22)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

char *sub_24ABF7BE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AB90, &qword_24AC11E40);
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
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_24ABF7CEC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_24ABF7DAC();
  result = MEMORY[0x24C22BD60](v2, &type metadata for CurrencyAmount, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_24ABF7E00(v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

unint64_t sub_24ABF7DAC()
{
  result = qword_27EF9AB80;
  if (!qword_27EF9AB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AB80);
  }

  return result;
}

uint64_t sub_24ABF7E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v18 = a2;
  *(&v18 + 1) = a3;
  *&v19 = a4;
  *(&v19 + 1) = a5;
  v7 = *v5;
  sub_24ABF7DAC();
  v8 = sub_24AC0F3B8();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_24ABF8508();
    while (1)
    {

      v12 = sub_24AC0F3F8();

      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v7 + 48) + 32 * v10;
    v16 = *(v15 + 24);
    *a1 = *v15;
    *(a1 + 8) = *(v15 + 8);
    *(a1 + 24) = v16;

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v5;

    sub_24ABF8024(v18, *(&v18 + 1), v19, *(&v19 + 1), v10, isUniquelyReferenced_nonNull_native);
    *v5 = v17;
    *a1 = v18;
    *(a1 + 16) = v19;
    return 1;
  }
}

uint64_t sub_24ABF7FDC()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_24AC0F7C8();
  CurrencyAmount.hash(into:)(v3);
  return sub_24AC0F808();
}

uint64_t sub_24ABF8024(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  *&v19 = result;
  *(&v19 + 1) = a2;
  *&v20 = a3;
  *(&v20 + 1) = a4;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a6 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a6)
  {
    sub_24AC0ADBC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AC0B62C();
      goto LABEL_12;
    }

    sub_24AC0BCE4(v8 + 1);
  }

  v10 = *v6;
  sub_24ABF7DAC();
  result = sub_24AC0F3B8();
  v11 = -1 << *(v10 + 32);
  a5 = result & ~v11;
  if ((*(v10 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v12 = ~v11;
    sub_24ABF8508();
    do
    {

      v13 = sub_24AC0F3F8();

      if (v13)
      {
        goto LABEL_15;
      }

      a5 = (a5 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v15 = (*(v14 + 48) + 32 * a5);
  *v15 = v19;
  v15[1] = v20;
  v16 = *(v14 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v14 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_24AC0F7A8();
  __break(1u);
  return result;
}

uint64_t sub_24ABF81F0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 56);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      v6 = *(v2 - 3);
      v5 = *(v2 - 2);

      sub_24ABF7E00(&v7, v6, v5, v4, v3);

      v2 += 4;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_24ABF8288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v19 = v6 + 56;

  v12 = 0;
  while (v9)
  {
LABEL_17:
    if (*(v6 + 16))
    {
      sub_24ABF7DAC();

      v14 = sub_24AC0F3B8();
      v15 = -1 << *(v6 + 32);
      v16 = v14 & ~v15;
      if ((*(v19 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        sub_24ABF8508();
        while (1)
        {

          v18 = sub_24AC0F3F8();

          if (v18)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v19 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        return 0;
      }
    }

    else
    {
    }

LABEL_24:
    v9 &= v9 - 1;
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

      return 1;
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24ABF8508()
{
  result = qword_27EF9AA88;
  if (!qword_27EF9AA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA88);
  }

  return result;
}

uint64_t _s17FinHealthInsights14CurrencyAmountV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A9F8, &qword_24AC106B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  if (a1[1])
  {
    v7 = a2[1] == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || (v8 = sub_24AC0F368(), v9 = *(*(v8 - 8) + 56), v9(v6, 1, 1, v8), sub_24AC0F578(), v11 = v10, sub_24ABF7420(v6, &qword_27EF9A9F8, &qword_24AC106B0), (v11 & 0x100000000) != 0) || (v9(v6, 1, 1, v8), sub_24AC0F578(), v13 = v12, sub_24ABF7420(v6, &qword_27EF9A9F8, &qword_24AC106B0), (v13 & 0x100000000) != 0))
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_24AC0F588();
  }

  return v14 & 1;
}

float sub_24ABF8708(uint64_t a1, uint64_t a2)
{
  v2 = sub_24ABEFA58(a2, a1);
  result = 1.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

__n128 __swift_memcpy37_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_24ABF9700(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x220]);
  objc_destroyWeak(&STACK[0x228]);
  _Block_object_dispose(&STACK[0x230], 8);
  _Block_object_dispose(&STACK[0x250], 8);
  _Block_object_dispose(&STACK[0x270], 8);
  _Block_object_dispose(&STACK[0x290], 8);
  _Block_object_dispose(&STACK[0x2B0], 8);
  _Block_object_dispose(&STACK[0x2D0], 8);
  _Block_object_dispose(&STACK[0x2F0], 8);
  _Block_object_dispose(&STACK[0x310], 8);
  _Block_object_dispose(&STACK[0x330], 8);
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x370], 8);
  _Block_object_dispose(&STACK[0x3A0], 8);
  _Block_object_dispose(&STACK[0x3D0], 8);
  _Block_object_dispose(&STACK[0x400], 8);
  _Block_object_dispose(&STACK[0x430], 8);
  _Block_object_dispose(&STACK[0x460], 8);
  _Block_object_dispose(&STACK[0x490], 8);
  _Block_object_dispose(&STACK[0x4C0], 8);
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24ABFC84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v26 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_24ABFD94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak((v28 + 48));
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_24ABFE08C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_24AC0F798() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954656372756F73 && a2 == 0xEB00000000736570)
  {

    return 1;
  }

  else
  {
    v6 = sub_24AC0F798();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_24ABFE190(char a1)
{
  sub_24AC0F7C8();
  MEMORY[0x24C22BFF0](a1 & 1);
  return sub_24AC0F808();
}

uint64_t sub_24ABFE1D8(char a1)
{
  if (a1)
  {
    return 0x7954656372756F73;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_24ABFE230()
{
  sub_24AC0F7C8();
  sub_24ABFE168(v2, *v0);
  return sub_24AC0F808();
}

uint64_t sub_24ABFE278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_24ABFE08C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_24ABFE2B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_24ABFE30C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SourceValue.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v13 = *(a2 + 32);
  v14 = v4;
  v16[0] = v4;
  v16[1] = v13;
  type metadata accessor for SourceValue.CodingKeys(255, v16);
  swift_getWitnessTable();
  v5 = sub_24AC0F768();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v12[1];
  sub_24AC0F828();
  LOBYTE(v16[0]) = 0;
  v10 = v15;
  sub_24AC0F758();
  if (!v10)
  {
    LOBYTE(v16[0]) = *(v9 + *(a2 + 52));
    v17 = 1;
    sub_24AC03770();
    sub_24AC0F758();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SourceValue.hashValue.getter(uint64_t a1)
{
  sub_24AC0F7C8();
  sub_24AC0F3C8();
  return sub_24AC0F808();
}

uint64_t SourceValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a6;
  v36 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v12;
  v43 = v13;
  v44 = v14;
  v45 = v15;
  type metadata accessor for SourceValue.CodingKeys(255, &v42);
  swift_getWitnessTable();
  v39 = sub_24AC0F718();
  v35 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v17 = &v32 - v16;
  v37 = a2;
  v38 = a3;
  v42 = a2;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v18 = type metadata accessor for SourceValue(0, &v42);
  v33 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v32 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v21 = v41;
  sub_24AC0F818();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v20;
  v41 = v18;
  v23 = v35;
  v24 = v36;
  LOBYTE(v42) = 0;
  v25 = v39;
  v26 = v37;
  sub_24AC0F708();
  v27 = *(v24 + 32);
  v38 = v22;
  v27(v22, v40, v26);
  v46 = 1;
  sub_24AC037C4();
  sub_24AC0F708();
  (*(v23 + 8))(v17, v25);
  v28 = v41;
  v29 = v38;
  v38[*(v41 + 52)] = v42;
  v30 = v33;
  (*(v33 + 16))(v34, v29, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v30 + 8))(v29, v28);
}

uint64_t sub_24ABFEAAC()
{
  sub_24AC0F7C8();
  sub_24AC0F7E8();
  return sub_24AC0F808();
}

uint64_t sub_24ABFEB20()
{
  sub_24AC0F7C8();
  sub_24AC0F7E8();
  return sub_24AC0F808();
}

unsigned __int8 *sub_24ABFEB90@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *sub_24ABFEBBC@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_24ABFED2C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t Order.orderNumbers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Order.senderDomains.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Order.trackingNumbers.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Order.orderDates.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Order.merchants.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Order.totalCurrencyAmounts.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Order.defaultShippingFulfillments.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Order.shippingFulfillments.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Order.orderTypeIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t Order.orderTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t Order.orderIdentifier.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t Order.orderIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Order.emails.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t Order.transactions.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

unint64_t sub_24ABFF210(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x656449726564726FLL;
    v7 = 0x736C69616D65;
    if (a1 != 10)
    {
      v7 = 0x746361736E617274;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD00000000000001BLL;
    v9 = 0xD000000000000014;
    if (a1 != 7)
    {
      v9 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6D754E726564726FLL;
    v2 = 0x746144726564726FLL;
    v3 = 0x746E61686372656DLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6F447265646E6573;
    if (a1 != 1)
    {
      v4 = 0x676E696B63617274;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24ABFF3DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24AC06734(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24ABFF410(uint64_t a1)
{
  v2 = sub_24AC042DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24ABFF44C(uint64_t a1)
{
  v2 = sub_24AC042DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Order.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8A8, &qword_24AC10630);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[3];
  v32 = v1[2];
  v33 = v7;
  v10 = v1[5];
  v30 = v1[4];
  v31 = v9;
  v11 = v1[7];
  v28 = v1[6];
  v29 = v10;
  v12 = v1[9];
  v26 = v1[8];
  v27 = v11;
  v13 = v1[11];
  v24 = v1[10];
  v25 = v12;
  v14 = v1[13];
  v22 = v1[12];
  v23 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AC042DC();

  sub_24AC0F828();
  v37 = v8;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8B0, &qword_24AC10638);
  sub_24AC04330();
  v35 = v3;
  v15 = v6;
  v16 = v34;
  sub_24AC0F758();
  if (v16)
  {

    return (*(v4 + 8))(v6, v35);
  }

  else
  {
    v18 = v31;
    v19 = v32;
    v34 = v14;

    v37 = v33;
    v36 = 1;
    sub_24AC0F758();
    v37 = v19;
    v36 = 2;
    sub_24AC0F758();
    v37 = v18;
    v36 = 3;
    sub_24AC0F758();
    v37 = v30;
    v36 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8D0, &qword_24AC10648);
    sub_24AC043E0();
    sub_24AC0F758();
    v37 = v29;
    v36 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8F0, &qword_24AC10658);
    sub_24AC04490();
    sub_24AC0F758();
    v37 = v28;
    v36 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A910, &qword_24AC10668);
    sub_24AC04540();
    sub_24AC0F758();
    v37 = v27;
    v36 = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A930, &qword_24AC10678);
    sub_24AC04A2C(&qword_27EF9A938, sub_24AC04540, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_24AC0F758();
    LOBYTE(v37) = 8;
    sub_24AC0F728();
    LOBYTE(v37) = 9;
    sub_24AC0F728();
    v37 = v22;
    v36 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A940, &qword_24AC10680);
    sub_24AC045F0(&qword_27EF9A948, sub_24AC04668, MEMORY[0x277D83948]);
    sub_24AC0F758();
    v37 = v34;
    v36 = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A958, &qword_24AC10688);
    sub_24AC046BC();
    v20 = v35;
    sub_24AC0F758();
    return (*(v4 + 8))(v15, v20);
  }
}

uint64_t Order.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A978, &qword_24AC10698);
  v5 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v7 = &v42 - v6;
  v8 = sub_24ABEE868(MEMORY[0x277D84F90]);
  v9 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_24AC042DC();
  v50 = v7;
  sub_24AC0F818();
  v56 = v8;
  if (v2)
  {
    v57 = v2;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v10 = 0;
    v11 = MEMORY[0x277D84FA0];
    v52 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D84FA0];
    v13 = MEMORY[0x277D84FA0];
    v14 = MEMORY[0x277D84FA0];
    v15 = MEMORY[0x277D84FA0];
    v16 = MEMORY[0x277D84FA0];
    v17 = MEMORY[0x277D84FA0];
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8B0, &qword_24AC10638);
    LOBYTE(v58) = 0;
    sub_24AC0476C();
    sub_24AC0F708();
    v48 = v66;
    LOBYTE(v58) = 1;
    sub_24AC0F708();
    v20 = v66;
    LOBYTE(v58) = 2;
    sub_24AC0F708();
    v47 = v66;
    LOBYTE(v58) = 3;
    sub_24AC0F708();
    v21 = v5;
    v22 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8D0, &qword_24AC10648);
    LOBYTE(v58) = 4;
    sub_24AC0481C();
    sub_24AC0F708();
    v23 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A8F0, &qword_24AC10658);
    LOBYTE(v58) = 5;
    sub_24AC048CC();
    sub_24AC0F708();
    v46 = v22;
    v44 = v20;
    v45 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A910, &qword_24AC10668);
    LOBYTE(v58) = 6;
    sub_24AC0497C();
    sub_24AC0F708();
    v11 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A930, &qword_24AC10678);
    LOBYTE(v58) = 7;
    sub_24AC04A2C(&qword_27EF9A9C0, sub_24AC0497C, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_24AC0F708();
    v57 = 0;
    v43 = v23;

    v56 = v66;
    LOBYTE(v66) = 8;
    v24 = v50;
    v25 = v57;
    v42 = sub_24AC0F6D8();
    v55 = v26;
    v57 = v25;
    if (v25)
    {
      (*(v21 + 8))(v24, v49);
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v10 = 0;
      v52 = MEMORY[0x277D84F90];
    }

    else
    {
      LOBYTE(v66) = 9;
      v54 = sub_24AC0F6D8();
      v53 = v27;
      v57 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A940, &qword_24AC10680);
      LOBYTE(v58) = 10;
      sub_24AC045F0(&qword_27EF9A9C8, sub_24AC04AB0, MEMORY[0x277D83978]);
      v28 = v57;
      sub_24AC0F708();
      v57 = v28;
      if (v28)
      {
        (*(v21 + 8))(v50, v49);
        v52 = MEMORY[0x277D84F90];
      }

      else
      {
        v52 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A958, &qword_24AC10688);
        v65 = 11;
        sub_24AC04B04();
        v29 = v57;
        sub_24AC0F708();
        v57 = v29;
        if (!v29)
        {
          (*(v21 + 8))(v50, v49);
          v50 = v80;
          v30 = v48;
          *&v58 = v48;
          v31 = v44;
          *(&v58 + 1) = v44;
          v32 = v47;
          *&v59 = v47;
          *(&v59 + 1) = v46;
          v33 = v43;
          *&v60 = v43;
          v34 = v45;
          *(&v60 + 1) = v45;
          *&v61 = v11;
          v35 = v56;
          *(&v61 + 1) = v56;
          *&v62 = v42;
          *(&v62 + 1) = v55;
          v36 = v53;
          *&v63 = v54;
          *(&v63 + 1) = v53;
          *&v64 = v52;
          *(&v64 + 1) = v80;
          v37 = v59;
          *a2 = v58;
          a2[1] = v37;
          v38 = v60;
          v39 = v61;
          v40 = v64;
          a2[5] = v63;
          a2[6] = v40;
          v41 = v62;
          a2[3] = v39;
          a2[4] = v41;
          a2[2] = v38;
          sub_24ABF391C(&v58, &v66);
          __swift_destroy_boxed_opaque_existential_1(v51);
          v66 = v30;
          v67 = v31;
          v68 = v32;
          v69 = v46;
          v70 = v33;
          v71 = v34;
          v72 = v11;
          v73 = v35;
          v74 = v42;
          v75 = v55;
          v76 = v54;
          v77 = v36;
          v78 = v52;
          v79 = v50;
          return sub_24ABF3954(&v66);
        }

        (*(v21 + 8))(v50, v49);
      }

      v10 = v42;
    }

    v17 = v48;
    v16 = v44;
    v15 = v47;
    v14 = v46;
    v13 = v43;
    v12 = v45;
  }

  v18 = MEMORY[0x277D84FA0];
  __swift_destroy_boxed_opaque_existential_1(v51);
  v66 = v17;
  v67 = v16;
  v68 = v15;
  v69 = v14;
  v70 = v13;
  v71 = v12;
  v72 = v11;
  v73 = v56;
  v74 = v10;
  v75 = v55;
  v76 = v54;
  v77 = v53;
  v78 = v52;
  v79 = v18;
  return sub_24ABF3954(&v66);
}

uint64_t sub_24AC00638()
{
  if (*v0)
  {
    return 0x614E6E69616D6F64;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

uint64_t sub_24AC00680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v6 || (sub_24AC0F798() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x614E6E69616D6F64 && a2 == 0xEA0000000000656DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AC0F798();

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

uint64_t sub_24AC00768(uint64_t a1)
{
  v2 = sub_24AC04BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AC007A4(uint64_t a1)
{
  v2 = sub_24AC04BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CurrencyAmount.amount.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CurrencyAmount.currencyCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

FinHealthInsights::CurrencyAmount __swiftcall CurrencyAmount.init(amount:currencyCode:)(Swift::String_optional amount, Swift::String_optional currencyCode)
{
  *v2 = amount;
  v2[1] = currencyCode;
  result.currencyCode = currencyCode;
  result.amount = amount;
  return result;
}

uint64_t sub_24AC00954()
{
  if (*v0)
  {
    return 0x79636E6572727563;
  }

  else
  {
    return 0x746E756F6D61;
  }
}

uint64_t sub_24AC00994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
  if (v6 || (sub_24AC0F798() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AC0F798();

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

uint64_t sub_24AC00A70(uint64_t a1)
{
  v2 = sub_24AC04C08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AC00AAC(uint64_t a1)
{
  v2 = sub_24AC04C08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CurrencyAmount.hashValue.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A9F8, &qword_24AC106B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_24AC0F7C8();
  v3 = sub_24AC0F368();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);

  sub_24AC0F578();
  v5 = v4;

  sub_24ABF7420(v2, &qword_27EF9A9F8, &qword_24AC106B0);
  sub_24AC0F7E8();
  if ((v5 & 0x100000000) == 0)
  {
    sub_24AC0F568();
  }

  return sub_24AC0F808();
}

uint64_t CurrencyAmount.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AA08, &qword_24AC106C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AC04C08();
  sub_24AC0F818();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24AC0F6D8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24AC0F6D8();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24AC00EC0()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_24AC0F7C8();
  CurrencyAmount.hash(into:)(v3);
  return sub_24AC0F808();
}

uint64_t ShippingFulfillment.carrierName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_24AC00FA0()
{
  v1 = *v0;
  sub_24AC0F7C8();
  MEMORY[0x24C22BFF0](v1);
  return sub_24AC0F808();
}

uint64_t sub_24AC00FE8()
{
  v1 = *v0;
  sub_24AC0F7C8();
  MEMORY[0x24C22BFF0](v1);
  return sub_24AC0F808();
}

uint64_t sub_24AC0102C()
{
  if (*v0)
  {
    return 0x4E72656972726163;
  }

  else
  {
    return 0x676E696B63617274;
  }
}

uint64_t sub_24AC0107C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E696B63617274 && a2 == 0xEE007265626D754ELL;
  if (v6 || (sub_24AC0F798() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4E72656972726163 && a2 == 0xEB00000000656D61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24AC0F798();

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

uint64_t sub_24AC01164(uint64_t a1)
{
  v2 = sub_24AC04C5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AC011A0(uint64_t a1)
{
  v2 = sub_24AC04C5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24AC01220(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v13 - v8;
  v10 = *(v5 + 16);
  v13[1] = *(v5 + 24);
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  sub_24AC0F828();
  v18 = 0;
  v11 = v15;
  sub_24AC0F728();
  if (!v11)
  {
    v17 = 1;
    sub_24AC0F728();
  }

  return (*(v16 + 8))(v9, v7);
}

uint64_t sub_24AC013C4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_24AC0F7C8();
  if (!v1)
  {
    sub_24AC0F7E8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24AC0F7E8();
    return sub_24AC0F808();
  }

  sub_24AC0F7E8();
  sub_24AC0F3D8();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24AC0F7E8();
  sub_24AC0F3D8();
  return sub_24AC0F808();
}

uint64_t sub_24AC014B4@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t *a6@<X8>)
{
  v24 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_24AC0F818();
  if (!v6)
  {
    v12 = v23;
    v13 = v24;
    v26 = 0;
    v14 = sub_24AC0F6D8();
    v16 = v15;
    v22 = v14;
    v25 = 1;
    v18 = sub_24AC0F6D8();
    v20 = v19;
    (*(v12 + 8))(v11, v9);
    *v13 = v22;
    v13[1] = v16;
    v13[2] = v18;
    v13[3] = v20;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_24AC016F0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_24AC0F7C8();
  if (!v1)
  {
    sub_24AC0F7E8();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24AC0F7E8();
    return sub_24AC0F808();
  }

  sub_24AC0F7E8();
  sub_24AC0F3D8();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24AC0F7E8();
  sub_24AC0F3D8();
  return sub_24AC0F808();
}

uint64_t Email.dateSent.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t Email.fromEmailAddress.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Email.fromEmailAddress.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Email.fromDisplayName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Email.fromDisplayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Email.senderDomain.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t Email.senderDomain.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

void __swiftcall Email.init()(FinHealthInsights::Email *__return_ptr retstr)
{
  retstr->dateSent.value = 0.0;
  retstr->dateSent.is_nil = 1;
  retstr->fromEmailAddress = 0u;
  retstr->fromDisplayName = 0u;
  retstr->senderDomain = 0u;
  retstr->emailType = FinHealthInsights_Email_EmailType_unknown;
}

uint64_t Email.EmailType.description.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000011;
    if (v1 != 1)
    {
      v5 = 0x647055726564726FLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    if (v1 == 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000011;
    if (v1 != 3)
    {
      v3 = 0x737349726564726FLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

FinHealthInsights::Email::EmailType_optional __swiftcall Email.EmailType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_24AC01BB8()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000011;
    if (v1 != 1)
    {
      v5 = 0x647055726564726FLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    v2 = 0xD000000000000019;
    if (v1 == 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000011;
    if (v1 != 3)
    {
      v3 = 0x737349726564726FLL;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_24AC01CB0()
{
  v1 = *v0;
  v2 = 0x746E655365746164;
  v3 = 0x707369446D6F7266;
  v4 = 0x6F447265646E6573;
  if (v1 != 3)
  {
    v4 = 0x7079546C69616D65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_24AC01D68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24AC06B2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24AC01D9C(uint64_t a1)
{
  v2 = sub_24AC04CB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AC01DD8(uint64_t a1)
{
  v2 = sub_24AC04CB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Email.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AA20, &qword_24AC106D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = v7;
  v8 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = v8;
  v9 = *(v1 + 48);
  v14 = *(v1 + 56);
  v15 = v9;
  HIDWORD(v13) = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AC04CB0();
  sub_24AC0F828();
  v26 = 0;
  v10 = v20;
  sub_24AC0F738();
  if (!v10)
  {
    v11 = BYTE4(v13);
    v25 = 1;
    sub_24AC0F728();
    v24 = 2;
    sub_24AC0F728();
    v23 = 3;
    sub_24AC0F728();
    v22 = v11;
    v21 = 4;
    sub_24AC04D04();
    sub_24AC0F758();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Email.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AA30, &qword_24AC106E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v52 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AC04CB0();
  sub_24AC0F818();
  if (v2)
  {
    v53 = v2;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    LOBYTE(v42) = 0;
    v34 = sub_24AC0F6E8();
    v52 = v17 & 1;
    LOBYTE(v42) = 1;
    v18 = sub_24AC0F6D8();
    v32 = a2;
    *&v33 = v18;
    *(&v33 + 1) = v19;
    LOBYTE(v42) = 2;
    v12 = sub_24AC0F6D8();
    v11 = v20;
    LOBYTE(v42) = 3;
    v21 = sub_24AC0F6D8();
    v53 = 0;
    v10 = v21;
    v9 = v22;
    v40 = 4;
    sub_24AC04D88();
    v23 = v53;
    sub_24AC0F708();
    v53 = v23;
    if (!v23)
    {
      (*(v6 + 8))(v8, v5);
      v24 = v34;
      *&v35 = v34;
      v31 = v52;
      BYTE8(v35) = v52;
      v25 = v33;
      v36 = v33;
      *&v37 = v12;
      *(&v37 + 1) = v11;
      *&v38 = v10;
      *(&v38 + 1) = v9;
      v26 = v41;
      v39 = v41;
      v27 = v32;
      *(v32 + 64) = v41;
      v28 = v38;
      v27[2] = v37;
      v27[3] = v28;
      v29 = v36;
      *v27 = v35;
      v27[1] = v29;
      sub_24AC04DDC(&v35, &v42);
      __swift_destroy_boxed_opaque_existential_1(a1);
      v42 = v24;
      v43 = v31;
      v45 = v25;
      v46 = v12;
      v47 = v11;
      v48 = v10;
      v49 = v9;
      v50 = v26;
      return sub_24AC04D58(&v42);
    }

    (*(v6 + 8))(v8, v5);
    v13 = *(&v33 + 1);
    v15 = v34;
    v14 = v33;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v42 = v15;
  v43 = v52;
  *v44 = *v51;
  *&v44[3] = *&v51[3];
  *&v45 = v14;
  *(&v45 + 1) = v13;
  v46 = v12;
  v47 = v11;
  v48 = v10;
  v49 = v9;
  v50 = 0;
  return sub_24AC04D58(&v42);
}

uint64_t Transaction.transactionId.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Transaction.transactionId.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Transaction.amount.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Transaction.amount.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Transaction.currencyCode.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Transaction.currencyCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

double sub_24AC02610@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_24AC10610;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

void Transaction.currencyAmount.getter(uint64_t *a1@<X8>)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_24AC04E14(v2, v3, v4, v5);
}

__n128 Transaction.currencyAmount.setter(uint64_t a1)
{
  sub_24AC04E5C(v1[6], v1[7], v1[8], v1[9]);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 3) = *a1;
  *(v1 + 4) = v4;
  return result;
}

uint64_t Transaction.transactionDescription.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t Transaction.transactionDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Transaction.transactionDate.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t Transaction.lastFourDigits.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t Transaction.lastFourDigits.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t Transaction.originURL.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t Transaction.originURL.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

double Transaction.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  return result;
}

uint64_t sub_24AC0288C()
{
  v1 = 0x746361736E617274;
  v2 = *v0;
  v3 = 0x72756F467473616CLL;
  if (v2 != 6)
  {
    v3 = 0x52556E696769726FLL;
  }

  v4 = 0xD000000000000016;
  if (v2 != 4)
  {
    v4 = 0x746361736E617274;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0x746E756F6D61;
  }

  if (*v0 > 1u)
  {
    v1 = 0x79636E6572727563;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24AC029B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24AC06CF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24AC029E8(uint64_t a1)
{
  v2 = sub_24AC04EA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24AC02A24(uint64_t a1)
{
  v2 = sub_24AC04EA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Transaction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AA40, &qword_24AC106E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - v5;
  v7 = *(v1 + 16);
  v30 = *(v1 + 24);
  v31 = v7;
  v8 = *(v1 + 32);
  v28 = *(v1 + 40);
  v29 = v8;
  v9 = *(v1 + 48);
  v26 = *(v1 + 56);
  v27 = v9;
  v10 = *(v1 + 64);
  v24 = *(v1 + 72);
  v25 = v10;
  v11 = *(v1 + 88);
  v23[6] = *(v1 + 80);
  v23[7] = v11;
  v12 = *(v1 + 96);
  v37 = *(v1 + 104);
  v13 = *(v1 + 112);
  v23[4] = *(v1 + 120);
  v23[5] = v12;
  v14 = *(v1 + 136);
  v23[1] = *(v1 + 128);
  v23[2] = v14;
  v23[3] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24AC04EA4();
  v15 = v3;
  sub_24AC0F828();
  LOBYTE(v33) = 0;
  v16 = v6;
  v17 = v32;
  sub_24AC0F728();
  if (v17)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v19 = v24;
  v18 = v25;
  v21 = v26;
  v20 = v27;
  LOBYTE(v33) = 1;
  sub_24AC0F728();
  LOBYTE(v33) = 2;
  sub_24AC0F728();
  v33 = v20;
  v34 = v21;
  v35 = v18;
  v36 = v19;
  v38 = 3;
  sub_24AC04E14(v20, v21, v18, v19);
  sub_24AC04EF8();
  sub_24AC0F748();
  sub_24AC04E5C(v33, v34, v35, v36);
  LOBYTE(v33) = 4;
  sub_24AC0F728();
  LOBYTE(v33) = 5;
  sub_24AC0F738();
  LOBYTE(v33) = 6;
  sub_24AC0F728();
  LOBYTE(v33) = 7;
  sub_24AC0F728();
  return (*(v4 + 8))(v16, v15);
}

uint64_t Transaction.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A9F8, &qword_24AC106B0);
  MEMORY[0x28223BE20](v2 - 8);
  v21 = v20 - v3;
  v4 = *(v1 + 8);
  v6 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v20[1] = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 80);
  v10 = *(v1 + 88);
  v23 = v5;
  v24 = v9;
  v22 = *(v1 + 96);
  v28 = *(v1 + 104);
  v11 = *(v1 + 120);
  v25 = *(v1 + 112);
  v12 = *(v1 + 136);
  v26 = *(v1 + 128);
  v27 = v8;
  if (v4)
  {
    sub_24AC0F7E8();
    sub_24AC0F3D8();
    v13 = v12;
    if (v6)
    {
LABEL_3:
      sub_24AC0F7E8();
      sub_24AC0F3D8();
      goto LABEL_6;
    }
  }

  else
  {
    sub_24AC0F7E8();
    v13 = v12;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  sub_24AC0F7E8();
LABEL_6:
  sub_24AC0F7E8();
  if (v7)
  {
    sub_24AC0F3D8();
  }

  if (v27 == 1 || (sub_24AC0F7E8(), v14 = sub_24AC0F368(), v15 = v21, (*(*(v14 - 8) + 56))(v21, 1, 1, v14), , sub_24AC0F578(), v17 = v16, , sub_24ABF7420(v15, &qword_27EF9A9F8, &qword_24AC106B0), (v17 & 0x100000000) != 0))
  {
    sub_24AC0F7E8();
    if (!v10)
    {
LABEL_11:
      sub_24AC0F7E8();
      if (!v28)
      {
        goto LABEL_12;
      }

LABEL_20:
      sub_24AC0F7E8();
      if (v11)
      {
        goto LABEL_16;
      }

LABEL_21:
      sub_24AC0F7E8();
      if (v13)
      {
        goto LABEL_17;
      }

      return sub_24AC0F7E8();
    }
  }

  else
  {
    sub_24AC0F7E8();
    sub_24AC0F568();
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  sub_24AC0F7E8();
  sub_24AC0F3D8();
  if (v28)
  {
    goto LABEL_20;
  }

LABEL_12:
  sub_24AC0F7E8();
  if ((v22 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v18 = v22;
  }

  else
  {
    v18 = 0;
  }

  MEMORY[0x24C22C010](v18);
  if (!v11)
  {
    goto LABEL_21;
  }

LABEL_16:
  sub_24AC0F7E8();
  sub_24AC0F3D8();
  if (v13)
  {
LABEL_17:
    sub_24AC0F7E8();
    return sub_24AC0F3D8();
  }

  return sub_24AC0F7E8();
}

uint64_t Transaction.hashValue.getter()
{
  sub_24AC0F7C8();
  Transaction.hash(into:)(v1);
  return sub_24AC0F808();
}

uint64_t Transaction.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9AA50, &qword_24AC106F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v90 = 1;
  v9 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_24AC04EA4();
  sub_24AC0F818();
  if (v2)
  {
    v91 = v2;
    v56 = 0uLL;
    v60 = 0;
    v61 = 0;
    v57 = 0;
    v58 = 0;
    v62 = 0;
    v55 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
  }

  else
  {
    LOBYTE(v72) = 0;
    v10 = sub_24AC0F6D8();
    v53 = v19;
    v54 = v10;
    LOBYTE(v72) = 1;
    *&v52 = sub_24AC0F6D8();
    *(&v52 + 1) = v20;
    LOBYTE(v72) = 2;
    v21 = sub_24AC0F6D8();
    v91 = 0;
    v12 = v21;
    v51 = v22;
    LOBYTE(v63[0]) = 3;
    sub_24AC04F7C();
    v23 = v91;
    sub_24AC0F6F8();
    v91 = v23;
    if (v23)
    {
      (*(v6 + 8))(v8, v5);
      v56 = 0uLL;
      v60 = 0;
      v61 = 0;
      v57 = 0;
      v58 = 0;
      v62 = 0;
      v55 = 0;
      v17 = 1;
      v15 = v53;
      v16 = v54;
      v13 = *(&v52 + 1);
      v14 = v52;
      v11 = v51;
    }

    else
    {
      v24 = v72;
      v49 = a2;
      v50 = v73;
      v25 = v74;
      sub_24AC04E5C(0, 1, 0, 0);
      LOBYTE(v72) = 4;
      v26 = v91;
      v27 = sub_24AC0F6D8();
      v62 = v25 >> 64;
      v58 = v25;
      v55 = v24;
      if (!v26)
      {
        v61 = v27;
        v57 = v28;
        LOBYTE(v72) = 5;
        v60 = sub_24AC0F6E8();
        v90 = v29 & 1;
        LOBYTE(v72) = 6;
        *&v56 = sub_24AC0F6D8();
        *(&v56 + 1) = v30;
        v71 = 7;
        v31 = sub_24AC0F6D8();
        v91 = 0;
        v32 = v31;
        v33 = v8;
        v35 = v34;
        (*(v6 + 8))(v33, v5);
        v36 = v53;
        *&v63[0] = v54;
        *(&v63[0] + 1) = v53;
        v63[1] = v52;
        *&v64 = v12;
        v48 = v12;
        v37 = v51;
        *(&v64 + 1) = v51;
        *&v65 = v24;
        v38 = v57;
        v39 = v58;
        *(&v65 + 1) = v50;
        *&v66 = v58;
        *(&v66 + 1) = v62;
        *&v67 = v61;
        *(&v67 + 1) = v57;
        *&v68 = v60;
        HIDWORD(v47) = v90;
        BYTE8(v68) = v90;
        v40 = v56;
        v69 = v56;
        *&v70 = v32;
        *(&v70 + 1) = v35;
        v41 = v52;
        v42 = v49;
        *v49 = v63[0];
        v42[1] = v41;
        v43 = v70;
        v44 = v67;
        v42[4] = v66;
        v42[5] = v44;
        v45 = v65;
        v42[2] = v64;
        v42[3] = v45;
        v46 = v68;
        v42[7] = v69;
        v42[8] = v43;
        v42[6] = v46;
        sub_24AC04FD0(v63, &v72);
        __swift_destroy_boxed_opaque_existential_1(v59);
        v72 = v54;
        v73 = v36;
        v74 = v52;
        v75 = v48;
        v76 = v37;
        v77 = v55;
        v78 = v50;
        v79 = v39;
        v80 = v62;
        v81 = v61;
        v82 = v38;
        v83 = v60;
        v84 = BYTE4(v47);
        v86 = v40;
        v87 = v32;
        v88 = v35;
        return sub_24AC04F4C(&v72);
      }

      v91 = v26;
      (*(v6 + 8))(v8, v5);
      v56 = 0uLL;
      v60 = 0;
      v61 = 0;
      v57 = 0;
      v15 = v53;
      v16 = v54;
      v13 = *(&v52 + 1);
      v14 = v52;
      v17 = v50;
      v11 = v51;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v59);
  v72 = v16;
  v73 = v15;
  *&v74 = v14;
  *(&v74 + 1) = v13;
  v75 = v12;
  v76 = v11;
  v77 = v55;
  v78 = v17;
  v79 = v58;
  v80 = v62;
  v81 = v61;
  v82 = v57;
  v83 = v60;
  v84 = v90;
  *v85 = *v89;
  *&v85[3] = *&v89[3];
  v86 = v56;
  v87 = 0;
  v88 = 0;
  return sub_24AC04F4C(&v72);
}

uint64_t sub_24AC03690()
{
  sub_24AC0F7C8();
  Transaction.hash(into:)(v1);
  return sub_24AC0F808();
}

uint64_t sub_24AC036D4()
{
  sub_24AC0F7C8();
  Transaction.hash(into:)(v1);
  return sub_24AC0F808();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_24AC03770()
{
  result = qword_27EF9A898;
  if (!qword_27EF9A898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A898);
  }

  return result;
}

unint64_t sub_24AC037C4()
{
  result = qword_27EF9A8A0;
  if (!qword_27EF9A8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A8A0);
  }

  return result;
}

unint64_t sub_24AC03818(uint64_t a1, uint64_t a2)
{
  sub_24AC0F7C8();
  sub_24AC0F3D8();
  v4 = sub_24AC0F808();

  return sub_24AC03890(a1, a2, v4);
}

unint64_t sub_24AC03890(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24AC0F798())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

BOOL _s17FinHealthInsights11TransactionV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A9F8, &qword_24AC106B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v128 - v5;
  v7 = *(a1 + 1);
  v146 = *(a1 + 2);
  v9 = *(a1 + 3);
  v8 = *(a1 + 4);
  v10 = *(a1 + 6);
  v148 = *(a1 + 5);
  v149 = v9;
  v12 = *(a1 + 7);
  v11 = *(a1 + 8);
  v14 = *(a1 + 9);
  v13 = *(a1 + 10);
  v15 = *(a1 + 11);
  v16 = a1[12];
  v17 = *(a1 + 104);
  v18 = *(a1 + 14);
  v19 = *(a1 + 15);
  v21 = *(a1 + 16);
  v20 = *(a1 + 17);
  v22 = *(a2 + 1);
  v145 = *(a2 + 2);
  v23 = *(a2 + 3);
  v144 = *(a2 + 4);
  v24 = *(a2 + 6);
  v147 = *(a2 + 5);
  v26 = *(a2 + 7);
  v25 = *(a2 + 8);
  v27 = *(a2 + 9);
  v28 = *(a2 + 10);
  v29 = *(a2 + 11);
  v30 = a2[12];
  v31 = *(a2 + 104);
  v33 = *(a2 + 14);
  v32 = *(a2 + 15);
  v34 = *(a2 + 16);
  v35 = *(a2 + 17);
  if (v7)
  {
    if (!v22)
    {
      return 0;
    }

    v142 = v6;
    v143 = v8;
    if (*a1 != *a2 || v7 != v22)
    {
      v139 = v13;
      v36 = v14;
      v37 = v11;
      v133 = v27;
      v129 = v35;
      v136 = v18;
      v137 = v20;
      v130 = v24;
      v131 = v19;
      v134 = v21;
      v135 = v33;
      v132 = v12;
      v38 = v10;
      v39 = v34;
      v138 = v32;
      v140 = v31;
      v141 = v17;
      v40 = v25;
      v41 = v26;
      v42 = v15;
      v43 = v29;
      v44 = sub_24AC0F798();
      v29 = v43;
      v15 = v42;
      v32 = v138;
      v13 = v139;
      v26 = v41;
      v25 = v40;
      v31 = v140;
      v17 = v141;
      v33 = v135;
      v18 = v136;
      v34 = v39;
      v10 = v38;
      v19 = v131;
      v12 = v132;
      v27 = v133;
      v21 = v134;
      v24 = v130;
      v20 = v137;
      v35 = v129;
      v11 = v37;
      v14 = v36;
      if ((v44 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v142 = v6;
    v143 = v8;
    if (v22)
    {
      return 0;
    }
  }

  if (v149)
  {
    if (!v23)
    {
      return 0;
    }

    if (v146 != v145 || v149 != v23)
    {
      v138 = v32;
      v139 = v13;
      v130 = v24;
      v131 = v19;
      v135 = v33;
      v136 = v18;
      v140 = v31;
      v141 = v17;
      v137 = v20;
      v45 = v14;
      v132 = v12;
      v133 = v27;
      v46 = v11;
      v47 = v10;
      v48 = v34;
      v49 = v25;
      v50 = v26;
      v51 = v15;
      v52 = v29;
      v134 = v21;
      v53 = sub_24AC0F798();
      v29 = v52;
      v15 = v51;
      v32 = v138;
      v13 = v139;
      v26 = v50;
      v25 = v49;
      v34 = v48;
      v19 = v131;
      v12 = v132;
      v10 = v47;
      v11 = v46;
      v27 = v133;
      v21 = v134;
      v14 = v45;
      v18 = v136;
      v20 = v137;
      v31 = v140;
      v17 = v141;
      v33 = v135;
      v24 = v130;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v148)
  {
    if (!v147)
    {
      return 0;
    }

    if (v143 != v144 || v148 != v147)
    {
      v138 = v32;
      v139 = v13;
      v135 = v33;
      v136 = v18;
      v140 = v31;
      v141 = v17;
      v149 = v14;
      v129 = v35;
      v54 = v11;
      v132 = v12;
      v133 = v27;
      v55 = v10;
      v56 = v34;
      v57 = v25;
      v58 = v26;
      v59 = v15;
      v137 = v20;
      v60 = v29;
      v134 = v21;
      v61 = sub_24AC0F798();
      v29 = v60;
      v20 = v137;
      v32 = v138;
      v15 = v59;
      v13 = v139;
      v26 = v58;
      v25 = v57;
      v34 = v56;
      v12 = v132;
      v10 = v55;
      v27 = v133;
      v21 = v134;
      v11 = v54;
      v35 = v129;
      v14 = v149;
      v31 = v140;
      v17 = v141;
      v33 = v135;
      v18 = v136;
      if ((v61 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v147)
  {
    return 0;
  }

  if (v12 == 1)
  {
    v62 = 1;
    v137 = v20;
    v138 = v32;
    v145 = v28;
    v146 = v15;
    v147 = v29;
    v148 = v34;
    v140 = v31;
    v141 = v17;
    v139 = v13;
    v135 = v33;
    v136 = v18;
    v63 = v25;
    v64 = v27;
    v129 = v35;
    v65 = v14;
    v66 = v11;
    v67 = v10;
    v68 = v26;
    sub_24AC04E14(v10, 1, v11, v14);
    v69 = v68;
    v70 = v24;
    if (v68 == 1)
    {
      sub_24AC04E14(v24, 1, v63, v64);
      sub_24AC04E5C(v67, 1, v66, v65);
      goto LABEL_25;
    }

    v78 = v63;
    v80 = v63;
    v76 = v24;
    v77 = v64;
    v81 = v64;
    v79 = v69;
    sub_24AC04E14(v70, v69, v80, v81);
    goto LABEL_34;
  }

  if (v26 == 1)
  {
    v75 = v12;
    v65 = v14;
    v66 = v11;
    v62 = v12;
    v76 = v24;
    v77 = v27;
    v67 = v10;
    v78 = v25;
    v79 = 1;
    sub_24AC04E14(v10, v75, v11, v14);
    sub_24AC04E14(v76, 1, v78, v77);
    sub_24AC04E14(v67, v62, v66, v65);

LABEL_34:
    sub_24AC04E5C(v67, v62, v66, v65);
    v82 = v76;
    v83 = v79;
    v84 = v78;
    v85 = v77;
LABEL_61:
    sub_24AC04E5C(v82, v83, v84, v85);
    return 0;
  }

  if (!v12)
  {
    v106 = v27;
    v99 = 0;
    v107 = v14;
    v108 = v11;
    v109 = v10;
    v110 = v24;
    v111 = v25;
    v112 = v26;
    sub_24AC04E14(v10, 0, v11, v14);
    sub_24AC04E14(v110, v112, v111, v106);
    sub_24AC04E14(v109, 0, v108, v107);
    v113 = v110;
    v114 = v112;
    v115 = v111;
    v116 = v106;
LABEL_47:
    sub_24AC04E5C(v113, v114, v115, v116);
LABEL_60:

    v82 = v109;
    v83 = v99;
    v84 = v108;
    v85 = v107;
    goto LABEL_61;
  }

  v144 = v25;
  if (!v26)
  {
    v107 = v14;
    v108 = v11;
    v109 = v10;
    sub_24AC04E14(v10, v12, v11, v14);
    v117 = v144;
    sub_24AC04E14(v24, 0, v144, v27);
    v118 = v24;
    v119 = v27;
    v99 = v12;
    sub_24AC04E14(v109, v12, v108, v107);
    v113 = v118;
    v114 = 0;
    v115 = v117;
    v116 = v119;
    goto LABEL_47;
  }

  v145 = v28;
  v146 = v15;
  v147 = v29;
  v148 = v34;
  v140 = v31;
  v141 = v17;
  v138 = v32;
  v139 = v13;
  v135 = v33;
  v136 = v18;
  v131 = v19;
  v129 = v35;
  v137 = v20;
  v134 = v21;
  v86 = v14;
  v87 = v12;
  v88 = v27;
  v89 = v11;
  v90 = v24;
  v91 = v10;
  v92 = v26;
  v93 = sub_24AC0F368();
  v94 = *(v93 - 8);
  v95 = v142;
  v130 = *(v94 + 56);
  v128 = v94 + 56;
  v130(v142, 1, 1, v93);
  sub_24AC04E14(v91, v87, v89, v86);
  v96 = v92;
  v97 = v92;
  v98 = v144;
  sub_24AC04E14(v90, v97, v144, v88);
  v132 = v89;
  v149 = v86;
  sub_24AC04E14(v91, v87, v89, v86);
  v143 = v91;
  v99 = v87;
  sub_24AC0F578();
  v101 = v100;
  sub_24ABF7420(v95, &qword_27EF9A9F8, &qword_24AC106B0);
  if ((v101 & 0x100000000) != 0)
  {
    v123 = v90;
    v124 = v96;
    v125 = v98;
    v126 = v88;
LABEL_59:
    sub_24AC04E5C(v123, v124, v125, v126);
    v107 = v149;
    v108 = v132;
    v109 = v143;
    goto LABEL_60;
  }

  v133 = v88;
  v130(v95, 1, 1, v93);
  sub_24AC0F578();
  v103 = v102;
  sub_24ABF7420(v95, &qword_27EF9A9F8, &qword_24AC106B0);
  if ((v103 & 0x100000000) != 0)
  {
    v123 = v90;
    v124 = v96;
    v125 = v144;
    v126 = v133;
    goto LABEL_59;
  }

  v104 = sub_24AC0F588();
  sub_24AC04E5C(v90, v96, v144, v133);

  v105 = v149;

  sub_24AC04E5C(v143, v87, v132, v105);
  v21 = v134;
  v19 = v131;
  if ((v104 & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  if (v146)
  {
    v71 = v129;
    v72 = v148;
    if (!v147)
    {
      return 0;
    }

    if (v139 != v145 || v146 != v147)
    {
      v73 = v148;
      v74 = sub_24AC0F798();
      v72 = v73;
      if ((v74 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v71 = v129;
    v72 = v148;
    if (v147)
    {
      return 0;
    }
  }

  if (v141)
  {
    if (!v140)
    {
      return 0;
    }
  }

  else
  {
    v120 = v140;
    if (v16 != v30)
    {
      v120 = 1;
    }

    if (v120)
    {
      return 0;
    }
  }

  if (v19)
  {
    if (!v138)
    {
      return 0;
    }

    if (v136 != v135 || v19 != v138)
    {
      v121 = v72;
      v122 = sub_24AC0F798();
      v72 = v121;
      if ((v122 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v138)
  {
    return 0;
  }

  if (!v137)
  {
    return !v71;
  }

  return v71 && (v21 == v72 && v137 == v71 || (sub_24AC0F798() & 1) != 0);
}

uint64_t sub_24AC04230(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_24AC0F798() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v4 == v7 && v5 == v8 || (sub_24AC0F798() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_24AC042DC()
{
  result = qword_27EF9AC00;
  if (!qword_27EF9AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AC00);
  }

  return result;
}

unint64_t sub_24AC04330()
{
  result = qword_27EF9A8B8;
  if (!qword_27EF9A8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A8B0, &qword_24AC10638);
    sub_24ABF42F4(&qword_27EF9A8C0, &qword_27EF9A8C8, &qword_24AC10640, &protocol conformance descriptor for SourceValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A8B8);
  }

  return result;
}

unint64_t sub_24AC043E0()
{
  result = qword_27EF9A8D8;
  if (!qword_27EF9A8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A8D0, &qword_24AC10648);
    sub_24ABF42F4(&qword_27EF9A8E0, &qword_27EF9A8E8, &qword_24AC10650, &protocol conformance descriptor for SourceValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A8D8);
  }

  return result;
}

unint64_t sub_24AC04490()
{
  result = qword_27EF9A8F8;
  if (!qword_27EF9A8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A8F0, &qword_24AC10658);
    sub_24ABF42F4(&qword_27EF9A900, &qword_27EF9A908, &qword_24AC10660, &protocol conformance descriptor for SourceValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A8F8);
  }

  return result;
}

unint64_t sub_24AC04540()
{
  result = qword_27EF9A918;
  if (!qword_27EF9A918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A910, &qword_24AC10668);
    sub_24ABF42F4(&qword_27EF9A920, &qword_27EF9A928, &qword_24AC10670, &protocol conformance descriptor for SourceValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A918);
  }

  return result;
}

uint64_t sub_24AC045F0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A940, &qword_24AC10680);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AC04668()
{
  result = qword_27EF9A950;
  if (!qword_27EF9A950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A950);
  }

  return result;
}

unint64_t sub_24AC046BC()
{
  result = qword_27EF9A960;
  if (!qword_27EF9A960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A958, &qword_24AC10688);
    sub_24ABF42F4(&qword_27EF9A968, &qword_27EF9A970, &qword_24AC10690, &protocol conformance descriptor for SourceValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A960);
  }

  return result;
}

unint64_t sub_24AC0476C()
{
  result = qword_27EF9A980;
  if (!qword_27EF9A980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A8B0, &qword_24AC10638);
    sub_24ABF42F4(&qword_27EF9A988, &qword_27EF9A8C8, &qword_24AC10640, &protocol conformance descriptor for SourceValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A980);
  }

  return result;
}

unint64_t sub_24AC0481C()
{
  result = qword_27EF9A990;
  if (!qword_27EF9A990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A8D0, &qword_24AC10648);
    sub_24ABF42F4(&qword_27EF9A998, &qword_27EF9A8E8, &qword_24AC10650, &protocol conformance descriptor for SourceValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A990);
  }

  return result;
}

unint64_t sub_24AC048CC()
{
  result = qword_27EF9A9A0;
  if (!qword_27EF9A9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A8F0, &qword_24AC10658);
    sub_24ABF42F4(&qword_27EF9A9A8, &qword_27EF9A908, &qword_24AC10660, &protocol conformance descriptor for SourceValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A9A0);
  }

  return result;
}

unint64_t sub_24AC0497C()
{
  result = qword_27EF9A9B0;
  if (!qword_27EF9A9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A910, &qword_24AC10668);
    sub_24ABF42F4(&qword_27EF9A9B8, &qword_27EF9A928, &qword_24AC10670, &protocol conformance descriptor for SourceValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A9B0);
  }

  return result;
}

uint64_t sub_24AC04A2C(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A930, &qword_24AC10678);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AC04AB0()
{
  result = qword_27EF9A9D0;
  if (!qword_27EF9A9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A9D0);
  }

  return result;
}

unint64_t sub_24AC04B04()
{
  result = qword_27EF9A9D8;
  if (!qword_27EF9A9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF9A958, &qword_24AC10688);
    sub_24ABF42F4(&qword_27EF9A9E0, &qword_27EF9A970, &qword_24AC10690, &protocol conformance descriptor for SourceValue<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9A9D8);
  }

  return result;
}

unint64_t sub_24AC04BB4()
{
  result = qword_27EF9AC08;
  if (!qword_27EF9AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AC08);
  }

  return result;
}

unint64_t sub_24AC04C08()
{
  result = qword_27EF9AC10;
  if (!qword_27EF9AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AC10);
  }

  return result;
}

unint64_t sub_24AC04C5C()
{
  result = qword_27EF9AC18;
  if (!qword_27EF9AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AC18);
  }

  return result;
}

unint64_t sub_24AC04CB0()
{
  result = qword_27EF9AC20;
  if (!qword_27EF9AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AC20);
  }

  return result;
}

unint64_t sub_24AC04D04()
{
  result = qword_27EF9AA28;
  if (!qword_27EF9AA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA28);
  }

  return result;
}

unint64_t sub_24AC04D88()
{
  result = qword_27EF9AA38;
  if (!qword_27EF9AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA38);
  }

  return result;
}

void sub_24AC04E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

void sub_24AC04E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_24AC04EA4()
{
  result = qword_27EF9AC28[0];
  if (!qword_27EF9AC28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27EF9AC28);
  }

  return result;
}

unint64_t sub_24AC04EF8()
{
  result = qword_27EF9AA48;
  if (!qword_27EF9AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA48);
  }

  return result;
}

unint64_t sub_24AC04F7C()
{
  result = qword_27EF9AA58;
  if (!qword_27EF9AA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA58);
  }

  return result;
}

uint64_t sub_24AC05008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF9A970, &qword_24AC10690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24AC05098()
{
  result = qword_27EF9AA60;
  if (!qword_27EF9AA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA60);
  }

  return result;
}

unint64_t sub_24AC050F0()
{
  result = qword_27EF9AA68;
  if (!qword_27EF9AA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA68);
  }

  return result;
}

unint64_t sub_24AC05148()
{
  result = qword_27EF9AA70;
  if (!qword_27EF9AA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA70);
  }

  return result;
}

unint64_t sub_24AC051A0()
{
  result = qword_27EF9AA78;
  if (!qword_27EF9AA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA78);
  }

  return result;
}

unint64_t sub_24AC051F8()
{
  result = qword_27EF9AA80;
  if (!qword_27EF9AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA80);
  }

  return result;
}

unint64_t sub_24AC05254()
{
  result = qword_27EF9AA90;
  if (!qword_27EF9AA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA90);
  }

  return result;
}

unint64_t sub_24AC052AC()
{
  result = qword_27EF9AA98;
  if (!qword_27EF9AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AA98);
  }

  return result;
}

unint64_t sub_24AC05304()
{
  result = qword_27EF9AAA0;
  if (!qword_27EF9AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF9AAA0);
  }

  return result;
}