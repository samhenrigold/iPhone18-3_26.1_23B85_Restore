id SHMediaItem.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A950, &unk_266294EA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266294E70;
  v3 = *MEMORY[0x277CDC790];
  *(inited + 32) = *MEMORY[0x277CDC790];
  v61 = v3;
  v4 = *a1;
  v5 = a1[1];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A958, &qword_266295110);
  *(inited + 40) = v4;
  *(inited + 48) = v5;
  v60 = *MEMORY[0x277CDC7A8];
  v7 = *MEMORY[0x277CDC7A8];
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  v8 = a1[3];
  *(inited + 80) = a1[2];
  *(inited + 88) = v8;
  v59 = *MEMORY[0x277CDC798];
  v9 = *MEMORY[0x277CDC798];
  *(inited + 104) = v6;
  *(inited + 112) = v9;
  v10 = a1[5];
  *(inited + 120) = a1[4];
  *(inited + 128) = v10;
  v58 = *MEMORY[0x277CDC760];
  v11 = *MEMORY[0x277CDC760];
  *(inited + 144) = v6;
  *(inited + 152) = v11;
  v12 = a1[7];
  *(inited + 160) = a1[6];
  *(inited + 168) = v12;
  v57 = *MEMORY[0x277CDC780];
  v13 = *MEMORY[0x277CDC780];
  *(inited + 184) = v6;
  *(inited + 192) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A960, &qword_266294EB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_266294E80;
  v15 = a1[9];
  *(v14 + 32) = a1[8];
  *(v14 + 40) = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A968, &qword_266294EB8);
  *(inited + 200) = v14;
  v56 = *MEMORY[0x277CDC750];
  v17 = *MEMORY[0x277CDC750];
  *(inited + 224) = v16;
  *(inited + 232) = v17;
  v18 = a1[11];
  *(inited + 240) = a1[10];
  *(inited + 248) = v18;
  v55 = *MEMORY[0x277CDC758];
  v19 = *MEMORY[0x277CDC758];
  *(inited + 264) = v6;
  *(inited + 272) = v19;
  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
  v21 = matched[10];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  *(inited + 304) = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 280));
  sub_2662794E4(a1 + v21, boxed_opaque_existential_0, &qword_28006A970, &qword_266294EC0);
  v54 = *MEMORY[0x277CDC7B8];
  *(inited + 312) = *MEMORY[0x277CDC7B8];
  v24 = matched[11];
  *(inited + 344) = v22;
  v25 = __swift_allocate_boxed_opaque_existential_0((inited + 320));
  sub_2662794E4(a1 + v24, v25, &qword_28006A970, &qword_266294EC0);
  v26 = *MEMORY[0x277CDC768];
  *(inited + 352) = *MEMORY[0x277CDC768];
  v27 = matched[12];
  *(inited + 384) = v22;
  v28 = __swift_allocate_boxed_opaque_existential_0((inited + 360));
  sub_2662794E4(a1 + v27, v28, &qword_28006A970, &qword_266294EC0);
  v29 = *MEMORY[0x277CDC7B0];
  *(inited + 392) = *MEMORY[0x277CDC7B0];
  v30 = matched[13];
  *(inited + 424) = v22;
  v31 = __swift_allocate_boxed_opaque_existential_0((inited + 400));
  sub_2662794E4(a1 + v30, v31, &qword_28006A970, &qword_266294EC0);
  v32 = *MEMORY[0x277CDC770];
  *(inited + 432) = *MEMORY[0x277CDC770];
  v33 = *(a1 + matched[14]);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A978, &qword_266294EC8);
  *(inited + 440) = v33;
  v35 = *MEMORY[0x277CDC788];
  *(inited + 464) = v34;
  *(inited + 472) = v35;
  v36 = (a1 + matched[15]);
  v38 = *v36;
  v37 = v36[1];
  *(inited + 504) = v6;
  *(inited + 480) = v38;
  *(inited + 488) = v37;

  v39 = v61;

  v40 = v60;

  v41 = v59;

  v42 = v58;

  v43 = v57;

  v44 = v56;

  v45 = v55;
  v46 = v54;
  v47 = v26;
  v48 = v29;
  v49 = v32;
  v50 = v35;
  v51 = sub_266278FA0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A980, &qword_266294ED0);
  swift_arrayDestroy();
  v52 = sub_266277928(v51);
  sub_2662790DC(a1);
  return v52;
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

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

id sub_266277928(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9B8, &qword_266295080);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266294E90;
  *(inited + 32) = sub_26629484C();
  v3 = *MEMORY[0x277CDC7A0];
  *(inited + 40) = *MEMORY[0x277CDC7A0];
  v4 = v3;
  v5 = sub_26629485C();
  v6 = *MEMORY[0x277CDC778];
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v7 = v6;
  v8 = sub_266279268(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9C0, &qword_266295088);
  swift_arrayDestroy();
  v9 = 0;
  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = v13;
LABEL_10:
    v13 = (v15 - 1) & v15;
    if (a1[2])
    {
      v97 = (v15 - 1) & v15;
      v17 = (v9 << 9) | (8 * __clz(__rbit64(v15)));
      v18 = *(*(v8 + 56) + v17);
      v19 = *(*(v8 + 48) + v17);
      v20 = v18;
      v21 = sub_266278F00(v19, sub_266278CB0);
      if (v22)
      {
        sub_266279374(a1[7] + 32 * v21, v101);
        sub_266279374(v101, &v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9C8, &qword_266295090);
        if (swift_dynamicCast())
        {
          v23 = *&v98[0];
          v24 = *(*&v98[0] + 16);
          if (v24)
          {
            v92 = v20;
            v94 = v8;
            *&v99 = MEMORY[0x277D84F90];
            sub_266278DB4(0, v24, 0);
            v25 = v99;
            v26 = (v23 + 40);
            do
            {
              v27 = [objc_allocWithZone(MEMORY[0x277CDC738]) initWithLowerBound:*(v26 - 1) upperBound:*v26];
              *&v99 = v25;
              v29 = *(v25 + 16);
              v28 = *(v25 + 24);
              if (v29 >= v28 >> 1)
              {
                v90 = v27;
                sub_266278DB4((v28 > 1), v29 + 1, 1);
                v27 = v90;
                v25 = v99;
              }

              *(v25 + 16) = v29 + 1;
              *(v25 + 8 * v29 + 32) = v27;
              v26 += 2;
              --v24;
            }

            while (v24);

            v20 = v92;
            v8 = v94;
          }

          else
          {

            v25 = MEMORY[0x277D84F90];
          }

          *(&v100 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9E0, &qword_2662950A8);
          *&v99 = v25;
          sub_2662793D0(&v99, v98);
          v48 = a1;
          v49 = v20;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = sub_266278F00(v49, sub_266278CB0);
          v53 = v48[2];
          v54 = (v52 & 1) == 0;
          v55 = __OFADD__(v53, v54);
          v56 = v53 + v54;
          if (v55)
          {
            goto LABEL_68;
          }

          v57 = v52;
          if (v48[3] >= v56)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_37;
            }

            v75 = v51;
            sub_266278698();
            v51 = v75;
            if ((v57 & 1) == 0)
            {
              goto LABEL_54;
            }

LABEL_38:
            v59 = v48;
            v60 = (v48[7] + 32 * v51);
            __swift_destroy_boxed_opaque_existential_0(v60);
            sub_2662793D0(v98, v60);
          }

          else
          {
            sub_266278818(v56, isUniquelyReferenced_nonNull_native);
            v51 = sub_266278F00(v49, sub_266278CB0);
            if ((v57 & 1) != (v58 & 1))
            {
              goto LABEL_74;
            }

LABEL_37:
            if (v57)
            {
              goto LABEL_38;
            }

LABEL_54:
            v48[(v51 >> 6) + 8] |= 1 << v51;
            *(v48[6] + 8 * v51) = v49;
            sub_2662793D0(v98, (v48[7] + 32 * v51));
            v76 = v48[2];
            v55 = __OFADD__(v76, 1);
            v77 = v76 + 1;
            if (v55)
            {
              goto LABEL_71;
            }

            v59 = v48;
            v48[2] = v77;
          }

          v61 = v59;
          goto LABEL_60;
        }

        sub_266279374(v101, &v99);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9D0, &qword_266295098);
        if (swift_dynamicCast())
        {
          v30 = *&v98[0];
          v31 = *(*&v98[0] + 16);
          if (v31)
          {
            v93 = v20;
            v95 = v8;
            *&v98[0] = MEMORY[0x277D84F90];
            sub_266278DB4(0, v31, 0);
            v32 = *&v98[0];
            v33 = (v30 + 36);
            do
            {
              v34 = [objc_allocWithZone(MEMORY[0x277CDC738]) initWithLowerBound:*(v33 - 1) upperBound:*v33];
              *&v98[0] = v32;
              v36 = *(v32 + 16);
              v35 = *(v32 + 24);
              if (v36 >= v35 >> 1)
              {
                v91 = v34;
                sub_266278DB4((v35 > 1), v36 + 1, 1);
                v34 = v91;
                v32 = *&v98[0];
              }

              *(v32 + 16) = v36 + 1;
              *(v32 + 8 * v36 + 32) = v34;
              v33 += 2;
              --v31;
            }

            while (v31);

            v20 = v93;
            v8 = v95;
          }

          else
          {

            v32 = MEMORY[0x277D84F90];
          }

          *(&v100 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9E0, &qword_2662950A8);
          *&v99 = v32;
          sub_2662793D0(&v99, v98);
          v61 = a1;
          v65 = v20;
          v66 = swift_isUniquelyReferenced_nonNull_native();
          v67 = sub_266278F00(v65, sub_266278CB0);
          v69 = v61[2];
          v70 = (v68 & 1) == 0;
          v55 = __OFADD__(v69, v70);
          v71 = v69 + v70;
          if (v55)
          {
            goto LABEL_69;
          }

          v72 = v68;
          if (v61[3] < v71)
          {
            sub_266278818(v71, v66);
            v67 = sub_266278F00(v65, sub_266278CB0);
            if ((v72 & 1) != (v73 & 1))
            {
              goto LABEL_74;
            }

            goto LABEL_51;
          }

          if (v66)
          {
LABEL_51:
            if (v72)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v79 = v67;
            sub_266278698();
            v67 = v79;
            if (v72)
            {
LABEL_52:
              v74 = (v61[7] + 32 * v67);
              __swift_destroy_boxed_opaque_existential_0(v74);
              sub_2662793D0(v98, v74);

              goto LABEL_60;
            }
          }

          v61[(v67 >> 6) + 8] |= 1 << v67;
          *(v61[6] + 8 * v67) = v65;
          sub_2662793D0(v98, (v61[7] + 32 * v67));
          v80 = v61[2];
          v55 = __OFADD__(v80, 1);
          v81 = v80 + 1;
          if (v55)
          {
            goto LABEL_73;
          }

          v61[2] = v81;
          goto LABEL_60;
        }

        sub_266279374(v101, &v99);
        v37 = a1;
        v38 = v20;
        v39 = swift_isUniquelyReferenced_nonNull_native();
        *&v98[0] = v37;
        v41 = sub_266278F00(v38, sub_266278CB0);
        v42 = v37[2];
        v43 = (v40 & 1) == 0;
        v44 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_70;
        }

        if (v37[3] >= v44)
        {
          if ((v39 & 1) == 0)
          {
            v78 = v40;
            sub_266278698();
            v40 = v78;
          }
        }

        else
        {
          v96 = v40;
          sub_266278818(v44, v39);
          v45 = sub_266278F00(v38, sub_266278CB0);
          v47 = v46 & 1;
          v40 = v96;
          if ((v96 & 1) != v47)
          {
            goto LABEL_74;
          }

          v41 = v45;
        }

        v61 = *&v98[0];
        if (v40)
        {
          v62 = (*(*&v98[0] + 56) + 32 * v41);
          __swift_destroy_boxed_opaque_existential_0(v62);
          sub_2662793D0(&v99, v62);
        }

        else
        {
          *(*&v98[0] + 8 * (v41 >> 6) + 64) |= 1 << v41;
          *(v61[6] + 8 * v41) = v38;
          sub_2662793D0(&v99, (v61[7] + 32 * v41));
          v63 = v61[2];
          v55 = __OFADD__(v63, 1);
          v64 = v63 + 1;
          if (v55)
          {
            goto LABEL_72;
          }

          v61[2] = v64;
        }

LABEL_60:
        v82 = sub_266278F00(v19, sub_266278CB0);
        if (v83)
        {
          v84 = v82;
          v85 = swift_isUniquelyReferenced_nonNull_native();
          *&v98[0] = v61;
          if ((v85 & 1) == 0)
          {
            sub_266278698();
            v61 = *&v98[0];
          }

          sub_2662793D0((v61[7] + 32 * v84), &v99);
          a1 = v61;
          sub_266278AE8(v84, v61);

          __swift_destroy_boxed_opaque_existential_0(v101);
        }

        else
        {
          a1 = v61;
          __swift_destroy_boxed_opaque_existential_0(v101);

          v99 = 0u;
          v100 = 0u;
        }

        sub_26627942C(&v99);
        v13 = v97;
      }

      else
      {

        v13 = v97;
      }
    }
  }

  while (1)
  {
    v16 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      type metadata accessor for SHMediaItemProperty();
      sub_266279224(&qword_28006A9A8, &unk_266294FEC);
      v87 = sub_2662947CC();
      v88 = [ObjCClassFromMetadata mediaItemWithProperties_];

      return v88;
    }

    v15 = *(v10 + 8 * v16);
    ++v9;
    if (v15)
    {
      v9 = v16;
      goto LABEL_10;
    }
  }

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
  type metadata accessor for SHMediaItemProperty();
  result = sub_266294A0C();
  __break(1u);
  return result;
}

uint64_t sub_2662782C4(uint64_t a1, id *a2)
{
  result = sub_2662947EC();
  *a2 = 0;
  return result;
}

uint64_t sub_26627833C(uint64_t a1, id *a2)
{
  v3 = sub_2662947FC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2662783BC@<X0>(uint64_t *a1@<X8>)
{
  sub_26629480C();
  v2 = sub_2662947DC();

  *a1 = v2;
  return result;
}

uint64_t sub_266278400()
{
  v0 = sub_26629480C();
  v1 = MEMORY[0x266780A80](v0);

  return v1;
}

uint64_t sub_26627843C(uint64_t a1)
{
  sub_26629480C();
  sub_26629481C();
}

uint64_t sub_266278490(uint64_t a1)
{
  sub_26629480C();
  sub_266294A1C();
  sub_26629481C();
  v1 = sub_266294A3C();

  return v1;
}

uint64_t sub_266278504(void *a1, uint64_t *a2)
{
  v2 = sub_26629480C();
  v4 = v3;
  if (v2 == sub_26629480C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2662949FC();
  }

  return v7 & 1;
}

uint64_t sub_26627858C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_2662947DC();

  *a2 = v3;
  return result;
}

