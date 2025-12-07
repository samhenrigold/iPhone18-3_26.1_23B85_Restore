BOOL static MTR.Event.Path.== infix(_:_:)(__int16 *a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 2);
  return _s23HomeKitDaemonFoundation3MTRO5EventO4PathV6isSame4path03mtrG0SbAG_So08MTREventG0CtFZ_0(&v3, a2);
}

BOOL static MTR.Event.Path.== infix(_:_:)(id a1, __int16 *a2)
{
  v3 = *a2;
  v4 = *(a2 + 2);
  return _s23HomeKitDaemonFoundation3MTRO5EventO4PathV6isSame4path03mtrG0SbAG_So08MTREventG0CtFZ_0(&v3, a1);
}

uint64_t MTR.Event.Path.hash(into:)()
{
  sub_2531DB424();
  sub_2531DB434();
  return sub_2531DB434();
}

uint64_t MTR.Event.Path.hashValue.getter()
{
  sub_2531DB3F4();
  sub_2531DB424();
  sub_2531DB434();
  sub_2531DB434();
  return sub_2531DB454();
}

BOOL _s23HomeKitDaemonFoundation3MTRO5EventO4PathV6isSame4path03mtrG0SbAG_So08MTREventG0CtFZ_0(unsigned __int16 *a1, id a2)
{
  v3 = *a1;
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  v6 = [a2 endpoint];
  v7 = [v6 unsignedIntValue];

  if (v7 != v3)
  {
    return 0;
  }

  v8 = [a2 cluster];
  v9 = [v8 unsignedIntValue];

  if (v5 != v9)
  {
    return 0;
  }

  v10 = [a2 event];
  v11 = [v10 unsignedIntValue];

  return v4 == v11;
}

unint64_t sub_2531B6870()
{
  result = qword_27F58DD68;
  if (!qword_27F58DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DD68);
  }

  return result;
}

unint64_t sub_2531B68C8()
{
  result = qword_27F58DD70;
  if (!qword_27F58DD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DD70);
  }

  return result;
}

unint64_t sub_2531B694C()
{
  result = qword_27F58DD78;
  if (!qword_27F58DD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DD78);
  }

  return result;
}

uint64_t MTR.ValueEncoder.encode<A>(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = v5;
  v11 = *v4;
  _s26ValueEncoderImplementationCMa();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = xmmword_2531E7720;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = -1;
  v14 = sub_25316B674();

  v15 = sub_2531B6D48(a1, 0x8000000000000000, &v22, a2, &_s10_CodingKeyON, a3, v14);
  if (!v6)
  {
    if (v15)
    {
      v22 = v11;
      sub_2531B76D8(v15, a4);
    }

    else
    {
      v16 = sub_2531DAC44();
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D740, &qword_2531E7730);
      v18[3] = a2;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
      (*(*(a2 - 1) + 16))(boxed_opaque_existential_0, a1, a2);
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_2531DABC4();

      v22 = 0x6576656C2D706F54;
      v23 = 0xEA0000000000206CLL;
      v20 = sub_2531DB544();
      MEMORY[0x259BFE570](v20);

      MEMORY[0x259BFE570](0xD00000000000001BLL, 0x80000002531DD5C0);
      sub_2531DAC14();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D841A8], v16);
      swift_willThrow();
    }
  }
}

uint64_t sub_2531B6C20(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    result = sub_2531BDD70(a1, a2, a3 & 1, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    result = sub_25317DA10(a2, a3 & 1);
    if (v10)
    {
      v11 = result;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_2531BDEE4();
        v13 = v15;
      }

      result = sub_2531BDBA8(v11, v13);
      *v4 = v13;
    }
  }

  return result;
}

