uint64_t get_enum_tag_for_layout_string_16CloudAttestation14Image4ManifestV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22FEC4A48(uint64_t a1, unsigned int a2)
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
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22FEC4A90(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22FEC4AD4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_22FEC4B00(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

uint64_t sub_22FEC4B18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  return result;
}

unint64_t sub_22FEC4B30()
{
  result = qword_27DAF1C80;
  if (!qword_27DAF1C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1C80);
  }

  return result;
}

uint64_t sub_22FEC4B84(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE1(a3) != 255)
  {
    return sub_22FEC4B9C(result, a2, a3, BYTE1(a3) & 1);
  }

  return result;
}

uint64_t sub_22FEC4B9C(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return sub_22FEC4B18(a1, a2, a3);
  }

  else
  {
    return sub_22FEA55AC(a1, a2);
  }
}

uint64_t sub_22FEC4BA8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return sub_22FEC4B00(a1, a2, a3);
  }

  else
  {
    return sub_22FEA5608(a1, a2);
  }
}

_BYTE *sub_22FEC4BB4(_BYTE *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a4)
  {
    if (result)
    {
      if (a2)
      {
        v4 = a4;
        if (a2 < 15)
        {
          v10 = sub_22FF55698(result, &result[a2]);
          v9 = 0;
          v11 = v12 & 0xFFFFFFFFFFFFFFLL;
        }

        else
        {
          sub_22FFB05D8();
          swift_allocObject();
          v6 = sub_22FFB0578();
          v7 = a2;
          v8 = v6;
          if (v7 >= 0x7FFFFFFF)
          {
            v13 = v7;
            sub_22FFB0738();
            v10 = swift_allocObject();
            v9 = 0;
            *(v10 + 16) = 0;
            *(v10 + 24) = v13;
            v11 = v8 | 0x8000000000000000;
          }

          else
          {
            v9 = 0;
            v10 = v7 << 32;
            v11 = v8 | 0x4000000000000000;
          }
        }

        a4 = v4;
      }

      else
      {
        v10 = 0;
        v9 = 0;
        v11 = 0xC000000000000000;
      }
    }

    else
    {
      v11 = 0;
      v10 = a3;
      v9 = 256;
    }

    v15 = *a4;
    v14 = *(a4 + 8);
    *a4 = v10;
    *(a4 + 8) = v11;
    v16 = *(a4 + 16);
    *(a4 + 16) = v9;

    return sub_22FEC4B84(v15, v14, v16);
  }

  return result;
}

uint64_t sub_22FEC4CC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C90, &qword_22FFB3FF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FEC4DE8(uint64_t a1, unint64_t a2)
{
  v7 = *(v3 + 16);
  v48 = 0;
  v49 = 0xE000000000000000;
  v46 = *v3;
  LOBYTE(v47) = v7;
  result = Image4Manifest.properties.getter();
  if (v4)
  {
    return v2;
  }

  v9 = result;
  v32 = *(result + 16);
  if (!v32)
  {
    v2 = 0;
LABEL_18:

    return v2;
  }

  v10 = 0;
  v30 = result;
  v31 = result + 32;
  v34 = a2;
  v50 = a1;
  while (v10 < *(v9 + 16))
  {
    sub_22FEC52D4(v31 + 48 * v10, &v46);
    v11 = v46;
    v44 = v46;
    sub_22FEA2968(&v47, &v45);
    v42 = v11;

    MEMORY[0x23190DD10](2618, 0xE200000000000000);
    v14 = v42;
    v12 = v14 >> 64;
    v13 = v14;
    *&v42 = a1;
    *(&v42 + 1) = a2;

    MEMORY[0x23190DD10](v13, v12);

    MEMORY[0x23190DD10](v42, *(&v42 + 1));

    sub_22FEC52D4(&v44, &v42);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C98, &qword_22FFB4028);
    if (!swift_dynamicCast())
    {

      v2 = 0x800000022FFC9C50;
      sub_22FEC4B30();
      swift_allocError();
      *v29 = 0xD00000000000001ELL;
      *(v29 + 8) = 0x800000022FFC9C50;
      *(v29 + 16) = 1;
      swift_willThrow();
      sub_22FEC5344(&v44);
      return v2;
    }

    v15 = *(v39 + 16);
    if (v15)
    {
      v33 = v10;
      v16 = v39 + 32;
      do
      {
        sub_22FEC52D4(v16, &v42);
        v23 = v42;
        v22 = v23 >> 64;
        v21 = v23;
        v39 = v42;
        sub_22FEA2968(&v43, &v40);
        sub_22FEC52D4(&v39, &v37);

        if (swift_dynamicCast())
        {
          v37 = v50;
          v38 = a2;

          MEMORY[0x23190DD10](538976288, 0xE400000000000000);
          v24 = v37;
          v25 = v38;
          v37 = v21;
          v38 = v22;

          MEMORY[0x23190DD10](8250, 0xE200000000000000);
          v26 = sub_22FEB0B54(v35, v36);
          MEMORY[0x23190DD10](v26);

          MEMORY[0x23190DD10](10, 0xE100000000000000);
          v27 = v37;
          v28 = v38;
          v37 = v24;
          v38 = v25;

          MEMORY[0x23190DD10](v27, v28);
          a2 = v34;

          MEMORY[0x23190DD10](v37, v38);

          sub_22FEA55AC(v35, v36);
        }

        else
        {
          v37 = v50;
          v38 = a2;

          MEMORY[0x23190DD10](538976288, 0xE400000000000000);
          v18 = v37;
          v17 = v38;
          v37 = 0;
          v38 = 0xE000000000000000;
          MEMORY[0x23190DD10](v21, v22);
          MEMORY[0x23190DD10](8250, 0xE200000000000000);
          __swift_project_boxed_opaque_existential_1(&v40, v41);
          sub_22FFB1BB8();
          MEMORY[0x23190DD10](10, 0xE100000000000000);
          v19 = v37;
          v20 = v38;
          v37 = v18;
          v38 = v17;

          MEMORY[0x23190DD10](v19, v20);

          MEMORY[0x23190DD10](v37, v38);
        }

        sub_22FEC5344(&v39);
        v16 += 48;
        --v15;
      }

      while (v15);

      v9 = v30;
      a1 = v50;
      v10 = v33;
    }

    else
    {
    }

    ++v10;
    result = sub_22FEC5344(&v44);
    if (v10 == v32)
    {
      v2 = v48;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22FEC52D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C78, &qword_22FFB3FE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FEC5344(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C78, &qword_22FFB3FE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Image4Manifest.properties.getter()
{
  v1 = sub_22FFB14F8();
  MEMORY[0x28223BE20](v1 - 8);
  v105 = &v83 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = _s8PropertyV5ValueOMa(0);
  v3 = MEMORY[0x28223BE20](v95);
  v93 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v90 = &v83 - v5;
  v104 = sub_22FFB0D78();
  v92 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v103 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Image4Manifest.Property(0);
  v102 = *(v111 - 8);
  v7 = MEMORY[0x28223BE20](v111);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v94 = &v83 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v83 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v89 = &v83 - v16;
  MEMORY[0x28223BE20](v15);
  v91 = &v83 - v17;
  v18 = sub_22FFB0BE8();
  v96 = *(v18 - 8);
  v97 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Image4Manifest.Manifest(0);
  v21 = MEMORY[0x28223BE20](v99);
  v98 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v83 - v23;
  v25 = sub_22FFB0D08();
  v100 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v83 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v83 - v29;
  v31 = *v0;
  v32 = v0[1];
  sub_22FEA5608(v31, v32);
  v33 = v32;
  v34 = v30;
  sub_22FEC623C(v31, v33);
  v35 = v101;
  sub_22FFB0E88();

  if (!v35)
  {
    v88 = v24;
    v36 = v100;
    (*(v100 + 16))(v28, v34, v25);
    _s16CloudAttestation7ReleaseV17defaultIdentifier17SwiftASN1Internal0gE0VvgZ_0();
    sub_22FFB0EA8();
    v87 = 0;
    v85 = v34;
    (*(v96 + 8))(v20, v97);
    v37 = *(v36 + 8);
    v86 = v25;
    v100 = v36 + 8;
    v84 = v37;
    v37(v28, v25);
    v38 = v88;
    result = sub_22FEC721C(v98, v88, type metadata accessor for Image4Manifest.Manifest);
    v40 = *(v38 + *(v99 + 24));
    v101 = *(v40 + 16);
    if (v101)
    {
      v41 = 0;
      v42 = (v92 + 8);
      while (1)
      {
        if (v41 >= *(v40 + 16))
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          return result;
        }

        v43 = (*(v102 + 80) + 32) & ~*(v102 + 80);
        v20 = *(v102 + 72);
        sub_22FEC7284(v40 + v43 + v20 * v41, v14, type metadata accessor for Image4Manifest.Property);
        v44 = v103;
        sub_22FFB0D48();
        v45 = MEMORY[0x23190D500](v14, v44);
        (*v42)(v44, v104);
        if (v45)
        {
          break;
        }

        ++v41;
        result = sub_22FEC72EC(v14, type metadata accessor for Image4Manifest.Property);
        if (v101 == v41)
        {
          goto LABEL_7;
        }
      }

      v104 = v20;
      v46 = v89;
      sub_22FEC721C(v14, v89, type metadata accessor for Image4Manifest.Property);
      v47 = v46;
      v48 = v91;
      sub_22FEC721C(v47, v91, type metadata accessor for Image4Manifest.Property);
      v49 = v111;
      v50 = v90;
      sub_22FEC7284(v48 + *(v111 + 20), v90, _s8PropertyV5ValueOMa);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        sub_22FEC72EC(v50, _s8PropertyV5ValueOMa);
        sub_22FFB0D38();
        sub_22FEC8A30(&qword_27DAF1CA0, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
        swift_allocError();
        sub_22FFB0D18();
        swift_willThrow();
        sub_22FEC72EC(v48, type metadata accessor for Image4Manifest.Property);
        goto LABEL_8;
      }

      result = *v50;
      v92 = *(*v50 + 16);
      if (v92)
      {
        v51 = 0;
        v90 = result + v43;
        v20 = MEMORY[0x277D84F90];
        v52 = v94;
        v89 = result;
        while (v51 < *(result + 16))
        {
          v98 = v51;
          v53 = sub_22FEC7284(v90 + v51 * v104, v52, type metadata accessor for Image4Manifest.Property);
          *&v106 = MEMORY[0x23190D510](v53);
          *(&v106 + 1) = v54;
          *&v107 = v55;
          *(&v107 + 1) = v56;
          sub_22FFB14E8();
          v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CA8, &qword_22FFC0150);
          v102 = sub_22FEC734C();
          v103 = v57;
          v99 = sub_22FFB14C8();
          v59 = v58;
          result = swift_unknownObjectRelease();
          if (!v59)
          {
            goto LABEL_41;
          }

          v60 = v93;
          sub_22FEC7284(v52 + *(v49 + 20), v93, _s8PropertyV5ValueOMa);
          result = swift_getEnumCaseMultiPayload();
          if (result != 3)
          {

            sub_22FEC72EC(v60, _s8PropertyV5ValueOMa);
            *&v106 = 0;
            *(&v106 + 1) = 0xE000000000000000;
            sub_22FFB19B8();

            *&v106 = 0xD00000000000001ALL;
            *(&v106 + 1) = 0x800000022FFC9CC0;
            MEMORY[0x23190DD10](v99, v59);

            sub_22FFB0D38();
            sub_22FEC8A30(&qword_27DAF1CA0, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
            swift_allocError();
            sub_22FFB0D18();

            swift_willThrow();
            sub_22FEC72EC(v52, type metadata accessor for Image4Manifest.Property);
            sub_22FEC72EC(v91, type metadata accessor for Image4Manifest.Property);
            v84(v85, v86);
            sub_22FEC72EC(v88, type metadata accessor for Image4Manifest.Manifest);
            return v20;
          }

          v96 = v59;
          v97 = v20;
          v61 = *v60;
          v101 = *(*v60 + 16);
          if (v101)
          {
            v62 = 0;
            v63 = v61 + v43;
            v64 = MEMORY[0x277D84F90];
            while (v62 < *(v61 + 16))
            {
              v65 = v43;
              v66 = sub_22FEC7284(v63, v9, type metadata accessor for Image4Manifest.Property);
              *&v106 = MEMORY[0x23190D510](v66);
              *(&v106 + 1) = v67;
              *&v107 = v68;
              *(&v107 + 1) = v69;
              sub_22FFB14E8();
              v70 = sub_22FFB14C8();
              v72 = v71;
              result = swift_unknownObjectRelease();
              if (!v72)
              {
                goto LABEL_40;
              }

              sub_22FEC6564(&v109);
              *&v106 = v70;
              *(&v106 + 1) = v72;
              sub_22FEA2968(&v109, &v107);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v64 = sub_22FEC30C0(0, v64[2] + 1, 1, v64);
              }

              v74 = v64[2];
              v73 = v64[3];
              if (v74 >= v73 >> 1)
              {
                v64 = sub_22FEC30C0((v73 > 1), v74 + 1, 1, v64);
              }

              ++v62;
              result = sub_22FEC72EC(v9, type metadata accessor for Image4Manifest.Property);
              v64[2] = v74 + 1;
              v75 = &v64[6 * v74];
              v76 = v108;
              v77 = v107;
              v75[2] = v106;
              v75[3] = v77;
              v75[4] = v76;
              v63 += v104;
              v43 = v65;
              if (v101 == v62)
              {
                goto LABEL_27;
              }
            }

            __break(1u);
            goto LABEL_38;
          }

          v64 = MEMORY[0x277D84F90];
LABEL_27:

          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CB0, &qword_22FFB4030);
          *&v109 = v64;
          *&v106 = v99;
          *(&v106 + 1) = v96;
          sub_22FEA2968(&v109, &v107);
          v20 = v97;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_22FEC309C(0, *(v20 + 16) + 1, 1, v20);
          }

          v52 = v94;
          v49 = v111;
          v79 = *(v20 + 16);
          v78 = *(v20 + 24);
          if (v79 >= v78 >> 1)
          {
            v20 = sub_22FEC309C((v78 > 1), v79 + 1, 1, v20);
          }

          v51 = v98 + 1;
          sub_22FEC72EC(v52, type metadata accessor for Image4Manifest.Property);
          *(v20 + 16) = v79 + 1;
          v80 = (v20 + 48 * v79);
          v81 = v108;
          v82 = v107;
          v80[2] = v106;
          v80[3] = v82;
          v80[4] = v81;
          result = v89;
          if (v51 == v92)
          {
            goto LABEL_35;
          }
        }

        goto LABEL_39;
      }

      v20 = MEMORY[0x277D84F90];
LABEL_35:

      sub_22FEC72EC(v91, type metadata accessor for Image4Manifest.Property);
      v84(v85, v86);
      sub_22FEC72EC(v88, type metadata accessor for Image4Manifest.Manifest);
    }

    else
    {
LABEL_7:
      sub_22FFB0D38();
      sub_22FEC8A30(&qword_27DAF1CA0, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
      swift_allocError();
      sub_22FFB0D18();
      swift_willThrow();
LABEL_8:
      v84(v85, v86);
      sub_22FEC72EC(v88, type metadata accessor for Image4Manifest.Manifest);
    }
  }

  return v20;
}

void *sub_22FEC623C(uint64_t a1, unint64_t a2)
{
  v4 = sub_22FFB0818();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_22FEA55AC(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_22FF6BE0C(v10, 0);
      v14 = sub_22FFB0718();
      sub_22FEA55AC(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t Image4Manifest.Manifest.init(derEncoded:)(uint64_t a1)
{
  v2 = sub_22FFB0BE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16CloudAttestation7ReleaseV17defaultIdentifier17SwiftASN1Internal0gE0VvgZ_0();
  type metadata accessor for Image4Manifest.Manifest(0);
  sub_22FFB0EA8();
  v6 = sub_22FFB0D08();
  (*(*(v6 - 8) + 8))(a1, v6);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22FEC6564@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_22FFB14F8();
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Image4Manifest.Property(0);
  v6 = *(v5 - 8);
  v55 = v5;
  v56 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FFB0C28();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s8PropertyV5ValueOMa(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FEC7284(v1, v15, _s8PropertyV5ValueOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (result)
    {
      v51 = *v15;
      a1[3] = MEMORY[0x277D84D38];
      *a1 = v51;
    }

    else
    {
      v43 = *v15;
      a1[3] = MEMORY[0x277D839B0];
      *a1 = v43;
    }

    return result;
  }

  if (result == 2)
  {
    (*(v10 + 32))(v12, v15, v9);
    v44 = sub_22FFB0C18();
    sub_22FF960FC(v44, v45, v46, v47);
    a1[3] = MEMORY[0x277CC9318];
    *a1 = v48;
    a1[1] = v49;
    return (*(v10 + 8))(v12, v9);
  }

  if (result != 3)
  {
    v50 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    result = sub_22FEC8B3C();
    a1[3] = result;
    *a1 = v50;
    return result;
  }

  v17 = *v15;
  v18 = *(*v15 + 16);
  v53 = a1;
  v54 = v18;
  if (!v18)
  {
    v20 = MEMORY[0x277D84F98];
LABEL_27:

    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CD0, &unk_22FFB40D0);
    v52 = v53;
    v53[3] = result;
    *v52 = v20;
    return result;
  }

  v19 = 0;
  v20 = MEMORY[0x277D84F98];
  while (v19 < *(v17 + 16))
  {
    v21 = sub_22FEC7284(v17 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v19, v8, type metadata accessor for Image4Manifest.Property);
    *&v61 = MEMORY[0x23190D510](v21);
    *(&v61 + 1) = v22;
    *&v62 = v23;
    *(&v62 + 1) = v24;
    sub_22FFB14E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CA8, &qword_22FFC0150);
    sub_22FEC734C();
    v25 = sub_22FFB14C8();
    v27 = v26;
    swift_unknownObjectRelease();
    if (!v27)
    {
      goto LABEL_32;
    }

    sub_22FEC6564(&v61);
    v59 = v61;
    v60 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v20;
    v30 = sub_22FFA619C(v25, v27);
    v31 = v20[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_30;
    }

    v34 = v29;
    if (v20[3] >= v33)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v29)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_22FF8DB1C();
        if (v34)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
      sub_22FF8B0B4(v33, isUniquelyReferenced_nonNull_native);
      v35 = sub_22FFA619C(v25, v27);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_33;
      }

      v30 = v35;
      if (v34)
      {
LABEL_6:

        v20 = v58;
        sub_22FEC8ACC(&v59, v58[7] + 32 * v30);
        sub_22FEC72EC(v8, type metadata accessor for Image4Manifest.Property);
        goto LABEL_7;
      }
    }

    v20 = v58;
    v58[(v30 >> 6) + 8] |= 1 << v30;
    v37 = (v20[6] + 16 * v30);
    *v37 = v25;
    v37[1] = v27;
    v38 = (v20[7] + 32 * v30);
    v39 = v60;
    *v38 = v59;
    v38[1] = v39;
    sub_22FEC72EC(v8, type metadata accessor for Image4Manifest.Property);
    v40 = v20[2];
    v41 = __OFADD__(v40, 1);
    v42 = v40 + 1;
    if (v41)
    {
      goto LABEL_31;
    }

    v20[2] = v42;
LABEL_7:
    if (v54 == ++v19)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_22FFB1C18();
  __break(1u);
  return result;
}

uint64_t sub_22FEC6AAC()
{
  v1 = *(v0 + 16);
  *&v15[5] = *v0;
  v16 = v1;
  result = Image4Manifest.properties.getter();
  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {
LABEL_10:

LABEL_28:
    v17 = 0u;
    v18 = 0u;
    goto LABEL_29;
  }

  v5 = 0;
  v6 = result + 32;
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    sub_22FEC52D4(v6, &v13);
    v7 = v13 == 1768973683 && v14 == 0xE400000000000000;
    if (v7 || (sub_22FFB1BC8() & 1) != 0)
    {
      break;
    }

    ++v5;
    result = sub_22FEAEA34(&v13, &qword_27DAF1C78, &qword_22FFB3FE8);
    v6 += 48;
    if (v4 == v5)
    {
      goto LABEL_10;
    }
  }

  if (!v14)
  {
    goto LABEL_28;
  }

  sub_22FEA2968(v15, &v17);
  if (*(&v18 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C98, &qword_22FFB4028);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      return 0;
    }

    v8 = v13;
    v9 = *(v13 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = v13 + 32;
      while (v10 < *(v8 + 16))
      {
        sub_22FEC52D4(v11, &v13);
        v12 = v13 == 1414743876 && v14 == 0xE400000000000000;
        if (v12 || (sub_22FFB1BC8() & 1) != 0)
        {

          if (!v14)
          {
            goto LABEL_28;
          }

          sub_22FEA2968(v15, &v17);
          if (!*(&v18 + 1))
          {
            goto LABEL_29;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {
            return 0;
          }

          return v13;
        }

        ++v10;
        result = sub_22FEAEA34(&v13, &qword_27DAF1C78, &qword_22FFB3FE8);
        v11 += 48;
        if (v9 == v10)
        {
          goto LABEL_10;
        }
      }

      goto LABEL_33;
    }

    goto LABEL_10;
  }

LABEL_29:
  sub_22FEAEA34(&v17, &qword_27DAF1CC0, &qword_22FFBFA20);
  return 0;
}

uint64_t sub_22FEC6D6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CD8, &qword_22FFB43D0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v34 = &v28 - v6;
  v7 = sub_22FFB0BE8();
  v35 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v12 = sub_22FFB0D78();
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0DB8();
  v15 = v37;
  result = sub_22FFB0DC8();
  if (!v15)
  {
    v17 = v35;
    v37 = v14;
    sub_22FFB0DB8();
    sub_22FFB0DC8();
    v18 = v38;
    type metadata accessor for Image4Manifest.Property(0);
    sub_22FFB0B58();
    sub_22FEC8A30(qword_281490320, type metadata accessor for Image4Manifest.Property, &protocol conformance descriptor for Image4Manifest.Property);
    v19 = sub_22FFB0E68();
    v29 = v12;
    v30 = v19;
    (*(v17 + 8))(v10, v7);
    v20 = sub_22FFB0CC8();
    v35 = a1;
    sub_22FFB0D88();
    v31 = v18;
    v22 = v32;
    v21 = v33;
    v23 = *(*(v20 - 8) + 56);
    v24 = v34;
    v23(v34, 0, 1, v20);
    sub_22FEAEA34(v24, &qword_27DAF1CD8, &qword_22FFB43D0);
    sub_22FFB0D88();
    v25 = v36;
    v26 = v37;
    v23(v21, 0, 1, v20);
    sub_22FEAEA34(v21, &qword_27DAF1CD8, &qword_22FFB43D0);
    (*(v25 + 32))(v22, v26, v29);
    result = type metadata accessor for Image4Manifest.Manifest(0);
    v27 = v30;
    *(v22 + *(result + 20)) = v31;
    *(v22 + *(result + 24)) = v27;
  }

  return result;
}