uint64_t sub_2662785D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26629480C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_266278600(uint64_t a1)
{
  v2 = sub_266279224(&qword_28006A9A8, &unk_266294FEC);
  v3 = sub_266279224(&qword_28006A9B0, &unk_266294F8C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

id sub_266278698()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9F8, &qword_2662950B8);
  v2 = *v0;
  v3 = sub_2662948AC();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_266279374(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2662793D0(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

uint64_t sub_266278818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9F8, &qword_2662950B8);
  v35 = v4;
  result = sub_2662948BC();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_2662793D0(v22, v36);
      }

      else
      {
        sub_266279374(v22, v36);
        v23 = v21;
      }

      sub_26629480C();
      sub_266294A1C();
      sub_26629481C();
      v24 = sub_266294A3C();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_2662793D0(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

void sub_266278AE8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26629487C() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_26629480C();
      sub_266294A1C();
      v11 = v10;
      sub_26629481C();
      v12 = sub_266294A3C();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_266278CB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_26629480C();
      v8 = v7;
      if (v6 == sub_26629480C() && v8 == v9)
      {
        break;
      }

      v11 = sub_2662949FC();

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

void *sub_266278DB4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_266278DD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_266278DD4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9E8, &qword_2662950B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 3)) | 1;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    sub_266279494();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_266278F00(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_26629480C();
  sub_266294A1C();
  sub_26629481C();
  v3 = sub_266294A3C();

  return a2(a1, v3);
}

unint64_t sub_266278FA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9F8, &qword_2662950B8);
    v3 = sub_2662948CC();
    v4 = a1 + 32;

    while (1)
    {
      sub_2662794E4(v4, &v11, &qword_28006A980, &qword_266294ED0);
      v5 = v11;
      result = sub_266278F00(v11, sub_266278CB0);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2662793D0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

uint64_t sub_2662790DC(uint64_t a1)
{
  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

void type metadata accessor for SHMediaItemProperty()
{
  if (!qword_28006A988)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_28006A988);
    }
  }
}

uint64_t sub_266279224(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SHMediaItemProperty();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266279268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA00, &unk_2662950C0);
    v3 = sub_2662948CC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_266278F00(v6, sub_266278CB0);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_266279374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2662793D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_26627942C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A9D8, &qword_2662950A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266279494()
{
  result = qword_28006A9F0;
  if (!qword_28006A9F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28006A9F0);
  }

  return result;
}

uint64_t sub_2662794E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t SiriAudioDisambiguationSnippetModel.isAppDisambiguation.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  sub_26629478C();
  return v1;
}

uint64_t (*SiriAudioDisambiguationSnippetModel.isAppDisambiguation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioDisambiguationSnippetModel.items.getter()
{
  type metadata accessor for SiriAudioDisambiguationSnippetModel(0);
}

uint64_t SiriAudioDisambiguationSnippetModel.items.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SiriAudioDisambiguationSnippetModel(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SiriAudioDisambiguationSnippetModel.directInvocation.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriAudioDisambiguationSnippetModel(0) + 24));

  return v1;
}

uint64_t SiriAudioDisambiguationSnippetModel.directInvocation.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAudioDisambiguationSnippetModel(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAudioDisambiguationSnippetModel.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for SiriAudioDisambiguationSnippetModel(0) + 28));

  return v1;
}