uint64_t MTR.ValueEncoder.userInfo.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_2531B6D48(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t *a6, uint64_t a7)
{
  v100 = a3;
  v96 = a6;
  v97 = a7;
  v103 = a2;
  v104 = a1;
  v101 = *(a5 - 1);
  v9 = MEMORY[0x28223BE20](a1);
  v98 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v95 = &v88 - v11;
  v12 = sub_2531DAAF4();
  v102 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v88 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v88 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v88 - v23;
  v25 = *(a4 - 1);
  MEMORY[0x28223BE20](v22);
  v27 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_dynamicCastMetatype())
  {
    (*(v25 + 16))(v27, v104, a4);
    swift_dynamicCast();
    v28 = v105;
    v29 = v106;
    _s14ValueReferenceCMa();
    result = swift_allocObject();
    *(result + 16) = v28;
    *(result + 24) = v29;
    *(result + 32) = 6;
    return result;
  }

  v91 = v25;
  v89 = v15;
  v90 = v18;
  v92 = v21;
  v93 = v24;
  v31 = v98;
  v32 = v99;
  v94 = a5;
  if (!swift_conformsToProtocol2())
  {
    v95 = a4;
    swift_beginAccess();
    v44 = v32[3];
    v92 = v32 + 3;
    if (v44 >> 62)
    {
      goto LABEL_49;
    }

    v93 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_8;
  }

  v105 = 0;
  v106 = 0xE000000000000000;
  sub_2531DABC4();
  MEMORY[0x259BFE570](0xD000000000000010, 0x80000002531DCBA0);
  v33 = sub_2531DB544();
  MEMORY[0x259BFE570](v33);

  MEMORY[0x259BFE570](0xD000000000000029, 0x80000002531DD8C0);
  v34 = v105;
  v98 = v106;
  v99 = sub_2531DAC44();
  v107 = swift_allocError();
  v35[3] = a4;
  v96 = v35;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v35);
  (*(v91 + 16))(boxed_opaque_existential_0, v104, a4);
  v37 = v102;
  v38 = *(v102 + 16);
  v39 = v93;
  v38(v93, v100, v12);
  v40 = v92;
  v38(v92, v39, v12);
  v41 = v101;
  v31 = v94;
  if ((*(v101 + 48))(v40, 1, v94) != 1)
  {
    v104 = v34;
    v57 = *(v41 + 32);
    v58 = v40;
    v32 = v95;
    v57(v95, v58, v31);
    v59 = v39;
    v43 = swift_allocObject();
    v60 = v97;
    v43[5] = v31;
    v43[6] = v60;
    v61 = __swift_allocate_boxed_opaque_existential_0(v43 + 2);
    v57(v61, v32, v31);
    v63 = *(v37 + 8);
    v62 = (v37 + 8);
    v63(v59, v12);
    v64 = v103;
    v43[7] = v103;
    if (v64 >> 62)
    {
      if (v64 >> 62 != 1)
      {
        v72 = 1;
        goto LABEL_18;
      }

      v65 = ((v64 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v65 = (v64 + 64);
    }

    v71 = *v65;

    v72 = v71 + 1;
    if (!__OFADD__(v71, 1))
    {
LABEL_18:
      v43[8] = v72;
      goto LABEL_19;
    }

    __break(1u);
LABEL_24:
    for (i = (v64 + 64); ; i = ((v64 & 0x3FFFFFFFFFFFFFFFLL) + 32))
    {
      v56 = v107;
      v74 = *i;

      v75 = v74 + 1;
      if (!__OFADD__(v74, 1))
      {
        break;
      }

      __break(1u);
LABEL_49:
      v93 = sub_2531DAD44();
LABEL_8:
      v45 = v94;
      v46 = v12;
      v47 = v31;
      v48 = v102;
      v49 = *(v102 + 16);
      v50 = v90;
      v49(v90, v100, v46);
      v51 = v89;
      v49(v89, v50, v46);
      v52 = v51;
      v53 = v101;
      if ((*(v101 + 48))(v52, 1, v45) == 1)
      {
        v54 = *(v48 + 8);
        v54(v50, v46);
        v54(v52, v46);
        v55 = v103;

        v56 = v107;
        goto LABEL_27;
      }

      v66 = *(v53 + 32);
      v31 = (v53 + 32);
      v66(v47, v52, v45);
      v62 = swift_allocObject();
      v67 = v97;
      v62[5] = v45;
      v62[6] = v67;
      v68 = __swift_allocate_boxed_opaque_existential_0(v62 + 2);
      v66(v68, v47, v45);
      v69 = *(v48 + 8);
      v12 = v48 + 8;
      v69(v50, v46);
      v64 = v103;
      v62[7] = v103;
      if (!(v64 >> 62))
      {
        goto LABEL_24;
      }

      if (v64 >> 62 != 1)
      {
        v56 = v107;
        v75 = 1;
        break;
      }
    }

    v62[8] = v75;
    v55 = v62;
LABEL_27:
    v77 = v32[4];
    v76 = v32[5];
    v32[4] = v55;
    if (v55 >> 62)
    {
      if (v55 >> 62 != 1)
      {
        v79 = 0;
LABEL_33:
        v80 = v104;
        v81 = v95;
        v82 = v96;
        v32[5] = v79;
        sub_2531B9380(v80, v32, v81, v94, v82);
        if (v56)
        {

          v32[4] = v77;

          v32[5] = v76;
          v83 = v32[3];
          if (v83 >> 62)
          {
            v84 = sub_2531DAD44();
          }

          else
          {
            v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v93 >= v84)
          {
            return swift_willThrow();
          }

          swift_beginAccess();
          if (*v92 >> 62)
          {
            if (sub_2531DAD44())
            {
              goto LABEL_39;
            }
          }

          else if (*((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_39:
            sub_2531B7BC4();
            swift_endAccess();

            return swift_willThrow();
          }

          __break(1u);
        }

        else
        {

          v32[4] = v77;

          v32[5] = v76;
          v85 = v32[3];
          if (v85 >> 62)
          {
            v86 = sub_2531DAD44();
          }

          else
          {
            v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (v93 >= v86)
          {
            return 0;
          }

          swift_beginAccess();
          if (!(*v92 >> 62))
          {
            result = *((*v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!result)
            {
LABEL_55:
              __break(1u);
              return result;
            }

LABEL_45:
            v87 = sub_2531B7BC4();
            swift_endAccess();
            return v87;
          }
        }

        result = sub_2531DAD44();
        if (!result)
        {
          goto LABEL_55;
        }

        goto LABEL_45;
      }

      v78 = ((v55 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v78 = (v55 + 64);
    }

    v79 = *v78;

    goto LABEL_33;
  }

  v42 = *(v37 + 8);
  v42(v39, v12);
  v42(v40, v12);
  v43 = v103;

LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D740, &qword_2531E7730);
  sub_25316B2C4(v43);

  v73 = v96;
  sub_2531DAC14();
  (*(*(v99 - 8) + 104))(v73, *MEMORY[0x277D841A8]);
  return swift_willThrow();
}

unint64_t sub_2531B76D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  sub_2531BEB9C(v4, v3, v5);

  v7 = v5 >> 6;
  if (v5 >> 6 <= 1)
  {
    if (!v7)
    {
LABEL_29:
      *a2 = v4;
      a2[1] = v3;
      *(a2 + 16) = v5;
      return result;
    }

    if (!(v4 >> 62))
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_5;
      }

      goto LABEL_32;
    }

LABEL_31:
    v8 = sub_2531DAD44();
    if (v8)
    {
LABEL_5:
      v33 = v5;
      v32 = a2;
      v36 = MEMORY[0x277D84F90];
      sub_2531B468C(0, v8 & ~(v8 >> 63), 0);
      if ((v8 & 0x8000000000000000) == 0)
      {
        v9 = 0;
        v10 = v36;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x259BFEA20](v9, v4);
          }

          else
          {
          }

          sub_2531B76D8(v11, &v38);
          v12 = v38;
          v13 = v39;
          v15 = *(v36 + 16);
          v14 = *(v36 + 24);
          if (v15 >= v14 >> 1)
          {
            v30 = v38;
            sub_2531B468C((v14 > 1), v15 + 1, 1);
            v12 = v30;
          }

          ++v9;
          *(v36 + 16) = v15 + 1;
          v16 = v36 + 24 * v15;
          *(v16 + 32) = v12;
          *(v16 + 48) = v13;
        }

        while (v8 != v9);
        sub_25317079C(v4, v3, v33);
        LOBYTE(v5) = 7;
        goto LABEL_27;
      }

      goto LABEL_34;
    }

LABEL_32:
    sub_25317079C(v4, v3, v5);
    LOBYTE(v5) = 7;
    v10 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  if (v7 == 2)
  {
    v17 = *(v4 + 16);
    if (v17)
    {
      v18 = sub_2531964F4(*(v4 + 16), 0);
      v19 = sub_253196BB0(&v38, (v18 + 4), v17, v4);
      v20 = v38;
      v34 = v19;
      sub_2531BEB9C(v4, v3, v5);
      sub_25319714C(v20);
      if (v34 != v17)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sub_25317079C(v4, v3, v5);
    }

    else
    {
      sub_25317079C(v4, v3, v5);
      v18 = MEMORY[0x277D84F90];
    }

    v32 = a2;
    *&v38 = v18;
    v5 = 0;
    sub_2531BE058(&v38);
    a2 = v38;
    v3 = *(v38 + 16);
    if (!v3)
    {

      LOBYTE(v5) = 8;
      v10 = MEMORY[0x277D84F90];
LABEL_27:
      a2 = v32;
LABEL_28:
      result = swift_allocObject();
      v4 = result;
      v3 = 0;
      *(result + 16) = v10;
      goto LABEL_29;
    }

    v37 = MEMORY[0x277D84F90];
    sub_2531B4614(0, v3, 0);
    v21 = 0;
    v10 = v37;
    v22 = a2 + 6;
    v35 = a2;
    while (v21 < a2[2])
    {
      v23 = *(v22 - 2);
      v24 = *(v22 - 8);

      sub_2531B76D8(v25, &v38);
      v26 = v38;
      v27 = v39;
      v5 = *(v37 + 16);
      v28 = *(v37 + 24);
      v4 = v5 + 1;
      if (v5 >= v28 >> 1)
      {
        v31 = v38;
        sub_2531B4614((v28 > 1), v5 + 1, 1);
        v26 = v31;
      }

      *(v37 + 16) = v4;
      v29 = v37 + 40 * v5;
      *(v29 + 32) = v23;
      ++v21;
      *(v29 + 40) = v24;
      *(v29 + 48) = v26;
      *(v29 + 64) = v27;
      v22 += 3;
      a2 = v35;
      if (v3 == v21)
      {

        LOBYTE(v5) = 8;
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_35:
  sub_2531DAD34();
  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_2531B7B60()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    v2 = sub_2531DAD44();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v2 == *(v0 + 40);
}

uint64_t sub_2531B7BC4()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_2531A6B38();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_2531DAD44();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_2531A6A0C(result);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_2531A6A0C(result);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_2531DAD44();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_2531B7C54()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2531B7CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = (v3 + 2);
  if ((*(*v3 + 192))(a1))
  {
    swift_beginAccess();
    v8 = sub_2531B53A0(MEMORY[0x277D84F90]);
    _s14ValueReferenceCMa();
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0x80;

    MEMORY[0x259BFE6B0](v10);
    if (*((v4[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v4[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();
    swift_endAccess();
    goto LABEL_13;
  }

  swift_beginAccess();
  v12 = v3[3];
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_7;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = sub_2531DAD44();
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_7:
  v7 = v13 - 1;
  if (__OFSUB__(v13, 1))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v12 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v12 + 8 * v7 + 32);

      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_17:

  v14 = MEMORY[0x259BFEA20](v7, v12);

LABEL_12:
  if ((*(v14 + 32) & 0xC0) == 0x80)
  {
LABEL_13:
    _s12ValueEncoderV14KeyedContainerVMa(0, a2, a3, v11);

    swift_getWitnessTable();
    return sub_2531DAF14();
  }

LABEL_20:

  __break(1u);
  return result;
}

uint64_t sub_2531B7EEC@<X0>(void *a1@<X8>)
{
  v2 = v1;
  if ((*(*v1 + 192))())
  {
    swift_beginAccess();
    _s14ValueReferenceCMa();
    v4 = swift_allocObject();
    *(v4 + 16) = MEMORY[0x277D84F90];
    *(v4 + 24) = 0;
    *(v4 + 32) = 64;

    MEMORY[0x259BFE6B0](v5);
    if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();
    swift_endAccess();
    v6 = v1[4];
    a1[3] = &_s12ValueEncoderV16UnkeyedContainerVN;
    a1[4] = sub_2531BD884();
    *a1 = v2;
    a1[1] = v4;
    a1[2] = v6;
  }

  else
  {
    result = sub_2531DAD34();
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B80F4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = _s26ValueEncoderImplementationCMa();
  a1[4] = sub_2531BEB54(&qword_27F58DD88, _s26ValueEncoderImplementationCMa, &unk_2531E7BEC);
  *a1 = v3;
}

uint64_t sub_2531B8174()
{
  if (((*(*v0 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 10;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v2);
  if (*((v0[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B8280(char a1)
{
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
LABEL_8:
    sub_2531DA8C4();
    goto LABEL_6;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  if (a1)
  {
    *(v3 + 16) = xmmword_2531E1A40;
  }

  else
  {
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
  }

  *(v3 + 32) = 0;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B83A4(uint64_t a1, uint64_t a2)
{
  if (((*(*v2 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = 5;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v6);
  if (*((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B84C0(double a1)
{
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = 0;
  *(v3 + 32) = 4;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B85DC(float a1)
{
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = LODWORD(a1);
  *(v3 + 24) = 0;
  *(v3 + 32) = 3;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B86F8(uint64_t a1)
{
  v2 = a1;
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B880C(uint64_t a1)
{
  v2 = a1;
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B8920(uint64_t a1)
{
  v2 = a1;
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B8A34(uint64_t a1)
{
  v2 = a1;
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 2;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B8B48(uint64_t a1)
{
  v2 = a1;
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 2;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B8C5C(uint64_t a1)
{
  v2 = a1;
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 2;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v4);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B8D70(uint64_t a1, char a2)
{
  if (((*(*v2 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = 0;
  *(v5 + 32) = a2;
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v6);
  if (*((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B8E80(uint64_t a1, char *a2, uint64_t *a3)
{
  v5 = v4;
  v6 = v3;
  v10 = *(a2 - 1);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((*(*v3 + 192))(v11) & 1) == 0)
  {
    __break(1u);
LABEL_10:
    sub_2531DA8C4();
    goto LABEL_8;
  }

  (*(v10 + 16))(v13, a1, a2);
  v14 = v3[4];
  memset(v21, 0, sizeof(v21));
  v22 = -1;
  v15 = sub_25316B674();

  v16 = sub_2531B6D48(v13, v14, v21, a2, &_s10_CodingKeyON, a3, v15);
  if (v5)
  {

    return (*(v10 + 8))(v13, a2);
  }

  if (v16)
  {
  }

  else
  {
    v18 = sub_2531B53A0(MEMORY[0x277D84F90]);

    _s14ValueReferenceCMa();
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0x80;
  }

  (*(v10 + 8))(v13, a2);
  swift_beginAccess();

  MEMORY[0x259BFE6B0](v20);
  if (*((v6[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B90EC(void *a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  result = sub_2531B6D48(v12, a2, a3, v10, a4, v11, a5);
  if (!v5 && !result)
  {
    v14 = sub_2531B53A0(MEMORY[0x277D84F90]);
    _s14ValueReferenceCMa();
    result = swift_allocObject();
    *(result + 16) = v14;
    *(result + 24) = 0;
    *(result + 32) = 0x80;
  }

  return result;
}

uint64_t sub_2531B9380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[3] = _s26ValueEncoderImplementationCMa();
  v7[4] = sub_2531BEB54(&qword_27F58DD80, _s26ValueEncoderImplementationCMa, &unk_2531E7CA4);
  v7[0] = a2;

  sub_2531DA674();
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_2531B9440(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (((*(*v1 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  *(v5 + 32) = v4;
  swift_beginAccess();
  sub_25316D004(v2, v3, v4);

  MEMORY[0x259BFE6B0](v6);
  if (*((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B9568(uint64_t a1, unint64_t a2)
{
  if (((*(*v2 + 192))() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  _s14ValueReferenceCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = 6;
  swift_beginAccess();
  sub_25316D050(a1, a2);

  MEMORY[0x259BFE6B0](v6);
  if (*((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_5:
    sub_2531DA8C4();
  }

  sub_2531DA904();
  swift_endAccess();
}

uint64_t sub_2531B96D0()
{
  v1 = *(v0 + 8);
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 10;
  v3 = *(v1 + 32);
  if ((v3 & 0xC0) == 0x40)
  {
    v4 = *(v1 + 24);
    v10 = *(v1 + 16);
    *(v1 + 16) = 0;
    *(v1 + 24) = 0;
    *(v1 + 32) = -64;

    sub_25317079C(v5, v4, v3);

    MEMORY[0x259BFE6B0](v6);
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v7 = *(v1 + 16);
    v8 = *(v1 + 24);
    *(v1 + 16) = v10;
    *(v1 + 24) = 0;
    v9 = *(v1 + 32);
    *(v1 + 32) = 64;
    return sub_25317079C(v7, v8, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B97E0(char a1)
{
  v3 = *(v1 + 8);
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  if (a1)
  {
    *(result + 16) = xmmword_2531E1A40;
  }

  else
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = 0;
  v5 = *(v3 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v3 + 24);
    v12 = *(v3 + 16);
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    *(v3 + 16) = v12;
    *(v3 + 24) = 0;
    v11 = *(v3 + 32);
    *(v3 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B9908(char a1)
{
  v2 = *(v1 + 8);
  v3 = a1;
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 1;
  v5 = *(v2 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v2 + 24);
    v12 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v2 + 16) = v12;
    *(v2 + 24) = 0;
    v11 = *(v2 + 32);
    *(v2 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B9A1C(__int16 a1)
{
  v2 = *(v1 + 8);
  v3 = a1;
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 1;
  v5 = *(v2 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v2 + 24);
    v12 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v2 + 16) = v12;
    *(v2 + 24) = 0;
    v11 = *(v2 + 32);
    *(v2 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B9B30(int a1)
{
  v2 = *(v1 + 8);
  v3 = a1;
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 1;
  v5 = *(v2 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v2 + 24);
    v12 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v2 + 16) = v12;
    *(v2 + 24) = 0;
    v11 = *(v2 + 32);
    *(v2 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B9C44(unsigned __int8 a1)
{
  v2 = *(v1 + 8);
  v3 = a1;
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 2;
  v5 = *(v2 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v2 + 24);
    v12 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v2 + 16) = v12;
    *(v2 + 24) = 0;
    v11 = *(v2 + 32);
    *(v2 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B9D58(unsigned __int16 a1)
{
  v2 = *(v1 + 8);
  v3 = a1;
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 2;
  v5 = *(v2 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v2 + 24);
    v12 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v2 + 16) = v12;
    *(v2 + 24) = 0;
    v11 = *(v2 + 32);
    *(v2 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B9E6C(unsigned int a1)
{
  v2 = *(v1 + 8);
  v3 = a1;
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 2;
  v5 = *(v2 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v2 + 24);
    v12 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v2 + 16) = v12;
    *(v2 + 24) = 0;
    v11 = *(v2 + 32);
    *(v2 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531B9F80(uint64_t a1, char a2)
{
  v5 = *(v2 + 8);
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = a2;
  v7 = *(v5 + 32);
  if ((v7 & 0xC0) == 0x40)
  {
    v8 = *(v5 + 24);
    v14 = *(v5 + 16);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = -64;

    sub_25317079C(v9, v8, v7);

    MEMORY[0x259BFE6B0](v10);
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v11 = *(v5 + 16);
    v12 = *(v5 + 24);
    *(v5 + 16) = v14;
    *(v5 + 24) = 0;
    v13 = *(v5 + 32);
    *(v5 + 32) = 64;
    return sub_25317079C(v11, v12, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531BA09C(float a1)
{
  v2 = *(v1 + 8);
  v3 = LODWORD(a1);
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = v3;
  *(result + 24) = 0;
  *(result + 32) = 3;
  v5 = *(v2 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v2 + 24);
    v12 = *(v2 + 16);
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v2 + 16);
    v10 = *(v2 + 24);
    *(v2 + 16) = v12;
    *(v2 + 24) = 0;
    v11 = *(v2 + 32);
    *(v2 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531BA1B0(double a1)
{
  v3 = *(v1 + 8);
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 32) = 4;
  v5 = *(v3 + 32);
  if ((v5 & 0xC0) == 0x40)
  {
    v6 = *(v3 + 24);
    v12 = *(v3 + 16);
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = -64;

    sub_25317079C(v7, v6, v5);

    MEMORY[0x259BFE6B0](v8);
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    *(v3 + 16) = v12;
    *(v3 + 24) = 0;
    v11 = *(v3 + 32);
    *(v3 + 32) = 64;
    return sub_25317079C(v9, v10, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531BA2D8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  _s14ValueReferenceCMa();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = 5;
  v7 = *(v5 + 32);
  if ((v7 & 0xC0) == 0x40)
  {
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = -64;

    sub_2531BEB9C(v9, v8, v7);
    sub_25317079C(v9, v8, v7);

    MEMORY[0x259BFE6B0](v10);
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();

    v11 = *(v5 + 16);
    v12 = *(v5 + 24);
    *(v5 + 16) = v9;
    *(v5 + 24) = 0;
    v13 = *(v5 + 32);
    *(v5 + 32) = 64;
    return sub_25317079C(v11, v12, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2531BA410(uint64_t a1, char *a2, uint64_t *a3)
{
  v5 = v4;
  v6 = v3;
  v9 = *(a2 - 1);
  MEMORY[0x28223BE20](a1);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  result = (*(v9 + 16))(v11);
  v14 = v6[1];
  if ((*(v14 + 32) & 0xC0) != 0x40)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v15 = *(v12 + 32);
  v16 = *(v14 + 16);
  if (v16 >> 62)
  {
    v17 = sub_2531DAD44();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29[1] = 0;
  v29[2] = 0;
  v29[0] = v17;
  v30 = 2;
  v18 = sub_25316B674();

  v19 = sub_2531B6D48(v11, v15, v29, a2, &_s10_CodingKeyON, a3, v18);
  if (v5)
  {

    return (*(v9 + 8))(v11, a2);
  }

  if (v19)
  {
  }

  else
  {
    v20 = sub_2531B53A0(MEMORY[0x277D84F90]);

    _s14ValueReferenceCMa();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0x80;
  }

  result = (*(v9 + 8))(v11, a2);
  v22 = *(v14 + 32);
  if ((v22 & 0xC0) != 0x40)
  {
    goto LABEL_15;
  }

  v23 = *(v14 + 24);
  v29[0] = *(v14 + 16);
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *(v14 + 32) = -64;

  sub_25317079C(v24, v23, v22);

  MEMORY[0x259BFE6B0](v25);
  if (*((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2531DA8C4();
  }

  sub_2531DA904();

  v26 = *(v14 + 16);
  v27 = *(v14 + 24);
  *(v14 + 16) = v29[0];
  *(v14 + 24) = 0;
  v28 = *(v14 + 32);
  *(v14 + 32) = 64;
  return sub_25317079C(v26, v27, v28);
}

void sub_2531BA6C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  if ((*(v4 + 32) & 0xC0) == 0x40)
  {
    v5 = v3;
    v8 = *(v4 + 16);
    if (v8 >> 62)
    {
      v9 = sub_2531DAD44();
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = sub_2531B53A0(MEMORY[0x277D84F90]);
    _s14ValueReferenceCMa();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0x80;
    v12 = *(v4 + 32);
    if ((v12 & 0xC0) != 0x40)
    {
      goto LABEL_17;
    }

    v13 = *(v4 + 24);
    v25 = *(v4 + 16);
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = -64;

    sub_25317079C(v14, v13, v12);

    MEMORY[0x259BFE6B0](v15);
    if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2531DA8C4();
    }

    sub_2531DA904();
    v16 = *(v4 + 16);
    v17 = *(v4 + 24);
    *(v4 + 16) = v25;
    *(v4 + 24) = 0;
    v18 = *(v4 + 32);
    *(v4 + 32) = 64;
    sub_25317079C(v16, v17, v18);
    v19 = *(v5 + 16);
    v20 = swift_allocObject();
    v20[5] = &_s10_CodingKeyON;
    v20[6] = sub_25316B674();
    v21 = swift_allocObject();
    v20[2] = v21;
    *(v21 + 24) = 0;
    *(v21 + 32) = 0;
    *(v21 + 16) = v9;
    *(v21 + 40) = 2;
    v20[7] = v19;
    if (v19 >> 62)
    {
      v23 = 0;
      if (v19 >> 62 != 1)
      {
LABEL_12:
        if (!__OFADD__(v23, 1))
        {
          v20[8] = v23 + 1;
          _s12ValueEncoderV14KeyedContainerVMa(0, a2, a3, v22);

          swift_getWitnessTable();
          sub_2531DAF14();
          return;
        }

        __break(1u);
        goto LABEL_16;
      }

      v24 = ((v19 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v24 = (v19 + 64);
    }

    v23 = *v24;

    goto LABEL_12;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_2531BA934(void *a1@<X8>)
{
  v3 = v1[1];
  if ((*(v3 + 32) & 0xC0) != 0x40)
  {
    goto LABEL_18;
  }

  v4 = v1;
  v5 = *(v3 + 16);
  if (v5 >> 62)
  {
    v6 = sub_2531DAD44();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  _s14ValueReferenceCMa();
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x277D84F90];
  *(v7 + 24) = 0;
  *(v7 + 32) = 64;
  v8 = *(v3 + 32);
  if ((v8 & 0xC0) != 0x40)
  {
    goto LABEL_19;
  }

  v9 = v7;
  v10 = *(v3 + 24);
  v22 = *(v3 + 16);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = -64;

  sub_25317079C(v11, v10, v8);

  MEMORY[0x259BFE6B0](v12);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_2531DA8C4();
  }

  sub_2531DA904();
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  *(v3 + 16) = v22;
  *(v3 + 24) = 0;
  v15 = *(v3 + 32);
  *(v3 + 32) = 64;
  sub_25317079C(v13, v14, v15);
  v16 = *v4;
  v17 = v4[2];
  v18 = swift_allocObject();
  v18[5] = &_s10_CodingKeyON;
  v18[6] = sub_25316B674();
  v19 = swift_allocObject();
  v18[2] = v19;
  *(v19 + 24) = 0;
  *(v19 + 32) = 0;
  *(v19 + 16) = v6;
  *(v19 + 40) = 2;
  v18[7] = v17;
  if (v17 >> 62)
  {
    v20 = 0;
    if (v17 >> 62 != 1)
    {
      goto LABEL_12;
    }

    v21 = ((v17 & 0x3FFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v21 = (v17 + 64);
  }

  v20 = *v21;

LABEL_12:
  if (__OFADD__(v20, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v18[8] = v20 + 1;
  a1[3] = &_s12ValueEncoderV16UnkeyedContainerVN;
  a1[4] = sub_2531BD884();
  *a1 = v16;
  a1[1] = v9;
  a1[2] = v18;
}

void sub_2531BAB64(uint64_t *a1@<X8>)
{
  v3 = v1[1];
  if ((*(v3 + 32) & 0xC0) != 0x40)
  {
    goto LABEL_19;
  }

  v4 = *v1;
  v5 = *(v3 + 16);
  if (v5 >> 62)
  {
    v6 = sub_2531DAD44();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = *(v4 + 32);
  v8 = _s23ValueReferencingEncoderCMa();
  v9 = swift_allocObject();
  *(v9 + 72) = v4;
  *(v9 + 48) = v3;
  *(v9 + 56) = v6;
  *(v9 + 64) = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  v11 = v7 >> 62;
  if (!(v7 >> 62))
  {
    v13 = (v7 + 64);
    goto LABEL_8;
  }

  v12 = 0;
  if (v11 == 1)
  {
    v13 = ((v7 & 0x3FFFFFFFFFFFFFFFLL) + 32);
LABEL_8:
    v12 = *v13;
  }

  if (!__OFADD__(v12, 1))
  {
    *(v10 + 32) = v12 + 1;
    if (v11)
    {
      if (v11 != 1)
      {
        v15 = 0;
        goto LABEL_16;
      }

      v7 &= 0x3FFFFFFFFFFFFFFFuLL;
      v14 = 32;
    }

    else
    {
      v14 = 64;
    }

    v15 = *(v7 + v14);
LABEL_16:
    swift_beginAccess();
    v16 = MEMORY[0x277D84F90];
    *(v9 + 16) = *(v4 + 16);
    *(v9 + 24) = v16;
    *(v9 + 32) = v10 | 0x4000000000000000;
    *(v9 + 40) = v15;
    a1[3] = v8;
    a1[4] = sub_2531BEB54(qword_27F58DD98, _s23ValueReferencingEncoderCMa, &unk_2531E7CA4);
    *a1 = v9;

    return;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_2531BAD2C()
{
  v1 = *(v0 + 8);
  if ((*(v1 + 32) & 0xC0) == 0x40)
  {
    if (*(v1 + 16) >> 62)
    {
      sub_2531DAD44();
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_2531BB1EC@<X0>(uint64_t a3@<X8>)
{
  v4 = sub_2531DB504();
  if ((v5 & 1) == 0)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      result = MTR.Tag.init(rawValue:)(v4, &v8);
      v7 = v9;
      if (v9 != 255)
      {
        *a3 = v8;
        *(a3 + 8) = v7 & 1;
        return result;
      }
    }

    __break(1u);
  }

  result = sub_2531DAD34();
  __break(1u);
  return result;
}

unint64_t sub_2531BB2A4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  _s14ValueReferenceCMa();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 10;
  result = sub_2531BB1EC(&v16);
  v6 = *(v3 + 32);
  if ((v6 & 0xC0) == 0x80)
  {
    v7 = v17;
    v8 = v16;
    v9 = *(v3 + 16);
    v10 = *(v3 + 24);
    *(v3 + 16) = 0;
    *(v3 + 24) = 0;
    *(v3 + 32) = -64;

    sub_25317079C(v11, v10, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v9;
    sub_2531BDD70(v4, v8, v7, isUniquelyReferenced_nonNull_native);
    v13 = *(v3 + 16);
    v14 = *(v3 + 24);
    *(v3 + 16) = v18;
    *(v3 + 24) = 0;
    v15 = *(v3 + 32);
    *(v3 + 32) = 0x80;
    return sub_25317079C(v13, v14, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BB3B4(char a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  _s14ValueReferenceCMa();
  v6 = swift_allocObject();
  v7 = v6;
  if (a1)
  {
    *(v6 + 16) = xmmword_2531E1A40;
  }

  else
  {
    *(v6 + 16) = 0;
    *(v6 + 24) = 0;
  }

  *(v6 + 32) = 0;
  result = sub_2531BB1EC(&v19);
  v9 = *(v5 + 32);
  if ((v9 & 0xC0) == 0x80)
  {
    v10 = v20;
    v11 = v19;
    v12 = *(v5 + 16);
    v13 = *(v5 + 24);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = -64;

    sub_25317079C(v14, v13, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = v12;
    sub_2531BDD70(v7, v11, v10, isUniquelyReferenced_nonNull_native);
    v16 = *(v5 + 16);
    v17 = *(v5 + 24);
    *(v5 + 16) = v21;
    *(v5 + 24) = 0;
    v18 = *(v5 + 32);
    *(v5 + 32) = 0x80;
    return sub_25317079C(v16, v17, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BB4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 8);
  _s14ValueReferenceCMa();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = 5;

  result = sub_2531BB1EC(&v20);
  v10 = *(v7 + 32);
  if ((v10 & 0xC0) == 0x80)
  {
    v11 = v21;
    v12 = v20;
    v13 = *(v7 + 16);
    v14 = *(v7 + 24);
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = -64;

    sub_25317079C(v15, v14, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2531BDD70(v8, v12, v11, isUniquelyReferenced_nonNull_native);
    v17 = *(v7 + 16);
    v18 = *(v7 + 24);
    *(v7 + 16) = v13;
    *(v7 + 24) = 0;
    v19 = *(v7 + 32);
    *(v7 + 32) = 0x80;
    return sub_25317079C(v17, v18, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BB60C(double a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  _s14ValueReferenceCMa();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = 0;
  *(v6 + 32) = 4;
  result = sub_2531BB1EC(&v18);
  v8 = *(v5 + 32);
  if ((v8 & 0xC0) == 0x80)
  {
    v9 = v19;
    v10 = v18;
    v11 = *(v5 + 16);
    v12 = *(v5 + 24);
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = -64;

    sub_25317079C(v13, v12, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2531BDD70(v6, v10, v9, isUniquelyReferenced_nonNull_native);
    v15 = *(v5 + 16);
    v16 = *(v5 + 24);
    *(v5 + 16) = v11;
    *(v5 + 24) = 0;
    v17 = *(v5 + 32);
    *(v5 + 32) = 0x80;
    return sub_25317079C(v15, v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BB72C(float a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v5 = LODWORD(a1);
  _s14ValueReferenceCMa();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  *(v6 + 32) = 3;
  result = sub_2531BB1EC(&v18);
  v8 = *(v4 + 32);
  if ((v8 & 0xC0) == 0x80)
  {
    v9 = v19;
    v10 = v18;
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = -64;

    sub_25317079C(v13, v12, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v11;
    sub_2531BDD70(v6, v10, v9, isUniquelyReferenced_nonNull_native);
    v15 = *(v4 + 16);
    v16 = *(v4 + 24);
    *(v4 + 16) = v20;
    *(v4 + 24) = 0;
    v17 = *(v4 + 32);
    *(v4 + 32) = 0x80;
    return sub_25317079C(v15, v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BB840(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v5 = a1;
  _s14ValueReferenceCMa();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  result = sub_2531BB1EC(&v18);
  v8 = *(v4 + 32);
  if ((v8 & 0xC0) == 0x80)
  {
    v9 = v19;
    v10 = v18;
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = -64;

    sub_25317079C(v13, v12, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v11;
    sub_2531BDD70(v6, v10, v9, isUniquelyReferenced_nonNull_native);
    v15 = *(v4 + 16);
    v16 = *(v4 + 24);
    *(v4 + 16) = v20;
    *(v4 + 24) = 0;
    v17 = *(v4 + 32);
    *(v4 + 32) = 0x80;
    return sub_25317079C(v15, v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BB954(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v5 = a1;
  _s14ValueReferenceCMa();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  result = sub_2531BB1EC(&v18);
  v8 = *(v4 + 32);
  if ((v8 & 0xC0) == 0x80)
  {
    v9 = v19;
    v10 = v18;
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = -64;

    sub_25317079C(v13, v12, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v11;
    sub_2531BDD70(v6, v10, v9, isUniquelyReferenced_nonNull_native);
    v15 = *(v4 + 16);
    v16 = *(v4 + 24);
    *(v4 + 16) = v20;
    *(v4 + 24) = 0;
    v17 = *(v4 + 32);
    *(v4 + 32) = 0x80;
    return sub_25317079C(v15, v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BBA68(int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v5 = a1;
  _s14ValueReferenceCMa();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  *(v6 + 32) = 1;
  result = sub_2531BB1EC(&v18);
  v8 = *(v4 + 32);
  if ((v8 & 0xC0) == 0x80)
  {
    v9 = v19;
    v10 = v18;
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = -64;

    sub_25317079C(v13, v12, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v11;
    sub_2531BDD70(v6, v10, v9, isUniquelyReferenced_nonNull_native);
    v15 = *(v4 + 16);
    v16 = *(v4 + 24);
    *(v4 + 16) = v20;
    *(v4 + 24) = 0;
    v17 = *(v4 + 32);
    *(v4 + 32) = 0x80;
    return sub_25317079C(v15, v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BBB7C(unsigned __int8 a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v5 = a1;
  _s14ValueReferenceCMa();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  *(v6 + 32) = 2;
  result = sub_2531BB1EC(&v18);
  v8 = *(v4 + 32);
  if ((v8 & 0xC0) == 0x80)
  {
    v9 = v19;
    v10 = v18;
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = -64;

    sub_25317079C(v13, v12, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v11;
    sub_2531BDD70(v6, v10, v9, isUniquelyReferenced_nonNull_native);
    v15 = *(v4 + 16);
    v16 = *(v4 + 24);
    *(v4 + 16) = v20;
    *(v4 + 24) = 0;
    v17 = *(v4 + 32);
    *(v4 + 32) = 0x80;
    return sub_25317079C(v15, v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BBC90(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v5 = a1;
  _s14ValueReferenceCMa();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  *(v6 + 32) = 2;
  result = sub_2531BB1EC(&v18);
  v8 = *(v4 + 32);
  if ((v8 & 0xC0) == 0x80)
  {
    v9 = v19;
    v10 = v18;
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = -64;

    sub_25317079C(v13, v12, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v11;
    sub_2531BDD70(v6, v10, v9, isUniquelyReferenced_nonNull_native);
    v15 = *(v4 + 16);
    v16 = *(v4 + 24);
    *(v4 + 16) = v20;
    *(v4 + 24) = 0;
    v17 = *(v4 + 32);
    *(v4 + 32) = 0x80;
    return sub_25317079C(v15, v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BBDA4(unsigned int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 8);
  v5 = a1;
  _s14ValueReferenceCMa();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  *(v6 + 32) = 2;
  result = sub_2531BB1EC(&v18);
  v8 = *(v4 + 32);
  if ((v8 & 0xC0) == 0x80)
  {
    v9 = v19;
    v10 = v18;
    v11 = *(v4 + 16);
    v12 = *(v4 + 24);
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = -64;

    sub_25317079C(v13, v12, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v11;
    sub_2531BDD70(v6, v10, v9, isUniquelyReferenced_nonNull_native);
    v15 = *(v4 + 16);
    v16 = *(v4 + 24);
    *(v4 + 16) = v20;
    *(v4 + 24) = 0;
    v17 = *(v4 + 32);
    *(v4 + 32) = 0x80;
    return sub_25317079C(v15, v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BBEB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(v4 + 8);
  _s14ValueReferenceCMa();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = 0;
  *(v8 + 32) = a4;
  result = sub_2531BB1EC(&v20);
  v10 = *(v7 + 32);
  if ((v10 & 0xC0) == 0x80)
  {
    v11 = v21;
    v12 = v20;
    v13 = *(v7 + 16);
    v14 = *(v7 + 24);
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    *(v7 + 32) = -64;

    sub_25317079C(v15, v14, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_2531BDD70(v8, v12, v11, isUniquelyReferenced_nonNull_native);
    v17 = *(v7 + 16);
    v18 = *(v7 + 24);
    *(v7 + 16) = v13;
    *(v7 + 24) = 0;
    v19 = *(v7 + 32);
    *(v7 + 32) = 0x80;
    return sub_25317079C(v17, v18, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2531BBFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a3 + 16);
  v39 = sub_2531DAAF4();
  v12 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v14 = &v35 - v13;
  v36 = v5;
  v15 = *v5;
  v42 = a4;
  v43 = a5;
  v16 = __swift_allocate_boxed_opaque_existential_0(&v40);
  (*(*(a4 - 8) + 16))(v16, a1, a4);
  v17 = *(v15 + 32);
  v18 = *(v11 - 1);
  v19 = *(v18 + 16);
  v37 = a2;
  v19(v14, a2, v11);
  (*(v18 + 56))(v14, 0, 1, v11);
  v20 = *(a3 + 24);

  v21 = v38;
  v22 = sub_2531B90EC(&v40, v17, v14, v11, v20);
  if (v21)
  {
    (*(v12 + 8))(v14, v39);

    return __swift_destroy_boxed_opaque_existential_1(&v40);
  }

  else
  {
    v38 = v22;
    (*(v12 + 8))(v14, v39);

    __swift_destroy_boxed_opaque_existential_1(&v40);
    v24 = v36[1];
    result = sub_2531BB1EC(&v40);
    v25 = *(v24 + 32);
    if ((v25 & 0xC0) == 0x80)
    {
      v26 = v41;
      v27 = v40;
      v28 = *(v24 + 16);
      v29 = *(v24 + 24);
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = -64;

      sub_25317079C(v30, v29, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v28;
      sub_2531BDD70(v38, v27, v26, isUniquelyReferenced_nonNull_native);
      v32 = *(v24 + 16);
      v33 = *(v24 + 24);
      *(v24 + 16) = v44;
      *(v24 + 24) = 0;
      v34 = *(v24 + 32);
      *(v24 + 32) = 0x80;
      return sub_25317079C(v32, v33, v34);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2531BC284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a6;
  v60 = a4;
  v10 = *(a3 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2531DAAF4();
  v62 = *(v14 - 8);
  v63 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v66 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v54 - v17;
  v19 = *v6;
  v20 = v6[1];
  v21 = v6[2];
  v22 = *(a3 + 24);
  v61 = a2;
  v64 = v21;
  v65 = v19;
  result = sub_2531BB1EC(&v67);
  if ((*(v20 + 32) & 0xC0) != 0x80)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v57 = v13;
  v58 = a5;
  v24 = v67;
  v25 = v68;
  v26 = *(v20 + 16);
  v27 = *(v26 + 16);
  v56 = v22;
  if (!v27 || (result = sub_25317DA10(v67, v68), (v28 & 1) == 0))
  {
    v55 = v24;
    v31 = sub_2531B53A0(MEMORY[0x277D84F90]);
    _s14ValueReferenceCMa();
    result = swift_allocObject();
    *(result + 16) = v31;
    *(result + 24) = 0;
    *(result + 32) = 0x80;
    v32 = *(v20 + 32);
    v30 = v66;
    if ((v32 & 0xC0) != 0x80)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v29 = result;
    v34 = *(v20 + 16);
    v33 = *(v20 + 24);
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = -64;

    sub_2531BEB9C(v34, v33, v32);
    sub_25317079C(v34, v33, v32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v67 = v34;
    sub_2531BDD70(v29, v55, v25, isUniquelyReferenced_nonNull_native);
    v36 = *(v20 + 16);
    v37 = *(v20 + 24);
    *(v20 + 16) = v67;
    *(v20 + 24) = 0;
    v38 = *(v20 + 32);
    *(v20 + 32) = 0x80;
    sub_25317079C(v36, v37, v38);
    goto LABEL_8;
  }

  v29 = *(*(v26 + 56) + 8 * result);
  v30 = v66;
  if ((*(v29 + 32) & 0xC0) == 0x80)
  {
    swift_retain_n();
LABEL_8:
    v39 = v62;
    v40 = v63;
    (*(v11 + 16))(v18, v61, v10);
    (*(v11 + 56))(v18, 0, 1, v10);
    (*(v39 + 16))(v30, v18, v40);
    if ((*(v11 + 48))(v30, 1, v10) == 1)
    {
      v41 = *(v39 + 8);
      v42 = v65;

      v41(v18, v40);
      v41(v30, v40);
      v43 = v64;

LABEL_16:
      v67 = v42;
      v68 = v29;
      v69 = v43;
      _s12ValueEncoderV14KeyedContainerVMa(0, v60, v58, v44);

      swift_getWitnessTable();
      sub_2531DAF14();
    }

    v45 = *(v11 + 32);
    v46 = v57;
    v45(v57, v30, v10);
    v43 = swift_allocObject();
    v47 = v56;
    v43[5] = v10;
    v43[6] = v47;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v43 + 2);
    v45(boxed_opaque_existential_0, v46, v10);
    v49 = *(v39 + 8);
    v42 = v65;

    v49(v18, v40);
    v50 = v64;
    v43[7] = v64;
    if (v50 >> 62)
    {
      if (v50 >> 62 != 1)
      {
        v53 = 1;
        goto LABEL_15;
      }

      v51 = ((v50 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v51 = v50 + 8;
    }

    v52 = *v51;

    v53 = v52 + 1;
    if (!__OFADD__(v52, 1))
    {
LABEL_15:
      v43[8] = v53;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2531BC784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(a2 + 16);
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2531DAAF4();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v47 - v14;
  v16 = *v3;
  v17 = v3[1];
  v18 = *(a2 + 24);
  v55 = v3[2];
  v56 = v16;
  result = sub_2531BB1EC(&v57);
  if ((*(v17 + 32) & 0xC0) != 0x80)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v50 = v9;
  v51 = a1;
  v49 = v18;
  v20 = v57;
  v21 = v58;
  v22 = *(v17 + 16);
  if (!*(v22 + 16) || (result = sub_25317DA10(v57, v58), (v23 & 1) == 0))
  {
    v28 = v13;
    v48 = a3;
    _s14ValueReferenceCMa();
    result = swift_allocObject();
    *(result + 16) = MEMORY[0x277D84F90];
    *(result + 24) = 0;
    *(result + 32) = 64;
    v29 = *(v17 + 32);
    if ((v29 & 0xC0) != 0x80)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v24 = result;
    v30 = *(v17 + 16);
    v31 = *(v17 + 24);
    *(v17 + 16) = 0;
    *(v17 + 24) = 0;
    *(v17 + 32) = -64;

    sub_2531BEB9C(v30, v31, v29);
    sub_25317079C(v30, v31, v29);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = v30;
    sub_2531BDD70(v24, v20, v21, isUniquelyReferenced_nonNull_native);
    v33 = *(v17 + 16);
    v34 = *(v17 + 24);
    *(v17 + 16) = v57;
    *(v17 + 24) = 0;
    v35 = *(v17 + 32);
    *(v17 + 32) = 0x80;
    sub_25317079C(v33, v34, v35);
    a3 = v48;
    v26 = v53;
    v25 = v54;
    v27 = v52;
    v13 = v28;
    goto LABEL_8;
  }

  v24 = *(*(v22 + 56) + 8 * result);
  if ((*(v24 + 32) & 0xC0) == 0x40)
  {
    swift_retain_n();
    v26 = v53;
    v25 = v54;
    v27 = v52;
LABEL_8:
    (*(v27 + 16))(v15, v51, v7);
    (*(v27 + 56))(v15, 0, 1, v7);
    (*(v26 + 16))(v13, v15, v25);
    if ((*(v27 + 48))(v13, 1, v7) == 1)
    {
      v36 = *(v26 + 8);

      v36(v15, v25);
      v36(v13, v25);
      v37 = v55;

LABEL_16:
      a3[3] = &_s12ValueEncoderV16UnkeyedContainerVN;
      a3[4] = sub_2531BD884();

      *a3 = v56;
      a3[1] = v24;
      a3[2] = v37;
      return result;
    }

    v38 = *(v27 + 32);
    v39 = v50;
    v38(v50, v13, v7);
    v37 = swift_allocObject();
    v40 = v49;
    v37[5] = v7;
    v37[6] = v40;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v37 + 2);
    v38(boxed_opaque_existential_0, v39, v7);
    v42 = *(v26 + 8);

    v42(v15, v25);
    v43 = v55;
    v37[7] = v55;
    if (v43 >> 62)
    {
      if (v43 >> 62 != 1)
      {
        v46 = 1;
        goto LABEL_15;
      }

      v44 = ((v43 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v44 = v43 + 8;
    }

    v45 = *v44;

    v46 = v45 + 1;
    if (!__OFADD__(v45, 1))
    {
LABEL_15:
      v37[8] = v46;
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2531BCC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s23ValueReferencingEncoderCMa();
  v12 = *v3;
  v13 = v3[1];
  v14 = *(a2 + 24);

  sub_2531BB1EC(&v20);
  v18 = v20;
  v19 = v21;
  v15 = *(v12 + 32);
  (*(v8 + 16))(v10, a1, v7);

  v16 = sub_2531BEBC0(v12, v10, &v18, v15, v13, v11, v7, v14);

  a3[3] = v11;
  result = sub_2531BEB54(qword_27F58DD98, _s23ValueReferencingEncoderCMa, &unk_2531E7CA4);
  a3[4] = result;
  *a3 = v16;
  return result;
}

BOOL sub_2531BD2B4()
{
  swift_beginAccess();
  v1 = v0[3];
  if (v1 >> 62)
  {
    v2 = sub_2531DAD44();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[4];

  v4 = sub_25316B2C4(v3);

  v5 = *(v4 + 16);

  v6 = *(v0[9] + 32);

  v7 = sub_25316B2C4(v6);

  v8 = *(v7 + 16);

  return v2 == v5 + ~v8;
}

uint64_t sub_2531BD394()
{
  j__swift_release(*(v0 + 48));
}

uint64_t sub_2531BD3C8()
{
  v4 = v0;
  swift_beginAccess();
  v7 = *(v0 + 24);
  v6 = (v0 + 24);
  v5 = v7;
  if (v7 >> 62)
  {
    v8 = sub_2531DAD44();
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
LABEL_15:

      j__swift_release(*(v4 + 48));

      return v4;
    }
  }

  if (v8 == 1)
  {
    swift_beginAccess();
    if (*v6 >> 62)
    {
      if (sub_2531DAD44())
      {
LABEL_6:
        v3 = sub_2531B7BC4();
        swift_endAccess();
        v1 = *(v4 + 48);
        v2 = *(v4 + 56);
        v9 = *(v4 + 64);
        if (v9 < 0)
        {
          v17 = *(v1 + 32);
          if ((v17 & 0xC0) == 0x80)
          {
            v19 = *(v1 + 16);
            v18 = *(v1 + 24);
            *(v1 + 16) = 0;
            *(v1 + 24) = 0;
            *(v1 + 32) = -64;
            j__swift_retain(v1);
            sub_2531BEB9C(v19, v18, v17);
            sub_25317079C(v19, v18, v17);
            sub_2531B6C20(v3, v2, v9 & 1);
            v13 = *(v1 + 16);
            v14 = *(v1 + 24);
            *(v1 + 16) = v19;
            *(v1 + 24) = 0;
            v15 = *(v1 + 32);
            v16 = 0x80;
            goto LABEL_14;
          }

          goto LABEL_24;
        }

        v10 = *(v1 + 16);
        v11 = *(v1 + 32);
        if ((v11 & 0xC0) != 0x40)
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }

        v12 = *(v1 + 24);
        v21 = *(v1 + 16);
        *(v1 + 16) = 0;
        *(v1 + 24) = 0;
        *(v1 + 32) = -64;
        j__swift_retain(v1);
        sub_2531BEB9C(v10, v12, v11);
        sub_25317079C(v10, v12, v11);
        if (!(v10 >> 62))
        {
          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v2)
          {
            goto LABEL_10;
          }

          goto LABEL_21;
        }

LABEL_20:
        if (sub_2531DAD44() >= v2)
        {
LABEL_10:
          if ((v2 & 0x8000000000000000) == 0)
          {
            sub_2531D4FF0(v2, v2, v3);

            v13 = *(v1 + 16);
            v14 = *(v1 + 24);
            *(v1 + 16) = v21;
            *(v1 + 24) = 0;
            v15 = *(v1 + 32);
            v16 = 64;
LABEL_14:
            *(v1 + 32) = v16;
            sub_25317079C(v13, v14, v15);
            j__swift_release(v1);
            goto LABEL_15;
          }

          goto LABEL_22;
        }

LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    else if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  result = sub_2531DAD34();
  __break(1u);
  return result;
}

uint64_t sub_2531BD698()
{
  sub_2531BD3C8();

  return swift_deallocClassInstance();
}

uint64_t sub_2531BD6F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 17))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = ((*(a1 + 16) >> 7) | (2 * ((*a1 >> 57) & 0x78 | *a1 & 7 | (((*(a1 + 16) >> 1) & 0x3F) << 7)))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_2531BD76C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = (v3 >> 6) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_2531BD7EC(uint64_t result, char a2)
{
  v2 = *(result + 16) & 1 | (a2 << 7);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 16) = v2;
  return result;
}

uint64_t sub_2531BD82C(uint64_t a1)
{
  result = sub_2531BEB54(&qword_27F58DD80, _s26ValueEncoderImplementationCMa, &unk_2531E7CA4);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2531BD884()
{
  result = qword_27F58DD90;
  if (!qword_27F58DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DD90);
  }

  return result;
}

uint64_t sub_2531BD8F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCE8, &unk_2531E7CF0);
  v37 = v4;
  result = sub_2531DAD64();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v21 = *(v5 + 56);
      v22 = *(v5 + 48) + 12 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v21 + 8 * v20);
      if ((v37 & 1) == 0)
      {
      }

      sub_2531DB3F4();
      v26 = __ROR8__(v23, 32);
      if (v24)
      {
        v27 = v23;
      }

      else
      {
        v27 = v26;
      }

      MEMORY[0x259BFF270](v27);
      result = sub_2531DB454();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 12 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(*(v7 + 56) + 8 * v15) = v25;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_2531BDBA8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2531DAB64() + 1) & ~v5;
    do
    {
      v9 = 12 * v6;
      v10 = *(a2 + 48) + 12 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      sub_2531DB3F4();
      v13 = __ROR8__(v11, 32);
      if (v12)
      {
        v14 = v11;
      }

      else
      {
        v14 = v13;
      }

      MEMORY[0x259BFF270](v14);
      result = sub_2531DB454();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v15)
      {
LABEL_13:
        v16 = *(a2 + 48);
        v17 = v16 + 12 * v3;
        v18 = (v16 + v9);
        if (12 * v3 < v9 || v17 >= v18 + 12 || v3 != v6)
        {
          v19 = *v18;
          *(v17 + 8) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2531BDD70(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_25317DA10(a2, a3 & 1);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_2531BD8F0(v16, a4 & 1);
      result = sub_25317DA10(a2, a3 & 1);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_2531DB364();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_2531BDEE4();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    v22 = v21[6] + 12 * result;
    *v22 = a2;
    *(v22 + 8) = a3 & 1;
    *(v21[7] + 8 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_15;
  }

  *(v21[7] + 8 * result) = a1;
}

void *sub_2531BDEE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DCE8, &unk_2531E7CF0);
  v2 = *v0;
  v3 = sub_2531DAD54();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 12 * v17;
        v19 = *v18;
        LOBYTE(v18) = *(v18 + 8);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 12 * v17;
        *v21 = v19;
        *(v21 + 8) = v18;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_2531BE058(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2531C80D4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_2531BE0C4(v5);
  *a1 = v2;
  return result;
}

char *sub_2531BE0C4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2531DAF24();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DD48, &qword_2531E73C8);
        v5 = sub_2531DA8E4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2531BE280(v7, v8, a1, v4);
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
    return sub_2531BE1CC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2531BE1CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 24 * a3 - 24;
    v6 = result - a3;
LABEL_5:
    v7 = (v4 + 24 * a3);
    v8 = *v7;
    v9 = __ROR8__(*v7, 32);
    v10 = *(v7 + 8);
    if (v10)
    {
      v9 = v8;
    }

    v11 = v6;
    v12 = v5;
    while (1)
    {
      result = *(v12 + 8);
      v13 = __ROR8__(*v12, 32);
      v14 = *v12;
      if (!*(v12 + 8))
      {
        v14 = v13;
      }

      if (v9 >= v14)
      {
LABEL_4:
        ++a3;
        v5 += 24;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v15 = *(v12 + 40);
      *(v12 + 24) = *v12;
      result = *(v12 + 16);
      *(v12 + 40) = result;
      *v12 = v8;
      *(v12 + 8) = v10;
      *(v12 + 16) = v15;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_2531BE280(unint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v5 = v4;
  v99 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_101:
    v7 = *v99;
    if (!*v99)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_133:
      result = sub_2531C80C0(v9);
      v9 = result;
    }

    v94 = *(v9 + 2);
    if (v94 >= 2)
    {
      while (*a3)
      {
        v95 = *&v9[16 * v94];
        v96 = *&v9[16 * v94 + 24];
        sub_2531BE8C8((*a3 + 24 * v95), (*a3 + 24 * *&v9[16 * v94 + 16]), *a3 + 24 * v96, v7);
        if (v5)
        {
        }

        if (v96 < v95)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2531C80C0(v9);
        }

        if (v94 - 2 >= *(v9 + 2))
        {
          goto LABEL_127;
        }

        v97 = &v9[16 * v94];
        *v97 = v95;
        *(v97 + 1) = v96;
        result = sub_2531C8034(v94 - 1);
        v94 = *(v9 + 2);
        if (v94 <= 1)
        {
        }
      }

      goto LABEL_137;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *a3 + 24 * v8;
      v12 = *v11;
      LODWORD(v13) = *(v11 + 8);
      v14 = 24 * v10;
      v15 = *a3 + 24 * v10;
      v16 = __ROR8__(v12, 32);
      if (v13)
      {
        v16 = v12;
      }

      v17 = __ROR8__(*v15, 32);
      v18 = *v15;
      if (!*(v15 + 8))
      {
        v18 = v17;
      }

      v19 = v10 + 2;
      v20 = (v15 + 56);
      while (v6 != v19)
      {
        v21 = __ROR8__(v12, 32);
        v22 = *(v20 - 1);
        v23 = *v20;
        v20 += 24;
        result = v23;
        v24 = __ROR8__(v22, 32);
        if (v23)
        {
          v24 = v22;
        }

        if (v13)
        {
          v13 = v12;
        }

        else
        {
          v13 = v21;
        }

        v25 = (v16 < v18) ^ (v24 >= v13);
        ++v19;
        LOBYTE(v13) = result;
        v12 = v22;
        if ((v25 & 1) == 0)
        {
          v8 = v19 - 1;
          if (v16 >= v18)
          {
            goto LABEL_29;
          }

          goto LABEL_20;
        }
      }

      v8 = v6;
      if (v16 >= v18)
      {
        goto LABEL_29;
      }

LABEL_20:
      if (v8 < v10)
      {
        goto LABEL_130;
      }

      if (v10 < v8)
      {
        v26 = 24 * v8 - 8;
        v27 = v8;
        v28 = v10;
        do
        {
          if (v28 != --v27)
          {
            v35 = *a3;
            if (!*a3)
            {
              goto LABEL_136;
            }

            v29 = (v35 + v14);
            v30 = (v35 + v26);
            v31 = *v29;
            v32 = *(v29 + 8);
            v33 = v29[2];
            v34 = *v30;
            *v29 = *(v30 - 1);
            v29[2] = v34;
            *(v30 - 2) = v31;
            *(v30 - 8) = v32;
            *v30 = v33;
          }

          ++v28;
          v26 -= 24;
          v14 += 24;
        }

        while (v28 < v27);
        v6 = a3[1];
      }
    }

LABEL_29:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_129;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_131;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_132:
          __break(1u);
          goto LABEL_133;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_50:
    if (v8 < v10)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25316A1C4(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v49 = *(v9 + 2);
    v48 = *(v9 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_25316A1C4((v48 > 1), v49 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v50;
    v51 = &v9[16 * v49];
    *(v51 + 4) = v10;
    *(v51 + 5) = v8;
    v52 = *v99;
    if (!*v99)
    {
      goto LABEL_138;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v9 + 4);
          v55 = *(v9 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_70:
          if (v57)
          {
            goto LABEL_117;
          }

          v70 = &v9[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_120;
          }

          v76 = &v9[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_124;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v80 = &v9[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_84:
        if (v75)
        {
          goto LABEL_119;
        }

        v83 = &v9[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_122;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_91:
        v7 = v53 - 1;
        if (v53 - 1 >= v50)
        {
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
          goto LABEL_132;
        }

        if (!*a3)
        {
          goto LABEL_135;
        }

        v91 = *&v9[16 * v7 + 32];
        v92 = *&v9[16 * v53 + 40];
        sub_2531BE8C8((*a3 + 24 * v91), (*a3 + 24 * *&v9[16 * v53 + 32]), *a3 + 24 * v92, v52);
        if (v5)
        {
        }

        if (v92 < v91)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2531C80C0(v9);
        }

        if (v7 >= *(v9 + 2))
        {
          goto LABEL_114;
        }

        v93 = &v9[16 * v7];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        result = sub_2531C8034(v53);
        v50 = *(v9 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v9[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_115;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_116;
      }

      v65 = &v9[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_118;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_121;
      }

      if (v69 >= v61)
      {
        v87 = &v9[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_125;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_101;
    }
  }

  v36 = *a3;
  v37 = *a3 + 24 * v8 - 24;
  v38 = v10 - v8;
LABEL_39:
  v39 = (v36 + 24 * v8);
  v40 = *v39;
  v41 = __ROR8__(*v39, 32);
  v42 = *(v39 + 8);
  if (v42)
  {
    v41 = v40;
  }

  v43 = v38;
  v44 = v37;
  while (1)
  {
    result = __ROR8__(*v44, 32);
    v45 = *v44;
    if (!*(v44 + 8))
    {
      v45 = result;
    }

    if (v41 >= v45)
    {
LABEL_38:
      ++v8;
      v37 += 24;
      --v38;
      if (v8 != v6)
      {
        goto LABEL_39;
      }

      v8 = v6;
      goto LABEL_50;
    }

    if (!v36)
    {
      break;
    }

    v46 = *(v44 + 40);
    *(v44 + 24) = *v44;
    *(v44 + 40) = *(v44 + 16);
    *v44 = v40;
    *(v44 + 8) = v42;
    *(v44 + 16) = v46;
    v44 -= 24;
    if (__CFADD__(v43++, 1))
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_2531BE8C8(char *__dst, char *__src, unint64_t a3, char *a4)
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
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v16 = __ROR8__(*v6, 32);
      v17 = *v6;
      if (!v6[8])
      {
        v17 = v16;
      }

      v18 = __ROR8__(*v4, 32);
      if (v4[8])
      {
        v18 = *v4;
      }

      if (v17 < v18)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v19 = v6 - 24;
    v5 -= 24;
    v20 = v12;
    do
    {
      v21 = *(v20 - 24);
      v20 -= 24;
      v22 = (v5 + 24);
      v23 = __ROR8__(v21, 32);
      v24 = v21;
      if (!*(v20 + 8))
      {
        v24 = v23;
      }

      v25 = __ROR8__(*(v6 - 3), 32);
      if (*(v6 - 16))
      {
        v25 = *(v6 - 3);
      }

      if (v24 < v25)
      {
        if (v22 != v6)
        {
          v27 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v27;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if (v22 != v12)
      {
        v26 = *v20;
        *(v5 + 16) = *(v20 + 16);
        *v5 = v26;
      }

      v5 -= 24;
      v12 = v20;
    }

    while (v20 > v4);
    v12 = v20;
  }

LABEL_39:
  v28 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v29 = (v28 >> 2) + (v28 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v29])
  {
    memmove(v6, v4, 24 * v29);
  }

  return 1;
}

uint64_t sub_2531BEB54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2531BEB9C(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if ((a3 >> 6) > 1u)
  {
    if (a3 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a3 >> 6))
  {
    return sub_25316D004(result, a2, a3);
  }
}

uint64_t sub_2531BEBC0(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a4;
  *&v52 = a7;
  *(&v52 + 1) = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v51);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_0, a2, a7);
  _s23ValueReferencingEncoderCMa();
  v14 = swift_allocObject();
  v15 = *a3;
  v16 = *(a3 + 8);
  v49 = a1;
  *(v14 + 72) = a1;
  *(v14 + 48) = a5;
  *(v14 + 56) = v15;
  *(v14 + 64) = v16 | 0x80;
  v47 = v52;
  v17 = v52;
  v48 = __swift_project_boxed_opaque_existential_1(v51, v52);
  v18 = sub_2531DAAF4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v17 - 8);
  (*(v22 + 16))(v21, v48, v17);
  v23 = (*(v22 + 56))(v21, 0, 1, v17);
  v24 = v18;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  (*(v19 + 16))(v21, v21, v18);
  if ((*(v22 + 48))(v21, 1, v17) == 1)
  {
    v28 = *(v19 + 8);
    v29 = v49;

    v28(v21, v18);
    v28(v21, v18);
    v30 = v50;
    v31 = v50 >> 62;
    v32 = v50;
    v33 = v29;
    if (v50 >> 62)
    {
LABEL_3:
      if (v31 != 1)
      {
        v42 = 0;
LABEL_14:
        swift_beginAccess();
        v46 = MEMORY[0x277D84F90];
        *(v14 + 16) = *(v33 + 16);
        *(v14 + 24) = v46;
        *(v14 + 32) = v32;
        *(v14 + 40) = v42;

        __swift_destroy_boxed_opaque_existential_1(v51);
        return v14;
      }

      v30 &= 0x3FFFFFFFFFFFFFFFuLL;
      v34 = 32;
LABEL_13:
      v42 = *(v30 + v34);
      goto LABEL_14;
    }

LABEL_12:
    v34 = 64;
    goto LABEL_13;
  }

  v35 = *(v22 + 32);
  v35(v27, v21, v17);
  v32 = swift_allocObject();
  *(v32 + 40) = v47;
  v36 = __swift_allocate_boxed_opaque_existential_0((v32 + 16));
  v35(v36, v27, v17);
  v37 = *(v19 + 8);
  v38 = v49;

  result = v37(v21, v24);
  v30 = v50;
  *(v32 + 56) = v50;
  v31 = v30 >> 62;
  v33 = v38;
  if (!(v30 >> 62))
  {
    v41 = 64;
    v40 = v30;
LABEL_10:
    v43 = *(v40 + v41);
    v44 = __OFADD__(v43, 1);
    v45 = v43 + 1;
    if (!v44)
    {
      goto LABEL_11;
    }

    goto LABEL_17;
  }

  if (v31 == 1)
  {
    v40 = v30 & 0x3FFFFFFFFFFFFFFFLL;
    v41 = 32;
    goto LABEL_10;
  }

  v45 = 1;
  if (!__OFSUB__(v31, 1))
  {
LABEL_11:
    *(v32 + 64) = v45;
    if (v31)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2531BEFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2531BF00C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2531BF054(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double static MTR.Cluster.RVCRunMode.attributePaths(endpoint:)(__int16 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1E8, &qword_2531E1490);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2531E53E0;
  *(v2 + 32) = v1;
  *(v2 + 36) = 0x100000054;
  *(v2 + 44) = v1;
  *&result = 84;
  *(v2 + 48) = 84;
  return result;
}

uint64_t sub_2531BF1B0@<X0>(uint64_t *a1@<X0>, unsigned __int16 *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = sub_25318AA74(*a2 | 0x5400000000, 1u, *a1, a1[1]);
  v5 = [v4 unsignedShortValue];

  return MTR.Cluster.RVCRunMode.RunModeType.init(rawValue:)(v5, a3);
}

double static MTR.Cluster.RVCRunMode.currentModeAttributePath(endpoint:)@<D0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *&result = 0x100000054;
  *(a2 + 4) = 0x100000054;
  return result;
}

uint64_t MTR.Cluster.RVCRunMode.label.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static MTR.Cluster.RVCRunMode.toRunModeType(from:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v3 = MEMORY[0x277D84F90];
LABEL_44:
    v9 = sub_2531C2D5C(v3, sub_2531C2F00, &type metadata for MTR.Cluster.RVCRunMode.RunModeType, sub_2531C0108);

    return v9;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_25317E5F0(v2, v13);
    sub_25317E5F0(v13, &v11);
    sub_2531BF79C();
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v13);
      goto LABEL_4;
    }

    v4 = [v10 value];
    v11 = 0;
    v12 = 1;
    sub_2531DAA14();

    result = __swift_destroy_boxed_opaque_existential_1(v13);
    if (v12)
    {
      goto LABEL_4;
    }

    if ((v11 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v11 >> 16)
    {
      goto LABEL_46;
    }

    if (v11 <= 5u)
    {
      if (v11 <= 2u)
      {
        if (v11)
        {
          if (v11 == 1)
          {
            v6 = 1;
          }

          else
          {
            v6 = 2;
          }
        }

        else
        {
          v6 = 0;
        }

        goto LABEL_38;
      }

      switch(v11)
      {
        case 3u:
          v6 = 3;
          goto LABEL_38;
        case 4u:
          v6 = 4;
          goto LABEL_38;
        case 5u:
          v6 = 5;
          goto LABEL_38;
      }
    }

    else if (v11 <= 8u)
    {
      switch(v11)
      {
        case 6u:
          v6 = 6;
          goto LABEL_38;
        case 7u:
          v6 = 7;
          goto LABEL_38;
        case 8u:
          v6 = 8;
          goto LABEL_38;
      }
    }

    else if (v11 > 0x4000u)
    {
      if (v11 == 16385)
      {
        v6 = 11;
        goto LABEL_38;
      }

      if (v11 == 16386)
      {
        v6 = 12;
        goto LABEL_38;
      }
    }

    else
    {
      if (v11 == 9)
      {
        v6 = 9;
        goto LABEL_38;
      }

      if (v11 == 0x4000)
      {
        v6 = 10;
LABEL_38:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_25316A648(0, *(v3 + 2) + 1, 1, v3);
        }

        v8 = *(v3 + 2);
        v7 = *(v3 + 3);
        if (v8 >= v7 >> 1)
        {
          v3 = sub_25316A648((v7 > 1), v8 + 1, 1, v3);
        }

        *(v3 + 2) = v8 + 1;
        v3[v8 + 32] = v6;
      }
    }

LABEL_4:
    v2 += 32;
    if (!--v1)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
  return result;
}

double static MTR.Cluster.RVCRunMode.supportedModesAttributePath(endpoint:)@<D0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *&result = 84;
  *(a2 + 4) = 84;
  return result;
}

uint64_t MTR.Cluster.RVCRunMode.RunModeType.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 5u)
  {
    goto LABEL_7;
  }

  if (result <= 8u)
  {
    if (result == 6 || result == 7 || result == 8)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (result <= 0x4000u)
    {
      if (result != 9)
      {
        if (result == 0x4000)
        {
          *a2 = 10;
          return result;
        }

        goto LABEL_16;
      }

LABEL_7:
      *a2 = result;
      return result;
    }

    if (result == 16385)
    {
      *a2 = 11;
      return result;
    }

    if (result == 16386)
    {
      *a2 = 12;
      return result;
    }
  }

LABEL_16:
  *a2 = 13;
  return result;
}

unint64_t sub_2531BF79C()
{
  result = qword_27F58DE20;
  if (!qword_27F58DE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F58DE20);
  }

  return result;
}

uint64_t static MTR.Cluster.RVCRunMode.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_2531DB144() & 1) == 0)
  {
    return 0;
  }

  return sub_25318DDC0(v2, v3);
}

uint64_t MTR.Cluster.RVCRunMode.hash(into:)(__int128 *a1)
{
  v3 = v1[3];
  MEMORY[0x259BFF230](*v1);
  sub_2531DA734();

  return sub_25318DDC8(a1, v3);
}

uint64_t MTR.Cluster.RVCRunMode.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[3];
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v1);
  sub_2531DA734();
  sub_25318DDC8(v4, v2);
  return sub_2531DB454();
}

uint64_t sub_2531BF958()
{
  v1 = *v0;
  v2 = v0[3];
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v1);
  sub_2531DA734();
  sub_25318DDC8(v4, v2);
  return sub_2531DB454();
}

uint64_t sub_2531BF9D0(__int128 *a1)
{
  v3 = v1[3];
  MEMORY[0x259BFF230](*v1);
  sub_2531DA734();

  return sub_25318DDC8(a1, v3);
}

uint64_t sub_2531BFA38(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[3];
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v2);
  sub_2531DA734();
  sub_25318DDC8(v5, v3);
  return sub_2531DB454();
}

uint64_t sub_2531BFAAC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a2[3];
  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (sub_2531DB144() & 1) == 0)
  {
    return 0;
  }

  return sub_25318DDC0(v2, v3);
}

uint64_t sub_2531BFB88()
{
  sub_2531DB3F4();
  sub_2531DB424();
  return sub_2531DB454();
}

uint64_t sub_2531BFC10(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DB424();
  return sub_2531DB454();
}

uint64_t sub_2531BFD0C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_2531DB3F4();
  v6 = word_2531E7FEA[a2];
  sub_2531DB424();
  v7 = sub_2531DB454();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (word_2531E7FEA[*(*(v5 + 48) + v9)] != v6)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_2531C0FF0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2531BFE24(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_2531DB3F4();
  sub_2531DB434();
  v6 = sub_2531DB454();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2531C1398(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2531BFF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t), uint64_t (*a8)(uint64_t, uint64_t))
{
  v15 = *v8;
  sub_2531DB3F4();
  MEMORY[0x259BFF230](a2);
  sub_2531DA734();
  a6(v31, a5);
  v16 = sub_2531DB454();
  v17 = -1 << *(v15 + 32);
  v18 = v16 & ~v17;
  if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    while (1)
    {
      v20 = (*(v15 + 48) + 32 * v18);
      if (*v20 == a2)
      {
        v21 = v20[3];
        v22 = v20[1] == a3 && v20[2] == a4;
        if (v22 || (sub_2531DB144()) && (a8(v21, a5))
        {
          break;
        }
      }

      v18 = (v18 + 1) & v19;
      if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v25 = *(v15 + 48) + 32 * v18;
    v26 = *(v25 + 16);
    v27 = *(v25 + 24);
    *a1 = *v25;
    *(a1 + 16) = v26;
    *(a1 + 24) = v27;

    return 0;
  }

  else
  {
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31[0] = *v29;

    a7(a2, a3, a4, a5, v18, isUniquelyReferenced_nonNull_native);
    *v29 = v31[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    *(a1 + 24) = a5;
    return 1;
  }
}

uint64_t sub_2531C0108(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_2531DB3F4();
  v6 = word_2531E7FEA[a2];
  sub_2531DB424();
  v7 = sub_2531DB454();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (word_2531E7FEA[*(*(v5 + 48) + v9)] != v6)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_2531C1710(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_2531C0220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  sub_2531DB3F4();
  v23 = a2;
  v9 = 0x42414003020100uLL >> (8 * a2);
  sub_2531DB414();
  sub_2531DB414();
  if (a4)
  {
    sub_2531DA734();
  }

  v10 = sub_2531DB454();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v24;

    sub_2531C188C(v23, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v24 = v26;
    *a1 = v23;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v13 = ~v11;
  v14 = *(v8 + 48);
  while (1)
  {
    v15 = v14 + 24 * v12;
    if ((0x42414003020100uLL >> (8 * *v15)) != v9)
    {
      goto LABEL_6;
    }

    v16 = *(v15 + 16);
    if (v16)
    {
      break;
    }

    if (!a4)
    {
      goto LABEL_17;
    }

LABEL_6:
    v12 = (v12 + 1) & v13;
    if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a4)
  {
    goto LABEL_6;
  }

  v17 = *(v15 + 8) == a3 && v16 == a4;
  if (!v17 && (sub_2531DB144() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_17:

  v20 = *(v8 + 48) + 24 * v12;
  v22 = *(v20 + 8);
  v21 = *(v20 + 16);
  *a1 = *v20;
  *(a1 + 8) = v22;
  *(a1 + 16) = v21;

  return 0;
}

uint64_t sub_2531C0418(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D988, &qword_2531E5608);
  result = sub_2531DAB94();
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_2531DB3F4();
      sub_2531DB424();
      result = sub_2531DB454();
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
      *(*(v5 + 48) + v13) = v17;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2531C0674(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE78, &qword_2531E7FD8);
  result = sub_2531DAB94();
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
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      sub_2531DB3F4();
      sub_2531DB434();
      result = sub_2531DB454();
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
      *(*(v5 + 48) + 4 * v13) = v17;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2531C08C4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *, uint64_t))
{
  v5 = v4;
  v6 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2531DAB94();
  v8 = result;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v25 = result + 56;
    for (i = v6; v13; ++*(v8 + 16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v18 = (*(v6 + 48) + 32 * (v15 | (v9 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v22 = v18[2];
      v21 = v18[3];
      sub_2531DB3F4();
      MEMORY[0x259BFF230](v19);
      sub_2531DA734();
      a4(v28, v21);
      sub_2531DB454();
      result = sub_2531DAB74();
      *(v25 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v23 = (*(v8 + 48) + 32 * result);
      *v23 = v19;
      v23[1] = v20;
      v6 = i;
      v23[2] = v22;
      v23[3] = v21;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v14)
      {
        break;
      }

      v17 = v10[v9];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v24 = 1 << *(v6 + 32);
    if (v24 >= 64)
    {
      bzero(v10, ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v24;
    }

    v5 = v4;
    *(v6 + 16) = 0;
  }

  *v5 = v8;
  return result;
}

uint64_t sub_2531C0AE4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE48, &qword_2531E7FC0);
  result = sub_2531DAB94();
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_2531DB3F4();
      sub_2531DB424();
      result = sub_2531DB454();
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
      *(*(v5 + 48) + v13) = v17;
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2531C0D40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE58, &qword_2531E7FC8);
  result = sub_2531DAB94();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v21 = *(v18 + 8);
      v20 = *(v18 + 16);
      sub_2531DB3F4();
      sub_2531DB414();
      sub_2531DB414();
      if (v20)
      {
        sub_2531DA734();
      }

      result = sub_2531DB454();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v21;
      *(v14 + 16) = v20;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2531C0FF0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2531C0418(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2531C1D38(&qword_27F58D988, &qword_2531E5608);
      a2 = v7;
      goto LABEL_12;
    }

    sub_2531C1FD0(v5 + 1);
  }

  v8 = *v3;
  sub_2531DB3F4();
  v9 = word_2531E7FEA[v4];
  sub_2531DB424();
  result = sub_2531DB454();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (word_2531E7FEA[*(*(v8 + 48) + a2)] != v9)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2531DB354();
  __break(1u);
  return result;
}

uint64_t sub_2531C116C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v12 = result;
  v13 = *(*v6 + 16);
  v14 = *(*v6 + 24);
  if (v14 > v13 && (a6 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a6)
  {
    sub_2531C08C4(v13 + 1, &qword_27F58DE88, &qword_2531E7FE0, sub_25318DDC8);
  }

  else
  {
    if (v14 > v13)
    {
      result = sub_2531C1BDC(&qword_27F58DE88, &qword_2531E7FE0);
      goto LABEL_19;
    }

    sub_2531C241C(v13 + 1, &qword_27F58DE88, &qword_2531E7FE0, sub_25318DDC8);
  }

  v15 = *v6;
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v12);
  sub_2531DA734();
  sub_25318DDC8(v26, a4);
  result = sub_2531DB454();
  v16 = -1 << *(v15 + 32);
  a5 = result & ~v16;
  if ((*(v15 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    do
    {
      v18 = (*(v15 + 48) + 32 * a5);
      if (*v18 == v12)
      {
        v19 = v18[3];
        v20 = v18[1] == a2 && v18[2] == a3;
        if (v20 || (result = sub_2531DB144(), (result & 1) != 0))
        {
          result = sub_25318DDC0(v19, a4);
          if (result)
          {
            goto LABEL_22;
          }
        }
      }

      a5 = (a5 + 1) & v17;
    }

    while (((*(v15 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_19:
  v21 = *v7;
  *(*v7 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v22 = (*(v21 + 48) + 32 * a5);
  *v22 = v12;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_22:
  result = sub_2531DB354();
  __break(1u);
  return result;
}

uint64_t sub_2531C1398(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2531C0674(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2531C1A9C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_2531C21FC(v5 + 1);
  }

  v8 = *v3;
  sub_2531DB3F4();
  sub_2531DB434();
  result = sub_2531DB454();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2531DB354();
  __break(1u);
  return result;
}

uint64_t sub_2531C14E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v12 = result;
  v13 = *(*v6 + 16);
  v14 = *(*v6 + 24);
  if (v14 > v13 && (a6 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a6)
  {
    sub_2531C08C4(v13 + 1, &qword_27F58DE68, &qword_2531E7FD0, sub_25318DDC8);
  }

  else
  {
    if (v14 > v13)
    {
      result = sub_2531C1BDC(&qword_27F58DE68, &qword_2531E7FD0);
      goto LABEL_19;
    }

    sub_2531C241C(v13 + 1, &qword_27F58DE68, &qword_2531E7FD0, sub_25318DDC8);
  }

  v15 = *v6;
  sub_2531DB3F4();
  MEMORY[0x259BFF230](v12);
  sub_2531DA734();
  sub_25318DDC8(v26, a4);
  result = sub_2531DB454();
  v16 = -1 << *(v15 + 32);
  a5 = result & ~v16;
  if ((*(v15 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    do
    {
      v18 = (*(v15 + 48) + 32 * a5);
      if (*v18 == v12)
      {
        v19 = v18[3];
        v20 = v18[1] == a2 && v18[2] == a3;
        if (v20 || (result = sub_2531DB144(), (result & 1) != 0))
        {
          result = sub_25318DDC0(v19, a4);
          if (result)
          {
            goto LABEL_22;
          }
        }
      }

      a5 = (a5 + 1) & v17;
    }

    while (((*(v15 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_19:
  v21 = *v7;
  *(*v7 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v22 = (*(v21 + 48) + 32 * a5);
  *v22 = v12;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_22:
  result = sub_2531DB354();
  __break(1u);
  return result;
}

uint64_t sub_2531C1710(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2531C0AE4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_2531C1D38(&qword_27F58DE48, &qword_2531E7FC0);
      a2 = v7;
      goto LABEL_12;
    }

    sub_2531C2610(v5 + 1);
  }

  v8 = *v3;
  sub_2531DB3F4();
  v9 = word_2531E7FEA[v4];
  sub_2531DB424();
  result = sub_2531DB454();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (word_2531E7FEA[*(*(v8 + 48) + a2)] != v9)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2531DB354();
  __break(1u);
  return result;
}

uint64_t sub_2531C188C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  v26 = result;
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a5)
  {
    sub_2531C0D40(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_2531C1E68();
      goto LABEL_23;
    }

    sub_2531C283C(v11 + 1);
  }

  v13 = *v5;
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  if (a3)
  {
    sub_2531DA734();
  }

  result = sub_2531DB454();
  v14 = v13 + 56;
  v15 = -1 << *(v13 + 32);
  a4 = result & ~v15;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v16 = ~v15;
    v17 = *(v13 + 48);
    do
    {
      v18 = v17 + 24 * a4;
      if ((0x42414003020100uLL >> (8 * *v18)) == (0x42414003020100uLL >> (8 * v10)))
      {
        v19 = *(v18 + 16);
        if (v19)
        {
          if (a3)
          {
            v20 = *(v18 + 8) == a2 && v19 == a3;
            if (v20 || (result = sub_2531DB144(), (result & 1) != 0))
            {
LABEL_22:
              result = sub_2531DB354();
              __break(1u);
              break;
            }
          }
        }

        else if (!a3)
        {
          goto LABEL_22;
        }
      }

      a4 = (a4 + 1) & v16;
    }

    while (((*(v14 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_23:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = v26;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

void *sub_2531C1A9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE78, &qword_2531E7FD8);
  v2 = *v0;
  v3 = sub_2531DAB84();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

void *sub_2531C1BDC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2531DAB84();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 32 * (v16 | (v10 << 6));
        v20 = *(v4 + 48) + v19;
        v21 = *(v20 + 16);
        v22 = *(v20 + 24);
        v23 = *(v6 + 48) + v19;
        *v23 = *v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2531C1D38(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2531DAB84();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_2531C1E68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE58, &qword_2531E7FC8);
  v2 = *v0;
  v3 = sub_2531DAB84();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v19;
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

uint64_t sub_2531C1FD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D988, &qword_2531E5608);
  result = sub_2531DAB94();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_2531DB3F4();
      sub_2531DB424();
      result = sub_2531DB454();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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

        v2 = v1;
        goto LABEL_26;
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

uint64_t sub_2531C21FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE78, &qword_2531E7FD8);
  result = sub_2531DAB94();
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
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      sub_2531DB3F4();
      sub_2531DB434();
      result = sub_2531DB454();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
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

        v2 = v1;
        goto LABEL_26;
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

unint64_t sub_2531C241C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void *, uint64_t))
{
  v5 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_2531DAB94();
  v7 = result;
  v26 = v5;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = v5 + 56;
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
    for (i = result + 56; v12; ++*(v7 + 16))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v17 = (*(v26 + 48) + 32 * (v14 | (v8 << 6)));
      v18 = *v17;
      v19 = v17[1];
      v20 = v17[2];
      v21 = v17[3];
      sub_2531DB3F4();
      MEMORY[0x259BFF230](v18);

      sub_2531DA734();
      a4(v27, v21);
      sub_2531DB454();
      result = sub_2531DAB74();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v22 = (*(v7 + 48) + 32 * result);
      *v22 = v18;
      v22[1] = v19;
      v22[2] = v20;
      v22[3] = v21;
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
        goto LABEL_14;
      }

      v16 = *(v9 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:

    *v23 = v7;
  }

  return result;
}

uint64_t sub_2531C2610(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE48, &qword_2531E7FC0);
  result = sub_2531DAB94();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_2531DB3F4();
      sub_2531DB424();
      result = sub_2531DB454();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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

        v2 = v1;
        goto LABEL_26;
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

uint64_t sub_2531C283C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DE58, &qword_2531E7FC8);
  result = sub_2531DAB94();
  v5 = result;
  if (*(v3 + 16))
  {
    v29 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v21 = *(v18 + 8);
      v20 = *(v18 + 16);
      sub_2531DB3F4();
      sub_2531DB414();
      sub_2531DB414();
      if (v20)
      {

        sub_2531DA734();
      }

      result = sub_2531DB454();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v21;
      *(v14 + 16) = v20;
      ++*(v5 + 16);
      v3 = v29;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_28;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2531C2AF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2531C3708();
  result = MEMORY[0x259BFE820](v2, &type metadata for MTR.Cluster.RVCCleanMode, v3);
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

      sub_2531BFF1C(v10, v9, v8, v7, v6, sub_25318DDC8, sub_2531C116C, sub_25318DDC0);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_2531C2BF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2531C36B4();
  result = MEMORY[0x259BFE820](v2, &type metadata for MTR.Cluster.ID, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_2531BFE24(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_2531C2C64(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2531C3660();
  result = MEMORY[0x259BFE820](v2, &type metadata for MTR.Cluster.RVCRunMode, v3);
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

      sub_2531BFF1C(v10, v9, v8, v7, v6, sub_25318DDC8, sub_2531C14E4, sub_25318DDC0);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_2531C2D5C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x259BFE820](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

unint64_t sub_2531C2DE0()
{
  result = qword_27F58DE28;
  if (!qword_27F58DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE28);
  }

  return result;
}

unint64_t sub_2531C2E38()
{
  result = qword_27F58DE30;
  if (!qword_27F58DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE30);
  }

  return result;
}

unint64_t sub_2531C2EAC()
{
  result = qword_27F58DE38;
  if (!qword_27F58DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE38);
  }

  return result;
}

unint64_t sub_2531C2F00()
{
  result = qword_27F58DE40;
  if (!qword_27F58DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE40);
  }

  return result;
}

uint64_t sub_2531C2F54(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_2531C2FF4();
  result = MEMORY[0x259BFE820](v2, &type metadata for MTR.Cluster.RVCOperationalState, v3);
  v10 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = *(v5 - 16);

      sub_2531C0220(&v9, v8, v7, v6);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_2531C2FF4()
{
  result = qword_27F58DE50;
  if (!qword_27F58DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE50);
  }

  return result;
}

uint64_t sub_2531C3048(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = 0;
  v3 = sub_25318B178(*a2 | 0x5400000000, 0, *a1, a1[1]);
  if (!(v3 >> 62))
  {
    v12 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v42 = v3;
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_72:
    v14 = MEMORY[0x277D84F90];
LABEL_73:

    v41 = sub_2531C2C64(v14);

    return v41;
  }

  v40 = v3;
  v12 = sub_2531DAD44();
  v3 = v40;
  v42 = v40;
  if (!v12)
  {
    goto LABEL_72;
  }

LABEL_6:
  v13 = 0;
  v45 = v3 & 0xFFFFFFFFFFFFFF8;
  v46 = v3 & 0xC000000000000001;
  v44 = v3 + 32;
  v14 = MEMORY[0x277D84F90];
  v43 = v12;
  while (1)
  {
    if (v46)
    {
      v15 = MEMORY[0x259BFEA20](v13, v42);
    }

    else
    {
      if (v13 >= *(v45 + 16))
      {
        goto LABEL_70;
      }

      v15 = *(v44 + 8 * v13);
    }

    v16 = v15;
    if (__OFADD__(v13++, 1))
    {
      goto LABEL_69;
    }

    v50 = v14;
    v18 = [v15 mode];
    v49 = [v18 unsignedIntegerValue];

    v19 = [v16 label];
    v20 = sub_2531DA6D4();
    v47 = v21;
    v48 = v20;

    v22 = [v16 modeTags];
    v23 = sub_2531DA8A4();

    v24 = *(v23 + 16);
    if (v24)
    {
      break;
    }

    v26 = MEMORY[0x277D84F90];
LABEL_55:
    v31 = *(v26 + 2);
    v32 = sub_2531C2F00();
    v54[0] = MEMORY[0x259BFE820](v31, &type metadata for MTR.Cluster.RVCRunMode.RunModeType, v32);
    v33 = *(v26 + 2);
    if (v33)
    {
      v34 = (v26 + 32);
      do
      {
        v35 = *v34++;
        sub_2531C0108(&v52, v35);
        --v33;
      }

      while (v33);
    }

    v36 = v54[0];
    v14 = v50;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_25316A520(0, *(v50 + 2) + 1, 1, v50);
    }

    v2 = *(v14 + 2);
    v37 = *(v14 + 3);
    if (v2 >= v37 >> 1)
    {
      v14 = sub_25316A520((v37 > 1), v2 + 1, 1, v14);
    }

    *(v14 + 2) = v2 + 1;
    v38 = &v14[32 * v2];
    *(v38 + 4) = v49;
    *(v38 + 5) = v48;
    *(v38 + 6) = v47;
    *(v38 + 7) = v36;
    if (v13 == v43)
    {
      goto LABEL_73;
    }
  }

  v25 = v23 + 32;
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_25317E5F0(v25, v54);
    sub_25317E5F0(v54, &v52);
    sub_2531BF79C();
    if (!swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v54);
      goto LABEL_14;
    }

    v2 = v51;
    v27 = [v51 value];
    v52 = 0;
    v53 = 1;
    sub_2531DAA14();

    __swift_destroy_boxed_opaque_existential_1(v54);
    if (v53)
    {
      goto LABEL_14;
    }

    if ((v52 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v52 >> 16)
    {
      goto LABEL_68;
    }

    if (v52 <= 5u)
    {
      if (v52 <= 2u)
      {
        if (v52)
        {
          if (v52 == 1)
          {
            v28 = 1;
          }

          else
          {
            v28 = 2;
          }
        }

        else
        {
          v28 = 0;
        }

        goto LABEL_48;
      }

      switch(v52)
      {
        case 3u:
          v28 = 3;
          goto LABEL_48;
        case 4u:
          v28 = 4;
          goto LABEL_48;
        case 5u:
          v28 = 5;
          goto LABEL_48;
      }
    }

    else if (v52 <= 8u)
    {
      switch(v52)
      {
        case 6u:
          v28 = 6;
          goto LABEL_48;
        case 7u:
          v28 = 7;
          goto LABEL_48;
        case 8u:
          v28 = 8;
          goto LABEL_48;
      }
    }

    else if (v52 > 0x4000u)
    {
      if (v52 == 16385)
      {
        v28 = 11;
        goto LABEL_48;
      }

      if (v52 == 16386)
      {
        v28 = 12;
        goto LABEL_48;
      }
    }

    else
    {
      if (v52 == 9)
      {
        v28 = 9;
        goto LABEL_48;
      }

      if (v52 == 0x4000)
      {
        v28 = 10;
LABEL_48:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_25316A648(0, *(v26 + 2) + 1, 1, v26);
        }

        v30 = *(v26 + 2);
        v29 = *(v26 + 3);
        if (v30 >= v29 >> 1)
        {
          v26 = sub_25316A648((v29 > 1), v30 + 1, 1, v26);
        }

        *(v26 + 2) = v30 + 1;
        v26[v30 + 32] = v28;
      }
    }

LABEL_14:
    v25 += 32;
    if (!--v24)
    {

      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  swift_once();
  v4 = sub_2531DA274();
  __swift_project_value_buffer(v4, qword_27F59A2A8);
  v5 = v2;
  v6 = sub_2531DA254();
  v7 = sub_2531DAA84();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_253166000, v6, v7, "Error occurred while parsing run mode response: %@", v8, 0xCu);
    sub_25316FD44(v9);
    MEMORY[0x259BFFA80](v9, -1, -1);
    MEMORY[0x259BFFA80](v8, -1, -1);
  }

  else
  {
  }

  return 0;
}

unint64_t sub_2531C3660()
{
  result = qword_27F58DE60;
  if (!qword_27F58DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE60);
  }

  return result;
}

unint64_t sub_2531C36B4()
{
  result = qword_27F58DE70;
  if (!qword_27F58DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE70);
  }

  return result;
}

unint64_t sub_2531C3708()
{
  result = qword_27F58DE80;
  if (!qword_27F58DE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE80);
  }

  return result;
}

unint64_t sub_2531C375C()
{
  result = qword_27F58DE90;
  if (!qword_27F58DE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE90);
  }

  return result;
}

uint64_t sub_2531C37FC(uint64_t *a1, unsigned __int16 *a2, uint64_t (*a3)(id), const char *a4, ...)
{
  v4 = sub_25318AA74(*a2 | 0x6100000000, 4u, *a1, a1[1]);
  v5 = [v4 unsignedCharValue];

  return a3(v5);
}

double static MTR.Cluster.RVCOperationalState.operationalStateMatterPath(endpoint:)@<D0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *&result = 0x400000061;
  *(a2 + 4) = 0x400000061;
  return result;
}

uint64_t MTR.Cluster.RVCOperationalState.operationalStateLabel.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t static MTR.Cluster.RVCOperationalState.toOperationalStateType(from:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (result > 0xFF)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (result <= 0x3Fu)
  {
    if (result < 4u)
    {
      *a2 = result;
      return result;
    }

LABEL_11:
    result = 3;
    *a2 = 3;
    return result;
  }

  if (result == 66)
  {
    result = 6;
    *a2 = 6;
    return result;
  }

  if (result != 65)
  {
    if (result == 64)
    {
      result = 4;
      *a2 = 4;
      return result;
    }

    goto LABEL_11;
  }

  result = 5;
  *a2 = 5;
  return result;
}

double static MTR.Cluster.RVCOperationalState.operationalStateListMatterPath(endpoint:)@<D0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *&result = 0x300000061;
  *(a2 + 4) = 0x300000061;
  return result;
}

uint64_t MTR.Cluster.RVCOperationalState.OperationalStateType.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 0x3Fu)
  {
    if (result < 4u)
    {
      *a2 = result;
      return result;
    }

LABEL_9:
    result = 7;
    *a2 = 7;
    return result;
  }

  if (result == 66)
  {
    result = 6;
    *a2 = 6;
    return result;
  }

  if (result != 65)
  {
    if (result == 64)
    {
      result = 4;
      *a2 = 4;
      return result;
    }

    goto LABEL_9;
  }

  result = 5;
  *a2 = 5;
  return result;
}

uint64_t MTR.Cluster.RVCOperationalState.OperationalErrorStateType.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 0x41u)
  {
    if (result > 0x44u)
    {
      switch(result)
      {
        case 'E':
          result = 9;
          *a2 = 9;
          return result;
        case 'F':
          result = 10;
          *a2 = 10;
          return result;
        case 'G':
          result = 11;
          *a2 = 11;
          return result;
      }
    }

    else
    {
      switch(result)
      {
        case 'B':
          result = 6;
          *a2 = 6;
          return result;
        case 'C':
          result = 7;
          *a2 = 7;
          return result;
        case 'D':
          result = 8;
          *a2 = 8;
          return result;
      }
    }
  }

  else
  {
    if (result < 4u)
    {
      *a2 = result;
      return result;
    }

    if (result == 64)
    {
      result = 4;
      *a2 = 4;
      return result;
    }

    if (result == 65)
    {
      result = 5;
      *a2 = 5;
      return result;
    }
  }

  result = 12;
  *a2 = 12;
  return result;
}

double static MTR.Cluster.RVCOperationalState.operationalStateErrorMatterPath(endpoint:)@<D0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *&result = 0x500000061;
  *(a2 + 4) = 0x500000061;
  return result;
}

uint64_t static MTR.Cluster.RVCOperationalState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((0x42414003020100uLL >> (8 * *a1)) == (0x42414003020100uLL >> (8 * *a2)))
  {
    v2 = *(a1 + 16);
    v3 = *(a2 + 16);
    if (v2)
    {
      if (v3)
      {
        if (*(a1 + 8) == *(a2 + 8) && v2 == v3)
        {
          return 1;
        }

        if (sub_2531DB144())
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MTR.Cluster.RVCOperationalState.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2531DB414();
  if (!v2)
  {
    return sub_2531DB414();
  }

  sub_2531DB414();

  return sub_2531DA734();
}

uint64_t MTR.Cluster.RVCOperationalState.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  if (v1)
  {
    sub_2531DA734();
  }

  return sub_2531DB454();
}

uint64_t sub_2531C3DF4()
{
  v1 = *(v0 + 16);
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  if (v1)
  {
    sub_2531DA734();
  }

  return sub_2531DB454();
}

uint64_t sub_2531C3E88(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2531DB414();
  if (!v2)
  {
    return sub_2531DB414();
  }

  sub_2531DB414();

  return sub_2531DA734();
}

uint64_t sub_2531C3F18(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_2531DB3F4();
  sub_2531DB414();
  sub_2531DB414();
  if (v2)
  {
    sub_2531DA734();
  }

  return sub_2531DB454();
}

uint64_t sub_2531C3FA8(uint64_t a1, uint64_t a2)
{
  if ((0x42414003020100uLL >> (8 * *a1)) == (0x42414003020100uLL >> (8 * *a2)))
  {
    v2 = *(a1 + 16);
    v3 = *(a2 + 16);
    if (v2)
    {
      if (v3 && (*(a1 + 8) == *(a2 + 8) && v2 == v3 || (sub_2531DB144() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_2531C40C8()
{
  sub_2531DB3F4();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t sub_2531C4168(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t sub_2531C42C8()
{
  sub_2531DB3F4();
  sub_2531DB414();
  return sub_2531DB454();
}

uint64_t sub_2531C4350(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DB414();
  return sub_2531DB454();
}

unint64_t static MTR.Cluster.RVCOperationalState.toOperationalErrorStateType(from:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result > 0xFF)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = v2;
  v8 = v3;
  result = MTR.Cluster.RVCOperationalState.OperationalErrorStateType.init(rawValue:)(result, &v6);
  v5 = v6;
  if (v6 == 12)
  {
    v5 = 5;
  }

  *a2 = v5;
  return result;
}

double _s23HomeKitDaemonFoundation3MTRO7ClusterO19RVCOperationalStateV14attributePaths8endpointSayAC9AttributeO4PathVGAC8EndpointO2IDV_tFZ_0(__int16 *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D1E8, &qword_2531E1490);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2531E8020;
  *(v2 + 32) = v1;
  *(v2 + 36) = 0x300000061;
  *(v2 + 44) = v1;
  *(v2 + 48) = 0x400000061;
  *(v2 + 56) = v1;
  *&result = 0x500000061;
  *(v2 + 60) = 0x500000061;
  return result;
}

unint64_t sub_2531C4524()
{
  result = qword_27F58DE98;
  if (!qword_27F58DE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DE98);
  }

  return result;
}

unint64_t sub_2531C457C()
{
  result = qword_27F58DEA0;
  if (!qword_27F58DEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DEA0);
  }

  return result;
}

unint64_t sub_2531C45D4()
{
  result = qword_27F58DEA8;
  if (!qword_27F58DEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DEA8);
  }

  return result;
}

uint64_t sub_2531C4628(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_2531C4684(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t _s19RVCOperationalStateV25OperationalErrorStateTypeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s19RVCOperationalStateV25OperationalErrorStateTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2531C4848()
{
  result = qword_27F58DEB0;
  if (!qword_27F58DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DEB0);
  }

  return result;
}

unint64_t sub_2531C489C()
{
  result = qword_27F58DEB8;
  if (!qword_27F58DEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DEB8);
  }

  return result;
}

uint64_t sub_2531C48F0(uint64_t *a1, unsigned __int16 *a2)
{
  v2 = sub_25318B1A0(*a2 | 0x6100000000, 3, *a1, a1[1]);
  v11 = v2;
  if (v2 >> 62)
  {
    v12 = sub_2531DAD44();
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_40:
    v14 = MEMORY[0x277D84F90];
LABEL_41:

    v31 = sub_2531C2F54(v14);

    return v31;
  }

  v12 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_40;
  }

LABEL_6:
  v13 = 0;
  v14 = MEMORY[0x277D84F90];
  v15 = 0x279719000uLL;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x259BFEA20](v13, v11);
    }

    else
    {
      if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v16 = *(v11 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    v19 = [v16 operationalStateID];
    v20 = [v19 unsignedIntegerValue];

    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_37;
    }

    if (v20 > 0xFF)
    {
      goto LABEL_38;
    }

    if (v20 <= 0x3Fu)
    {
      if (v20 < 4u)
      {
        goto LABEL_15;
      }

LABEL_30:
      LOBYTE(v20) = 3;
      goto LABEL_15;
    }

    if (v20 == 66)
    {
      LOBYTE(v20) = 6;
      goto LABEL_15;
    }

    if (v20 != 65)
    {
      if (v20 == 64)
      {
        LOBYTE(v20) = 4;
        goto LABEL_15;
      }

      goto LABEL_30;
    }

    LOBYTE(v20) = 5;
LABEL_15:
    v21 = [v17 *(v15 + 4056)];
    if (v21 && (v21, (v22 = [v17 *(v15 + 4056)]) != 0))
    {
      v23 = v22;
      v24 = sub_2531DA6D4();
      v26 = v25;
    }

    else
    {

      v24 = 0;
      v26 = 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_25316A748(0, *(v14 + 2) + 1, 1, v14);
    }

    v28 = *(v14 + 2);
    v27 = *(v14 + 3);
    if (v28 >= v27 >> 1)
    {
      v14 = sub_25316A748((v27 > 1), v28 + 1, 1, v14);
    }

    *(v14 + 2) = v28 + 1;
    v29 = &v14[24 * v28];
    v29[32] = v20;
    *(v29 + 5) = v24;
    *(v29 + 6) = v26;
    ++v13;
    v15 = 0x279719000;
    if (v18 == v12)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  swift_once();
  v3 = sub_2531DA274();
  __swift_project_value_buffer(v3, qword_27F59A2A8);
  v4 = v14;
  v5 = sub_2531DA254();
  v6 = sub_2531DAA84();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v14;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_253166000, v5, v6, "Error parsing operational state read response: %@", v7, 0xCu);
    sub_25316FD44(v8);
    MEMORY[0x259BFFA80](v8, -1, -1);
    MEMORY[0x259BFFA80](v7, -1, -1);
  }

  else
  {
  }

  return 0;
}

_WORD *MTR.Command.Path.init(_:_:_:)@<X0>(_WORD *result@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  v5 = *a3;
  *a4 = *result;
  *(a4 + 4) = v4;
  *(a4 + 8) = v5;
  return result;
}

uint64_t MTR.Command.ID.description.getter()
{
  sub_2531DABC4();

  strcpy(v2, "Command.ID(0x");
  sub_253169338();
  v0 = sub_2531DA7A4();
  MEMORY[0x259BFE570](v0);

  MEMORY[0x259BFE570](41, 0xE100000000000000);
  return v2[0];
}

_WORD *MTR.Command.Path.init(_:_:commandID:)@<X0>(_WORD *result@<X0>, int *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = *result;
  *(a4 + 4) = v4;
  *(a4 + 8) = a3;
  return result;
}

_WORD *MTR.Command.Path.init(_:clusterID:commandID:)@<X0>(_WORD *result@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 4) = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t MTR.Command.Path.hash(into:)()
{
  sub_2531DB424();
  sub_2531DB434();
  return sub_2531DB434();
}

uint64_t MTR.Command.Path.hashValue.getter()
{
  sub_2531DB3F4();
  sub_2531DB424();
  sub_2531DB434();
  sub_2531DB434();
  return sub_2531DB454();
}

unint64_t sub_2531C4FF8()
{
  result = qword_27F58DEC0;
  if (!qword_27F58DEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DEC0);
  }

  return result;
}

unint64_t sub_2531C5050()
{
  result = qword_27F58DEC8;
  if (!qword_27F58DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DEC8);
  }

  return result;
}

unint64_t sub_2531C50D4()
{
  result = qword_27F58DED0;
  if (!qword_27F58DED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DED0);
  }

  return result;
}

uint64_t Data.dispatchData.getter(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      return sub_2531DA5D4();
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = sub_2531DA044();
    if (a1)
    {
      a1 = sub_2531DA074();
      if (__OFSUB__(v3, a1))
      {
        goto LABEL_18;
      }
    }

    if (!__OFSUB__(v4, v3))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else if (!v2)
  {
    return sub_2531DA5D4();
  }

  v5 = a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (sub_2531DA044() && __OFSUB__(v5, sub_2531DA074()))
  {
LABEL_19:
    __break(1u);
  }

LABEL_13:
  sub_2531DA064();

  return sub_2531DA5D4();
}

uint64_t UUIDStringKey.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2531DA204();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UUIDStringKey.uuid.setter(uint64_t a1)
{
  v3 = sub_2531DA204();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UUIDStringKey.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2531DA204();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t UUIDStringKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DC68, &qword_2531E72A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_2531DA204();
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUIDStringKey(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531DB4A4();
  if (!v2)
  {
    v18 = v12;
    v19 = v9;
    v13 = v22;
    __swift_project_boxed_opaque_existential_1(v21, v21[3]);
    sub_2531DB164();
    sub_2531DA1B4();

    if ((*(v13 + 48))(v6, 1, v7) == 1)
    {
      sub_2531B1730(v6);
      sub_2531C5754();
      swift_allocError();
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      v15 = *(v13 + 32);
      v16 = v19;
      v15(v19, v6, v7);
      v17 = v18;
      v15(v18, v16, v7);
      __swift_destroy_boxed_opaque_existential_1(v21);
      sub_2531C57A8(v17, v20);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for UUIDStringKey(uint64_t a1)
{
  result = qword_27F58DEF8;
  if (!qword_27F58DEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2531C5754()
{
  result = qword_27F58DED8;
  if (!qword_27F58DED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DED8);
  }

  return result;
}

uint64_t sub_2531C57A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUIDStringKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t UUIDStringKey.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531DB4C4();
  sub_2531DA1C4();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2531DB194();

  return __swift_destroy_boxed_opaque_existential_1(v2);
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

uint64_t UUIDStringKey.hash(into:)(uint64_t a1)
{
  sub_2531DA204();
  sub_2531C668C(&qword_27F58D708, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_2531DA694();
}

uint64_t UUIDStringKey.hashValue.getter()
{
  sub_2531DB3F4();
  sub_2531DA204();
  sub_2531C668C(&qword_27F58D708, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2531DA694();
  return sub_2531DB454();
}

uint64_t sub_2531C5A24()
{
  sub_2531DB3F4();
  sub_2531DA204();
  sub_2531C668C(&qword_27F58D708, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2531DA694();
  return sub_2531DB454();
}

uint64_t sub_2531C5AAC(uint64_t a1)
{
  sub_2531DA204();
  sub_2531C668C(&qword_27F58D708, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_2531DA694();
}

uint64_t sub_2531C5B30(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DA204();
  sub_2531C668C(&qword_27F58D708, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2531DA694();
  return sub_2531DB454();
}

uint64_t sub_2531C5BCC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2531DB4C4();
  sub_2531DA1C4();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2531DB194();

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t Dictionary<>.init(wrappingKeys:)(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  v8[2] = a2;
  v8[3] = sub_2531C5E50;
  v8[4] = &v9;
  sub_2531DA204();
  sub_2531C668C(&qword_27F58D708, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_2531DA654();
  type metadata accessor for UUIDStringKey(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_25316C670(sub_2531C5E54, v8, v2, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);

  v11 = v6;
  sub_2531DA934();
  sub_2531C668C(&qword_27F58DEE0, type metadata accessor for UUIDStringKey, &protocol conformance descriptor for UUIDStringKey);
  swift_getWitnessTable();
  return sub_2531DA644();
}

uint64_t Dictionary<>.unwrappedKeys.getter(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v7[2] = a2;
  v7[3] = sub_2531C6990;
  v7[4] = &v8;
  type metadata accessor for UUIDStringKey(255);
  sub_2531C668C(&qword_27F58DEE0, type metadata accessor for UUIDStringKey, &protocol conformance descriptor for UUIDStringKey);
  v2 = sub_2531DA654();
  sub_2531DA204();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_25316C670(sub_2531C61DC, v7, v2, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v5);
  sub_2531DA934();
  sub_2531C668C(&qword_27F58D708, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  swift_getWitnessTable();
  return sub_2531DA644();
}

uint64_t sub_2531C605C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 16);
  v10 = sub_2531DA204();
  (*(*(v10 - 8) + 16))(a1, a3, v10);
  v11 = *(*(v9 - 8) + 16);

  return v11(a2, a4, v9);
}

uint64_t sub_2531C6118@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t (*a5)(uint64_t)@<X6>, uint64_t a6@<X8>)
{
  a4(255);
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  a5(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a6, a6 + *(TupleTypeMetadata2 + 48), a1, a1 + v10);
}

uint64_t sub_2531C6228()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2531C6258@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

void sub_2531C6278(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
}

uint64_t sub_2531C6288(uint64_t a1)
{
  v2 = sub_2531C6370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2531C62C4(uint64_t a1)
{
  v2 = sub_2531C6370();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UUIDStringKey.codingKey.getter@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2531DA1C4();
  v5 = v4;
  a2[3] = &type metadata for UUIDStringKey.CodingKeyProxy;
  a2[4] = sub_2531C6370();
  result = swift_allocObject();
  *a2 = result;
  *(result + 16) = v3;
  *(result + 24) = v5;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

unint64_t sub_2531C6370()
{
  result = qword_27F58DEE8;
  if (!qword_27F58DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DEE8);
  }

  return result;
}

uint64_t UUIDStringKey.init<A>(codingKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v23 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58DC68, &qword_2531E72A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_2531DA204();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUIDStringKey(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2531DB4F4();
  sub_2531DA1B4();

  (*(*(a2 - 8) + 8))(a1, a2);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2531B1730(v8);
    v17 = 1;
    v18 = v23;
  }

  else
  {
    v19 = *(v10 + 32);
    v19(v12, v8, v9);
    v19(v16, v12, v9);
    v20 = v23;
    sub_2531C57A8(v16, v23);
    v17 = 0;
    v18 = v20;
  }

  return (*(v14 + 56))(v18, v17, 1, v13);
}

uint64_t sub_2531C668C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2531C66D4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2531DA1C4();
  v5 = v4;
  a2[3] = &type metadata for UUIDStringKey.CodingKeyProxy;
  a2[4] = sub_2531C6370();
  result = swift_allocObject();
  *a2 = result;
  *(result + 16) = v3;
  *(result + 24) = v5;
  *(result + 32) = 0;
  *(result + 40) = 1;
  return result;
}

uint64_t sub_2531C6770(uint64_t a1)
{
  result = sub_2531DA204();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2531C67DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_2531C6824(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2531C688C()
{
  result = qword_27F58DF08;
  if (!qword_27F58DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DF08);
  }

  return result;
}

unint64_t sub_2531C68E4()
{
  result = qword_27F58DF10;
  if (!qword_27F58DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DF10);
  }

  return result;
}

unint64_t sub_2531C693C()
{
  result = qword_27F58DF18;
  if (!qword_27F58DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DF18);
  }

  return result;
}

uint64_t sub_2531C69B0()
{
  sub_2531DB3F4();
  MEMORY[0x259BFF230](1);
  return sub_2531DB454();
}

uint64_t sub_2531C6A1C(uint64_t a1)
{
  sub_2531DB3F4();
  MEMORY[0x259BFF230](1);
  return sub_2531DB454();
}

uint64_t HomeInstall.Endpoint.ServerSecurity.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_2531DAD94();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t HomeInstall.Endpoint.ServerSecurity.rawValue.getter()
{
  if (*v0)
  {
    return 0x6B73702D736C74;
  }

  else
  {
    return 0x2B32656B617073;
  }
}

unint64_t sub_2531C6BC8()
{
  result = qword_27F58DF20;
  if (!qword_27F58DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DF20);
  }

  return result;
}

uint64_t sub_2531C6C1C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6B73702D736C74;
  }

  else
  {
    v2 = 0x2B32656B617073;
  }

  if (*a2)
  {
    v3 = 0x6B73702D736C74;
  }

  else
  {
    v3 = 0x2B32656B617073;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2531DB144();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

unint64_t sub_2531C6CA8()
{
  result = qword_27F58DF28;
  if (!qword_27F58DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DF28);
  }

  return result;
}

uint64_t sub_2531C6CFC()
{
  sub_2531DB3F4();
  sub_2531DA734();

  return sub_2531DB454();
}

uint64_t sub_2531C6D74(uint64_t a1)
{
  sub_2531DA734();
}

uint64_t sub_2531C6DD0(uint64_t a1)
{
  sub_2531DB3F4();
  sub_2531DA734();

  return sub_2531DB454();
}

uint64_t sub_2531C6E44@<X0>(char *a2@<X8>)
{
  v3 = sub_2531DAD94();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_2531C6EA4(uint64_t *a1@<X8>)
{
  v2 = 0x2B32656B617073;
  if (*v1)
  {
    v2 = 0x6B73702D736C74;
  }

  *a1 = v2;
  a1[1] = 0xE700000000000000;
}

unint64_t sub_2531C6FBC()
{
  result = qword_27F58DF30;
  if (!qword_27F58DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DF30);
  }

  return result;
}

unint64_t sub_2531C7010()
{
  result = qword_27F58DF38;
  if (!qword_27F58DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F58DF38);
  }

  return result;
}

uint64_t HTTPFields.loggingDescription.getter()
{
  v1 = v0;
  v2 = sub_2531DA554();
  v47 = *(v2 - 1);
  v3 = MEMORY[0x28223BE20](v2);
  v46 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - v5;
  v7 = sub_2531DA584();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2531DA284();
  v12 = sub_2531C75B4(&qword_27F58DF40, MEMORY[0x277CD8A80], MEMORY[0x277CD8AA0]);
  v13 = sub_2531DAA34();
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v15 = v13;
    v51 = MEMORY[0x277D84F90];
    sub_2531B4574(0, v13 & ~(v13 >> 63), 0);
    v48 = v51;
    sub_2531DAA24();
    if ((v15 & 0x8000000000000000) == 0)
    {
      v41 = v15;
      v42 = v12;
      v16 = 0;
      v17 = v8;
      v18 = (v8 + 16);
      v19 = (v47 + 8);
      v38 = (v17 + 8);
      v44 = v2;
      v45 = v1;
      v39 = (v47 + 8);
      v40 = v18;
      v43 = v11;
      while (!__OFADD__(v16, 1))
      {
        v47 = v16 + 1;
        v20 = sub_2531DAA54();
        (*v40)(v10);
        (v20)(&v49, 0);
        sub_2531DA564();
        v21 = v46;
        sub_2531DA534();
        LOBYTE(v20) = sub_2531DA544();
        v22 = *v19;
        (*v19)(v21, v2);
        v22(v6, v2);
        sub_2531DA564();
        sub_2531C75B4(&qword_27F58DF48, MEMORY[0x277CD9000], MEMORY[0x277CD9020]);
        v49 = sub_2531DAF34();
        v50 = v23;
        v22(v6, v2);
        if (v20)
        {
          v24 = 0x544341444552203ALL;
          v25 = 0xEB000000000A4445;
        }

        else
        {
          MEMORY[0x259BFE570](8250, 0xE200000000000000);
          v26 = sub_2531DA574();
          MEMORY[0x259BFE570](v26);

          v24 = 10;
          v25 = 0xE100000000000000;
        }

        MEMORY[0x259BFE570](v24, v25);
        v28 = v49;
        v27 = v50;
        v29 = v10;
        v30 = v10;
        v31 = v7;
        (*v38)(v30, v7);
        v32 = v48;
        v51 = v48;
        v34 = *(v48 + 16);
        v33 = *(v48 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_2531B4574((v33 > 1), v34 + 1, 1);
          v32 = v51;
        }

        *(v32 + 16) = v34 + 1;
        v48 = v32;
        v35 = v32 + 16 * v34;
        *(v35 + 32) = v28;
        *(v35 + 40) = v27;
        sub_2531DAA44();
        ++v16;
        v2 = v44;
        v7 = v31;
        v10 = v29;
        v19 = v39;
        if (v47 == v41)
        {
          v14 = v48;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_12:
    v49 = v14;

    sub_2531C75FC(&v49);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F58D458, &qword_2531E2A28);
    sub_25318A2D8();
    v36 = sub_2531DA6A4();

    return v36;
  }

  return result;
}