uint64_t sub_22FEC721C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEC7284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FEC72EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22FEC734C()
{
  result = qword_28148F0A8;
  if (!qword_28148F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1CA8, &qword_22FFC0150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F0A8);
  }

  return result;
}

uint64_t sub_22FEC73B0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22FFB0BE8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16CloudAttestation7ReleaseV17defaultIdentifier17SwiftASN1Internal0gE0VvgZ_0();
  sub_22FFB0EA8();
  v7 = sub_22FFB0D08();
  (*(*(v7 - 8) + 8))(a1, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22FEC7500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = sub_22FFB0D08();
  v4 = *(v3 - 8);
  v73 = v3;
  v74 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  v65 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v68 = &v59 - v8;
  MEMORY[0x28223BE20](v7);
  v69 = &v59 - v9;
  v70 = _s8PropertyV5ValueOMa(0);
  v10 = MEMORY[0x28223BE20](v70);
  v61 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v10);
  v64 = &v59 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v63 = (&v59 - v15);
  MEMORY[0x28223BE20](v14);
  v66 = &v59 - v16;
  v17 = sub_22FFB0BE8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v62 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v67 = &v59 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = &v59 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v59 - v27;
  v29 = a1;
  sub_22FFB0CD8();
  sub_22FFB0B68();
  sub_22FEC8A30(qword_28148F1F8, MEMORY[0x277D6A8A8], MEMORY[0x277D6A8B0]);
  LOBYTE(a1) = sub_22FFB1478();
  v30 = *(v18 + 8);
  v30(v26, v17);
  if (a1)
  {
    (*(v74 + 8))(v29, v73);
    v30(v28, v17);
    return swift_storeEnumTagMultiPayload();
  }

  v60 = v29;
  sub_22FFB0B78();
  v32 = sub_22FFB1478();
  v30(v26, v17);
  if (v32)
  {
    v30(v28, v17);
    v34 = v73;
    v33 = v74;
    v35 = v60;
    (*(v74 + 16))(v69, v60, v73);
    sub_22FFB0CD8();
    v36 = v72;
    v37 = sub_22FFB1758();
    if (v36)
    {
      return (*(v33 + 8))(v35, v34);
    }

    v48 = v37;
    (*(v33 + 8))(v35, v34);
    v49 = v48 & 1;
    v50 = v66;
    *v66 = v49;
    swift_storeEnumTagMultiPayload();
    v51 = v50;
    return sub_22FEC721C(v51, v71, _s8PropertyV5ValueOMa);
  }

  sub_22FFB0B88();
  v38 = sub_22FFB1478();
  v30(v26, v17);
  if (v38)
  {
    v30(v28, v17);
    v40 = v73;
    v39 = v74;
    v41 = v60;
    (*(v74 + 16))(v68, v60, v73);
    sub_22FFB0CD8();
    sub_22FEC8A78();
    v42 = v72;
    sub_22FFB0CA8();
    if (!v42)
    {
      (*(v39 + 8))(v41, v40);
      v43 = v63;
      *v63 = v75;
      swift_storeEnumTagMultiPayload();
      v44 = v43;
      return sub_22FEC721C(v44, v71, _s8PropertyV5ValueOMa);
    }

    return (*(v39 + 8))(v41, v40);
  }

  sub_22FFB0B48();
  v45 = sub_22FFB1478();
  v30(v26, v17);
  if (v45)
  {
    v30(v28, v17);
    sub_22FFB0C28();
    v40 = v73;
    v39 = v74;
    v41 = v60;
    (*(v74 + 16))(v65, v60, v73);
    v46 = v64;
    v47 = v72;
    sub_22FFB0DE8();
    if (!v47)
    {
      (*(v39 + 8))(v41, v40);
      swift_storeEnumTagMultiPayload();
      v44 = v46;
      return sub_22FEC721C(v44, v71, _s8PropertyV5ValueOMa);
    }

    return (*(v39 + 8))(v41, v40);
  }

  sub_22FFB0B58();
  v52 = sub_22FFB1478();
  v30(v26, v17);
  v30(v28, v17);
  if (v52)
  {
    type metadata accessor for Image4Manifest.Property(0);
    v53 = v62;
    sub_22FFB0B58();
    sub_22FEC8A30(qword_281490320, type metadata accessor for Image4Manifest.Property, &protocol conformance descriptor for Image4Manifest.Property);
    v54 = v60;
    v55 = v72;
    v56 = sub_22FFB0E78();
    if (!v55)
    {
      v57 = v56;
      (*(v74 + 8))(v54, v73);
      v30(v53, v17);
      v58 = v61;
      *v61 = v57;
      swift_storeEnumTagMultiPayload();
      v51 = v58;
      return sub_22FEC721C(v51, v71, _s8PropertyV5ValueOMa);
    }

    (*(v74 + 8))(v54, v73);
    return (v30)(v53, v17);
  }

  else
  {
    sub_22FFB0D38();
    sub_22FEC8A30(&qword_27DAF1CA0, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
    swift_allocError();
    sub_22FFB0D18();
    swift_willThrow();
    return (*(v74 + 8))(v60, v73);
  }
}