uint64_t SiriAudioDisambiguationSnippetModel.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SiriAudioDisambiguationSnippetModel(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SiriAudioDisambiguationSnippetModel.init(title:items:directInvocation:isAppDisambiguation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v13 = type metadata accessor for SiriAudioDisambiguationSnippetModel(0);
  v14 = (a7 + v13[7]);
  *v14 = a1;
  v14[1] = a2;
  *(a7 + v13[5]) = a3;
  v15 = (a7 + v13[6]);
  *v15 = a4;
  v15[1] = a5;
  return sub_26629476C();
}

uint64_t _s19SiriAudioSnippetKit0ab12ActionButtonC4RoleO9hashValueSivg_0()
{
  v1 = *v0;
  sub_266294A1C();
  MEMORY[0x266780C80](v1);
  return sub_266294A3C();
}

uint64_t sub_2662799F4(uint64_t a1)
{
  v2 = *v1;
  sub_266294A1C();
  MEMORY[0x266780C80](v2);
  return sub_266294A3C();
}

unint64_t sub_266279A38()
{
  v1 = 0x736D657469;
  v2 = 0x656C746974;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_266279AB0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26627CE40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_266279AE4(uint64_t a1)
{
  v2 = sub_266279E18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266279B20(uint64_t a1)
{
  v2 = sub_266279E18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioDisambiguationSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA10, &qword_2662950D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266279E18();
  sub_266294A5C();
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  sub_26627A38C(&qword_28006AA20, MEMORY[0x277D637D0]);
  sub_2662949EC();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for SiriAudioDisambiguationSnippetModel(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA28, &qword_2662950E0);
    sub_26627A3FC(&qword_28006AA30, &qword_28006AA38, &protocol conformance descriptor for SiriAudioDisambiguationItemModel, MEMORY[0x277D83948]);
    sub_2662949EC();
    v10[14] = 2;
    sub_2662949CC();
    v10[13] = 3;
    sub_2662949CC();
  }

  return (*(v6 + 8))(v8, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_266279E18()
{
  result = qword_28006AA18;
  if (!qword_28006AA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AA18);
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

uint64_t sub_266279ED4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriAudioDisambiguationSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  v26 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA40, &qword_2662950E8);
  v28 = *(v6 - 8);
  v29 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for SiriAudioDisambiguationSnippetModel(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266279E18();
  v30 = v8;
  sub_266294A4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v11;
  v13 = v26;
  v35 = 0;
  sub_26627A38C(&qword_28006AA48, MEMORY[0x277D637E0]);
  v14 = v27;
  sub_26629496C();
  (*(v13 + 32))(v11, v14, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA28, &qword_2662950E0);
  v34 = 1;
  sub_26627A3FC(&qword_28006AA50, &qword_28006AA58, &protocol conformance descriptor for SiriAudioDisambiguationItemModel, MEMORY[0x277D83978]);
  sub_26629496C();
  *&v11[v9[5]] = v31;
  v33 = 2;
  v15 = sub_26629494C();
  v16 = a1;
  v17 = (v12 + v9[6]);
  *v17 = v15;
  v17[1] = v18;
  v32 = 3;
  v19 = sub_26629494C();
  v21 = v20;
  (*(v28 + 8))(v30, v29);
  v22 = (v12 + v9[7]);
  *v22 = v19;
  v22[1] = v21;
  sub_26627BBD8(v12, v25, type metadata accessor for SiriAudioDisambiguationSnippetModel);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return sub_26627BC40(v12, type metadata accessor for SiriAudioDisambiguationSnippetModel);
}

uint64_t sub_26627A38C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006AA08, &qword_2662950D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26627A3FC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006AA28, &qword_2662950E0);
    sub_26627A498(a2, type metadata accessor for SiriAudioDisambiguationItemModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26627A498(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SiriAudioDisambiguationItemModel.id.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

uint64_t sub_26627A54C(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t (*SiriAudioDisambiguationItemModel.id.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627A66C;
}

uint64_t SiriAudioDisambiguationItemModel.title.getter()
{
  type metadata accessor for SiriAudioDisambiguationItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

void *sub_26627A6C4@<X0>(void *a1@<X8>)
{
  type metadata accessor for SiriAudioDisambiguationItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26627A72C(void *a1)
{
  type metadata accessor for SiriAudioDisambiguationItemModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t SiriAudioDisambiguationItemModel.title.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriAudioDisambiguationItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t (*SiriAudioDisambiguationItemModel.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioDisambiguationItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioDisambiguationItemModel.subtitle.getter()
{
  type metadata accessor for SiriAudioDisambiguationItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  sub_26629478C();
  return v1;
}

double sub_26627A8E4@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for SiriAudioDisambiguationItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  sub_26629478C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_26627A94C(void *a1)
{
  type metadata accessor for SiriAudioDisambiguationItemModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  return sub_26629479C();
}

uint64_t SiriAudioDisambiguationItemModel.subtitle.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriAudioDisambiguationItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  return sub_26629479C();
}

uint64_t (*SiriAudioDisambiguationItemModel.subtitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioDisambiguationItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

void *SiriAudioDisambiguationItemModel.imageURL.getter()
{
  type metadata accessor for SiriAudioDisambiguationItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  return sub_26629478C();
}

void *sub_26627AB04()
{
  type metadata accessor for SiriAudioDisambiguationItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  return sub_26629478C();
}

uint64_t sub_26627AB5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_26627AD08(a1, &v9 - v6);
  sub_26627AD08(v7, v5);
  type metadata accessor for SiriAudioDisambiguationItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  sub_26629479C();
  return sub_26627AD78(v7);
}

uint64_t SiriAudioDisambiguationItemModel.imageURL.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26627AD08(a1, &v5 - v3);
  type metadata accessor for SiriAudioDisambiguationItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  sub_26629479C();
  return sub_26627AD78(a1);
}

uint64_t sub_26627AD08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26627AD78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*SiriAudioDisambiguationItemModel.imageURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioDisambiguationItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

void sub_26627AE7C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_26627AED4()
{
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

uint64_t sub_26627AF88(uint64_t a1)
{
  sub_26629481C();
}

uint64_t sub_26627B028(uint64_t a1)
{
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

unint64_t sub_26627B0D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26627CFAC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26627B108(uint64_t *a1@<X8>)
{
  v2 = 0xE200000000000000;
  v3 = 25705;
  v4 = 0x656C746974627573;
  if (*v1 != 2)
  {
    v4 = 0x4C52556567616D69;
  }

  if (*v1)
  {
    v3 = 0x656C746974;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_26627B178()
{
  v1 = 25705;
  v2 = 0x656C746974627573;
  if (*v0 != 2)
  {
    v2 = 0x4C52556567616D69;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

unint64_t sub_26627B1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26627CFAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26627B218(uint64_t a1)
{
  v2 = sub_26627BAE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627B254(uint64_t a1)
{
  v2 = sub_26627BAE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioDisambiguationItemModel.init(id:title:subtitle:imageURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a5;
  v21 = a6;
  v18 = a3;
  v19 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - v14;
  type metadata accessor for SiriAudioDisambiguationItemModel(0);
  v22 = 0;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A958, &qword_266295110);
  sub_26629476C();
  v16 = sub_26629470C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_26627AD08(v15, v13);
  sub_26629476C();
  sub_26627AD78(v15);
  v22 = a1;
  v23 = a2;
  sub_26629476C();
  v22 = v18;
  v23 = v19;
  sub_26629476C();
  v22 = v20;
  v23 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  sub_26629479C();
  sub_26627AD08(a7, v15);
  sub_26627AD08(v15, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  sub_26629479C();
  sub_26627AD78(a7);
  return sub_26627AD78(v15);
}

uint64_t SiriAudioDisambiguationItemModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA78, &qword_266295118);
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v7 = MEMORY[0x28223BE20](v6);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  v14 = type metadata accessor for SiriAudioDisambiguationItemModel(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v15 + 24);
  v45 = 0uLL;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A958, &qword_266295110);
  v46 = v18;
  sub_26629476C();
  v20 = *(v14 + 28);
  v21 = sub_26629470C();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  sub_26627AD08(v13, v11);
  v43 = v20;
  v41 = v17;
  sub_26629476C();
  sub_26627AD78(v13);
  v22 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_26627BAE8();
  v39 = v5;
  v23 = v40;
  sub_266294A4C();
  if (v23)
  {
    v26 = v41;
    __swift_destroy_boxed_opaque_existential_0(v42);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
    (*(*(v27 - 8) + 8))(&v26[v46], v27);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    return (*(*(v28 - 8) + 8))(&v26[v43], v28);
  }

  else
  {
    v40 = v19;
    v25 = v37;
    v24 = v38;
    LOBYTE(v45) = 0;
    *&v45 = sub_26629494C();
    *(&v45 + 1) = v29;
    v30 = v41;
    sub_26629476C();
    LOBYTE(v45) = 1;
    *&v45 = sub_26629494C();
    *(&v45 + 1) = v31;
    sub_26629476C();
    LOBYTE(v44) = 2;
    sub_26627C060(&qword_28006AA88, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
    sub_26629496C();
    v40 = 0;
    v44 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
    sub_26629479C();
    LOBYTE(v45) = 3;
    sub_26627BB3C(&qword_28006AA90, &qword_28006AA98, MEMORY[0x277CC9280], MEMORY[0x277D84F58]);
    v32 = v36;
    sub_26629496C();
    sub_26627AD08(v32, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    sub_26629479C();
    sub_26627AD78(v32);
    (*(v25 + 8))(v39, v24);
    sub_26627BBD8(v30, v35, type metadata accessor for SiriAudioDisambiguationItemModel);
    __swift_destroy_boxed_opaque_existential_0(v42);
    return sub_26627BC40(v30, type metadata accessor for SiriAudioDisambiguationItemModel);
  }
}

unint64_t sub_26627BAE8()
{
  result = qword_28006AA80;
  if (!qword_28006AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AA80);
  }

  return result;
}

uint64_t sub_26627BB3C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006A970, &qword_266294EC0);
    sub_26627A498(a2, MEMORY[0x277CC9260], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26627BBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26627BC40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SiriAudioDisambiguationItemModel.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  MEMORY[0x28223BE20](v13);
  v12 = &v11 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AAA0, &qword_266295120);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26627BAE8();
  sub_266294A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  LOBYTE(v15) = 0;
  v7 = v14;
  sub_2662949CC();
  if (v7)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v14 = v4;

    type metadata accessor for SiriAudioDisambiguationItemModel(0);
    sub_26629478C();
    LOBYTE(v15) = 1;
    sub_2662949CC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
    sub_26629478C();
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A958, &qword_266295110);
    sub_26627C060(&qword_28006AAA8, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
    sub_2662949EC();

    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    v10 = v12;
    sub_26629478C();
    LOBYTE(v15) = 3;
    sub_26627BB3C(&qword_28006AAB0, &qword_28006AAB8, MEMORY[0x277CC9268], MEMORY[0x277D84F40]);
    sub_2662949EC();
    sub_26627AD78(v10);
    return (*(v9 + 8))(v6, 0);
  }
}

uint64_t sub_26627C060(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006A958, &qword_266295110);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_26627C1F8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_26627C274@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  result = sub_26629478C();
  *a1 = v3;
  return result;
}

void *sub_26627C314@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26627C394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
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

uint64_t sub_26627C470(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
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

void sub_26627C534(uint64_t a1)
{
  sub_26627CA08(319, &qword_28006AAE0, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    sub_26627C5D8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26627C5D8(uint64_t a1)
{
  if (!qword_28006AAE8)
  {
    type metadata accessor for SiriAudioDisambiguationItemModel(255);
    v1 = sub_26629483C();
    if (!v2)
    {
      atomic_store(v1, &qword_28006AAE8);
    }
  }
}

uint64_t sub_26627C644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 28);

  return v15(v16, a2, v14);
}

uint64_t sub_26627C7BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 28);

  return v17(v18, a2, a2, v16);
}

void sub_26627C92C(uint64_t a1)
{
  sub_26627CA08(319, &qword_28006AB00, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_26627CA54(319, &qword_28006AB08, &qword_28006A958, &qword_266295110);
    if (v2 <= 0x3F)
    {
      sub_26627CA54(319, &qword_28006AB10, &qword_28006A970, &qword_266294EC0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26627CA08(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2662947AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26627CA54(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_2662947AC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for SiriAudioPunchOutRowSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SiriAudioPunchOutRowSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26627CC34()
{
  result = qword_28006AB18;
  if (!qword_28006AB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB18);
  }

  return result;
}

unint64_t sub_26627CC8C()
{
  result = qword_28006AB20;
  if (!qword_28006AB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB20);
  }

  return result;
}

unint64_t sub_26627CCE4()
{
  result = qword_28006AB28;
  if (!qword_28006AB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB28);
  }

  return result;
}

unint64_t sub_26627CD3C()
{
  result = qword_28006AB30;
  if (!qword_28006AB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB30);
  }

  return result;
}

unint64_t sub_26627CD94()
{
  result = qword_28006AB38;
  if (!qword_28006AB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB38);
  }

  return result;
}

unint64_t sub_26627CDEC()
{
  result = qword_28006AB40;
  if (!qword_28006AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB40);
  }

  return result;
}

uint64_t sub_26627CE40(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x8000000266298310 == a2;
  if (v3 || (sub_2662949FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000266298330 == a2 || (sub_2662949FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2662949FC();

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

unint64_t sub_26627CFAC(uint64_t a1, uint64_t a2)
{
  v2 = sub_2662948EC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26627D13C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t SiriAudioMediaPlayerSnippetModel.init(mediaPlayerModel:alternativesModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MediaPlayerModel(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for SiriAudioMediaPlayerSnippetModel(0) + 20);
  v8 = type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  (*(*(v8 - 8) + 56))(a3 + v7, 1, 1, v8);
  sub_26627D13C(a1, a3, &qword_28006AB48, &qword_266295550);
  return sub_26627D13C(a2, a3 + v7, &qword_28006AB50, &qword_266295558);
}

unint64_t sub_26627D320()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_26627D358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000266298350 == a2 || (sub_2662949FC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000266298370 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2662949FC();

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

uint64_t sub_26627D448(uint64_t a1)
{
  v2 = sub_26627D6C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627D484(uint64_t a1)
{
  v2 = sub_26627D6C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioMediaPlayerSnippetModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB58, &qword_266295560);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26627D6C0();
  sub_266294A5C();
  v8[15] = 0;
  type metadata accessor for MediaPlayerModel(0);
  sub_26627D714(&qword_28006AB68, type metadata accessor for MediaPlayerModel, &protocol conformance descriptor for MediaPlayerModel);
  sub_2662949BC();
  if (!v1)
  {
    type metadata accessor for SiriAudioMediaPlayerSnippetModel(0);
    v8[14] = 1;
    type metadata accessor for SiriAudioAlternativeSnippetModel(0);
    sub_26627D714(&qword_28006AB70, type metadata accessor for SiriAudioAlternativeSnippetModel, &protocol conformance descriptor for SiriAudioAlternativeSnippetModel);
    sub_2662949BC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26627D6C0()
{
  result = qword_28006AB60;
  if (!qword_28006AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB60);
  }

  return result;
}

uint64_t sub_26627D714(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SiriAudioMediaPlayerSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB50, &qword_266295558);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB48, &qword_266295550);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = &v22 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB78, &unk_266295568);
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v22 - v7;
  v9 = type metadata accessor for SiriAudioMediaPlayerSnippetModel(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MediaPlayerModel(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = *(v10 + 28);
  v15 = type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  (*(*(v15 - 8) + 56))(&v12[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26627D6C0();
  v16 = v27;
  sub_266294A4C();
  if (!v16)
  {
    v27 = v14;
    v18 = v23;
    v17 = v24;
    v29 = 0;
    sub_26627D714(&qword_28006AB80, type metadata accessor for MediaPlayerModel, &protocol conformance descriptor for MediaPlayerModel);
    sub_26629493C();
    sub_26627D13C(v25, v12, &qword_28006AB48, &qword_266295550);
    v28 = 1;
    sub_26627D714(&qword_28006AB88, type metadata accessor for SiriAudioAlternativeSnippetModel, &protocol conformance descriptor for SiriAudioAlternativeSnippetModel);
    v19 = v17;
    v20 = v26;
    sub_26629493C();
    (*(v18 + 8))(v8, v20);
    sub_26627D13C(v19, &v12[v27], &qword_28006AB50, &qword_266295558);
    sub_26627E6E0(v12, v22, type metadata accessor for SiriAudioMediaPlayerSnippetModel);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_26627E748(v12, type metadata accessor for SiriAudioMediaPlayerSnippetModel);
}

uint64_t MediaPlayerModel.routeUID.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

uint64_t (*MediaPlayerModel.routeUID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t MediaPlayerModel.bundleID.getter()
{
  type metadata accessor for MediaPlayerModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

void *sub_26627DD18@<X0>(void *a1@<X8>)
{
  type metadata accessor for MediaPlayerModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26627DD80(void *a1)
{
  type metadata accessor for MediaPlayerModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t MediaPlayerModel.bundleID.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MediaPlayerModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t (*MediaPlayerModel.bundleID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for MediaPlayerModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627A66C;
}

uint64_t MediaPlayerModel.init(routeUID:bundleID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26629476C();
  type metadata accessor for MediaPlayerModel(0);
  return sub_26629476C();
}

uint64_t sub_26627DF54()
{
  if (*v0)
  {
    return 0x4449656C646E7562;
  }

  else
  {
    return 0x4449556574756F72;
  }
}

uint64_t sub_26627DF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449556574756F72 && a2 == 0xE800000000000000;
  if (v6 || (sub_2662949FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2662949FC();

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

uint64_t sub_26627E064(uint64_t a1)
{
  v2 = sub_26627E298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627E0A0(uint64_t a1)
{
  v2 = sub_26627E298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaPlayerModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB90, &qword_266295578);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26627E298();
  sub_266294A5C();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26627E670(&qword_28006ABA0, MEMORY[0x277D637D0]);
  sub_2662949EC();
  if (!v1)
  {
    type metadata accessor for MediaPlayerModel(0);
    v8[14] = 1;
    sub_2662949EC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26627E298()
{
  result = qword_28006AB98;
  if (!qword_28006AB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AB98);
  }

  return result;
}

uint64_t MediaPlayerModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v25 = *(v28 - 8);
  v4 = MEMORY[0x28223BE20](v28);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v27 = v20 - v7;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ABA8, &qword_266295580);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = v20 - v8;
  v10 = type metadata accessor for MediaPlayerModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26627E298();
  sub_266294A4C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v10;
  v22 = v12;
  v14 = v24;
  v13 = v25;
  v30 = 0;
  v15 = sub_26627E670(&qword_28006ABB0, MEMORY[0x277D637E0]);
  v16 = v26;
  sub_26629496C();
  v20[1] = v15;
  v17 = v27;
  v27 = *(v13 + 32);
  (v27)(v22, v17, v28);
  v29 = 1;
  sub_26629496C();
  (*(v14 + 8))(v9, v16);
  v18 = v22;
  (v27)(&v22[*(v21 + 20)], v6, v28);
  sub_26627E6E0(v18, v23, type metadata accessor for MediaPlayerModel);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_26627E748(v18, type metadata accessor for MediaPlayerModel);
}

uint64_t sub_26627E670(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006AA60, &qword_2662950F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26627E6E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26627E748(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_26627E8F8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26627E968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB48, &qword_266295550);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB50, &qword_266295558);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_26627EA84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB48, &qword_266295550);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AB50, &qword_266295558);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_26627EB98(uint64_t a1)
{
  sub_26627EC54(319, &qword_28006ABD8, type metadata accessor for MediaPlayerModel);
  if (v1 <= 0x3F)
  {
    sub_26627EC54(319, &qword_28006ABE0, type metadata accessor for SiriAudioAlternativeSnippetModel);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26627EC54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26629486C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_26627ECBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26627ED48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_26627EDC4(uint64_t a1)
{
  sub_26627EE30();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26627EE30()
{
  if (!qword_28006AB00)
  {
    v0 = sub_2662947AC();
    if (!v1)
    {
      atomic_store(v0, &qword_28006AB00);
    }
  }
}

uint64_t sub_26627EE94(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_26627EF28(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26627EFF8()
{
  result = qword_28006ABF8;
  if (!qword_28006ABF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ABF8);
  }

  return result;
}

unint64_t sub_26627F050()
{
  result = qword_28006AC00;
  if (!qword_28006AC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC00);
  }

  return result;
}

unint64_t sub_26627F0A8()
{
  result = qword_28006AC08;
  if (!qword_28006AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC08);
  }

  return result;
}

unint64_t sub_26627F100()
{
  result = qword_28006AC10;
  if (!qword_28006AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC10);
  }

  return result;
}

unint64_t sub_26627F158()
{
  result = qword_28006AC18;
  if (!qword_28006AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC18);
  }

  return result;
}

unint64_t sub_26627F1B0()
{
  result = qword_28006AC20;
  if (!qword_28006AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC20);
  }

  return result;
}

BOOL SiriAudioSnippets.snippetHidden(for:idiom:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioSnippets(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2662947BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a2, v7);
  LODWORD(a2) = (*(v8 + 88))(v10, v7);
  v11 = *MEMORY[0x277D61BE8];
  (*(v8 + 8))(v10, v7);
  if (a2 != v11)
  {
    return 0;
  }

  sub_26627F448(v2, v6);
  v12 = swift_getEnumCaseMultiPayload() != 2;
  sub_266280C08(v6, type metadata accessor for SiriAudioSnippets);
  return v12;
}

uint64_t type metadata accessor for SiriAudioSnippets(uint64_t a1)
{
  result = qword_28006AD40;
  if (!qword_28006AD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26627F448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioSnippets(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26627F500(uint64_t a1)
{
  v2 = sub_266280B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627F53C(uint64_t a1)
{
  v2 = sub_266280B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26627F578(uint64_t a1)
{
  v2 = sub_266280A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627F5B4(uint64_t a1)
{
  v2 = sub_266280A64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26627F5F0()
{
  v1 = *v0;
  v2 = 0x616D7269666E6F63;
  v3 = 0x6D617A616873;
  if (v1 != 5)
  {
    v3 = 0x616C50616964656DLL;
  }

  v4 = 0x6554656C706D6973;
  if (v1 != 3)
  {
    v4 = 0x74616E7265746C61;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x75426E6F69746361;
  if (v1 != 1)
  {
    v5 = 0x6769626D61736964;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26627F6F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_266282CCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26627F724(uint64_t a1)
{
  v2 = sub_266280968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627F760(uint64_t a1)
{
  v2 = sub_266280968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26627F79C(uint64_t a1)
{
  v2 = sub_266280BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627F7D8(uint64_t a1)
{
  v2 = sub_266280BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26627F814(uint64_t a1)
{
  v2 = sub_266280B0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627F850(uint64_t a1)
{
  v2 = sub_266280B0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26627F88C(uint64_t a1)
{
  v2 = sub_2662809BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627F8C8(uint64_t a1)
{
  v2 = sub_2662809BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26627F904(uint64_t a1)
{
  v2 = sub_266280A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627F940(uint64_t a1)
{
  v2 = sub_266280A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26627F97C()
{
  sub_266294A1C();
  MEMORY[0x266780C80](0);
  return sub_266294A3C();
}

uint64_t sub_26627F9C0(uint64_t a1)
{
  sub_266294A1C();
  MEMORY[0x266780C80](0);
  return sub_266294A3C();
}

uint64_t sub_26627FA00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2662949FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26627FA80(uint64_t a1)
{
  v2 = sub_266280AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26627FABC(uint64_t a1)
{
  v2 = sub_266280AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioSnippets.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC28, &qword_266295920);
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x28223BE20](v2);
  v78 = &v57 - v3;
  v76 = type metadata accessor for SiriAudioMediaPlayerSnippetModel(0);
  MEMORY[0x28223BE20](v76);
  v77 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC30, &qword_266295928);
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x28223BE20](v5);
  v73 = &v57 - v6;
  v71 = type metadata accessor for SiriAudioShazamSnippetModel(0);
  MEMORY[0x28223BE20](v71);
  v72 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC38, &qword_266295930);
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v57 - v8;
  v66 = type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  MEMORY[0x28223BE20](v66);
  v67 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC40, &qword_266295938);
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v63 = &v57 - v10;
  v61 = type metadata accessor for SiriAudioSimpleTextSnippetModel(0);
  MEMORY[0x28223BE20](v61);
  v62 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC48, &qword_266295940);
  v60 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v87 = &v57 - v12;
  v86 = type metadata accessor for SiriAudioDisambiguationSnippetModel(0);
  MEMORY[0x28223BE20](v86);
  v85 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC50, &qword_266295948);
  v59 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v57 - v14;
  v58 = type metadata accessor for SiriAudioActionButtonSnippetModel(0);
  MEMORY[0x28223BE20](v58);
  v82 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC58, &qword_266295950);
  v57 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v17 = &v57 - v16;
  v18 = type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for SiriAudioSnippets(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AC60, &qword_266295958);
  v92 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v25 = &v57 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266280968();
  v90 = v25;
  sub_266294A5C();
  sub_26627F448(v91, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v91 = v18;
    v34 = v81;
    v35 = v83;
    v36 = v84;
    v37 = v87;
    v38 = v88;
    if (EnumCaseMultiPayload)
    {
      v39 = v89;
      if (EnumCaseMultiPayload == 1)
      {
        v40 = v82;
        sub_266281D4C(v23, v82, type metadata accessor for SiriAudioActionButtonSnippetModel);
        v94 = 1;
        sub_266280B60();
        v41 = v35;
        v42 = v90;
        sub_26629498C();
        sub_266281E44(&qword_28006ACB0, type metadata accessor for SiriAudioActionButtonSnippetModel, &protocol conformance descriptor for SiriAudioActionButtonSnippetModel);
        sub_2662949EC();
        (*(v59 + 8))(v41, v36);
        v43 = type metadata accessor for SiriAudioActionButtonSnippetModel;
      }

      else
      {
        v40 = v85;
        sub_266281D4C(v23, v85, type metadata accessor for SiriAudioDisambiguationSnippetModel);
        v95 = 2;
        sub_266280B0C();
        v42 = v90;
        sub_26629498C();
        sub_266281E44(&qword_28006AAC8, type metadata accessor for SiriAudioDisambiguationSnippetModel, &protocol conformance descriptor for SiriAudioDisambiguationSnippetModel);
        sub_2662949EC();
        (*(v60 + 8))(v37, v38);
        v43 = type metadata accessor for SiriAudioDisambiguationSnippetModel;
      }

      sub_266280C08(v40, v43);
      return (*(v92 + 8))(v42, v39);
    }

    else
    {
      sub_266281D4C(v23, v20, type metadata accessor for SiriAudioConfirmationSnippetModel);
      v93 = 0;
      sub_266280BB4();
      v47 = v17;
      v49 = v89;
      v48 = v90;
      sub_26629498C();
      sub_266281E44(&qword_28006ACC0, type metadata accessor for SiriAudioConfirmationSnippetModel, &protocol conformance descriptor for SiriAudioConfirmationSnippetModel);
      sub_2662949EC();
      (*(v57 + 8))(v47, v34);
      sub_266280C08(v20, type metadata accessor for SiriAudioConfirmationSnippetModel);
      return (*(v92 + 8))(v48, v49);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      v27 = v89;
      v28 = v90;
      if (EnumCaseMultiPayload == 5)
      {
        v44 = v23;
        v30 = v72;
        sub_266281D4C(v44, v72, type metadata accessor for SiriAudioShazamSnippetModel);
        v98 = 5;
        sub_266280A10();
        v45 = v73;
        sub_26629498C();
        sub_266281E44(&qword_28006AC80, type metadata accessor for SiriAudioShazamSnippetModel, &protocol conformance descriptor for SiriAudioShazamSnippetModel);
        v46 = v75;
        sub_2662949EC();
        (*(v74 + 8))(v45, v46);
        v33 = type metadata accessor for SiriAudioShazamSnippetModel;
      }

      else
      {
        v54 = v23;
        v30 = v77;
        sub_266281D4C(v54, v77, type metadata accessor for SiriAudioMediaPlayerSnippetModel);
        v99 = 6;
        sub_2662809BC();
        v55 = v78;
        sub_26629498C();
        sub_266281E44(&qword_28006ABC0, type metadata accessor for SiriAudioMediaPlayerSnippetModel, &protocol conformance descriptor for SiriAudioMediaPlayerSnippetModel);
        v56 = v80;
        sub_2662949EC();
        (*(v79 + 8))(v55, v56);
        v33 = type metadata accessor for SiriAudioMediaPlayerSnippetModel;
      }
    }

    else
    {
      v27 = v89;
      v28 = v90;
      if (EnumCaseMultiPayload == 3)
      {
        v29 = v23;
        v30 = v62;
        sub_266281D4C(v29, v62, type metadata accessor for SiriAudioSimpleTextSnippetModel);
        v96 = 3;
        sub_266280AB8();
        v31 = v63;
        sub_26629498C();
        sub_266281E44(&qword_28006AC98, type metadata accessor for SiriAudioSimpleTextSnippetModel, &protocol conformance descriptor for SiriAudioSimpleTextSnippetModel);
        v32 = v65;
        sub_2662949EC();
        (*(v64 + 8))(v31, v32);
        v33 = type metadata accessor for SiriAudioSimpleTextSnippetModel;
      }

      else
      {
        v51 = v23;
        v30 = v67;
        sub_266281D4C(v51, v67, type metadata accessor for SiriAudioAlternativeSnippetModel);
        v97 = 4;
        sub_266280A64();
        v52 = v68;
        sub_26629498C();
        sub_266281E44(&qword_28006AB70, type metadata accessor for SiriAudioAlternativeSnippetModel, &protocol conformance descriptor for SiriAudioAlternativeSnippetModel);
        v53 = v70;
        sub_2662949EC();
        (*(v69 + 8))(v52, v53);
        v33 = type metadata accessor for SiriAudioAlternativeSnippetModel;
      }
    }

    sub_266280C08(v30, v33);
    return (*(v92 + 8))(v28, v27);
  }
}

unint64_t sub_266280968()
{
  result = qword_28006AC68;
  if (!qword_28006AC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC68);
  }

  return result;
}

unint64_t sub_2662809BC()
{
  result = qword_28006AC70;
  if (!qword_28006AC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC70);
  }

  return result;
}

unint64_t sub_266280A10()
{
  result = qword_28006AC78;
  if (!qword_28006AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC78);
  }

  return result;
}

unint64_t sub_266280A64()
{
  result = qword_28006AC88;
  if (!qword_28006AC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC88);
  }

  return result;
}

unint64_t sub_266280AB8()
{
  result = qword_28006AC90;
  if (!qword_28006AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AC90);
  }

  return result;
}

unint64_t sub_266280B0C()
{
  result = qword_28006ACA0;
  if (!qword_28006ACA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ACA0);
  }

  return result;
}

unint64_t sub_266280B60()
{
  result = qword_28006ACA8;
  if (!qword_28006ACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ACA8);
  }

  return result;
}

unint64_t sub_266280BB4()
{
  result = qword_28006ACB8;
  if (!qword_28006ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ACB8);
  }

  return result;
}

uint64_t sub_266280C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SiriAudioSnippets.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ACC8, &qword_266295960);
  v4 = *(v3 - 8);
  v99 = v3;
  v100 = v4;
  MEMORY[0x28223BE20](v3);
  v111 = &v79 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ACD0, &qword_266295968);
  v97 = *(v6 - 8);
  v98 = v6;
  MEMORY[0x28223BE20](v6);
  v104 = &v79 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ACD8, &qword_266295970);
  v95 = *(v8 - 8);
  v96 = v8;
  MEMORY[0x28223BE20](v8);
  v103 = &v79 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ACE0, &qword_266295978);
  v93 = *(v10 - 8);
  v94 = v10;
  MEMORY[0x28223BE20](v10);
  v101 = &v79 - v11;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ACE8, &qword_266295980);
  v92 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v110 = &v79 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ACF0, &qword_266295988);
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v102 = &v79 - v13;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006ACF8, &qword_266295990);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v108 = &v79 - v14;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AD00, &qword_266295998);
  v107 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v16 = &v79 - v15;
  v106 = type metadata accessor for SiriAudioSnippets(0);
  v17 = MEMORY[0x28223BE20](v106);
  v86 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v85 = &v79 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v84 = &v79 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v79 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v79 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v79 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v34 = &v79 - v33;
  MEMORY[0x28223BE20](v32);
  v36 = &v79 - v35;
  v37 = a1[3];
  v112 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_266280968();
  v38 = v113;
  sub_266294A4C();
  if (v38)
  {
    return __swift_destroy_boxed_opaque_existential_0(v112);
  }

  v80 = v31;
  v81 = v28;
  v82 = v25;
  v113 = v34;
  v39 = v108;
  v40 = v110;
  v41 = v111;
  v83 = v36;
  v42 = v109;
  v43 = sub_26629497C();
  v44 = v43;
  if (*(v43 + 16) != 1 || (v45 = *(v43 + 32), v45 == 7))
  {
    v49 = sub_26629489C();
    swift_allocError();
    v51 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AD08, &qword_2662959A0);
    *v51 = v106;
    sub_26629490C();
    sub_26629488C();
    (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84160], v49);
    swift_willThrow();
    (*(v107 + 8))(v16, v42);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v112);
  }

  if (*(v43 + 32) <= 2u)
  {
    if (!*(v43 + 32))
    {
      v114 = 0;
      sub_266280BB4();
      sub_2662948FC();
      v60 = v16;
      v61 = v42;
      v62 = v107;
      type metadata accessor for SiriAudioConfirmationSnippetModel(0);
      sub_266281E44(&qword_28006AD28, type metadata accessor for SiriAudioConfirmationSnippetModel, &protocol conformance descriptor for SiriAudioConfirmationSnippetModel);
      v72 = v113;
      v70 = v88;
      sub_26629496C();
      (*(v87 + 8))(v39, v70);
      (*(v62 + 8))(v60, v61);
      swift_unknownObjectRelease();
      v108 = 0;
      v77 = v112;
      swift_storeEnumTagMultiPayload();
LABEL_22:
      v46 = v105;
      goto LABEL_23;
    }

    v113 = v43;
    v53 = v107;
    if (v45 == 1)
    {
      v115 = 1;
      sub_266280B60();
      v54 = v102;
      sub_2662948FC();
      type metadata accessor for SiriAudioActionButtonSnippetModel(0);
      sub_266281E44(&qword_28006AD20, type metadata accessor for SiriAudioActionButtonSnippetModel, &protocol conformance descriptor for SiriAudioActionButtonSnippetModel);
      v55 = v80;
      v56 = v90;
      sub_26629496C();
      v108 = 0;
      (*(v89 + 8))(v54, v56);
      (*(v53 + 8))(v16, v42);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v72 = v55;
LABEL_21:
      v77 = v112;
      goto LABEL_22;
    }

    v116 = 2;
    sub_266280B0C();
    v63 = v40;
    sub_2662948FC();
    type metadata accessor for SiriAudioDisambiguationSnippetModel(0);
    sub_266281E44(&qword_28006AAC0, type metadata accessor for SiriAudioDisambiguationSnippetModel, &protocol conformance descriptor for SiriAudioDisambiguationSnippetModel);
    v64 = v81;
    v65 = v91;
    sub_26629496C();
    v108 = 0;
    (*(v92 + 8))(v63, v65);
    (*(v53 + 8))(v16, v42);
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  if (*(v43 + 32) > 4u)
  {
    if (v45 == 5)
    {
      v119 = 5;
      sub_266280A10();
      v57 = v104;
      sub_2662948FC();
      type metadata accessor for SiriAudioShazamSnippetModel(0);
      sub_266281E44(&qword_28006AD10, type metadata accessor for SiriAudioShazamSnippetModel, &protocol conformance descriptor for SiriAudioShazamSnippetModel);
      v58 = v85;
      v59 = v98;
      sub_26629496C();
      v108 = 0;
      (*(v97 + 8))(v57, v59);
      (*(v107 + 8))(v16, v42);
      swift_unknownObjectRelease();
LABEL_19:
      swift_storeEnumTagMultiPayload();
      v72 = v58;
      goto LABEL_21;
    }

    v120 = 6;
    sub_2662809BC();
    sub_2662948FC();
    type metadata accessor for SiriAudioMediaPlayerSnippetModel(0);
    sub_266281E44(&qword_28006ABB8, type metadata accessor for SiriAudioMediaPlayerSnippetModel, &protocol conformance descriptor for SiriAudioMediaPlayerSnippetModel);
    v64 = v86;
    v75 = v99;
    sub_26629496C();
    v76 = v107;
    v108 = 0;
    (*(v100 + 8))(v41, v75);
    (*(v76 + 8))(v16, v42);
    swift_unknownObjectRelease();
LABEL_20:
    swift_storeEnumTagMultiPayload();
    v72 = v64;
    goto LABEL_21;
  }

  v46 = v105;
  if (v45 != 3)
  {
    v118 = 4;
    sub_266280A64();
    v66 = v103;
    sub_2662948FC();
    v67 = v107;
    v68 = v66;
    type metadata accessor for SiriAudioAlternativeSnippetModel(0);
    sub_266281E44(&qword_28006AB88, type metadata accessor for SiriAudioAlternativeSnippetModel, &protocol conformance descriptor for SiriAudioAlternativeSnippetModel);
    v58 = v84;
    v69 = v96;
    sub_26629496C();
    v108 = 0;
    (*(v95 + 8))(v68, v69);
    (*(v67 + 8))(v16, v42);
    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  v117 = 3;
  sub_266280AB8();
  v47 = v101;
  sub_2662948FC();
  v48 = v107;
  v113 = v44;
  v71 = v42;
  type metadata accessor for SiriAudioSimpleTextSnippetModel(0);
  sub_266281E44(&qword_28006AD18, type metadata accessor for SiriAudioSimpleTextSnippetModel, &protocol conformance descriptor for SiriAudioSimpleTextSnippetModel);
  v72 = v82;
  v73 = v47;
  v74 = v94;
  sub_26629496C();
  v108 = 0;
  (*(v93 + 8))(v73, v74);
  (*(v48 + 8))(v16, v71);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v77 = v112;
LABEL_23:
  v78 = v83;
  sub_266281D4C(v72, v83, type metadata accessor for SiriAudioSnippets);
  sub_266281D4C(v78, v46, type metadata accessor for SiriAudioSnippets);
  return __swift_destroy_boxed_opaque_existential_0(v77);
}

uint64_t sub_266281D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_266281E44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266281E90()
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

BOOL sub_266281EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2662947BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a2, v7);
  LODWORD(a2) = (*(v8 + 88))(v10, v7);
  v11 = *MEMORY[0x277D61BE8];
  (*(v8 + 8))(v10, v7);
  if (a2 != v11)
  {
    return 0;
  }

  sub_26627F448(v3, v6);
  v12 = swift_getEnumCaseMultiPayload() != 2;
  sub_266280C08(v6, type metadata accessor for SiriAudioSnippets);
  return v12;
}

uint64_t sub_266282114(uint64_t a1)
{
  result = type metadata accessor for SiriAudioConfirmationSnippetModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SiriAudioActionButtonSnippetModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for SiriAudioDisambiguationSnippetModel(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for SiriAudioSimpleTextSnippetModel(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for SiriAudioAlternativeSnippetModel(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for SiriAudioShazamSnippetModel(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for SiriAudioMediaPlayerSnippetModel(319);
              if (v8 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriAudioSnippets.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriAudioSnippets.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriAudioSimpleTextSnippetModel.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SiriAudioSimpleTextSnippetModel.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_266282490()
{
  result = qword_28006AD50;
  if (!qword_28006AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD50);
  }

  return result;
}

unint64_t sub_2662824E8()
{
  result = qword_28006AD58;
  if (!qword_28006AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD58);
  }

  return result;
}

unint64_t sub_266282540()
{
  result = qword_28006AD60;
  if (!qword_28006AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD60);
  }

  return result;
}

unint64_t sub_266282598()
{
  result = qword_28006AD68;
  if (!qword_28006AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD68);
  }

  return result;
}

unint64_t sub_2662825F0()
{
  result = qword_28006AD70;
  if (!qword_28006AD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD70);
  }

  return result;
}

unint64_t sub_266282648()
{
  result = qword_28006AD78;
  if (!qword_28006AD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD78);
  }

  return result;
}

unint64_t sub_2662826A0()
{
  result = qword_28006AD80;
  if (!qword_28006AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD80);
  }

  return result;
}

unint64_t sub_2662826F8()
{
  result = qword_28006AD88;
  if (!qword_28006AD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD88);
  }

  return result;
}

unint64_t sub_266282750()
{
  result = qword_28006AD90;
  if (!qword_28006AD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD90);
  }

  return result;
}

unint64_t sub_2662827A8()
{
  result = qword_28006AD98;
  if (!qword_28006AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AD98);
  }

  return result;
}

unint64_t sub_266282800()
{
  result = qword_28006ADA0;
  if (!qword_28006ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADA0);
  }

  return result;
}

unint64_t sub_266282858()
{
  result = qword_28006ADA8;
  if (!qword_28006ADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADA8);
  }

  return result;
}

unint64_t sub_2662828B0()
{
  result = qword_28006ADB0;
  if (!qword_28006ADB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADB0);
  }

  return result;
}

unint64_t sub_266282908()
{
  result = qword_28006ADB8;
  if (!qword_28006ADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADB8);
  }

  return result;
}

unint64_t sub_266282960()
{
  result = qword_28006ADC0;
  if (!qword_28006ADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADC0);
  }

  return result;
}

unint64_t sub_2662829B8()
{
  result = qword_28006ADC8;
  if (!qword_28006ADC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADC8);
  }

  return result;
}

unint64_t sub_266282A10()
{
  result = qword_28006ADD0;
  if (!qword_28006ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADD0);
  }

  return result;
}

unint64_t sub_266282A68()
{
  result = qword_28006ADD8;
  if (!qword_28006ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADD8);
  }

  return result;
}

unint64_t sub_266282AC0()
{
  result = qword_28006ADE0;
  if (!qword_28006ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADE0);
  }

  return result;
}

unint64_t sub_266282B18()
{
  result = qword_28006ADE8;
  if (!qword_28006ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADE8);
  }

  return result;
}

unint64_t sub_266282B70()
{
  result = qword_28006ADF0;
  if (!qword_28006ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADF0);
  }

  return result;
}

unint64_t sub_266282BC8()
{
  result = qword_28006ADF8;
  if (!qword_28006ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006ADF8);
  }

  return result;
}

unint64_t sub_266282C20()
{
  result = qword_28006AE00;
  if (!qword_28006AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AE00);
  }

  return result;
}

unint64_t sub_266282C78()
{
  result = qword_28006AE08;
  if (!qword_28006AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AE08);
  }

  return result;
}

uint64_t sub_266282CCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x616D7269666E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_2662949FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75426E6F69746361 && a2 == 0xEC0000006E6F7474 || (sub_2662949FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6769626D61736964 && a2 == 0xEE006E6F69746175 || (sub_2662949FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6554656C706D6973 && a2 == 0xEA00000000007478 || (sub_2662949FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74616E7265746C61 && a2 == 0xEC00000073657669 || (sub_2662949FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D617A616873 && a2 == 0xE600000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x616C50616964656DLL && a2 == 0xEB00000000726579)
  {

    return 6;
  }

  else
  {
    v6 = sub_2662949FC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_266282F54()
{
  v1 = 0x73736563637573;
  if (*v0 != 1)
  {
    v1 = 0x686374614D6F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E696E657473696CLL;
  }
}

uint64_t sub_266282FB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_266286B74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_266282FE8(uint64_t a1)
{
  v2 = sub_26628378C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266283024(uint64_t a1)
{
  v2 = sub_26628378C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26628306C(uint64_t a1)
{
  v2 = sub_266283888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2662830A8(uint64_t a1)
{
  v2 = sub_266283888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2662830E4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_266283114(uint64_t a1)
{
  v2 = sub_2662837E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266283150(uint64_t a1)
{
  v2 = sub_2662837E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26628318C(uint64_t a1)
{
  v2 = sub_266283834();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2662831C8(uint64_t a1)
{
  v2 = sub_266283834();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShazamSnippetRole.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE10, &qword_2662963C0);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = &v27 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE18, &qword_2662963C8);
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - v5;
  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
  v7 = *(matched - 8);
  MEMORY[0x28223BE20](matched);
  v29 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE20, &qword_2662963D0);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for ShazamSnippetRole(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE28, &qword_2662963D8);
  v15 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v17 = &v27 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628378C();
  sub_266294A5C();
  sub_266285B60(v36, v14, type metadata accessor for ShazamSnippetRole);
  v18 = (*(v7 + 48))(v14, 2, matched);
  if (v18)
  {
    if (v18 == 1)
    {
      v38 = 0;
      sub_266283888();
      v19 = v37;
      sub_26629498C();
      (*(v27 + 8))(v11, v28);
      return (*(v15 + 8))(v17, v19);
    }

    else
    {
      v40 = 2;
      sub_2662837E0();
      v25 = v30;
      v26 = v37;
      sub_26629498C();
      (*(v32 + 8))(v25, v33);
      return (*(v15 + 8))(v17, v26);
    }
  }

  else
  {
    v21 = v29;
    sub_266284070(v14, v29, type metadata accessor for ShazamSuccessfulMatchViewModel);
    v39 = 1;
    sub_266283834();
    v22 = v31;
    v23 = v37;
    sub_26629498C();
    sub_2662840D8(&qword_28006AE48, type metadata accessor for ShazamSuccessfulMatchViewModel, &protocol conformance descriptor for ShazamSuccessfulMatchViewModel);
    v24 = v35;
    sub_2662949EC();
    (*(v34 + 8))(v22, v24);
    sub_2662790DC(v21);
    return (*(v15 + 8))(v17, v23);
  }
}

unint64_t sub_26628378C()
{
  result = qword_28006AE30;
  if (!qword_28006AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AE30);
  }

  return result;
}

unint64_t sub_2662837E0()
{
  result = qword_28006AE38;
  if (!qword_28006AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AE38);
  }

  return result;
}

unint64_t sub_266283834()
{
  result = qword_28006AE40;
  if (!qword_28006AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AE40);
  }

  return result;
}

unint64_t sub_266283888()
{
  result = qword_28006AE50;
  if (!qword_28006AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AE50);
  }

  return result;
}

uint64_t ShazamSnippetRole.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE58, &qword_2662963E0);
  v53 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v52 = &v42 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE60, &qword_2662963E8);
  v49 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v51 = &v42 - v4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE68, &qword_2662963F0);
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE70, &unk_2662963F8);
  v55 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v42 - v8;
  v10 = type metadata accessor for ShazamSnippetRole(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_26628378C();
  v17 = v56;
  sub_266294A4C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(v57);
  }

  v56 = v10;
  v19 = v50;
  v18 = v51;
  v43 = v13;
  v44 = v15;
  v20 = v52;
  v21 = v53;
  v45 = 0;
  v22 = v54;
  v23 = sub_26629497C();
  v24 = (2 * *(v23 + 16)) | 1;
  v58 = v23;
  v59 = v23 + 32;
  v60 = 0;
  v61 = v24;
  v25 = sub_266282F40();
  if (v25 != 3 && v60 == v61 >> 1)
  {
    if (v25)
    {
      v26 = v55;
      if (v25 == 1)
      {
        v62 = 1;
        sub_266283834();
        v27 = v18;
        v28 = v45;
        sub_2662948FC();
        if (!v28)
        {
          matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
          sub_2662840D8(&qword_28006AE78, type metadata accessor for ShazamSuccessfulMatchViewModel, &protocol conformance descriptor for ShazamSuccessfulMatchViewModel);
          v30 = v43;
          v31 = v47;
          sub_26629496C();
          (*(v49 + 8))(v27, v31);
          (*(v26 + 8))(v9, v7);
          swift_unknownObjectRelease();
          (*(*(matched - 8) + 56))(v30, 0, 2, matched);
          v32 = v44;
          sub_266284070(v30, v44, type metadata accessor for ShazamSnippetRole);
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      v62 = 2;
      sub_2662837E0();
      v39 = v45;
      sub_2662948FC();
      if (v39)
      {
LABEL_16:
        (*(v26 + 8))(v9, v7);
        goto LABEL_10;
      }

      (*(v21 + 8))(v20, v48);
      (*(v26 + 8))(v9, v7);
      swift_unknownObjectRelease();
      v41 = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
      v32 = v44;
      (*(*(v41 - 8) + 56))(v44, 2, 2, v41);
    }

    else
    {
      v62 = 0;
      sub_266283888();
      v37 = v45;
      sub_2662948FC();
      v38 = v55;
      if (v37)
      {
        (*(v55 + 8))(v9, v7);
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_0(v57);
      }

      (*(v19 + 8))(v6, v46);
      (*(v38 + 8))(v9, v7);
      swift_unknownObjectRelease();
      v40 = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
      v32 = v44;
      (*(*(v40 - 8) + 56))(v44, 1, 2, v40);
    }

LABEL_19:
    sub_266284070(v32, v22, type metadata accessor for ShazamSnippetRole);
    return __swift_destroy_boxed_opaque_existential_0(v57);
  }

  v33 = sub_26629489C();
  swift_allocError();
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AD08, &qword_2662959A0);
  *v35 = v56;
  sub_26629490C();
  sub_26629488C();
  (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D84160], v33);
  swift_willThrow();
  (*(v55 + 8))(v9, v7);