uint64_t Image4Manifest.Property.init(derEncoded:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = sub_22FFB0BA8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v25 - v8;
  v10 = sub_22FFB0BE8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v25[0] = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - v14;
  v29 = a1;
  sub_22FFB0CD8();
  sub_22FFB0BC8();
  v16 = *(v11 + 8);
  v26 = v10;
  v16(v15, v10);
  (*(v4 + 104))(v7, *MEMORY[0x277D6A8A0], v3);
  LOBYTE(a1) = sub_22FFB0B98();
  v17 = *(v4 + 8);
  v17(v7, v3);
  v17(v9, v3);
  if (a1)
  {
    v18 = v26;
    v19 = v25[0];
    v20 = v29;
    sub_22FFB0CD8();
    type metadata accessor for Image4Manifest.Property(0);
    sub_22FFB0EA8();
    v21 = sub_22FFB0D08();
    (*(*(v21 - 8) + 8))(v20, v21);
    return (v16)(v19, v18);
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_22FFB19B8();
    MEMORY[0x23190DD10](0xD000000000000015, 0x800000022FFC9CE0);
    v23 = v29;
    sub_22FFB0CD8();
    sub_22FFB0BC8();
    v16(v15, v26);
    sub_22FFB1A98();
    v17(v9, v3);
    sub_22FFB0D38();
    sub_22FEC8A30(&qword_27DAF1CA0, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
    swift_allocError();
    sub_22FFB0D18();

    swift_willThrow();
    v24 = sub_22FFB0D08();
    return (*(*(v24 - 8) + 8))(v23, v24);
  }
}

uint64_t sub_22FEC8220()
{
  v0 = sub_22FFB0BE8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CC8, &qword_22FFBEEA0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_22FFB0D08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0C48();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_22FEAEA34(v6, &qword_27DAF1CC8, &qword_22FFBEEA0);
    sub_22FFB0D38();
    sub_22FEC8A30(&qword_27DAF1CA0, MEMORY[0x277D6A9C0], MEMORY[0x277D6A9C8]);
    swift_allocError();
    sub_22FFB0D18();
    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_22FFB0CD8();
    type metadata accessor for Image4Manifest.Property(0);
    sub_22FFB0EA8();
    (*(v1 + 8))(v3, v0);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_22FEC8524@<X0>(uint64_t a2@<X8>)
{
  v15 = a2;
  v3 = _s8PropertyV5ValueOMa(0);
  MEMORY[0x28223BE20](v3);
  v16 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22FFB0BE8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_22FFB0D78();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB0DB8();
  result = sub_22FFB0DC8();
  if (!v2)
  {
    v11 = v15;
    sub_22FEC8A30(qword_2814903D0, _s8PropertyV5ValueOMa, &unk_22FFB40A4);
    v12 = v16;
    sub_22FFB0D88();
    (*(v7 + 32))(v11, v9, v6);
    v13 = type metadata accessor for Image4Manifest.Property(0);
    return sub_22FEC721C(v12, v11 + *(v13 + 20), _s8PropertyV5ValueOMa);
  }

  return result;
}

void sub_22FEC87C8(uint64_t a1)
{
  sub_22FFB0D78();
  if (v1 <= 0x3F)
  {
    sub_22FEC8854(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FEC8854(uint64_t a1)
{
  if (!qword_27DAF1CB8)
  {
    type metadata accessor for Image4Manifest.Property(255);
    v1 = sub_22FFB1738();
    if (!v2)
    {
      atomic_store(v1, &qword_27DAF1CB8);
    }
  }
}

uint64_t sub_22FEC88D4(uint64_t a1)
{
  result = sub_22FFB0D78();
  if (v2 <= 0x3F)
  {
    result = _s8PropertyV5ValueOMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22FEC89A8(uint64_t a1)
{
  sub_22FFB0C28();
  if (v1 <= 0x3F)
  {
    sub_22FEC8854(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_22FEC8A30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22FEC8A78()
{
  result = qword_28148F090;
  if (!qword_28148F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F090);
  }

  return result;
}

uint64_t sub_22FEC8ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CC0, &qword_22FFBFA20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FEC8B3C()
{
  result = qword_28148F0C8;
  if (!qword_28148F0C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28148F0C8);
  }

  return result;
}

uint64_t sub_22FEC8B88()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DB059D0);
  __swift_project_value_buffer(v0, qword_27DB059D0);
  return sub_22FFB12E8();
}

uint64_t MuxValidator.init(environment:_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  if (qword_281490938 != -1)
  {
    swift_once();
  }

  v8 = sub_22FF9A468(qword_2814914B0, unk_2814914B8, qword_2814914C0);
  if (v8 == 2)
  {
    v9 = 0x3F8u >> v7;
  }

  else
  {
    v9 = v8;
  }

  *(a4 + 16) = v9 & 1;
  result = sub_22FF9A468(qword_2814914D0, unk_2814914D8, qword_2814914E0);
  if (result == 2)
  {
    v11 = 0x3C0u >> v7;
  }

  else
  {
    v11 = result;
  }

  *(a4 + 17) = v11 & 1;
  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

uint64_t MuxValidator.policy.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE0, &unk_22FFB40E0);
  MEMORY[0x28223BE20](v39);
  v38 = &v36[-v2];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v36[-v4];
  v6 = type metadata accessor for X509Policy(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v36[-v10];
  v37 = *(v1 + 16);
  v12 = *(v1 + 17);
  v13 = MEMORY[0x277D84F90];
  v41[0] = MEMORY[0x277D84F90];
  if (v12 == 1)
  {
    if (qword_281490B50 != -1)
    {
      swift_once();
    }
  }

  else
  {
    if (qword_281490B50 != -1)
    {
      swift_once();
    }

    v15 = qword_2814916A0;
    v16 = qword_27DAF1268;

    if (v16 != -1)
    {
      swift_once();
    }

    v42 = v15;

    sub_22FECB2C8(v17);
    v14 = v42;
  }

  sub_22FECB2C8(v14);
  v18 = v41[0];
  v19 = sub_22FFB0908();
  v20 = *(*(v19 - 8) + 56);
  v20(v5, 1, 1, v19);
  *(v11 + 1) = v13;
  v21 = v6[6];
  v20(&v11[v21], 1, 1, v19);
  v22 = &v11[v6[7]];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v11[v6[8]];
  v24 = v37;
  *v11 = v37;
  sub_22FED2C04(v18);
  sub_22FEB3E04(v5, &v11[v21]);
  *v23 = 0;
  v23[1] = 0;
  *v22 = 0;
  v22[8] = 1;
  SEPAttestationPolicy.init(insecure:)(v24 ^ 1, v41);
  v25 = v41[0];
  v26 = v41[1];
  v27 = v41[2];
  sub_22FECB3B8(v11, v9);
  v28 = v38;
  sub_22FECB3B8(v9, v38);
  v29 = v39;
  v30 = &v28[*(v39 + 48)];
  *v30 = v25;
  v30[1] = v26;
  v30[2] = v27;
  v31 = v28;
  v32 = v40;
  sub_22FECB41C(v31, v40);
  v33 = v32 + *(v29 + 48);
  v34 = v30[2];
  *v33 = *v30;
  *(v33 + 16) = v34;
  sub_22FECB480(v25);
  sub_22FE9AC3C(v26, v27);
  sub_22FECB490(v11);
  sub_22FEBAFF4(v25);
  sub_22FEA5C80(v26, v27);
  return sub_22FECB490(v9);
}

uint64_t MuxValidator.validate(bundle:nonce:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 216) = a5;
  *(v7 + 224) = a6;
  *(v7 + 200) = a3;
  *(v7 + 208) = a4;
  *(v7 + 184) = a1;
  *(v7 + 192) = a2;
  sub_22FFB0FE8();
  *(v7 + 232) = swift_task_alloc();
  v8 = sub_22FFB13C8();
  *(v7 + 240) = v8;
  *(v7 + 248) = *(v8 - 8);
  *(v7 + 256) = swift_task_alloc();
  v9 = sub_22FFB1398();
  *(v7 + 264) = v9;
  *(v7 + 272) = *(v9 - 8);
  *(v7 + 280) = swift_task_alloc();
  *(v7 + 288) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE8, &qword_22FFB4280);
  *(v7 + 296) = swift_task_alloc();
  *(v7 + 304) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CF0, &unk_22FFB4100);
  *(v7 + 312) = swift_task_alloc();
  *(v7 + 320) = *v6;
  *(v7 + 122) = *(v6 + 16);
  *(v7 + 123) = *(v6 + 17);

  return MEMORY[0x2822009F8](sub_22FEC92F0, 0, 0);
}

uint64_t sub_22FEC92F0()
{
  v1 = *(v0 + 123);
  v2 = *(v0 + 122);
  v3 = *(v0 + 312);
  v7 = *(v0 + 320);
  *(v0 + 144) = sub_22FFA7050(MEMORY[0x277D84F90]);
  *(v0 + 104) = v7;
  *(v0 + 120) = v2;
  *(v0 + 121) = v1;
  MuxValidator.policy.getter(v3);
  v4 = swift_task_alloc();
  *(v0 + 336) = v4;
  *v4 = v0;
  v4[1] = sub_22FEC9418;
  v5 = *(v0 + 208);

  return sub_22FFA46B8(v5, v0 + 144);
}

uint64_t sub_22FEC9418()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {

    v3 = sub_22FEC9FF8;
  }

  else
  {
    sub_22FEAEA34(*(v2 + 312), &qword_27DAF1CF0, &unk_22FFB4100);
    v3 = sub_22FEC9580;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22FEC9580()
{
  v79 = v0;
  v1 = v0;
  v78 = *MEMORY[0x277D85DE8];
  v2 = v0 + 18;
  AttestationPolicyContext.validatedAttestation.getter(&v75);
  v3 = v75;
  *(v2 + 13) = v75;
  v4 = v76;
  *(v2 + 14) = v76;

  if (*(&v3 + 1) >> 60 == 15)
  {
    if (qword_27DAF1258 != -1)
    {
      swift_once();
    }

    v5 = sub_22FFB12F8();
    __swift_project_value_buffer(v5, qword_27DB059D0);
    v6 = sub_22FFB12D8();
    v7 = sub_22FFB1838();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_22FE99000, v6, v7, "missing validated attestation", v8, 2u);
      MEMORY[0x23190EFF0](v8, -1, -1);
    }

    sub_22FECB804();
    swift_allocError();
    *v9 = 0;
    swift_willThrow();
    goto LABEL_37;
  }

  v1[20] = 0;
  v10 = v1[43];
  v1[19] = 0;
  v11 = swift_task_alloc();
  *(v11 + 16) = v1 + 19;
  *(v11 + 24) = v1 + 20;
  sub_22FED55F8(v4, *(&v4 + 1), sub_22FEBF260);

  if (*(&v75 + 1) >> 60 != 15)
  {
    sub_22FEA56EC(v75, *(&v75 + 1));
    goto LABEL_13;
  }

  v12 = v1[26];
  v13 = (*(v12 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 != 2 || *(v14 + 16) == *(v14 + 24))
    {
      goto LABEL_31;
    }

    goto LABEL_13;
  }

  if (!v16)
  {
    if ((v15 & 0xFF000000000000) == 0)
    {
      goto LABEL_31;
    }

LABEL_13:
    v2[3] = 0;
    v2[4] = 0;
    v17 = swift_task_alloc();
    *(v17 + 16) = v2 + 3;
    *(v17 + 24) = v2 + 4;
    sub_22FED55F8(v4, *(&v4 + 1), sub_22FEBFA3C);

    if (*(&v75 + 1) >> 60 == 15)
    {
      if (qword_27DAF1258 != -1)
      {
        swift_once();
      }

      v18 = sub_22FFB12F8();
      __swift_project_value_buffer(v18, qword_27DB059D0);
      v19 = sub_22FFB12D8();
      v20 = sub_22FFB1838();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_22FE99000, v19, v20, "missing nonce from validated attestation", v21, 2u);
        MEMORY[0x23190EFF0](v21, -1, -1);
      }

      sub_22FECB804();
      swift_allocError();
      *v22 = 1;
      swift_willThrow();
      v24 = v3 >> 64;
      v23 = v3;
      v26 = v4 >> 64;
      v25 = v4;
    }

    else
    {
      v72 = *(&v75 + 1);
      v73 = v75;
      v27 = v1[32];
      v70 = v1[31];
      v28 = v1[30];
      v29 = v1[26];
      v30 = (*(v29 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
      swift_beginAccess();
      v31 = *v30;
      v32 = v30[1];
      sub_22FEA5608(*v30, v32);
      sub_22FECB9C4(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      sub_22FFB1388();
      sub_22FEA5608(v31, v32);
      sub_22FF9EA78(v31, v32, v27);
      sub_22FEA55AC(v31, v32);
      sub_22FFB1368();
      sub_22FEA55AC(v31, v32);
      (*(v70 + 8))(v27, v28);
      if ((sub_22FECAD68(v73, v72) & 1) == 0)
      {
        if (qword_27DAF1258 != -1)
        {
          swift_once();
        }

        v36 = v1[35];
        v37 = v1[36];
        v38 = v1[33];
        v39 = v1[34];
        v40 = sub_22FFB12F8();
        __swift_project_value_buffer(v40, qword_27DB059D0);
        (*(v39 + 16))(v36, v37, v38);
        sub_22FEA5608(v73, v72);
        v41 = sub_22FFB12D8();
        v42 = sub_22FFB1838();
        sub_22FEA56EC(v73, v72);
        v43 = os_log_type_enabled(v41, v42);
        v45 = v1[34];
        v44 = v1[35];
        v46 = v1[33];
        if (v43)
        {
          v47 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *&v75 = v71;
          *v47 = 136446466;
          v48 = sub_22FEB0B54(v73, v72);
          v69 = v42;
          v50 = sub_22FF9E448(v48, v49, &v75);

          *(v47 + 4) = v50;
          *(v47 + 12) = 2082;
          v51 = sub_22FF95DBC();
          v53 = v52;
          v54 = *(v45 + 8);
          v54(v44, v46);
          v55 = sub_22FF9E448(v51, v53, &v75);

          *(v47 + 14) = v55;
          _os_log_impl(&dword_22FE99000, v41, v69, "app data integrity check failed: (nonce:%{public}s != digest:%{public}s", v47, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190EFF0](v71, -1, -1);
          v56 = v47;
          v57 = v72;
          MEMORY[0x23190EFF0](v56, -1, -1);
        }

        else
        {

          v57 = v72;
          v54 = *(v45 + 8);
          v54(v44, v46);
        }

        v63 = v1[36];
        v64 = v1[33];
        sub_22FECB804();
        swift_allocError();
        *v65 = 2;
        swift_willThrow();
        sub_22FECB858(v3, *(&v3 + 1), v4, *(&v4 + 1));
        sub_22FEA56EC(v73, v57);
        v54(v63, v64);
        goto LABEL_37;
      }

      v33 = type metadata accessor for Proto_AppData(0);
      v34 = *v30;
      v35 = v30[1];
      v1[16] = *v30;
      v1[17] = v35;
      v77 = 0;
      v75 = 0u;
      v76 = 0u;
      sub_22FEA5608(v34, v35);
      sub_22FFB0FD8();
      sub_22FECB9C4(qword_2814906B0, type metadata accessor for Proto_AppData, &protocol conformance descriptor for Proto_AppData);
      sub_22FFB1188();
      if (!v10)
      {
        v67 = v1[37];
        v68 = v1[38];
        (*(v1[34] + 8))(v1[36], v1[33]);
        sub_22FEA56EC(v73, v72);
        (*(*(v33 - 8) + 56))(v67, 0, 1, v33);
        sub_22FECB8A8(v67, v68);
        goto LABEL_32;
      }

      (*(v1[34] + 8))(v1[36], v1[33]);
      sub_22FEA56EC(v73, v72);
      v23 = v3;
      v25 = v4;
      v24 = *(&v3 + 1);
      v26 = *(&v4 + 1);
    }

    sub_22FECB858(v23, v24, v25, v26);
LABEL_37:

    v66 = v1[1];

    return v66();
  }

  if (v14 != v14 >> 32)
  {
    goto LABEL_13;
  }

LABEL_31:
  v58 = v1[38];
  v59 = type metadata accessor for Proto_AppData(0);
  (*(*(v59 - 8) + 56))(v58, 1, 1, v59);
LABEL_32:
  v74 = (v1[40] + *v1[40]);
  v60 = swift_task_alloc();
  v1[48] = v60;
  *v60 = v1;
  v60[1] = sub_22FECA0F8;
  v61 = v1[38];

  return v74(v1 + 2, v61);
}

uint64_t sub_22FEC9FF8()
{
  sub_22FEAEA34(*(v0 + 312), &qword_27DAF1CF0, &unk_22FFB4100);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FECA0F8()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_22FECA5F4;
  }

  else
  {
    v2 = sub_22FECA238;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FECA238()
{
  v1 = v0;
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v12 = (*(v3 + 64) + **(v3 + 64));
  v4 = swift_task_alloc();
  v1[50] = v4;
  *v4 = v1;
  v4[1] = sub_22FECA39C;
  v5 = v1[27];
  v6 = v1[28];
  v7 = v1[25];
  v8 = v1[26];
  v9 = v1[23];
  v10 = v1[24];

  return v12(v9, v10, v7, v8, v5, v6, v2, v3);
}

uint64_t sub_22FECA39C()
{
  *(*v1 + 408) = v0;

  if (v0)
  {
    v2 = sub_22FECA704;
  }

  else
  {
    v2 = sub_22FECA4DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FECA4DC()
{
  v1 = v0[38];
  sub_22FECB858(v0[44], v0[45], v0[46], v0[47]);
  sub_22FEAEA34(v1, &qword_27DAF1CE8, &qword_22FFB4280);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_22FECA5F4()
{
  v1 = v0[38];
  sub_22FECB858(v0[44], v0[45], v0[46], v0[47]);
  sub_22FEAEA34(v1, &qword_27DAF1CE8, &qword_22FFB4280);

  v2 = v0[1];

  return v2();
}

uint64_t sub_22FECA704()
{
  v1 = v0[38];
  sub_22FECB858(v0[44], v0[45], v0[46], v0[47]);
  sub_22FEAEA34(v1, &qword_27DAF1CE8, &qword_22FFB4280);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];

  return v2();
}

void *sub_22FECA81C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22FFB13B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22FFB0818();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22FEA5608(a2, a3);
  sub_22FFB0828();
  (*(v7 + 16))(v9, a1, v6);
  sub_22FECB9C4(&qword_28148F1A0, MEMORY[0x277CC52C8], MEMORY[0x277CC52D0]);
  sub_22FFB1608();
  v14 = v23;
  v15 = *(v23 + 16);
  sub_22FECB9C4(&qword_281491358, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
  result = sub_22FFB18A8();
  v17 = v24;
  if (v24 == v15)
  {
LABEL_7:
    v18 = v22;
LABEL_8:
    (*(v11 + 8))(v13, v10);

    return v18;
  }

  else
  {
    while ((v17 & 0x8000000000000000) == 0)
    {
      if (v17 >= *(v14 + 16))
      {
        goto LABEL_10;
      }

      v18 = 0;
      v19 = v17 + 1;
      v20 = *(v14 + 32 + v17);
      v24 = v19;
      if ((v22 & 1) != 0 || v21[14] != v20)
      {
        goto LABEL_8;
      }

      result = sub_22FFB18A8();
      v17 = v24;
      if (v24 == v15)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_22FECAAF4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_22FFB0818();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-v13];
  sub_22FEA5608(a3, a4);
  sub_22FFB0828();
  sub_22FEA5608(a1, a2);
  sub_22FFB0828();
  sub_22FECB9C4(&qword_281491358, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
  sub_22FFB18A8();
  sub_22FFB18A8();
  v15 = v19;
  if ((v21 & 1) == 0)
  {
    while ((v15 & 1) == 0 && v20 == v18[12])
    {
      sub_22FFB18A8();
      sub_22FFB18A8();
      v15 = v19;
      if (v21 == 1)
      {
        goto LABEL_7;
      }
    }

    v15 = 0;
  }

LABEL_7:
  v16 = *(v9 + 8);
  v16(v12, v8);
  v16(v14, v8);
  return v15;
}

void *sub_22FECAD68(uint64_t a1, unint64_t a2)
{
  v5 = sub_22FFB0818();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22FFB1398();
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v2, v9);
  sub_22FECB9C4(&qword_28148F1B8, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  sub_22FFB1608();
  sub_22FEA5608(a1, a2);
  result = sub_22FFB0828();
  v13 = v20;
  v14 = *(v20 + 16);
  while (1)
  {
    v15 = v21;
    if (v21 == v14)
    {
      v16 = 0;
      goto LABEL_7;
    }

    if ((v21 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v21 >= *(v13 + 16))
    {
      goto LABEL_14;
    }

    v16 = *(v13 + 32 + v21++);
LABEL_7:
    sub_22FECB9C4(&qword_281491358, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
    result = sub_22FFB18A8();
    if (v15 == v14 || (v19 & 1) != 0)
    {
      v17 = (v15 == v14) & v19;
      goto LABEL_12;
    }

    if (v16 != v18[14])
    {
      v17 = 0;
LABEL_12:
      (*(v6 + 8))(v8, v5);

      return v17;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_22FECB038(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_22FFB0818();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22FEA5608(a2, a3);
  sub_22FFB0828();
  v10 = *(a1 + 16);
  sub_22FECB9C4(&qword_281491358, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
  sub_22FFB18A8();
  if (v10)
  {
    v11 = (a1 + 32);
    while (1)
    {
      v12 = 0;
      if (v16)
      {
        break;
      }

      v13 = *v11++;
      if (v15[14] != v13)
      {
        break;
      }

      sub_22FFB18A8();
      if (!--v10)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v12 = v16;
  }

  (*(v7 + 8))(v9, v6);
  return v12;
}

uint64_t sub_22FECB1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_22FEAA0D4;

  return MuxValidator.validate(bundle:nonce:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_22FECB2C8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_22FFB1AB8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_22FFB1AB8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_22FECB5E4(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_22FECB684(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_22FECB3B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for X509Policy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FECB41C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for X509Policy(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22FECB480(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_22FECB490(uint64_t a1)
{
  v2 = type metadata accessor for X509Policy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FECB4EC(uint64_t result)
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

  result = sub_22FEC3564(result, v10, 1, v3);
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

uint64_t sub_22FECB5E4(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_22FFB1AB8();
LABEL_9:
  result = sub_22FFB19E8();
  *v2 = result;
  return result;
}

uint64_t sub_22FECB684(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22FFB1AB8();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22FFB1AB8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22FECBA0C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D00, &qword_22FFB4170);
            v9 = sub_22FEC0A14(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for SecCertificate(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_22FECB804()
{
  result = qword_27DAF1CF8;
  if (!qword_27DAF1CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1CF8);
  }

  return result;
}

uint64_t sub_22FECB858(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_22FEA55AC(result, a2);

    return sub_22FEA55AC(a3, a4);
  }

  return result;
}

uint64_t sub_22FECB8A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE8, &qword_22FFB4280);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_22FECB92C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_22FECB974(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22FECB9C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22FECBA0C()
{
  result = qword_27DAF1D08;
  if (!qword_27DAF1D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAF1D00, &qword_22FFB4170);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1D08);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceModePolicy.Constraint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceModePolicy.Constraint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22FECBBC8(uint64_t a1)
{
  v2 = sub_22FECBCC0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22FECBC04(uint64_t a1)
{
  v2 = sub_22FECBCC0();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22FECBC6C()
{
  result = qword_27DAF1D10;
  if (!qword_27DAF1D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1D10);
  }

  return result;
}

unint64_t sub_22FECBCC0()
{
  result = qword_27DAF1D18;
  if (!qword_27DAF1D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1D18);
  }

  return result;
}

uint64_t sub_22FECBD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 24))
  {
    sub_22FEA2968(a1, v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    sub_22FF8C944(v13, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v12;
  }

  else
  {
    sub_22FEAEA34(a1, &qword_27DAF1A78, &unk_22FFB3A50);
    sub_22FF8A518(a2, a3, a4, a5, v13);

    return sub_22FEAEA34(v13, &qword_27DAF1A78, &unk_22FFB3A50);
  }

  return result;
}

uint64_t sub_22FECBE04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CD8, &qword_22FFB43D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = sub_22FFB0CC8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_22FEAEA34(a1, &qword_27DAF1CD8, &qword_22FFB43D0);
    v13 = sub_22FFA6338(a2);
    if (v14)
    {
      v15 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v3;
      v21 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_22FF8DFF8();
        v17 = v21;
      }

      (*(v10 + 32))(v8, *(v17 + 56) + *(v10 + 72) * v15, v9);
      sub_22FF8C62C(v15, v17);
      *v3 = v17;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_22FEAEA34(v8, &qword_27DAF1CD8, &qword_22FFB43D0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v3;
    result = sub_22FF8CF6C(v12, a2, v18);
    *v3 = v21;
  }

  return result;
}

uint64_t sub_22FECC054()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_27DAF1D20);
  __swift_project_value_buffer(v0, qword_27DAF1D20);
  return sub_22FFB12E8();
}

uint64_t static ProxiedReleasePolicy.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAF1260 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB12F8();
  v3 = __swift_project_value_buffer(v2, qword_27DAF1D20);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProxiedReleasePolicy.init(proxyingAttestation:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v60 = a2;
  v3 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  v55 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  MEMORY[0x28223BE20](v6 - 8);
  v58 = v51 - v7;
  v8 = sub_22FFB0F18();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D40, &qword_22FFB4278);
  MEMORY[0x28223BE20](v10 - 8);
  v52 = v51 - v11;
  v12 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata(0);
  v54 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22FFB0FE8();
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1CE8, &qword_22FFB4280);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v51 - v20;
  v22 = type metadata accessor for Proto_AppData(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(type metadata accessor for Proto_AttestationBundle(0) + 20);
  v59 = a1;
  v27 = (*(a1 + v26) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v28 = v27[1];
  v64 = *v27;
  v65 = v28;
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_22FEA5608(v64, v28);
  sub_22FFB0FD8();
  sub_22FECE640(qword_2814906B0, type metadata accessor for Proto_AppData, &protocol conformance descriptor for Proto_AppData);
  sub_22FFB1188();
  v51[1] = v18;
  v29 = v12;
  v30 = v52;
  v31 = v53;
  (*(v23 + 56))(v21, 0, 1, v22);
  sub_22FECE578(v21, v25, type metadata accessor for Proto_AppData);
  v32 = v58;
  sub_22FECC994(&v25[*(v22 + 32)], v58);
  v33 = *(v56 + 48);
  v34 = v33(v32, 1, v57);
  v35 = v25;
  if (v34 == 1)
  {
    sub_22FFB0F08();
    v36 = v33(v58, 1, v57);
    v37 = v29;
    v38 = v54;
    if (v36 != 1)
    {
      sub_22FEAEA34(v58, &qword_27DAF1D38, &qword_22FFB4270);
    }
  }

  else
  {
    (*(v56 + 32))(v31, v58, v57);
    v37 = v29;
    v38 = v54;
  }

  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  sub_22FFB0FD8();
  sub_22FECE640(qword_281490F70, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata, &protocol conformance descriptor for PrivateCloudCompute_ProxyNodeMetadata);
  sub_22FFB1158();
  v39 = v55;
  (*(v38 + 56))(v30, 0, 1, v37);
  sub_22FECE578(v30, v14, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
  v41 = *v14;
  v42 = *(*v14 + 16);
  if (v42)
  {
    v58 = v35;
    *&v61 = MEMORY[0x277D84F90];
    sub_22FECD9FC(0, v42, 0);
    v43 = v61;
    v44 = v41 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
    v45 = *(v39 + 72);
    do
    {
      sub_22FECE510(v44, v5, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
      v46 = *v5;
      v47 = v5[1];
      sub_22FEA5608(*v5, v47);
      sub_22FECE5E0(v5, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
      *&v61 = v43;
      v49 = *(v43 + 16);
      v48 = *(v43 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_22FECD9FC((v48 > 1), v49 + 1, 1);
        v43 = v61;
      }

      *(v43 + 16) = v49 + 1;
      v50 = v43 + 16 * v49;
      *(v50 + 32) = v46;
      *(v50 + 40) = v47;
      v44 += v45;
      --v42;
    }

    while (v42);
    sub_22FECE5E0(v58, type metadata accessor for Proto_AppData);
    sub_22FECE5E0(v14, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
  }

  else
  {
    sub_22FECE5E0(v35, type metadata accessor for Proto_AppData);
    sub_22FECE5E0(v14, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
    v43 = MEMORY[0x277D84F90];
  }

  result = sub_22FECE5E0(v59, type metadata accessor for AttestationBundle);
  *v60 = v43;
  return result;
}

uint64_t sub_22FECC994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ProxiedReleasePolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a1;
  v3[20] = a2;
  v4 = sub_22FFB0818();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v5 = swift_task_alloc();
  v6 = *v2;
  v3[23] = v5;
  v3[24] = v6;

  return MEMORY[0x2822009F8](sub_22FECCAC8, 0, 0);
}

uint64_t sub_22FECCAC8()
{
  v50 = v0;
  if (!*(*(v0 + 192) + 16))
  {
    if (qword_27DAF1260 != -1)
    {
      swift_once();
    }

    v10 = sub_22FFB12F8();
    __swift_project_value_buffer(v10, qword_27DAF1D20);
    v11 = sub_22FFB12D8();
    v12 = sub_22FFB1838();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_22FE99000, v11, v12, "Empty proxied releases, production clients will reject this proxy node attestation", v13, 2u);
      MEMORY[0x23190EFF0](v13, -1, -1);
    }

    goto LABEL_13;
  }

  v1 = **(v0 + 160);
  if (*(v1 + 16) && (v2 = sub_22FFA62AC(&type metadata for TransparencyPolicy, &protocol witness table for TransparencyPolicy, 0x44657361656C6572, 0xED00007473656769), (v3 & 1) != 0))
  {
    sub_22FEBF2A4(*(v1 + 56) + 32 * v2, v0 + 48);
    sub_22FEAEA34(v0 + 48, &qword_27DAF1A78, &unk_22FFB3A50);
    *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A78, &unk_22FFB3A50);
    v4 = swift_allocObject();
    *(v0 + 16) = v4;
    if (*(v1 + 16))
    {
      v5 = sub_22FFA62AC(&type metadata for TransparencyPolicy, &protocol witness table for TransparencyPolicy, 0x44657361656C6572, 0xED00007473656769);
      v7 = v6;

      if (v7)
      {
        sub_22FEBF2A4(*(v1 + 56) + 32 * v5, v4 + 16);
        goto LABEL_16;
      }
    }

    else
    {
    }

    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
  }

  else
  {
    v8 = *(v0 + 152);
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    sub_22FEAEA34(v0 + 48, &qword_27DAF1A78, &unk_22FFB3A50);
    v9 = sub_22FECD238(v8);
    v15 = MEMORY[0x277CC9318];
    v49[3] = MEMORY[0x277CC9318];
    v49[0] = v9;
    v49[1] = v16;
    v17 = v9;
    v18 = v16;
    sub_22FEA5608(v9, v16);
    sub_22FECBD14(v49, &type metadata for TransparencyPolicy, &protocol witness table for TransparencyPolicy, 0x44657361656C6572, 0xED00007473656769);
    *(v0 + 40) = v15;
    *(v0 + 16) = v17;
    *(v0 + 24) = v18;
  }

LABEL_16:
  sub_22FEBF2A4(v0 + 16, v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  if (swift_dynamicCast())
  {
    v19 = *(v0 + 192);
    v21 = *(v0 + 112);
    v20 = *(v0 + 120);
    *(v0 + 128) = v21;
    *(v0 + 136) = v20;
    v22 = swift_task_alloc();
    *(v22 + 16) = v0 + 128;
    LOBYTE(v19) = sub_22FECE328(sub_22FECE3D8, v22, v19);

    if (v19)
    {
      if (qword_27DAF1260 != -1)
      {
        swift_once();
      }

      v23 = sub_22FFB12F8();
      __swift_project_value_buffer(v23, qword_27DAF1D20);
      sub_22FEA5608(v21, v20);
      v24 = sub_22FFB12D8();
      v25 = sub_22FFB1848();
      sub_22FEA55AC(v21, v20);
      if (os_log_type_enabled(v24, v25))
      {
        log = v24;
        v26 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v49[0] = v43;
        buf = v26;
        *v26 = 136315138;
        v45 = v25;
        sub_22FEA5608(v21, v20);
        v47 = v21;
        v48 = v20;
        sub_22FFB0828();
        sub_22FECE640(&qword_281491358, MEMORY[0x277CC92E0], MEMORY[0x277CC92E8]);
        sub_22FFB18A8();
        if (*(v0 + 201))
        {
          v28 = MEMORY[0x277D84F90];
        }

        else
        {
          v28 = MEMORY[0x277D84F90];
          v33 = MEMORY[0x277D84B78];
          v34 = MEMORY[0x277D84BC0];
          do
          {
            v35 = *(v0 + 200);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3750, &qword_22FFB35F0);
            v36 = swift_allocObject();
            *(v36 + 16) = xmmword_22FFB2D10;
            *(v36 + 56) = v33;
            *(v36 + 64) = v34;
            *(v36 + 32) = v35;
            v37 = sub_22FFB14D8();
            v39 = v38;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_22FEC2E8C(0, *(v28 + 2) + 1, 1, v28);
            }

            v41 = *(v28 + 2);
            v40 = *(v28 + 3);
            if (v41 >= v40 >> 1)
            {
              v28 = sub_22FEC2E8C((v40 > 1), v41 + 1, 1, v28);
            }

            *(v28 + 2) = v41 + 1;
            v42 = &v28[16 * v41];
            *(v42 + 4) = v37;
            *(v42 + 5) = v39;
            sub_22FFB18A8();
          }

          while (*(v0 + 201) != 1);
        }

        (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));
        *(v0 + 144) = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAF3740, &unk_22FFB4290);
        sub_22FEB0F00();
        v29 = sub_22FFB1458();
        v31 = v30;

        v32 = sub_22FF9E448(v29, v31, v49);

        *(buf + 4) = v32;
        _os_log_impl(&dword_22FE99000, log, v45, "release sha256:%s is covered by proxy node attestation", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x23190EFF0](v43, -1, -1);
        MEMORY[0x23190EFF0](buf, -1, -1);

        sub_22FEA55AC(v47, v48);
      }

      else
      {
        sub_22FEA55AC(v21, v20);
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_13:

      v14 = *(v0 + 8);
      goto LABEL_25;
    }

    sub_22FECDA1C();
    swift_allocError();
    swift_willThrow();
    sub_22FEA55AC(v21, v20);
  }

  else
  {
    sub_22FECDA1C();
    swift_allocError();
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v14 = *(v0 + 8);
LABEL_25:

  return v14();
}

char *sub_22FECD238(uint64_t a1)
{
  v38 = a1;
  v33 = sub_22FFB13C8();
  v37 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_22FFB0E58();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Proto_AttestationBundle(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AttestationBundle(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Release(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v32 - v15;
  v17 = sub_22FFB1398();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FECE510(v38, v10, type metadata accessor for AttestationBundle);
  sub_22FECE510(v10, v7, type metadata accessor for Proto_AttestationBundle);
  v21 = v43;
  sub_22FF68C5C(v7, 0, 0, v14);
  sub_22FECE5E0(v10, type metadata accessor for AttestationBundle);
  if (!v21)
  {
    v43 = v20;
    v32 = v17;
    v38 = v18;
    v22 = v33;
    sub_22FECE578(v14, v16, type metadata accessor for Release);
    sub_22FFB0E48();
    sub_22FECE640(&qword_28148F578, type metadata accessor for Release, &protocol conformance descriptor for Release);
    sub_22FFB0E38();
    sub_22FFB0E18();
    v23 = sub_22FF9F990();
    v25 = v24;

    (*(v34 + 8))(v4, v35);
    sub_22FECE640(&qword_28148F198, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    v26 = v36;
    sub_22FFB1388();
    sub_22FEA5608(v23, v25);
    sub_22FF9EA78(v23, v25, v26);
    v35 = 0;
    sub_22FEA55AC(v23, v25);
    sub_22FFB1368();
    sub_22FEA55AC(v23, v25);
    sub_22FECE5E0(v16, type metadata accessor for Release);
    (*(v37 + 8))(v26, v22);
    v27 = v32;
    v41 = v32;
    v42 = sub_22FECE640(&qword_28148F1C0, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
    v29 = v38;
    v30 = v43;
    (*(v38 + 16))(boxed_opaque_existential_1, v43, v27);
    __swift_project_boxed_opaque_existential_1(v40, v41);
    sub_22FFB0618();
    (*(v29 + 8))(v30, v27);
    v4 = v39;
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  return v4;
}

uint64_t sub_22FECD7FC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return ProxiedReleasePolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t ProxiedReleasePolicy.Error.hashValue.getter()
{
  sub_22FFB1CA8();
  MEMORY[0x23190E460](0);
  return sub_22FFB1CF8();
}

uint64_t sub_22FECD914()
{
  sub_22FFB1CA8();
  MEMORY[0x23190E460](0);
  return sub_22FFB1CF8();
}

uint64_t sub_22FECD958()
{
  sub_22FFB1CA8();
  MEMORY[0x23190E460](0);
  return sub_22FFB1CF8();
}

char *sub_22FECD998(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FECDB9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22FECD9B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FECE14C(a1, a2, a3, *v3, &qword_27DAF1D68, &qword_22FFBF9F0, MEMORY[0x277D6A8E8]);
  *v3 = result;
  return result;
}

char *sub_22FECD9FC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FECDCE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_22FECDA1C()
{
  result = qword_27DAF1D48;
  if (!qword_27DAF1D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1D48);
  }

  return result;
}

void *sub_22FECDA70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FECE14C(a1, a2, a3, *v3, &qword_27DAF1D70, &qword_22FFB43C8, type metadata accessor for TransparencyLogProofs);
  *v3 = result;
  return result;
}

char *sub_22FECDAB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FECDDEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22FECDAD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FECDF20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22FECDAF4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FECE14C(a1, a2, a3, *v3, &qword_27DAF1D78, &qword_22FFB43D8, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
  *v3 = result;
  return result;
}

char *sub_22FECDB38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FECE040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22FECDB58(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22FECE14C(a1, a2, a3, *v3, &qword_27DAF1D58, &qword_22FFB43B8, type metadata accessor for Proto_SealedHash.Entry);
  *v3 = result;
  return result;
}

char *sub_22FECDB9C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C48, &qword_22FFB43E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_22FECDCE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C58, &qword_22FFB3FC8);
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

char *sub_22FECDDEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1538, &qword_22FFB2D70);
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

char *sub_22FECDF20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C60, &qword_22FFB3FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_22FECE040(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1C30, &qword_22FFB3FA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22FECE14C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

uint64_t sub_22FECE328(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v12 = v9;
      sub_22FEA5608(v9, *(&v9 + 1));
      v10 = a1(&v12);
      sub_22FEA55AC(v12, *(&v12 + 1));
      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

unint64_t sub_22FECE418()
{
  result = qword_27DAF1D50;
  if (!qword_27DAF1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1D50);
  }

  return result;
}

uint64_t sub_22FECE46C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_22FECE4B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22FECE510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FECE578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FECE5E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22FECE640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FECE688()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_28148F7B0);
  __swift_project_value_buffer(v0, qword_28148F7B0);
  return sub_22FFB12E8();
}

uint64_t static ProxiedReleaseTransparencyPolicy.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28148F7A8 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB12F8();
  v3 = __swift_project_value_buffer(v2, qword_28148F7B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ProxiedReleaseTransparencyPolicy.init(verifier:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22FE9B84C(a1, a2);
  *(a2 + 40) = 1;
  return result;
}

uint64_t ProxiedReleaseTransparencyPolicy.init(verifier:validateProofs:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  result = sub_22FE9B84C(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t ProxiedReleaseTransparencyPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v3[28] = type metadata accessor for TransparencyLogError(0);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  v3[30] = swift_task_alloc();
  v4 = sub_22FFB0908();
  v3[31] = v4;
  v3[32] = *(v4 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D80, &unk_22FFB4400);
  v3[35] = swift_task_alloc();
  v5 = type metadata accessor for TransparencyLogProofs(0);
  v3[36] = v5;
  v3[37] = *(v5 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = *(type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0) - 8);
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1D38, &qword_22FFB4270);
  v3[42] = swift_task_alloc();
  v6 = sub_22FFB0F18();
  v3[43] = v6;
  v3[44] = *(v6 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata(0);
  v3[47] = swift_task_alloc();
  sub_22FFB0FE8();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = type metadata accessor for Proto_AppData(0);
  v3[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FECEB80, 0, 0);
}

uint64_t sub_22FECEB80()
{
  v65 = v0;
  v1 = *(v0 + 200);
  v2 = (*(v1 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__appData);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  *(v0 + 168) = *v2;
  *(v0 + 176) = v4;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  sub_22FEA5608(v3, v4);
  sub_22FFB0FD8();
  sub_22FED0C68(qword_2814906B0, type metadata accessor for Proto_AppData, &protocol conformance descriptor for Proto_AppData);
  v5 = 0;
  sub_22FFB1188();
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  v8 = *(v0 + 336);
  sub_22FEBF3A4(*(v0 + 408) + *(*(v0 + 400) + 32), v8, &qword_27DAF1D38, &qword_22FFB4270);
  v9 = *(v7 + 48);
  if (v9(v8, 1, v6) == 1)
  {
    v10 = *(v0 + 336);
    v11 = *(v0 + 344);
    sub_22FFB0F08();
    if (v9(v10, 1, v11) != 1)
    {
      sub_22FEAEA34(*(v0 + 336), &qword_27DAF1D38, &qword_22FFB4270);
    }
  }

  else
  {
    (*(*(v0 + 352) + 32))(*(v0 + 360), *(v0 + 336), *(v0 + 344));
  }

  v12 = *(v0 + 376);
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  sub_22FFB0FD8();
  sub_22FED0C68(qword_281490F70, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata, &protocol conformance descriptor for PrivateCloudCompute_ProxyNodeMetadata);
  sub_22FFB1158();
  v13 = **(v0 + 376);
  *(v0 + 416) = v13;
  v14 = *(v13 + 16);
  *(v0 + 424) = v14;
  if (!v14)
  {
    if (qword_28148F7A8 != -1)
    {
      swift_once();
    }

    v39 = sub_22FFB12F8();
    __swift_project_value_buffer(v39, qword_28148F7B0);
    v40 = sub_22FFB12D8();
    v41 = sub_22FFB1838();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_22FE99000, v40, v41, "Proxy is not providing proxied releases", v42, 2u);
      MEMORY[0x23190EFF0](v42, -1, -1);
    }

    v43 = *(v0 + 408);
    v32 = *(v0 + 376);

    sub_22FED0D14();
    v44 = swift_allocError();
    *v45 = 0x8000000000000000;
    swift_willThrow();
    v36 = v44;
    v37 = type metadata accessor for Proto_AppData;
    v38 = v43;
    goto LABEL_19;
  }

  v15 = *(v0 + 328);
  v16 = *(*(v0 + 312) + 80);
  *(v0 + 488) = v16;
  *(v0 + 432) = 0;
  if (*(v13 + 16))
  {
    sub_22FED0CB0(v13 + ((v16 + 32) & ~v16), v15);
    v5 = sub_22FEB0B54(*v15, *(v15 + 8));
    v12 = v17;
    *(v0 + 440) = v5;
    *(v0 + 448) = v17;
    if (qword_28148F7A8 == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_8:
  v18 = sub_22FFB12F8();
  *(v0 + 456) = v18;
  *(v0 + 464) = __swift_project_value_buffer(v18, qword_28148F7B0);

  v19 = sub_22FFB12D8();
  v20 = sub_22FFB1848();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v62 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_22FF9E448(v5, v12, &v62);
    _os_log_impl(&dword_22FE99000, v19, v20, "Verifying inclusion of proxied release %{public}s in transparency log", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x23190EFF0](v22, -1, -1);
    MEMORY[0x23190EFF0](v21, -1, -1);
  }

  v23 = *(v0 + 320);
  v24 = *(v0 + 288);
  v25 = *(v0 + 296);
  v26 = *(v0 + 280);
  sub_22FED0CB0(*(v0 + 328), v23);
  sub_22FF6F818(v23, v26);
  if ((*(v25 + 48))(v26, 1, v24) == 1)
  {
    v27 = *(v0 + 280);

    sub_22FEAEA34(v27, &qword_27DAF1D80, &unk_22FFB4400);
    v28 = sub_22FFB12D8();
    v29 = sub_22FFB1838();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22FE99000, v28, v29, "Proxied release metadata is missing transparency proofs", v30, 2u);
      MEMORY[0x23190EFF0](v30, -1, -1);
    }

    v31 = *(v0 + 408);
    v32 = *(v0 + 376);
    v33 = *(v0 + 328);

    sub_22FED0D14();
    v34 = swift_allocError();
    *v35 = 0x8000000000000000;
    swift_willThrow();
    v36 = v34;
    sub_22FED0DCC(v31, type metadata accessor for Proto_AppData);
    v37 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease;
    v38 = v33;
LABEL_19:
    sub_22FED0DCC(v38, v37);
    sub_22FED0DCC(v32, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
    if (*(*(v0 + 216) + 40) == 1)
    {
      swift_willThrow();

      v46 = *(v0 + 8);
    }

    else
    {
      if (qword_28148F7A8 != -1)
      {
        swift_once();
      }

      v47 = sub_22FFB12F8();
      __swift_project_value_buffer(v47, qword_28148F7B0);
      v48 = sub_22FFB12D8();
      v49 = sub_22FFB1848();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_22FE99000, v48, v49, "Failing transparency checks open since validateProofs is off", v50, 2u);
        MEMORY[0x23190EFF0](v50, -1, -1);
      }

      v46 = *(v0 + 8);
    }

    return v46();
  }

  v52 = *(v0 + 328);
  v53 = *(v0 + 216);
  sub_22FED0D68(*(v0 + 280), *(v0 + 304));
  v54 = v53[3];
  v55 = v53[4];
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v56 = *v52;
  v57 = v52[1];
  v61 = (*(v55 + 8) + **(v55 + 8));
  v58 = swift_task_alloc();
  *(v0 + 472) = v58;
  *v58 = v0;
  v58[1] = sub_22FECF550;
  v59 = *(v0 + 304);
  v60 = *(v0 + 272);

  return v61(v60, v56, v57, v59, v54, v55);
}

uint64_t sub_22FECF550()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_22FED0180;
  }

  else
  {
    v2 = sub_22FECF664;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FECF664()
{
  v73 = v0;
  *(v0 + 192) = **(v0 + 208);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  AttestationPolicyContext.proofExpiration.getter(v4);
  v5 = (*(v3 + 48))(v4, 1, v2);
  v6 = *(v0 + 248);
  v7 = *(v0 + 256);
  if (v5 == 1)
  {
    v8 = *(v0 + 272);
    sub_22FEAEA34(*(v0 + 240), &qword_27DAF1510, &qword_22FFB3800);
    *(v0 + 40) = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(v7 + 16))(boxed_opaque_existential_1, v8, v6);
    sub_22FEBF3A4(v0 + 16, v0 + 48, &qword_27DAF1A78, &unk_22FFB3A50);
    sub_22FECBD14(v0 + 48, &type metadata for TransparencyPolicy, &protocol witness table for TransparencyPolicy, 0x707845666F6F7270, 0xEF6E6F6974617269);
    (*(v7 + 8))(v8, v6);
    v10 = v0 + 16;
LABEL_5:
    sub_22FEAEA34(v10, &qword_27DAF1A78, &unk_22FFB3A50);
    goto LABEL_7;
  }

  (*(v7 + 32))(*(v0 + 264), *(v0 + 240), *(v0 + 248));
  v11 = sub_22FFB0888();
  v13 = *(v0 + 264);
  v12 = *(v0 + 272);
  v14 = *(v0 + 248);
  v15 = *(v0 + 256);
  if (v11)
  {
    *(v0 + 104) = v14;
    v16 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
    (*(v15 + 16))(v16, v12, v14);
    sub_22FEBF3A4(v0 + 80, v0 + 112, &qword_27DAF1A78, &unk_22FFB3A50);
    sub_22FECBD14(v0 + 112, &type metadata for TransparencyPolicy, &protocol witness table for TransparencyPolicy, 0x707845666F6F7270, 0xEF6E6F6974617269);
    v17 = *(v15 + 8);
    p_base_meths = (v15 + 8);
    v17(v13, v14);
    v17(v12, v14);
    v10 = v0 + 80;
    goto LABEL_5;
  }

  v18 = *(v15 + 8);
  p_base_meths = (v15 + 8);
  v18(*(v0 + 264), *(v0 + 248));
  v18(v12, v14);
LABEL_7:

  v19 = sub_22FFB12D8();
  v20 = sub_22FFB1848();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 448);
  if (v21)
  {
    v23 = *(v0 + 440);
    v24 = *(v0 + 304);
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v72[0] = v26;
    *v25 = 136446210;
    v27 = sub_22FF9E448(v23, v22, v72);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_22FE99000, v19, v20, "Release %{public}s is included in transparency log", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x23190EFF0](v26, -1, -1);
    MEMORY[0x23190EFF0](v25, -1, -1);
  }

  else
  {
    v24 = *(v0 + 304);
  }

  sub_22FED0DCC(v24, type metadata accessor for TransparencyLogProofs);
  v28 = *(v0 + 424);
  v29 = *(v0 + 432) + 1;
  sub_22FED0DCC(*(v0 + 328), type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
  if (v29 == v28)
  {
    if (qword_28148F7A8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 456), qword_28148F7B0);
    v30 = sub_22FFB12D8();
    v31 = sub_22FFB1848();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_22FE99000, v30, v31, "AttestationBundle passed ProxiedReleaseTransparencyPolicy: All proxied releases are included in transparency log", v32, 2u);
      MEMORY[0x23190EFF0](v32, -1, -1);
    }

    v33 = *(v0 + 408);
    v34 = *(v0 + 376);

    sub_22FED0DCC(v33, type metadata accessor for Proto_AppData);
    sub_22FED0DCC(v34, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
    goto LABEL_16;
  }

  v37 = *(v0 + 432) + 1;
  *(v0 + 432) = v37;
  v38 = *(v0 + 416);
  if (v37 >= *(v38 + 16))
  {
    __break(1u);
  }

  else
  {
    v39 = *(v0 + 328);
    sub_22FED0CB0(v38 + ((*(v0 + 488) + 32) & ~*(v0 + 488)) + *(*(v0 + 312) + 72) * v37, v39);
    v22 = sub_22FEB0B54(*v39, *(v39 + 8));
    v20 = v40;
    *(v0 + 440) = v22;
    *(v0 + 448) = v40;
    p_base_meths = &PrivateCloudCompute_TransparencyLog_LogConsistency._StorageClass.base_meths;
    if (qword_28148F7A8 == -1)
    {
      goto LABEL_22;
    }
  }

  swift_once();
LABEL_22:
  v41 = sub_22FFB12F8();
  *(v0 + 456) = v41;
  *(v0 + 464) = __swift_project_value_buffer(v41, qword_28148F7B0);

  v42 = sub_22FFB12D8();
  v43 = sub_22FFB1848();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v72[0] = v45;
    *v44 = 136446210;
    *(v44 + 4) = sub_22FF9E448(v22, v20, v72);
    _os_log_impl(&dword_22FE99000, v42, v43, "Verifying inclusion of proxied release %{public}s in transparency log", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x23190EFF0](v45, -1, -1);
    MEMORY[0x23190EFF0](v44, -1, -1);
  }

  v46 = *(v0 + 320);
  v47 = *(v0 + 288);
  v48 = *(v0 + 296);
  v49 = *(v0 + 280);
  sub_22FED0CB0(*(v0 + 328), v46);
  sub_22FF6F818(v46, v49);
  if ((*(v48 + 48))(v49, 1, v47) == 1)
  {
    v50 = *(v0 + 280);

    sub_22FEAEA34(v50, &qword_27DAF1D80, &unk_22FFB4400);
    v51 = sub_22FFB12D8();
    v52 = sub_22FFB1838();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_22FE99000, v51, v52, "Proxied release metadata is missing transparency proofs", v53, 2u);
      MEMORY[0x23190EFF0](v53, -1, -1);
    }

    v54 = *(v0 + 408);
    v55 = *(v0 + 376);
    v56 = *(v0 + 328);

    sub_22FED0D14();
    v57 = swift_allocError();
    *v58 = 0x8000000000000000;
    swift_willThrow();
    sub_22FED0DCC(v54, type metadata accessor for Proto_AppData);
    sub_22FED0DCC(v56, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
    sub_22FED0DCC(v55, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
    if (*(*(v0 + 216) + 40))
    {
      swift_willThrow();

      v35 = *(v0 + 8);
      goto LABEL_17;
    }

    if (p_base_meths[245] != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v41, qword_28148F7B0);
    v68 = sub_22FFB12D8();
    v69 = sub_22FFB1848();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_22FE99000, v68, v69, "Failing transparency checks open since validateProofs is off", v70, 2u);
      MEMORY[0x23190EFF0](v70, -1, -1);
    }

LABEL_16:

    v35 = *(v0 + 8);
LABEL_17:

    return v35();
  }

  v59 = *(v0 + 328);
  v60 = *(v0 + 216);
  sub_22FED0D68(*(v0 + 280), *(v0 + 304));
  v61 = v60[3];
  v62 = v60[4];
  __swift_project_boxed_opaque_existential_1(v60, v61);
  v63 = *v59;
  v64 = v59[1];
  v71 = (*(v62 + 8) + **(v62 + 8));
  v65 = swift_task_alloc();
  *(v0 + 472) = v65;
  *v65 = v0;
  v65[1] = sub_22FECF550;
  v66 = *(v0 + 304);
  v67 = *(v0 + 272);

  return v71(v67, v63, v64, v66, v61, v62);
}

uint64_t sub_22FED0180()
{
  v77 = v0;
  v1 = *(v0 + 480);
  *(v0 + 184) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DAF1D90, &qword_22FFB4410);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 232);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 2:

        v21 = *v3;

        v22 = v21;
        v23 = sub_22FFB12D8();
        v24 = sub_22FFB1838();

        v25 = os_log_type_enabled(v23, v24);
        v26 = *(v0 + 448);
        if (v25)
        {
          v27 = *(v0 + 440);
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          v76[0] = v30;
          *v28 = 136446466;
          v31 = sub_22FF9E448(v27, v26, v76);

          *(v28 + 4) = v31;
          *(v28 + 12) = 2114;
          v32 = v21;
          v33 = _swift_stdlib_bridgeErrorToNSError();
          *(v28 + 14) = v33;
          *v29 = v33;
          _os_log_impl(&dword_22FE99000, v23, v24, "SWTransparency threw unknown error for release %{public}s: %{public}@", v28, 0x16u);
          sub_22FEAEA34(v29, &qword_27DAF1680, &unk_22FFB4B10);
          MEMORY[0x23190EFF0](v29, -1, -1);
          __swift_destroy_boxed_opaque_existential_1(v30);
          MEMORY[0x23190EFF0](v30, -1, -1);
          MEMORY[0x23190EFF0](v28, -1, -1);
        }

        else
        {
        }

        v61 = *(v0 + 408);
        v62 = *(v0 + 376);
        v63 = *(v0 + 328);
        v64 = v21 | 0x4000000000000000;
        v65 = *(v0 + 304);
        sub_22FED0D14();
        v66 = swift_allocError();
        *v67 = v64;
        v75 = v66;
        swift_willThrow();
        sub_22FED0DCC(v65, type metadata accessor for TransparencyLogProofs);
        sub_22FED0DCC(v61, type metadata accessor for Proto_AppData);
        sub_22FED0DCC(v63, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
        v68 = v62;
        goto LABEL_23;
      case 13:

        v13 = sub_22FFB12D8();
        v14 = sub_22FFB1838();

        v15 = os_log_type_enabled(v13, v14);
        v16 = *(v0 + 448);
        if (v15)
        {
          v17 = *(v0 + 440);
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v76[0] = v19;
          *v18 = 136446210;
          v20 = sub_22FF9E448(v17, v16, v76);

          *(v18 + 4) = v20;
          _os_log_impl(&dword_22FE99000, v13, v14, "Release %{public}s has expired in transparency log", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v19);
          MEMORY[0x23190EFF0](v19, -1, -1);
          MEMORY[0x23190EFF0](v18, -1, -1);
        }

        else
        {
        }

        v54 = *(v0 + 408);
        v55 = *(v0 + 376);
        v56 = *(v0 + 328);
        v57 = *(v0 + 304);
        sub_22FED0D14();
        v58 = swift_allocError();
        v60 = 0x8000000000000010;
        goto LABEL_22;
      case 10:

        v5 = sub_22FFB12D8();
        v6 = sub_22FFB1838();

        v7 = os_log_type_enabled(v5, v6);
        v8 = *(v0 + 448);
        if (v7)
        {
          v9 = *(v0 + 440);
          v10 = swift_slowAlloc();
          v11 = swift_slowAlloc();
          v76[0] = v11;
          *v10 = 136446210;
          v12 = sub_22FF9E448(v9, v8, v76);

          *(v10 + 4) = v12;
          _os_log_impl(&dword_22FE99000, v5, v6, "Release %{public}s is not included in transparency log, this is likely indicative of using the wrong transparency log", v10, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v11);
          MEMORY[0x23190EFF0](v11, -1, -1);
          MEMORY[0x23190EFF0](v10, -1, -1);
        }

        else
        {
        }

        v54 = *(v0 + 408);
        v55 = *(v0 + 376);
        v56 = *(v0 + 328);
        v57 = *(v0 + 304);
        sub_22FED0D14();
        v58 = swift_allocError();
        v60 = 0x8000000000000008;
LABEL_22:
        *v59 = v60;
        v75 = v58;
        swift_willThrow();
        sub_22FED0DCC(v57, type metadata accessor for TransparencyLogProofs);
        sub_22FED0DCC(v54, type metadata accessor for Proto_AppData);
        sub_22FED0DCC(v56, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
        v68 = v55;
LABEL_23:
        sub_22FED0DCC(v68, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);

        goto LABEL_24;
    }

    sub_22FED0DCC(v3, type metadata accessor for TransparencyLogError);
  }

  v34 = *(v0 + 480);

  v35 = v34;
  v36 = sub_22FFB12D8();
  v37 = sub_22FFB1838();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = *(v0 + 480);
    v40 = *(v0 + 440);
    v39 = *(v0 + 448);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v76[0] = v43;
    *v41 = 136446466;
    v44 = sub_22FF9E448(v40, v39, v76);

    *(v41 + 4) = v44;
    *(v41 + 12) = 2114;
    v45 = v38;
    v46 = _swift_stdlib_bridgeErrorToNSError();
    *(v41 + 14) = v46;
    *v42 = v46;
    _os_log_impl(&dword_22FE99000, v36, v37, "SWTransparency threw unknown error for release %{public}s: %{public}@", v41, 0x16u);
    sub_22FEAEA34(v42, &qword_27DAF1680, &unk_22FFB4B10);
    MEMORY[0x23190EFF0](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x23190EFF0](v43, -1, -1);
    MEMORY[0x23190EFF0](v41, -1, -1);
  }

  else
  {
  }

  v47 = *(v0 + 408);
  v48 = *(v0 + 376);
  v49 = *(v0 + 328);
  v50 = *(v0 + 304);
  v51 = *(v0 + 480) | 0x4000000000000000;
  sub_22FED0D14();
  v52 = swift_allocError();
  *v53 = v51;
  v75 = v52;
  swift_willThrow();
  sub_22FED0DCC(v50, type metadata accessor for TransparencyLogProofs);
  sub_22FED0DCC(v47, type metadata accessor for Proto_AppData);
  sub_22FED0DCC(v49, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease);
  sub_22FED0DCC(v48, type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata);
LABEL_24:
  if (*(*(v0 + 216) + 40) == 1)
  {
    swift_willThrow();

    v69 = *(v0 + 8);
  }

  else
  {
    if (qword_28148F7A8 != -1)
    {
      swift_once();
    }

    v70 = sub_22FFB12F8();
    __swift_project_value_buffer(v70, qword_28148F7B0);
    v71 = sub_22FFB12D8();
    v72 = sub_22FFB1848();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_22FE99000, v71, v72, "Failing transparency checks open since validateProofs is off", v73, 2u);
      MEMORY[0x23190EFF0](v73, -1, -1);
    }

    v69 = *(v0 + 8);
  }

  return v69();
}

uint64_t sub_22FED0BC4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return ProxiedReleaseTransparencyPolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t sub_22FED0C68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FED0CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PrivateCloudCompute_ProxyNodeMetadata.ProxiedRelease(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FED0D14()
{
  result = qword_27DAF1D88;
  if (!qword_27DAF1D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1D88);
  }

  return result;
}

uint64_t sub_22FED0D68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransparencyLogProofs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FED0DCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
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

uint64_t sub_22FED0E40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_22FED0E88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t X509FingerprintPolicy.init<A>(fingerprints:hashFunction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FFB12E8();
  (*(v11 + 16))(v13, a1, a3);
  sub_22FEBF348();
  v14 = sub_22FFB17E8();
  (*(v11 + 8))(a1, a3);
  result = type metadata accessor for X509FingerprintPolicy(0, a2, a4, v15);
  *(a6 + *(result + 36)) = v14;
  return result;
}

uint64_t sub_22FED1050(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v28 = MEMORY[0x277D84F90];
  sub_22FECDAB4(0, v1, 0);
  v2 = v28;
  v4 = a1 + 56;
  result = sub_22FFB1948();
  v6 = result;
  v7 = 0;
  v25 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v26 = *(a1 + 36);
    v10 = (*(a1 + 48) + 16 * v6);
    v12 = *v10;
    v11 = v10[1];
    sub_22FEA5608(*v10, v11);
    v27 = sub_22FEB0B54(v12, v11);
    v14 = v13;
    result = sub_22FEA55AC(v12, v11);
    v16 = *(v28 + 16);
    v15 = *(v28 + 24);
    if (v16 >= v15 >> 1)
    {
      result = sub_22FECDAB4((v15 > 1), v16 + 1, 1);
    }

    *(v28 + 16) = v16 + 1;
    v17 = v28 + 16 * v16;
    *(v17 + 32) = v27;
    *(v17 + 40) = v14;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v18 = *(a1 + 56 + 8 * v9);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v9 << 6;
      v21 = v9 + 1;
      v22 = (a1 + 64 + 8 * v9);
      while (v21 < (v8 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_22FED2064(v6, v26, 0);
          v8 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_22FED2064(v6, v26, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v25)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t X509FingerprintPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a2;
  v4[5] = *(a3 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = *(a3 + 24);
  v4[8] = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[9] = AssociatedTypeWitness;
  v4[10] = *(AssociatedTypeWitness - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FED13F0, 0, 0);
}

uint64_t sub_22FED13F0()
{
  v65 = v0;
  AttestationPolicyContext.validatedCert.getter(&v60);
  if (v60)
  {
    v1 = *(&v60 + 1);
    v2 = v63;
    v3 = v0[12];
    v4 = v0[9];
    v6 = v0[3];
    v5 = v0[4];
    v56 = v61;
    v57 = v60;
    v58 = v62;
    v59 = v64;
    ProvisioningCertificate.fingerprint<A>(using:)(v0[8], v0[8], v0[7]);
    v55 = v6;
    v7 = *(v5 + *(v6 + 36));
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v9 = sub_22FEC4190(v3, v4, *(AssociatedConformanceWitness + 32));
    v11 = v10;
    v12 = sub_22FED1940(v9, v10, v7);
    sub_22FEA55AC(v9, v11);
    v13 = v0[10];
    v14 = v0[6];
    if (v12)
    {
      (*(v13 + 8))(v0[12], v0[9]);
      sub_22FED1EDC(v57, v1, v56, v58, v2, v59);

      v15 = v0[1];
      goto LABEL_12;
    }

    v53 = v1;
    v54 = v2;
    v23 = v0[4];
    v24 = v0[5];
    v25 = v0[3];
    (*(v13 + 16))(v0[11], v0[12], v0[9]);
    (*(v24 + 16))(v14, v23, v25);
    v26 = sub_22FFB12D8();
    v27 = sub_22FFB1838();
    v28 = os_log_type_enabled(v26, v27);
    v30 = v0[10];
    v29 = v0[11];
    v31 = v0[9];
    v32 = v0[5];
    if (v28)
    {
      v49 = v0[6];
      v50 = v0[3];
      v33 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v60 = v52;
      *v33 = 136446466;
      v34 = sub_22FF9F994(v31, AssociatedConformanceWitness);
      log = v26;
      v36 = v35;
      v37 = *(v30 + 8);
      v37(v29, v31);
      v38 = sub_22FF9E448(v34, v36, &v60);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2082;
      v39 = sub_22FED1050(*(v49 + *(v55 + 36)));
      (*(v32 + 8))(v49, v50);
      v40 = MEMORY[0x23190DEA0](v39, MEMORY[0x277D837D0]);
      v42 = v41;

      v43 = sub_22FF9E448(v40, v42, &v60);

      *(v33 + 14) = v43;
      _os_log_impl(&dword_22FE99000, log, v27, "Fingerprint %{public}s not a member of %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190EFF0](v52, -1, -1);
      MEMORY[0x23190EFF0](v33, -1, -1);
    }

    else
    {
      (*(v32 + 8))(v0[6], v0[3]);

      v37 = *(v30 + 8);
      v37(v29, v31);
    }

    v45 = v0[12];
    v46 = v0[9];
    type metadata accessor for X509FingerprintPolicy.Error(0, v0[8], v0[7], v44);
    swift_getWitnessTable();
    swift_allocError();
    *v47 = 1;
    swift_willThrow();
    sub_22FED1EDC(v57, v53, v56, v58, v54, v59);
    v37(v45, v46);
  }

  else
  {
    v16 = sub_22FFB12D8();
    v17 = sub_22FFB1838();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22FE99000, v16, v17, "Missing provisioning certificate", v18, 2u);
      MEMORY[0x23190EFF0](v18, -1, -1);
    }

    v20 = v0[7];
    v19 = v0[8];

    type metadata accessor for X509FingerprintPolicy.Error(0, v19, v20, v21);
    swift_getWitnessTable();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
  }

  v15 = v0[1];
LABEL_12:

  return v15();
}

uint64_t sub_22FED1940(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*(a3 + 16))
  {
    sub_22FFB1CA8();
    sub_22FFB07F8();
    v6 = sub_22FFB1CF8();
    v7 = a3 + 56;
    v8 = -1 << *(a3 + 32);
    v9 = v6 & ~v8;
    if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      if (a1)
      {
        v11 = 0;
      }

      else
      {
        v11 = a2 == 0xC000000000000000;
      }

      v12 = !v11;
      v42 = v12;
      v13 = a2 >> 62;
      v14 = __OFSUB__(HIDWORD(a1), a1);
      v39 = v14;
      v37 = a2;
      v38 = HIDWORD(a1) - a1;
      v40 = v10;
      v41 = BYTE6(a2);
      v36 = a1;
      while (1)
      {
        v15 = (*(a3 + 48) + 16 * v9);
        v17 = *v15;
        v16 = v15[1];
        v18 = v16 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v18 > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_37;
          }

          v24 = *(v17 + 16);
          v23 = *(v17 + 24);
          v25 = __OFSUB__(v23, v24);
          v22 = v23 - v24;
          if (v25)
          {
            goto LABEL_67;
          }

          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

        else if (v18)
        {
          LODWORD(v22) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_68;
          }

          v22 = v22;
          if (v13 <= 1)
          {
LABEL_34:
            v26 = v41;
            if (v13)
            {
              v26 = v38;
              if (v39)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          v22 = BYTE6(v16);
          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        if (v13 != 2)
        {
          if (!v22)
          {
            return 1;
          }

          goto LABEL_14;
        }

        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        v25 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v25)
        {
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
        }

LABEL_40:
        if (v22 == v26)
        {
          if (v22 < 1)
          {
            return 1;
          }

          if (v18 <= 1)
          {
            if (!v18)
            {
              *v44 = v17;
              *&v44[8] = v16;
              v44[10] = BYTE2(v16);
              v44[11] = BYTE3(v16);
              v44[12] = BYTE4(v16);
              v44[13] = BYTE5(v16);
              sub_22FEA5608(v17, v16);
              sub_22FEEBB68(v44, a1, a2, &v43);
              sub_22FEA55AC(v17, v16);
              if (v43)
              {
                return 1;
              }

LABEL_61:
              v10 = v40;
              goto LABEL_14;
            }

            if (v17 >> 32 < v17)
            {
              goto LABEL_69;
            }

            sub_22FEA5608(v17, v16);
            v31 = sub_22FFB0588();
            if (v31)
            {
              v33 = sub_22FFB05B8();
              if (__OFSUB__(v17, v33))
              {
                goto LABEL_72;
              }

              v31 += v17 - v33;
            }

LABEL_59:
            sub_22FFB05A8();
            v34 = v31;
            a1 = v36;
            a2 = v37;
            sub_22FEEBB68(v34, v36, v37, v44);
            sub_22FEA55AC(v17, v16);
            if (v44[0])
            {
              return 1;
            }

            v7 = a3 + 56;
            goto LABEL_61;
          }

          if (v18 == 2)
          {
            v30 = *(v17 + 16);
            v29 = *(v17 + 24);
            sub_22FEA5608(v17, v16);
            v31 = sub_22FFB0588();
            if (v31)
            {
              v32 = sub_22FFB05B8();
              if (__OFSUB__(v30, v32))
              {
                goto LABEL_71;
              }

              v31 += v30 - v32;
            }

            if (__OFSUB__(v29, v30))
            {
              goto LABEL_70;
            }

            goto LABEL_59;
          }

          *&v44[6] = 0;
          *v44 = 0;
          sub_22FEA5608(v17, v16);
          sub_22FEEBB68(v44, a1, a2, &v43);
          sub_22FEA55AC(v17, v16);
          if (v43)
          {
            return 1;
          }
        }

LABEL_14:
        v9 = (v9 + 1) & v10;
        if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          return 0;
        }
      }

      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v13 < 3;
      if (((v21 | v42) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v22 = 0;
      if (v13 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return 0;
}

uint64_t sub_22FED1D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_22FEAA0D4;

  return X509FingerprintPolicy.evaluate(bundle:context:)(v6, a2, a3);
}

uint64_t X509FingerprintPolicy.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FED1EA0()
{
  sub_22FFB1CA8();
  X509FingerprintPolicy.Error.hash(into:)();
  return sub_22FFB1CF8();
}

void *sub_22FED1EDC(void *result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result)
  {
  }

  return result;
}

void sub_22FED1F54(uint64_t a1)
{
  sub_22FFB12F8();
  if (v1 <= 0x3F)
  {
    sub_22FED2000(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22FED2000(uint64_t a1)
{
  if (!qword_27DAF1E18[0])
  {
    sub_22FEBF348();
    v1 = sub_22FFB17D8();
    if (!v2)
    {
      atomic_store(v1, qword_27DAF1E18);
    }
  }
}

uint64_t sub_22FED2064(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t X509Policy.init(roots:clock:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = type metadata accessor for X509Policy(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 8) = MEMORY[0x277D84F90];
  v12 = v9[8];
  v22 = v12;
  v13 = sub_22FFB0908();
  v14 = *(*(v13 - 8) + 56);
  v14(a3 + v12, 1, 1, v13);
  v15 = a3 + v9[9];
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = (a3 + v9[10]);
  *v16 = 0;
  v16[1] = 0;
  v17 = a2;
  sub_22FEBF3A4(a2, v7, &qword_27DAF1510, &qword_22FFB3800);
  *(v11 + 1) = MEMORY[0x277D84F90];
  v18 = v9[8];
  v14(&v11[v18], 1, 1, v13);
  v19 = &v11[v9[9]];
  *v19 = 0;
  v19[8] = 1;
  v20 = &v11[v9[10]];
  *v11 = 1;
  sub_22FED2C04(v23);
  sub_22FEAEA34(v17, &qword_27DAF1510, &qword_22FFB3800);
  sub_22FEB3E04(v7, &v11[v18]);
  *v20 = 0;
  *(v20 + 1) = 0;
  *v19 = 0;
  v19[8] = 1;
  sub_22FEAEA34(a3 + v22, &qword_27DAF1510, &qword_22FFB3800);
  return sub_22FECB41C(v11, a3);
}

uint64_t type metadata accessor for X509Policy(uint64_t a1)
{
  result = qword_281490B38;
  if (!qword_281490B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22FED22EC(uint64_t a1)
{
  error[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v42 - v4;
  v6 = sub_22FFB0908();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  DCAttestation = SecPolicyCreateDCAttestation();
  if (!DCAttestation)
  {
    sub_22FED466C();
    swift_allocError();
    *v17 = 0x8000000000000004;
    swift_willThrow();
    return;
  }

  v11 = DCAttestation;
  v43 = v9;
  v44 = v7;
  v45 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1ED0, &qword_22FFBF090);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22FFB45C0;
  *(v12 + 32) = v11;
  v47 = v12;
  v13 = type metadata accessor for X509Policy(0);
  v14 = v1 + *(v13 + 28);
  v15 = *(v14 + 8);
  v46 = v11;
  if (v15 == 1)
  {
    v16 = v11;
  }

  else
  {
    v18 = *v14;
    v11 = v11;
    Revocation = SecPolicyCreateRevocation(v18);
    if (!Revocation)
    {

      sub_22FED466C();
      swift_allocError();
      v28 = 0x8000000000000003;
      goto LABEL_17;
    }

    v20 = Revocation;
    MEMORY[0x23190DE60]();
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22FFB1708();
    }

    sub_22FFB1728();

    v11 = v46;
    v12 = v47;
  }

  v21 = sub_22FEB1380(a1, v12);
  if (!v21)
  {

    sub_22FED466C();
    swift_allocError();
    v28 = 0x8000000000000001;
LABEL_17:
    *v27 = v28;
    swift_willThrow();
    goto LABEL_18;
  }

  v22 = v21;
  v23 = v1;
  sub_22FED2AFC();
  type metadata accessor for SecCertificate(0);
  v24 = sub_22FFB16C8();

  v25 = SecTrustSetAnchorCertificates(v22, v24);

  if (v25)
  {

    sub_22FED466C();
    swift_allocError();
    *v26 = v25 | 0x4000000000000000;
    swift_willThrow();

    return;
  }

  Allowed = SecTrustSetAnchorCertificatesOnly(v22, 1u);
  v11 = v46;
  if (Allowed || (Allowed = SecTrustSetNetworkFetchAllowed(v22, v15 ^ 1)) != 0)
  {
    v30 = Allowed;

    sub_22FED466C();
    swift_allocError();
    *v31 = v30 | 0x4000000000000000;
    swift_willThrow();

LABEL_18:
    return;
  }

  sub_22FEBF3A4(v23 + *(v13 + 24), v5, &qword_27DAF1510, &qword_22FFB3800);
  v33 = v44;
  v32 = v45;
  if ((*(v44 + 48))(v5, 1, v45) == 1)
  {
    sub_22FEAEA34(v5, &qword_27DAF1510, &qword_22FFB3800);
  }

  else
  {
    v34 = v43;
    (*(v33 + 32))(v43, v5, v32);
    v35 = sub_22FFB0868();
    v36 = SecTrustSetVerifyDate(v22, v35);

    if (v36)
    {

      sub_22FED466C();
      swift_allocError();
      *v37 = v36 | 0x4000000000000000;
      swift_willThrow();

      (*(v33 + 8))(v34, v32);
      return;
    }

    (*(v33 + 8))(v34, v32);
    v11 = v46;
  }

  error[0] = 0;
  if (SecTrustEvaluateWithError(v22, error))
  {

LABEL_28:
    return;
  }

  if (error[0])
  {
    v38 = error[0];

    type metadata accessor for CFError(0);
    sub_22FED4B54(&qword_27DAF1518, type metadata accessor for CFError, MEMORY[0x277CC9CB8]);
    v39 = swift_allocError();
    *v40 = v38;
    sub_22FED466C();
    swift_allocError();
    *v41 = v39;
    swift_willThrow();

    goto LABEL_28;
  }

  __break(1u);
}

uint64_t X509Policy.init(required:roots:clock:revocation:)@<X0>(char a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = MEMORY[0x277D84F90];
  v8 = type metadata accessor for X509Policy(0);
  v9 = v8[6];
  v10 = sub_22FFB0908();
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = a4 + v8[7];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (a4 + v8[8]);
  *a4 = a1;
  sub_22FED2C04(a2);
  result = sub_22FEB3E04(a3, a4 + v9);
  *v12 = 0;
  v12[1] = 0;
  *v11 = 0;
  *(v11 + 8) = 1;
  return result;
}

double AttestationPolicyContext.validatedCert.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = type metadata accessor for X509Policy(0);
  if (!*(v3 + 16) || (v5 = sub_22FFA62AC(v4, &protocol witness table for X509Policy, 0x65746164696C6176, 0xED00007472654364), (v6 & 1) == 0))
  {
    v8 = 0u;
    v9 = 0u;

    goto LABEL_7;
  }

  sub_22FEBF2A4(*(v3 + 56) + 32 * v5, &v8);

  if (!*(&v9 + 1))
  {
LABEL_7:
    sub_22FEAEA34(&v8, &qword_27DAF1A78, &unk_22FFB3A50);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
  }

  return result;
}

void sub_22FED2AFC()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    sub_22FFB1A38();
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_22FEA5608(v5, *v4);
      v7 = sub_22FFB07B8();
      v8 = SecCertificateCreateWithData(0, v7);

      if (!v8)
      {
        goto LABEL_8;
      }

      ++v3;
      sub_22FEA55AC(v5, v6);
      sub_22FFB1A08();
      sub_22FFB1A48();
      sub_22FFB1A58();
      sub_22FFB1A18();
      v4 += 2;
      if (v2 == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_8:
    __break(1u);
  }
}

uint64_t sub_22FED2C04(unint64_t a1)
{
  v2 = v1;
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:

    v6 = MEMORY[0x277D84F90];
LABEL_17:

    *(v2 + 8) = v6;
    return result;
  }

  v4 = sub_22FFB1AB8();
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v25 = MEMORY[0x277D84F90];
  result = sub_22FECD9FC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = v25;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = MEMORY[0x23190E180](v7, a1);
        v9 = SecCertificateCopyData(v8);
        v10 = sub_22FFB07E8();
        v12 = v11;
        swift_unknownObjectRelease();

        v14 = *(v25 + 16);
        v13 = *(v25 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_22FECD9FC((v13 > 1), v14 + 1, 1);
        }

        ++v7;
        *(v25 + 16) = v14 + 1;
        v15 = v25 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
      }

      while (v4 != v7);
    }

    else
    {
      v16 = 32;
      do
      {
        v17 = *(a1 + v16);
        v18 = SecCertificateCopyData(v17);
        v19 = sub_22FFB07E8();
        v21 = v20;

        v23 = *(v25 + 16);
        v22 = *(v25 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_22FECD9FC((v22 > 1), v23 + 1, 1);
        }

        *(v25 + 16) = v23 + 1;
        v24 = v25 + 16 * v23;
        *(v24 + 32) = v19;
        *(v24 + 40) = v21;
        v16 += 8;
        --v4;
      }

      while (v4);
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t X509Policy.clock.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for X509Policy(0) + 24);

  return sub_22FEB3E04(a1, v3);
}

uint64_t X509Policy.revocation.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for X509Policy(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t X509Policy.revocation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for X509Policy(0);
  v5 = v1 + *(result + 28);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

uint64_t sub_22FED2F78(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = a1[1];
  }

  else
  {
    v4 = 0;
  }

  v5 = (a2 + *(type metadata accessor for X509Policy(0) + 32));
  v6 = *v5;
  v7 = v5[1];
  sub_22FE9AC3C(v2, v3);
  result = sub_22FEA5C80(v6, v7);
  *v5 = v2;
  v5[1] = v4;
  return result;
}

uint64_t X509Policy.body.getter()
{
  v1 = (v0 + *(type metadata accessor for X509Policy(0) + 32));
  v2 = *v1;
  sub_22FE9AC3C(*v1, v1[1]);
  return v2;
}

uint64_t X509Policy.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for X509Policy(0) + 32));
  result = sub_22FEA5C80(*v5, v5[1]);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_22FED30B8()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491688);
  __swift_project_value_buffer(v0, qword_281491688);
  return sub_22FFB12E8();
}

uint64_t X509Policy.init(required:roots:clock:)@<X0>(int a1@<W0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a2;
  v25 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1510, &qword_22FFB3800);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - v7;
  v9 = type metadata accessor for X509Policy(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + 8) = MEMORY[0x277D84F90];
  v13 = v10[8];
  v24 = v13;
  v14 = sub_22FFB0908();
  v15 = *(*(v14 - 8) + 56);
  v15(a4 + v13, 1, 1, v14);
  v16 = a4 + v10[9];
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = (a4 + v10[10]);
  *v17 = 0;
  v17[1] = 0;
  v18 = a3;
  sub_22FEBF3A4(a3, v8, &qword_27DAF1510, &qword_22FFB3800);
  *(v12 + 1) = MEMORY[0x277D84F90];
  v19 = v10[8];
  v15(&v12[v19], 1, 1, v14);
  v20 = &v12[v10[9]];
  *v20 = 0;
  v20[8] = 1;
  v21 = &v12[v10[10]];
  *v12 = v25;
  sub_22FED2C04(v26);
  sub_22FEAEA34(v18, &qword_27DAF1510, &qword_22FFB3800);
  sub_22FEB3E04(v8, &v12[v19]);
  *v21 = 0;
  *(v21 + 1) = 0;
  *v20 = 0;
  v20[8] = 1;
  sub_22FEAEA34(a4 + v24, &qword_27DAF1510, &qword_22FFB3800);
  return sub_22FECB41C(v12, a4);
}

uint64_t X509Policy.verifies(body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22FECB3B8(v3, a3);
  v7 = (a3 + *(type metadata accessor for X509Policy(0) + 32));
  v8 = *v7;
  v9 = v7[1];

  result = sub_22FEA5C80(v8, v9);
  *v7 = a1;
  v7[1] = a2;
  return result;
}

uint64_t X509Policy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v3[26] = type metadata accessor for X509Policy(0);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FED349C, 0, 0);
}