LABEL_10:
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_0(v57);
}

uint64_t sub_266284070(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2662840D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2662841C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701605234 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2662949FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_26628424C(uint64_t a1)
{
  v2 = sub_26628443C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266284288(uint64_t a1)
{
  v2 = sub_26628443C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioShazamSnippetModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE80, &qword_266296408);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628443C();
  sub_266294A5C();
  type metadata accessor for ShazamSnippetRole(0);
  sub_2662840D8(&qword_28006AE90, type metadata accessor for ShazamSnippetRole, &protocol conformance descriptor for ShazamSnippetRole);
  sub_2662949EC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_26628443C()
{
  result = qword_28006AE88;
  if (!qword_28006AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AE88);
  }

  return result;
}

uint64_t SiriAudioShazamSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for ShazamSnippetRole(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE98, &unk_266296410);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SiriAudioShazamSnippetModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628443C();
  sub_266294A4C();
  if (!v2)
  {
    v12 = v15;
    sub_2662840D8(&qword_28006AEA0, type metadata accessor for ShazamSnippetRole, &protocol conformance descriptor for ShazamSnippetRole);
    v13 = v17;
    sub_26629496C();
    (*(v16 + 8))(v8, v6);
    sub_266284070(v13, v11, type metadata accessor for ShazamSnippetRole);
    sub_266284070(v11, v12, type metadata accessor for SiriAudioShazamSnippetModel);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_26628473C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AE80, &qword_266296408);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628443C();
  sub_266294A5C();
  type metadata accessor for ShazamSnippetRole(0);
  sub_2662840D8(&qword_28006AE90, type metadata accessor for ShazamSnippetRole, &protocol conformance descriptor for ShazamSnippetRole);
  sub_2662949EC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ShazamSuccessfulMatchViewModel.shazamID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ShazamSuccessfulMatchViewModel.title.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ShazamSuccessfulMatchViewModel.subtitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ShazamSuccessfulMatchViewModel.artist.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t ShazamSuccessfulMatchViewModel.genre.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t ShazamSuccessfulMatchViewModel.appleMusicID.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t ShazamSuccessfulMatchViewModel.appleMusicURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShazamSuccessfulMatchViewModel(0) + 40);

  return sub_26627AD08(v3, a1);
}

uint64_t ShazamSuccessfulMatchViewModel.webURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShazamSuccessfulMatchViewModel(0) + 44);

  return sub_26627AD08(v3, a1);
}

uint64_t ShazamSuccessfulMatchViewModel.artworkURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShazamSuccessfulMatchViewModel(0) + 48);

  return sub_26627AD08(v3, a1);
}

uint64_t ShazamSuccessfulMatchViewModel.videoURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ShazamSuccessfulMatchViewModel(0) + 52);

  return sub_26627AD08(v3, a1);
}

uint64_t ShazamSuccessfulMatchViewModel.isrc.getter()
{
  v1 = *(v0 + *(type metadata accessor for ShazamSuccessfulMatchViewModel(0) + 60));

  return v1;
}

uint64_t ShazamSuccessfulMatchViewModel.init(shazamID:title:subtitle:artist:genre:appleMusicID:appleMusicURL:webURL:artworkURL:videoURL:explicitContent:isrc:subscriptionStatus:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
  sub_266284C48(a13, a9 + matched[10]);
  sub_266284C48(a14, a9 + matched[11]);
  sub_266284C48(a15, a9 + matched[12]);
  result = sub_266284C48(a16, a9 + matched[13]);
  *(a9 + matched[14]) = a17;
  v23 = (a9 + matched[15]);
  *v23 = a18;
  v23[1] = a19;
  *(a9 + matched[16]) = a20;
  return result;
}