uint64_t sub_22FED349C()
{
  v81 = v0;
  v80 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 184);
  v3 = *(v2 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
  v4 = OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__provisioningCertificateChain;
  swift_beginAccess();
  v5 = *(v3 + v4);
  if (!v5[2])
  {
    sub_22FED466C();
    v10 = swift_allocError();
    *v11 = 0x8000000000000000;
    swift_willThrow();
    goto LABEL_4;
  }

  v6 = v5[4];
  *(v0 + 224) = v6;
  v7 = v5[5];
  *(v0 + 232) = v7;
  sub_22FEA5608(v6, v7);

  v9 = 0;
  sub_22FED22EC(v8);

  v22 = MEMORY[0x277CC9318];
  v23 = MEMORY[0x277CC9300];
  *(v0 + 40) = MEMORY[0x277CC9318];
  *(v0 + 48) = v23;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  v24 = __swift_project_boxed_opaque_existential_1((v0 + 16), v22);
  v25 = *v24;
  v26 = v24[1];
  v27 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v27 != 2)
    {
      *(v0 + 324) = 0;
      *(v0 + 318) = 0;
      sub_22FEA5608(v6, v7);
      v28 = (v0 + 318);
      v29 = (v0 + 318);
      goto LABEL_38;
    }

    v31 = *(v25 + 16);
    v32 = *(v25 + 24);
    sub_22FEA5608(v6, v7);
    v9 = sub_22FFB0588();
    if (v9)
    {
      v33 = sub_22FFB05B8();
      v25 = v31 - v33;
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_51;
      }

      v9 += v25;
    }

    v34 = __OFSUB__(v32, v31);
    v35 = v32 - v31;
    if (!v34)
    {
      goto LABEL_30;
    }

    __break(1u);
LABEL_26:
    v36 = v25;
    v37 = v25 >> 32;
    v35 = v37 - v36;
    if (v37 >= v36)
    {
      sub_22FEA5608(v6, v7);
      v9 = sub_22FFB0588();
      if (!v9)
      {
LABEL_30:
        v39 = sub_22FFB05A8();
        if (v39 >= v35)
        {
          v40 = v35;
        }

        else
        {
          v40 = v39;
        }

        v41 = &v9[v40];
        if (v9)
        {
          v29 = v41;
        }

        else
        {
          v29 = 0;
        }

        v28 = v9;
        goto LABEL_38;
      }

      v38 = sub_22FFB05B8();
      if (!__OFSUB__(v36, v38))
      {
        v9 += v36 - v38;
        goto LABEL_30;
      }

LABEL_52:
      __break(1u);
LABEL_53:
      swift_once();
LABEL_42:
      v55 = v9;
      v56 = sub_22FFB12F8();
      __swift_project_value_buffer(v56, qword_281491688);
      v57 = sub_22FFB12D8();
      v58 = sub_22FFB1848();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_22FE99000, v57, v58, "AttestationBundle passed X509Policy: provisioning identity certificate trusted", v59, 2u);
        MEMORY[0x23190EFF0](v59, -1, -1);
      }

      v61 = *(v0 + 200);
      v60 = *(v0 + 208);

      v62 = v61 + *(v60 + 32);
      v63 = *v62;
      *(v0 + 272) = *v62;
      *(v0 + 280) = *(v62 + 8);
      if (v63)
      {
        v74 = v1;
        v75 = v55;
        v76 = v70;
        v77 = v73;
        v78 = v69;
        v79 = v71;

        v63(&v74);
        v64 = *(v0 + 80);
        v65 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), v64);
        v72 = (*(v65 + 8) + **(v65 + 8));
        v66 = swift_task_alloc();
        *(v0 + 288) = v66;
        *v66 = v0;
        v66[1] = sub_22FED3D88;
        v68 = *(v0 + 184);
        v67 = *(v0 + 192);

        return v72(v68, v67, v64, v65);
      }

      sub_22FEA55AC(v6, v7);

      goto LABEL_15;
    }

    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v27)
  {
    goto LABEL_26;
  }

  *(v0 + 304) = v25;
  *(v0 + 312) = v26;
  *(v0 + 314) = BYTE2(v26);
  *(v0 + 315) = BYTE3(v26);
  *(v0 + 316) = BYTE4(v26);
  *(v0 + 317) = BYTE5(v26);
  sub_22FEA5608(v6, v7);
  v28 = (v0 + 304);
  v29 = (v0 + 304 + BYTE6(v26));