uint64_t sub_266284C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_266284CB8(char a1)
{
  result = 0x44496D617A616873;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x656C746974627573;
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 0x65726E6567;
      break;
    case 5:
    case 6:
      result = 0x73754D656C707061;
      break;
    case 7:
      result = 0x4C5255626577;
      break;
    case 8:
      result = 0x556B726F77747261;
      break;
    case 9:
      result = 0x4C52556F65646976;
      break;
    case 10:
      result = 0x746963696C707865;
      break;
    case 11:
      result = 1668445033;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266284E48@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_266286C94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_266284E7C(uint64_t a1)
{
  v2 = sub_26628528C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266284EB8(uint64_t a1)
{
  v2 = sub_26628528C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShazamSuccessfulMatchViewModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AEA8, &qword_266296420);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628528C();
  sub_266294A5C();
  v8[31] = 0;
  sub_26629499C();
  if (!v1)
  {
    v8[30] = 1;
    sub_26629499C();
    v8[29] = 2;
    sub_26629499C();
    v8[28] = 3;
    sub_26629499C();
    v8[27] = 4;
    sub_26629499C();
    v8[26] = 5;
    sub_26629499C();
    type metadata accessor for ShazamSuccessfulMatchViewModel(0);
    v8[25] = 6;
    sub_26629470C();
    sub_2662840D8(&qword_28006AAB8, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_2662949BC();
    v8[24] = 7;
    sub_2662949BC();
    v8[15] = 8;
    sub_2662949BC();
    v8[14] = 9;
    sub_2662949BC();
    v8[13] = 10;
    sub_2662949AC();
    v8[12] = 11;
    sub_26629499C();
    v8[11] = 12;
    sub_2662949AC();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_26628528C()
{
  result = qword_28006AEB0;
  if (!qword_28006AEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AEB0);
  }

  return result;
}

uint64_t ShazamSuccessfulMatchViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v57 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v52 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v52 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v52 - v12;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AEB8, &qword_266296428);
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v15 = v52 - v14;
  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
  MEMORY[0x28223BE20](matched);
  v18 = (v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_26628528C();
  v60 = v15;
  v20 = v62;
  sub_266294A4C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_0(v63);
  }

  v21 = v13;
  v55 = v8;
  v56 = v11;
  v23 = v58;
  v22 = v59;
  v62 = matched;
  v76 = 0;
  v24 = v60;
  v25 = v61;
  *v18 = sub_26629491C();
  v18[1] = v27;
  v75 = 1;
  v18[2] = sub_26629491C();
  v18[3] = v28;
  v74 = 2;
  v53 = 0;
  v18[4] = sub_26629491C();
  v18[5] = v29;
  v73 = 3;
  v18[6] = sub_26629491C();
  v18[7] = v30;
  v72 = 4;
  v18[8] = sub_26629491C();
  v18[9] = v31;
  v71 = 5;
  v32 = sub_26629491C();
  v54 = 0;
  v18[10] = v32;
  v18[11] = v33;
  v34 = sub_26629470C();
  v70 = 6;
  v35 = sub_2662840D8(&qword_28006AA98, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v52[0] = v34;
  v52[1] = v35;
  v36 = v54;
  sub_26629493C();
  v54 = v36;
  if (v36)
  {
    (*(v23 + 8))(v24, v25);
    v37 = 0;
    v38 = 0;
  }

  else
  {
    sub_266284C48(v21, v18 + v62[10]);
    v69 = 7;
    v39 = v56;
    v40 = v54;
    sub_26629493C();
    v54 = v40;
    if (v40)
    {
      (*(v23 + 8))(v24, v61);
      v38 = 0;
      v37 = 1;
    }

    else
    {
      sub_266284C48(v39, v18 + v62[11]);
      v68 = 8;
      v41 = v54;
      v42 = v55;
      v43 = v61;
      sub_26629493C();
      v54 = v41;
      if (!v41)
      {
        sub_266284C48(v42, v18 + v62[12]);
        v67 = 9;
        v46 = v54;
        sub_26629493C();
        if (v46)
        {
          (*(v23 + 8))(v60, v61);
          __swift_destroy_boxed_opaque_existential_0(v63);

          v48 = v62;
          sub_26627AD78(v18 + v62[10]);
          sub_26627AD78(v18 + v48[11]);
          return sub_26627AD78(v18 + v48[12]);
        }

        else
        {
          sub_266284C48(v57, v18 + v62[13]);
          v66 = 10;
          *(v18 + v62[14]) = sub_26629492C();
          v65 = 11;
          v47 = sub_26629491C();
          v49 = (v18 + v62[15]);
          *v49 = v47;
          v49[1] = v50;
          v64 = 12;
          v51 = sub_26629492C();
          (*(v23 + 8))(v60, v61);
          *(v18 + v62[16]) = v51;
          sub_266285B60(v18, v22, type metadata accessor for ShazamSuccessfulMatchViewModel);
          __swift_destroy_boxed_opaque_existential_0(v63);
          return sub_2662790DC(v18);
        }
      }

      (*(v23 + 8))(v24, v43);
      v37 = 1;
      v38 = 1;
    }
  }

  v44 = v53;
  __swift_destroy_boxed_opaque_existential_0(v63);

  if (!v44)
  {
  }

  v45 = v62;
  if (v37)
  {
    result = sub_26627AD78(v18 + v62[10]);
    if ((v38 & 1) == 0)
    {
      return result;
    }
  }

  else if (!v38)
  {
    return result;
  }

  return sub_26627AD78(v18 + v45[11]);
}

uint64_t sub_266285B60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_266285D2C(uint64_t a1, uint64_t a2)
{
  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
  v5 = (*(*(matched - 8) + 48))(a1, a2, matched);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266285DAC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(0);
  v7 = *(*(matched - 8) + 56);

  return v7(a1, v5, a3, matched);
}

uint64_t sub_266285E30(uint64_t a1)
{
  matched = type metadata accessor for ShazamSuccessfulMatchViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return matched;
}

uint64_t sub_266285E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamSnippetRole(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_266285F1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShazamSnippetRole(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_266285F8C(uint64_t a1)
{
  result = type metadata accessor for ShazamSnippetRole(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26628600C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2662860E8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_266286198(uint64_t a1)
{
  sub_2662862C8(319, &qword_28006AEF0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_266286270(319);
    if (v2 <= 0x3F)
    {
      sub_2662862C8(319, &qword_28006AF00, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_266286270(uint64_t a1)
{
  if (!qword_28006AEF8)
  {
    sub_26629470C();
    v1 = sub_26629486C();
    if (!v2)
    {
      atomic_store(v1, &qword_28006AEF8);
    }
  }
}

void sub_2662862C8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26629486C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for ShazamSuccessfulMatchViewModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ShazamSuccessfulMatchViewModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShazamSnippetRole.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ShazamSnippetRole.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2662865F8()
{
  result = qword_28006AF08;
  if (!qword_28006AF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF08);
  }

  return result;
}

unint64_t sub_266286650()
{
  result = qword_28006AF10;
  if (!qword_28006AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF10);
  }

  return result;
}

unint64_t sub_2662866A8()
{
  result = qword_28006AF18;
  if (!qword_28006AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF18);
  }

  return result;
}

unint64_t sub_266286700()
{
  result = qword_28006AF20;
  if (!qword_28006AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF20);
  }

  return result;
}

unint64_t sub_266286758()
{
  result = qword_28006AF28;
  if (!qword_28006AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF28);
  }

  return result;
}

unint64_t sub_2662867B0()
{
  result = qword_28006AF30;
  if (!qword_28006AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF30);
  }

  return result;
}

unint64_t sub_266286808()
{
  result = qword_28006AF38;
  if (!qword_28006AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF38);
  }

  return result;
}

unint64_t sub_266286860()
{
  result = qword_28006AF40;
  if (!qword_28006AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF40);
  }

  return result;
}

unint64_t sub_2662868B8()
{
  result = qword_28006AF48;
  if (!qword_28006AF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF48);
  }

  return result;
}

unint64_t sub_266286910()
{
  result = qword_28006AF50;
  if (!qword_28006AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF50);
  }

  return result;
}

unint64_t sub_266286968()
{
  result = qword_28006AF58;
  if (!qword_28006AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF58);
  }

  return result;
}

unint64_t sub_2662869C0()
{
  result = qword_28006AF60;
  if (!qword_28006AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF60);
  }

  return result;
}

unint64_t sub_266286A18()
{
  result = qword_28006AF68;
  if (!qword_28006AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF68);
  }

  return result;
}

unint64_t sub_266286A70()
{
  result = qword_28006AF70;
  if (!qword_28006AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF70);
  }

  return result;
}

unint64_t sub_266286AC8()
{
  result = qword_28006AF78;
  if (!qword_28006AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF78);
  }

  return result;
}

unint64_t sub_266286B20()
{
  result = qword_28006AF80;
  if (!qword_28006AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AF80);
  }

  return result;
}