LABEL_38:
  sub_22FF9E9E4(v28, v29, &v74);
  v42 = v74;
  v43 = v75;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v44 = sub_22FFB07B8();
  sub_22FEA55AC(v42, v43);
  v45 = SecCertificateCreateWithData(0, v44);

  if (v45)
  {
    ProvisioningCertificate.init(from:)(v45, &v74);
    v46 = *(v0 + 208);
    v48 = v74;
    v47 = v75;
    *(v0 + 240) = v74;
    *(v0 + 248) = v47;
    v50 = v76;
    v49 = v77;
    v52 = v78;
    v51 = v79;
    *(v0 + 256) = v77;
    *(v0 + 264) = v51;
    *(v0 + 120) = &type metadata for ProvisioningCertificate;
    v53 = swift_allocObject();
    *(v0 + 96) = v53;
    v53[2] = v48;
    v53[3] = v47;
    v69 = v52;
    v70 = v50;
    v53[4] = v50;
    v53[5] = v49;
    v53[6] = v52;
    v53[7] = v51;
    sub_22FEBF3A4(v0 + 96, v0 + 128, &qword_27DAF1A78, &unk_22FFB3A50);
    v71 = v51;
    v54 = v49;

    v1 = v48;
    v9 = v47;
    v73 = v54;

    sub_22FECBD14(v0 + 128, v46, &protocol witness table for X509Policy, 0x65746164696C6176, 0xED00007472654364);
    sub_22FEAEA34(v0 + 96, &qword_27DAF1A78, &unk_22FFB3A50);
    if (qword_281490B48 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_53;
  }

  type metadata accessor for ProvisioningCertificate.Error(0);
  sub_22FED4B54(&qword_27DAF1EA0, type metadata accessor for ProvisioningCertificate.Error, &protocol conformance descriptor for ProvisioningCertificate.Error);
  v10 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  sub_22FEA55AC(v6, v7);
LABEL_4:
  v12 = *(v0 + 200);
  if (*v12 != 1)
  {
    if (qword_281490B48 != -1)
    {
      swift_once();
      v12 = *(v0 + 200);
    }

    v14 = *(v0 + 216);
    v15 = sub_22FFB12F8();
    __swift_project_value_buffer(v15, qword_281491688);
    sub_22FECB3B8(v12, v14);
    v16 = sub_22FFB12D8();
    v17 = sub_22FFB1838();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 216);
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 67240192;
      v21 = *v19;
      sub_22FECB490(v19);
      *(v20 + 4) = v21;
      _os_log_impl(&dword_22FE99000, v16, v17, "Failing open since required=%{BOOL,public}d", v20, 8u);
      MEMORY[0x23190EFF0](v20, -1, -1);
    }

    else
    {
      sub_22FECB490(*(v0 + 216));
    }

LABEL_15:

    v13 = *(v0 + 8);
    goto LABEL_16;
  }

  swift_willThrow();

  v13 = *(v0 + 8);
LABEL_16:

  return v13();
}

uint64_t sub_22FED3D88()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_22FED3FB0;
  }

  else
  {
    v2 = sub_22FED3EC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FED3EC8()
{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[30];
  v3 = v0[31];
  sub_22FEA55AC(v0[28], v0[29]);

  sub_22FEA5C80(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22FED3FB0()
{
  v1 = v0[34];
  v2 = v0[35];
  v4 = v0[30];
  v3 = v0[31];
  sub_22FEA55AC(v0[28], v0[29]);

  sub_22FEA5C80(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = v0[37];
  v6 = v0[25];
  if (*v6)
  {
    swift_willThrow();

    v7 = v0[1];
  }

  else
  {
    if (qword_281490B48 != -1)
    {
      swift_once();
      v6 = v0[25];
    }

    v8 = v0[27];
    v9 = sub_22FFB12F8();
    __swift_project_value_buffer(v9, qword_281491688);
    sub_22FECB3B8(v6, v8);
    v10 = sub_22FFB12D8();
    v11 = sub_22FFB1838();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[27];
    if (v12)
    {
      v14 = swift_slowAlloc();
      *v14 = 67240192;
      v15 = *v13;
      sub_22FECB490(v13);
      *(v14 + 4) = v15;
      _os_log_impl(&dword_22FE99000, v10, v11, "Failing open since required=%{BOOL,public}d", v14, 8u);
      MEMORY[0x23190EFF0](v14, -1, -1);
    }

    else
    {
      sub_22FECB490(v0[27]);
    }

    v7 = v0[1];
  }

  return v7();
}

uint64_t sub_22FED41E0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return X509Policy.evaluate(bundle:context:)(a1, a2);
}

BOOL sub_22FED4324(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_22FED4354@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_22FED4380@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_22FED4458@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void sub_22FED446C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1ED0, &qword_22FFBF090);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FFB45C0;
  v1 = qword_27DAF1240;
  v2 = *MEMORY[0x277CBECE8];
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_27DB05990;
  v4 = *algn_27DB05998;
  sub_22FEA5608(qword_27DB05990, *algn_27DB05998);
  v5 = sub_22FFB07B8();
  sub_22FEA55AC(v3, v4);
  v6 = SecCertificateCreateWithData(v2, v5);

  if (v6)
  {
    *(v0 + 32) = v6;
    qword_27DB059E8 = v0;
  }

  else
  {
    __break(1u);
  }
}

void sub_22FED456C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1ED0, &qword_22FFBF090);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22FFB45C0;
  v1 = qword_28148F7A0;
  v2 = *MEMORY[0x277CBECE8];
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = qword_281491378;
  v4 = qword_281491380;
  sub_22FEA5608(qword_281491378, qword_281491380);
  v5 = sub_22FFB07B8();
  sub_22FEA55AC(v3, v4);
  v6 = SecCertificateCreateWithData(v2, v5);

  if (v6)
  {
    *(v0 + 32) = v6;
    qword_2814916A0 = v0;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22FED466C()
{
  result = qword_27DAF1EA8;
  if (!qword_27DAF1EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1EA8);
  }

  return result;
}

unint64_t sub_22FED46C4()
{
  result = qword_27DAF1EB0;
  if (!qword_27DAF1EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1EB0);
  }

  return result;
}

unint64_t sub_22FED471C()
{
  result = qword_27DAF1EB8;
  if (!qword_27DAF1EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1EB8);
  }

  return result;
}

unint64_t sub_22FED4774()
{
  result = qword_27DAF1EC0;
  if (!qword_27DAF1EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1EC0);
  }

  return result;
}

unint64_t sub_22FED47CC()
{
  result = qword_27DAF1EC8;
  if (!qword_27DAF1EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1EC8);
  }

  return result;
}

void sub_22FED4848(uint64_t a1)
{
  sub_22FED49AC(319, &qword_28148F158, MEMORY[0x277CC9318], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22FED4954(319);
    if (v2 <= 0x3F)
    {
      sub_22FED49AC(319, qword_281490B58, &type metadata for X509Policy.RevocationPolicy, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22FEA9D60(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22FED4954(uint64_t a1)
{
  if (!qword_281491328)
  {
    sub_22FFB0908();
    v1 = sub_22FFB1888();
    if (!v2)
    {
      atomic_store(v1, &qword_281491328);
    }
  }
}

void sub_22FED49AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for X509Policy.RevocationPolicy(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for X509Policy.RevocationPolicy(uint64_t result, int a2, int a3)
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

unint64_t get_enum_tag_for_layout_string_16CloudAttestation10X509PolicyV5ErrorO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t sub_22FED4A6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xE && *(a1 + 8))
  {
    return (*a1 + 14);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xD)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22FED4AC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xD)
  {
    *result = a2 - 14;
    if (a3 >= 0xE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void *sub_22FED4B1C(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFFFLL | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_22FED4B54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FED4BA4()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491448);
  __swift_project_value_buffer(v0, qword_281491448);
  return sub_22FFB12E8();
}

uint64_t APTicketPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_22FFB13F8();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v4 = sub_22FFB13B8();
  v2[17] = v4;
  v2[18] = *(v4 - 8);
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FED4D70, 0, 0);
}

uint64_t sub_22FED4D70()
{
  v45 = v0;
  v44 = *MEMORY[0x277D85DE8];
  AttestationPolicyContext.validatedAttestation.getter(&v40);
  if (v41 >> 60 == 15)
  {
    sub_22FED5408();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
LABEL_17:

    v30 = v0[1];
    goto LABEL_18;
  }

  v39 = v41;
  v2 = v0 + 10;
  v3 = v40;
  v5 = v42;
  v4 = v43;
  v0[9] = 0;
  v0[8] = 0;
  v6 = swift_task_alloc();
  *(v6 + 16) = v0 + 8;
  *(v6 + 24) = v0 + 9;
  sub_22FED55F8(v5, v4, sub_22FED545C);

  v7 = v0[12];
  if (v40 == 3)
  {
    v8 = (*(v7 + *(type metadata accessor for Proto_AttestationBundle(0) + 20)) + OBJC_IVAR____TtCV16CloudAttestation23Proto_AttestationBundleP33_F901BED425ACAF29EDCFC5235099436113_StorageClass__sfrManifest);
    swift_beginAccess();
    v9 = (v8 + 1);
  }

  else
  {
    v10 = *(v7 + *(type metadata accessor for Proto_AttestationBundle(0) + 20));
    v8 = (v10 + 32);
    swift_beginAccess();
    v9 = (v10 + 40);
  }

  v11 = *v9;
  v12 = *v8;
  *v2 = 0;
  v0[11] = 0;
  v13 = swift_task_alloc();
  v13[2] = v2;
  v13[3] = v0 + 11;
  v13[4] = v3;
  v13[5] = v39;
  v13[6] = v5;
  v13[7] = v4;
  sub_22FEA5608(v12, v11);
  sub_22FED55F8(v5, v4, sub_22FED57C4);

  if ((~v42 & 0x3000000000000000) == 0)
  {
    sub_22FED5408();
    swift_allocError();
    *v14 = 0;
    swift_willThrow();
    sub_22FEA55AC(v12, v11);
    sub_22FECB858(v3, v39, v5, v4);
    goto LABEL_17;
  }

  v37 = v3;
  v38 = v5;
  v15 = v40;
  v16 = v11;
  v17 = v0[19];
  v19 = v0[15];
  v18 = v0[16];
  v20 = v0[14];
  v21 = v42 & 0xDFFFFFFFFFFFFFFFLL;
  v35 = v41;
  v36 = v40;
  if ((v42 & 0x2000000000000000) != 0)
  {
    v15 = v41;
  }

  else
  {
    v21 = v41;
  }

  v32 = v21;
  v33 = v15;
  v34 = v42;
  sub_22FED57E8();
  sub_22FFB1388();
  sub_22FEA5608(v12, v16);
  sub_22FED5478(v12, v16, v18);
  sub_22FEA55AC(v12, v16);
  sub_22FFB1368();
  (*(v19 + 8))(v18, v20);
  if ((sub_22FECA81C(v17, v33, v32) & 1) == 0)
  {
    v27 = v0[18];
    v26 = v0[19];
    v28 = v0[17];
    sub_22FED5408();
    swift_allocError();
    *v29 = 2;
    swift_willThrow();
    sub_22FECB858(v37, v39, v38, v4);
    sub_22FED5840(v36, v35, v34);
    sub_22FEA55AC(v12, v16);
    (*(v27 + 8))(v26, v28);
    goto LABEL_17;
  }

  if (qword_281490470 != -1)
  {
    swift_once();
  }

  v22 = sub_22FFB12F8();
  __swift_project_value_buffer(v22, qword_281491448);
  v23 = sub_22FFB12D8();
  v24 = sub_22FFB1848();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22FE99000, v23, v24, "AttestationBundle passed APTicketPolicy: reported AP ticket matches SEP attestation", v25, 2u);
    MEMORY[0x23190EFF0](v25, -1, -1);
    sub_22FECB858(v37, v39, v38, v4);
    sub_22FED5840(v36, v35, v34);

    sub_22FEA55AC(v12, v16);
  }

  else
  {
    sub_22FECB858(v37, v39, v38, v4);
    sub_22FED5840(v36, v35, v34);
    sub_22FEA55AC(v12, v16);
  }

  (*(v0[18] + 8))(v0[19], v0[17]);

  v30 = v0[1];
LABEL_18:

  return v30();
}

uint64_t sub_22FED52E4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return APTicketPolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t APTicketPolicy.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

unint64_t sub_22FED5408()
{
  result = qword_27DAF1ED8;
  if (!qword_27DAF1ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1ED8);
  }

  return result;
}

uint64_t sub_22FED5478(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_22FFB13F8();
      sub_22FED57E8();
      return sub_22FFB1358();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22FF5F89C(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_22FF5F89C(v5, v6);
  }

  sub_22FFB13F8();
  sub_22FED57E8();
  return sub_22FFB1358();
}

uint64_t sub_22FED55F8(uint64_t a1, unint64_t a2, uint64_t (*a3)(void *))
{
  v16[2] = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v16, 0, 14);
      goto LABEL_15;
    }

    v5 = *(a1 + 16);
    v6 = sub_22FFB0588();
    if (v6)
    {
      v7 = v6;
      v8 = sub_22FFB05B8();
      if (__OFSUB__(v5, v8))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
      }

      v9 = (v5 - v8 + v7);
      sub_22FFB05A8();
      if (v9)
      {
LABEL_13:
        v15 = v9;
        return a3(v15);
      }
    }

    else
    {
      sub_22FFB05A8();
    }

    __break(1u);
    goto LABEL_22;
  }

  if (!v4)
  {
    v16[0] = a1;
    LOWORD(v16[1]) = a2;
    BYTE2(v16[1]) = BYTE2(a2);
    BYTE3(v16[1]) = BYTE3(a2);
    BYTE4(v16[1]) = BYTE4(a2);
    BYTE5(v16[1]) = BYTE5(a2);
LABEL_15:
    v15 = v16;
    return a3(v15);
  }

  v10 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = sub_22FFB0588();
  if (!v11)
  {
LABEL_22:
    result = sub_22FFB05A8();
    goto LABEL_23;
  }

  v12 = v11;
  v13 = sub_22FFB05B8();
  if (__OFSUB__(v10, v13))
  {
    goto LABEL_19;
  }

  v9 = (v10 - v13 + v12);
  result = sub_22FFB05A8();
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t sub_22FED57E8()
{
  result = qword_28148F188;
  if (!qword_28148F188)
  {
    sub_22FFB13F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28148F188);
  }

  return result;
}

uint64_t sub_22FED5840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0x3000000000000000) != 0)
  {
    return sub_22FED5854(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_22FED5854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    a1 = a2;
    a2 = a3 & 0xDFFFFFFFFFFFFFFFLL;
  }

  return sub_22FEA55AC(a1, a2);
}

unint64_t sub_22FED586C()
{
  result = qword_27DAF1EE0;
  if (!qword_27DAF1EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1EE0);
  }

  return result;
}

CloudAttestation::AttestationPolicyContext __swiftcall AttestationPolicyContext.init()()
{
  v1 = v0;
  result.context._rawValue = sub_22FFA7050(MEMORY[0x277D84F90]);
  v1->context._rawValue = result.context._rawValue;
  return result;
}

double AttestationPolicyContext.subscript.getter@<D0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v34 = a4;
  v33 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v7;
  v11 = v7[1];
  v12 = v7[2];
  v13 = v7[3];
  v32 = v4;
  v14 = *v4;
  if (*(v14 + 16) && (v15 = sub_22FFA62AC(v10, v11, v12, v13), (v16 & 1) != 0))
  {
    sub_22FEBF2A4(*(v14 + 56) + 32 * v15, &v35);
    sub_22FED62C0(&v35);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A78, &unk_22FFB3A50);
    v18 = v34;
    v34[3] = v17;
    v19 = swift_allocObject();
    *v18 = v19;
    if (*(v14 + 16) && (v20 = sub_22FFA62AC(v10, v11, v12, v13), (v21 & 1) != 0))
    {
      sub_22FEBF2A4(*(v14 + 56) + 32 * v20, v19 + 16);
    }

    else
    {
      result = 0.0;
      *(v19 + 16) = 0u;
      *(v19 + 32) = 0u;
    }
  }

  else
  {
    v29 = v12;
    v30 = v11;
    v31 = v10;
    v35 = 0u;
    v36 = 0u;
    v23 = sub_22FED62C0(&v35);
    v24 = v37;
    a2(v23);
    if (!v24)
    {
      *(&v36 + 1) = a3;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
      v26 = v33;
      (*(v33 + 16))(boxed_opaque_existential_1, v9, a3);

      sub_22FECBD14(&v35, v31, v30, v29, v13);
      v27 = v34;
      v34[3] = a3;
      v28 = __swift_allocate_boxed_opaque_existential_1(v27);
      (*(v26 + 32))(v28, v9, a3);
    }
  }

  return result;
}

uint64_t AttestationPolicyContext.subscript.setter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  sub_22FED6328(a1, v8);
  sub_22FECBD14(v8, v3, v4, v5, v6);
  return sub_22FED62C0(a1);
}

uint64_t AttestationPolicyContext.Key.init(domain:key:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

double AttestationPolicyContext.subscript.getter@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = sub_22FFA62AC(*a1, a1[1], a1[2], a1[3]), (v6 & 1) != 0))
  {
    v7 = *(v4 + 56) + 32 * v5;

    sub_22FEBF2A4(v7, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t AttestationPolicy.evaluate(bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_22FED5C44, 0, 0);
}

uint64_t sub_22FED5C44()
{
  v7 = v0[5];
  v0[2] = sub_22FFA7050(MEMORY[0x277D84F90]);
  v6 = (*(v7 + 8) + **(v7 + 8));
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_22FED5D78;
  v2 = v0[5];
  v4 = v0[3];
  v3 = v0[4];

  return v6(v4, v0 + 2, v3, v2);
}

uint64_t sub_22FED5D78()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_22FED5EAC;
  }

  else
  {
    v2 = sub_22FEA8FEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t AttestationPolicyContext.Key.key.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_22FED5EFC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  sub_22FED6328(a1, v9);
  sub_22FED6328(v9, v8);

  sub_22FECBD14(v8, v3, v4, v5, v6);
  return sub_22FED62C0(v9);
}

void (*AttestationPolicyContext.subscript.modify(uint64_t *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x88uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *a2;
  v8 = a2[1];
  *(v6 + 96) = v2;
  *(v6 + 104) = v7;
  v9 = a2[2];
  v10 = a2[3];
  *(v6 + 112) = v8;
  *(v6 + 120) = v9;
  *(v6 + 128) = v10;
  v11 = *v2;
  if (*(v11 + 16) && (v12 = sub_22FFA62AC(v7, v8, v9, v10), (v13 & 1) != 0))
  {
    sub_22FEBF2A4(*(v11 + 56) + 32 * v12, v6);
  }

  else
  {
    *v6 = 0u;
    *(v6 + 16) = 0u;
  }

  return sub_22FED603C;
}

void sub_22FED603C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 120);
  v4 = *(*a1 + 128);
  v6 = *(*a1 + 104);
  v5 = *(*a1 + 112);
  if (a2)
  {
    sub_22FED6328(*a1, v2 + 32);
    sub_22FED6328(v2 + 32, v2 + 64);
    sub_22FECBD14(v2 + 64, v6, v5, v3, v4);
    sub_22FED62C0(v2 + 32);
  }

  else
  {
    sub_22FED6328(*a1, v2 + 32);
    sub_22FECBD14(v2 + 32, v6, v5, v3, v4);
  }

  sub_22FED62C0(v2);

  free(v2);
}

uint64_t static AttestationPolicyContext.Key.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_22FFB1BC8();
  }
}

uint64_t AttestationPolicyContext.Key.hashValue.getter()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FED61C0()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FED6234()
{
  v1 = *v0;
  sub_22FFB1CA8();
  MEMORY[0x23190E460](v1);
  return sub_22FFB1CF8();
}

uint64_t sub_22FED6278(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_22FFB1BC8();
  }
}

uint64_t sub_22FED62C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A78, &unk_22FFB3A50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FED6328(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A78, &unk_22FFB3A50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22FED639C()
{
  result = qword_281490BF0[0];
  if (!qword_281490BF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281490BF0);
  }

  return result;
}

uint64_t dispatch thunk of AttestationPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22FEAA0D4;

  return v11(a1, a2, a3, a4);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_22FED653C(uint64_t *a1, int a2)
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

uint64_t sub_22FED6584(uint64_t result, int a2, int a3)
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

uint64_t CryptexPolicy.init(locked:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_22FED65E0()
{
  v0 = sub_22FFB0958();
  __swift_allocate_value_buffer(v0, qword_281490920);
  v1 = __swift_project_value_buffer(v0, qword_281490920);
  if (qword_281490280 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_281491418);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static CryptexPolicy.slot.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281490918 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB0958();
  v3 = __swift_project_value_buffer(v2, qword_281490920);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22FED6750()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491478);
  __swift_project_value_buffer(v0, qword_281491478);
  return sub_22FFB12E8();
}

uint64_t CryptexPolicy.init(_:locked:fallback:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t CryptexPolicy.init(_:locked:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t CryptexPolicy.init(locked:fallback:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = result;
  return result;
}

uint64_t CryptexPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  type metadata accessor for SEP.SealedHash.Value(0);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = swift_task_alloc();
  v4 = type metadata accessor for SEP.SealedHash(0);
  *(v3 + 48) = v4;
  *(v3 + 56) = *(v4 - 8);
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F00, &qword_22FFB4AF8);
  *(v3 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();
  *(v3 + 112) = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = *v2;
  *(v3 + 120) = v5;
  *(v3 + 128) = v6;
  *(v3 + 136) = *(v2 + 8);

  return MEMORY[0x2822009F8](sub_22FED69AC, 0, 0);
}

uint64_t sub_22FED69AC()
{
  v105 = v0;
  v1 = *(v0 + 128);
  if (!v1)
  {
    AttestationPolicyContext.validatedAttestation.getter(v102);
    v103 = v102[0];
    v104 = v102[1];
    v1 = sub_22FED7DBC(&v103);
    sub_22FECB858(v103, *(&v103 + 1), v104, *(&v104 + 1));
    if (!v1)
    {
      v1 = sub_22FFA7434(MEMORY[0x277D84F90]);
    }
  }

  if (qword_281490918 != -1)
  {
    swift_once();
  }

  v2 = sub_22FFB0958();
  v3 = __swift_project_value_buffer(v2, qword_281490920);
  v4 = v3;
  if (*(v1 + 16) && (v5 = sub_22FFA6214(v3), (v6 & 1) != 0))
  {
    sub_22FED81B0(*(v1 + 56) + *(*(v0 + 56) + 72) * v5, *(v0 + 120), type metadata accessor for SEP.SealedHash);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v0 + 120);
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);

  v11 = *(v10 + 56);
  v11(v8, v7, 1, v9);
  sub_22FF91BD0(v4, 0, &v103);
  v12 = v103;
  v13 = BYTE8(v103);
  if (BYTE8(v103) != 255)
  {
    v14 = *(v0 + 120);
    v15 = *(v0 + 48);
    goto LABEL_12;
  }

  v100 = v103;
  v101 = v2;
  if (qword_27DAF1270 != -1)
  {
    swift_once();
  }

  v31 = *(v0 + 112);
  v30 = *(v0 + 120);
  v33 = *(v0 + 80);
  v32 = *(v0 + 88);
  v35 = *(v0 + 48);
  v34 = *(v0 + 56);
  v36 = __swift_project_value_buffer(v35, qword_27DAF1EE8);
  sub_22FED81B0(v36, v31, type metadata accessor for SEP.SealedHash);
  v11(v31, 0, 1, v35);
  v37 = *(v33 + 48);
  sub_22FED80E0(v30, v32);
  sub_22FED80E0(v31, v32 + v37);
  v38 = *(v34 + 48);
  if (v38(v32, 1, v35) == 1)
  {
    v39 = *(v0 + 48);
    sub_22FEAEA34(*(v0 + 112), &qword_27DAF1F08, &qword_22FFB4B00);
    v12 = v100;
    if (v38(v32 + v37, 1, v39) == 1)
    {
      sub_22FEAEA34(*(v0 + 88), &qword_27DAF1F08, &qword_22FFB4B00);
      v40 = 1;
      v2 = v101;
      goto LABEL_51;
    }

    goto LABEL_32;
  }

  v41 = *(v0 + 48);
  sub_22FED80E0(*(v0 + 88), *(v0 + 104));
  if (v38(v32 + v37, 1, v41) == 1)
  {
    v42 = *(v0 + 104);
    sub_22FEAEA34(*(v0 + 112), &qword_27DAF1F08, &qword_22FFB4B00);
    sub_22FED82C8(v42, type metadata accessor for SEP.SealedHash);
    v12 = v100;
LABEL_32:
    sub_22FEAEA34(*(v0 + 88), &qword_27DAF1F00, &qword_22FFB4AF8);
    v40 = 0;
    v2 = v101;
    goto LABEL_51;
  }

  v60 = *(v0 + 104);
  v61 = *(v0 + 72);
  sub_22FED8260(v32 + v37, v61, type metadata accessor for SEP.SealedHash);
  if (*v60 == *v61)
  {
    v62 = *(*(v0 + 48) + 20);
    v40 = _s16CloudAttestation3SEPO10SealedHashV5ValueO2eeoiySbAG_AGtFZ_0(*(v0 + 104) + v62, *(v0 + 72) + v62);
  }

  else
  {
    v40 = 0;
  }

  v64 = *(v0 + 104);
  v63 = *(v0 + 112);
  v65 = *(v0 + 88);
  sub_22FED82C8(*(v0 + 72), type metadata accessor for SEP.SealedHash);
  sub_22FEAEA34(v63, &qword_27DAF1F08, &qword_22FFB4B00);
  sub_22FED82C8(v64, type metadata accessor for SEP.SealedHash);
  sub_22FEAEA34(v65, &qword_27DAF1F08, &qword_22FFB4B00);
  v12 = v100;
  v2 = v101;
LABEL_51:
  v14 = *(v0 + 120);
  v15 = *(v0 + 48);
  if (v38(v14, 1, v15) == 1)
  {
    if ((*(v0 + 136) & 1) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

  if (*(v0 + 136))
  {
LABEL_55:
    if (v40)
    {
      if (qword_281490910 != -1)
      {
        swift_once();
      }

      v66 = sub_22FFB12F8();
      __swift_project_value_buffer(v66, qword_281491478);
      v67 = sub_22FFB12D8();
      v68 = sub_22FFB1838();
      if (!os_log_type_enabled(v67, v68))
      {
        goto LABEL_66;
      }

      v69 = swift_slowAlloc();
      *v69 = 0;
      v70 = "Device has no cryptexes installed, and is in cryptex lockdown";
      goto LABEL_65;
    }

    goto LABEL_12;
  }

  if (v40)
  {
LABEL_61:
    if (qword_281490910 != -1)
    {
      swift_once();
    }

    v71 = sub_22FFB12F8();
    __swift_project_value_buffer(v71, qword_281491478);
    v67 = sub_22FFB12D8();
    v68 = sub_22FFB1838();
    if (!os_log_type_enabled(v67, v68))
    {
      goto LABEL_66;
    }

    v69 = swift_slowAlloc();
    *v69 = 0;
    v70 = "Device has no cryptexes installed";
LABEL_65:
    _os_log_impl(&dword_22FE99000, v67, v68, v70, v69, 2u);
    MEMORY[0x23190EFF0](v69, -1, -1);
LABEL_66:

    goto LABEL_75;
  }

LABEL_12:
  v16 = *(v0 + 96);
  v17 = *(v0 + 56);
  sub_22FED80E0(v14, v16);
  v18 = (*(v17 + 48))(v16, 1, v15);
  v19 = *(v0 + 96);
  if (v18 == 1)
  {
    sub_22FED8150(v12, v13);
    sub_22FEAEA34(v19, &qword_27DAF1F08, &qword_22FFB4B00);
    if (qword_281490910 != -1)
    {
      swift_once();
    }

    v20 = sub_22FFB12F8();
    __swift_project_value_buffer(v20, qword_281491478);
    v21 = sub_22FFB12D8();
    v22 = sub_22FFB1838();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22FE99000, v21, v22, "Missing cryptex sealed hash slot from SEP Attestation", v23, 2u);
      MEMORY[0x23190EFF0](v23, -1, -1);
    }

    type metadata accessor for CryptexPolicy.Error(0);
    sub_22FED8218(&qword_27DAF1F10, type metadata accessor for CryptexPolicy.Error, &protocol conformance descriptor for CryptexPolicy.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_75;
  }

  sub_22FED8260(*(v0 + 96), *(v0 + 64), type metadata accessor for SEP.SealedHash);
  if (v13 == 255)
  {
    if (qword_281490910 != -1)
    {
      swift_once();
    }

    v43 = sub_22FFB12F8();
    __swift_project_value_buffer(v43, qword_281491478);
    v44 = sub_22FFB12D8();
    v45 = sub_22FFB1838();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_22FE99000, v44, v45, "Missing cryptex ledger from SecureConfigDB", v46, 2u);
      MEMORY[0x23190EFF0](v46, -1, -1);
    }

    v29 = *(v0 + 64);
    v47 = *(v0 + 48);

    type metadata accessor for CryptexPolicy.Error(0);
    sub_22FED8218(&qword_27DAF1F10, type metadata accessor for CryptexPolicy.Error, &protocol conformance descriptor for CryptexPolicy.Error);
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F18, &qword_22FFB4B08) + 48);
    (*(*(v2 - 8) + 16))(v49, v4, v2);
    sub_22FED81B0(v29 + *(v47 + 20), v49 + v50, type metadata accessor for SEP.SealedHash.Value);
    swift_storeEnumTagMultiPayload();
    goto LABEL_72;
  }

  v24 = **(v0 + 64);
  if ((v24 & 8) == 0)
  {
    sub_22FED8150(v12, v13);
    if (qword_281490910 != -1)
    {
      swift_once();
    }

    v25 = sub_22FFB12F8();
    __swift_project_value_buffer(v25, qword_281491478);
    v26 = sub_22FFB12D8();
    v27 = sub_22FFB1838();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_22FE99000, v26, v27, "SEP Cryptex Sealed Hash Slot is missing .cryptexMeasurement", v28, 2u);
      MEMORY[0x23190EFF0](v28, -1, -1);
    }

    v29 = *(v0 + 64);

    type metadata accessor for CryptexPolicy.Error(0);
    sub_22FED8218(&qword_27DAF1F10, type metadata accessor for CryptexPolicy.Error, &protocol conformance descriptor for CryptexPolicy.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
LABEL_72:
    swift_willThrow();
LABEL_73:
    v76 = v29;
LABEL_74:
    sub_22FED82C8(v76, type metadata accessor for SEP.SealedHash);
    goto LABEL_75;
  }

  if (qword_281490910 != -1)
  {
    swift_once();
  }

  v51 = v24 & 4;
  v52 = sub_22FFB12F8();
  __swift_project_value_buffer(v52, qword_281491478);
  v53 = sub_22FFB12D8();
  v54 = sub_22FFB1848();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 67109120;
    *(v55 + 4) = v51 >> 2;
    _os_log_impl(&dword_22FE99000, v53, v54, "Observed Cryptex Lockdown State: %{BOOL}d", v55, 8u);
    MEMORY[0x23190EFF0](v55, -1, -1);
  }

  v56 = *(v0 + 136);

  if (v56 == 1)
  {
    if (((v51 != 0) ^ v13))
    {
      sub_22FED8150(v12, v13);
      v57 = sub_22FFB12D8();
      v58 = sub_22FFB1838();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_22FE99000, v57, v58, "Cryptex Log and SEP Attestation's Sealed Hash have inconsistent lock states", v59, 2u);
        MEMORY[0x23190EFF0](v59, -1, -1);
      }

LABEL_84:
      v92 = *(v0 + 64);

      type metadata accessor for CryptexPolicy.Error(0);
      sub_22FED8218(&qword_27DAF1F10, type metadata accessor for CryptexPolicy.Error, &protocol conformance descriptor for CryptexPolicy.Error);
      swift_allocError();
      *v93 = v13 & 1;
      v93[1] = v51 >> 2;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v76 = v92;
      goto LABEL_74;
    }

    if (!v51 || (v13 & 1) == 0)
    {
      sub_22FED8150(v12, v13);
      v57 = sub_22FFB12D8();
      v90 = sub_22FFB1838();
      if (os_log_type_enabled(v57, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_22FE99000, v57, v90, "Cryptex slot is unexpectedly unlocked", v91, 2u);
        MEMORY[0x23190EFF0](v91, -1, -1);
      }

      goto LABEL_84;
    }
  }

  v72 = sub_22FF9293C();
  if (!v72)
  {
    v74 = sub_22FFB13F8();
    v73 = sub_22FED8218(&qword_28148F188, MEMORY[0x277CC5550], MEMORY[0x277CC5548]);
    v72 = v74;
  }

  v75 = *(v0 + 32);
  *&v103 = v12;
  BYTE8(v103) = v13 & 1;
  sub_22FF92D94(v72, v73, 0xF000000000000000, v75);
  v79 = *(v0 + 64);
  v80 = *(v0 + 40);
  v81 = *(v0 + 48);
  v82 = *(v0 + 32);
  sub_22FED8150(v12, v13);
  sub_22FED8260(v82, v80, type metadata accessor for SEP.SealedHash.Value);
  v83 = *(v81 + 20);
  v84 = _s16CloudAttestation3SEPO10SealedHashV5ValueO2eeoiySbAG_AGtFZ_0(v80, v79 + v83);
  v85 = sub_22FFB12D8();
  if (!v84)
  {
    v94 = sub_22FFB1838();
    if (os_log_type_enabled(v85, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_22FE99000, v85, v94, "Cryptex log from SecureConfigDB did not replay against SEP Attestation's Sealed Hash", v95, 2u);
      MEMORY[0x23190EFF0](v95, -1, -1);
    }

    v29 = *(v0 + 64);
    v96 = *(v0 + 40);

    type metadata accessor for CryptexPolicy.Error(0);
    sub_22FED8218(&qword_27DAF1F10, type metadata accessor for CryptexPolicy.Error, &protocol conformance descriptor for CryptexPolicy.Error);
    swift_allocError();
    v98 = v97;
    v99 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F20, &qword_22FFB5830) + 48);
    sub_22FED81B0(v96, v98, type metadata accessor for SEP.SealedHash.Value);
    sub_22FED81B0(v79 + v83, v98 + v99, type metadata accessor for SEP.SealedHash.Value);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22FED82C8(v96, type metadata accessor for SEP.SealedHash.Value);
    goto LABEL_73;
  }

  v86 = sub_22FFB1848();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_22FE99000, v85, v86, "AttestationBundle passed CryptexPolicy: reported cryptexes match SEP attestation", v87, 2u);
    MEMORY[0x23190EFF0](v87, -1, -1);
  }

  v88 = *(v0 + 64);
  v89 = *(v0 + 40);

  sub_22FED82C8(v89, type metadata accessor for SEP.SealedHash.Value);
  sub_22FED82C8(v88, type metadata accessor for SEP.SealedHash);
LABEL_75:
  sub_22FEAEA34(*(v0 + 120), &qword_27DAF1F08, &qword_22FFB4B00);

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_22FED7C40(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return CryptexPolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t sub_22FED7CE4()
{
  v0 = type metadata accessor for SEP.SealedHash(0);
  __swift_allocate_value_buffer(v0, qword_27DAF1EE8);
  v1 = __swift_project_value_buffer(v0, qword_27DAF1EE8);
  sub_22FFB05D8();
  swift_allocObject();
  v4 = 0x3000000000;
  v5 = sub_22FFB0598();
  sub_22FF555D0(&v4, 0);
  v2 = v4;
  LOBYTE(v4) = 14;
  return SEP.SealedHash.init(digest:flags:)(v2, v5 | 0x4000000000000000, &v4, v1);
}

unint64_t sub_22FED7DBC(uint64_t *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  v5 = type metadata accessor for SEP.SealedHash(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  result = 0;
  v13 = a1[1];
  if (v13 >> 60 != 15)
  {
    v14 = a1[2];
    v15 = a1[3];
    v21 = *a1;
    sub_22FEA5608(v21, v13);
    sub_22FEA5608(v14, v15);
    v22 = sub_22FFA7434(MEMORY[0x277D84F90]);
    if (qword_281490918 != -1)
    {
      swift_once();
    }

    v16 = sub_22FFB0958();
    v17 = __swift_project_value_buffer(v16, qword_281490920);
    memset(v23, 0, sizeof(v23));
    v20 = MEMORY[0x28223BE20](v17);
    *(&v20 - 2) = v20;
    *(&v20 - 1) = v23;
    sub_22FED55F8(v14, v15, sub_22FED86EC);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_22FECB858(v21, v13, v14, v15);
      sub_22FEAEA34(v4, &qword_27DAF1F08, &qword_22FFB4B00);
      return v22;
    }

    else
    {
      sub_22FED8260(v4, v11, type metadata accessor for SEP.SealedHash);
      sub_22FED81B0(v11, v9, type metadata accessor for SEP.SealedHash);
      v18 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v23 = v18;
      sub_22FF8CAC0(v9, v20, isUniquelyReferenced_nonNull_native);
      sub_22FECB858(v21, v13, v14, v15);
      sub_22FED82C8(v11, type metadata accessor for SEP.SealedHash);
      return *v23;
    }
  }

  return result;
}

uint64_t sub_22FED80E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1F08, &qword_22FFB4B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FED8150(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

uint64_t type metadata accessor for CryptexPolicy.Error(uint64_t a1)
{
  result = qword_27DAF1F28;
  if (!qword_27DAF1F28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FED81B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FED8218(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22FED8260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22FED82C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_22FED833C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22FED8398(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_22FED83FC(uint64_t a1)
{
  sub_22FED8498(319);
  if (v1 <= 0x3F)
  {
    sub_22FED850C();
    if (v2 <= 0x3F)
    {
      sub_22FED856C(319);
      if (v3 <= 0x3F)
      {
        sub_22FED85D4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_22FED8498(uint64_t a1)
{
  if (!qword_27DAF1F38)
  {
    sub_22FFB0958();
    type metadata accessor for SEP.SealedHash.Value(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DAF1F38);
    }
  }
}

void sub_22FED850C()
{
  if (!qword_27DAF1F40)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DAF1F40);
    }
  }
}

void sub_22FED856C(uint64_t a1)
{
  if (!qword_27DAF1F48)
  {
    type metadata accessor for SEP.SealedHash.Value(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DAF1F48);
    }
  }
}

unint64_t sub_22FED85D4()
{
  result = qword_28148F098;
  if (!qword_28148F098)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28148F098);
  }

  return result;
}

uint64_t sub_22FED8638(uint64_t *a1, unsigned int a2)
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

uint64_t sub_22FED8688(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22FED8708(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    v4 = 0x72656D6F74737563;
    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xED000079786F7250;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7972726163;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE800000000000000;
  if (a2 != 2)
  {
    v7 = 0xED000079786F7250;
  }

  if (a2)
  {
    v2 = 0x7972726163;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x72656D6F74737563;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_22FFB1BC8();
  }

  return v10 & 1;
}

BOOL sub_22FED8854(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_22FFB4DB8[a1];
  }

  if (a4)
  {
    a3 = qword_22FFB4DB8[a3];
  }

  return a1 == a3;
}

BOOL sub_22FED8878(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_22FFB4DF0[a1];
  }

  if (a4)
  {
    a3 = qword_22FFB4DF0[a3];
  }

  return a1 == a3;
}

CloudAttestation::DarwinInitPolicy __swiftcall DarwinInitPolicy.init(securityPolicy:)(CloudAttestation::DarwinInit::SecureConfigSecurityPolicy securityPolicy)
{
  v2 = v1;
  v3 = *securityPolicy;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A30, &qword_22FFB4C70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22FFB2D10;
  *(v4 + 32) = v3;
  v6 = MEMORY[0x277D84F90];
  *v2 = v4;
  v2[1] = v6;
  result.restrictedSecurityPolicies._rawValue = v5;
  result.allowedSecurityPolicies._rawValue = v4;
  return result;
}

uint64_t sub_22FED88FC()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_281491400);
  __swift_project_value_buffer(v0, qword_281491400);
  return sub_22FFB12E8();
}