uint64_t sub_266286B74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696E657473696CLL && a2 == 0xE900000000000067;
  if (v4 || (sub_2662949FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736563637573 && a2 == 0xE700000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x686374614D6F6ELL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2662949FC();

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

uint64_t sub_266286C94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D617A616873 && a2 == 0xE800000000000000;
  if (v4 || (sub_2662949FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x747369747261 && a2 == 0xE600000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73754D656C707061 && a2 == 0xEC00000044496369 || (sub_2662949FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73754D656C707061 && a2 == 0xED00004C52556369 || (sub_2662949FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4C5255626577 && a2 == 0xE600000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x556B726F77747261 && a2 == 0xEA00000000004C52 || (sub_2662949FC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4C52556F65646976 && a2 == 0xE800000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746963696C707865 && a2 == 0xEF746E65746E6F43 || (sub_2662949FC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1668445033 && a2 == 0xE400000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002662983C0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_2662949FC();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t SiriAudioConfirmationSnippetModel.confirmText.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

uint64_t (*SiriAudioConfirmationSnippetModel.confirmText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627A66C;
}

uint64_t SiriAudioConfirmationSnippetModel.denyText.getter()
{
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

uint64_t type metadata accessor for SiriAudioConfirmationSnippetModel(uint64_t a1)
{
  result = qword_28006AFC0;
  if (!qword_28006AFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_26628729C@<X0>(void *a1@<X8>)
{
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_266287304(void *a1)
{
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t SiriAudioConfirmationSnippetModel.denyText.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t (*SiriAudioConfirmationSnippetModel.denyText.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioConfirmationSnippetModel.confirmCommand.getter()
{
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629473C();
}

uint64_t sub_2662874AC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  result = sub_26629473C();
  *a1 = result;
  return result;
}

uint64_t sub_266287504(void **a1)
{
  v1 = *a1;
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t SiriAudioConfirmationSnippetModel.confirmCommand.setter(uint64_t a1)
{
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t (*SiriAudioConfirmationSnippetModel.confirmCommand.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  *(v3 + 32) = sub_26629472C();
  return sub_26627D000;
}

uint64_t SiriAudioConfirmationSnippetModel.denyCommand.getter()
{
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629473C();
}

uint64_t sub_2662876A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  result = sub_26629473C();
  *a1 = result;
  return result;
}

uint64_t sub_2662876F8(void **a1)
{
  v1 = *a1;
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t SiriAudioConfirmationSnippetModel.denyCommand.setter(uint64_t a1)
{
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t (*SiriAudioConfirmationSnippetModel.denyCommand.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  *(v3 + 32) = sub_26629472C();
  return sub_26627D000;
}

uint64_t SiriAudioConfirmationSnippetModel.isDestructive.getter()
{
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  sub_26629478C();
  return v1;
}

void *sub_2662878A4@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  result = sub_26629478C();
  *a1 = v3;
  return result;
}

uint64_t sub_26628790C(char *a1)
{
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  return sub_26629479C();
}

uint64_t SiriAudioConfirmationSnippetModel.isDestructive.setter(char a1)
{
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  return sub_26629479C();
}

uint64_t (*SiriAudioConfirmationSnippetModel.isDestructive.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t sub_266287A6C()
{
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

uint64_t sub_266287B78(uint64_t a1)
{
  sub_26629481C();
}

uint64_t sub_266287C70(uint64_t a1)
{
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

unint64_t sub_266287D78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266289448(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_266287DA8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000747865;
  v4 = 0x546D7269666E6F63;
  v5 = 0xEE00646E616D6D6FLL;
  v6 = 0x436D7269666E6F63;
  v7 = 0xEB00000000646E61;
  v8 = 0x6D6D6F43796E6564;
  if (v2 != 3)
  {
    v8 = 0x7572747365447369;
    v7 = 0xED00006576697463;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x74786554796E6564;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_266287E70()
{
  v1 = *v0;
  v2 = 0x546D7269666E6F63;
  v3 = 0x436D7269666E6F63;
  v4 = 0x6D6D6F43796E6564;
  if (v1 != 3)
  {
    v4 = 0x7572747365447369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74786554796E6564;
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

unint64_t sub_266287F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266289448(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266287F68(uint64_t a1)
{
  v2 = sub_2662886D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266287FA4(uint64_t a1)
{
  v2 = sub_2662886D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void SiriAudioConfirmationSnippetModel.init(confirmText:denyText:confirmCommand:denyCommand:isDestructive:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, char a7)
{
  sub_26629476C();
  type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  sub_26629476C();
  sub_2662880D0();
  v9 = a5;
  sub_26629471C();
  v10 = a6;
  sub_26629471C();
  sub_26629476C();
}

unint64_t sub_2662880D0()
{
  result = qword_28006AF90;
  if (!qword_28006AF90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28006AF90);
  }

  return result;
}

uint64_t SiriAudioConfirmationSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF98, &qword_266296C78);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2662886D4();
  v33 = v11;
  v15 = v36;
  sub_266294A4C();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = v6;
  v36 = v12;
  LOBYTE(v34) = 0;
  v34 = sub_26629494C();
  v35 = v16;
  sub_26629476C();
  LOBYTE(v34) = 1;
  v34 = sub_26629494C();
  v35 = v17;
  sub_26629476C();
  LOBYTE(v34) = 2;
  sub_266288C40(&qword_28006AFA8, MEMORY[0x277D63230]);
  v18 = v30;
  v26 = 0;
  sub_26629496C();
  sub_26629473C();
  v25 = *(v29 + 8);
  v25(v8, v18);
  v19 = sub_2662880D0();
  v20 = v30;
  v24 = v19;
  sub_26629471C();
  LOBYTE(v34) = 3;
  v21 = v27;
  sub_26629496C();
  sub_26629473C();
  v25(v21, v20);
  sub_26629471C();
  LOBYTE(v34) = 4;
  v22 = v32;
  LOBYTE(v34) = sub_26629495C() & 1;
  sub_26629476C();
  (*(v31 + 8))(v33, v22);
  sub_266288728(v14, v28);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_26628878C(v14);
}

unint64_t sub_2662886D4()
{
  result = qword_28006AFA0;
  if (!qword_28006AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AFA0);
  }

  return result;
}

uint64_t sub_266288728(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26628878C(uint64_t a1)
{
  v2 = type metadata accessor for SiriAudioConfirmationSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriAudioConfirmationSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AFB0, &qword_266296C80);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v24 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2662886D4();
  sub_266294A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v30 = v2;
  sub_26629478C();
  LOBYTE(v31) = 0;
  v14 = v32;
  sub_2662949CC();
  if (v14)
  {
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v26 = v7;
    v27 = v9;
    v32 = v11;
    v16 = v29;

    v17 = type metadata accessor for SiriAudioConfirmationSnippetModel(0);
    sub_26629478C();
    LOBYTE(v31) = 1;
    sub_2662949CC();

    v24[1] = v17;
    sub_26629473C();
    v18 = sub_2662880D0();
    v19 = v27;
    v24[0] = v18;
    sub_26629471C();
    LOBYTE(v31) = 2;
    sub_266288C40(&qword_28006AFB8, MEMORY[0x277D63228]);
    v25 = v10;
    sub_2662949EC();
    v20 = *(v28 + 8);
    v20(v19, v16);
    v21 = v32;
    sub_26629473C();
    v22 = v26;
    sub_26629471C();
    LOBYTE(v31) = 3;
    sub_2662949EC();
    v20(v22, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
    sub_26629478C();
    LOBYTE(v31) = 4;
    v23 = v25;
    sub_2662949DC();
    return (*(v21 + 8))(v13, v23);
  }
}

uint64_t sub_266288C40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006AF88, &unk_266296EB0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266288CF8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriAudioConfirmationSnippetModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_266288D6C@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_266288DF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 32);

  return v15(v16, a2, v14);
}

uint64_t sub_266288F6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 32);

  return v17(v18, a2, a2, v16);
}

void sub_2662890DC(uint64_t a1)
{
  sub_26627CA08(319, &qword_28006AB00, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_266289198(319);
    if (v2 <= 0x3F)
    {
      sub_26627CA08(319, &qword_28006AAE0, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_266289198(uint64_t a1)
{
  if (!qword_28006AFD0)
  {
    sub_2662880D0();
    v1 = sub_26629475C();
    if (!v2)
    {
      atomic_store(v1, &qword_28006AFD0);
    }
  }
}

uint64_t getEnumTagSinglePayload for SiriAudioConfirmationSnippetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SiriAudioConfirmationSnippetModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_266289344()
{
  result = qword_28006AFD8;
  if (!qword_28006AFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AFD8);
  }

  return result;
}

unint64_t sub_26628939C()
{
  result = qword_28006AFE0;
  if (!qword_28006AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AFE0);
  }

  return result;
}

unint64_t sub_2662893F4()
{
  result = qword_28006AFE8;
  if (!qword_28006AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AFE8);
  }

  return result;
}

unint64_t sub_266289448(uint64_t a1, uint64_t a2)
{
  v2 = sub_2662948EC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t SiriAudioPunchOutRowSnippetModel.title.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

uint64_t (*SiriAudioPunchOutRowSnippetModel.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627A66C;
}

uint64_t SiriAudioPunchOutRowSnippetModel.subtitle.getter()
{
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  sub_26629478C();
  return v1;
}

uint64_t type metadata accessor for SiriAudioPunchOutRowSnippetModel(uint64_t a1)
{
  result = qword_28006B018;
  if (!qword_28006B018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_26628963C@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  sub_26629478C();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2662896A4(void *a1)
{
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  return sub_26629479C();
}

uint64_t SiriAudioPunchOutRowSnippetModel.subtitle.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  return sub_26629479C();
}

uint64_t (*SiriAudioPunchOutRowSnippetModel.subtitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

void *SiriAudioPunchOutRowSnippetModel.imageURL.getter()
{
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  return sub_26629478C();
}

void *sub_26628985C()
{
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  return sub_26629478C();
}

uint64_t sub_2662898B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_26627AD08(a1, &v9 - v6);
  sub_26627AD08(v7, v5);
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  sub_26629479C();
  return sub_26627AD78(v7);
}

uint64_t SiriAudioPunchOutRowSnippetModel.imageURL.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26627AD08(a1, &v5 - v3);
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  sub_26629479C();
  return sub_26627AD78(a1);
}

uint64_t (*SiriAudioPunchOutRowSnippetModel.imageURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioPunchOutRowSnippetModel.command.getter()
{
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629473C();
}

uint64_t sub_266289B40@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  result = sub_26629473C();
  *a1 = result;
  return result;
}

uint64_t sub_266289B98(void **a1)
{
  v1 = *a1;
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t SiriAudioPunchOutRowSnippetModel.command.setter(uint64_t a1)
{
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t (*SiriAudioPunchOutRowSnippetModel.command.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  *(v3 + 32) = sub_26629472C();
  return sub_26627D000;
}

uint64_t sub_266289CFC()
{
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

uint64_t sub_266289DBC(uint64_t a1)
{
  sub_26629481C();
}

uint64_t sub_266289E68(uint64_t a1)
{
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

unint64_t sub_266289F24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26628B7E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_266289F54(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xE800000000000000;
  v5 = 0x4C52556567616D69;
  if (*v1 != 2)
  {
    v5 = 0x646E616D6D6F63;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x656C746974627573;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_266289FD0()
{
  v1 = 0x656C746974;
  v2 = 0x4C52556567616D69;
  if (*v0 != 2)
  {
    v2 = 0x646E616D6D6F63;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
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

unint64_t sub_26628A048@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26628B7E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26628A070(uint64_t a1)
{
  v2 = sub_26628AAA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26628A0AC(uint64_t a1)
{
  v2 = sub_26628AAA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioPunchOutRowSnippetModel.init(title:subtitle:imageURL:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v24 - v14;
  v16 = type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  v17 = *(v16 + 20);
  v28 = 0;
  v29 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A958, &qword_266295110);
  sub_26629476C();
  v18 = *(v16 + 24);
  v19 = sub_26629470C();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  sub_26627AD08(v15, v13);
  sub_26629476C();
  sub_26627AD78(v15);
  v28 = a1;
  v29 = a2;
  sub_26629476C();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  (*(*(v20 - 8) + 8))(a7 + v17, v20);
  v28 = v24;
  v29 = v25;
  sub_26629476C();
  v21 = v26;
  sub_26627AD08(v26, v15);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  (*(*(v22 - 8) + 8))(a7 + v18, v22);
  sub_26627AD08(v15, v13);
  sub_26629476C();
  sub_26627AD78(v15);
  sub_2662880D0();
  sub_26629471C();
  return sub_26627AD78(v21);
}

uint64_t SiriAudioPunchOutRowSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v41 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AFF0, &qword_266296EC0);
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v8 = MEMORY[0x28223BE20](v7);
  v45 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v40 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v40 - v13;
  v15 = type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 20);
  v55 = 0;
  v56 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A958, &qword_266295110);
  v57 = v19;
  sub_26629476C();
  v20 = *(v15 + 24);
  v21 = sub_26629470C();
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  sub_26627AD08(v14, v12);
  v51 = v20;
  v49 = v18;
  sub_26629476C();
  sub_26627AD78(v14);
  v22 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_26628AAA8();
  v48 = v6;
  v23 = v50;
  sub_266294A4C();
  if (v23)
  {
    v25 = v49;
    __swift_destroy_boxed_opaque_existential_0(v52);
    v26 = v51;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
    (*(*(v27 - 8) + 8))(&v25[v57], v27);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    return (*(*(v28 - 8) + 8))(&v25[v26], v28);
  }

  else
  {
    v50 = v14;
    v40[1] = v15;
    v24 = v46;
    LOBYTE(v55) = 0;
    v55 = sub_26629494C();
    v56 = v29;
    v30 = v49;
    sub_26629476C();
    LOBYTE(v53) = 1;
    sub_26627C060(&qword_28006AA88, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
    sub_26629496C();
    v31 = v55;
    v32 = v56;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
    (*(*(v33 - 8) + 8))(v30 + v57, v33);
    v53 = v31;
    v54 = v32;
    v34 = v47;
    sub_26629476C();
    LOBYTE(v55) = 2;
    sub_26628B034(&qword_28006AA90, &qword_28006AA98, MEMORY[0x277CC9280], MEMORY[0x277D84F58]);
    v35 = v45;
    sub_26629496C();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    (*(*(v36 - 8) + 8))(v30 + v51, v36);
    sub_26627AD08(v35, v50);
    sub_26629476C();
    sub_26627AD78(v35);
    LOBYTE(v55) = 3;
    sub_266288C40(&qword_28006AFA8, MEMORY[0x277D63230]);
    v38 = v43;
    v37 = v44;
    sub_26629496C();
    sub_26629473C();
    (*(v41 + 8))(v38, v37);
    sub_2662880D0();
    sub_26629471C();
    (*(v24 + 8))(v48, v34);
    sub_26628AAFC(v30, v42);
    __swift_destroy_boxed_opaque_existential_0(v52);
    return sub_26628AB60(v30);
  }
}

unint64_t sub_26628AAA8()
{
  result = qword_28006AFF8;
  if (!qword_28006AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006AFF8);
  }

  return result;
}

uint64_t sub_26628AAFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26628AB60(uint64_t a1)
{
  v2 = type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SiriAudioPunchOutRowSnippetModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x28223BE20](v4);
  v20 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B000, &qword_266296EC8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628AAA8();
  sub_266294A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v23 = v2;
  sub_26629478C();
  LOBYTE(v25) = 0;
  v13 = v24;
  sub_2662949CC();
  if (v13)
  {
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v19 = v8;
    v24 = v6;
    v15 = v22;

    type metadata accessor for SiriAudioPunchOutRowSnippetModel(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
    sub_26629478C();
    v26 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A958, &qword_266295110);
    sub_26627C060(&qword_28006AAA8, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
    sub_2662949EC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    v16 = v19;
    sub_26629478C();
    LOBYTE(v25) = 2;
    sub_26628B034(&qword_28006AAB0, &qword_28006AAB8, MEMORY[0x277CC9268], MEMORY[0x277D84F40]);
    sub_2662949EC();
    sub_26627AD78(v16);
    v17 = v15;
    sub_26629473C();
    sub_2662880D0();
    v18 = v20;
    sub_26629471C();
    LOBYTE(v25) = 3;
    sub_266288C40(&qword_28006AFB8, MEMORY[0x277D63228]);
    sub_2662949EC();
    (*(v21 + 8))(v18, v17);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_26628B034(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006A970, &qword_266294EC0);
    sub_26628B160(a2, MEMORY[0x277CC9260], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26628B160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_26628B1D8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26628B258(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_26628B424(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA68, &qword_2662950F8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

void sub_26628B5E8(uint64_t a1)
{
  sub_26627EE30();
  if (v1 <= 0x3F)
  {
    sub_26627CA54(319, &qword_28006AB08, &qword_28006A958, &qword_266295110);
    if (v2 <= 0x3F)
    {
      sub_26627CA54(319, &qword_28006AB10, &qword_28006A970, &qword_266294EC0);
      if (v3 <= 0x3F)
      {
        sub_266289198(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_26628B6E0()
{
  result = qword_28006B028;
  if (!qword_28006B028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B028);
  }

  return result;
}

unint64_t sub_26628B738()
{
  result = qword_28006B030;
  if (!qword_28006B030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B030);
  }

  return result;
}

unint64_t sub_26628B790()
{
  result = qword_28006B038;
  if (!qword_28006B038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B038);
  }

  return result;
}

unint64_t sub_26628B7E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2662948EC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t (*SiriAudioAlternativeSnippetModel.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t (*SiriAudioAlternativeSnippetModel.subtitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioAlternativeSnippetModel.isSnippetInDarkMode.getter()
{
  type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  sub_26629478C();
  return v1;
}

void *sub_26628B9FC@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  result = sub_26629478C();
  *a1 = v3;
  return result;
}

uint64_t sub_26628BA64(char *a1)
{
  type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  return sub_26629479C();
}

uint64_t SiriAudioAlternativeSnippetModel.isSnippetInDarkMode.setter(char a1)
{
  type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  return sub_26629479C();
}

uint64_t (*SiriAudioAlternativeSnippetModel.isSnippetInDarkMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioAlternativeSnippetModel.items.getter()
{
  type metadata accessor for SiriAudioAlternativeSnippetModel(0);
}

uint64_t SiriAudioAlternativeSnippetModel.items.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SiriAudioAlternativeSnippetModel(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SiriAudioAlternativeSnippetModel.init(title:subtitle:isSnippetInDarkMode:items:)@<X0>(uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_26629476C();
  v9 = type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  sub_26629476C();
  result = sub_26629476C();
  *(a7 + *(v9 + 28)) = a6;
  return result;
}

unint64_t sub_26628BD24()
{
  v1 = 0x656C746974;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x736D657469;
  }

  if (*v0)
  {
    v1 = 0x656C746974627573;
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

uint64_t sub_26628BD9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26628F3A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26628BDC4(uint64_t a1)
{
  v2 = sub_26628C100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26628BE00(uint64_t a1)
{
  v2 = sub_26628C100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioAlternativeSnippetModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B040, &qword_2662970E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628C100();
  sub_266294A5C();
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26627E670(&qword_28006ABA0, MEMORY[0x277D637D0]);
  sub_2662949EC();
  if (!v2)
  {
    v9 = type metadata accessor for SiriAudioAlternativeSnippetModel(0);
    v14 = 1;
    sub_2662949EC();
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
    sub_26627A38C(&qword_28006AA20, MEMORY[0x277D637D0]);
    sub_2662949EC();
    v11[1] = *(v3 + *(v9 + 28));
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B050, &qword_2662970E8);
    sub_26628C76C(&qword_28006B058, &qword_28006B060, &protocol conformance descriptor for SiriAudioAlternativeItemModel, MEMORY[0x277D83948]);
    sub_2662949EC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_26628C100()
{
  result = qword_28006B048;
  if (!qword_28006B048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B048);
  }

  return result;
}

uint64_t SiriAudioAlternativeSnippetModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v34 = *(v38 - 8);
  v7 = MEMORY[0x28223BE20](v38);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v35 = &v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B068, &unk_2662970F0);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for SiriAudioAlternativeSnippetModel(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628C100();
  v39 = v13;
  v17 = v40;
  sub_266294A4C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = v6;
  v29 = v9;
  v40 = v14;
  v30 = v16;
  v45 = 0;
  sub_26627E670(&qword_28006ABB0, MEMORY[0x277D637E0]);
  v18 = v35;
  sub_26629496C();
  v19 = v30;
  v20 = v18;
  v21 = v38;
  v35 = *(v34 + 32);
  (v35)(v30, v20, v38);
  v44 = 1;
  v22 = v29;
  sub_26629496C();
  (v35)(v19 + *(v40 + 20), v22, v21);
  v43 = 2;
  sub_26627A38C(&qword_28006AA48, MEMORY[0x277D637E0]);
  v23 = v28;
  v24 = v32;
  sub_26629496C();
  v25 = a1;
  v26 = v40;
  (*(v33 + 32))(v19 + *(v40 + 24), v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B050, &qword_2662970E8);
  v42 = 3;
  sub_26628C76C(&qword_28006B070, &qword_28006B078, &protocol conformance descriptor for SiriAudioAlternativeItemModel, MEMORY[0x277D83978]);
  sub_26629496C();
  (*(v36 + 8))(v39, v37);
  *(v19 + *(v26 + 28)) = v41;
  sub_26628E19C(v19, v31, type metadata accessor for SiriAudioAlternativeSnippetModel);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return sub_26628E204(v19, type metadata accessor for SiriAudioAlternativeSnippetModel);
}

uint64_t sub_26628C76C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006B050, &qword_2662970E8);
    sub_26628C808(a2, type metadata accessor for SiriAudioAlternativeItemModel, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26628C808(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26628C884()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

uint64_t (*SiriAudioAlternativeItemModel.id.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627A66C;
}

uint64_t sub_26628C9A8(uint64_t (*a1)(void))
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v2;
}

void *sub_26628CA04@<X0>(uint64_t (*a1)(void)@<X3>, void *a2@<X8>)
{
  a1(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_26628CA70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  (a5)(0, a2, a3, a4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t sub_26628CAFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t (*SiriAudioAlternativeItemModel.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioAlternativeItemModel.subtitle.getter()
{
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  sub_26629478C();
  return v1;
}

void *sub_26628CC48@<X0>(void *a1@<X8>)
{
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26628CCB0(void *a1)
{
  type metadata accessor for SiriAudioAlternativeItemModel(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t SiriAudioAlternativeItemModel.subtitle.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  return sub_26629479C();
}

uint64_t (*SiriAudioAlternativeItemModel.subtitle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

void *SiriAudioAlternativeItemModel.imageURL.getter()
{
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  return sub_26629478C();
}

void *sub_26628CE68()
{
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  return sub_26629478C();
}

uint64_t sub_26628CEC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_26627AD08(a1, &v9 - v6);
  sub_26627AD08(v7, v5);
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  sub_26629479C();
  return sub_26627AD78(v7);
}

uint64_t SiriAudioAlternativeItemModel.imageURL.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26627AD08(a1, &v5 - v3);
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  sub_26629479C();
  return sub_26627AD78(a1);
}

uint64_t (*SiriAudioAlternativeItemModel.imageURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  *(v3 + 32) = sub_26629477C();
  return sub_26627D000;
}

uint64_t SiriAudioAlternativeItemModel.command.getter()
{
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629473C();
}

uint64_t sub_26628D14C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  result = sub_26629473C();
  *a1 = result;
  return result;
}

uint64_t sub_26628D1A4(void **a1)
{
  v1 = *a1;
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t SiriAudioAlternativeItemModel.command.setter(uint64_t a1)
{
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  return sub_26629474C();
}

uint64_t (*SiriAudioAlternativeItemModel.command.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SiriAudioAlternativeItemModel(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  *(v3 + 32) = sub_26629472C();
  return sub_26627D000;
}

uint64_t sub_26628D308()
{
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

uint64_t sub_26628D3DC(uint64_t a1)
{
  sub_26629481C();
}

uint64_t sub_26628D49C(uint64_t a1)
{
  sub_266294A1C();
  sub_26629481C();

  return sub_266294A3C();
}

unint64_t sub_26628D56C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26628F50C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26628D59C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE800000000000000;
  v6 = 0x656C746974627573;
  v7 = 0xE800000000000000;
  v8 = 0x4C52556567616D69;
  if (v2 != 3)
  {
    v8 = 0x646E616D6D6F63;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656C746974;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_26628D62C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x656C746974627573;
  v4 = 0x4C52556567616D69;
  if (v1 != 3)
  {
    v4 = 0x646E616D6D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C746974;
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

unint64_t sub_26628D6B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26628F50C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26628D6E0(uint64_t a1)
{
  v2 = sub_26628E0AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26628D71C(uint64_t a1)
{
  v2 = sub_26628E0AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SiriAudioAlternativeItemModel.init(id:title:subtitle:imageURL:command:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v27 = a7;
  v28 = a8;
  v25 = a5;
  v26 = a6;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  v20 = *(type metadata accessor for SiriAudioAlternativeItemModel(0) + 28);
  v21 = sub_26629470C();
  (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  sub_26627AD08(v19, v17);
  sub_26629476C();
  sub_26627AD78(v19);
  v29 = a1;
  v30 = a2;
  sub_26629476C();
  v29 = a3;
  v30 = a4;
  sub_26629476C();
  v29 = v25;
  v30 = v26;
  sub_26629476C();
  v22 = v27;
  sub_26627AD08(v27, v19);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  (*(*(v23 - 8) + 8))(a9 + v20, v23);
  sub_26627AD08(v19, v17);
  sub_26629476C();
  sub_26627AD78(v19);
  sub_2662880D0();
  sub_26629471C();
  return sub_26627AD78(v22);
}

uint64_t SiriAudioAlternativeItemModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = v36 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B080, &qword_266297100);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v5 = v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v36 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v36 - v13;
  v15 = type metadata accessor for SiriAudioAlternativeItemModel(0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 28);
  v20 = sub_26629470C();
  (*(*(v20 - 8) + 56))(v14, 1, 1, v20);
  sub_26627AD08(v14, v12);
  v46 = v19;
  v49 = v18;
  sub_26629476C();
  sub_26627AD78(v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628E0AC();
  v44 = v5;
  v21 = v45;
  sub_266294A4C();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v25 = v49;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    return (*(*(v26 - 8) + 8))(&v25[v46], v26);
  }

  else
  {
    v37 = v9;
    v22 = v41;
    v23 = v42;
    v45 = v15;
    LOBYTE(v47) = 0;
    v24 = v43;
    v47 = sub_26629494C();
    v48 = v27;
    sub_26629476C();
    LOBYTE(v47) = 1;
    v47 = sub_26629494C();
    v48 = v28;
    sub_26629476C();
    LOBYTE(v47) = 2;
    v36[1] = 0;
    v47 = sub_26629494C();
    v48 = v29;
    sub_26629476C();
    LOBYTE(v47) = 3;
    sub_26628E100(&qword_28006AA90, &qword_28006AA98, MEMORY[0x277CC9280], MEMORY[0x277D84F58]);
    sub_26629496C();
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    v31 = *(*(v30 - 8) + 8);
    v36[0] = v6;
    v31(&v49[v46], v30);
    v32 = v37;
    sub_26627AD08(v37, v14);
    sub_26629476C();
    sub_26627AD78(v32);
    LOBYTE(v47) = 4;
    sub_266288C40(&qword_28006AFA8, MEMORY[0x277D63230]);
    v33 = v40;
    sub_26629496C();
    sub_26629473C();
    (*(v38 + 8))(v23, v33);
    sub_2662880D0();
    v34 = v49;
    sub_26629471C();
    (*(v22 + 8))(v44, v24);
    sub_26628E19C(v34, v39, type metadata accessor for SiriAudioAlternativeItemModel);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_26628E204(v34, type metadata accessor for SiriAudioAlternativeItemModel);
  }
}

unint64_t sub_26628E0AC()
{
  result = qword_28006B088;
  if (!qword_28006B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B088);
  }

  return result;
}

uint64_t sub_26628E100(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006A970, &qword_266294EC0);
    sub_26628C808(a2, MEMORY[0x277CC9260], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26628E19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26628E204(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SiriAudioAlternativeItemModel.encode(to:)(void *a1)
{
  v2 = v1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v18 = &v16 - v4;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006A970, &qword_266294EC0);
  MEMORY[0x28223BE20](v20);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006B090, &qword_266297108);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26628E0AC();
  sub_266294A5C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v21 = v2;
  sub_26629478C();
  LOBYTE(v22) = 0;
  v11 = v23;
  sub_2662949CC();
  if (v11)
  {
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v23 = v6;

    type metadata accessor for SiriAudioAlternativeItemModel(0);
    sub_26629478C();
    LOBYTE(v22) = 1;
    sub_2662949CC();

    sub_26629478C();
    LOBYTE(v22) = 2;
    sub_2662949CC();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
    v12 = v23;
    sub_26629478C();
    LOBYTE(v22) = 3;
    sub_26628E100(&qword_28006AAB0, &qword_28006AAB8, MEMORY[0x277CC9268], MEMORY[0x277D84F40]);
    sub_2662949EC();
    sub_26627AD78(v12);
    v13 = v17;
    sub_26629473C();
    sub_2662880D0();
    v14 = v18;
    sub_26629471C();
    LOBYTE(v22) = 4;
    sub_266288C40(&qword_28006AFB8, MEMORY[0x277D63228]);
    sub_2662949EC();
    (*(v19 + 8))(v14, v13);
    return (*(v8 + 8))(v10, v7);
  }
}

void *keypath_getTm@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  result = sub_26629478C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_26628E98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_26628EAC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA08, &qword_2662950D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_26628EBE4(uint64_t a1)
{
  sub_26627CA08(319, &qword_28006AB00, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_26627CA08(319, &qword_28006AAE0, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_26628F114(319, &qword_28006B0A8, type metadata accessor for SiriAudioAlternativeItemModel, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26628ECE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 32);

  return v15(v16, a2, v14);
}

uint64_t sub_26628EE5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA60, &qword_2662950F0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AA70, &unk_266295100);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
    goto LABEL_5;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28006AF88, &unk_266296EB0);
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 32);

  return v17(v18, a2, a2, v16);
}

void sub_26628EFCC(uint64_t a1)
{
  sub_26627CA08(319, &qword_28006AB00, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_26628F0B0(319);
    if (v2 <= 0x3F)
    {
      sub_26628F114(319, &qword_28006AFD0, sub_2662880D0, MEMORY[0x277D63220]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26628F0B0(uint64_t a1)
{
  if (!qword_28006AB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28006A970, &qword_266294EC0);
    v1 = sub_2662947AC();
    if (!v2)
    {
      atomic_store(v1, &qword_28006AB10);
    }
  }
}

void sub_26628F114(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26628F19C()
{
  result = qword_28006B0C0;
  if (!qword_28006B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B0C0);
  }

  return result;
}

unint64_t sub_26628F1F4()
{
  result = qword_28006B0C8;
  if (!qword_28006B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B0C8);
  }

  return result;
}

unint64_t sub_26628F24C()
{
  result = qword_28006B0D0;
  if (!qword_28006B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B0D0);
  }

  return result;
}

unint64_t sub_26628F2A4()
{
  result = qword_28006B0D8;
  if (!qword_28006B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B0D8);
  }

  return result;
}

unint64_t sub_26628F2FC()
{
  result = qword_28006B0E0;
  if (!qword_28006B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B0E0);
  }

  return result;
}

unint64_t sub_26628F354()
{
  result = qword_28006B0E8;
  if (!qword_28006B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28006B0E8);
  }

  return result;
}

uint64_t sub_26628F3A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_2662949FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_2662949FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000266298420 == a2 || (sub_2662949FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_2662949FC();

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

unint64_t sub_26628F50C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2662948EC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26628F568(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000747865;
  v3 = 0x546D7269666E6F63;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x74786554796E6564;
    }

    else
    {
      v5 = 0x546D7269666E6F63;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEB00000000747865;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x436D7269666E6F63;
    v6 = 0xEE00646E616D6D6FLL;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x6D6D6F43796E6564;
    }

    else
    {
      v5 = 0x7572747365447369;
    }

    if (v4 == 3)
    {
      v6 = 0xEB00000000646E61;
    }

    else
    {
      v6 = 0xED00006576697463;
    }
  }

  v7 = 0x436D7269666E6F63;
  v8 = 0xEE00646E616D6D6FLL;
  v9 = 0x6D6D6F43796E6564;
  v10 = 0xEB00000000646E61;
  if (a2 != 3)
  {
    v9 = 0x7572747365447369;
    v10 = 0xED00006576697463;
  }

  if (a2 != 2)
  {
    v7 = v9;
    v8 = v10;
  }

  if (a2)
  {
    v3 = 0x74786554796E6564;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_2662949FC();
  }

  return v13 & 1;
}

uint64_t sub_26628F730(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB000000006C6562;
  v3 = 0x614C6E6F74747562;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x74536E6F74747562;
    }

    else
    {
      v5 = 0x6F436E6F74747562;
    }

    if (v4 == 2)
    {
      v6 = 0xEB00000000656C79;
    }

    else
    {
      v6 = 0xED0000646E616D6DLL;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6F526E6F74747562;
    }

    else
    {
      v5 = 0x614C6E6F74747562;
    }

    if (v4)
    {
      v6 = 0xEA0000000000656CLL;
    }

    else
    {
      v6 = 0xEB000000006C6562;
    }
  }

  v7 = 0x74536E6F74747562;
  v8 = 0xEB00000000656C79;
  if (a2 != 2)
  {
    v7 = 0x6F436E6F74747562;
    v8 = 0xED0000646E616D6DLL;
  }

  if (a2)
  {
    v3 = 0x6F526E6F74747562;
    v2 = 0xEA0000000000656CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2662949FC();
  }

  return v11 & 1;
}

uint64_t sub_26628F8A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656C746974;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x4C52556567616D69;
    }

    else
    {
      v4 = 0x646E616D6D6F63;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C746974627573;
    }

    else
    {
      v4 = 0x656C746974;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x4C52556567616D69;
  if (a2 != 2)
  {
    v8 = 0x646E616D6D6F63;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x656C746974627573;
    v6 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2662949FC();
  }

  return v11 & 1;
}

uint64_t sub_26628F9E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0x656C746974627573;
    }

    else
    {
      v3 = 0x4C52556567616D69;
    }

    v4 = 0xE800000000000000;
  }

  else
  {
    if (a1)
    {
      v3 = 0x656C746974;
    }

    else
    {
      v3 = 25705;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 25705;
  v7 = 0x656C746974627573;
  if (a2 != 2)
  {
    v7 = 0x4C52556567616D69;
  }

  if (a2)
  {
    v6 = 0x656C746974;
    v5 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v5;
  }

  else
  {
    v9 = 0xE800000000000000;
  }

  if (v3 == v8 && v4 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2662949FC();
  }

  return v10 & 1;
}