uint64_t DarwinInitPolicy.init<A>(securityPolicies:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  *a4 = sub_22FFB1748();
  result = (*(v7 + 8))(a1, a2);
  a4[1] = MEMORY[0x277D84F90];
  return result;
}

uint64_t DarwinInitPolicy.init<A>(restrictedSecurityPolicies:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  *a4 = &unk_2844D8628;
  (*(v7 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v9 = sub_22FFB1748();
  result = (*(v7 + 8))(a1, a2);
  a4[1] = v9;
  return result;
}

uint64_t DarwinInitPolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  *(v3 + 96) = *v2;
  return MEMORY[0x2822009F8](sub_22FED8BD4, 0, 0);
}

uint64_t sub_22FED8BD4()
{
  v90 = v0;
  if (qword_281490278 != -1)
  {
    swift_once();
  }

  v1 = sub_22FFB12F8();
  __swift_project_value_buffer(v1, qword_281491400);

  v2 = sub_22FFB12D8();
  v3 = sub_22FFB1848();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v88 = v7;
    *v6 = 136446466;
    v8 = MEMORY[0x23190DEA0](v5, &type metadata for DarwinInit.SecureConfigSecurityPolicy);
    v10 = sub_22FF9E448(v8, v9, &v88);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = MEMORY[0x23190DEA0](v4, &type metadata for DarwinInit.SecureConfigSecurityPolicy);
    v13 = sub_22FF9E448(v11, v12, &v88);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_22FE99000, v2, v3, "Evaluating DarwinInit against allowed policies %{public}s and restricted policies %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190EFF0](v7, -1, -1);
    MEMORY[0x23190EFF0](v6, -1, -1);
  }

  v14 = *(v0 + 96);
  v15 = *(v14 + 16);
  v16 = (v14 + 32);

  v17 = (v14 + 32);
  while (1)
  {
    v19 = v15;
    if (!v15)
    {
      break;
    }

    if (!*v17)
    {

LABEL_10:
      v20 = sub_22FFB12D8();
      v21 = sub_22FFB1838();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_22FE99000, v20, v21, "Allowing absent or invalid darwin-init since DarwinInitPolicy allows config-security-policy=none", v22, 2u);
        MEMORY[0x23190EFF0](v22, -1, -1);
      }

      break;
    }

    v18 = sub_22FFB1BC8();

    ++v17;
    --v15;
    if (v18)
    {
      goto LABEL_10;
    }
  }

  v23 = sub_22FFA7ED0();
  if (!v23)
  {

    v24 = sub_22FFB12D8();
    v25 = sub_22FFB1838();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_22FE99000, v24, v25, "Missing secure config in Attestation Bundle", v26, 2u);
      MEMORY[0x23190EFF0](v26, -1, -1);
    }

    if (!v19)
    {
      sub_22FED9ED8();
      swift_allocError();
      *v39 = xmmword_22FFB4C40;
      goto LABEL_86;
    }

LABEL_18:
    v27 = *(v0 + 8);
    goto LABEL_87;
  }

  sub_22FED9948(v23, &v88);
  v87 = v0;
  v28 = *(v0 + 104);

  v85 = v88;
  v29 = v89;
  v30 = (v28 + 32);
  v31 = *(v28 + 16);

  v86 = v29;
  while (v31)
  {
    v34 = 0xED000079786F7250;
    if (*v30 == 2)
    {
      v34 = 0xE800000000000000;
    }

    v35 = 0x7972726163;
    if (!*v30)
    {
      v35 = 1701736302;
    }

    v36 = 0xE400000000000000;
    if (*v30)
    {
      v36 = 0xE500000000000000;
    }

    if (*v30 <= 1u)
    {
      v37 = v35;
    }

    else
    {
      v37 = 0x72656D6F74737563;
    }

    if (*v30 <= 1u)
    {
      v38 = v36;
    }

    else
    {
      v38 = v34;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v32 = 0xE800000000000000;
      }

      else
      {
        v32 = 0xED000079786F7250;
      }

      if (v37 != 0x72656D6F74737563)
      {
        goto LABEL_24;
      }
    }

    else if (v29)
    {
      v32 = 0xE500000000000000;
      if (v37 != 0x7972726163)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v32 = 0xE400000000000000;
      if (v37 != 1701736302)
      {
        goto LABEL_24;
      }
    }

    if (v38 == v32)
    {
      v0 = v87;

LABEL_72:

      v48 = sub_22FFB12D8();
      v49 = sub_22FFB1838();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v88 = v51;
        *v50 = 136446210;
        v52 = 0xE400000000000000;
        v53 = 0xE800000000000000;
        if (v86 != 2)
        {
          v53 = 0xED000079786F7250;
        }

        v54 = 0x7972726163;
        if (v86)
        {
          v52 = 0xE500000000000000;
        }

        else
        {
          v54 = 1701736302;
        }

        if (v86 <= 1)
        {
          v55 = v54;
        }

        else
        {
          v55 = 0x72656D6F74737563;
        }

        if (v86 <= 1)
        {
          v56 = v52;
        }

        else
        {
          v56 = v53;
        }

        v57 = sub_22FF9E448(v55, v56, &v88);

        *(v50 + 4) = v57;
        _os_log_impl(&dword_22FE99000, v48, v49, "Darwin-Init security policy %{public}s is restricted", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x23190EFF0](v51, -1, -1);
        MEMORY[0x23190EFF0](v50, -1, -1);
      }

      v58 = *(v0 + 104);
      sub_22FED9ED8();
      swift_allocError();
      *v59 = v86 | 0x4000000000000000;
      v59[1] = v58;
      goto LABEL_86;
    }

LABEL_24:
    v33 = sub_22FFB1BC8();

    ++v30;
    --v31;
    if (v33)
    {
      v0 = v87;
      goto LABEL_72;
    }
  }

  v40 = *(v14 + 16);
  while (v40)
  {
    v43 = 0xED000079786F7250;
    if (*v16 == 2)
    {
      v43 = 0xE800000000000000;
    }

    v44 = 0x7972726163;
    if (*v16)
    {
      v45 = 0xE500000000000000;
    }

    else
    {
      v44 = 1701736302;
      v45 = 0xE400000000000000;
    }

    if (*v16 <= 1u)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0x72656D6F74737563;
    }

    if (*v16 <= 1u)
    {
      v47 = v45;
    }

    else
    {
      v47 = v43;
    }

    if (v29 > 1)
    {
      if (v29 == 2)
      {
        v41 = 0xE800000000000000;
      }

      else
      {
        v41 = 0xED000079786F7250;
      }

      if (v46 != 0x72656D6F74737563)
      {
        goto LABEL_51;
      }
    }

    else if (v29)
    {
      v41 = 0xE500000000000000;
      if (v46 != 0x7972726163)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v41 = 0xE400000000000000;
      if (v46 != 1701736302)
      {
        goto LABEL_51;
      }
    }

    if (v47 == v41)
    {
      v0 = v87;

LABEL_107:

      *(v0 + 40) = &type metadata for DarwinInit;
      *(v0 + 16) = v85;
      *(v0 + 24) = v86;
      sub_22FED6328(v0 + 16, v0 + 48);
      sub_22FECBD14(v0 + 48, &type metadata for DarwinInitPolicy, &protocol witness table for DarwinInitPolicy, 0xD000000000000013, 0x800000022FFC9E30);
      sub_22FED62C0(v0 + 16);

      v76 = sub_22FFB12D8();
      v77 = sub_22FFB1848();

      if (os_log_type_enabled(v76, v77))
      {
        v78 = *(v0 + 96);
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v88 = v80;
        *v79 = 136446210;
        v81 = MEMORY[0x23190DEA0](v78, &type metadata for DarwinInit.SecureConfigSecurityPolicy);
        v83 = sub_22FF9E448(v81, v82, &v88);

        *(v79 + 4) = v83;
        _os_log_impl(&dword_22FE99000, v76, v77, "AttestationBundle passed DarwinInitPolicy: reported darwin-init config-security-policy matches allowed list: %{public}s", v79, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v80);
        MEMORY[0x23190EFF0](v80, -1, -1);
        MEMORY[0x23190EFF0](v79, -1, -1);
      }

      goto LABEL_18;
    }

LABEL_51:
    v42 = sub_22FFB1BC8();

    ++v16;
    --v40;
    if (v42)
    {
      v0 = v87;
      goto LABEL_107;
    }
  }

  v0 = v87;

  v61 = sub_22FFB12D8();
  v62 = sub_22FFB1838();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v88 = v64;
    *v63 = 136446466;
    v65 = 0xE400000000000000;
    v66 = 0xE800000000000000;
    if (v86 != 2)
    {
      v66 = 0xED000079786F7250;
    }

    v67 = 0x7972726163;
    if (v86)
    {
      v65 = 0xE500000000000000;
    }

    else
    {
      v67 = 1701736302;
    }

    if (v86 <= 1)
    {
      v68 = v67;
    }

    else
    {
      v68 = 0x72656D6F74737563;
    }

    if (v86 <= 1)
    {
      v69 = v65;
    }

    else
    {
      v69 = v66;
    }

    v70 = *(v87 + 96);
    v71 = sub_22FF9E448(v68, v69, &v88);

    *(v63 + 4) = v71;
    *(v63 + 12) = 2082;
    v72 = MEMORY[0x23190DEA0](v70, &type metadata for DarwinInit.SecureConfigSecurityPolicy);
    v74 = sub_22FF9E448(v72, v73, &v88);

    *(v63 + 14) = v74;
    _os_log_impl(&dword_22FE99000, v61, v62, "Darwin-Init security policy %{public}s not in list of allowed policies: %{public}s", v63, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23190EFF0](v64, -1, -1);
    MEMORY[0x23190EFF0](v63, -1, -1);
  }

  v75 = *(v87 + 96);
  if (v19)
  {

    goto LABEL_18;
  }

  sub_22FED9ED8();
  swift_allocError();
  *v84 = v86;
  v84[1] = v75;
LABEL_86:
  swift_willThrow();
  v27 = *(v0 + 8);
LABEL_87:

  return v27();
}

uint64_t sub_22FED9948@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = 0;
    v4 = result + 64;
    v5 = MEMORY[0x277D84F90];
    v37 = *(result + 16);
    v33 = result + 64;
    while (1)
    {
      v35 = v5;
      v6 = (v4 + 40 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          return result;
        }

        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_39;
        }

        v8 = *(v6 - 2);
        if (!*(v8 + 16))
        {
          goto LABEL_6;
        }

        v9 = *(v6 - 4);
        v10 = *(v6 - 3);
        v11 = *(v6 - 1);
        v12 = *v6;
        sub_22FEA5608(v9, v10);

        sub_22FEA5608(v11, v12);
        v13 = sub_22FFA619C(1701667182, 0xE400000000000000);
        if (v14)
        {
          v15 = (*(v8 + 56) + 16 * v13);
          v16 = *v15 == 0x692D6E6977726164 && v15[1] == 0xEB0000000074696ELL;
          if (v16 || (sub_22FFB1BC8() & 1) != 0)
          {
            if (!*(v8 + 16) || (v17 = sub_22FFA619C(0x7079745F656D696DLL, 0xE900000000000065), (v18 & 1) == 0))
            {
              sub_22FEA55AC(v9, v10);

              sub_22FEA55AC(v11, v12);

              goto LABEL_5;
            }

            v19 = (*(v8 + 56) + 16 * v17);
            v20 = *v19 == 0xD000000000000010 && 0x800000022FFC9E50 == v19[1];
            if (v20 || (sub_22FFB1BC8() & 1) != 0)
            {
              break;
            }
          }
        }

        sub_22FEA55AC(v9, v10);

        result = sub_22FEA55AC(v11, v12);
LABEL_5:
        v2 = v37;
LABEL_6:
        ++v7;
        v6 += 5;
        if (v3 == v2)
        {
          v5 = v35;
          goto LABEL_32;
        }
      }

      v5 = v35;
      result = swift_isUniquelyReferenced_nonNull_native();
      v36[0] = v35;
      if ((result & 1) == 0)
      {
        result = sub_22FECDAD4(0, *(v35 + 16) + 1, 1);
        v5 = v36[0];
      }

      v22 = v5[2];
      v21 = v5[3];
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        result = sub_22FECDAD4((v21 > 1), v22 + 1, 1);
        v23 = v22 + 1;
        v5 = v36[0];
      }

      v5[2] = v23;
      v24 = &v5[5 * v22];
      v24[4] = v9;
      v24[5] = v10;
      v24[6] = v8;
      v24[7] = v11;
      v24[8] = v12;
      v2 = v37;
      v4 = v33;
      if (v3 == v37)
      {
LABEL_32:
        v25 = v5[2];
        if (!v25)
        {
          goto LABEL_36;
        }

LABEL_33:
        v26 = v5[4];
        v27 = v5[5];
        v29 = v5[6];
        v28 = v5[7];
        v30 = v5[8];
        sub_22FEA5608(v26, v27);

        sub_22FEA5608(v28, v30);

        if (v25 == 1)
        {
          v36[0] = v26;
          v36[1] = v27;
          v36[2] = v29;
          v36[3] = v28;
          v36[4] = v30;
          return DarwinInit.init(from:)(v36, a2);
        }

        else
        {
          sub_22FEDA044();
          swift_allocError();
          *v32 = xmmword_22FFB4C50;
          *(v32 + 16) = 2;
          swift_willThrow();
          sub_22FEA55AC(v26, v27);

          return sub_22FEA55AC(v28, v30);
        }
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
  v25 = *(MEMORY[0x277D84F90] + 16);
  if (v25)
  {
    goto LABEL_33;
  }

LABEL_36:

  sub_22FEDA044();
  swift_allocError();
  *v31 = xmmword_22FFB4C60;
  *(v31 + 16) = 2;
  return swift_willThrow();
}

void static DarwinInitPolicy.validatedDarwinInitKey.getter(void *a1@<X8>)
{
  *a1 = &type metadata for DarwinInitPolicy;
  a1[1] = &protocol witness table for DarwinInitPolicy;
  a1[2] = 0xD000000000000013;
  a1[3] = 0x800000022FFC9E30;
}

uint64_t sub_22FED9D50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FEAA0D4;

  return DarwinInitPolicy.evaluate(bundle:context:)(a1, a2);
}

uint64_t AttestationPolicyContext.validatedDarwinInit.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (!*(v3 + 16) || (v4 = sub_22FFA62AC(&type metadata for DarwinInitPolicy, &protocol witness table for DarwinInitPolicy, 0xD000000000000013, 0x800000022FFC9E30), (v5 & 1) == 0))
  {
    v7 = 0u;
    v8 = 0u;

    goto LABEL_7;
  }

  sub_22FEBF2A4(*(v3 + 56) + 32 * v4, &v7);

  if (!*(&v8 + 1))
  {
LABEL_7:
    result = sub_22FED62C0(&v7);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAF1A88, &qword_22FFB3A60);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  return result;
}

unint64_t sub_22FED9ED8()
{
  result = qword_27DAF1F50;
  if (!qword_27DAF1F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1F50);
  }

  return result;
}

uint64_t sub_22FED9F2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16CloudAttestation16DarwinInitPolicyV5ErrorO(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 3 | (4 * *(a1 + 8))) + 2;
  }
}

uint64_t sub_22FED9F74(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
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

uint64_t sub_22FED9FC4(uint64_t result, int a2, int a3)
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
      *result = 4 * -a2;
      *(result + 8) = 0;
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

void *sub_22FEDA004(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) & 3 | 0x8000000000000000;
    result[1] = (a2 - 2) >> 2;
  }

  return result;
}

unint64_t sub_22FEDA044()
{
  result = qword_27DAF1F58;
  if (!qword_27DAF1F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAF1F58);
  }

  return result;
}

CloudAttestation::DeviceModePolicy::Constraint __swiftcall DeviceModePolicy.Constraint.init(_:)(CloudAttestation::DeviceModePolicy::Constraint result)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *v1 = v2;
  return result;
}

_BYTE *DeviceModePolicy.init(restrictedExecution:ephemeralData:developer:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a3;
  v5 = 0x10002u >> (8 * *a2);
  *a4 = 0x10002u >> (8 * *result);
  *(a4 + 1) = v5;
  *(a4 + 2) = 0x10002u >> (8 * v4);
  *(a4 + 5) = 0;
  *(a4 + 3) = 2;
  return result;
}

uint64_t sub_22FEDA0F8()
{
  v0 = sub_22FFB12F8();
  __swift_allocate_value_buffer(v0, qword_2814913E8);
  __swift_project_value_buffer(v0, qword_2814913E8);
  return sub_22FFB12E8();
}

unsigned __int8 *DeviceModePolicy.init(_:restrictedExecution:ephemeralData:developer:)@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X1>, _BYTE *a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = result[2];
  v6 = 0x10002u >> (8 * *a3);
  v7 = 0x10002u >> (8 * *a4);
  if (result[1])
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | *result;
  *a5 = 0x10002u >> (8 * *a2);
  *(a5 + 1) = v6;
  *(a5 + 2) = v7;
  *(a5 + 5) = v5 != 0;
  *(a5 + 3) = v9;
  return result;
}

uint64_t DeviceModePolicy.evaluate(bundle:context:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 28) = *v2;
  *(v3 + 29) = *(v2 + 1);
  v4 = *(v2 + 3);
  *(v3 + 26) = *(v2 + 5);
  *(v3 + 24) = v4;
  return MEMORY[0x2822009F8](sub_22FEDA22C, 0, 0);
}

uint64_t sub_22FEDA22C(void *a1)
{
  v52 = v1;
  v2 = *(v1 + 24);
  v3 = v2 | (*(v1 + 26) << 16);
  if (v2 == 2)
  {
    AttestationPolicyContext.validatedAttestation.getter(&v44);
    v4 = v45;
    if (v45 >> 60 == 15)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      v8 = v46;
      v7 = v47;
      v9 = v44;
      v48 = v44;
      v49 = v45;
      v50 = v46;
      v51 = v47;
      LOBYTE(v3) = SEP.Attestation.restrictedExecutionMode.getter();
      sub_22FECB858(v9, v4, v8, v7);
    }

    AttestationPolicyContext.validatedAttestation.getter(&v44);
    v10 = v45;
    if (v45 >> 60 == 15)
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v12 = v46;
      v11 = v47;
      v13 = v44;
      v48 = v44;
      v49 = v45;
      v50 = v46;
      v51 = v47;
      LOBYTE(v5) = SEP.Attestation.ephemeralDataMode.getter();
      sub_22FECB858(v13, v10, v12, v11);
    }

    AttestationPolicyContext.validatedAttestation.getter(&v44);
    v14 = v45;
    if (v45 >> 60 == 15)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = v46;
      v15 = v47;
      v16 = v44;
      v48 = v44;
      v49 = v45;
      v50 = v46;
      v51 = v47;
      v17 = SEP.Attestation.developerMode.getter();
      sub_22FECB858(v16, v14, v6, v15);
      LOBYTE(v6) = (v17 == 2) | v17;
    }
  }

  else
  {
    v5 = (v3 >> 8) & 1;
    LODWORD(v6) = HIWORD(v3) & 1;
  }

  v18 = *(v1 + 28);
  if (v18 == 2)
  {
    if (qword_281490270 != -1)
    {
      swift_once();
    }

    v19 = sub_22FFB12F8();
    __swift_project_value_buffer(v19, qword_2814913E8);
    v20 = sub_22FFB12D8();
    v21 = sub_22FFB1848();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22FE99000, v20, v21, "Skipping assertion of Restricted Execution Mode", v22, 2u);
      MEMORY[0x23190EFF0](v22, -1, -1);
    }
  }

  else
  {
    v23 = v18 & 1;
    v24 = v3 & 1;
    if ((v3 & 1) != v23)
    {
      v25 = v23 << 8;
      goto LABEL_36;
    }
  }

  v26 = *(v1 + 29);
  if (v26 != 2)
  {
    if ((v5 & 1) == (v26 & 1))
    {
      goto LABEL_28;
    }

    v25 = v5 & 1 | ((v26 & 1) << 8);
    v24 = 0x4000;
LABEL_36:
    v36 = v25 | v24;
    sub_22FEDA894();
    swift_allocError();
    *v37 = v36;
    swift_willThrow();
    v38 = *(v1 + 8);
    goto LABEL_42;
  }

  if (qword_281490270 != -1)
  {
    swift_once();
  }

  v27 = sub_22FFB12F8();
  __swift_project_value_buffer(v27, qword_2814913E8);
  v28 = sub_22FFB12D8();
  v29 = sub_22FFB1848();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_22FE99000, v28, v29, "Skipping assertion of Ephemeral Data Mode", v30, 2u);
    MEMORY[0x23190EFF0](v30, -1, -1);
  }

LABEL_28:
  v31 = *(v1 + 30);
  if (v31 == 2)
  {
    if (qword_281490270 != -1)
    {
      swift_once();
    }

    v32 = sub_22FFB12F8();
    __swift_project_value_buffer(v32, qword_2814913E8);
    v33 = sub_22FFB12D8();
    v34 = sub_22FFB1848();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_22FE99000, v33, v34, "Skipping developer mode restriction", v35, 2u);
      MEMORY[0x23190EFF0](v35, -1, -1);
    }

    goto LABEL_37;
  }

  if ((v6 & 1) != (v31 & 1))
  {
    v25 = v6 & 1 | ((v31 & 1) << 8);
    v24 = 0x8000;
    goto LABEL_36;
  }

LABEL_37:
  if (qword_281490270 != -1)
  {
    swift_once();
  }

  v39 = sub_22FFB12F8();
  __swift_project_value_buffer(v39, qword_2814913E8);
  v40 = sub_22FFB12D8();
  v41 = sub_22FFB1848();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_22FE99000, v40, v41, "AttestationBundle passed DeviceModePolicy: device has satisfactory REM, EphDM, and DevMode states", v42, 2u);
    MEMORY[0x23190EFF0](v42, -1, -1);
  }

  v38 = *(v1 + 8);
LABEL_42:

  return v38();
}