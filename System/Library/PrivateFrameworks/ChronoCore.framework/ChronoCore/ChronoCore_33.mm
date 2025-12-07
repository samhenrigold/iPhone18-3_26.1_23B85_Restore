uint64_t sub_224D7064C(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v5 = *(a2 + qword_28135C9F0);
  os_unfair_lock_lock(*(v5 + 16));
  LOBYTE(a3) = sub_224A687B0(a1, a3);
  os_unfair_lock_unlock(*(v5 + 16));
  return a3 & 1;
}

uint64_t sub_224D706AC()
{
  v22 = MEMORY[0x277D84F90];
  v1 = [v0 containerDescriptors];
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v2 = sub_224DAF008();

  if (v2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
  {
    v4 = 0;
    v21 = v2 & 0xC000000000000001;
    v17 = v2 + 32;
    v18 = v2 & 0xFFFFFFFFFFFFFF8;
    v5 = MEMORY[0x277D84F90];
    v19 = i;
    v20 = v2;
    while (1)
    {
      if (v21)
      {
        v6 = MEMORY[0x22AA5DCC0](v4, v2);
      }

      else
      {
        if (v4 >= *(v18 + 16))
        {
          goto LABEL_25;
        }

        v6 = *(v17 + 8 * v4);
      }

      v7 = v6;
      if (__OFADD__(v4++, 1))
      {
        break;
      }

      v9 = [v6 widgets];
      sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
      v10 = sub_224DAF008();

      if (v10 >> 62)
      {
        v11 = sub_224DAF838();
        if (!v11)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v11)
        {
          goto LABEL_4;
        }
      }

      if (v11 < 1)
      {
        goto LABEL_24;
      }

      for (j = 0; j != v11; ++j)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x22AA5DCC0](j, v10);
        }

        else
        {
          v13 = *(v10 + 8 * j + 32);
        }

        v14 = v13;
        v15 = [v13 extensionIdentity];
        MEMORY[0x22AA5D350]();
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224DAF038();
        }

        sub_224DAF078();
      }

      v5 = v22;
      i = v19;
      v2 = v20;
LABEL_4:

      if (v4 == i)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_28:

  return v5;
}

uint64_t sub_224D70938()
{
  v1 = v0;
  v2 = &off_27853F000;
  v58 = v1;
  v3 = [v1 containerDescriptors];
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v4 = sub_224DAF008();

  isUniquelyReferenced_nonNull_bridgeObject = v4;
  if (v4 >> 62)
  {
    goto LABEL_47;
  }

  v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v6)
  {
    v7 = 0;
    v64 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v62 = isUniquelyReferenced_nonNull_bridgeObject;
    v59 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v60 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v8 = MEMORY[0x277D84F90];
    v63 = v6;
    while (1)
    {
      if (v64)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AA5DCC0](v7, v62);
      }

      else
      {
        if (v7 >= *(v60 + 16))
        {
          goto LABEL_45;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v59 + 8 * v7);
      }

      v9 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = __OFADD__(v7++, 1);
      if (v10)
      {
        break;
      }

      v11 = [isUniquelyReferenced_nonNull_bridgeObject widgets];
      sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
      v12 = sub_224DAF008();

      v2 = (v12 >> 62);
      if (v12 >> 62)
      {
        v13 = sub_224DAF838();
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v8 >> 62;
      if (v8 >> 62)
      {
        v28 = sub_224DAF838();
        v16 = v28 + v13;
        if (__OFADD__(v28, v13))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          v2 = &off_27853F000;
          goto LABEL_49;
        }
      }

      else
      {
        v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v65 = v9;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v14)
        {
          v17 = v8 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_224DAF838();
        goto LABEL_21;
      }

      if (v14)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF968();
      v8 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v66 = v13;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v2)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_224DAF838();
        v20 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v66 > 0)
          {
            goto LABEL_42;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_4;
        }
      }

      if (((v19 >> 1) - v18) < v66)
      {
        goto LABEL_43;
      }

      v21 = v17 + 8 * v18 + 32;
      if (v2)
      {
        v2 = &qword_27D6F4040;
        if (v20 < 1)
        {
          goto LABEL_46;
        }

        v61 = v8;
        sub_224A33088(&qword_281350B68, &qword_27D6F4040, &qword_224DB8D20, MEMORY[0x277D83988]);
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4040, &qword_224DB8D20);
          v23 = sub_224A6996C(v67, i, v12);
          v25 = *v24;
          (v23)(v67, 0);
          *(v21 + 8 * i) = v25;
        }

        v8 = v61;
        v2 = v66;
        if (v66 <= 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v2 = v66;
        swift_arrayInitWithCopy();

        if (v66 <= 0)
        {
          goto LABEL_5;
        }
      }

      v26 = *(v17 + 16);
      v10 = __OFADD__(v26, v2);
      v27 = v2 + v26;
      if (v10)
      {
        goto LABEL_44;
      }

      *(v17 + 16) = v27;
LABEL_5:
      if (v7 == v63)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v6 = sub_224DAF838();
    isUniquelyReferenced_nonNull_bridgeObject = v29;
  }

  v8 = MEMORY[0x277D84F90];
LABEL_49:
  strcpy(v67, "containers: ");
  BYTE5(v67[1]) = 0;
  HIWORD(v67[1]) = -5120;
  v30 = [v58 v2[323]];
  v31 = sub_224DAF008();

  if (v31 >> 62)
  {
    v32 = sub_224DAF838();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = v32;
  v33 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v33);

  MEMORY[0x22AA5D210](10, 0xE100000000000000);
  v35 = v67[0];
  v34 = v67[1];
  strcpy(v67, "widgets: ");
  WORD1(v67[1]) = 0;
  HIDWORD(v67[1]) = -385875968;
  if (v8 >> 62)
  {
    v36 = sub_224DAF838();
  }

  else
  {
    v36 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v68 = v36;
  v37 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v37);

  MEMORY[0x22AA5D210](10, 0xE100000000000000);
  v38 = v67[0];
  v39 = v67[1];
  v67[0] = v35;
  v67[1] = v34;

  MEMORY[0x22AA5D210](v38, v39);

  v41 = v67[0];
  v40 = v67[1];
  strcpy(v67, "metrics: ");
  WORD1(v67[1]) = 0;
  HIDWORD(v67[1]) = -385875968;
  v42 = [v58 metricsSpecification];
  v43 = [v42 description];

  v44 = sub_224DAEE18();
  v46 = v45;

  MEMORY[0x22AA5D210](v44, v46);

  MEMORY[0x22AA5D210](10, 0xE100000000000000);
  v47 = v67[0];
  v48 = v67[1];
  v67[0] = v41;
  v67[1] = v40;

  MEMORY[0x22AA5D210](v47, v48);

  v50 = v67[0];
  v49 = v67[1];
  v67[0] = 0;
  v67[1] = 0xE000000000000000;
  sub_224DAF938();

  v67[0] = 0xD000000000000013;
  v67[1] = 0x8000000224DD0210;
  v51 = [v58 rateLimitPolicies];
  if (v51)
  {
    sub_224A3B79C(0, &qword_281350930, 0x277CFA408);
    sub_224A5D644(&unk_281350920, &qword_281350930, 0x277CFA408);
    sub_224DAF1B8();

    v51 = sub_224DAF1C8();
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  v68 = v51;
  v69 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4D30, &qword_224DBA9F0);
  v54 = sub_224DAEE28();
  MEMORY[0x22AA5D210](v54);

  v55 = v67[0];
  v56 = v67[1];
  v67[0] = v50;
  v67[1] = v49;

  MEMORY[0x22AA5D210](v55, v56);

  return v67[0];
}

void *sub_224D710CC@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v4 = sub_224DAA1C8();
  v6 = v5;
  v7 = [v3 description];
  v8 = sub_224DAEE18();
  v10 = v9;

  a2[3] = &type metadata for _ConfigurationItemForStateCapture;
  a2[4] = sub_224CB3584();
  result = swift_allocObject();
  *a2 = result;
  result[2] = v4;
  result[3] = v6;
  result[4] = v8;
  result[5] = v10;
  return result;
}

uint64_t sub_224D711DC(uint64_t a1)
{
  v3 = [*v1 containerDescriptors];
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v4 = sub_224DAF008();

  v8[2] = a1;
  sub_224D41B20(sub_224D725AC, v8, v4);
  v6 = v5;

  return v6;
}

double sub_224D7128C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(v2 + qword_28135C9F0);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = sub_224D70358(v2, a1, &qword_27D6F4070, &qword_224DB5668);
  os_unfair_lock_unlock(*(v5 + 16));
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB2780;
    *(inited + 32) = v6;
    v8 = qword_28135A7E8;
    swift_beginAccess();
    sub_224A68ED8(v2 + v8, v10);
    sub_224A68F48(inited, v10, a2);
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

void sub_224D7139C(uint64_t a1)
{
  v3 = v1;
  v5 = sub_224DAE6E8();
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAA428();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + qword_28135C9F0);
  os_unfair_lock_lock(*(v14 + 16));
  v15 = sub_224D70358(v3, a1, &qword_27D6F4070, &qword_224DB5668);
  if (v2)
  {

    os_unfair_lock_unlock(*(v14 + 16));
    __break(1u);
  }

  else
  {
    v16 = v15;
    os_unfair_lock_unlock(*(v14 + 16));
    if (v16)
    {
      (*(v10 + 104))(v13, *MEMORY[0x277CFA040], v9);
      sub_224A86C64(&qword_281351828, MEMORY[0x277CFA048], MEMORY[0x277CFA058]);
      sub_224DAEFA8();
      sub_224DAEFA8();

      (*(v10 + 8))(v13, v9);
    }

    else
    {
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      (*(v17 + 104))(v8, *MEMORY[0x277CE3BE8], v5);
      sub_224DAF638();
      swift_willThrow();
    }
  }
}

uint64_t sub_224D71690(unsigned int a1)
{
  v2 = a1;
  v3 = a1 >> 8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4218, &qword_224DB5FF0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v17 - v7;
  v17[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58D0, &qword_224DB5FF8);
  v9 = *(v17[0] - 8);
  MEMORY[0x28223BE20](v17[0], v10);
  v12 = v17 - v11;
  v17[1] = *(v1 + qword_28135A7E0);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  *(v13 + 24) = v2;
  *(v13 + 25) = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5390, &unk_224DB6000);
  sub_224A33088(&qword_281350FA0, &unk_27D6F5390, &unk_224DB6000, MEMORY[0x277CBCE20]);
  sub_224DAB438();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  sub_224A33088(&qword_281351358, &qword_27D6F4218, &qword_224DB5FF0, MEMORY[0x277CBCC90]);
  sub_224DAB3E8();
  (*(v5 + 8))(v8, v4);
  sub_224A33088(&qword_281351380, &unk_27D6F58D0, &qword_224DB5FF8, MEMORY[0x277CBCC08]);
  v14 = v17[0];
  v15 = sub_224DAB3A8();

  (*(v9 + 8))(v12, v14);
  return v15;
}

uint64_t sub_224D71998()
{
  sub_224A68420(0x300u, &v7);
  if (v9)
  {
    if (!*(v9 + 16))
    {
      return sub_224A699F0(&v7);
    }

    v1 = sub_224A79FA8(v9);
    sub_224A699F0(&v7);
    sub_224A7B5CC(v1);

    v2 = qword_28135A7E8;
    swift_beginAccess();
    sub_224A68ED8(v0 + v2, &v7);
    if (v8)
    {
      sub_224A3317C(&v7, v6);
      sub_224A3311C(&v7, &qword_27D6F52B8, &unk_224DBB690);
      __swift_project_boxed_opaque_existential_1(v6, v6[3]);
      sub_224DADE18();

      return __swift_destroy_boxed_opaque_existential_1(v6);
    }

    v4 = &qword_27D6F52B8;
    v5 = &unk_224DBB690;
  }

  else
  {
    v4 = &qword_27D6F50E0;
    v5 = &qword_224DB41A0;
  }

  return sub_224A3311C(&v7, v4, v5);
}

void sub_224D71AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _HostFilterableChange(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB258();
  MEMORY[0x28223BE20](v8, v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v47 = (v10 + 16);
  v48 = qword_28135A7E0;
  v46 = (v10 + 8);

  v18 = 0;
  *&v19 = 136446210;
  v44 = v19;
  v45 = v8;
  while (v16)
  {
LABEL_9:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = (*(a1 + 48) + ((v18 << 10) | (16 * v21)));
    v23 = v22[1];
    if (v23)
    {
      v24 = *v22 == 0x7363697274656DLL && v23 == 0xE700000000000000;
      if (v24 || (sub_224DAFD88() & 1) != 0)
      {
        (*v47)(v12, v49 + qword_281365438, v8);
        sub_224B530D8(a2, v7);
        v25 = v12;
        v26 = sub_224DAB228();
        v27 = v7;
        v28 = sub_224DAF278();
        if (os_log_type_enabled(v26, v28))
        {
          v29 = swift_slowAlloc();
          v42 = a2;
          v30 = v29;
          v31 = swift_slowAlloc();
          v43 = a1;
          v40 = v31;
          v41 = v25;
          v50 = v31;
          *v30 = v44;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
          sub_224A33088(&qword_281351860, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA030]);
          v32 = sub_224DAFD28();
          v34 = v33;
          sub_224A6951C(v27);
          v35 = sub_224A33F74(v32, v34, &v50);

          *(v30 + 4) = v35;
          _os_log_impl(&dword_224A2F000, v26, v28, "Publishing metrics changed with host: %{public}s", v30, 0xCu);
          v36 = v40;
          __swift_destroy_boxed_opaque_existential_1(v40);
          a1 = v43;
          MEMORY[0x22AA5EED0](v36, -1, -1);
          v37 = v30;
          a2 = v42;
          MEMORY[0x22AA5EED0](v37, -1, -1);

          v38 = v45;
          v12 = v41;
          (*v46)(v41, v45);
          v7 = v27;
          v8 = v38;
        }

        else
        {

          sub_224A6951C(v27);
          v39 = v45;
          (*v46)(v25, v45);
          v7 = v27;
          v8 = v39;
          v12 = v25;
        }

        sub_224DAB348();
      }
    }
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      return;
    }

    v16 = *(v13 + 8 * v20);
    ++v18;
    if (v16)
    {
      v18 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_224D71F28()
{
  v0 = sub_224D701AC();

  sub_224A3311C(v0 + qword_28135A7E8, &qword_27D6F52B8, &unk_224DBB690);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetHostService(uint64_t a1)
{
  result = qword_28135A7B8;
  if (!qword_28135A7B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224D720E4(uint64_t a1)
{
  result = sub_224A86C64(&qword_28135A7D0, type metadata accessor for WidgetHostService, &unk_224DB5F30);
  *(a1 + 8) = result;
  return result;
}

void *sub_224D7213C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_224A68560(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_224D721CC(id a1, void *a2)
{
  if (a1)
  {
    v4 = [a1 metricsSpecification];
    v5 = v4;
    if (!a2)
    {
      v6 = 1;
      if (!v4)
      {
        v7 = MEMORY[0x277D84FA0];
        goto LABEL_29;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84FA0];
    }

    v5 = 0;
  }

  v8 = [a2 metricsSpecification];
  v9 = v8;
  if (!v5)
  {
    v6 = 0;
    if (!v8)
    {
LABEL_34:
      v7 = MEMORY[0x277D84FA0];
      if (a1)
      {
        goto LABEL_29;
      }

LABEL_35:
      if (v6)
      {
        return v7;
      }

      v21 = 0;
      goto LABEL_37;
    }

    goto LABEL_15;
  }

  if (!v8)
  {
    v6 = 0;
LABEL_14:
    v9 = v5;
LABEL_15:

    goto LABEL_16;
  }

  sub_224A3B79C(0, &unk_281350890, 0x277CFA3F8);
  v10 = sub_224DAF6A8();

  v6 = 0;
  if (v10)
  {
    goto LABEL_34;
  }

LABEL_16:
  v7 = MEMORY[0x277D84FA0];
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](1);
  sub_224DAEE78();
  v11 = sub_224DAFEA8();
  v12 = -1 << *(v7 + 32);
  v13 = v11 & ~v12;
  if ((*(v7 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13))
  {
    v14 = ~v12;
    do
    {
      v15 = (*(v7 + 48) + 16 * v13);
      v16 = v15[1];
      if (v16)
      {
        if (*v15 == 0x7363697274656DLL && v16 == 0xE700000000000000)
        {

          goto LABEL_34;
        }

        v18 = sub_224DAFD88();

        if (v18)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v7 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v13) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_224AE2E08(0x7363697274656DLL, 0xE700000000000000, v13, isUniquelyReferenced_nonNull_native);
LABEL_28:
  if (!a1)
  {
    goto LABEL_35;
  }

LABEL_29:
  v20 = [a1 containerDescriptors];
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v21 = sub_224DAF008();

  if (v6)
  {
    if (!v21)
    {
      return v7;
    }

    goto LABEL_43;
  }

LABEL_37:
  v22 = [a2 containerDescriptors];
  sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
  v23 = sub_224DAF008();

  if (v21)
  {
    if (v23)
    {
      v24 = sub_224C91928(v21, v23);

      if (v24)
      {
        return v7;
      }

      goto LABEL_44;
    }
  }

  else if (!v23)
  {
    return v7;
  }

LABEL_43:

LABEL_44:
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](0);
  v25 = sub_224DAFEA8();
  v26 = -1 << *(v7 + 32);
  v27 = v25 & ~v26;
  if ((*(v7 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
  {
    v28 = ~v26;
    while (1)
    {
      v29 = *(*(v7 + 48) + 16 * v27 + 8);

      if (!v29)
      {
        break;
      }

      v27 = (v27 + 1) & v28;
      if (((*(v7 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  else
  {
LABEL_48:
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_224AE2E08(0, 0, v27, v30);
  }

  return v7;
}

uint64_t sub_224D725CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_224DAF728();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_224D72700()
{
  v1 = *v0;
  v2 = sub_224DAFEC8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6E00, &qword_224DC2780);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17[-v9];
  v18 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_224DB3100;
  *(v11 + 32) = 0x6465646E65747865;
  *(v11 + 40) = 0xE800000000000000;
  v12 = *(v1 + 136);
  swift_beginAccess();
  v13 = sub_224DAF728();
  *(v11 + 72) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v11 + 48));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v0 + v12, v13);
  v15 = sub_224DAFEB8();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  (*(v3 + 104))(v6, *MEMORY[0x277D84C38], v2);

  return sub_224DAFED8();
}

void sub_224D72994(void *a1@<X8>)
{
  a1[3] = MEMORY[0x277D837D0];
  *a1 = 0xD000000000000014;
  a1[1] = 0x8000000224DC25F0;
}

char *sub_224D729C0(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = sub_224DAF728();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v19 - v9;
  v11 = *(v4 + 128);
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  *&v2[v11] = v12;
  v14 = *(v5 - 8);
  v15 = *(v14 + 56);
  v15(&v2[*(*v2 + 136)], 1, 1, v5);
  v16 = &v2[*(*v2 + 144)];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 4) = 0;
  (*(*(*(v4 + 96) - 8) + 32))(&v2[*(*v2 + 120)], a1);
  (*(v14 + 32))(v10, v19, v5);
  v15(v10, 0, 1, v5);
  v17 = *(*v2 + 136);
  swift_beginAccess();
  (*(v7 + 40))(&v2[v17], v10, v6);
  swift_endAccess();
  return v2;
}

void sub_224D72C48(uint64_t a1)
{
  v2 = *(v1 + *(*v1 + 128));
  os_unfair_lock_lock(*(v2 + 16));
  v3 = *(*v1 + 144);
  swift_beginAccess();
  sub_224D73800(v1 + v3, &v4);
  if (v5 >= 2)
  {
    sub_224A36F98(&v4, v6);
    os_unfair_lock_unlock(*(v2 + 16));
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_224DAB2F8();
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_224D7385C(&v4);
    os_unfair_lock_unlock(*(v2 + 16));
  }
}

void sub_224D72D28()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = sub_224DAF728();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15[-v10];
  v12 = *(v0 + *(v1 + 128));
  os_unfair_lock_lock(*(v12 + 16));
  v13 = *(*v0 + 144);
  swift_beginAccess();
  sub_224D73800(v0 + v13, &v16);
  if (v18 >= 2)
  {
    sub_224A36F98(&v16, v19);
    v16 = 0uLL;
    v17 = 0;
    v18 = xmmword_224DC25A0;
    swift_beginAccess();
    sub_224D738B0(&v16, v0 + v13);
    swift_endAccess();
    v14 = *(*v0 + 136);
    swift_beginAccess();
    (*(v4 + 16))(v11, v0 + v14, v3);
    (*(*(v2 - 8) + 56))(v8, 1, 1, v2);
    swift_beginAccess();
    (*(v4 + 40))(v0 + v14, v8, v3);
    swift_endAccess();
    os_unfair_lock_unlock(*(v12 + 16));
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_224DAB2D8();
    (*(v4 + 8))(v11, v3);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_224D7385C(&v16);
    os_unfair_lock_unlock(*(v12 + 16));
  }
}

uint64_t sub_224D72FD4(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 128));
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(*v1 + 144);
  swift_beginAccess();
  sub_224D73800(v1 + v5, v8);
  v6 = v9;
  sub_224D7385C(v8);
  if (v6)
  {
    os_unfair_lock_unlock(*(v4 + 16));
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_224DAB2D8();
  }

  else
  {
    sub_224A3317C(a1, v8);
    swift_beginAccess();
    sub_224D738B0(v8, v1 + v5);
    swift_endAccess();
    os_unfair_lock_unlock(*(v4 + 16));
    v9 = v3;
    WitnessTable = swift_getWitnessTable();
    v8[0] = v1;

    sub_224DAB2B8();
    return __swift_destroy_boxed_opaque_existential_1(v8);
  }
}

uint64_t sub_224D7316C(uint64_t a1)
{
  v2 = *(v1 + *(*v1 + 128));
  os_unfair_lock_lock(*(v2 + 16));
  v3 = *(*v1 + 144);
  swift_beginAccess();
  sub_224D73800(v1 + v3, v6);
  v4 = v6[3];
  sub_224D7385C(v6);
  os_unfair_lock_unlock(*(v2 + 16));
  if (v4 >= 2)
  {
    return sub_224DAB2C8();
  }

  else
  {
    return sub_224DAB2E8();
  }
}

void sub_224D73270(uint64_t a1)
{
  v17 = a1;
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = sub_224DAF728();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x28223BE20](v7, v10);
  v12 = v18 - v11 + 16;
  v13 = *(v1 + *(v2 + 128));
  os_unfair_lock_lock(*(v13 + 16));
  v14 = *(*v1 + 144);
  swift_beginAccess();
  sub_224D73800(v1 + v14, v18);
  v15 = v19;
  sub_224D7385C(v18);
  if (v15 >= 2)
  {
    memset(v18, 0, sizeof(v18));
    v19 = xmmword_224DC25A0;
    swift_beginAccess();
    sub_224D738B0(v18, v1 + v14);
    swift_endAccess();
    v16 = *(*v1 + 136);
    swift_beginAccess();
    (*(v5 + 16))(v12, v1 + v16, v4);
    (*(*(v3 - 8) + 56))(v9, 1, 1, v3);
    swift_beginAccess();
    (*(v5 + 40))(v1 + v16, v9, v4);
    swift_endAccess();
    os_unfair_lock_unlock(*(v13 + 16));
    sub_224DAB2A8();
    (*(v5 + 8))(v12, v4);
  }

  else
  {
    os_unfair_lock_unlock(*(v13 + 16));
  }
}

uint64_t *sub_224D73548()
{
  (*(*(*(*v0 + 96) - 8) + 8))(v0 + *(*v0 + 120));

  v1 = *(*v0 + 136);
  v2 = sub_224DAF728();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_224D7385C(v0 + *(*v0 + 144));
  return v0;
}

uint64_t sub_224D73660()
{
  sub_224D73548();

  return swift_deallocClassInstance();
}

void sub_224D73910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v50 = a4;
  v51 = a1;
  v52 = a2;
  v7 = sub_224DA9908();
  v56 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v48 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v48 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v48 - v16;
  v18 = sub_224DAB088();
  v54 = *(v18 - 8);
  v55 = v18;
  v20 = MEMORY[0x28223BE20](v18, v19);
  v49 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v53 = &v48 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v48 - v26;
  __swift_project_boxed_opaque_existential_1((v4 + 64), *(v4 + 88));
  sub_224DAAC98();
  v28 = sub_224DAAE38();
  v29 = (*(*(v28 - 8) + 48))(v27, 1, v28);
  sub_224A3311C(v27, &qword_27D6F3320, &unk_224DBD6F0);
  if (v29 == 1)
  {
    v30 = v56;
    v31 = v7;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v32 = sub_224DAB258();
    __swift_project_value_buffer(v32, qword_281365120);
    (*(v30 + 16))(v13, a3, v7);
    v33 = sub_224DAB228();
    v34 = sub_224DAF288();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v57[0] = v36;
      *v35 = 136446210;
      sub_224A4C248(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v37 = sub_224DAFD28();
      v39 = v38;
      (*(v30 + 8))(v13, v31);
      v40 = sub_224A33F74(v37, v39, v57);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_224A2F000, v33, v34, "Cannot send remote activity launch messages: no relationship exists with id %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x22AA5EED0](v36, -1, -1);
      MEMORY[0x22AA5EED0](v35, -1, -1);
    }

    else
    {

      (*(v30 + 8))(v13, v7);
    }
  }

  else
  {
    v41 = type metadata accessor for RemoteActivityLaunchMessage(0);
    v57[3] = v41;
    v57[4] = sub_224A4C248(&qword_2813545A0, type metadata accessor for RemoteActivityLaunchMessage, &unk_224DB6948);
    v57[5] = sub_224A4C248(qword_2813545A8, type metadata accessor for RemoteActivityLaunchMessage, &unk_224DB6920);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
    sub_224A3796C(v50, boxed_opaque_existential_1 + *(v41 + 20), &unk_27D6F4680, &unk_224DB4610);
    v43 = v52;
    *boxed_opaque_existential_1 = v51;
    boxed_opaque_existential_1[1] = v43;
    (*(v56 + 56))(v17, 1, 1, v7);

    v44 = v49;
    sub_224D7420C(v57, 3, a3, v17, &qword_27D6F6E18, &unk_224DC27F8, &qword_27D6F6E20, v49);
    v51 = v7;
    v52 = a3;
    sub_224A3311C(v17, &unk_27D6F5630, &unk_224DB34C0);
    __swift_destroy_boxed_opaque_existential_1(v57);
    v45 = v53;
    v46 = v54;
    v47 = v55;
    (*(v54 + 32))(v53, v44, v55);
    __swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
    sub_224DAAC38();
    (*(v46 + 8))(v45, v47);
  }
}

void sub_224D7420C(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, unint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v63 = a7;
  v64 = a5;
  v65 = a6;
  v9 = v8;
  v58 = a4;
  v59 = a8;
  v67 = a3;
  v12 = sub_224DA9908();
  v61 = *(v12 - 8);
  v62 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v57 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v56 = &v53 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v55 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v60 = &v53 - v23;
  __swift_project_boxed_opaque_existential_1(v9 + 14, v9[17]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v54 = a2;
  v53 = "very";
  v24 = v66;
  v25 = v67;
  v26 = sub_224DAAB48();
  if (v24)
  {

    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v28 = sub_224DAB258();
    __swift_project_value_buffer(v28, qword_281365120);
    v29 = v24;
    v30 = sub_224DAB228();
    v31 = sub_224DAF288();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v69 = v33;
      *v32 = 136446210;
      v68 = v24;
      v34 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
      v35 = sub_224DAEE28();
      v37 = sub_224A33F74(v35, v36, &v69);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_224A2F000, v30, v31, "Could not encode keys for event replicator: %{public}s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    v39 = v64;
    v38 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
    sub_224D75740(v63, v39, v38);
    swift_allocError();
    *v40 = 1;
    swift_willThrow();
  }

  else
  {
    v41 = v27;
    v66 = v26;

    __swift_project_boxed_opaque_existential_1(v9 + 8, v9[11]);
    v42 = v60;
    sub_224DAAC68();
    v44 = v61;
    v43 = v62;
    v45 = (*(v61 + 48))(v42, 1, v62);
    sub_224A3311C(v42, &unk_27D6F5630, &unk_224DB34C0);
    if (v45 == 1)
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v46 = sub_224DAB258();
      __swift_project_value_buffer(v46, qword_281365120);
      v47 = sub_224DAB228();
      v48 = sub_224DAF288();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_224A2F000, v47, v48, "Cannot send messages until we have a valid local device ID", v49, 2u);
        MEMORY[0x22AA5EED0](v49, -1, -1);
      }

      v51 = v64;
      v50 = v65;
      __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
      sub_224D75740(v63, v51, v50);
      swift_allocError();
      *v52 = 3;
      swift_willThrow();
      sub_224A78024(v66, v41);
    }

    else
    {
      (*(v44 + 16))(v56, v25, v43);
      sub_224A3796C(v58, v55, &unk_27D6F5630, &unk_224DB34C0);
      sub_224DA98F8();
      sub_224DAB068();
    }
  }
}

void sub_224D749E4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a1;
  v8 = sub_224DA9908();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v13 = sub_224DAB258();
  __swift_project_value_buffer(v13, qword_281365120);
  (*(v9 + 16))(v12, a3, v8);

  v14 = sub_224DAB228();
  v15 = sub_224DAF2A8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v29 = v4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v30 = a4;
    v28 = v18;
    v32 = v18;
    *v17 = 136446466;
    HIDWORD(v27) = v15;
    v19 = v31;
    *(v17 + 4) = sub_224A33F74(v31, a2, &v32);
    *(v17 + 12) = 2082;
    sub_224A4C248(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v20 = sub_224DAFD28();
    v21 = a2;
    v22 = a3;
    v24 = v23;
    (*(v9 + 8))(v12, v8);
    v25 = sub_224A33F74(v20, v24, &v32);
    a3 = v22;
    a2 = v21;

    *(v17 + 14) = v25;
    _os_log_impl(&dword_224A2F000, v14, BYTE4(v27), "requesting activity launch for activity %{public}s, with relationship: %{public}s", v17, 0x16u);
    v26 = v28;
    swift_arrayDestroy();
    a4 = v30;
    MEMORY[0x22AA5EED0](v26, -1, -1);
    MEMORY[0x22AA5EED0](v17, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
    v19 = v31;
  }

  sub_224D73910(v19, a2, a3, a4);
}

uint64_t sub_224D74D10(uint64_t a1)
{
  v65 = sub_224DA9C38();
  v64 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v2);
  v63 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DA9C18();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v62 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v59 - v9;
  v11 = sub_224DA9688();
  v61 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48D8, &unk_224DB8240);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v59 - v17;
  v19 = sub_224DA9AE8();
  v67 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v66 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6E08, &qword_224DC27F0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v59 - v24;
  v26 = type metadata accessor for RemoteActivityLaunchMessage(0);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v59 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224B44674(a1, &v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48F0, &unk_224DB8630);
  v31 = swift_dynamicCast();
  v32 = *(v27 + 56);
  if (!v31)
  {
    v32(v25, 1, 1, v26);
    return sub_224A3311C(v25, &qword_27D6F6E08, &qword_224DC27F0);
  }

  v32(v25, 0, 1, v26);
  sub_224D75630(v25, v30);
  v33 = [objc_opt_self() serviceWithDefaultShellEndpoint];
  if (!v33)
  {
    goto LABEL_7;
  }

  v34 = v33;
  sub_224DA9BD8();
  sub_224DA9BC8();
  sub_224DA9BB8();

  v36 = v67;
  if ((*(v67 + 48))(v18, 1, v19) == 1)
  {

    sub_224A3311C(v18, &qword_27D6F48D8, &unk_224DB8240);
LABEL_7:
    if (qword_281351458 != -1)
    {
      swift_once();
    }

    v37 = sub_224DAB258();
    __swift_project_value_buffer(v37, qword_281364DA8);
    v38 = sub_224DAB228();
    v39 = sub_224DAF2A8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_224A2F000, v38, v39, "Failed remotely launch app due to open app service unavailability or activity ID being invalid.", v40, 2u);
      MEMORY[0x22AA5EED0](v40, -1, -1);
    }

    return sub_224D75694(v30, type metadata accessor for RemoteActivityLaunchMessage);
  }

  v60 = v34;
  (*(v36 + 32))(v66, v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB30F0;
  *(inited + 32) = sub_224DAEE18();
  v42 = MEMORY[0x277D839B0];
  *(inited + 40) = v43;
  *(inited + 72) = v42;
  *(inited + 48) = 1;
  *(inited + 80) = sub_224DAEE18();
  *(inited + 88) = v44;
  *(inited + 120) = v42;
  *(inited + 96) = 1;
  v45 = sub_224DA0AC0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58E0, &unk_224DB6450);
  swift_arrayDestroy();
  sub_224A3796C(&v30[*(v26 + 20)], v10, &unk_27D6F4680, &unk_224DB4610);
  v46 = v61;
  if ((*(v61 + 48))(v10, 1, v11) == 1)
  {
    sub_224A3311C(v10, &unk_27D6F4680, &unk_224DB4610);
  }

  else
  {
    (*(v46 + 32))(v14, v10, v11);
    v47 = sub_224DAEE18();
    v49 = v48;
    v50 = sub_224DA95F8();
    v71 = sub_224D756F4();
    *&v70 = v50;
    sub_224A739A4(&v70, v69);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68 = v45;
    sub_224B20218(v69, v47, v49, isUniquelyReferenced_nonNull_native);

    (*(v46 + 8))(v14, v11);
    v45 = v68;
  }

  v52 = v60;
  v53 = v62;
  v54 = v66;
  sub_224DA9A98();
  v55 = v63;
  sub_224DA9C08();
  sub_224D75694(v53, MEMORY[0x277CB9790]);
  sub_224DA9C28();
  (*(v64 + 8))(v55, v65);
  sub_224D9F274(v45);

  v56 = sub_224DAECC8();

  v57 = [objc_opt_self() optionsWithDictionary_];

  v58 = sub_224DAEDE8();

  [v52 openApplication:v58 withOptions:v57 completion:0];

  (*(v67 + 8))(v54, v19);
  return sub_224D75694(v30, type metadata accessor for RemoteActivityLaunchMessage);
}

uint64_t sub_224D75630(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteActivityLaunchMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224D75694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_224D756F4()
{
  result = qword_27D6F6E10;
  if (!qword_27D6F6E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D6F6E10);
  }

  return result;
}

uint64_t sub_224D75740(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_224D75864()
{
  sub_224DAF938();
  MEMORY[0x22AA5D210](0x203A6369706F74, 0xE700000000000000);
  v1 = type metadata accessor for IncomingMessage(0);
  sub_224DAE0D8();
  sub_224DAFA48();
  MEMORY[0x22AA5D210](0x656E6E616863203BLL, 0xED0000203A44496CLL);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4D30, &qword_224DBA9F0);
  v2 = sub_224DAEE28();
  MEMORY[0x22AA5D210](v2);

  MEMORY[0x22AA5D210](0x3A6E656B6F74203BLL, 0xE900000000000020);
  sub_224AECAB0(*v0, *(v0 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6E68, &qword_224DC28B0);
  v3 = sub_224DAEE28();
  MEMORY[0x22AA5D210](v3);

  MEMORY[0x22AA5D210](0xD000000000000012, 0x8000000224DD0270);
  if (*(v0 + *(v1 + 32)))
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 32)))
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x22AA5D210](v4, v5);

  return 0;
}

void sub_224D75A88(uint64_t a1)
{
  sub_224C1702C(319, &qword_27D6F6E80, MEMORY[0x277CC9318]);
  if (v1 <= 0x3F)
  {
    sub_224DAE0D8();
    if (v2 <= 0x3F)
    {
      sub_224C1702C(319, &qword_27D6F5C80, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_224DAE178();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_224D75BAC(uint64_t a1)
{
  sub_224DAE0D8();
  if (v1 <= 0x3F)
  {
    sub_224BDD38C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_224D75C9C(uint64_t a1)
{
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v3 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v4);
  v48 = v38 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v7);
  v46 = v38 - v8;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v38[1] = v1;
  v55 = MEMORY[0x277D84F90];
  sub_224A3DFD8(0, v9, 0);
  v10 = v55;
  v11 = a1 + 64;
  result = sub_224DAF798();
  v13 = result;
  v14 = 0;
  v42 = (v3 + 8);
  v43 = v6 + 16;
  v44 = a1 + 64;
  v45 = v6;
  v40 = v9;
  v41 = v6 + 8;
  v39 = a1 + 72;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    if ((*(v11 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v50 = v14;
    v51 = *(a1 + 36);
    v52 = v13 >> 6;
    v17 = *(a1 + 48);
    v54 = v10;
    v19 = v45;
    v18 = v46;
    v20 = v47;
    (*(v45 + 16))(v46, v17 + *(v45 + 72) * v13, v47);
    v21 = a1;
    v22 = v48;
    sub_224DAA238();
    v23 = v49;
    v24 = sub_224DA9FE8();
    v53 = v25;
    (*v42)(v22, v23);
    v26 = *(v19 + 8);
    v10 = v54;
    result = v26(v18, v20);
    v55 = v10;
    v28 = *(v10 + 16);
    v27 = *(v10 + 24);
    if (v28 >= v27 >> 1)
    {
      result = sub_224A3DFD8((v27 > 1), v28 + 1, 1);
      v10 = v55;
    }

    *(v10 + 16) = v28 + 1;
    v29 = v10 + 16 * v28;
    v30 = v53;
    *(v29 + 32) = v24;
    *(v29 + 40) = v30;
    v15 = 1 << *(v21 + 32);
    v11 = v44;
    if (v13 >= v15)
    {
      goto LABEL_22;
    }

    v31 = *(v44 + 8 * v52);
    if ((v31 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    a1 = v21;
    if (v51 != *(v21 + 36))
    {
      goto LABEL_24;
    }

    v32 = v31 & (-2 << (v13 & 0x3F));
    if (v32)
    {
      v15 = __clz(__rbit64(v32)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v16 = v40;
    }

    else
    {
      v33 = v52 << 6;
      v34 = v52 + 1;
      v16 = v40;
      v35 = (v39 + 8 * v52);
      while (v34 < (v15 + 63) >> 6)
      {
        v37 = *v35++;
        v36 = v37;
        v33 += 64;
        ++v34;
        if (v37)
        {
          result = sub_224A3E204(v13, v51, 0);
          v15 = __clz(__rbit64(v36)) + v33;
          goto LABEL_4;
        }
      }

      result = sub_224A3E204(v13, v51, 0);
    }

LABEL_4:
    v14 = v50 + 1;
    v13 = v15;
    if (v50 + 1 == v16)
    {
      return v10;
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

uint64_t sub_224D7607C()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for UnfairLock();

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
  type metadata accessor for ReadOnlyHost(255, *(v2 + 80), *(v2 + 96), v4);
  sub_224C9A3FC();
  sub_224DAED48();
  v5 = sub_224DAF728();
  sub_224A49C20(sub_224D776A4, v1, v3, v5, &off_28382D228);

  return v7;
}

void sub_224D76188(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v52 = sub_224DAA5C8();
  v6 = *(v52 - 8);
  v8 = MEMORY[0x28223BE20](v52, v7);
  MEMORY[0x28223BE20](v8, v9);
  v12 = &v44[-v11];
  if (a1[3])
  {
    v50 = v10;
    v51 = a2;
    sub_224DAB9A8();
    v13 = v5[10];
    v14 = v5[11];
    v49 = *(v14 + 8);
    v49(v13, v14);
    v15 = sub_224DAB998();
    if (!v2)
    {
      v32 = *(v6 + 8);
      v33 = v15;
      v48 = v15;
      v32(v12, v52);

      v54 = v33;
      v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
      v52 = 0;
      v35 = v34;
      v36 = v5[12];
      OnlyHost = type metadata accessor for ReadOnlyHost(255, v13, v36, v37);
      swift_getTupleTypeMetadata2();
      v39 = sub_224DAF048();
      v40 = sub_224C9A3FC();
      v41 = sub_224D776C0(v39, v35, OnlyHost, v40);

      v53 = v41;
      MEMORY[0x28223BE20](v42, v43);
      *&v44[-32] = v13;
      *&v44[-24] = v14;
      *&v44[-16] = v36;
      sub_224DAED48();
      sub_224DAED48();
      swift_getWitnessTable();
      sub_224DAEF78();

      *v51 = v55;
      return;
    }

    v48 = *(v6 + 8);
    v48(v12, v52);

    if (qword_281351438 != -1)
    {
      swift_once();
    }

    v16 = sub_224DAB258();
    __swift_project_value_buffer(v16, qword_281364D78);
    v17 = v2;
    v18 = sub_224DAB228();
    v19 = sub_224DAF288();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = v14;
      v21 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v55 = v47;
      *v21 = 136446466;
      v22 = v50;
      v45 = v19;
      v49(v13, v20);
      sub_224D77628();
      v23 = v52;
      v24 = sub_224DAFD28();
      v26 = v25;
      v48(v22, v23);
      v27 = sub_224A33F74(v24, v26, &v55);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2114;
      v28 = v2;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v29;
      v30 = v46;
      *v46 = v29;
      _os_log_impl(&dword_224A2F000, v18, v45, "Error fetching %{public}s snapshot configurations: %{public}@", v21, 0x16u);
      sub_224A3311C(v30, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v30, -1, -1);
      v31 = v47;
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x22AA5EED0](v31, -1, -1);
      MEMORY[0x22AA5EED0](v21, -1, -1);
    }

    else
    {
    }

    a2 = v51;
  }

  *a2 = 0;
}

uint64_t sub_224D766A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a1;
  v29 = a5;
  v7 = sub_224DAA428();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F30D0, &unk_224DB2AC0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](TupleTypeMetadata2, v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v20 = &v29 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v29 - v22;
  v24 = *(v12 + 16);
  v24(&v29 - v22, a2, TupleTypeMetadata2);

  type metadata accessor for ReadOnlyHost(0, a3, v29, v25);
  v24(v20, a2, TupleTypeMetadata2);

  v24(v16, a2, TupleTypeMetadata2);
  v34 = *&v16[*(TupleTypeMetadata2 + 48)];
  v26 = v30;
  (*(v31 + 104))(v30, *MEMORY[0x277CFA040], v32);
  v27 = sub_224D431CC(v20, &v34, v26);
  (*(*(v10 - 8) + 8))(v16, v10);
  v34 = v27;
  sub_224C9A3FC();
  sub_224DAED48();
  return sub_224DAED68();
}

void sub_224D7697C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  os_unfair_lock_lock(*(v4 + 16));
  sub_224D769FC(v2, a2);
  v5 = *(v4 + 16);

  os_unfair_lock_unlock(v5);
}

void sub_224D769FC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    MEMORY[0x28223BE20](a1, a2);
    sub_224DABBC8();
    if (v2)
    {
    }
  }
}

double sub_224D76AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_224DAA5C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DABAC8();
  (*(a5 + 8))(a4, a5);
  sub_224DABA68();
  (*(v8 + 8))(v11, v7);

  return result;
}

uint64_t sub_224D76C08()
{
  v1 = v0[2];
  os_unfair_lock_lock(*(v1 + 16));
  sub_224D76C74(v0, &v3);
  os_unfair_lock_unlock(*(v1 + 16));
  return v3;
}

void sub_224D76C74(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v6 = sub_224DAA5C8();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  MEMORY[0x28223BE20](v9, v10);
  v13 = &v33 - v12;
  v14 = a1[3];
  if (v14)
  {
    v39 = v11;
    v40 = a2;
    sub_224DAB9A8();
    v16 = *(v5 + 80);
    v15 = *(v5 + 88);
    v38 = *(v15 + 8);
    v38(v16, v15);
    v17 = sub_224DAB988();
    if (v2)
    {
      v37 = *(v7 + 8);
      v37(v13, v6);

      if (qword_281351438 != -1)
      {
        swift_once();
      }

      v18 = sub_224DAB258();
      __swift_project_value_buffer(v18, qword_281364D78);
      v19 = v2;
      v20 = sub_224DAB228();
      v21 = sub_224DAF288();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v41 = v36;
        *v22 = 136446466;
        v34 = v20;
        v23 = v39;
        HIDWORD(v33) = v21;
        v38(v16, v15);
        sub_224D77628();
        v24 = sub_224DAFD28();
        v26 = v25;
        v37(v23, v6);
        v27 = sub_224A33F74(v24, v26, &v41);

        *(v22 + 4) = v27;
        *(v22 + 12) = 2114;
        v28 = v2;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v22 + 14) = v29;
        v30 = v34;
        v31 = v35;
        *v35 = v29;
        _os_log_impl(&dword_224A2F000, v30, BYTE4(v33), "Error fetching %{public}s snapshot configuration dates: %{public}@", v22, 0x16u);
        sub_224A3311C(v31, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v31, -1, -1);
        v32 = v36;
        __swift_destroy_boxed_opaque_existential_1(v36);
        MEMORY[0x22AA5EED0](v32, -1, -1);
        MEMORY[0x22AA5EED0](v22, -1, -1);
      }

      else
      {
      }

      v14 = 0;
    }

    else
    {
      v14 = v17;
      (*(v7 + 8))(v13, v6);
    }

    a2 = v40;
  }

  *a2 = v14;
}

uint64_t sub_224D7702C()
{

  return v0;
}

uint64_t sub_224D770B8(double a1)
{
  v1 = sub_224DA9878();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DA97A8();
  v6 = sub_224D77198(v5);
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_224D77198(uint64_t a1)
{
  v2 = sub_224D76C08();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v9[2] = a1;
  v6 = sub_224BA066C(sub_224D77424, v9, v4, v5);

  v7 = sub_224D75C9C(v6);

  return v7;
}

uint64_t sub_224D77250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B90, &qword_224DB9F00);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  v11 = *(v6 + 56);
  v12 = sub_224DA9878();
  (*(*(v12 - 8) + 16))(&v9[v11], a2, v12);
  v13 = sub_224DA9788();
  sub_224A3311C(v9, &qword_27D6F4B90, &qword_224DB9F00);
  return v13 & 1;
}

uint64_t sub_224D773E8(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_224D77444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_224DAED88();

  return sub_224D774A0(a1, v6, a2, a3);
}

unint64_t sub_224D774A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE20](a1, a2);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_224DAEDD8();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_224D77628()
{
  result = qword_2813517E0;
  if (!qword_2813517E0)
  {
    sub_224DAA5C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813517E0);
  }

  return result;
}

unint64_t sub_224D776C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_224DAF088())
  {
    sub_224DAFBC8();
    v14 = sub_224DAFBB8();
  }

  else
  {
    v14 = MEMORY[0x277D84F98];
  }

  result = sub_224DAF088();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_224DAF068())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_224DAF948();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_224D77444(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

void sub_224D779CC(char *a1)
{
  v2 = v1;
  v3 = v1[8];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v2[8] = v5;
    swift_beginAccess();
    v7 = a1;
    MEMORY[0x22AA5D350]();
    if (*((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v2[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_3;
    }
  }

  sub_224DAF038();
LABEL_3:
  sub_224DAF078();
  swift_endAccess();
  if (!v2[10] && v2[8] == v2[11])
  {
    sub_224D77D7C();
  }
}

uint64_t sub_224D77AA8(void *a1)
{
  v2 = v1;
  if (!v1[10])
  {
    goto LABEL_7;
  }

  v4 = qword_2813516B8;

  if (v4 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v5 = sub_224DAB258();
    __swift_project_value_buffer(v5, qword_281365108);

    v6 = sub_224DAB228();
    v7 = sub_224DAF278();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v25[0] = v9;
      *v8 = 134349314;
      *(v8 + 4) = v2[8];

      *(v8 + 12) = 2082;
      swift_beginAccess();
      v10 = type metadata accessor for ExtensionTask(0);

      v12 = MEMORY[0x22AA5D380](v11, v10);
      v14 = v13;

      v15 = sub_224A33F74(v12, v14, v25);

      *(v8 + 14) = v15;
      _os_log_impl(&dword_224A2F000, v6, v7, "Stop watchdog timer, task count %{public}ld - %{public}s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x22AA5EED0](v9, -1, -1);
      MEMORY[0x22AA5EED0](v8, -1, -1);
    }

    else
    {
    }

    sub_224DAC5F8();

    v2[10] = 0;

LABEL_7:
    v16 = v2[8];
    v17 = __OFSUB__(v16, 1);
    v18 = v16 - 1;
    if (v17)
    {
      break;
    }

    v2[8] = v18;
    swift_beginAccess();
    v19 = a1;
    a1 = sub_224D78AF4(v2 + 9, v19);

    v20 = v2[9];
    if (v20 >> 62)
    {
      goto LABEL_15;
    }

    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21 < a1)
    {
      goto LABEL_16;
    }

LABEL_10:
    sub_224D78D18(a1, v21);
    swift_endAccess();
    v22 = v2[8];
    if (v22 < 0)
    {
      goto LABEL_17;
    }

    v23 = v2[9];
    if (v23 >> 62)
    {
      goto LABEL_18;
    }

    result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result == v22)
    {
      return result;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

  __break(1u);
LABEL_15:
  v21 = sub_224DAF838();
  if (v21 >= a1)
  {
    goto LABEL_10;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_224DAF838();
  if (result != v2[8])
  {
    goto LABEL_19;
  }

  return result;
}

void sub_224D77D7C()
{
  v1 = v0;
  v2 = sub_224DAC378();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - v9;
  os_unfair_lock_assert_owner(*(*(v0 + 16) + 16));
  if (*(v0 + 80))
  {
    __break(1u);
  }

  else
  {
    if (qword_2813516B8 != -1)
    {
      swift_once();
    }

    v11 = sub_224DAB258();
    __swift_project_value_buffer(v11, qword_281365108);

    v12 = sub_224DAB228();
    v13 = sub_224DAF278();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v27 = v2;
      v15 = v14;
      v16 = swift_slowAlloc();
      v26 = v3;
      v17 = v16;
      v28 = v16;
      *v15 = 134349314;
      *(v15 + 4) = *(v1 + 64);

      *(v15 + 12) = 2082;
      swift_beginAccess();
      v18 = type metadata accessor for ExtensionTask(0);

      v20 = MEMORY[0x22AA5D380](v19, v18);
      v22 = v21;

      v23 = sub_224A33F74(v20, v22, &v28);

      *(v15 + 14) = v23;
      _os_log_impl(&dword_224A2F000, v12, v13, "Start watchdog timer, task count %{public}ld - %{public}s", v15, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v24 = v17;
      v3 = v26;
      MEMORY[0x22AA5EED0](v24, -1, -1);
      v25 = v15;
      v2 = v27;
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    else
    {
    }

    sub_224DAC308();
    sub_224DAC648();
    (*(v3 + 16))(v7, v10, v2);
    sub_224DAC618();
    *(v1 + 80) = sub_224DAC608();

    swift_allocObject();
    swift_weakInit();

    sub_224DAC638();

    (*(v3 + 8))(v10, v2);
  }
}

double sub_224D780D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 16);
    os_unfair_lock_lock(*(v5 + 16));
    sub_224D7816C(v4);
    os_unfair_lock_unlock(*(v5 + 16));
  }

  return result;
}

uint64_t sub_224D7816C(uint64_t a1)
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = sub_224DAF128();
  v55 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v54 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  swift_beginAccess();
  v7 = *(a1 + 72);
  if (v7 >> 62)
  {
    v44 = *(a1 + 72);
    v8 = sub_224DAF838();
    v7 = v44;
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  v56 = v4;
  v57 = a1;
  if (v8)
  {
    v59 = MEMORY[0x277D84F90];
    v10 = v7;

    sub_224A3DFD8(0, v8 & ~(v8 >> 63), 0);
    if (v8 < 0)
    {
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_16;
    }

    v53[1] = v1;
    v11 = 0;
    v9 = v59;
    v12 = v10;
    v58 = v10 & 0xC000000000000001;
    v13 = v10;
    v14 = v8;
    do
    {
      if (v58)
      {
        v15 = MEMORY[0x22AA5DCC0](v11, v12);
      }

      else
      {
        v15 = *(v12 + 8 * v11 + 32);
      }

      v16 = v15;
      v17 = [v15 description];
      v18 = sub_224DAEE18();
      v20 = v19;

      v59 = v9;
      v22 = *(v9 + 16);
      v21 = *(v9 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_224A3DFD8((v21 > 1), v22 + 1, 1);
        v9 = v59;
      }

      ++v11;
      *(v9 + 16) = v22 + 1;
      v23 = v9 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v12 = v13;
    }

    while (v14 != v11);
  }

  v59 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4710, &unk_224DB65E0);
  sub_224A6B84C();
  v24 = sub_224DAEDA8();
  v26 = v25;

  MEMORY[0x22AA5D210](v24, v26);

  v28 = v61[0];
  v27 = v61[1];
  v61[0] = 0;
  v61[1] = 0xE000000000000000;
  sub_224DAF938();

  v61[0] = 0x3A746E756F43;
  v61[1] = 0xE600000000000000;
  v2 = v57;
  v59 = *(v57 + 64);
  v29 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v29);

  MEMORY[0x22AA5D210](0x7344496B7361542CLL, 0xE90000000000003ALL);
  MEMORY[0x22AA5D210](v28, v27);
  v30 = v61[0];
  v9 = v61[1];
  if (*(v2 + 96) & 1) != 0 || (BSIsBeingDebugged())
  {
    goto LABEL_21;
  }

  sub_224DABC18();
  v31 = v54;
  sub_224DABC08();
  v58 = v30;
  sub_224DABBF8();
  (*(v55 + 8))(v31, v56);
  if (qword_2813516B8 != -1)
  {
    goto LABEL_28;
  }

LABEL_16:
  v32 = sub_224DAB258();
  __swift_project_value_buffer(v32, qword_281365108);

  v33 = sub_224DAB228();
  v34 = sub_224DAF288();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v61[0] = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_224A33F74(v58, v9, v61);
    _os_log_impl(&dword_224A2F000, v33, v34, "Watchdog detected stuck task service queue: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x22AA5EED0](v36, -1, -1);
    MEMORY[0x22AA5EED0](v35, -1, -1);
  }

  v37 = sub_224DAB228();
  v38 = sub_224DAF298();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_224A2F000, v37, v38, "Watchdog detected stuck task service queue, recent tasks not completed", v39, 2u);
    MEMORY[0x22AA5EED0](v39, -1, -1);
  }

  v30 = v58;
LABEL_21:
  v40 = *(v2 + 104);
  if (v40)
  {
    v41 = *(v2 + 112);

    v40(v42);
    sub_224A3D418(v40, v41);
  }

  if ((*(v2 + 96) & 1) == 0 && (BSIsBeingDebugged() & 1) == 0)
  {
    sub_224DAD198();
    sub_224DAD188();

    LODWORD(v61[0]) = 20;
    *(v61 + 4) = 1uLL;
    getpid();
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_224DAF938();

    v59 = 0xD000000000000026;
    v60 = 0x8000000224DD0390;
    MEMORY[0x22AA5D210](v30, v9);
    v45 = sub_224DAEDE8();

    v46 = WriteCrashReportWithStackshot();

    if (v46)
    {
      if (qword_2813516B8 != -1)
      {
        swift_once();
      }

      v47 = sub_224DAB258();
      __swift_project_value_buffer(v47, qword_281365108);
      v48 = sub_224DAB228();
      v49 = sub_224DAF2A8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = "WATCHDOG EXPIRED. Stackshot acquired";
LABEL_38:
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_224A2F000, v48, v49, v50, v52, 2u);
        MEMORY[0x22AA5EED0](v52, -1, -1);
      }
    }

    else
    {
      if (qword_2813516B8 != -1)
      {
        swift_once();
      }

      v51 = sub_224DAB258();
      __swift_project_value_buffer(v51, qword_281365108);
      v48 = sub_224DAB228();
      v49 = sub_224DAF288();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = "WATCHDOG EXPIRED. Unable to get stackshot.";
        goto LABEL_38;
      }
    }

    exit(0);
  }
}

uint64_t sub_224D78914()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);

  sub_224A3D418(v0[13], v0[14]);

  return swift_deallocClassInstance();
}

void sub_224D78990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  v8 = *(v5 + 16);
  os_unfair_lock_lock(*(v8 + 16));
  a5(a2);
  v9 = *(v8 + 16);

  os_unfair_lock_unlock(v9);
}

unint64_t sub_224D789F0(unint64_t a1, uint64_t a2)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_16:
    v11 = a1;
    v12 = a2;
    v13 = sub_224DAF838();
    a2 = v12;
    v3 = v13;
    a1 = v11;
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = a1;
      v8 = a2;
      v9 = MEMORY[0x22AA5DCC0](v4, a1);
      swift_unknownObjectRelease();
      a1 = v7;
      a2 = v8;
      if (v9 == v8)
      {
        return v4;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(a1 + 8 * v4 + 32) == a2)
      {
        return v4;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_15;
    }
  }

  return 0;
}

uint64_t sub_224D78AF4(unint64_t *a1, void *a2)
{
  v7 = *a1;
  v8 = sub_224D789F0(*a1, a2);
  v10 = v8;
  if (v2)
  {
    return v10;
  }

  if (v9)
  {
    if (v7 >> 62)
    {
      return sub_224DAF838();
    }

    return *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  while (1)
  {
    if (v7 >> 62)
    {
      if (v11 == sub_224DAF838())
      {
        return v10;
      }
    }

    else if (v11 == *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v10;
    }

    if ((v7 & 0xC000000000000001) == 0)
    {
      break;
    }

    v21 = MEMORY[0x22AA5DCC0](v11, v7);
    swift_unknownObjectRelease();
    if (v21 != a2)
    {
      if (v10 != v11)
      {
        v3 = MEMORY[0x22AA5DCC0](v10, v7);
        v17 = MEMORY[0x22AA5DCC0](v11, v7);
        goto LABEL_21;
      }

LABEL_9:
      v14 = __OFADD__(v10++, 1);
      if (v14)
      {
        goto LABEL_42;
      }
    }

LABEL_10:
    v14 = __OFADD__(v11++, 1);
    if (v14)
    {
      goto LABEL_41;
    }
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11 >= v15)
    {
      goto LABEL_40;
    }

    v16 = *(v7 + 32 + 8 * v11);
    if (v16 != a2)
    {
      if (v10 != v11)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        if (v10 >= v15)
        {
          goto LABEL_44;
        }

        v3 = *(v7 + 32 + 8 * v10);
        v17 = v16;
LABEL_21:
        v18 = v17;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v7 & 0x8000000000000000) != 0 || (v7 & 0x4000000000000000) != 0)
        {
          v7 = sub_224B44A20(v7);
          v19 = (v7 >> 62) & 1;
        }

        else
        {
          LODWORD(v19) = 0;
        }

        v4 = v7 & 0xFFFFFFFFFFFFFF8;
        v20 = *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20);
        *((v7 & 0xFFFFFFFFFFFFFF8) + 8 * v10 + 0x20) = v18;

        if ((v7 & 0x8000000000000000) != 0 || v19)
        {
          v7 = sub_224B44A20(v7);
          v4 = v7 & 0xFFFFFFFFFFFFFF8;
          if ((v11 & 0x8000000000000000) != 0)
          {
LABEL_37:
            __break(1u);
            return v10;
          }
        }

        else if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        if (v11 >= *(v4 + 16))
        {
          goto LABEL_45;
        }

LABEL_8:
        v12 = v4 + 8 * v11;
        v13 = *(v12 + 32);
        *(v12 + 32) = v3;

        *a1 = v7;
      }

      goto LABEL_9;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return sub_224DAF838();
}

uint64_t sub_224D78D18(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_224DAF838();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_224DAF838();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_224A57BD4(result, 1);

  return sub_224B43E78(v5, v3, 0);
}

unint64_t sub_224D78DF0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_224AD94BC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_224B444FC(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_224D78EC4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_224D78F30(void *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x22AA5D350]();
  if (*((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_224DAF038();
  }

  sub_224DAF078();
  return swift_endAccess();
}

uint64_t sub_224D78FD8(void *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x22AA5D350]();
  if (*((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_224DAF038();
  }

  sub_224DAF078();
  return swift_endAccess();
}

uint64_t sub_224D79080(void *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x22AA5D350]();
  if (*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_224DAF038();
  }

  sub_224DAF078();
  return swift_endAccess();
}

uint64_t sub_224D79164(uint64_t a1)
{
  v21 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_224DAF838();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v26 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    result = sub_224DAF7D8();
    v23 = result;
    v24 = v4;
    v25 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v26 = MEMORY[0x277D84F90];
  sub_224DAF9E8();
  result = sub_224DAF798();
  v5 = *(a1 + 36);
  v23 = result;
  v24 = v5;
  v25 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v23;
    v9 = v24;
    v11 = v25;
    sub_224A94D00(v23, v24, v25, a1);
    sub_224DAF9B8();
    sub_224DAF9F8();
    sub_224DAFA08();
    result = sub_224DAF9C8();
    if (v21)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_224DAF7F8())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6EB8, &unk_224DC3210);
      v7 = sub_224DAF1E8();
      sub_224DAF8A8();
      result = v7(v22, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_224A3E204(v23, v24, v25);
        return v26;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_32;
      }

      v13 = v10 >> 6;
      v14 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v14 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v15 = v14 & (-2 << (v10 & 0x3F));
      if (v15)
      {
        v12 = __clz(__rbit64(v15)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v13 << 6;
        v17 = v13 + 1;
        v18 = (a1 + 64 + 8 * v13);
        while (v17 < (v12 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_224A3E204(v10, v9, 0);
            v12 = __clz(__rbit64(v19)) + v16;
            goto LABEL_27;
          }
        }

        result = sub_224A3E204(v10, v9, 0);
      }

LABEL_27:
      v23 = v12;
      v24 = v9;
      v25 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void sub_224D79460(uint64_t a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  MEMORY[0x28223BE20](v45, v2);
  v44 = &v39 - v3;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v43 = v8;
  v40 = a1 + 64;
  v41 = a1;
  while (v7)
  {
LABEL_10:
    v12 = __clz(__rbit64(v7)) | (v9 << 6);
    v13 = *(a1 + 48);
    v14 = sub_224DABE18();
    v15 = *(v14 - 8);
    v16 = v13 + *(v15 + 72) * v12;
    v17 = v44;
    (*(v15 + 16))(v44, v16, v14);
    v18 = *(*(a1 + 56) + 8 * v12);
    *(v17 + *(v45 + 48)) = v18;

    v19 = sub_224D812FC(v17, v18);
    sub_224A3311C(v17, &qword_27D6F6D38, &unk_224DC2010);
    v20 = v19 >> 62;
    if (v19 >> 62)
    {
      v21 = sub_224DAF838();
    }

    else
    {
      v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v10 >> 62;
    if (v10 >> 62)
    {
      v23 = sub_224DAF838();
    }

    else
    {
      v23 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = v21;
    v24 = __OFADD__(v23, v21);
    v25 = v23 + v21;
    if (v24)
    {
      goto LABEL_40;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v22)
      {
LABEL_21:
        sub_224DAF838();
      }

LABEL_22:
      v46 = sub_224DAF968();
      v26 = v46 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_23;
    }

    if (v22)
    {
      goto LABEL_21;
    }

    v26 = v10 & 0xFFFFFFFFFFFFFF8;
    if (v25 > *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_22;
    }

    v46 = v10;
LABEL_23:
    v27 = *(v26 + 16);
    v28 = *(v26 + 24);
    if (v20)
    {
      v30 = v26;
      v31 = sub_224DAF838();
      v26 = v30;
      v29 = v31;
    }

    else
    {
      v29 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 &= v7 - 1;
    if (v29)
    {
      if (((v28 >> 1) - v27) < v48)
      {
        goto LABEL_42;
      }

      v32 = v26 + 8 * v27 + 32;
      v42 = v26;
      if (v20)
      {
        if (v29 < 1)
        {
          goto LABEL_44;
        }

        sub_224A33088(&qword_27D6F6EB0, &qword_27D6F6EA8, &qword_224DC2F78, MEMORY[0x277D83988]);
        for (i = 0; i != v29; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6EA8, &qword_224DC2F78);
          v34 = sub_224A6996C(v47, i, v19);
          v36 = *v35;
          (v34)(v47, 0);
          *(v32 + 8 * i) = v36;
        }
      }

      else
      {
        sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
        swift_arrayInitWithCopy();
      }

      v4 = v40;
      a1 = v41;
      v8 = v43;
      v10 = v46;
      if (v48 >= 1)
      {
        v37 = *(v42 + 16);
        v24 = __OFADD__(v37, v48);
        v38 = v37 + v48;
        if (v24)
        {
          goto LABEL_43;
        }

        *(v42 + 16) = v38;
      }
    }

    else
    {

      v8 = v43;
      v10 = v46;
      if (v48 > 0)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v11);
    ++v9;
    if (v7)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

void sub_224D79880()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5C98, &unk_224DBD6C0);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v48 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F37C8, &unk_224DB4020);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v45 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v38 - v10;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C50, &unk_224DBA3C0);
  v12 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v13);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C58, &qword_224DC1AF0);
  v43 = *(v16 - 8);
  v44 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v38 - v18;
  v20 = __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_processMonitor), *(v0 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_processMonitor + 24));
  v21 = *v20;
  v22 = OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock;
  os_unfair_lock_assert_not_owner(*(*(*v20 + OBJC_IVAR____TtC10ChronoCore14ProcessMonitor__lock) + 16));
  v23 = *(v21 + v22);
  os_unfair_lock_lock(*(v23 + 16));
  sub_224B458F8(v21, v1, &off_283837050);
  os_unfair_lock_unlock(*(v23 + 16));
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v54 = sub_224DAC688();
  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v55 = sub_224DAC6A8();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5500, &unk_224DB4040);
  v53 = MEMORY[0x277CBCD90];
  v42 = sub_224A33088(&qword_281351048, &unk_27D6F5500, &unk_224DB4040, MEMORY[0x277CBCD90]);
  sub_224DAB428();

  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v24 = sub_224DAF3D8();
  v54 = v24;
  v25 = sub_224DAF358();
  v26 = *(v25 - 8);
  v39 = *(v26 + 56);
  v40 = v26 + 56;
  v38 = v25;
  v39(v11, 1, 1, v25);
  sub_224A33088(&qword_281351310, &qword_27D6F4C50, &unk_224DBA3C0, MEMORY[0x277CBCD48]);
  v52 = sub_224B67CF4();
  v27 = v51;
  sub_224DAB448();
  sub_224A3311C(v11, &qword_27D6F5090, &qword_224DB5C30);

  (*(v12 + 8))(v15, v27);
  swift_allocObject();
  swift_weakInit();
  v51 = MEMORY[0x277CBCD60];
  sub_224A33088(&qword_2813511C8, &qword_27D6F4C58, &qword_224DC1AF0, MEMORY[0x277CBCD60]);
  v28 = v44;
  sub_224DAB488();

  (*(v43 + 8))(v19, v28);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(v1 + 19, v1[22]);
  v54 = sub_224DAC698();
  v29 = sub_224DAF3D8();
  v55 = v29;
  v30 = v39;
  v39(v11, 1, 1, v25);
  v31 = v45;
  sub_224DAB448();
  sub_224A3311C(v11, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351230, &qword_27D6F37C8, &unk_224DB4020, v51);
  v32 = v47;
  sub_224DAB488();

  (*(v46 + 8))(v31, v32);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v54 = sub_224DAC0D8();
  v33 = sub_224DAF3D8();
  v55 = v33;
  v30(v11, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F54E0, &qword_224DBBBB0);
  sub_224A33088(&unk_2813510F8, &unk_27D6F54E0, &qword_224DBBBB0, v53);
  v34 = v48;
  sub_224DAB448();
  sub_224A3311C(v11, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351290, &qword_27D6F5C98, &unk_224DBD6C0, v51);
  v35 = v50;
  sub_224DAB488();

  (*(v49 + 8))(v34, v35);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  v36 = v1[12];
  v37 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v36);
  v54 = (*(*(v37 + 8) + 32))(768, v36);
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, v53);
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224D7ED8C();
}

uint64_t sub_224D7A22C()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_224DAC0E8();
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_224D7A294()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = sub_224DAC058();
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t sub_224D7A2FC(__n128 a1)
{
  if (*(v1 + 48))
  {
    v2 = *(v1 + 48);
  }

  else
  {
    v2 = sub_224DAC0D8();
    *(v1 + 48) = v2;
  }

  return v2;
}

uint64_t sub_224D7A364()
{
  if (*(v0 + 56))
  {
    v1 = *(v0 + 56);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5448, &qword_224DBBB68);
    sub_224A33088(&qword_281350F68, &qword_27D6F5448, &qword_224DBBB68, MEMORY[0x277CBCE20]);
    v1 = sub_224DAB3A8();
    *(v0 + 56) = v1;
  }

  return v1;
}

unint64_t sub_224D7A428()
{
  v0 = sub_224DABE18();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v30 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v28 - v6;
  result = sub_224DAC148();
  v9 = 0;
  v10 = result + 64;
  v11 = 1 << *(result + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(result + 64);
  v14 = (v11 + 63) >> 6;
  v33 = v1 + 16;
  v34 = result;
  v32 = (v1 + 8);
  v29 = (v1 + 32);
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    v15 = v9;
    if (!v13)
    {
      break;
    }

LABEL_8:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v17 = *(v1 + 72);
    (*(v1 + 16))(v7, *(v34 + 48) + v17 * (v16 | (v9 << 6)), v0);
    v18 = sub_224DABDB8();
    v19 = [v18 isRemote];

    if (v19)
    {
      v28 = *v29;
      v28(v30, v7, v0);
      v20 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v20;
      v22 = v0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_224ADA49C(0, *(v20 + 16) + 1, 1);
        v20 = v35;
      }

      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v31 = v24 + 1;
        sub_224ADA49C((v23 > 1), v24 + 1, 1);
        v25 = v31;
        v20 = v35;
      }

      *(v20 + 16) = v25;
      v26 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v31 = v20;
      v27 = v20 + v26 + v24 * v17;
      v0 = v22;
      result = (v28)(v27, v30, v22);
    }

    else
    {
      result = (*v32)(v7, v0);
    }
  }

  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v14)
    {

      return v31;
    }

    v13 = *(v10 + 8 * v9);
    ++v15;
    if (v13)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D7A6F0@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_224DABDB8();
  v7 = *v5;
  v8 = *(v7 + OBJC_IVAR____TtC10ChronoCore15LocationService_lock);
  os_unfair_lock_lock(*(v8 + 16));
  sub_224A7E188(v7, v6, &v15);
  os_unfair_lock_unlock(*(v8 + 16));

  if (v16)
  {
    sub_224A36F98(&v15, v17);
    v9 = sub_224DAC198();
    sub_224A3317C(v17, &v15);
    sub_224A3317C(a1, v14);
    v10 = swift_allocObject();
    sub_224A36F98(&v15, v10 + 16);
    sub_224A36F98(v14, v10 + 56);
    v11 = sub_224DAC1A8();
    v12 = MEMORY[0x277CF9950];
    a3[3] = v9;
    a3[4] = v12;
    *a3 = v11;
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_224A3311C(&v15, &qword_27D6F3AE8, &unk_224DB9600);
    return sub_224A3317C(a1, a3);
  }
}

uint64_t sub_224D7A85C(void *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224DAE1F8();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  return sub_224DAE1F8();
}

void sub_224D7A8C0(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224A92724(a1, a3);
  }

  else
  {
    v5 = sub_224DAE4F8();
    (*(*(v5 - 8) + 56))(a3, 1, 1, v5);
  }
}

uint64_t sub_224D7A974(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DABE18();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50D8, &unk_224DBD6E0);
    MEMORY[0x22AA5BB00](v8);
    sub_224A8BA9C(v6);

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

double sub_224D7AA94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224D7AAF4(a1);
  }

  return result;
}

uint64_t sub_224D7AAF4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v44 = &v34 - v6;
  v45 = sub_224DAF3B8();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4CA0, &qword_224DBA450);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v46 = &v34 - v13;
  v14 = sub_224DABE18();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v42 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v20 = *(v15 + 16);
  v47 = &v34 - v21;
  v41 = v20;
  v20();
  v22 = sub_224DAC168();
  if (v22 && (v40 = a1, v23 = sub_224A73210(v22), , v23))
  {
    sub_224DABE38();

    v39 = v2;
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    v36 = sub_224DAD178();
    v49 = v36;
    sub_224DAF378();
    sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    v35 = sub_224DAF3D8();
    v48 = v35;
    v24 = sub_224DAF358();
    v25 = v44;
    (*(*(v24 - 8) + 56))(v44, 1, 1, v24);
    v37 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
    v38 = v11;
    sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, MEMORY[0x277CBCD90]);
    sub_224B67CF4();
    sub_224DAB468();
    sub_224A3311C(v25, &qword_27D6F5090, &qword_224DB5C30);

    (*(v43 + 8))(v9, v45);

    __swift_destroy_boxed_opaque_existential_1(v50);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = v42;
    (v41)(v42, v40, v14);
    v28 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    (*(v15 + 32))(v29 + v28, v27, v14);
    sub_224A33088(&qword_281351338, &qword_27D6F4CA0, &qword_224DBA450, MEMORY[0x277CBCCF8]);
    v30 = v37;
    v31 = v46;
    v32 = sub_224DAB488();

    (*(v38 + 8))(v31, v30);
  }

  else
  {
    v32 = 0;
  }

  swift_beginAccess();
  sub_224B09B90(v32, v47);
  return swift_endAccess();
}

double sub_224D7B040(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    sub_224B3E430(a1);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_224D7B0DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DACB98();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_224DACB08();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v7);
  v45 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_224DACB28();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v9);
  v40 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_224DACC88();
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v11);
  v39 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DABE18();
  v53 = *(v13 - 8);
  v54 = v13;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v47 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v33 - v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v34 = v3;
    v35 = v6;
    v36 = v2;
    result = sub_224DAC108();
    v52 = *(result + 16);
    if (v52)
    {
      v22 = 0;
      v50 = v53 + 16;
      v46 = (v53 + 32);
      v48 = (v53 + 8);
      v49 = MEMORY[0x277D84F90];
      v51 = result;
      while (1)
      {
        if (v22 >= *(result + 16))
        {
          __break(1u);
          return result;
        }

        v23 = (*(v53 + 80) + 32) & ~*(v53 + 80);
        v24 = *(v53 + 72);
        (*(v53 + 16))(v19, result + v23 + v24 * v22, v54);
        __swift_project_boxed_opaque_existential_1((v21 + 152), *(v21 + 176));
        v25 = sub_224DABDB8();
        sub_224DAC6D8();

        if (v56)
        {
          __swift_project_boxed_opaque_existential_1(v55, v56);
          v26 = sub_224DAE218();
          __swift_destroy_boxed_opaque_existential_1(v55);
          if (v26)
          {
            v27 = *v46;
            (*v46)(v47, v19, v54);
            v28 = v49;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v57 = v28;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_224ADA49C(0, *(v28 + 16) + 1, 1);
              v28 = v57;
            }

            v31 = *(v28 + 16);
            v30 = *(v28 + 24);
            if (v31 >= v30 >> 1)
            {
              sub_224ADA49C((v30 > 1), v31 + 1, 1);
              v28 = v57;
            }

            *(v28 + 16) = v31 + 1;
            v49 = v28;
            v27((v28 + v23 + v31 * v24), v47, v54);
            goto LABEL_6;
          }
        }

        else
        {
          sub_224A3311C(v55, &unk_27D6F4700, &unk_224DB3A10);
        }

        (*v48)(v19, v54);
LABEL_6:
        ++v22;
        result = v51;
        if (v52 == v22)
        {
          goto LABEL_16;
        }
      }
    }

    v49 = MEMORY[0x277D84F90];
LABEL_16:

    (*(v37 + 104))(v40, *MEMORY[0x277CF9B50], v38);
    (*(v42 + 104))(v45, *MEMORY[0x277CF9B40], v44);
    (*(v34 + 104))(v35, *MEMORY[0x277CF9BC8], v36);
    sub_224DACC48();
    v32 = v39;
    sub_224DACC38();
    sub_224A3933C(v49, v32);

    return (*(v41 + 8))(v32, v43);
  }

  return result;
}

double sub_224D7B700(unint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224D7B774(a1, a2);
  }

  return result;
}

void sub_224D7B774(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v124 = a2;
  v115 = sub_224DACB28();
  v114 = *(v115 - 8);
  MEMORY[0x28223BE20](v115, v5);
  v7 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DACC88();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v116 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_224DAB258();
  v113 = *(v120 - 8);
  v13 = MEMORY[0x28223BE20](v120, v12);
  v15 = &v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v13, v16);
  v106 = &v106 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v111 = &v106 - v20;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v22 = MEMORY[0x28223BE20](v137, v21);
  v136 = &v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v135 = &v106 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v134 = &v106 - v28;
  v126 = sub_224DABE18();
  v29 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v30);
  v138 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_224DACB98();
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v32);
  v122 = &v106 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_224DACB08();
  v118 = *(v119 - 8);
  v35 = MEMORY[0x28223BE20](v119, v34);
  v112 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v37);
  v117 = &v106 - v38;
  v39 = sub_224DAC148();

  v40 = sub_224D8E32C(v39, a1);

  v41 = *(v40 + 16);
  if (v41)
  {
    v107 = v7;
    v108 = v9;
    v109 = v8;
    v110 = v3;
    v143 = MEMORY[0x277D84F90];
    sub_224ADA49C(0, v41, 0);
    v142 = v143;
    v42 = v40 + 64;
    v43 = sub_224DAF798();
    v44 = 0;
    v132 = v29 + 32;
    v133 = v29 + 16;
    v125 = v40 + 72;
    v45 = v126;
    v46 = v29;
    v127 = v41;
    v128 = v15;
    v129 = v40 + 64;
    v130 = v40;
    v131 = v29;
    while ((v43 & 0x8000000000000000) == 0 && v43 < 1 << *(v40 + 32))
    {
      v50 = v43 >> 6;
      if ((*(v42 + 8 * (v43 >> 6)) & (1 << v43)) == 0)
      {
        goto LABEL_35;
      }

      v51 = *(v40 + 36);
      v139 = v44;
      v140 = v51;
      v52 = *(v40 + 48);
      v141 = *(v46 + 72);
      v53 = v134;
      (*(v46 + 16))(v134, v52 + v141 * v43, v45);
      v54 = *(*(v40 + 56) + 8 * v43);
      v55 = *(v46 + 32);
      v56 = v135;
      v55(v135, v53, v45);
      *&v56[*(v137 + 48)] = v54;
      v57 = v56;
      v58 = v136;
      sub_224A44E4C(v57, v136, &qword_27D6F6D38, &unk_224DC2010);

      v59 = v138;
      v55(v138, v58, v45);
      v60 = v142;
      v143 = v142;
      v61 = v45;
      v63 = *(v142 + 16);
      v62 = *(v142 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_224ADA49C((v62 > 1), v63 + 1, 1);
        v59 = v138;
        v60 = v143;
      }

      *(v60 + 16) = v63 + 1;
      v64 = v131;
      v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v142 = v60;
      v55((v60 + v65 + v63 * v141), v59, v61);
      v47 = 1 << *(v130 + 32);
      if (v43 >= v47)
      {
        goto LABEL_36;
      }

      v42 = v129;
      v66 = *(v129 + 8 * v50);
      if ((v66 & (1 << v43)) == 0)
      {
        goto LABEL_37;
      }

      v46 = v64;
      v40 = v130;
      if (v140 != *(v130 + 36))
      {
        goto LABEL_38;
      }

      v67 = v66 & (-2 << (v43 & 0x3F));
      if (v67)
      {
        v45 = v61;
        v47 = __clz(__rbit64(v67)) | v43 & 0x7FFFFFFFFFFFFFC0;
        v48 = v127;
        v49 = v128;
      }

      else
      {
        v68 = v50 << 6;
        v69 = v50 + 1;
        v70 = (v125 + 8 * v50);
        v48 = v127;
        v49 = v128;
        while (v69 < (v47 + 63) >> 6)
        {
          v72 = *v70++;
          v71 = v72;
          v68 += 64;
          ++v69;
          if (v72)
          {
            sub_224A3E204(v43, v140, 0);
            v47 = __clz(__rbit64(v71)) + v68;
            goto LABEL_19;
          }
        }

        sub_224A3E204(v43, v140, 0);
LABEL_19:
        v45 = v126;
      }

      v44 = v139 + 1;
      v43 = v47;
      if (v139 + 1 == v48)
      {

        v73 = v121;
        v74 = *(v121 + 104);
        v75 = v122;
        v76 = v123;
        v74(v122, *MEMORY[0x277CF9BB8], v123);
        v77 = sub_224DACB88();
        v78 = *(v73 + 8);
        v78(v75, v76);
        if (v77)
        {
          v79 = v118;
          v80 = v117;
          v81 = v119;
          (*(v118 + 104))(v117, *MEMORY[0x277CF9B48], v119);
          v82 = v113;
          v49 = v111;
          v83 = v120;
          (*(v113 + 16))(v111, v110 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v120);
          v84 = v142;

          v85 = sub_224DAB228();
          v86 = sub_224DAF2A8();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = v49;
            v88 = v82;
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v143 = v90;
            *v89 = 136446210;
            v91 = MEMORY[0x22AA5D380](v84, v126);
            v93 = sub_224A33F74(v91, v92, &v143);
            v79 = v118;

            *(v89 + 4) = v93;
            v80 = v117;
            v94 = "Reloading timeline at cost for %{public}s due to external trigger (significant location change).";
            goto LABEL_31;
          }

LABEL_32:

          (*(v82 + 8))(v49, v83);
        }

        else
        {
          v74(v75, *MEMORY[0x277CF9BC0], v76);
          v95 = sub_224DACB88();
          v78(v75, v76);
          v79 = v118;
          v80 = v117;
          v81 = v119;
          (*(v118 + 104))(v117, *MEMORY[0x277CF9B40], v119);
          v82 = v113;
          v96 = *(v113 + 16);
          v97 = v110 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger;
          if (v95)
          {
            v49 = v106;
            v83 = v120;
            v96(v106, v97, v120);
            v84 = v142;

            v85 = sub_224DAB228();
            v86 = sub_224DAF2A8();

            if (!os_log_type_enabled(v85, v86))
            {
              goto LABEL_32;
            }

            v87 = v49;
            v88 = v82;
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v143 = v90;
            *v89 = 136446210;
            v98 = MEMORY[0x22AA5D380](v84, v126);
            v100 = sub_224A33F74(v98, v99, &v143);
            v79 = v118;

            *(v89 + 4) = v100;
            v80 = v117;
            v94 = "Reloading timeline at cost for %{public}s due to external trigger (deferred location update now visible).";
          }

          else
          {
            v83 = v120;
            v96(v49, v97, v120);
            v84 = v142;

            v85 = sub_224DAB228();
            v86 = sub_224DAF2A8();

            if (!os_log_type_enabled(v85, v86))
            {
              goto LABEL_32;
            }

            v87 = v49;
            v88 = v82;
            v89 = swift_slowAlloc();
            v90 = swift_slowAlloc();
            v143 = v90;
            *v89 = 136446210;
            v101 = MEMORY[0x22AA5D380](v84, v126);
            v103 = sub_224A33F74(v101, v102, &v143);
            v79 = v118;

            *(v89 + 4) = v103;
            v80 = v117;
            v94 = "Reloading timeline for free for %{public}s due to external trigger.";
          }

LABEL_31:
          _os_log_impl(&dword_224A2F000, v85, v86, v94, v89, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v90);
          v104 = v90;
          v81 = v119;
          MEMORY[0x22AA5EED0](v104, -1, -1);
          MEMORY[0x22AA5EED0](v89, -1, -1);

          (*(v88 + 8))(v87, v120);
        }

        v105 = v116;
        (*(v114 + 104))(v107, *MEMORY[0x277CF9B50], v115);
        (*(v79 + 16))(v112, v80, v81);
        (*(v121 + 16))(v122, v124, v123);
        sub_224DACC48();
        sub_224DACC38();
        sub_224A3933C(v84, v105);

        (*(v108 + 8))(v105, v109);
        (*(v79 + 8))(v80, v81);
        return;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
  }
}

double sub_224D7C504(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v2 = sub_224DAE918();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v28[-v9];
  v11 = sub_224DAB258();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v28[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v33 = v11;
    v34 = v7;
    (*(v12 + 16))(v15, Strong + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v11);
    v32 = *(v3 + 16);
    v32(v10, v35, v2);
    v18 = sub_224DAB228();
    v19 = sub_224DAF278();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v30 = v20;
      v31 = swift_slowAlloc();
      v36 = v31;
      *v20 = 136446210;
      sub_224A94F2C(&qword_281350C28, MEMORY[0x277CE3D70], MEMORY[0x277CE3D80]);
      v29 = v19;
      v21 = sub_224DAFD28();
      v23 = v22;
      (*(v3 + 8))(v10, v2);
      v24 = sub_224A33F74(v21, v23, &v36);

      v25 = v30;
      *(v30 + 1) = v24;
      v26 = v25;
      _os_log_impl(&dword_224A2F000, v18, v29, "Protection Type changed to %{public}s", v25, 0xCu);
      v27 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x22AA5EED0](v27, -1, -1);
      MEMORY[0x22AA5EED0](v26, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v10, v2);
    }

    (*(v12 + 8))(v15, v33);
    v32(v34, v35, v2);
    sub_224DAC0A8();
  }

  return result;
}

double sub_224D7C878(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224D7C8D8(v2);
  }

  return result;
}

uint64_t sub_224D7C8D8(uint64_t a1)
{
  v44 = sub_224DACB98();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v2);
  v43 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DACB08();
  v41 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DACB28();
  v40 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DACC88();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_224DAB258();
  MEMORY[0x28223BE20](v17, v18);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {

    v23 = sub_224A3DADC(v22);

    MEMORY[0x28223BE20](v24, v25);
    *(&v33 - 2) = v23;
    *(&v33 - 1) = v26;
    sub_224DAC128();
  }

  else
  {
    v33 = v8;
    v34 = v16;
    v35 = v11;
    v36 = v13;
    v37 = v12;
    v38 = v4;
    v39 = v7;
    v28 = v19;
    (*(v19 + 16))(v21, v45 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v17);
    v29 = sub_224DAB228();
    v30 = sub_224DAF2A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_224A2F000, v29, v30, "Locale change detected - reloading all timelines", v31, 2u);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    (*(v28 + 8))(v21, v17);
    (*(v40 + 104))(v35, *MEMORY[0x277CF9B50], v33);
    (*(v41 + 104))(v39, *MEMORY[0x277CF9B40], v38);
    (*(v42 + 104))(v43, *MEMORY[0x277CF9BA8], v44);
    sub_224DACC48();
    v32 = v34;
    sub_224DACC38();
    sub_224DAC158();
    return (*(v36 + 8))(v32, v37);
  }
}

void sub_224D7CD80()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_persistentSubscriptions;
  swift_beginAccess();
  v3 = *&v1[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224A94F2C(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    sub_224DAF1F8();
    v5 = v21;
    v4 = v22;
    v6 = v23;
    v7 = v24;
    v8 = v25;
  }

  else
  {
    v9 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v3 + 56);
    swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v3;
  }

  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_18:
      sub_224A3B7E4(v5);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(v1 + 9);
      __swift_destroy_boxed_opaque_existential_1(v1 + 14);
      __swift_destroy_boxed_opaque_existential_1(v1 + 19);
      __swift_destroy_boxed_opaque_existential_1(v1 + 24);

      v18 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger;
      v19 = sub_224DAB258();
      (*(*(v19 - 8) + 8))(&v1[v18], v19);

      __swift_destroy_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_processMonitor]);

      __swift_destroy_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_protectionLevelProvider]);

      __swift_destroy_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorObserver]);

      __swift_destroy_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_archiveVersionProvider]);
      __swift_destroy_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_taskService]);
      __swift_destroy_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService]);
      __swift_destroy_boxed_opaque_existential_1(&v1[OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider]);
      return;
    }

    while (1)
    {
      sub_224DAB328();

      v7 = v15;
      v8 = v16;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_224DAF878())
      {
        sub_224DAB338();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_224D7D134()
{
  sub_224D7CD80();

  return swift_deallocClassInstance();
}

uint64_t sub_224D7D194(uint64_t a1)
{
  result = sub_224DAB258();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

double sub_224D7D298(uint64_t *a1, uint64_t a2)
{
  v3 = sub_224DACB98();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = v8 + 32;
      v12 = *MEMORY[0x277CF9B98];
      v13 = (v4 + 104);
      v14 = (v4 + 8);
      do
      {
        sub_224A3317C(v11, v15);
        (*v13)(v7, v12, v3);
        sub_224D7D408(v15, 0, v7);
        __swift_destroy_boxed_opaque_existential_1(v15);
        (*v14)(v7, v3);
        v11 += 40;
        --v10;
      }

      while (v10);
    }
  }

  return result;
}

uint64_t sub_224D7D408(void *a1, int a2, uint64_t a3)
{
  v107 = a3;
  v105 = a2;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v5 = MEMORY[0x28223BE20](v117, v4);
  v116 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v115 = &v92 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v114 = &v92 - v11;
  v123 = sub_224DABE18();
  v121 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v12);
  v118 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_224DACB08();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v14);
  v104 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_224DACB28();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97, v16);
  v99 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_224DACC88();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v18);
  v98 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_224DACB98();
  v120 = *(v106 - 8);
  v21 = MEMORY[0x28223BE20](v106, v20);
  v95 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v92 - v24;
  v26 = sub_224DA9878();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v92 - v34;
  v36 = a1[3];
  v122 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  v37 = sub_224DAE338();
  LOBYTE(v36) = [v37 isRemote];

  if ((v36 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v122, v122[3]);
    v38 = sub_224DAE338();
    sub_224DAF528();

    __swift_project_boxed_opaque_existential_1((v108 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService), *(v108 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService + 24));
    sub_224DA9868();
    sub_224DAD1B8();
    (*(v27 + 8))(v30, v26);
    (*(v32 + 8))(v35, v31);
  }

  if (qword_281351410 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v39 = sub_224DAB258();
    __swift_project_value_buffer(v39, qword_281364D30);
    sub_224A3317C(v122, v125);
    v40 = v120;
    v41 = v120 + 16;
    v42 = v106;
    v93 = *(v120 + 16);
    v93(v25, v107, v106);
    v43 = sub_224DAB228();
    v44 = sub_224DAF2A8();
    v45 = os_log_type_enabled(v43, v44);
    v94 = v41;
    if (v45)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v124 = v119;
      *v46 = 138543874;
      __swift_project_boxed_opaque_existential_1(v125, v125[3]);
      v48 = sub_224DAE338();
      __swift_destroy_boxed_opaque_existential_1(v125);
      *(v46 + 4) = v48;
      *v47 = v48;
      *(v46 + 12) = 1026;
      *(v46 + 14) = v105 & 1;
      *(v46 + 18) = 2082;
      sub_224A94F2C(&unk_281350D28, MEMORY[0x277CF9BF8], MEMORY[0x277CF9C00]);
      v49 = sub_224DAFD28();
      v51 = v50;
      (*(v40 + 8))(v25, v42);
      v52 = sub_224A33F74(v49, v51, &v124);

      *(v46 + 20) = v52;
      _os_log_impl(&dword_224A2F000, v43, v44, "Reload requested for %{public}@ as budgeted: %{BOOL,public}d for reason: %{public}s", v46, 0x1Cu);
      sub_224A3311C(v47, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v47, -1, -1);
      v53 = v119;
      __swift_destroy_boxed_opaque_existential_1(v119);
      MEMORY[0x22AA5EED0](v53, -1, -1);
      MEMORY[0x22AA5EED0](v46, -1, -1);
    }

    else
    {

      (*(v40 + 8))(v25, v42);
      __swift_destroy_boxed_opaque_existential_1(v125);
    }

    v54 = v121;
    v55 = sub_224DAC148();
    MEMORY[0x28223BE20](v55, v56);
    *(&v92 - 2) = v122;
    v57 = sub_224BA08E4(sub_224D8DF48, (&v92 - 4), v55);

    v58 = *(v57 + 2);
    if (!v58)
    {
      break;
    }

    v125[0] = MEMORY[0x277D84F90];
    sub_224ADA49C(0, v58, 0);
    v122 = v125[0];
    v59 = v57 + 64;
    v60 = sub_224DAF798();
    v61 = 0;
    v113 = v54 + 16;
    v25 = (v54 + 32);
    v109 = v57 + 72;
    v62 = v123;
    v110 = v58;
    v111 = v57 + 64;
    v112 = v57;
    while ((v60 & 0x8000000000000000) == 0 && v60 < 1 << v57[32])
    {
      v64 = v60 >> 6;
      if ((*&v59[8 * (v60 >> 6)] & (1 << v60)) == 0)
      {
        goto LABEL_31;
      }

      v65 = *(v57 + 9);
      v119 = v61;
      v120 = v65;
      v66 = *(v57 + 6);
      v121 = *(v54 + 72);
      v67 = v114;
      (*(v54 + 16))(v114, v66 + v121 * v60, v62);
      v68 = *(*(v57 + 7) + 8 * v60);
      v69 = *(v54 + 32);
      v70 = v115;
      v69(v115, v67, v123);
      *&v70[*(v117 + 48)] = v68;
      v71 = v70;
      v72 = v116;
      sub_224A44E4C(v71, v116, &qword_27D6F6D38, &unk_224DC2010);

      v73 = v118;
      v74 = v72;
      v62 = v123;
      v69(v118, v74, v123);
      v75 = v122;
      v125[0] = v122;
      v77 = v122[2];
      v76 = v122[3];
      if (v77 >= v76 >> 1)
      {
        sub_224ADA49C((v76 > 1), v77 + 1, 1);
        v73 = v118;
        v75 = v125[0];
      }

      v75[2] = v77 + 1;
      v78 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v122 = v75;
      v69(v75 + v78 + v77 * v121, v73, v62);
      v63 = 1 << v112[32];
      if (v60 >= v63)
      {
        goto LABEL_32;
      }

      v59 = v111;
      v79 = *&v111[8 * v64];
      if ((v79 & (1 << v60)) == 0)
      {
        goto LABEL_33;
      }

      v57 = v112;
      if (v120 != *(v112 + 9))
      {
        goto LABEL_34;
      }

      v80 = v79 & (-2 << (v60 & 0x3F));
      if (v80)
      {
        v63 = __clz(__rbit64(v80)) | v60 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v81 = v64 << 6;
        v82 = v64 + 1;
        v83 = &v109[8 * v64];
        while (v82 < (v63 + 63) >> 6)
        {
          v85 = *v83++;
          v84 = v85;
          v81 += 64;
          ++v82;
          if (v85)
          {
            sub_224A3E204(v60, v120, 0);
            v63 = __clz(__rbit64(v84)) + v81;
            goto LABEL_10;
          }
        }

        sub_224A3E204(v60, v120, 0);
      }

LABEL_10:
      v61 = (v119 + 1);
      v60 = v63;
      if ((v119 + 1) == v110)
      {

        v86 = v104;
        v87 = v103;
        v88 = v122;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

  v88 = MEMORY[0x277D84F90];
  v86 = v104;
  v87 = v103;
LABEL_27:
  (*(v96 + 104))(v99, *MEMORY[0x277CF9B50], v97);
  v89 = MEMORY[0x277CF9B48];
  if ((v105 & 1) == 0)
  {
    v89 = MEMORY[0x277CF9B40];
  }

  (*(v102 + 104))(v86, *v89, v87);
  v93(v95, v107, v106);
  sub_224DACC48();
  v90 = v98;
  sub_224DACC38();
  sub_224A3933C(v88, v90);

  return (*(v100 + 8))(v90, v101);
}

void sub_224D7E0BC(uint64_t *a1, uint64_t a2)
{
  v83 = sub_224DAC268();
  v77 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v3);
  v76 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v56 - v11;
  v13 = sub_224DABE18();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v64 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v19 = v64;
  v58 = *(v17 + 16);
  if (!v58)
  {
    goto LABEL_31;
  }

  v20 = v17;
  v21 = 0;
  v59 = v17 + 32;
  v66 = v14 + 16;
  v65 = (v14 + 8);
  v74 = v77 + 16;
  v73 = v77 + 32;
  v82 = "Reloading all content: ";
  v81 = (v77 + 8);
  v75 = v12;
  v80 = v9;
  v63 = v13;
  v62 = v14;
  v57 = v17;
  v61 = Strong;
  while (1)
  {
    if (v21 >= *(v20 + 16))
    {
LABEL_34:
      __break(1u);
      return;
    }

    v60 = v21;
    sub_224A3317C(v59 + 40 * v21, v87);
    v23 = sub_224DAC108();
    v70 = *(v23 + 16);
    if (v70)
    {
      break;
    }

LABEL_4:

    v22 = v60 + 1;
    __swift_destroy_boxed_opaque_existential_1(v87);
    v21 = v22;
    v20 = v57;
    if (v22 == v58)
    {
      goto LABEL_31;
    }
  }

  v24 = v23;
  v69 = sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  v25 = v24;
  v26 = 0;
  v68 = v25 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v67 = v25;
  while (1)
  {
    if (v26 >= *(v25 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v27 = *(v14 + 72);
    v71 = v26;
    (*(v14 + 16))(v19, v68 + v27 * v26, v13);
    v28 = sub_224DABDB8();
    __swift_project_boxed_opaque_existential_1(v87, v87[3]);
    v29 = sub_224DAE338();
    v30 = sub_224DAF6A8();

    v31 = v80;
    if (v30)
    {
      v32 = sub_224DAC168();
      if (v32)
      {
        break;
      }
    }

LABEL_9:
    v26 = v71 + 1;
    (*v65)(v19, v13);
    v25 = v67;
    if (v26 == v70)
    {
      goto LABEL_4;
    }
  }

  v33 = 0;
  v79 = v32;
  v34 = *(v32 + 64);
  v72 = v32 + 64;
  v35 = 1 << *(v32 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & v34;
  v38 = (v35 + 63) >> 6;
  v78 = v38;
  if ((v36 & v34) != 0)
  {
    while (1)
    {
      v39 = v33;
LABEL_25:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v39 << 6);
      v44 = v79;
      v45 = v76;
      v46 = v77;
      v47 = v83;
      (*(v77 + 16))(v76, *(v79 + 48) + *(v77 + 72) * v43, v83);
      v48 = *(*(v44 + 56) + 8 * v43);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      v50 = *(v49 + 48);
      v51 = *(v46 + 32);
      v31 = v80;
      v51(v80, v45, v47);
      *(v31 + v50) = v48;
      (*(*(v49 - 8) + 56))(v31, 0, 1, v49);
      v52 = v48;
      v41 = v39;
      v12 = v75;
      v38 = v78;
LABEL_26:
      sub_224A44E4C(v31, v12, &qword_27D6F47F0, &unk_224DB7850);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      if ((*(*(v53 - 8) + 48))(v12, 1, v53) == 1)
      {
        break;
      }

      v54 = *&v12[*(v53 + 48)];
      v86 = 0;
      v84 = 0u;
      v85 = 0u;
      sub_224DABE78();
      sub_224DABE28();

      (*v81)(v12, v83);
      v33 = v41;
      if (!v37)
      {
        goto LABEL_18;
      }
    }

    v13 = v63;
    v14 = v62;
    v19 = v64;
    goto LABEL_9;
  }

LABEL_18:
  if (v38 <= v33 + 1)
  {
    v40 = v33 + 1;
  }

  else
  {
    v40 = v38;
  }

  v41 = v40 - 1;
  while (1)
  {
    v39 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v39 >= v38)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      (*(*(v55 - 8) + 56))(v31, 1, 1, v55);
      v37 = 0;
      goto LABEL_26;
    }

    v37 = *(v72 + 8 * v39);
    ++v33;
    if (v37)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_31:
}

uint64_t sub_224D7E7CC(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v3 = sub_224DAC268();
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CA0, &qword_224DC2F80);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v42 - v14;
  v16 = sub_224DAB258();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v50 = v16;
    v51 = a2;
    v49 = v17;
    (*(v17 + 16))(v20, Strong + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v16);

    v22 = *(v8 + 16);
    v23 = v53;
    v22(v15, v53, v7);
    v22(v12, v23, v7);
    v24 = sub_224DAB228();
    v25 = sub_224DAF2A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v45 = v26;
      v48 = swift_slowAlloc();
      v54[0] = v48;
      *v26 = 136446466;
      v47 = v25;
      sub_224DAC838();
      v44 = sub_224A94F2C(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
      v27 = sub_224DAFD28();
      v46 = v24;
      v28 = v3;
      v30 = v29;
      v43 = *(v52 + 8);
      v43(v6, v28);
      v42 = *(v8 + 8);
      v42(v15, v7);
      v31 = sub_224A33F74(v27, v30, v54);
      v3 = v28;

      v32 = v45;
      *(v45 + 1) = v31;
      *(v32 + 6) = 2082;
      sub_224DAC838();
      v33 = sub_224DAFD28();
      v35 = v34;
      v43(v6, v3);
      v42(v12, v7);
      v36 = sub_224A33F74(v33, v35, v54);

      *(v32 + 14) = v36;
      v37 = v46;
      _os_log_impl(&dword_224A2F000, v46, v47, "%{public}s:%{public}s Marking variant removed from store.", v32, 0x16u);
      v38 = v48;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v38, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    else
    {

      v39 = *(v8 + 8);
      v39(v12, v7);
      v39(v15, v7);
    }

    (*(v49 + 8))(v20, v50);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v41 = v52;
    swift_unknownObjectRetain();

    swift_getObjectType();
    sub_224DAC838();
    sub_224DAC478();
    swift_unknownObjectRelease();
    return (*(v41 + 8))(v6, v3);
  }

  return result;
}

double sub_224D7ED34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224D7ED8C();
  }

  return result;
}

void sub_224D7ED8C()
{
  v1 = sub_224DAD158();
  v190 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1, v2);
  v198 = &v181 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v219 = &v181 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5238, &qword_224DBB1E0);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v206 = &v181 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v220 = &v181 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v208 = &v181 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v181 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v231 = &v181 - v22;
  v214 = sub_224DABE18();
  v23 = *(v214 - 8);
  MEMORY[0x28223BE20](v214, v24);
  v216 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v207 = &v181 - v28;
  v29 = sub_224DAC268();
  v210 = *(v29 - 8);
  v31 = MEMORY[0x28223BE20](v29, v30);
  v182 = &v181 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v229 = &v181 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v205 = &v181 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v209 = &v181 - v41;
  MEMORY[0x28223BE20](v40, v42);
  v236 = &v181 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v185 = *(v44 - 8);
  v46 = MEMORY[0x28223BE20](v44, v45);
  v217 = &v181 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v48);
  v184 = &v181 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v52 = MEMORY[0x28223BE20](v50 - 8, v51);
  v54 = &v181 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v55);
  v193 = &v181 - v56;
  v243 = MEMORY[0x277D84F98];
  v57 = v0[12];
  v58 = v0[13];
  v215 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 9, v57);
  (*(v58 + 32))(v242, 769, v57, v58);
  if (!v242[5])
  {
    sub_224A3311C(v242, &qword_27D6F50E0, &qword_224DB41A0);
    return;
  }

  v59 = sub_224A86CAC();
  sub_224A699F0(v242);
  if (v59)
  {
    v228 = v29;
    v187 = v54;
    v60 = v59[8];
    v188 = v59 + 8;
    v61 = 1 << *(v59 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v195 = v62 & v60;
    v181 = (v61 + 63) >> 6;
    v199 = (v185 + 16);
    v191 = (v185 + 32);
    v204 = (v185 + 56);
    v235 = (v210 + 16);
    v213 = (v23 + 8);
    v203 = (v190 + 56);
    v189 = v190 + 16;
    v227 = (v190 + 48);
    v202 = (v190 + 32);
    v196 = (v190 + 8);
    v230 = (v210 + 8);
    v201 = v210 + 32;
    v186 = (v185 + 8);
    v183 = v59;

    v63 = 0;
    v232 = 0;
    v197 = xmmword_224DB2780;
    v238 = MEMORY[0x277D84F90];
    v234 = MEMORY[0x277D84F90];
    v218 = v1;
    v221 = v44;
    v64 = v217;
    v200 = v20;
    while (1)
    {
      v65 = v193;
      v66 = v195;
      if (v195)
      {
        v194 = v63;
        v67 = v63;
        goto LABEL_17;
      }

      v68 = v181 <= v63 + 1 ? v63 + 1 : v181;
      v69 = v68 - 1;
      do
      {
        v67 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          goto LABEL_92;
        }

        if (v67 >= v181)
        {
          v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
          v79 = v187;
          (*(*(v169 - 8) + 56))(v187, 1, 1, v169);
          v195 = 0;
          v194 = v69;
          goto LABEL_18;
        }

        v66 = v188[v67];
        ++v63;
      }

      while (!v66);
      v194 = v67;
LABEL_17:
      v195 = (v66 - 1) & v66;
      v70 = __clz(__rbit64(v66)) | (v67 << 6);
      v71 = v183;
      v72 = v185;
      v73 = v184;
      v74 = v221;
      (*(v185 + 16))(v184, v183[6] + *(v185 + 72) * v70, v221);
      v75 = *(v71[7] + 8 * v70);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      v77 = *(v76 + 48);
      v78 = *(v72 + 32);
      v79 = v187;
      v78(v187, v73, v74);
      *(v79 + v77) = v75;
      (*(*(v76 - 8) + 56))(v79, 0, 1, v76);
      v80 = v75;
      v64 = v217;
      v65 = v193;
LABEL_18:
      sub_224A44E4C(v79, v65, &qword_27D6F4930, &unk_224DB8D00);
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      if ((*(*(v81 - 8) + 48))(v65, 1, v81) == 1)
      {

        v170 = v215;
        v171 = v243;

        sub_224DADDC8();

        v172 = v170[30];
        os_unfair_lock_lock(*(v172 + 16));
        *(v170 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_configurationLifetimeAssertions) = v234;

        os_unfair_lock_unlock(*(v172 + 16));
        v173 = v238[2];
        v174 = v228;
        if (v173)
        {
          v237 = v171;
          v175 = v238 + ((*(v210 + 80) + 32) & ~*(v210 + 80));
          v176 = *(v210 + 16);
          v239 = *(v210 + 72);
          v240 = v176;
          v177 = v209;
          v178 = v176;
          do
          {
            v178(v177, v175, v174);
            v178(v182, v177, v174);
            v179 = sub_224DABD88();
            MEMORY[0x28223BE20](v179, v180);
            *(&v181 - 4) = v216;
            *(&v181 - 3) = v177;
            *(&v181 - 2) = v215;
            sub_224DAC128();
            (*v213)(v216, v214);
            (*v230)(v177, v174);
            v175 = &v239[v175];
            --v173;
          }

          while (v173);
        }

        return;
      }

      v82 = *(v65 + *(v81 + 48));
      (*v191)(v64, v65, v221);
      v192 = v82;
      v83 = [v82 containerDescriptors];
      sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
      v84 = sub_224DAF008();

      v85 = v232;
      v86 = sub_224A7B5CC(v84);
      v232 = v85;

      v87 = v86 >> 62 ? sub_224DAF838() : *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v88 = &off_27853F000;
      v89 = &off_27853F000;
      if (v87)
      {
        break;
      }

LABEL_6:

      v64 = v217;
      (*v186)(v217, v221);
      v63 = v194;
    }

    v90 = 0;
    v237 = v86 & 0xC000000000000001;
    v222 = v86 & 0xFFFFFFFFFFFFFF8;
    v212 = v86;
    v211 = v87;
    while (1)
    {
      if (v237)
      {
        v92 = MEMORY[0x22AA5DCC0](v90, v86);
      }

      else
      {
        if (v90 >= *(v222 + 16))
        {
          goto LABEL_91;
        }

        v92 = *(v86 + 8 * v90 + 32);
      }

      v93 = v92;
      if (__OFADD__(v90, 1))
      {
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
        return;
      }

      v240 = (v90 + 1);
      v94 = [v92 v88[322]];
      v95 = [v94 v89[458]];
      v96 = v93;
      if (v95)
      {
        v91 = v95;
      }

      else
      {
        v239 = v93;
        v97 = [v93 refreshStrategy];
        objc_opt_self();
        v98 = swift_dynamicCastObjCClass();
        v99 = v98;
        if (v98)
        {
          if ([v98 isDisabledStrategy])
          {

            swift_unknownObjectRelease();
            goto LABEL_24;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v225 = v99;
        v100 = v239;
        v101 = [v239 metrics];
        v102 = [v100 container];
        if (v102)
        {
          v103 = v102;
          v226 = [v102 canAppearInSecureEnvironment];
        }

        else
        {
          v226 = 0;
        }

        v104 = v221;
        v105 = v235;
        v106 = v217;
        sub_224DAA1F8();
        v107 = sub_224DAA048();

        if (v107)
        {
          v108 = v207;
          (*v199)(v207, v106, v104);
          v109 = 0;
          v110 = v209;
        }

        else
        {
          v109 = 1;
          v110 = v209;
          v108 = v207;
        }

        (*v204)(v108, v109, 1, v104);
        v111 = v101;
        v112 = v94;
        v113 = v236;
        v223 = v112;
        sub_224DAC228();
        v233 = *v105;
        (v233)(v110, v113, v228);
        v114 = v216;
        sub_224DABD88();
        v115 = v215;
        v116 = sub_224DAD288();
        MEMORY[0x28223BE20](v116, v117);
        *(&v181 - 4) = v114;
        *(&v181 - 3) = v113;
        *(&v181 - 2) = v115;
        v118 = v232;
        sub_224DAC128();
        (*v213)(v114, v214);
        sub_224A3317C(v242, &v241);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v234 = sub_224AD97A8(0, v234[2] + 1, 1, v234);
        }

        v119 = v208;
        v121 = v234[2];
        v120 = v234[3];
        if (v121 >= v120 >> 1)
        {
          v234 = sub_224AD97A8((v120 > 1), v121 + 1, 1, v234);
        }

        v122 = v234;
        v234[2] = v121 + 1;
        sub_224A36F98(&v241, &v122[5 * v121 + 4]);
        v123 = v243;
        v124 = *(v243 + 16);
        v232 = v118;
        v224 = v111;
        if (v124 && (v125 = sub_224A61E5C(v236), (v126 & 1) != 0))
        {
          (*(v190 + 16))(v231, *(v123 + 56) + *(v190 + 72) * v125, v1);
          v127 = 0;
        }

        else
        {
          v127 = 1;
        }

        v128 = *v203;
        v129 = v231;
        (*v203)(v231, v127, 1, v1);
        v128(v20, 1, 1, v1);
        sub_224A3796C(v129, v119, &qword_27D6F5238, &qword_224DBB1E0);
        v130 = *v227;
        if ((*v227)(v119, 1, v1) == 1)
        {
          sub_224A3311C(v119, &qword_27D6F5238, &qword_224DBB1E0);
          v131 = v220;
          sub_224D8A0A0(v239);
          v128(v131, 0, 1, v1);
          sub_224C089E8(v131, v20);
          v132 = v130;
          if (v130(v20, 1, v1) == 1)
          {
            goto LABEL_100;
          }

          sub_224DACFF8();
          v133 = v206;
          v134 = v205;
          v1 = v218;
        }

        else
        {
          (*v202)(v219, v119, v1);
          v135 = v220;
          sub_224DAD148();
          v128(v135, 0, 1, v1);
          sub_224C089E8(v135, v20);
          sub_224DACFE8();
          if (v130(v20, 1, v1) == 1)
          {
            goto LABEL_99;
          }

          v132 = v130;
          sub_224DACFF8();
          sub_224DAD088();
          if (v130(v20, 1, v1) == 1)
          {
            goto LABEL_98;
          }

          sub_224DAD098();
          v136 = [v239 supportedColorSchemes];
          if (v130(v20, 1, v1) == 1)
          {
            goto LABEL_97;
          }

          v138 = sub_224DAD078();
          if ((v136 & ~*v137) != 0)
          {
            *v137 |= v136;
          }

          v138(&v241, 0);
          sub_224DAD0B8();
          if (v130(v20, 1, v1) == 1)
          {
            goto LABEL_96;
          }

          sub_224DAD0C8();
          v139 = [v239 supportedRenderSchemes];
          sub_224A3B79C(0, &qword_281350960, 0x277CFA430);
          v140 = sub_224DAF008();

          *&v241 = v140;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D50, &qword_224DC20C8);
          sub_224A33088(&qword_281350B70, &qword_27D6F6D50, &qword_224DC20C8, MEMORY[0x277D83970]);
          v141 = sub_224DAEF58();

          v142 = sub_224AE97C0(v141);

          if (v130(v20, 1, v1) == 1)
          {
            goto LABEL_95;
          }

          v143 = sub_224DAD0A8();
          sub_224C70AB4(v142);
          v143(&v241, 0);
          if ((sub_224DAD0F8() & 1) == 0)
          {
            [v239 supportsLowLuminance];
          }

          if (v132(v20, 1, v1) == 1)
          {
            goto LABEL_94;
          }

          sub_224DAD108();
          if ((sub_224DAD018() & 1) == 0)
          {
            [v239 showsWidgetLabel];
          }

          if (v132(v20, 1, v1) == 1)
          {
            goto LABEL_93;
          }

          sub_224DAD028();
          sub_224DAD128();
          if (v132(v20, 1, v1) == 1)
          {
            goto LABEL_104;
          }

          sub_224DAD138();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
          inited = swift_initStackObject();
          *(inited + 16) = v197;
          *(inited + 32) = [v239 displayProperties];
          v145 = sub_224AE995C(inited);
          swift_setDeallocating();
          swift_arrayDestroy();
          if (v132(v20, 1, v1) == 1)
          {
            goto LABEL_103;
          }

          v146 = sub_224DAD118();
          sub_224C70AE0(v145);
          v146(&v241, 0);
          v147 = v219;
          sub_224DAD058();
          if (v132(v20, 1, v1) == 1)
          {
            goto LABEL_102;
          }

          sub_224DAD068();
          v148 = [v239 supportedProximities];
          if (v132(v20, 1, v1) == 1)
          {
            goto LABEL_101;
          }

          v150 = sub_224DAD048();
          if ((v148 & ~*v149) != 0)
          {
            *v149 |= v148;
          }

          v150(&v241, 0);
          (*v196)(v147, v1);
          v133 = v206;
          v134 = v205;
        }

        v151 = v20;
        v152 = v236;
        v153 = v134;
        v154 = v228;
        v233();
        sub_224A3796C(v151, v133, &qword_27D6F5238, &qword_224DBB1E0);
        if (v132(v133, 1, v1) == 1)
        {
          sub_224A3311C(v133, &qword_27D6F5238, &qword_224DBB1E0);
          v155 = v220;
          sub_224B0DC70(v153, v220);
          sub_224A3311C(v155, &qword_27D6F5238, &qword_224DBB1E0);
          v156 = *v230;
          (*v230)(v153, v154);
        }

        else
        {
          v157 = v198;
          (*v202)(v198, v133, v1);
          v158 = v243;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v241 = v158;
          sub_224B224C8(v157, v153, isUniquelyReferenced_nonNull_native);
          v156 = *v230;
          (*v230)(v153, v154);
          v243 = v241;
        }

        v160 = v154;
        v161 = v224;
        (v233)(v229, v152, v154);
        v162 = swift_isUniquelyReferenced_nonNull_native();
        v163 = v200;
        if (v162)
        {
          v164 = v218;
          v165 = v238;
        }

        else
        {
          v165 = sub_224AD93E4(0, v238[2] + 1, 1, v238);
          v164 = v218;
        }

        v167 = v165[2];
        v166 = v165[3];
        if (v167 >= v166 >> 1)
        {
          v238 = sub_224AD93E4((v166 > 1), v167 + 1, 1, v165);
        }

        else
        {
          v238 = v165;
        }

        sub_224A3311C(v231, &qword_27D6F5238, &qword_224DBB1E0);
        __swift_destroy_boxed_opaque_existential_1(v242);
        v168 = v238;
        v238[2] = v167 + 1;
        (*(v210 + 32))(v168 + ((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v167, v229, v160);
        v156(v236, v160);
        sub_224A3311C(v163, &qword_27D6F5238, &qword_224DBB1E0);
        v88 = &off_27853F000;
        v89 = &off_27853F000;
        v86 = v212;
        v87 = v211;
        v1 = v164;
        v20 = v163;
      }

LABEL_24:
      ++v90;
      if (v240 == v87)
      {
        goto LABEL_6;
      }
    }
  }
}

uint64_t sub_224D80834(uint64_t a1)
{
  v2 = sub_224DAC148();
  if (*(v2 + 16) && (v3 = sub_224B0BDA0(a1), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);

    v6 = sub_224D5CF3C(v5);

    return v6;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_224D808C8(uint64_t a1, unint64_t a2)
{
  v40 = a2;
  v3 = sub_224DACC88();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAC268();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v34 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_224DABE18();
  v35 = *(v39 - 8);
  v9 = v35;
  MEMORY[0x28223BE20](v39, v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v13 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v14);
  v16 = &v32 - v15;
  v17 = sub_224DAC248();
  v18 = [v17 extensionIdentity];

  sub_224DAF528();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  v32 = xmmword_224DB3100;
  *(inited + 16) = xmmword_224DB3100;
  v20 = sub_224DAC248();
  v21 = [v20 kind];

  v22 = sub_224DAEE18();
  v24 = v23;

  *(inited + 32) = v22;
  *(inited + 40) = v24;
  v25 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224D80D10(v16, v25);

  (*(v13 + 8))(v16, v33);
  (*(v36 + 16))(v34, a1, v37);
  sub_224DABD88();
  v26 = v38;
  sub_224A8571C(v40, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3598, &qword_224DB3B50);
  v27 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v32;
  v29 = v39;
  (*(v9 + 16))(v28 + v27, v12, v39);
  sub_224A3933C(v28, v26);
  swift_setDeallocating();
  v30 = *(v9 + 8);
  v30(v28 + v27, v29);
  swift_deallocClassInstance();
  (*(v41 + 8))(v26, v42);
  return (v30)(v12, v29);
}

uint64_t sub_224D80D10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_224DA9878();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v46 = &v38 - v13;
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider), *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider + 24));
    result = sub_224DAD8C8();
    if (result)
    {
      v39 = v7;
      v40 = v6;
      MEMORY[0x28223BE20](result, v15);
      *(&v38 - 2) = a1;
      v16 = sub_224DACF48();

      sub_224DA9868();
      v38 = v16;
      v17 = sub_224DACF18();
      v18 = v17;
      v42 = a1;
      if (v17 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
      {
        v20 = 0;
        v41 = (v3 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService);
        v3 = v18 & 0xC000000000000001;
        v43 = v18 + 32;
        v44 = v18 & 0xFFFFFFFFFFFFFF8;
        v21 = a2 + 56;
        v45 = i;
        while (1)
        {
          if (v3)
          {
            v25 = MEMORY[0x22AA5DCC0](v20, v18);
          }

          else
          {
            if (v20 >= *(v44 + 16))
            {
              goto LABEL_26;
            }

            v25 = *(v43 + 8 * v20);
          }

          v26 = v25;
          if (__OFADD__(v20++, 1))
          {
            break;
          }

          v28 = [v25 kind];
          v29 = sub_224DAEE18();
          v31 = v30;

          if (*(a2 + 16))
          {
            sub_224DAFE68();
            sub_224DAEE78();
            v32 = sub_224DAFEA8();
            v33 = -1 << *(a2 + 32);
            v34 = v32 & ~v33;
            if ((*(v21 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
            {
              v35 = ~v33;
              while (1)
              {
                v36 = (*(a2 + 48) + 16 * v34);
                v37 = *v36 == v29 && v36[1] == v31;
                if (v37 || (sub_224DAFD88() & 1) != 0)
                {
                  break;
                }

                v34 = (v34 + 1) & v35;
                if (((*(v21 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
                {
                  goto LABEL_7;
                }
              }

              v22 = v41[3];
              v48 = v41[4];
              v47 = __swift_project_boxed_opaque_existential_1(v41, v22);
              v23 = v18;
              v24 = [v26 kind];
              sub_224DAEE18();

              v18 = v23;
              sub_224DAD1B8();
LABEL_7:
              i = v45;
            }
          }

          if (v20 == i)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }

LABEL_28:

      return (*(v39 + 8))(v46, v40);
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService), *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService + 24));
    sub_224DA9868();
    sub_224DAD1B8();
    return (*(v7 + 8))(v11, v6);
  }

  return result;
}

id sub_224D81124(uint64_t a1)
{
  v2 = sub_224DAC268();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DABE18();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  sub_224DABD88();
  v12 = sub_224DAC168();
  if (v12)
  {
    v13 = v12;
    if (*(v12 + 16))
    {
      v14 = sub_224A61E5C(a1);
      if (v15)
      {
        v16 = *(v8 + 8);
        v17 = *(*(v13 + 56) + 8 * v14);
        v16(v11, v7);

        return v17;
      }
    }
  }

  (*(v8 + 8))(v11, v7);
  return 0;
}

uint64_t sub_224D812FC(uint64_t a1, uint64_t a2)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
  v4 = MEMORY[0x28223BE20](v38, v3);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v37 = &v33 - v7;
  v8 = *(a2 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v40 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    v10 = a2 + 64;
    result = sub_224DAF798();
    v11 = result;
    v12 = 0;
    v13 = *(a2 + 36);
    v33 = a2 + 72;
    v34 = v13;
    v35 = v8;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a2 + 32))
    {
      v15 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_21;
      }

      if (v13 != *(a2 + 36))
      {
        goto LABEL_22;
      }

      v39 = v12;
      v13 = v10;
      v16 = *(a2 + 48);
      v17 = a2;
      v18 = sub_224DAC268();
      v19 = *(v18 - 8);
      v20 = v37;
      (*(v19 + 16))(v37, v16 + *(v19 + 72) * v11, v18);
      v21 = *(*(v17 + 56) + 8 * v11);
      v22 = v36;
      v23 = v18;
      a2 = v17;
      (*(v19 + 32))(v36, v20, v23);
      *(v22 + *(v38 + 48)) = v21;
      v24 = v21;
      sub_224DAC248();
      sub_224A3311C(v22, &qword_27D6F47F8, &unk_224DC2000);
      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      result = sub_224DAF9C8();
      v14 = 1 << *(v17 + 32);
      if (v11 >= v14)
      {
        goto LABEL_23;
      }

      v25 = *(v13 + 8 * v15);
      v26 = v35;
      if ((v25 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v10 = v13;
      LODWORD(v13) = v34;
      if (v34 != *(a2 + 36))
      {
        goto LABEL_25;
      }

      v27 = v25 & (-2 << (v11 & 0x3F));
      if (v27)
      {
        v14 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v15 << 6;
        v29 = v15 + 1;
        v30 = (v33 + 8 * v15);
        while (v29 < (v14 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_224A3E204(v11, v34, 0);
            v14 = __clz(__rbit64(v31)) + v28;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v11, v34, 0);
      }

LABEL_4:
      v12 = v39 + 1;
      v11 = v14;
      if (v39 + 1 == v26)
      {
        return v40;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_224D8165C()
{
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
  v1 = MEMORY[0x28223BE20](v82, v0);
  v81 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v80 = &v65 - v5;
  MEMORY[0x28223BE20](v4, v6);
  v79 = &v65 - v7;
  v76 = sub_224DABE18();
  v8 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v9);
  v70 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D30, &qword_224DC2F60);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v65 - v17;
  v89 = MEMORY[0x277D84F90];
  v19 = sub_224DAC148();
  v20 = 0;
  v21 = *(v19 + 64);
  v67 = v19 + 64;
  v72 = v19;
  v22 = 1 << *(v19 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v66 = (v22 + 63) >> 6;
  v69 = v8 + 16;
  v68 = v8 + 32;
  v71 = v8;
  v73 = (v8 + 8);
  v74 = v18;
  v75 = v15;
LABEL_6:
  if (v24)
  {
    v25 = v20;
LABEL_15:
    v78 = (v24 - 1) & v24;
    v28 = __clz(__rbit64(v24)) | (v25 << 6);
    v30 = v71;
    v29 = v72;
    v31 = v70;
    v32 = v76;
    (*(v71 + 16))(v70, *(v72 + 48) + *(v71 + 72) * v28, v76);
    v33 = *(*(v29 + 56) + 8 * v28);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    v35 = *(v34 + 48);
    v36 = *(v30 + 32);
    v15 = v75;
    v36(v75, v31, v32);
    *&v15[v35] = v33;
    (*(*(v34 - 8) + 56))(v15, 0, 1, v34);

    v27 = v25;
    v18 = v74;
LABEL_16:
    sub_224A44E4C(v15, v18, &qword_27D6F6D30, &qword_224DC2F60);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
    if ((*(*(v37 - 8) + 48))(v18, 1, v37) == 1)
    {

      return;
    }

    v77 = v27;
    v38 = *&v18[*(v37 + 48)];
    v39 = v38 + 64;
    v40 = 1 << *(v38 + 32);
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v42 = v41 & *(v38 + 64);
    v43 = (v40 + 63) >> 6;
    v85 = v38;

    v44 = 0;
    v45 = MEMORY[0x277D84F90];
    v83 = v43;
    v84 = v39;
    if (!v42)
    {
      goto LABEL_22;
    }

    do
    {
      v88 = v45;
LABEL_26:
      v47 = __clz(__rbit64(v42)) | (v44 << 6);
      v48 = v85;
      v49 = *(v85 + 48);
      v86 = sub_224DAC268();
      v50 = *(v86 - 8);
      v51 = v79;
      (*(v50 + 16))(v79, v49 + *(v50 + 72) * v47, v86);
      v52 = *(*(v48 + 56) + 8 * v47);
      v53 = v82;
      *(v51 + *(v82 + 48)) = v52;
      v54 = v80;
      sub_224A3796C(v51, v80, &qword_27D6F47F8, &unk_224DC2000);
      v55 = *(v54 + *(v53 + 48));
      v56 = v52;

      v87 = sub_224DAC248();
      v57 = *(v50 + 8);
      v58 = v86;
      v57(v54, v86);
      v59 = v81;
      sub_224A3796C(v51, v81, &qword_27D6F47F8, &unk_224DC2000);

      v60 = sub_224DAC258();
      sub_224A3311C(v51, &qword_27D6F47F8, &unk_224DC2000);
      v57(v59, v58);
      v45 = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_224AD9600(0, v45[2] + 1, 1, v45);
      }

      v62 = v45[2];
      v61 = v45[3];
      v43 = v83;
      if (v62 >= v61 >> 1)
      {
        v45 = sub_224AD9600((v61 > 1), v62 + 1, 1, v45);
      }

      v42 &= v42 - 1;
      v45[2] = v62 + 1;
      v63 = &v45[2 * v62];
      v63[4] = v87;
      v63[5] = v60;
      v39 = v84;
    }

    while (v42);
LABEL_22:
    while (1)
    {
      v46 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v46 >= v43)
      {

        sub_224B42A30(v45);
        v18 = v74;
        (*v73)(v74, v76);
        v20 = v77;
        v24 = v78;
        v15 = v75;
        goto LABEL_6;
      }

      v42 = *(v39 + 8 * v46);
      ++v44;
      if (v42)
      {
        v88 = v45;
        v44 = v46;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  else
  {
    if (v66 <= v20 + 1)
    {
      v26 = v20 + 1;
    }

    else
    {
      v26 = v66;
    }

    v27 = v26 - 1;
    while (1)
    {
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v25 >= v66)
      {
        v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
        (*(*(v64 - 8) + 56))(v15, 1, 1, v64);
        v78 = 0;
        goto LABEL_16;
      }

      v24 = *(v67 + 8 * v25);
      ++v20;
      if (v24)
      {
        goto LABEL_15;
      }
    }
  }

  __break(1u);
}

void sub_224D81D64(uint64_t a1)
{
  v3 = sub_224DAC268();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v73 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v69 = &v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v55 - v16;
  v63 = sub_224DABE18();
  v18 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v19);
  v62 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = MEMORY[0x277D84F90];
  v61 = *(v1 + 232);
  v21 = sub_224DAC108();
  v78 = a1;
  v22 = sub_224A392FC(sub_224D8E6EC, v77, v21);
  v23 = v22;
  v57 = *(v22 + 16);
  if (v57)
  {
    v24 = 0;
    v60 = v22 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v59 = v18 + 16;
    v58 = v18 + 8;
    v65 = v4 + 32;
    v66 = v4 + 16;
    v68 = v4;
    v71 = (v4 + 8);
    v72 = MEMORY[0x277D84F90];
    v76 = v14;
    v67 = v17;
    v56 = v18;
    v55 = v22;
    while (1)
    {
      if (v24 >= *(v23 + 16))
      {
        __break(1u);
        return;
      }

      v25 = *(v18 + 72);
      v64 = v24;
      v27 = v62;
      v26 = v63;
      (*(v18 + 16))(v62, v60 + v25 * v24, v63);
      v28 = sub_224DAC168();
      (*(v18 + 8))(v27, v26);
      if (v28)
      {
        break;
      }

LABEL_4:
      v24 = v64 + 1;
      if (v64 + 1 == v57)
      {
        goto LABEL_28;
      }
    }

    v29 = 0;
    v70 = v28;
    v30 = v28 + 64;
    v31 = 1 << *(v28 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(v28 + 64);
    v34 = (v31 + 63) >> 6;
    v74 = v34;
    v75 = v28 + 64;
    while (v33)
    {
      v35 = v29;
LABEL_21:
      v38 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v39 = v38 | (v35 << 6);
      v41 = v69;
      v40 = v70;
      v42 = v68;
      (*(v68 + 16))(v69, *(v70 + 48) + *(v68 + 72) * v39, v3);
      v43 = *(*(v40 + 56) + 8 * v39);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      v45 = *(v44 + 48);
      v46 = *(v42 + 32);
      v14 = v76;
      v46(v76, v41, v3);
      *&v14[v45] = v43;
      (*(*(v44 - 8) + 56))(v14, 0, 1, v44);
      v47 = v43;
      v17 = v67;
LABEL_22:
      sub_224A44E4C(v14, v17, &qword_27D6F47F0, &unk_224DB7850);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      if ((*(*(v48 - 8) + 48))(v17, 1, v48) == 1)
      {

        v18 = v56;
        v23 = v55;
        goto LABEL_4;
      }

      v49 = *&v17[*(v48 + 48)];
      v50 = v17;
      v51 = v73;
      sub_224DABE58();
      sub_224DAC248();
      v52 = *v71;
      v53 = (*v71)(v51, v3);
      MEMORY[0x22AA5D350](v53);
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224DAF038();
      }

      sub_224DAF078();

      v72 = v79;
      v52(v50, v3);
      v30 = v75;
      v14 = v76;
      v17 = v50;
      v34 = v74;
    }

    if (v34 <= v29 + 1)
    {
      v36 = v29 + 1;
    }

    else
    {
      v36 = v34;
    }

    v37 = v36 - 1;
    while (1)
    {
      v35 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v35 >= v34)
      {
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
        (*(*(v54 - 8) + 56))(v14, 1, 1, v54);
        v33 = 0;
        v29 = v37;
        goto LABEL_22;
      }

      v33 = *(v30 + 8 * v35);
      ++v29;
      if (v33)
      {
        v29 = v35;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

LABEL_28:
}

uint64_t sub_224D8238C(uint64_t a1)
{
  v92 = a1;
  v79 = sub_224DAC268();
  v87 = *(v79 - 8);
  v3 = MEMORY[0x28223BE20](v79, v2);
  v90 = v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v85 = v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v93 = v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v86 = v75 - v12;
  v13 = sub_224DABE18();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v91 = v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v78 = v75 - v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = v75 - v22;
  v24 = MEMORY[0x277D84F90];
  v95 = MEMORY[0x277D84F90];
  v77 = *(v1 + 232);
  result = sub_224DAC108();
  v26 = result;
  v27 = *(result + 16);
  v80 = v13;
  v81 = v14;
  v89 = v27;
  if (v27)
  {
    v28 = 0;
    v88 = v14 + 16;
    v84 = (v14 + 8);
    v29 = (v14 + 32);
    v82 = MEMORY[0x277D84F90];
    while (v28 < *(v26 + 16))
    {
      v30 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v31 = *(v81 + 72);
      (*(v81 + 16))(v23, v26 + v30 + v31 * v28, v13);
      sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
      v32 = sub_224DABDB8();
      v33 = sub_224DAF6A8();

      if (v33)
      {
        v34 = *v29;
        (*v29)(v91, v23, v13);
        v35 = v82;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v94 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA49C(0, *(v35 + 16) + 1, 1);
          v35 = v94;
        }

        v38 = *(v35 + 16);
        v37 = *(v35 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_224ADA49C((v37 > 1), v38 + 1, 1);
          v35 = v94;
        }

        *(v35 + 16) = v38 + 1;
        v82 = v35;
        v39 = v35 + v30 + v38 * v31;
        v13 = v80;
        result = (v34)(v39, v91, v80);
      }

      else
      {
        result = (*v84)(v23, v13);
      }

      if (v89 == ++v28)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v82 = v24;
LABEL_13:

    result = v82;
    v75[0] = *(v82 + 16);
    if (!v75[0])
    {
LABEL_41:

      return MEMORY[0x277D84F90];
    }

    v40 = 0;
    v41 = v81;
    v76 = v82 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v75[2] = v81 + 16;
    v75[1] = v81 + 8;
    v42 = v86;
    v83 = v87 + 32;
    v84 = (v87 + 16);
    v43 = (v87 + 8);
    v89 = MEMORY[0x277D84F90];
    v44 = v79;
    v45 = v93;
    while (v40 < *(result + 16))
    {
      v46 = v43;
      v47 = v78;
      v48 = v80;
      (*(v41 + 16))(v78, v76 + *(v41 + 72) * v40, v80);
      v49 = sub_224DAC168();
      (*(v41 + 8))(v47, v48);
      if (v49)
      {
        v79 = v40;
        v50 = 0;
        v88 = v49;
        v51 = v49 + 64;
        v52 = 1 << *(v49 + 32);
        if (v52 < 64)
        {
          v53 = ~(-1 << v52);
        }

        else
        {
          v53 = -1;
        }

        v54 = v53 & *(v49 + 64);
        v55 = (v52 + 63) >> 6;
        v43 = v46;
        v91 = v55;
        v92 = v49 + 64;
        while (v54)
        {
          v56 = v50;
LABEL_33:
          v59 = __clz(__rbit64(v54));
          v54 &= v54 - 1;
          v60 = v59 | (v56 << 6);
          v61 = v87;
          v62 = v88;
          v63 = v85;
          (*(v87 + 16))(v85, *(v88 + 48) + *(v87 + 72) * v60, v44);
          v64 = *(*(v62 + 56) + 8 * v60);
          v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          v66 = *(v65 + 48);
          v67 = *(v61 + 32);
          v45 = v93;
          v67(v93, v63, v44);
          *(v45 + v66) = v64;
          (*(*(v65 - 8) + 56))(v45, 0, 1, v65);
          v68 = v64;
          v42 = v86;
LABEL_34:
          sub_224A44E4C(v45, v42, &qword_27D6F47F0, &unk_224DB7850);
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          if ((*(*(v69 - 8) + 48))(v42, 1, v69) == 1)
          {

            v41 = v81;
            v40 = v79;
            goto LABEL_16;
          }

          v70 = *(v42 + *(v69 + 48));
          v71 = v90;
          sub_224DABE58();
          sub_224DAC248();
          v72 = *v43;
          v73 = (*v43)(v71, v44);
          MEMORY[0x22AA5D350](v73);
          if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_224DAF038();
          }

          sub_224DAF078();

          v89 = v95;
          v72(v42, v44);
          v51 = v92;
          v45 = v93;
          v55 = v91;
        }

        if (v55 <= v50 + 1)
        {
          v57 = v50 + 1;
        }

        else
        {
          v57 = v55;
        }

        v58 = v57 - 1;
        while (1)
        {
          v56 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            break;
          }

          if (v56 >= v55)
          {
            v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
            (*(*(v74 - 8) + 56))(v45, 1, 1, v74);
            v54 = 0;
            v50 = v58;
            goto LABEL_34;
          }

          v54 = *(v51 + 8 * v56);
          ++v50;
          if (v54)
          {
            v50 = v56;
            goto LABEL_33;
          }
        }

        __break(1u);
        goto LABEL_41;
      }

      v43 = v46;
LABEL_16:
      ++v40;
      result = v82;
      if (v40 == v75[0])
      {

        return v89;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D82B64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v87 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v6 = MEMORY[0x28223BE20](v97, v5);
  v96 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v95 = &v74 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v94 = &v74 - v12;
  v103 = sub_224DABE18();
  v101 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v13);
  v98 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_224DACB98();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v15);
  v85 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_224DACB08();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v17);
  v83 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_224DACB28();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v19);
  v78 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_224DACC88();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v21);
  v77 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_224DA9878();
  v23 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v24);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v74 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32, v34);
  v36 = &v74 - v35;
  (*(v28 + 16))(v31, a1, v27);
  sub_224DAA278();
  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService), *(v3 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService + 24));
  sub_224DA9868();
  sub_224DAD1B8();
  (*(v23 + 8))(v26, v102);
  (*(v33 + 8))(v36, v32);
  v37 = sub_224DAC148();
  v105 = a1;
  v38 = sub_224BA08E4(sub_224D8D8E0, v104, v37);

  v39 = *(v38 + 2);
  if (v39)
  {
    v74 = v3;
    v106 = MEMORY[0x277D84F90];
    sub_224ADA49C(0, v39, 0);
    v102 = v106;
    v40 = v38 + 64;
    result = sub_224DAF798();
    v42 = result;
    v43 = 0;
    v44 = v101;
    v92 = v101 + 32;
    v93 = v101 + 16;
    v88 = v38 + 72;
    v89 = v39;
    v45 = v103;
    v90 = v38 + 64;
    v91 = v38;
    while ((v42 & 0x8000000000000000) == 0 && v42 < 1 << v38[32])
    {
      v47 = v42 >> 6;
      if ((*&v40[8 * (v42 >> 6)] & (1 << v42)) == 0)
      {
        goto LABEL_24;
      }

      v48 = *(v38 + 9);
      v99 = v43;
      v100 = v48;
      v49 = *(v38 + 6);
      v101 = *(v44 + 72);
      v50 = v94;
      (*(v44 + 16))(v94, v49 + v101 * v42, v45);
      v51 = *(*(v38 + 7) + 8 * v42);
      v52 = *(v44 + 32);
      v53 = v95;
      v52(v95, v50, v103);
      *&v53[*(v97 + 48)] = v51;
      v54 = v53;
      v55 = v96;
      sub_224A44E4C(v54, v96, &qword_27D6F6D38, &unk_224DC2010);

      v56 = v98;
      v57 = v55;
      v45 = v103;
      v52(v98, v57, v103);
      v58 = v102;
      v106 = v102;
      v60 = *(v102 + 16);
      v59 = *(v102 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_224ADA49C((v59 > 1), v60 + 1, 1);
        v56 = v98;
        v58 = v106;
      }

      *(v58 + 16) = v60 + 1;
      v61 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v102 = v58;
      result = (v52)(v58 + v61 + v60 * v101, v56, v45);
      v38 = v91;
      v46 = 1 << v91[32];
      if (v42 >= v46)
      {
        goto LABEL_25;
      }

      v40 = v90;
      v62 = *&v90[8 * v47];
      if ((v62 & (1 << v42)) == 0)
      {
        goto LABEL_26;
      }

      if (v100 != *(v91 + 9))
      {
        goto LABEL_27;
      }

      v63 = v62 & (-2 << (v42 & 0x3F));
      if (v63)
      {
        v46 = __clz(__rbit64(v63)) | v42 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v64 = v91;
        v65 = v47 << 6;
        v66 = v47 + 1;
        v67 = &v88[8 * v47];
        while (v66 < (v46 + 63) >> 6)
        {
          v69 = *v67++;
          v68 = v69;
          v65 += 64;
          ++v66;
          if (v69)
          {
            result = sub_224A3E204(v42, v100, 0);
            v46 = __clz(__rbit64(v68)) + v65;
            goto LABEL_19;
          }
        }

        result = sub_224A3E204(v42, v100, 0);
LABEL_19:
        v38 = v64;
      }

      v43 = v99 + 1;
      v42 = v46;
      if (v99 + 1 == v89)
      {

        v70 = v87;
        v71 = v86;
        v72 = v102;
        goto LABEL_22;
      }
    }

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

  else
  {

    v72 = MEMORY[0x277D84F90];
    v70 = v87;
    v71 = v86;
LABEL_22:
    (*(v75 + 104))(v78, *MEMORY[0x277CF9B50], v76);
    (*(v81 + 104))(v83, *MEMORY[0x277CF9B48], v82);
    (*(v84 + 16))(v85, v70, v71);
    sub_224DACC48();
    v73 = v77;
    sub_224DACC38();
    sub_224A3933C(v72, v73);

    return (*(v79 + 8))(v73, v80);
  }

  return result;
}

uint64_t sub_224D83568(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v27 = a1;
  v28 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v10 = v9 - 8;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v26 - v16;
  v18 = *a2;
  v19 = sub_224DABE18();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v17, v27, v19);
  *&v17[*(v10 + 56)] = v18;
  sub_224A3796C(v17, v14, &qword_27D6F6D38, &unk_224DC2010);
  v21 = v5;

  v22 = sub_224DABDB8();
  (*(v20 + 8))(v14, v19);
  v23 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v21 + 16))(v8, &v22[v23], v4);

  sub_224A33088(&qword_2813518E8, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FB8]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  if (v30 == v29)
  {
    v24 = 1;
  }

  else
  {
    v24 = sub_224DAFD88();
  }

  (*(v21 + 8))(v8, v4);
  sub_224A3311C(v17, &qword_27D6F6D38, &unk_224DC2010);

  return v24 & 1;
}

uint64_t sub_224D83880(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v87 = a3;
  v86 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v7 = MEMORY[0x28223BE20](v97, v6);
  v96 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v95 = &v73 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v94 = &v73 - v13;
  v103 = sub_224DABE18();
  v14 = *(v103 - 8);
  MEMORY[0x28223BE20](v103, v15);
  v98 = &v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_224DACB98();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84, v17);
  v85 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_224DACB08();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v19);
  v82 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_224DACB28();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75, v21);
  v77 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_224DACC88();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80, v23);
  v76 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v73 - v28;
  v30 = [a1 extensionIdentity];
  sub_224DAF528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  v32 = [a1 kind];
  v33 = sub_224DAEE18();
  v35 = v34;

  *(inited + 32) = v33;
  *(inited + 40) = v35;
  v36 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224D80D10(v29, v36);

  (*(v26 + 8))(v29, v25);
  v37 = sub_224DAC148();
  swift_unknownObjectRetain();
  v38 = sub_224D8D6E4(v37, a1);

  swift_unknownObjectRelease();
  v39 = *(v38 + 16);
  if (v39)
  {
    v73 = v4;
    v104 = MEMORY[0x277D84F90];
    sub_224ADA49C(0, v39, 0);
    v102 = v104;
    v40 = v38 + 64;
    result = sub_224DAF798();
    v42 = result;
    v43 = 0;
    v92 = v14 + 32;
    v93 = v14 + 16;
    v88 = v38 + 72;
    v44 = v103;
    v89 = v39;
    v90 = v38 + 64;
    v91 = v38;
    while ((v42 & 0x8000000000000000) == 0 && v42 < 1 << *(v38 + 32))
    {
      v46 = v42 >> 6;
      if ((*(v40 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
      {
        goto LABEL_24;
      }

      v47 = *(v38 + 36);
      v99 = v43;
      v100 = v47;
      v48 = *(v38 + 48);
      v101 = *(v14 + 72);
      v49 = v94;
      (*(v14 + 16))(v94, v48 + v101 * v42, v44);
      v50 = *(*(v38 + 56) + 8 * v42);
      v51 = *(v14 + 32);
      v52 = v95;
      v51(v95, v49, v103);
      *&v52[*(v97 + 48)] = v50;
      v53 = v52;
      v54 = v96;
      sub_224A44E4C(v53, v96, &qword_27D6F6D38, &unk_224DC2010);

      v55 = v98;
      v56 = v54;
      v44 = v103;
      v51(v98, v56, v103);
      v57 = v102;
      v104 = v102;
      v59 = *(v102 + 16);
      v58 = *(v102 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_224ADA49C((v58 > 1), v59 + 1, 1);
        v55 = v98;
        v57 = v104;
      }

      *(v57 + 16) = v59 + 1;
      v60 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v102 = v57;
      result = (v51)(v57 + v60 + v59 * v101, v55, v44);
      v38 = v91;
      v45 = 1 << *(v91 + 32);
      if (v42 >= v45)
      {
        goto LABEL_25;
      }

      v40 = v90;
      v61 = *(v90 + 8 * v46);
      if ((v61 & (1 << v42)) == 0)
      {
        goto LABEL_26;
      }

      if (v100 != *(v91 + 36))
      {
        goto LABEL_27;
      }

      v62 = v61 & (-2 << (v42 & 0x3F));
      if (v62)
      {
        v45 = __clz(__rbit64(v62)) | v42 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v63 = v91;
        v64 = v46 << 6;
        v65 = v46 + 1;
        v66 = (v88 + 8 * v46);
        while (v65 < (v45 + 63) >> 6)
        {
          v68 = *v66++;
          v67 = v68;
          v64 += 64;
          ++v65;
          if (v68)
          {
            result = sub_224A3E204(v42, v100, 0);
            v45 = __clz(__rbit64(v67)) + v64;
            goto LABEL_19;
          }
        }

        result = sub_224A3E204(v42, v100, 0);
LABEL_19:
        v38 = v63;
      }

      v43 = v99 + 1;
      v42 = v45;
      if (v99 + 1 == v89)
      {

        v69 = v86;
        v70 = v85;
        v71 = v102;
        goto LABEL_22;
      }
    }

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

  else
  {

    v71 = MEMORY[0x277D84F90];
    v70 = v85;
    v69 = v86;
LABEL_22:
    (*(v74 + 104))(v77, *MEMORY[0x277CF9B50], v75);
    (*(v79 + 104))(v82, *MEMORY[0x277CF9B48], v81);
    (*(v83 + 16))(v70, v69, v84);
    sub_224DACBF8();
    sub_224DACC28();
    v72 = v76;
    sub_224DACC18();
    sub_224A3933C(v71, v72);

    return (*(v78 + 8))(v72, v80);
  }

  return result;
}

uint64_t sub_224D84200(uint64_t a1, int64_t a2)
{
  v3 = v2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v6 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v7);
  v65 = v54 - v8;
  v56 = sub_224DA9878();
  v55 = *(v56 - 8);
  v10 = MEMORY[0x28223BE20](v56, v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v61 = v54 - v14;
  if (a2)
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider), *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider + 24));
    result = sub_224DAD8C8();
    if (result)
    {
      MEMORY[0x28223BE20](result, v16);
      v54[-2] = a1;
      v17 = sub_224DACF48();

      sub_224DA9868();
      v54[1] = v17;
      v18 = sub_224DACF18();
      v19 = v18;
      if (v18 >> 62)
      {
        goto LABEL_46;
      }

      for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_224DAF838())
      {
        v21 = 0;
        v58 = (v3 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService);
        v59 = v19 + 32;
        v60 = v19 & 0xFFFFFFFFFFFFFF8;
        v22 = a2 + 56;
        v57 = (v6 + 8);
        v6 = v19 & 0xC000000000000001;
        v67 = i;
        while (1)
        {
          if (v6)
          {
            v23 = MEMORY[0x22AA5DCC0](v21, v19);
          }

          else
          {
            if (v21 >= *(v60 + 16))
            {
              goto LABEL_45;
            }

            v23 = *(v59 + 8 * v21);
          }

          v24 = v23;
          if (__OFADD__(v21++, 1))
          {
            break;
          }

          v26 = [v23 kind];
          v27 = sub_224DAEE18();
          v29 = v28;

          if (*(a2 + 16) && (sub_224DAFE68(), sub_224DAEE78(), v30 = sub_224DAFEA8(), v31 = -1 << *(a2 + 32), v32 = v30 & ~v31, ((*(v22 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
          {
            v3 = ~v31;
            while (1)
            {
              v33 = (*(a2 + 48) + 16 * v32);
              v34 = *v33 == v27 && v33[1] == v29;
              if (v34 || (sub_224DAFD88() & 1) != 0)
              {
                break;
              }

              v32 = (v32 + 1) & v3;
              if (((*(v22 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
              {
                goto LABEL_6;
              }
            }

            v35 = v58[4];
            v63 = v58[3];
            v64 = v35;
            v62 = __swift_project_boxed_opaque_existential_1(v58, v63);
            v36 = [v24 extensionIdentity];
            v37 = v65;
            sub_224DAF528();

            v38 = [v24 kind];
            sub_224DAEE18();
            v3 = v19;

            sub_224DAD1B8();

            (*v57)(v37, v66);
          }

          else
          {
LABEL_6:
          }

          if (v21 == v67)
          {
            goto LABEL_47;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        ;
      }

LABEL_47:

      return (*(v55 + 8))(v61, v56);
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider), *(v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_descriptorProvider + 24));
    result = sub_224DAD8C8();
    if (result)
    {
      v63 = v2;
      MEMORY[0x28223BE20](result, v39);
      v54[-2] = a1;
      v40 = sub_224DACF48();

      v19 = sub_224DACF58();
      v61 = v40;

      sub_224DA9868();
      v64 = v12;
      if ((v19 & 0xC000000000000001) != 0)
      {
        sub_224DAF7E8();
        sub_224DAF538();
        sub_224A94F2C(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);
        sub_224DAF1F8();
        v19 = v68;
        v41 = v69;
        v42 = v70;
        v3 = v71;
        v43 = v72;
      }

      else
      {
        v3 = 0;
        v44 = -1 << *(v19 + 32);
        v41 = v19 + 56;
        v42 = ~v44;
        v45 = -v44;
        if (v45 < 64)
        {
          v46 = ~(-1 << v45);
        }

        else
        {
          v46 = -1;
        }

        v43 = v46 & *(v19 + 56);
      }

      v60 = v42;
      a2 = (v42 + 64) >> 6;
      v62 = (v6 + 8);
      if (v19 < 0)
      {
        goto LABEL_38;
      }

      while (1)
      {
        v47 = v3;
        v48 = v43;
        v49 = v3;
        if (!v43)
        {
          break;
        }

LABEL_36:
        v50 = (v48 - 1) & v48;
        v51 = *(*(v19 + 48) + ((v49 << 9) | (8 * __clz(__rbit64(v48)))));
        if (!v51)
        {
          goto LABEL_42;
        }

        while (1)
        {
          __swift_project_boxed_opaque_existential_1((v63 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService), *(v63 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_reloadStateService + 24));
          v6 = a2;
          v53 = v65;
          v67 = v50;
          sub_224DAF528();
          sub_224DAD1B8();

          (*v62)(v53, v66);
          v3 = v49;
          v43 = v67;
          if ((v19 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_38:
          v52 = sub_224DAF878();
          if (v52)
          {
            v73 = v52;
            sub_224DAF538();
            swift_dynamicCast();
            v51 = v74;
            v49 = v3;
            v50 = v43;
            if (v74)
            {
              continue;
            }
          }

          goto LABEL_42;
        }
      }

      while (1)
      {
        v49 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_44;
        }

        if (v49 >= a2)
        {
          break;
        }

        v48 = *(v41 + 8 * v49);
        ++v47;
        if (v48)
        {
          goto LABEL_36;
        }
      }

LABEL_42:
      (*(v55 + 8))(v64, v56);

      return sub_224A3B7E4(v19);
    }
  }

  return result;
}

uint64_t sub_224D849BC(int64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v26 = sub_224DACB98();
  v5 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v6);
  v25 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DACB08();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = sub_224DACB28();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_224DACC88();
  v15 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224D84200(a2, a1);
  v19 = sub_224DAC108();
  v29 = a2;
  v30 = a1;
  v20 = sub_224A392FC(sub_224D8D3E8, v28, v19);
  (*(v11 + 104))(v14, *MEMORY[0x277CF9B50], v10);
  v21 = v27;
  sub_224DACB68();
  (*(v5 + 16))(v25, v21, v26);
  sub_224DACC48();
  sub_224DACC38();
  sub_224A3933C(v20, v18);

  return (*(v15 + 8))(v18, v24);
}

uint64_t sub_224D84C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a3;
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v36[0] = v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v39 = v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = v36 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = v36 - v22;
  v36[1] = a1;
  v24 = sub_224DABDB8();
  v25 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v24 + v25, v23, &unk_27D6F5060, &qword_224DB5620);

  (*(v5 + 16))(v20, v38, v4);
  (*(v5 + 56))(v20, 0, 1, v4);
  v26 = *(v9 + 56);
  sub_224A3796C(v23, v12, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v20, &v12[v26], &unk_27D6F5060, &qword_224DB5620);
  v27 = *(v5 + 48);
  if (v27(v12, 1, v4) == 1)
  {
    sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v23, &unk_27D6F5060, &qword_224DB5620);
    if (v27(&v12[v26], 1, v4) == 1)
    {
      sub_224A3311C(v12, &unk_27D6F5060, &qword_224DB5620);
LABEL_9:
      v33 = sub_224DABDD8();
      v28 = sub_224A3A53C(v33, v34, v37);

      return v28 & 1;
    }

    goto LABEL_6;
  }

  sub_224A3796C(v12, v39, &unk_27D6F5060, &qword_224DB5620);
  if (v27(&v12[v26], 1, v4) == 1)
  {
    sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v23, &unk_27D6F5060, &qword_224DB5620);
    (*(v5 + 8))(v39, v4);
LABEL_6:
    sub_224A3311C(v12, &qword_27D6F5B90, &qword_224DB5C50);
    goto LABEL_7;
  }

  v29 = &v12[v26];
  v30 = v36[0];
  (*(v5 + 32))(v36[0], v29, v4);
  sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
  v31 = v39;
  LODWORD(v38) = sub_224DAEDD8();
  v32 = *(v5 + 8);
  v32(v30, v4);
  sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3311C(v23, &unk_27D6F5060, &qword_224DB5620);
  v32(v31, v4);
  sub_224A3311C(v12, &unk_27D6F5060, &qword_224DB5620);
  if (v38)
  {
    goto LABEL_9;
  }

LABEL_7:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_224D85158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v33 = a1;
  v4 = sub_224DACB98();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v36 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DACB08();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v32[1] = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[0] = sub_224DACB28();
  v10 = *(v32[0] - 8);
  MEMORY[0x28223BE20](v32[0], v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_224DACC88();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v14);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = v32 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = v32 - v25;
  (*(v18 + 16))(v21, a2, v17);
  sub_224DAA278();
  v27 = v33;
  sub_224D80D10(v26, v33);
  (*(v23 + 8))(v26, v22);
  v28 = sub_224DAC108();
  v41 = a2;
  v42 = v27;
  v29 = sub_224A392FC(sub_224D8D3C8, v40, v28);
  (*(v10 + 104))(v13, *MEMORY[0x277CF9B50], v32[0]);
  v30 = v39;
  sub_224DACB68();
  (*(v37 + 16))(v36, v30, v38);
  sub_224DACC48();
  sub_224DACC38();
  sub_224A3933C(v29, v16);

  return (*(v34 + 8))(v16, v35);
}

uint64_t sub_224D85594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15 - v6;
  v8 = sub_224DABDB8();
  v9 = *MEMORY[0x277CFA138];
  swift_beginAccess();
  (*(v4 + 16))(v7, &v8[v9], v3);

  sub_224A33088(&qword_2813518E8, &unk_27D6F3920, &qword_224DB35B0, MEMORY[0x277CF9FB8]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  if (v17 == v16)
  {
    (*(v4 + 8))(v7, v3);

LABEL_4:
    v12 = sub_224DABDD8();
    v11 = sub_224A3A53C(v12, v13, v15);

    return v11 & 1;
  }

  v10 = sub_224DAFD88();
  (*(v4 + 8))(v7, v3);

  v11 = 0;
  if (v10)
  {
    goto LABEL_4;
  }

  return v11 & 1;
}

uint64_t sub_224D857C4(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v27 = sub_224DACB98();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v5);
  v26 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_224DACB08();
  v7 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACB28();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_224DACC88();
  v16 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v17);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  sub_224D84200(a1, 0);
  v20 = sub_224DAC108();
  v30 = a1;
  v21 = sub_224A392FC(sub_224D8D388, v29, v20);
  (*(v12 + 104))(v15, *MEMORY[0x277CF9B50], v11);
  (*(v7 + 104))(v10, *MEMORY[0x277CF9B48], v25);
  (*(v4 + 16))(v26, v28, v27);
  sub_224DACC48();
  sub_224DACC38();
  sub_224A3933C(v21, v19);

  return (*(v16 + 8))(v19, v24);
}

uint64_t sub_224D85AE8(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v33 = &v33 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v35 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v33 - v20;
  v22 = sub_224DABDB8();
  v23 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v22 + v23, v21, &unk_27D6F5060, &qword_224DB5620);

  (*(v3 + 16))(v18, v34, v2);
  (*(v3 + 56))(v18, 0, 1, v2);
  v24 = *(v7 + 56);
  sub_224A3796C(v21, v10, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v18, &v10[v24], &unk_27D6F5060, &qword_224DB5620);
  v25 = v3;
  v26 = *(v3 + 48);
  if (v26(v10, 1, v2) != 1)
  {
    sub_224A3796C(v10, v35, &unk_27D6F5060, &qword_224DB5620);
    if (v26(&v10[v24], 1, v2) != 1)
    {
      v28 = v25;
      v29 = &v10[v24];
      v30 = v33;
      (*(v25 + 32))(v33, v29, v2);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
      v27 = sub_224DAEDD8();
      v31 = *(v28 + 8);
      v31(v30, v2);
      sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
      sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
      v31(v35, v2);
      sub_224A3311C(v10, &unk_27D6F5060, &qword_224DB5620);
      return v27 & 1;
    }

    sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
    (*(v25 + 8))(v35, v2);
    goto LABEL_6;
  }

  sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
  if (v26(&v10[v24], 1, v2) != 1)
  {
LABEL_6:
    sub_224A3311C(v10, &qword_27D6F5B90, &qword_224DB5C50);
    v27 = 0;
    return v27 & 1;
  }

  sub_224A3311C(v10, &unk_27D6F5060, &qword_224DB5620);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_224D85F74(void *a1, int a2, uint64_t a3)
{
  v54 = a3;
  v52 = a2;
  v53 = sub_224DACB98();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v4);
  v50 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DACB08();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v45 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_224DACB28();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v9);
  v41 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DACC88();
  v48 = *(v11 - 8);
  v49 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_224DABE18();
  v14 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v15);
  v39 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v17 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v18);
  v20 = &v37 - v19;
  v21 = [a1 extensionIdentity];
  sub_224DAF528();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  v37 = xmmword_224DB3100;
  *(inited + 16) = xmmword_224DB3100;
  v23 = [a1 kind];
  v24 = sub_224DAEE18();
  v26 = v25;

  *(inited + 32) = v24;
  *(inited + 40) = v26;
  v27 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224D80D10(v20, v27);

  (*(v17 + 8))(v20, v38);
  v28 = a1;
  v29 = v39;
  sub_224DABDE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3598, &qword_224DB3B50);
  v30 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v37;
  v32 = v40;
  (*(v14 + 16))(v31 + v30, v29, v40);
  (*(v42 + 104))(v41, *MEMORY[0x277CF9B50], v44);
  v33 = MEMORY[0x277CF9B48];
  if ((v52 & 1) == 0)
  {
    v33 = MEMORY[0x277CF9B40];
  }

  (*(v46 + 104))(v45, *v33, v47);
  (*(v51 + 16))(v50, v54, v53);
  sub_224DACC48();
  v34 = v43;
  sub_224DACC38();
  sub_224A3933C(v31, v34);
  swift_setDeallocating();
  v35 = *(v14 + 8);
  v35(v31 + v30, v32);
  swift_deallocClassInstance();
  (*(v48 + 8))(v34, v49);
  return (v35)(v29, v32);
}

void sub_224D86530(void *a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v101 = a2;
  v77 = a3;
  v4 = sub_224DA9878();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_224DAC268();
  v9 = *(v105 - 8);
  MEMORY[0x28223BE20](v105, v10);
  v93 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v97 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v98 = &v76 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v20 = MEMORY[0x28223BE20](v18 - 8, v19);
  v78 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20, v22);
  v82 = &v76 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v89 = &v76 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v76 - v29;
  v31 = sub_224DABE18();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v35 = &v76 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a1;
  sub_224DABDE8();
  v37 = sub_224DAC168();
  if (!v37)
  {
    (*(v32 + 8))(v35, v31);
    (*(v5 + 56))(v77, 1, 1, v4);
    return;
  }

  v86 = v8;
  v76 = v35;
  v39 = *(v5 + 56);
  v38 = v5 + 56;
  v85 = v30;
  v88 = v4;
  v40 = v37;
  v80 = v39;
  v39(v30, 1, 1, v4);
  v41 = v40 + 64;
  v42 = 1 << *(v40 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v40 + 64);
  v83 = (v42 + 63) >> 6;
  v91 = v9 + 16;
  v90 = v9 + 32;
  v87 = (v38 - 8);
  v84 = (v38 - 24);
  v81 = v38;
  v79 = (v38 - 48);
  v94 = v40;
  v95 = (v9 + 8);

  v45 = 0;
  v96 = v9;
  v99 = v31;
  v100 = v32;
  v92 = v40 + 64;
  while (v44)
  {
    v47 = v45;
LABEL_17:
    v50 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v51 = v50 | (v47 << 6);
    v53 = v93;
    v52 = v94;
    v54 = v105;
    (*(v9 + 16))(v93, *(v94 + 48) + *(v9 + 72) * v51, v105);
    v101 = *(*(v52 + 56) + 8 * v51);
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
    v56 = v9;
    v57 = *(v55 + 48);
    v58 = v97;
    (*(v56 + 32))(v97, v53, v54);
    v59 = v101;
    *&v58[v57] = v101;
    (*(*(v55 - 8) + 56))(v58, 0, 1, v55);
    v60 = v59;
    v31 = v99;
    v32 = v100;
    v41 = v92;
LABEL_18:
    v61 = v58;
    v62 = v98;
    sub_224A44E4C(v61, v98, &qword_27D6F47F0, &unk_224DB7850);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
    if ((*(*(v63 - 8) + 48))(v62, 1, v63) == 1)
    {

      (*(v32 + 8))(v76, v31);
      sub_224A44E4C(v85, v77, &qword_27D6F32B0, &qword_224DB3EA0);
      return;
    }

    v64 = *(v62 + *(v63 + 48));
    sub_224DABE68();
    if (!v103)
    {

      sub_224A3311C(&v102, &unk_27D6F3CB0, &unk_224DB7860);
      v9 = v96;
      v46 = v105;
      goto LABEL_6;
    }

    sub_224A36F98(&v102, v104);
    __swift_project_boxed_opaque_existential_1(v104, v104[3]);
    v65 = v89;
    sub_224DAEAF8();
    v66 = *v87;
    v67 = v88;
    if ((*v87)(v65, 1, v88) == 1)
    {

      sub_224A3311C(v65, &qword_27D6F32B0, &qword_224DB3EA0);
      __swift_destroy_boxed_opaque_existential_1(v104);
      v46 = v105;
      v9 = v96;
      v31 = v99;
      v32 = v100;
      goto LABEL_6;
    }

    v101 = *v84;
    v101(v86, v65, v67);
    v68 = v85;
    v69 = v82;
    sub_224A3796C(v85, v82, &qword_27D6F32B0, &qword_224DB3EA0);
    if (v66(v69, 1, v67) == 1)
    {

      sub_224A3311C(v69, &qword_27D6F32B0, &qword_224DB3EA0);
      v70 = v86;
    }

    else
    {
      sub_224A3311C(v69, &qword_27D6F32B0, &qword_224DB3EA0);
      v72 = v78;
      sub_224A3796C(v68, v78, &qword_27D6F32B0, &qword_224DB3EA0);
      if (v66(v72, 1, v67) == 1)
      {
        goto LABEL_34;
      }

      v70 = v86;
      v73 = sub_224DA9798();

      v74 = *v79;
      (*v79)(v72, v67);
      if ((v73 & 1) == 0)
      {
        (v74)(v70, v67, &qword_224DB3EA0);
        goto LABEL_29;
      }
    }

    v75 = v85;
    sub_224A3311C(v85, &qword_27D6F32B0, &qword_224DB3EA0);
    v101(v75, v70, v67);
    v80(v75, 0, 1, v67);
LABEL_29:
    v9 = v96;
    v31 = v99;
    __swift_destroy_boxed_opaque_existential_1(v104);
    v46 = v105;
    v62 = v98;
    v32 = v100;
LABEL_6:
    (*v95)(v62, v46);
  }

  if (v83 <= v45 + 1)
  {
    v48 = v45 + 1;
  }

  else
  {
    v48 = v83;
  }

  v49 = v48 - 1;
  while (1)
  {
    v47 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v47 >= v83)
    {
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
      v58 = v97;
      (*(*(v71 - 8) + 56))(v97, 1, 1, v71);
      v44 = 0;
      v45 = v49;
      goto LABEL_18;
    }

    v44 = *(v41 + 8 * v47);
    ++v45;
    if (v44)
    {
      v45 = v47;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_224D86EFC()
{
  v85 = sub_224DAC268();
  v0 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v1);
  v3 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
  MEMORY[0x28223BE20](v87, v4);
  v6 = &v75 - v5;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v8 = MEMORY[0x28223BE20](v80, v7);
  v79 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v75 - v11;
  v13 = sub_224DAC148();
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v91 = v0 + 16;
  v88 = v0;
  v86 = (v0 + 8);
  v81 = v13;

  v19 = 0;
  v94 = MEMORY[0x277D84F98];
  v77 = v14;
  v76 = v18;
  v84 = v6;
  v78 = v12;
  v75 = v3;
LABEL_6:
  if (v17)
  {
    v20 = v19;
LABEL_11:
    v82 = v20;
    v83 = (v17 - 1) & v17;
    v21 = __clz(__rbit64(v17)) | (v20 << 6);
    v22 = v81;
    v23 = *(v81 + 48);
    v24 = sub_224DABE18();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v12, v23 + *(v25 + 72) * v21, v24);
    v26 = *(*(v22 + 56) + 8 * v21);
    v27 = v80;
    *&v12[*(v80 + 48)] = v26;
    v28 = v12;
    v29 = v79;
    sub_224A3796C(v28, v79, &qword_27D6F6D38, &unk_224DC2010);
    v30 = *(v29 + *(v27 + 48));
    v31 = *(v25 + 8);

    v31(v29, v24);
    v32 = v30 + 64;
    v33 = 1 << *(v30 + 32);
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v30 + 64);
    v36 = (v33 + 63) >> 6;
    v92 = v30;

    v37 = 0;
    v38 = v85;
    v39 = v3;
    v89 = v36;
    while (v35)
    {
LABEL_23:
      v41 = __clz(__rbit64(v35)) | (v37 << 6);
      v42 = v92;
      v43 = *(v92 + 48);
      v93 = *(v88 + 72);
      v44 = *(v88 + 16);
      v44(v6, v43 + v93 * v41, v38);
      v45 = *(*(v42 + 56) + 8 * v41);
      *&v6[*(v87 + 48)] = v45;
      v90 = v44;
      v44(v39, v6, v38);
      v46 = v45;
      sub_224DABE68();
      v47 = v96;
      if (v96)
      {
        v48 = __swift_project_boxed_opaque_existential_1(v95, v96);
        v49 = *(v47 - 8);
        MEMORY[0x28223BE20](v48, v48);
        v51 = &v75 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 16))(v51);
        sub_224A3311C(v95, &unk_27D6F3CB0, &unk_224DB7860);
        v52 = v39;
        v53 = sub_224DAEAC8();
        (*(v49 + 8))(v51, v47);
        v54 = v94;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95[0] = v54;
        v57 = sub_224A61E5C(v52);
        v58 = *(v54 + 16);
        v59 = (v56 & 1) == 0;
        v60 = v58 + v59;
        if (__OFADD__(v58, v59))
        {
          goto LABEL_41;
        }

        v61 = v56;
        if (*(v54 + 24) >= v60)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_224B2B3E8();
          }
        }

        else
        {
          sub_224B1ADE0(v60, isUniquelyReferenced_nonNull_native);
          v62 = sub_224A61E5C(v52);
          if ((v61 & 1) != (v63 & 1))
          {
            goto LABEL_43;
          }

          v57 = v62;
        }

        v38 = v85;
        v70 = v95[0];
        v94 = v95[0];
        if (v61)
        {
          *(*(v95[0] + 56) + 8 * v57) = v53;
        }

        else
        {
          *(v95[0] + 8 * (v57 >> 6) + 64) |= 1 << v57;
          v90(v70[6] + v57 * v93, v52, v38);
          *(v70[7] + 8 * v57) = v53;
          v71 = v70[2];
          v72 = __OFADD__(v71, 1);
          v73 = v71 + 1;
          if (v72)
          {
            goto LABEL_42;
          }

          v70[2] = v73;
        }

        v39 = v52;
        (*v86)(v52, v38);
        v6 = v84;
      }

      else
      {
        sub_224A3311C(v95, &unk_27D6F3CB0, &unk_224DB7860);
        v64 = v94;
        v65 = sub_224A61E5C(v39);
        if (v66)
        {
          v67 = v65;
          v68 = swift_isUniquelyReferenced_nonNull_native();
          v95[0] = v64;
          if ((v68 & 1) == 0)
          {
            sub_224B2B3E8();
            v64 = v95[0];
          }

          v69 = *v86;
          (*v86)(*(v64 + 48) + v67 * v93, v38);

          v94 = v64;
          sub_224B1E3C0(v67, v64);
          v39 = v75;
          v69(v75, v38);
        }

        else
        {
          (*v86)(v39, v38);
        }
      }

      v36 = v89;
      v35 &= v35 - 1;
      sub_224A3311C(v6, &qword_27D6F47F8, &unk_224DC2000);
    }

    while (1)
    {
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v40 >= v36)
      {
        v3 = v39;

        v12 = v78;
        sub_224A3311C(v78, &qword_27D6F6D38, &unk_224DC2010);

        v19 = v82;
        v17 = v83;
        v14 = v77;
        v18 = v76;
        goto LABEL_6;
      }

      v35 = *(v32 + 8 * v40);
      ++v37;
      if (v35)
      {
        v37 = v40;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        return v94;
      }

      v17 = *(v14 + 8 * v20);
      ++v19;
      if (v17)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224D876BC(uint64_t a1, uint64_t a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v27 = &v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v28 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v27 - v17;
  v19 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  (*(v4 + 16))(v18, v29, v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v20 = *(v8 + 56);
  sub_224A3796C(a1 + v19, v11, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v18, &v11[v20], &unk_27D6F5060, &qword_224DB5620);
  v21 = *(v4 + 48);
  if (v21(v11, 1, v3) != 1)
  {
    v23 = v28;
    sub_224A3796C(v11, v28, &unk_27D6F5060, &qword_224DB5620);
    if (v21(&v11[v20], 1, v3) != 1)
    {
      v24 = v27;
      (*(v4 + 32))(v27, &v11[v20], v3);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
      v22 = sub_224DAEDD8();
      v25 = *(v4 + 8);
      v25(v24, v3);
      sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
      v25(v23, v3);
      sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
      return v22 & 1;
    }

    sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
    (*(v4 + 8))(v23, v3);
    goto LABEL_6;
  }

  sub_224A3311C(v18, &unk_27D6F5060, &qword_224DB5620);
  if (v21(&v11[v20], 1, v3) != 1)
  {
LABEL_6:
    sub_224A3311C(v11, &qword_27D6F5B90, &qword_224DB5C50);
    v22 = 0;
    return v22 & 1;
  }

  sub_224A3311C(v11, &unk_27D6F5060, &qword_224DB5620);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_224D87AD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6570, &qword_224DB3C40);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v7 - v3;
  sub_224DAF528();
  sub_224A33088(&qword_281351838, &unk_27D6F6570, &qword_224DB3C40, MEMORY[0x277CFA028]);
  sub_224DAEFA8();
  sub_224DAEFA8();
  if (v7[2] == v7[0] && v7[3] == v7[1])
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_224DAFD88();
  }

  (*(v1 + 8))(v4, v0);

  return v5 & 1;
}

uint64_t sub_224D87C60(uint64_t a1, uint64_t *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v7 = v6 - 8;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v21 - v13;
  v15 = *a2;
  v16 = sub_224DABE18();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v14, a1, v16);
  *&v14[*(v7 + 56)] = v15;
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  sub_224A3796C(v14, v11, &qword_27D6F6D38, &unk_224DC2010);

  v18 = sub_224DABDB8();
  (*(v17 + 8))(v11, v16);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  v19 = sub_224DAE338();
  LOBYTE(v11) = sub_224DAF6A8();

  sub_224A3311C(v14, &qword_27D6F6D38, &unk_224DC2010);
  return v11 & 1;
}

void sub_224D87E50(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DACB98();
  v131 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v104 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = sub_224DACB08();
  v126 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v8);
  v129 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_224DACB28();
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123, v10);
  v124 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_224DACC88();
  v128 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v12);
  v125 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DABE18();
  v139 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v137 = &v104 - v20;
  v138 = sub_224DAB258();
  v145 = *(v138 - 8);
  v22 = MEMORY[0x28223BE20](v138, v21);
  v24 = &v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v132 = &v104 - v26;
  v136 = sub_224DAB728();
  v144 = *(v136 - 8);
  MEMORY[0x28223BE20](v136, v27);
  v135 = &v104 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_224DAE4F8();
  v143 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v29);
  v133 = &v104 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_224DAC268();
  v148 = *(v151 - 8);
  MEMORY[0x28223BE20](v151, v31);
  v147 = &v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F0, &unk_224DB7850);
  v35 = MEMORY[0x28223BE20](v33 - 8, v34);
  v37 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v38);
  v40 = &v104 - v39;
  v150 = sub_224DAC168();
  if (v150)
  {
    v120 = v7;
    v121 = v4;
    v41 = sub_224DABDB8();
    swift_beginAccess();

    LOBYTE(v41) = sub_224DAA048();

    if (v41)
    {

      v42 = v145;
      v43 = v24;
      v44 = v138;
      (*(v145 + 16))(v24, v2 + OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger, v138);
      v45 = v139;
      (*(v139 + 16))(v18, a1, v14);
      v46 = sub_224DAB228();
      v47 = v42;
      v48 = sub_224DAF278();
      if (os_log_type_enabled(v46, v48))
      {
        v49 = swift_slowAlloc();
        v151 = v43;
        v50 = v49;
        v51 = swift_slowAlloc();
        v154[0] = v51;
        *v50 = 136446210;
        sub_224A94F2C(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
        v52 = sub_224DAFD28();
        v54 = v53;
        (*(v45 + 8))(v18, v14);
        v55 = sub_224A33F74(v52, v54, v154);

        *(v50 + 4) = v55;
        _os_log_impl(&dword_224A2F000, v46, v48, "Ignoring proactive reload for timeline %{public}s becasue it is remote", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x22AA5EED0](v51, -1, -1);
        MEMORY[0x22AA5EED0](v50, -1, -1);

        (*(v47 + 8))(v151, v138);
      }

      else
      {

        (*(v45 + 8))(v18, v14);
        (*(v42 + 8))(v43, v44);
      }
    }

    else
    {
      v117 = v14;
      v118 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_224DBB050;
      *(v56 + 32) = swift_getKeyPath();
      *(v56 + 40) = swift_getKeyPath();
      *(v56 + 48) = swift_getKeyPath();
      *(v56 + 56) = swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      LODWORD(v116) = 0;
      v119 = v56;
      *(v56 + 64) = KeyPath;
      v59 = *(v150 + 64);
      v140 = v150 + 64;
      v60 = 1 << *(v150 + 32);
      v61 = -1;
      if (v60 < 64)
      {
        v61 = ~(-1 << v60);
      }

      v62 = v61 & v59;
      v111 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger;
      v63 = (v60 + 63) >> 6;
      v142 = v148 + 16;
      v141 = v148 + 32;
      v149 = (v148 + 8);
      v113 = (v144 + 8);
      v112 = (v143 + 8);
      v110 = (v145 + 16);
      v114 = (v139 + 16);
      v115 = (v139 + 8);
      v109 = (v145 + 8);
      *&v58 = 136446210;
      v108 = v58;
      v146 = a1;
      v144 = v37;
      v143 = v40;
      v145 = v63;
      v64 = 0;
      if (v62)
      {
        while (1)
        {
          v65 = v64;
LABEL_16:
          v68 = __clz(__rbit64(v62));
          v62 &= v62 - 1;
          v69 = v68 | (v65 << 6);
          v71 = v150;
          v70 = v151;
          v73 = v147;
          v72 = v148;
          (*(v148 + 16))(v147, *(v150 + 48) + *(v148 + 72) * v69, v151);
          v74 = *(*(v71 + 56) + 8 * v69);
          v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          v76 = *(v75 + 48);
          v77 = *(v72 + 32);
          v37 = v144;
          v77(v144, v73, v70);
          *&v37[v76] = v74;
          (*(*(v75 - 8) + 56))(v37, 0, 1, v75);
          v78 = v74;
          v67 = v65;
          v63 = v145;
          a1 = v146;
          v40 = v143;
LABEL_17:
          sub_224A44E4C(v37, v40, &qword_27D6F47F0, &unk_224DB7850);
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
          if ((*(*(v79 - 8) + 48))(v40, 1, v79) == 1)
          {
            break;
          }

          v80 = *&v40[*(v79 + 48)];
          sub_224DABE68();
          if (v153)
          {
            sub_224A36F98(&v152, v154);
            __swift_project_boxed_opaque_existential_1(v154, v154[3]);
            v82 = v133;
            sub_224DAEA78();
            sub_224DABE38();
            __swift_project_boxed_opaque_existential_1(&v152, v153);
            v83 = v135;
            sub_224DAD168();

            v84 = sub_224DAE4E8();

            (*v113)(v83, v136);
            (*v112)(v82, v134);
            __swift_destroy_boxed_opaque_existential_1(&v152);
            if (v84)
            {

              v63 = v145;
              a1 = v146;
            }

            else
            {
              v85 = v132;
              (*v110)(v132, v118 + v111, v138);
              v86 = v117;
              (*v114)(v137, v146, v117);
              v87 = sub_224DAB228();
              v88 = sub_224DAF2A8();
              v89 = os_log_type_enabled(v87, v88);
              v63 = v145;
              if (v89)
              {
                v90 = swift_slowAlloc();
                v116 = swift_slowAlloc();
                *&v152 = v116;
                *v90 = v108;
                sub_224A94F2C(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
                v107 = v87;
                v106 = v88;
                v91 = v137;
                v105 = sub_224DAFD28();
                v93 = v92;
                (*v115)(v91, v86);
                v94 = sub_224A33F74(v105, v93, &v152);

                *(v90 + 4) = v94;
                v95 = v107;
                _os_log_impl(&dword_224A2F000, v107, v106, "Proactively reloading timeline for %{public}s because environment no longer matches.", v90, 0xCu);
                v96 = v116;
                __swift_destroy_boxed_opaque_existential_1(v116);
                MEMORY[0x22AA5EED0](v96, -1, -1);
                MEMORY[0x22AA5EED0](v90, -1, -1);

                (*v109)(v132, v138);
              }

              else
              {

                (*v115)(v137, v86);
                (*v109)(v85, v138);
              }

              LODWORD(v116) = 1;
              a1 = v146;
            }

            __swift_destroy_boxed_opaque_existential_1(v154);
          }

          else
          {

            sub_224A3311C(&v152, &unk_27D6F3CB0, &unk_224DB7860);
          }

          (*v149)(v40, v151);
          v64 = v67;
          if (!v62)
          {
            goto LABEL_9;
          }
        }

        v97 = v117;
        v98 = v121;
        v99 = v120;
        if (v116)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3598, &qword_224DB3B50);
          v100 = v139;
          v101 = (*(v139 + 80) + 32) & ~*(v139 + 80);
          v102 = swift_allocObject();
          *(v102 + 16) = xmmword_224DB3100;
          (*(v100 + 16))(v102 + v101, a1, v97);
          (*(v122 + 104))(v124, *MEMORY[0x277CF9B50], v123);
          (*(v126 + 104))(v129, *MEMORY[0x277CF9B40], v127);
          (*(v131 + 104))(v99, *MEMORY[0x277CF9BA8], v98);
          sub_224DACC48();
          v103 = v125;
          sub_224DACC38();
          sub_224A3933C(v102, v103);
          swift_setDeallocating();
          (*(v100 + 8))(v102 + v101, v97);
          swift_deallocClassInstance();
          (*(v128 + 8))(v103, v130);
        }
      }

      else
      {
LABEL_9:
        if (v63 <= v64 + 1)
        {
          v66 = v64 + 1;
        }

        else
        {
          v66 = v63;
        }

        v67 = v66 - 1;
        while (1)
        {
          v65 = v64 + 1;
          if (__OFADD__(v64, 1))
          {
            break;
          }

          if (v65 >= v63)
          {
            v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F47F8, &unk_224DC2000);
            (*(*(v81 - 8) + 56))(v37, 1, 1, v81);
            v62 = 0;
            goto LABEL_17;
          }

          v62 = *(v140 + 8 * v65);
          ++v64;
          if (v62)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
      }
    }
  }
}

double sub_224D88F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_224DABE18();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v45 = v6;
  v46 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DABD68();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v44 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C28, qword_224DBA340);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C30, &unk_224DBB310);
  v17 = MEMORY[0x28223BE20](v15 - 8, v16);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v43 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v43 - v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;

    v49 = a3;
    sub_224DAC118();

    (*(v8 + 104))(v23, *MEMORY[0x277CF98C0], v7);
    (*(v8 + 56))(v23, 0, 1, v7);
    v30 = *(v11 + 48);
    sub_224A3796C(v26, v14, &qword_27D6F4C30, &unk_224DBB310);
    sub_224A3796C(v23, &v14[v30], &qword_27D6F4C30, &unk_224DBB310);
    v31 = *(v8 + 48);
    if (v31(v14, 1, v7) == 1)
    {
      sub_224A3311C(v23, &qword_27D6F4C30, &unk_224DBB310);
      if (v31(&v14[v30], 1, v7) == 1)
      {
        sub_224A3311C(v14, &qword_27D6F4C30, &unk_224DBB310);
        v32 = v49;
LABEL_10:
        v49 = *(v29 + 232);
        v37 = swift_allocObject();
        swift_weakInit();
        v38 = v46;
        v39 = v47;
        v40 = v48;
        (*(v47 + 16))(v46, v32, v48);
        v41 = (*(v39 + 80) + 24) & ~*(v39 + 80);
        v42 = swift_allocObject();
        *(v42 + 16) = v37;
        (*(v39 + 32))(v42 + v41, v38, v40);

        sub_224DAC0B8();

        sub_224A3311C(v26, &qword_27D6F4C30, &unk_224DBB310);

        return result;
      }
    }

    else
    {
      sub_224A3796C(v14, v19, &qword_27D6F4C30, &unk_224DBB310);
      if (v31(&v14[v30], 1, v7) != 1)
      {
        v33 = &v14[v30];
        v34 = v44;
        (*(v8 + 32))(v44, v33, v7);
        sub_224A94F2C(&unk_281350E90, MEMORY[0x277CF98C8], MEMORY[0x277CF98D0]);
        v35 = sub_224DAEDD8();
        v36 = *(v8 + 8);
        v36(v34, v7);
        sub_224A3311C(v23, &qword_27D6F4C30, &unk_224DBB310);
        v36(v19, v7);
        sub_224A3311C(v14, &qword_27D6F4C30, &unk_224DBB310);
        v32 = v49;
        if (v35)
        {
          goto LABEL_10;
        }

LABEL_8:
        sub_224D87E50(v32);

        sub_224A3311C(v26, &qword_27D6F4C30, &unk_224DBB310);
        return result;
      }

      sub_224A3311C(v23, &qword_27D6F4C30, &unk_224DBB310);
      (*(v8 + 8))(v19, v7);
    }

    sub_224A3311C(v14, &qword_27D6F4C28, qword_224DBA340);
    v32 = v49;
    goto LABEL_8;
  }

  return result;
}

double sub_224D89598(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224D87E50(a2);
  }

  return result;
}

void sub_224D895F8(void *a1, uint64_t a2, uint64_t a3)
{
  v98 = a3;
  v96 = sub_224DACB98();
  v76 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v5);
  v95 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = sub_224DACB08();
  v78 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v7);
  v93 = &v69[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v92 = sub_224DACB28();
  v79 = *(v92 - 8);
  MEMORY[0x28223BE20](v92, v9);
  v91 = &v69[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v90 = sub_224DACC88();
  v75 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v11);
  v89 = &v69[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = sub_224DAB258();
  v77 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v13);
  v71 = &v69[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_224DABE18();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v88 = &v69[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18, v20);
  v99 = &v69[-v22];
  v24 = MEMORY[0x28223BE20](v21, v23);
  v84 = &v69[-v25];
  MEMORY[0x28223BE20](v24, v26);
  v102 = &v69[-v27];
  v28 = a1[3];
  v97 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  v29 = sub_224DAD3C8();
  v101 = *(v29 + 16);
  if (v101)
  {
    v30 = 0;
    v85 = a2 & 0xC000000000000001;
    v86 = (v16 + 16);
    v31 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v31 = a2;
    }

    v81 = v31;
    v103 = a2 + 56;
    v83 = (v16 + 32);
    v80 = (v16 + 8);
    v32 = MEMORY[0x277D84F90];
    v82 = v15;
    v33 = a2;
    v104 = a2;
    v100 = v16;
    v87 = v29;
    while (1)
    {
      if (v30 >= *(v29 + 16))
      {
        __break(1u);
        return;
      }

      v34 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v35 = *(v16 + 72);
      (*(v16 + 16))(v102, v29 + v34 + v35 * v30, v15);
      v36 = sub_224DABDB8();
      if (v85)
      {
        v37 = sub_224DAF888();

        if (v37)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v73 = v32;
        if (*(v33 + 16))
        {
          sub_224DAF538();
          v43 = sub_224DAF698();
          v44 = -1 << *(v33 + 32);
          v45 = v43 & ~v44;
          if ((*(v103 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
          {
            v46 = ~v44;
            while (1)
            {
              v47 = *(*(v33 + 48) + 8 * v45);
              v48 = sub_224DAF6A8();

              if (v48)
              {
                break;
              }

              v45 = (v45 + 1) & v46;
              v33 = v104;
              if (((*(v103 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
              {
                goto LABEL_5;
              }
            }

            v15 = v82;
            v16 = v100;
            v32 = v73;
LABEL_11:
            v38 = *v83;
            (*v83)(v84, v102, v15);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v105 = v32;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_224ADA49C(0, *(v32 + 16) + 1, 1);
              v32 = v105;
            }

            v41 = *(v32 + 16);
            v40 = *(v32 + 24);
            if (v41 >= v40 >> 1)
            {
              sub_224ADA49C((v40 > 1), v41 + 1, 1);
              v32 = v105;
            }

            *(v32 + 16) = v41 + 1;
            v42 = v32 + v34 + v41 * v35;
            v15 = v82;
            (v38)(v42, v84, v82);
            v33 = v104;
            goto LABEL_7;
          }
        }

LABEL_5:

        v15 = v82;
        v16 = v100;
        v32 = v73;
      }

      (*v80)(v102, v15);
LABEL_7:
      v29 = v87;
      if (++v30 == v101)
      {
        goto LABEL_24;
      }
    }
  }

  v32 = MEMORY[0x277D84F90];
LABEL_24:

  v50 = *(v32 + 16);
  if (v50)
  {
    v52 = *(v16 + 16);
    v51 = v16 + 16;
    v86 = v52;
    v87 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_logger;
    v53 = (*(v51 + 64) + 32) & ~*(v51 + 64);
    v73 = v32;
    v54 = v32 + v53;
    v85 = *(v51 + 56);
    v84 = (v77 + 16);
    v82 = (v77 + 8);
    LODWORD(v81) = *MEMORY[0x277CF9B50];
    v80 = (v79 + 104);
    LODWORD(v79) = *MEMORY[0x277CF9B40];
    v78 += 13;
    LODWORD(v77) = *MEMORY[0x277CF9BA8];
    v76 += 13;
    ++v75;
    *&v49 = 138543362;
    v70 = v49;
    v83 = (v51 - 8);
    v74 = (v51 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v55 = v72;
    v56 = v71;
    v57 = v99;
    v100 = v51;
    do
    {
      v103 = v54;
      v104 = v50;
      v60 = v86;
      v86(v57);
      (*v84)(v56, v98 + v87, v55);
      v61 = v57;
      v62 = v88;
      v60(v88, v61, v15);
      v63 = sub_224DAB228();
      v64 = sub_224DAF2A8();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = v62;
        v67 = swift_slowAlloc();
        *v65 = v70;
        v68 = sub_224DABDB8();
        v102 = *v83;
        (v102)(v66, v15);
        *(v65 + 4) = v68;
        *v67 = v68;
        _os_log_impl(&dword_224A2F000, v63, v64, "Locale change detected - reloading timelines for  %{public}@", v65, 0xCu);
        sub_224A3311C(v67, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v67, -1, -1);
        v56 = v71;
        v55 = v72;
        MEMORY[0x22AA5EED0](v65, -1, -1);
      }

      else
      {

        v102 = *v83;
        (v102)(v62, v15);
      }

      (*v82)(v56, v55);
      v58 = v97[3];
      v101 = v97[4];
      __swift_project_boxed_opaque_existential_1(v97, v58);
      (*v80)(v91, v81, v92);
      (*v78)(v93, v79, v94);
      (*v76)(v95, v77, v96);
      sub_224DACC48();
      v59 = v89;
      sub_224DACC38();
      v57 = v99;
      sub_224DAD3E8();
      (*v75)(v59, v90);
      (v102)(v57, v15);
      v54 = v103 + v85;
      v50 = v104 - 1;
    }

    while (v104 != 1);
  }
}

uint64_t sub_224D8A0A0(void *a1)
{
  sub_224DAD148();
  [a1 supportedColorSchemes];
  sub_224DAD098();
  v2 = [a1 supportedRenderSchemes];
  sub_224A3B79C(0, &qword_281350960, 0x277CFA430);
  sub_224DAF008();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D50, &qword_224DC20C8);
  sub_224A33088(&qword_281350B70, &qword_27D6F6D50, &qword_224DC20C8, MEMORY[0x277D83970]);
  v3 = sub_224DAEF58();

  sub_224AE97C0(v3);

  sub_224DAD0C8();
  [a1 supportsLowLuminance];
  sub_224DAD108();
  [a1 showsWidgetLabel];
  sub_224DAD028();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB2780;
  *(inited + 32) = [a1 displayProperties];
  sub_224AE995C(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_224DAD138();
  [a1 supportedProximities];
  return sub_224DAD068();
}

uint64_t sub_224D8A3D8(uint64_t a1)
{
  v2 = sub_224DAC268();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DABE18();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  sub_224DABD88();
  sub_224DAC028();
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_224D8A554(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAC268();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DABE18();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  sub_224DABD88();
  sub_224DAC038();
  return (*(v9 + 8))(v12, v8);
}

void sub_224D8A6E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v5 + 240);
  os_unfair_lock_lock(*(v6 + 16));
  sub_224D86530(a1, v5, a2);
  v7 = *(v6 + 16);

  os_unfair_lock_unlock(v7);
}

uint64_t sub_224D8A764(uint64_t a1)
{
  v3 = sub_224DAC268();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_224DABE18();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *v1;
  (*(v4 + 16))(v7, a1, v3);
  sub_224DABD88();
  v16 = v12;
  v17 = a1;
  v18 = v13;
  sub_224DAC128();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_224D8AB14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_224DAC268();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + 16);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B98, &unk_224DB9F70);
  sub_224DAC9B8();
  if (swift_dynamicCast())
  {
    v10 = [a1 widget];
    v11 = [a1 metrics];
    sub_224DAC238();
    sub_224DAC2D8();
    (*(v6 + 8))(v9, v5);

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v12 = sub_224DA9688();
  return (*(*(v12 - 8) + 56))(a2, v14, 1, v12);
}

uint64_t sub_224D8AD10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_224DB3100;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    v9 = sub_224AE8AF4(inited);
    swift_setDeallocating();
    sub_224BCA6B4(inited + 32);
    sub_224D84200(a3, v9);

    v10 = sub_224DAC108();
    MEMORY[0x28223BE20](v10, v11);
    v13 = &v19;
    v20[0] = a3;
    v20[1] = a1;
    v21 = a2;
    v14 = sub_224D8E708;
  }

  else
  {
    sub_224D84200(a3, 0);

    v15 = sub_224DAC108();
    MEMORY[0x28223BE20](v15, v16);
    v13 = v20;
    v21 = a3;
    v14 = sub_224D8E6EC;
  }

  v17 = sub_224A392FC(v14, v13, v12);
  sub_224A3933C(v17, a4);
}

uint64_t sub_224D8AEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a3;
  v40 = a4;
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v37 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v42 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v36 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v36 - v23;
  v38 = a1;
  v25 = sub_224DABDB8();
  v26 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  sub_224A3796C(v25 + v26, v24, &unk_27D6F5060, &qword_224DB5620);

  (*(v6 + 16))(v21, v41, v5);
  (*(v6 + 56))(v21, 0, 1, v5);
  v27 = *(v10 + 56);
  sub_224A3796C(v24, v13, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3796C(v21, &v13[v27], &unk_27D6F5060, &qword_224DB5620);
  v28 = *(v6 + 48);
  if (v28(v13, 1, v5) != 1)
  {
    sub_224A3796C(v13, v42, &unk_27D6F5060, &qword_224DB5620);
    if (v28(&v13[v27], 1, v5) != 1)
    {
      v30 = &v13[v27];
      v31 = v37;
      (*(v6 + 32))(v37, v30, v5);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
      v32 = v42;
      LODWORD(v41) = sub_224DAEDD8();
      v33 = *(v6 + 8);
      v33(v31, v5);
      sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
      sub_224A3311C(v24, &unk_27D6F5060, &qword_224DB5620);
      v33(v32, v5);
      sub_224A3311C(v13, &unk_27D6F5060, &qword_224DB5620);
      if (v41)
      {
        goto LABEL_9;
      }

LABEL_7:
      v29 = 0;
      return v29 & 1;
    }

    sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
    sub_224A3311C(v24, &unk_27D6F5060, &qword_224DB5620);
    (*(v6 + 8))(v42, v5);
LABEL_6:
    sub_224A3311C(v13, &qword_27D6F5B90, &qword_224DB5C50);
    goto LABEL_7;
  }

  sub_224A3311C(v21, &unk_27D6F5060, &qword_224DB5620);
  sub_224A3311C(v24, &unk_27D6F5060, &qword_224DB5620);
  if (v28(&v13[v27], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_224A3311C(v13, &unk_27D6F5060, &qword_224DB5620);
LABEL_9:
  if (sub_224DABDD8() == v39 && v34 == v40)
  {

    v29 = 1;
  }

  else
  {
    v29 = sub_224DAFD88();
  }

  return v29 & 1;
}

uint64_t sub_224D8B418()
{
  v0 = sub_224DA250C(&unk_283827DD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6EA0, &qword_224DC2F70);
  result = swift_arrayDestroy();
  off_281352F90 = v0;
  return result;
}

uint64_t sub_224D8B474()
{
  v0 = sub_224DA250C(&unk_283827E58);
  result = sub_224A3311C(&unk_283827E78, &qword_27D6F6EA0, &qword_224DC2F70);
  off_281353BD8 = v0;
  return result;
}

uint64_t sub_224D8B4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 240);
  os_unfair_lock_lock(*(v7 + 16));
  sub_224D8B550(v3, a1, a2, a3, &v9);
  os_unfair_lock_unlock(*(v7 + 16));
  return v9;
}

uint64_t sub_224D8B550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v10 = OBJC_IVAR____TtC10ChronoCore21MobileTimelineService_lock_visibilityAssertionCount;
  swift_beginAccess();
  if (!*(*(a1 + v10) + 16) || (sub_224A3E7EC(a2), (v11 & 1) == 0))
  {
    result = swift_endAccess();
    goto LABEL_9;
  }

  swift_endAccess();
  if (qword_281353BD0 != -1)
  {
    swift_once();
  }

  v12 = off_281353BD8;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v13 = sub_224DA9FE8();
  v15 = v14;
  swift_endAccess();
  if (!v12[2])
  {

    goto LABEL_9;
  }

  v16 = sub_224A3A40C(v13, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_9:
    v23 = 0;
    goto LABEL_10;
  }

  v21 = *(v12[7] + 8 * v16);
  v25[0] = a3;
  v25[1] = a4;
  MEMORY[0x28223BE20](result, v20);
  v24[2] = v25;

  v22 = sub_224B3E818(sub_224D8DE78, v24, v21);

  v23 = v22 & 1;
LABEL_10:
  *a5 = v23;
  return result;
}

uint64_t sub_224D8B730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  *(inited + 32) = a2;
  *(inited + 40) = a3;

  v9 = sub_224AE8AF4(inited);
  swift_setDeallocating();
  sub_224BCA6B4(inited + 32);
  sub_224D84200(a1, v9);

  v10 = sub_224DAC108();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v11 = sub_224A392FC(sub_224D8DE54, v13, v10);
  sub_224A3933C(v11, a4);
}

uint64_t sub_224D8B890(uint64_t a1)
{
  v1 = sub_224DAC148();
  sub_224D79460(v1);
  v3 = v2;

  return v3;
}

uint64_t sub_224D8B8E4()
{
  v54 = sub_224DA9688();
  v51 = *(v54 - 8);
  v2 = MEMORY[0x28223BE20](v54, v1);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v48 = v46 - v7;
  MEMORY[0x28223BE20](v6, v8);
  v53 = v46 - v9;
  v10 = sub_224DAC268();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v46 - v17;
  sub_224D8165C();
  v20 = v19;
  v21 = *(v19 + 16);
  v49 = v18;
  v50 = v4;
  if (v21)
  {
    v60 = v0;
    v61 = MEMORY[0x277D84F90];
    sub_224ADA224(0, v21, 0);
    v22 = v61;
    v59 = v20;
    v23 = (v20 + 40);
    do
    {
      v24 = *v23;
      v25 = *(v23 - 1);
      v26 = v24;
      sub_224DAC238();
      v61 = v22;
      v28 = *(v22 + 16);
      v27 = *(v22 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_224ADA224((v27 > 1), v28 + 1, 1);
        v22 = v61;
      }

      *(v22 + 16) = v28 + 1;
      (*(v11 + 32))(v22 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v28, v15, v10);
      v23 += 2;
      --v21;
    }

    while (v21);

    v18 = v49;
    v4 = v50;
    v0 = v60;
    v29 = *(v22 + 16);
    if (v29)
    {
      goto LABEL_7;
    }

LABEL_17:

    v43 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v22 = MEMORY[0x277D84F90];
  v29 = *(MEMORY[0x277D84F90] + 16);
  if (!v29)
  {
    goto LABEL_17;
  }

LABEL_7:
  v30 = v0[2];
  v59 = v0[3];
  ObjectType = swift_getObjectType();
  v33 = *(v11 + 16);
  v32 = v11 + 16;
  v57 = v33;
  v58 = ObjectType;
  v34 = v22 + ((*(v32 + 64) + 32) & ~*(v32 + 64));
  v35 = *(v32 + 56);
  v55 = (v32 - 8);
  v56 = v35;
  v46[0] = v51 + 8;
  v52 = (v51 + 32);
  v60 = MEMORY[0x277D84F90];
  v46[1] = v30;
  v47 = v10;
  v33(v18, v34, v10);
  while (1)
  {
    sub_224DAC3F8();
    v36 = v48;
    sub_224DA9548();
    v37 = v54;
    (*v46[0])(v4, v54);
    (*v55)(v18, v10);
    v38 = *v52;
    (*v52)(v53, v36, v37);
    v39 = v60;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_224AD9420(0, v39[2] + 1, 1, v39);
    }

    v41 = v39[2];
    v40 = v39[3];
    v60 = v39;
    v18 = v49;
    if (v41 >= v40 >> 1)
    {
      v60 = sub_224AD9420((v40 > 1), v41 + 1, 1, v60);
    }

    v42 = v60;
    v60[2] = v41 + 1;
    v38(&v42[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v41], v53, v54);
    v4 = v50;
    v10 = v47;
    v34 += v56;
    if (!--v29)
    {
      break;
    }

    v57(v18, v34, v47);
  }

  v43 = v60;
LABEL_18:
  v44 = sub_224AE9040(v43);

  return v44;
}

void sub_224D8BDB0()
{
  v1 = sub_224DA9688();
  v70 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1, v2);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v69 = &v66 - v8;
  MEMORY[0x28223BE20](v7, v9);
  v76 = &v66 - v10;
  v11 = sub_224DAC268();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
  MEMORY[0x28223BE20](v82, v16);
  v81 = &v66 - v17;
  v18 = *(v0 + 12);
  v19 = *(v0 + 13);
  __swift_project_boxed_opaque_existential_1(v0 + 9, v18);
  (*(v19 + 32))(v83, 768, v18, v19);
  if (*(&v84 + 1))
  {
    v85[0] = v83[0];
    v85[1] = v83[1];
    v85[2] = v84;
    v20 = sub_224A86CAC();
    if (v20)
    {
      v78 = v0;
      v68 = v1;
      v21 = v20[8];
      v79 = v20 + 8;
      v80 = v20;
      v22 = 1 << *(v20 + 32);
      v23 = -1;
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      v24 = v23 & v21;
      v25 = (v22 + 63) >> 6;

      v26 = 0;
      v27 = MEMORY[0x277D84F90];
      v72 = v5;
      v71 = v15;
      v73 = v12;
      while (1)
      {
        v74 = v27;
        if (!v24)
        {
          break;
        }

LABEL_12:
        v29 = __clz(__rbit64(v24)) | (v26 << 6);
        v30 = v80;
        v31 = v80[6];
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
        v33 = v81;
        (*(*(v32 - 8) + 16))(v81, v31 + *(*(v32 - 8) + 72) * v29, v32);
        v34 = *(v30[7] + 8 * v29);
        *(v33 + *(v82 + 12)) = v34;
        v35 = [v34 containerDescriptors];
        sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
        v36 = sub_224DAF008();

        MEMORY[0x28223BE20](v37, v38);
        *(&v66 - 2) = v33;
        v39 = sub_224AD8B0C(sub_224D8DEEC, (&v66 - 4), v36);

        sub_224A3311C(v33, &qword_27D6F38A8, &unk_224DB4650);
        v40 = v39[2];
        v41 = v74[2];
        v42 = v41 + v40;
        if (__OFADD__(v41, v40))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          return;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v74;
        if (!isUniquelyReferenced_nonNull_native || v42 > v74[3] >> 1)
        {
          if (v41 <= v42)
          {
            v44 = v41 + v40;
          }

          else
          {
            v44 = v41;
          }

          v27 = sub_224AD93E4(isUniquelyReferenced_nonNull_native, v44, 1, v74);
        }

        v5 = v72;
        v12 = v73;
        v24 &= v24 - 1;
        if (v39[2])
        {
          if ((v27[3] >> 1) - v27[2] < v40)
          {
            goto LABEL_41;
          }

          swift_arrayInitWithCopy();

          v15 = v71;
          if (v40)
          {
            v45 = v27[2];
            v46 = __OFADD__(v45, v40);
            v47 = v45 + v40;
            if (v46)
            {
              goto LABEL_42;
            }

            v27[2] = v47;
          }
        }

        else
        {

          v15 = v71;
          if (v40)
          {
            goto LABEL_40;
          }
        }
      }

      while (1)
      {
        v28 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          __break(1u);
          goto LABEL_39;
        }

        if (v28 >= v25)
        {
          break;
        }

        v24 = v79[v28];
        ++v26;
        if (v24)
        {
          v26 = v28;
          goto LABEL_12;
        }
      }

      v48 = v74[2];
      if (v48)
      {
        v49 = *(v78 + 2);
        v80 = *(v78 + 3);
        v81 = v49;
        v50 = v74;
        ObjectType = swift_getObjectType();
        v53 = *(v12 + 16);
        v52 = v12 + 16;
        v78 = v53;
        v79 = ObjectType;
        v54 = v50 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
        v77 = *(v52 + 56);
        v55 = (v52 - 8);
        v67 = (v70 + 8);
        v75 = (v70 + 32);
        v82 = MEMORY[0x277D84F90];
        v56 = v68;
        v73 = v52;
        v53(v15, v54, v11);
        while (1)
        {
          sub_224DAC3F8();
          v57 = v15;
          v58 = v69;
          sub_224DA9548();
          (*v67)(v5, v56);
          (*v55)(v57, v11);
          v59 = *v75;
          (*v75)(v76, v58, v56);
          v60 = v82;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v60 = sub_224AD9420(0, v60[2] + 1, 1, v60);
          }

          v62 = v60[2];
          v61 = v60[3];
          v82 = v60;
          v15 = v71;
          if (v62 >= v61 >> 1)
          {
            v82 = sub_224AD9420((v61 > 1), v62 + 1, 1, v82);
          }

          v63 = v82;
          v82[2] = v62 + 1;
          v64 = v63 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v62;
          v56 = v68;
          v59(v64, v76, v68);
          v5 = v72;
          v54 += v77;
          if (!--v48)
          {
            break;
          }

          v78(v15, v54, v11);
        }

        v65 = v82;
      }

      else
      {

        v65 = MEMORY[0x277D84F90];
      }

      sub_224AE9040(v65);

      sub_224A699F0(v85);
    }

    else
    {
      sub_224A699F0(v85);
    }
  }

  else
  {
    sub_224A3311C(v83, &qword_27D6F50E0, &qword_224DB41A0);
  }
}

uint64_t sub_224D8C574()
{
  v2 = v1;
  v3 = sub_224DA9688();
  v41 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v33 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v33 - v13;
  v47[0] = *(v0 + 16);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B98, &unk_224DB9F70);
  sub_224DAC9B8();
  if (!swift_dynamicCast())
  {
    return MEMORY[0x277D84FA0];
  }

  v37 = v14;
  v38 = v3;
  v39 = v11;
  v40 = v7;
  v15 = v48;
  v48 = MEMORY[0x277D84FA0];
  __swift_project_boxed_opaque_existential_1((v0 + 152), *(v0 + 176));
  result = sub_224DAC678();
  v17 = result;
  v18 = *(result + 16);
  if (!v18)
  {

    return MEMORY[0x277D84FA0];
  }

  v19 = 0;
  v20 = result + 32;
  v21 = v41 + 16;
  v22 = (v41 + 8);
  v35 = result;
  v36 = v15;
  v33 = result + 32;
  v34 = v18;
  v46 = v41 + 16;
  while (v19 < *(v17 + 16))
  {
    sub_224A3317C(v20 + 40 * v19, v47);
    v23 = sub_224DAC9A8();
    if (v2)
    {

      result = __swift_destroy_boxed_opaque_existential_1(v47);
      v2 = 0;
    }

    else
    {
      v24 = v21;
      v44 = v23;
      __swift_destroy_boxed_opaque_existential_1(v47);
      v25 = *(v44 + 16);
      if (v25)
      {
        v42 = v19;
        v43 = 0;
        v26 = v40;
        v27 = v44 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
        v45 = *(v41 + 72);
        v28 = *(v41 + 16);
        v30 = v38;
        v29 = v39;
        v31 = v37;
        do
        {
          v28(v31, v27, v30);
          sub_224DA9548();
          sub_224ADB390(v29, v26);
          v32 = *v22;
          (*v22)(v29, v30);
          v32(v31, v30);
          v27 += v45;
          --v25;
        }

        while (v25);

        v19 = v42;
        v2 = v43;
        v17 = v35;
        v20 = v33;
        v18 = v34;
        v21 = v46;
      }

      else
      {

        v21 = v24;
      }
    }

    if (++v19 == v18)
    {

      return v48;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D8C898@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [*a1 widgets];
  sub_224A3B79C(0, &qword_2813508A0, 0x277CFA1E8);
  v6 = sub_224DAF008();

  v10[2] = a2;
  sub_224D40D40(sub_224D8DF08, v10, v6);
  v8 = v7;

  *a3 = v8;
  return result;
}

uint64_t sub_224D8C960(void **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *a1;
  v9 = [v8 widget];
  v10 = [v8 metrics];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v7, a2, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  return sub_224DAC228();
}

uint64_t sub_224D8CAC8()
{
  v0 = sub_224D8B8E4();
  sub_224D8BDB0();
  return sub_224AD6960(v1, v0);
}

uint64_t sub_224D8CB30(uint64_t a1)
{
  result = sub_224A94F2C(&qword_2813580D8, type metadata accessor for MobileTimelineService, &unk_224DC2CC8);
  *(a1 + 8) = result;
  return result;
}

void *sub_224D8CE10(void *result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t), uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t), void (*a7)(uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a5(a4);
    v14 = a6(v13, a2, a3, a4);
    a7(a4, 2);

    return v14;
  }

  return result;
}

uint64_t sub_224D8CECC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_224DAFD88() & 1;
  }
}

uint64_t sub_224D8CF24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v34 = a4;
  v35 = a5;
  v31 = a3;
  v27[1] = a2;
  v29 = a1;
  v5 = sub_224DACB98();
  v32 = *(v5 - 8);
  v33 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = (v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_224DACB08();
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DACB28();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DACC88();
  v18 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v19);
  v21 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_224DAC108();
  v37 = v29;
  v23 = sub_224A392FC(v31, v36, v22);
  (*(v14 + 104))(v17, *MEMORY[0x277CF9B50], v13);
  (*(v9 + 104))(v12, *MEMORY[0x277CF9B40], v28);
  v24 = swift_allocObject();
  v25 = v35;
  *(v24 + 16) = v34;
  *(v24 + 24) = v25;
  *v8 = v24;
  (*(v32 + 104))(v8, *MEMORY[0x277CF9B70], v33);
  sub_224DACC48();
  sub_224DACC38();
  sub_224A3933C(v23, v21);

  return (*(v18 + 8))(v21, v30);
}

uint64_t sub_224D8D258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_281352F88 != -1)
  {
    v12 = a1;
    v13 = a2;
    swift_once();
    a1 = v12;
    a2 = v13;
  }

  v6 = off_281352F90;
  if (*(off_281352F90 + 2) && (v7 = sub_224A3A40C(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    v15[0] = a3;
    v15[1] = a4;
    MEMORY[0x28223BE20](v7, v8);
    v14[2] = v15;

    v10 = sub_224B3E818(sub_224D8E728, v14, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_224D8D408(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v43 = a4;
  v32 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  MEMORY[0x28223BE20](v42, v5);
  v37 = &v30 - v6;
  v41 = sub_224DABE18();
  result = MEMORY[0x28223BE20](v41, v7);
  v39 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v9;
  v11 = 0;
  v44 = a3;
  v12 = *(a3 + 64);
  v33 = 0;
  v34 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v38 = v9 + 16;
  v36 = v9 + 8;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v45 = (v15 - 1) & v15;
LABEL_11:
    v20 = v17 | (v11 << 6);
    v21 = v44;
    v22 = v39;
    v23 = v40;
    v24 = *(v40 + 16);
    v25 = v41;
    v24(v39, v44[6] + *(v40 + 72) * v20, v41);
    v26 = v21[7];
    v35 = v20;
    v27 = *(v26 + 8 * v20);
    v28 = v37;
    v24(v37, v22, v25);
    *(v28 + *(v42 + 48)) = v27;
    swift_bridgeObjectRetain_n();
    LOBYTE(v24) = sub_224DABDF8();
    sub_224A3311C(v28, &qword_27D6F6D38, &unk_224DC2010);

    result = (*(v23 + 8))(v22, v25);
    v15 = v45;
    if (v24)
    {
      *(v32 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_224B2E0C4(v32, v31, v33, v44);
      }
    }
  }

  v18 = v11;
  while (1)
  {
    v11 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      return sub_224B2E0C4(v32, v31, v33, v44);
    }

    v19 = *(v34 + 8 * v11);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v45 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D8D6E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_unknownObjectRetain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      swift_unknownObjectRetain();
      v12 = sub_224D8CE10(v14, v8, a1, a2, MEMORY[0x277D85038], sub_224D8D408, MEMORY[0x277D85030]);
      MEMORY[0x22AA5EED0](v14, -1, -1);
      swift_unknownObjectRelease_n();
      return v12;
    }
  }

  MEMORY[0x28223BE20](v10, v11);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);
  swift_unknownObjectRetain();
  v12 = sub_224D8D408((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);
  swift_unknownObjectRelease();
  if (v3)
  {
    swift_willThrow();
  }

  swift_unknownObjectRelease_n();
  return v12;
}

uint64_t sub_224D8D900(void *a1)
{
  v2 = sub_224DABD68();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C28, qword_224DBA340);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4C30, &unk_224DBB310);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v41 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v37 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v37 - v20;
  v40 = sub_224DABE18();
  v22 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v23);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_224DABDE8();
  sub_224DAC118();
  v27 = v3;
  (*(v3 + 104))(v18, *MEMORY[0x277CF98B0], v2);
  (*(v3 + 56))(v18, 0, 1, v2);
  v28 = *(v7 + 56);
  sub_224A3796C(v21, v10, &qword_27D6F4C30, &unk_224DBB310);
  sub_224A3796C(v18, &v10[v28], &qword_27D6F4C30, &unk_224DBB310);
  v29 = *(v3 + 48);
  v42 = v2;
  if (v29(v10, 1, v2) != 1)
  {
    v38 = v22;
    sub_224A3796C(v10, v41, &qword_27D6F4C30, &unk_224DBB310);
    if (v29(&v10[v28], 1, v42) != 1)
    {
      v31 = &v10[v28];
      v32 = v39;
      v33 = v42;
      (*(v27 + 32))(v39, v31, v42);
      sub_224A94F2C(&unk_281350E90, MEMORY[0x277CF98C8], MEMORY[0x277CF98D0]);
      v34 = v27 + 32;
      v30 = sub_224DAEDD8();
      v35 = *(v34 - 24);
      v35(v32, v33);
      sub_224A3311C(v18, &qword_27D6F4C30, &unk_224DBB310);
      sub_224A3311C(v21, &qword_27D6F4C30, &unk_224DBB310);
      (*(v38 + 8))(v25, v40);
      v35(v41, v33);
      sub_224A3311C(v10, &qword_27D6F4C30, &unk_224DBB310);
      return v30 & 1;
    }

    sub_224A3311C(v18, &qword_27D6F4C30, &unk_224DBB310);
    sub_224A3311C(v21, &qword_27D6F4C30, &unk_224DBB310);
    (*(v38 + 8))(v25, v40);
    (*(v27 + 8))(v41, v42);
    goto LABEL_6;
  }

  sub_224A3311C(v18, &qword_27D6F4C30, &unk_224DBB310);
  sub_224A3311C(v21, &qword_27D6F4C30, &unk_224DBB310);
  (*(v22 + 8))(v25, v40);
  if (v29(&v10[v28], 1, v42) != 1)
  {
LABEL_6:
    sub_224A3311C(v10, &qword_27D6F4C28, qword_224DBA340);
    v30 = 0;
    return v30 & 1;
  }

  sub_224A3311C(v10, &qword_27D6F4C30, &unk_224DBB310);
  v30 = 1;
  return v30 & 1;
}

uint64_t sub_224D8DE94(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_224DAFD88() & 1;
  }
}

uint64_t sub_224D8DF84(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v51 = a4;
  v38 = a2;
  v39 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6D38, &unk_224DC2010);
  v6 = MEMORY[0x28223BE20](v50, v5);
  v49 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v48 = &v38 - v9;
  v47 = sub_224DABE18();
  result = MEMORY[0x28223BE20](v47, v10);
  v54 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v52 = a3;
  v15 = *(a3 + 64);
  v42 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v40 = 0;
  v41 = (v16 + 63) >> 6;
  v45 = v12 + 16;
  v46 = v12;
  v44 = v12 + 8;
  while (v18)
  {
    v19 = __clz(__rbit64(v18));
    v53 = (v18 - 1) & v18;
LABEL_11:
    v22 = v19 | (v14 << 6);
    v23 = v52;
    v24 = v46;
    v25 = v47;
    v26 = *(v46 + 16);
    v27 = v54;
    v26(v54, v52[6] + *(v46 + 72) * v22, v47);
    v28 = v23[7];
    v43 = v22;
    v29 = *(v28 + 8 * v22);
    v30 = v48;
    v26(v48, v27, v25);
    v31 = v49;
    *(v30 + *(v50 + 48)) = v29;
    sub_224A3796C(v30, v31, &qword_27D6F6D38, &unk_224DC2010);
    swift_bridgeObjectRetain_n();

    v32 = sub_224DABDB8();
    v33 = *(v24 + 8);
    v34 = v33(v31, v25);
    v56 = v32;
    MEMORY[0x28223BE20](v34, v35);
    *(&v38 - 2) = &v56;
    v36 = v55;
    LOBYTE(v31) = sub_224B449EC(sub_224D6E378, (&v38 - 4), v51);
    v55 = v36;
    sub_224A3311C(v30, &qword_27D6F6D38, &unk_224DC2010);

    result = v33(v54, v25);
    v18 = v53;
    if (v31)
    {
      *(v39 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      if (__OFADD__(v40++, 1))
      {
        __break(1u);
        return sub_224B2E0C4(v39, v38, v40, v52);
      }
    }
  }

  v20 = v14;
  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v14 >= v41)
    {
      return sub_224B2E0C4(v39, v38, v40, v52);
    }

    v21 = *(v42 + 8 * v14);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v53 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224D8E32C(uint64_t a1, unint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_224D8CE10(v13, v7, a1, a2, MEMORY[0x277D84FC8], sub_224D8DF84, MEMORY[0x277D84FC0]);
      MEMORY[0x22AA5EED0](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9, v10);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v11 = sub_224D8DF84((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

double sub_224D8E528(uint64_t a1)
{
  v3 = *(sub_224DABE18() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_224D88F84(a1, v4, v5);
}

uint64_t objectdestroy_34Tm()
{
  v1 = sub_224DABE18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_224D8E660()
{
  v1 = *(sub_224DABE18() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_224D89598(v2, v3);
}

uint64_t sub_224D8E744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_224A3796C(a3, v26 - v11, &unk_27D6F4620, &qword_224DB34D0);
  v13 = sub_224DAF128();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_224A3311C(v12, &unk_27D6F4620, &qword_224DB34D0);
  }

  else
  {
    sub_224DAF118();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_224DAF0C8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_224DAEE48() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_224A3311C(a3, &unk_27D6F4620, &qword_224DB34D0);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_224A3311C(a3, &unk_27D6F4620, &qword_224DB34D0);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_224D8EA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v5 = type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAAFC8();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v30 - v16;
  v18 = sub_224DAC268();
  (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
  v19 = sub_224DAAFD8();
  if (*(v19 + 16) && (v20 = sub_224B31510(v33), (v21 & 1) != 0))
  {
    v31 = a3;
    (*(v10 + 16))(v14, *(v19 + 56) + *(v10 + 72) * v20, v9);

    (*(v10 + 32))(v17, v14, v9);
    v30[1] = sub_224DAAD38();
    v22 = sub_224DAAFA8();
    v24 = v23;
    sub_224D936BC(&qword_27D6F6EC0, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata, &unk_224DC3448);
    v25 = v32;
    sub_224DAAD18();
    if (!v25)
    {
      sub_224A78024(v22, v24);
      v29 = sub_224DAB018();
      (*(*(v29 - 8) + 8))(a1, v29);
      (*(v10 + 8))(v17, v9);
      return sub_224D9364C(v8, v31);
    }

    sub_224A78024(v22, v24);
    v26 = sub_224DAB018();
    (*(*(v26 - 8) + 8))(a1, v26);
    (*(v10 + 8))(v17, v9);
    a3 = v31;
  }

  else
  {

    sub_224D95514();
    swift_allocError();
    swift_willThrow();
    v27 = sub_224DAB018();
    (*(*(v27 - 8) + 8))(a1, v27);
  }

  return sub_224D93704(a3, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
}

uint64_t sub_224D8EE04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6EF8, &qword_224DC3470);
  v20 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_224DAC268();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224D956BC();
  v16 = v21;
  sub_224DAFEF8();
  if (!v16)
  {
    v17 = v19;
    sub_224D936BC(&qword_27D6F56D0, MEMORY[0x277CF9978], MEMORY[0x277CF9998]);
    sub_224DAFC48();
    (*(v20 + 8))(v10, v7);
    sub_224D9364C(v6, v14);
    sub_224D9543C(v14, v17, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_224D93704(v14, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
}

uint64_t sub_224D8F0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E45746567646977 && a2 == 0xEE0079654B797274)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_224DAFD88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_224D8F170(uint64_t a1)
{
  v2 = sub_224D956BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224D8F1AC(uint64_t a1)
{
  v2 = sub_224D956BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224D8F200(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F08, &qword_224DC3478);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224D956BC();
  sub_224DAFF08();
  sub_224DAC268();
  sub_224D936BC(&qword_27D6F5CA8, MEMORY[0x277CF9978], MEMORY[0x277CF9980]);
  sub_224DAFCB8();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_224D8F378()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5668, &qword_224DBD770);
    sub_224A33088(&qword_281350FC0, &qword_27D6F5668, &qword_224DBD770, MEMORY[0x277CBCE20]);
    v1 = sub_224DAB3A8();
    *(v0 + 16) = v1;
  }

  return v1;
}

double sub_224D8F43C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = v9 - v4;
  if ((*(v0 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_started) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_started) = 1;
    v6 = *(v0 + 88);
    v9[1] = sub_224B53220();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6ED0, &qword_224DC3308);
    sub_224A33088(&qword_281351190, &qword_27D6F6ED0, &qword_224DC3308, MEMORY[0x277CBCD90]);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    if ((*(v6 + OBJC_IVAR____TtC10ChronoCore24ReplicatorUpdateObserver_started) & 1) == 0)
    {
      *(v6 + OBJC_IVAR____TtC10ChronoCore24ReplicatorUpdateObserver_started) = 1;
      v7 = sub_224DAF128();
      (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v6;

      sub_224D8E744(0, 0, v5, &unk_224DC3310, v8);
    }
  }

  return result;
}

uint64_t sub_224D8F680(uint64_t a1, uint64_t a2)
{
  v3 = sub_224DAAE38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB018();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for ReplicatorUpdateObserver.Update(0);
  MEMORY[0x28223BE20](updated, v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224D9543C(a1, v16, type metadata accessor for ReplicatorUpdateObserver.Update);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      return sub_224D93704(v16, type metadata accessor for ReplicatorUpdateObserver.Update);
    }

    else
    {
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4238, &unk_224DC3330) + 48);
      (*(v9 + 32))(v12, v16, v8);
      (*(v4 + 32))(v7, &v16[v18], v3);
      sub_224D8F928(v12, v7);

      (*(v4 + 8))(v7, v3);
      return (*(v9 + 8))(v12, v8);
    }
  }

  return result;
}

void sub_224D8F928(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v93 = sub_224DAAF48();
  v95 = *(v93 - 1);
  MEMORY[0x28223BE20](v93, v6);
  v92 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB018();
  v97 = *(v8 - 8);
  v98 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v96 = v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56D8, &qword_224DBD790);
  MEMORY[0x28223BE20](v82, v11);
  v83 = v77 - v12;
  v88 = sub_224DA9908();
  v91 = *(v88 - 8);
  v14 = MEMORY[0x28223BE20](v88, v13);
  v84 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v77 - v17;
  v19 = sub_224DAC268();
  v20 = *(v19 - 8);
  v89 = v19;
  v90 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v23 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = v77 - v26;
  v28 = sub_224DA9688();
  v29 = *(v28 - 8);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v81 = v77 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v85 = v77 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v39 = v77 - v38;
  MEMORY[0x28223BE20](v37, v40);
  v42 = v77 - v41;
  sub_224AEFFB4(v27);
  if ((*(v29 + 48))(v27, 1, v28) == 1)
  {
    sub_224A3311C(v27, &unk_27D6F4680, &unk_224DB4610);
    v43 = sub_224DAB228();
    v44 = sub_224DAF288();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_224A2F000, v43, v44, "Replicator temporary URL is not available; ignoring record updates", v45, 2u);
      MEMORY[0x22AA5EED0](v45, -1, -1);
    }
  }

  else
  {
    v94 = v29;
    v46 = *(v29 + 32);
    v86 = v42;
    v87 = v28;
    v46(v42, v27, v28);
    sub_224D93764(v39, v23, a1, a2);
    v47 = v3;
    v80 = a2;
    sub_224DAB008();
    v48 = sub_224D94A10(v23, v18);
    v49 = v91 + 1;
    v50 = v88;
    v79 = v91[1];
    v79(v18, v88);
    if (v48)
    {
      (*(v90 + 8))(v23, v89);
      v51 = *(v94 + 8);
      v52 = v87;
      v51(v39, v87);
      v51(v86, v52);
    }

    else
    {
      v53 = *(v47 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager + 24);
      v91 = *(v47 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager + 32);
      __swift_project_boxed_opaque_existential_1((v47 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager), v53);
      sub_224DAA3A8();
      ObjectType = v47[7];
      v91 = v47[10];
      v77[1] = __swift_project_boxed_opaque_existential_1(v47 + 4, ObjectType);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
      *(swift_allocObject() + 16) = xmmword_224DB3100;
      sub_224DAAF88();
      sub_224DAABE8();
      v91 = v49;

      ObjectType = swift_getObjectType();
      sub_224DAC3F8();
      sub_224DAC448();
      v54 = v84;
      sub_224DAB008();
      sub_224DAC458();
      v98 = v47;
      v79(v54, v50);
      v55 = v85;
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v97 = v39;
      v92 = v23;
      v56 = sub_224DAB258();
      __swift_project_value_buffer(v56, qword_281365120);
      v57 = v94;
      v58 = v81;
      v59 = v87;
      v95 = *(v94 + 16);
      v96 = (v94 + 16);
      v95(v81, v55, v87);
      v60 = sub_224DAB228();
      v61 = sub_224DAF2A8();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v99[0] = v91;
        *v62 = 136446210;
        sub_224D936BC(&qword_281351A70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v63 = sub_224DAFD28();
        v65 = v64;
        v93 = *(v57 + 8);
        v93(v58, v59);
        v66 = sub_224A33F74(v63, v65, v99);

        *(v62 + 4) = v66;
        _os_log_impl(&dword_224A2F000, v60, v61, "Wrote to %{public}s", v62, 0xCu);
        v67 = v91;
        __swift_destroy_boxed_opaque_existential_1(v91);
        MEMORY[0x22AA5EED0](v67, -1, -1);
        MEMORY[0x22AA5EED0](v62, -1, -1);
      }

      else
      {

        v93 = *(v57 + 8);
        v93(v58, v59);
      }

      v68 = v89;
      v69 = v90;
      v70 = v83;
      v71 = v92;
      (*(v90 + 16))(v83, v92, v89);
      v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56E8, &unk_224DC3340) + 44);
      v73 = v85;
      v95((v70 + v72), v85, v59);
      (*(v57 + 56))(v70 + v72, 0, 1, v59);
      v74 = *(v82 + 44);
      v75 = sub_224DAAE38();
      (*(*(v75 - 8) + 16))(v70 + v74, v80, v75);
      sub_224DAB348();
      sub_224A3311C(v70, &qword_27D6F56D8, &qword_224DBD790);
      v76 = v93;
      v93(v73, v59);
      (*(v69 + 8))(v71, v68);
      v76(v97, v59);
      v76(v86, v59);
    }
  }
}

uint64_t sub_224D906AC(uint64_t a1, void (**a2)(char *, uint64_t), uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v127 = a3;
  v8 = sub_224DAAF28();
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v108 - v14;
  v124 = sub_224DAAF48();
  v126 = *(v124 - 8);
  MEMORY[0x28223BE20](v124, v16);
  v129 = &v108 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_224DAAB88();
  v121 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v18);
  v131 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_224DAC268();
  v136 = *(v133 - 8);
  v21 = MEMORY[0x28223BE20](v133, v20);
  v128 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v134 = &v108 - v24;
  v125 = sub_224DAAD48();
  v123 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v25);
  v122 = &v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DAACE8();
  v144 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27, v28);
  v140 = &v108 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v108 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6638, qword_224DC07A0);
  v36 = MEMORY[0x28223BE20](v34 - 8, v35);
  v142 = (&v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36, v38);
  v130 = &v108 - v39;
  v40 = sub_224DAAE38();
  result = MEMORY[0x28223BE20](v40, v41);
  v46 = &v108 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v44 + 2);
  if (!v47)
  {
    return result;
  }

  v118 = v44;
  v135 = v47;
  v119 = v15;
  v120 = v43;
  result = sub_224D91948(a2, v46);
  if (v4)
  {
    return result;
  }

  v112 = a2;
  v117 = v46;
  result = sub_224DAAE18();
  v48 = *(result + 16);
  v115 = v40;
  v116 = v6;
  v137 = v48;
  if (!v48)
  {
    v61 = v6;

    v62 = 1;
    v63 = v130;
    v50 = v144;
    goto LABEL_18;
  }

  v114 = v12;
  v113 = 0;
  v49 = 0;
  v50 = v144;
  v139 = result + ((*(v144 + 80) + 32) & ~*(v144 + 80));
  v138 = (v144 + 16);
  v141 = 0x8000000224DC43A0;
  v51 = (v144 + 8);
  while (1)
  {
    if (v49 >= *(result + 16))
    {
      __break(1u);
      return result;
    }

    v54 = result;
    v55 = v139 + *(v50 + 72) * v49;
    v56 = *(v50 + 16);
    v57 = v27;
    v56(v33, v55, v27);
    if (sub_224DAACD8() == 0xD000000000000011 && 0x8000000224DC5340 == v58)
    {
      break;
    }

    v59 = sub_224DAFD88();

    if (v59)
    {
      goto LABEL_12;
    }

LABEL_6:
    ++v49;
    v27 = v57;
    (*v51)(v33, v57);
    v50 = v144;
    v53 = v142;
    result = v54;
    if (v137 == v49)
    {

      v62 = 1;
      v5 = v113;
      v40 = v115;
      v61 = v116;
      v12 = v114;
      v63 = v130;
      goto LABEL_19;
    }
  }

LABEL_12:
  if (sub_224DAACB8() != 0xD000000000000013 || v141 != v60)
  {
    v52 = sub_224DAFD88();

    if (v52)
    {
      goto LABEL_17;
    }

    goto LABEL_6;
  }

LABEL_17:

  v63 = v130;
  v27 = v57;
  v50 = v144;
  (*(v144 + 32))(v130, v33, v27);
  v62 = 0;
  v5 = v113;
  v40 = v115;
  v61 = v116;
  v12 = v114;
LABEL_18:
  v53 = v142;
LABEL_19:
  (*(v50 + 56))(v63, v62, 1, v27);
  sub_224A3796C(v63, v53, &qword_27D6F6638, qword_224DC07A0);
  if ((*(v50 + 48))(v53, 1, v27) == 1)
  {
    sub_224A3311C(v53, &qword_27D6F6638, qword_224DC07A0);
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v65 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BC0, &unk_224DB9C60);
    sub_224DA9908();
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_224DB3100;
    v67 = v117;
    sub_224DAAD98();
    *v65 = v66;
    v68 = *MEMORY[0x277D46558];
    v69 = sub_224DAAC58();
    (*(*(v69 - 8) + 104))(v65, v68, v69);
    v40 = v115;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v70 = v67;
    sub_224A3311C(v63, &qword_27D6F6638, qword_224DC07A0);
    return (*(v120 + 8))(v70, v40);
  }

  v71 = v140;
  v72 = (*(v50 + 32))(v140, v53, v27);
  MEMORY[0x28223BE20](v72, v73);
  v74 = v50;
  v70 = v117;
  *(&v108 - 4) = v61;
  *(&v108 - 3) = v70;
  *(&v108 - 2) = v71;
  v75 = sub_224D41144(sub_224D951D4, (&v108 - 6), v118);
  if (!v5)
  {
    v114 = v12;
    v76 = v61[7];
    v142 = v61[10];
    v77 = v75;
    __swift_project_boxed_opaque_existential_1(v61 + 4, v76);
    v78 = v123;
    v79 = v122;
    (*(v123 + 104))(v122, *MEMORY[0x277D46688], v125);
    v141 = v77;
    sub_224DAABC8();
    v109 = v27;
    (*(v78 + 8))(v79, v125);

    v80 = *(v136 + 16);
    v81 = &v118[(*(v136 + 80) + 32) & ~*(v136 + 80)];
    v82 = 0x8000000224DC43A0;
    v122 = OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_logger;
    v139 = *(v136 + 72);
    v138 = (v121 + 8);
    v141 = (v136 + 8);
    v118 = "liveControlReplicator";
    v113 = v126 + 16;
    v112 = (v126 + 8);
    *(&v83 + 1) = 2;
    v111 = xmmword_224DB3100;
    *&v83 = 136315394;
    v110 = v83;
    v84 = v117;
    v86 = v133;
    v85 = v134;
    v136 += 16;
    v142 = v80;
    v123 = 0x8000000224DC43A0;
    v80(v134, v81, v133);
    while (1)
    {
      if (sub_224DAACB8() == 0xD000000000000013 && v82 == v88)
      {
      }

      else
      {
        v89 = sub_224DAFD88();

        if ((v89 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v90 = v131;
      sub_224DAACC8();
      v91 = sub_224DAAB68();
      (*v138)(v90, v132);
      if (v91 > 3)
      {
        v125 = sub_224DAACB8();
        v137 = v92;
        v93 = sub_224DA9908();
        v94 = v119;
        (*(*(v93 - 8) + 56))(v119, 1, 1, v93);
        sub_224DAAD38();
        v95 = v133;
        v143[3] = v133;
        v143[4] = sub_224D936BC(&qword_27D6F5CA8, MEMORY[0x277CF9978], MEMORY[0x277CF9980]);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v143);
        v142(boxed_opaque_existential_1, v134, v95);
        v97 = sub_224DAAD28();
        v99 = v98;
        __swift_destroy_boxed_opaque_existential_1(v143);
        sub_224DA96C8();
        sub_224D9543C(v94, v114, MEMORY[0x277D46780]);
        v100 = v116;
        sub_224DAAEE8();
        sub_224A78024(v97, v99);
        sub_224D93704(v94, MEMORY[0x277D46780]);
        v101 = v100[7];
        v137 = v100[10];
        __swift_project_boxed_opaque_existential_1(v100 + 4, v101);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3368, &qword_224DB3B10);
        v102 = v126;
        v103 = (*(v126 + 80) + 32) & ~*(v126 + 80);
        v104 = swift_allocObject();
        *(v104 + 16) = v111;
        v105 = *(v102 + 16);
        v106 = v129;
        v107 = v124;
        v105(v104 + v103, v129);
        sub_224DAABF8();
        (*v112)(v106, v107);

        v84 = v117;
        v86 = v133;
        v85 = v134;
        v87 = v142;
        v82 = v123;
        goto LABEL_26;
      }

      v86 = v133;
      v85 = v134;
LABEL_35:
      v87 = v142;
LABEL_26:
      (*v141)(v85, v86);
      v81 += v139;
      if (!--v135)
      {
        sub_224A3311C(v130, &qword_27D6F6638, qword_224DC07A0);
        (*(v144 + 8))(v140, v109);
        return (*(v120 + 8))(v84, v115);
      }

      v87(v85, v81, v86);
    }
  }

  sub_224A3311C(v130, &qword_27D6F6638, qword_224DC07A0);
  (*(v74 + 8))(v71, v27);
  return (*(v120 + 8))(v70, v40);
}

uint64_t sub_224D91948@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v28 - v5;
  v7 = sub_224DAAC58();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_224DA9908();
  v12 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v8 + 16);
  v16(v11, a1, v7);
  if ((*(v8 + 88))(v11, v7) == *MEMORY[0x277D46558])
  {
    v29 = a1;
    v30 = v16;
    (*(v8 + 96))(v11, v7);
    v17 = *v11;
    if (*(v17 + 16) == 1)
    {
      v18 = v12;
      v19 = v33;
      (*(v12 + 16))(v15, v17 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v33);

      __swift_project_boxed_opaque_existential_1((v32 + 32), *(v32 + 56));
      sub_224DAAC98();
      v20 = sub_224DAAE38();
      v21 = *(v20 - 8);
      v22 = (*(v21 + 48))(v6, 1, v20);
      v23 = v30;
      if (v22 == 1)
      {
        sub_224A3311C(v6, &qword_27D6F3320, &unk_224DBD6F0);
        type metadata accessor for ReplicationService.ReplicationServiceError(0);
        sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
        swift_allocError();
        v23(v24, v29, v7);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return (*(v18 + 8))(v15, v19);
      }

      else
      {
        (*(v18 + 8))(v15, v19);
        return (*(v21 + 32))(v31, v6, v20);
      }
    }

    else
    {

      type metadata accessor for ReplicationService.ReplicationServiceError(0);
      sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
      swift_allocError();
      v30(v27, v29, v7);
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v16(v26, a1, v7);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v8 + 8))(v11, v7);
  }
}

BOOL sub_224D91E58()
{
  v0 = sub_224DAAB88();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_224DAACB8() == 0xD000000000000013 && 0x8000000224DC43A0 == v5)
  {
  }

  else
  {
    v6 = sub_224DAFD88();

    result = 0;
    if ((v6 & 1) == 0)
    {
      return result;
    }
  }

  sub_224DAACC8();
  v8 = sub_224DAAB68();
  (*(v1 + 8))(v4, v0);
  return v8 > 3;
}

uint64_t sub_224D91F9C@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v138 = a2;
  v150 = a1;
  v122 = a4;
  v121 = sub_224DAAFF8();
  MEMORY[0x28223BE20](v121, v5);
  v120 = v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v119 = v114 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v116 = v114 - v12;
  v125 = sub_224DAAFC8();
  v118 = *(v125 - 8);
  MEMORY[0x28223BE20](v125, v13);
  v124 = v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_224DA9688();
  v127 = *(v128 - 8);
  v16 = MEMORY[0x28223BE20](v128, v15);
  v117 = v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v131 = v114 - v19;
  v20 = sub_224DAC268();
  v148 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v129 = v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v134 = v114 - v25;
  v136 = type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata(0);
  MEMORY[0x28223BE20](v136, v26);
  v142 = v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_224DA9908();
  v29 = *(v28 - 8);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v126 = v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v135 = v114 - v35;
  MEMORY[0x28223BE20](v34, v36);
  v130 = v114 - v37;
  v38 = sub_224DAAEA8();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v40);
  v42 = v114 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_224DAAF28();
  v45 = MEMORY[0x28223BE20](v43 - 8, v44);
  v133 = v114 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v47);
  v49 = v114 - v48;
  v50 = sub_224DAAF48();
  v139 = *(v50 - 8);
  v140 = v50;
  v52 = MEMORY[0x28223BE20](v50, v51);
  v123 = v114 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v54);
  v145 = v114 - v55;
  v56 = sub_224D91E58();
  v137 = a3;
  v132 = sub_224DAACB8();
  v146 = v57;
  v143 = v29;
  v144 = v28;
  v58 = (*(v29 + 56))(v49, 1, 1, v28);
  if (v56)
  {
    MEMORY[0x22AA59200](v58);
    sub_224D936BC(&qword_27D6F5CA8, MEMORY[0x277CF9978], MEMORY[0x277CF9980]);
    v59 = v150;
    v60 = v147;
    sub_224DAAE68();
    if (v60)
    {

      (*(v39 + 8))(v42, v38);
      return sub_224D93704(v49, MEMORY[0x277D46780]);
    }

    v147 = 0;
    v66 = v130;
    sub_224DAAE88();
    v114[1] = sub_224DA9898();
    v115 = v20;
    sub_224D9543C(v49, v133, MEMORY[0x277D46780]);
    v67 = v142;
    v68 = v115;
    sub_224DAAEE8();
    (v143[1])(v66, v144);
    (*(v39 + 8))(v42, v38);
    sub_224D93704(v49, MEMORY[0x277D46780]);
    v69 = v148;
    v70 = v134;
    (*(v148 + 16))(v134, v59, v68);
    v71 = 0;
  }

  else
  {
    sub_224DAAD38();
    v149[3] = v20;
    v149[4] = sub_224D936BC(&qword_27D6F5CA8, MEMORY[0x277CF9978], MEMORY[0x277CF9980]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v149);
    (*(v148 + 16))(boxed_opaque_existential_1, v150, v20);
    v63 = v147;
    v64 = sub_224DAAD28();
    if (v63)
    {
      sub_224D93704(v49, MEMORY[0x277D46780]);

      return __swift_destroy_boxed_opaque_existential_1(v149);
    }

    v147 = 0;
    v72 = v64;
    v73 = v65;
    __swift_destroy_boxed_opaque_existential_1(v149);
    sub_224DA96C8();
    sub_224D9543C(v49, v133, MEMORY[0x277D46780]);
    v68 = v20;
    sub_224DAAEE8();
    v69 = v148;
    sub_224A78024(v72, v73);
    sub_224D93704(v49, MEMORY[0x277D46780]);
    v71 = 1;
    v70 = v134;
    v67 = v142;
  }

  v115 = v68;
  v74 = *(v69 + 56);
  v74(v70, v71, 1, v68);
  v74(v67, 1, 1, v68);
  sub_224D9364C(v70, v67);
  v146 = __swift_project_boxed_opaque_existential_1((v141 + 32), *(v141 + 56));
  sub_224DAACB8();
  v75 = v135;
  sub_224DAAD98();
  sub_224D936BC(&qword_27D6F6EC0, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata, &unk_224DC3448);
  sub_224D936BC(&qword_27D6F6EC8, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata, &unk_224DC3420);
  v76 = v147;
  v77 = sub_224DAAB38();
  if (v76)
  {

    (v143[1])(v75, v144);
    (*(v139 + 8))(v145, v140);
    return sub_224D93704(v67, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
  }

  else
  {
    v138 = v79;
    v80 = v77;
    v146 = v78;
    v81 = v143[1];
    v81(v75, v144);

    sub_224DAC248();
    sub_224DAC258();
    sub_224DAC238();
    swift_getObjectType();
    sub_224DAC3F8();
    v150 = v81;
    v149[0] = sub_224DAC408();
    v149[1] = v82;
    sub_224DAAE48();
    v83 = v131;
    v147 = 0;

    __swift_project_boxed_opaque_existential_1((v141 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager), *(v141 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager + 24));
    sub_224DA9658();
    v84 = sub_224DAA378();

    if (v84)
    {
      v85 = v127;
      v86 = v116;
      v87 = v128;
      (*(v127 + 16))(v116, v83, v128);
      (*(v85 + 56))(v86, 0, 1, v87);
      v137 = v80;
      sub_224A77FD0(v80, v146);
      v88 = v124;
      sub_224DAAFB8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5710, &unk_224DB4160);
      v89 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50) - 8);
      v90 = (*(*v89 + 80) + 32) & ~*(*v89 + 80);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_224DB3100;
      v92 = (v91 + v90);
      v93 = v89[14];
      *v92 = v138;
      v94 = v118;
      (*(v118 + 16))(v92 + v93, v88, v125);
      v141 = sub_224DA06F0(v91);
      swift_setDeallocating();
      sub_224A3311C(v92, &unk_27D6F6FE0, &unk_224DB9C50);
      swift_deallocClassInstance();
      v95 = v139;
      (*(v139 + 16))(v123, v145, v140);
      (v143[2])(v130, v126, v144);
      v96 = sub_224DA9878();
      (*(*(v96 - 8) + 56))(v119, 1, 1, v96);
      v149[0] = MEMORY[0x277D84F90];
      sub_224D936BC(&unk_27D6F5720, MEMORY[0x277D467D0], MEMORY[0x277D467D8]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3880, &qword_224DC3300);
      sub_224A33088(&unk_27D6F5730, &qword_27D6F3880, &qword_224DC3300, MEMORY[0x277D83970]);
      sub_224DAF788();
      sub_224DAAF58();
      sub_224A78024(v137, v146);
      (*(v94 + 8))(v124, v125);
      v150(v126, v144);
      (*(v127 + 8))(v131, v128);
      (*(v148 + 8))(v129, v115);
      (*(v95 + 8))(v145, v140);
      return sub_224D93704(v142, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
    }

    else
    {
      v97 = v127;
      v98 = v117;
      v99 = v128;
      (*(v127 + 16))(v117, v83, v128);
      v100 = sub_224DAB228();
      v101 = sub_224DAF288();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v149[0] = v143;
        *v102 = 136315138;
        sub_224D936BC(&qword_281351A70, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v103 = sub_224DAFD28();
        v104 = v98;
        v106 = v105;
        LODWORD(v141) = v101;
        v107 = *(v97 + 8);
        v147 = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v107(v104, v99);
        v108 = sub_224A33F74(v103, v106, v149);

        *(v102 + 4) = v108;
        _os_log_impl(&dword_224A2F000, v100, v141, "Archive at URL does not exist: %s", v102, 0xCu);
        v109 = v143;
        __swift_destroy_boxed_opaque_existential_1(v143);
        MEMORY[0x22AA5EED0](v109, -1, -1);
        MEMORY[0x22AA5EED0](v102, -1, -1);
      }

      else
      {

        v107 = *(v97 + 8);
        v147 = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v107(v98, v99);
      }

      type metadata accessor for ReplicationService.ReplicationServiceError(0);
      sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
      swift_allocError();
      v111 = v139;
      v110 = v140;
      v112 = v145;
      (*(v139 + 16))(v113, v145, v140);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_224A78024(v80, v146);
      v150(v126, v144);
      v107(v131, v128);
      (*(v148 + 8))(v129, v115);
      (*(v111 + 8))(v112, v110);
      return sub_224D93704(v142, type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata);
    }
  }
}

char *sub_224D93424()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager));

  return v0;
}

uint64_t sub_224D934CC()
{
  sub_224D93424();

  return swift_deallocClassInstance();
}

uint64_t sub_224D9354C(uint64_t a1)
{
  result = sub_224DAB258();
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

uint64_t sub_224D9364C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_224D936BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224D93704(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224D93764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v148 = a4;
  v149 = a2;
  v159 = a1;
  v150 = sub_224DA9908();
  v147 = *(v150 - 8);
  MEMORY[0x28223BE20](v150, v5);
  v145 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v142 = &v134 - v9;
  v160 = sub_224DAC268();
  v162 = *(v160 - 8);
  v11 = MEMORY[0x28223BE20](v160, v10);
  v144 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v143 = &v134 - v14;
  v15 = sub_224DAB018();
  v157 = *(v15 - 8);
  v158 = v15;
  v17 = MEMORY[0x28223BE20](v15, v16);
  v146 = &v134 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v154 = &v134 - v20;
  v21 = type metadata accessor for PlaceholderArchiveReplicator.ArchiveMetadata(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v153 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v151 = &v134 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v141 = &v134 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v155 = &v134 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v163 = &v134 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v161 = &v134 - v38;
  v39 = sub_224DAAFC8();
  v165 = *(v39 - 8);
  v166 = v39;
  MEMORY[0x28223BE20](v39, v40);
  v164 = &v134 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_224DAAB88();
  v167 = *(v42 - 8);
  v168 = v42;
  MEMORY[0x28223BE20](v42, v43);
  v45 = &v134 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_224DAB0F8();
  v47 = *(v46 - 8);
  v169 = v46;
  v170 = v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v51 = &v134 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v52);
  v171 = &v134 - v53;
  v54 = sub_224DAAF48();
  v55 = *(v54 - 8);
  v57 = MEMORY[0x28223BE20](v54, v56);
  v152 = &v134 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v59);
  v61 = &v134 - v60;
  v62 = a3;
  sub_224DAAF88();
  v63 = sub_224DAAF08();
  v65 = v64;
  v66 = *(v55 + 8);
  v66(v61, v54);
  v67 = sub_224AFC108(v63, v65);
  if (v67 == 13)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v69 = v68;
    sub_224DAAF88();
    v70 = sub_224DAAF08();
    v72 = v71;
    v66(v61, v54);
    *v69 = v70;
    v69[1] = v72;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v73 = v67;
  v138 = v66;
  v139 = v54;
  v140 = v62;
  if (qword_2813592A8 != -1)
  {
    swift_once();
  }

  v74 = qword_2813652C8;
  if (!*(qword_2813652C8 + 16) || (v75 = sub_224B0B668(v73), (v76 & 1) == 0))
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    v85 = v84;
    *v84 = sub_224AF02C0(v73);
    v85[1] = v86;
    goto LABEL_10;
  }

  v77 = v169;
  v78 = v170;
  (*(v170 + 16))(v51, *(v74 + 56) + *(v170 + 72) * v75, v169);
  v79 = v171;
  (*(v78 + 32))(v171, v51, v77);
  sub_224DAB0C8();
  v80 = sub_224DAAEB8();
  v82 = v81;
  (*(v167 + 8))(v45, v168);
  if (v82)
  {
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v78 + 8))(v79, v77);
  }

  v87 = sub_224DAAFD8();
  if (!*(v87 + 16) || (v88 = sub_224B31510(v80), (v89 & 1) == 0))
  {

    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v170 + 8))(v171, v169);
  }

  v90 = v164;
  v91 = v165;
  v92 = v166;
  (*(v165 + 16))(v164, *(v87 + 56) + *(v165 + 72) * v88, v166);

  v93 = v161;
  sub_224DAAF98();
  v94 = sub_224DA9688();
  v95 = *(v94 - 8);
  if ((*(v95 + 48))(v93, 1, v94) == 1)
  {
    v96 = v171;
    sub_224A3311C(v93, &unk_27D6F4680, &unk_224DB4610);
    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v91 + 8))(v90, v92);
    return (*(v170 + 8))(v96, v169);
  }

  v167 = v95;
  (*(v95 + 32))(v159, v93, v94);
  v97 = v163;
  v98 = v160;
  v135 = v162[7];
  v135(v163, 1, 1, v160);
  v99 = *(v157 + 16);
  v100 = v154;
  v137 = v157 + 16;
  v136 = v99;
  v99(v154, v140, v158);
  v101 = v153;
  v102 = v156;
  sub_224D8EA44(v100, v80, v153);
  v168 = v94;
  if (v102)
  {
  }

  else
  {
    sub_224A3311C(v97, &qword_27D6F4A18, &qword_224DB9070);
    sub_224D954A4(v101, v97);
  }

  v103 = v155;
  sub_224A3796C(v97, v155, &qword_27D6F4A18, &qword_224DB9070);
  v161 = v162[6];
  v104 = (v161)(v103, 1, v98);
  sub_224A3311C(v103, &qword_27D6F4A18, &qword_224DB9070);
  if (v104 == 1)
  {
    v105 = v152;
    sub_224DAAF88();
    sub_224DAAEF8();
    v106 = sub_224DA96A8();
    v108 = v107;

    if (v108 >> 60 == 15)
    {
      sub_224C4DE90();
      swift_allocError();
      swift_willThrow();
      v138(v105, v139);
      sub_224A3311C(v163, &qword_27D6F4A18, &qword_224DB9070);
      (*(v167 + 8))(v159, v168);
      (*(v165 + 8))(v164, v166);
      return (*(v170 + 8))(v171, v169);
    }

    sub_224DAAD38();
    sub_224D936BC(&qword_27D6F56D0, MEMORY[0x277CF9978], MEMORY[0x277CF9998]);
    v109 = v143;
    sub_224DAAD18();
    v156 = sub_224DAC248();
    v155 = sub_224DAC258();
    sub_224DAC218();
    sub_224DAC228();
    sub_224AC1D9C(v106, v108);
    v110 = v160;
    (v162[1])(v109, v160);
    v138(v152, v139);
    v111 = v163;
    sub_224A3311C(v163, &qword_27D6F4A18, &qword_224DB9070);
    v112 = v141;
    v135(v141, 0, 1, v110);
    sub_224D954A4(v112, v111);
  }

  v113 = v140;
  v114 = v163;
  v115 = v151;
  sub_224A3796C(v163, v151, &qword_27D6F4A18, &qword_224DB9070);
  v116 = v160;
  v117 = (v161)(v115, 1, v160);
  v118 = v170;
  if (v117 == 1)
  {
    sub_224A3311C(v115, &qword_27D6F4A18, &qword_224DB9070);
    v119 = v146;
    v120 = v158;
    v136(v146, v113, v158);
    v121 = sub_224DAB228();
    v122 = sub_224DAF2A8();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      v161 = v123;
      v162 = swift_slowAlloc();
      v172 = v162;
      *v123 = 136446210;
      sub_224DAAF88();
      sub_224D936BC(&qword_281351720, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v124 = v139;
      v125 = sub_224DAFD28();
      v127 = v126;
      v138(v61, v124);
      (*(v157 + 8))(v119, v120);
      v128 = sub_224A33F74(v125, v127, &v172);
      v118 = v170;

      v129 = v161;
      *(v161 + 4) = v128;
      _os_log_impl(&dword_224A2F000, v121, v122, "Could not retrieve widget entry key for %{public}s", v129, 0xCu);
      v130 = v162;
      __swift_destroy_boxed_opaque_existential_1(v162);
      MEMORY[0x22AA5EED0](v130, -1, -1);
      MEMORY[0x22AA5EED0](v129, -1, -1);
    }

    else
    {

      (*(v157 + 8))(v119, v120);
    }

    type metadata accessor for ReplicationService.ReplicationServiceError(0);
    sub_224D936BC(qword_281359550, type metadata accessor for ReplicationService.ReplicationServiceError, &unk_224DB44C0);
    swift_allocError();
    sub_224DAAF88();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_224A3311C(v163, &qword_27D6F4A18, &qword_224DB9070);
    (*(v167 + 8))(v159, v168);
  }

  else
  {
    v131 = v162;
    v132 = v144;
    (v162[4])(v144, v115, v116);
    v133 = v145;
    sub_224DAAD98();
    sub_224B44A4C(v133, v149);
    (*(v147 + 8))(v133, v150);
    (v131[1])(v132, v116);
    sub_224A3311C(v114, &qword_27D6F4A18, &qword_224DB9070);
  }

  (*(v165 + 8))(v164, v166);
  return (*(v118 + 8))(v171, v169);
}

uint64_t sub_224D94A10(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v2 = sub_224DA9908();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56F8, &qword_224DBBCC8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v12 = MEMORY[0x28223BE20](v10 - 8, v11);
  v32 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v29 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v29 - v19;
  swift_getObjectType();
  v21 = v33;
  sub_224DAC428();
  if (v21)
  {

    (*(v3 + 56))(v20, 1, 1, v2);
  }

  v33 = 0;
  (*(v3 + 16))(v17, v31, v2);
  (*(v3 + 56))(v17, 0, 1, v2);
  v22 = *(v6 + 48);
  sub_224A3796C(v17, v9, &unk_27D6F5630, &unk_224DB34C0);
  sub_224A3796C(v20, &v9[v22], &unk_27D6F5630, &unk_224DB34C0);
  v23 = *(v3 + 48);
  if (v23(v9, 1, v2) != 1)
  {
    sub_224A3796C(v9, v32, &unk_27D6F5630, &unk_224DB34C0);
    if (v23(&v9[v22], 1, v2) != 1)
    {
      v25 = v30;
      (*(v3 + 32))(v30, &v9[v22], v2);
      sub_224D936BC(&qword_281351A10, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v26 = v32;
      v24 = sub_224DAEDD8();
      v27 = *(v3 + 8);
      v27(v25, v2);
      sub_224A3311C(v17, &unk_27D6F5630, &unk_224DB34C0);
      sub_224A3311C(v20, &unk_27D6F5630, &unk_224DB34C0);
      v27(v26, v2);
      sub_224A3311C(v9, &unk_27D6F5630, &unk_224DB34C0);
      return v24 & 1;
    }

    sub_224A3311C(v17, &unk_27D6F5630, &unk_224DB34C0);
    sub_224A3311C(v20, &unk_27D6F5630, &unk_224DB34C0);
    (*(v3 + 8))(v32, v2);
    goto LABEL_8;
  }

  sub_224A3311C(v17, &unk_27D6F5630, &unk_224DB34C0);
  sub_224A3311C(v20, &unk_27D6F5630, &unk_224DB34C0);
  if (v23(&v9[v22], 1, v2) != 1)
  {
LABEL_8:
    sub_224A3311C(v9, &qword_27D6F56F8, &qword_224DBBCC8);
    v24 = 0;
    return v24 & 1;
  }

  sub_224A3311C(v9, &unk_27D6F5630, &unk_224DB34C0);
  v24 = 1;
  return v24 & 1;
}

void *sub_224D94EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v40 = a2;
  v38 = a4;
  v39 = a13;
  v32 = a12;
  v33 = a3;
  v35 = a11;
  v16 = *(a6 - 8);
  v36 = a9;
  MEMORY[0x28223BE20](a1, a2);
  v37 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB258();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[3] = a6;
  v44[4] = a9;
  v44[5] = a10;
  v44[6] = a11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
  (*(v16 + 32))(boxed_opaque_existential_1, a1, a6);
  v42 = a7;
  v43 = v32;
  v23 = __swift_allocate_boxed_opaque_existential_1(&v41);
  (*(*(a7 - 8) + 32))(v23, v33, a7);
  type metadata accessor for PlaceholderArchiveReplicator(0);
  v24 = swift_allocObject();
  v24[2] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5668, &qword_224DBD770);
  swift_allocObject();
  v24[3] = sub_224DAB358();
  *(v24 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_subscriptions) = MEMORY[0x277D84FA0];
  *(v24 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_started) = 0;
  sub_224BBF304(v44, (v24 + 4));
  updated = type metadata accessor for ReplicatorUpdateObserver(0);
  v26 = v38;
  (*(v19 + 16))(v22, v38, v18);
  v27 = v37;
  (*(v16 + 16))(v37, boxed_opaque_existential_1, a6);
  v28 = sub_224B554B8(v27, 0xD000000000000013, 0x8000000224DC43A0, v22, updated, a6, v36, v35);
  v29 = v39;
  v30 = v40;
  v24[11] = v28;
  v24[12] = v30;
  v24[13] = v29;
  (*(v19 + 32))(v24 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_logger, v26, v18);
  sub_224A36F98(&v41, v24 + OBJC_IVAR____TtC10ChronoCore28PlaceholderArchiveReplicator_fileManager);
  __swift_destroy_boxed_opaque_existential_1(v44);
  return v24;
}

uint64_t sub_224D951D4@<X0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_224D91F9C(a1, *(v3 + 24), *(v3 + 32), a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_224D95218(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_224ACED1C;

  return sub_224B532B8(a1, v4, v5, v6);
}

uint64_t sub_224D952CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_224ACFF60;

  return sub_224A3BBFC(a1, v4);
}

uint64_t sub_224D95384(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_224ACED1C;

  return sub_224A3BBFC(a1, v4);
}

uint64_t sub_224D9543C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224D954A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_224D95514()
{
  result = qword_27D6F6ED8;
  if (!qword_27D6F6ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6ED8);
  }

  return result;
}

void sub_224D955A0(uint64_t a1)
{
  sub_224D9560C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_224D9560C(uint64_t a1)
{
  if (!qword_281350E28)
  {
    sub_224DAC268();
    v1 = sub_224DAF728();
    if (!v2)
    {
      atomic_store(v1, &qword_281350E28);
    }
  }
}

unint64_t sub_224D95668()
{
  result = qword_27D6F6EF0;
  if (!qword_27D6F6EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6EF0);
  }

  return result;
}

unint64_t sub_224D956BC()
{
  result = qword_27D6F6F00;
  if (!qword_27D6F6F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F00);
  }

  return result;
}

unint64_t sub_224D95724()
{
  result = qword_27D6F6F10;
  if (!qword_27D6F6F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F10);
  }

  return result;
}

unint64_t sub_224D9577C()
{
  result = qword_27D6F6F18;
  if (!qword_27D6F6F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F18);
  }

  return result;
}

unint64_t sub_224D957D4()
{
  result = qword_27D6F6F20;
  if (!qword_27D6F6F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F20);
  }

  return result;
}

uint64_t sub_224D95828(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_224DAAE38();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_224D958B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_224DAAE38();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_224D95B14(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_224DAAE38() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_224D95E1C(uint64_t a1)
{
  sub_224DAF938();
  sub_224DAFD58();
  MEMORY[0x22AA5D210](0xD000000000000010, 0x8000000224DD05A0);
  sub_224DAAE38();
  sub_224DAFA48();
  return 0;
}

uint64_t sub_224D95ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (sub_224DAEDD8())
  {
    _s6UpdateVMa(0, a3, a4, a5);

    JUMPOUT(0x22AA59150);
  }

  return 0;
}

uint64_t sub_224D95F74@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D441C8]) init];
  result = sub_224A3B79C(0, &qword_27D6F4BE8, 0x277D441C8);
  a1[3] = result;
  a1[4] = &off_28382DFC8;
  *a1 = v2;
  return result;
}

uint64_t sub_224D95FE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F58, &qword_224DC38B0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224D9E954();
  sub_224DAFF08();
  v16 = a2;
  v15 = 0;
  sub_224DAF538();
  sub_224D9EDC0(&qword_27D6F6F60, MEMORY[0x277CFA140], MEMORY[0x277CFA148]);
  sub_224DAFCE8();
  if (!v4)
  {
    v14 = 1;
    sub_224DAFCC8();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_224D961C0()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_224D961F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x8000000224DC6EB0 == a2 || (sub_224DAFD88() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_224DAFD88();

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

uint64_t sub_224D962E0(uint64_t a1)
{
  v2 = sub_224D9E954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224D9631C(uint64_t a1)
{
  v2 = sub_224D9E954();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224D96358@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_224D9E730(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_224D963A8()
{
  sub_224DAFE68();
  sub_224DAF6B8();
  sub_224DAEE78();
  return sub_224DAFEA8();
}

uint64_t sub_224D9640C(uint64_t a1)
{
  sub_224DAF6B8();

  return sub_224DAEE78();
}

uint64_t sub_224D96460(uint64_t a1)
{
  sub_224DAFE68();
  sub_224DAF6B8();
  sub_224DAEE78();
  return sub_224DAFEA8();
}

uint64_t sub_224D964C0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
  if ((sub_224DAF6A8() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_224DAFD88();
}

void sub_224D9657C(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *v3;
  if (a1)
  {
    v6[4] = a1;
    v6[5] = a2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_224A39F40;
    v6[3] = &block_descriptor_98_0;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
  }

  [v4 setScreenOnChangedHandler_];
  _Block_release(v5);
}

void sub_224D96628(uint64_t a1, uint64_t a2, double a3)
{
  if (a1)
  {
    v4 = *v3;
    v6[4] = a1;
    v6[5] = a2;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 1107296256;
    v6[2] = sub_224A39F40;
    v6[3] = &block_descriptor_95_0;
    v5 = _Block_copy(v6);
  }

  else
  {
    v5 = 0;
    v4 = *v3;
  }

  [v4 activateWithCompletion_];
  _Block_release(v5);
}

void sub_224D967F4(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v5 = *(a1 + 32);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_5:
    *a2 = v7;
    return;
  }

  v10[9] = v2;
  v7 = sub_224B0CD98(v6, 0);
  v8 = sub_224B300B8(v10, v7 + 4, v6, v5);
  v9 = v10[0];

  sub_224A3B7E4(v9);
  if (v8 == v6)
  {
    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_224D968E0()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5758, &qword_224DC38E0);
    sub_224A33088(&qword_281350F30, &qword_27D6F5758, &qword_224DC38E0, MEMORY[0x277CBCE20]);
    v1 = sub_224DAB3A8();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_224D969A4()
{
  v1 = OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsDiscovery;
  if (*(v0 + OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsDiscovery))
  {
    v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsDiscovery);
  }

  else
  {
    v3 = v0;
    type metadata accessor for DiagnosticNearbyDeviceDiscovery();
    swift_allocObject();
    v2 = sub_224BCA708(sub_224D95F74, 0);
    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_224D96A38()
{
  v1 = v0;
  v2 = sub_224DAF318();
  MEMORY[0x28223BE20](v2, v3);
  v4 = sub_224DAF3C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAB848();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v11 = OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsQueue;
  v12 = *(v0 + OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsQueue);
  if (v12)
  {
    v13 = *(v0 + OBJC_IVAR____TtC10ChronoCore16StalenessService____lazy_storage___diagnosticsQueue);
  }

  else
  {
    v14 = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
    v19[1] = "\nOther stale keys: ";
    v19[2] = v14;
    sub_224DAB828();
    (*(v5 + 104))(v8, *MEMORY[0x277D85268], v4);
    v19[3] = MEMORY[0x277D84F90];
    sub_224D9EDC0(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
    sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
    sub_224DAF788();
    v15 = sub_224DAF418();
    v16 = *(v0 + v11);
    *(v1 + v11) = v15;
    v13 = v15;

    v12 = 0;
  }

  v17 = v12;
  return v13;
}

uint64_t sub_224D96CE0()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v20[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 56);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  v9 = sub_224DAB8F8();
  result = (*(v3 + 8))(v6, v2);
  if (v9)
  {
    swift_beginAccess();
    v11 = *(v1 + 184);
    v12 = *(v1 + 192);
    __swift_mutable_project_boxed_opaque_existential_1(v1 + 160, v11);
    (*(v12 + 16))(v8, v11, v12);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = *(v1 + 184);
    v15 = *(v1 + 192);
    __swift_mutable_project_boxed_opaque_existential_1(v1 + 160, v14);
    v16 = *(v15 + 40);

    v16(sub_224A9C9F8, v13, v14, v15);
    swift_endAccess();

    sub_224A3317C(v1 + 160, v20);
    v17 = v21;
    v18 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v18 + 64))(0, 0, v17, v18);
    return __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_224D96F1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v240 = v197 - v4;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v199 = *(v239 - 8);
  MEMORY[0x28223BE20](v239, v5);
  v238 = v197 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F70, &qword_224DC38C8);
  v9 = MEMORY[0x28223BE20](v7 - 8, v8);
  v11 = v197 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v197 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v222 = v197 - v17;
  v230 = sub_224DA9908();
  v18 = *(v230 - 8);
  v20 = MEMORY[0x28223BE20](v230, v19);
  v22 = v197 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v213 = v197 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v200 = v197 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  v30 = MEMORY[0x28223BE20](v28 - 8, v29);
  v210 = v197 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v229 = v197 - v33;
  v231 = sub_224DAAE38();
  v34 = *(v231 - 8);
  v36 = MEMORY[0x28223BE20](v231, v35);
  v203 = v197 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v209 = v197 - v40;
  v204 = v41;
  MEMORY[0x28223BE20](v39, v42);
  v202 = v197 - v43;
  v227 = sub_224DA9878();
  v44 = *(v227 - 8);
  v46 = MEMORY[0x28223BE20](v227, v45);
  v201 = v197 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v46, v48);
  v198 = v197 - v50;
  MEMORY[0x28223BE20](v49, v51);
  v215 = v197 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F78, &qword_224DC38D0);
  v55 = MEMORY[0x28223BE20](v53 - 8, v54);
  v228 = v197 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v57);
  v234 = (v197 - v58);
  v59 = sub_224DAB8C8();
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59, v61);
  v63 = (v197 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  v236 = v1;
  v64 = v1[7];
  *v63 = v64;
  (*(v60 + 104))(v63, *MEMORY[0x277D85200], v59);
  v65 = v64;
  LOBYTE(v64) = sub_224DAB8F8();
  (*(v60 + 8))(v63, v59);
  if (v64)
  {
    v211 = v14;
    v212 = v11;
    v66 = v236;
    swift_beginAccess();
    v67 = v66[4];
    v68 = v67 + 64;
    v69 = 1 << *(v67 + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v71 = v70 & *(v67 + 64);
    v226 = (v69 + 63) >> 6;
    v214 = v44 + 16;
    v218 = (v44 + 32);
    v225 = (v34 + 56);
    v223 = (v44 + 8);
    v206 = (v34 + 32);
    v216 = v44;
    v197[1] = v44 + 40;
    v220 = (v18 + 8);
    v207 = v34;
    v205 = (v34 + 8);
    v217 = v67;

    v72 = 0;
    v73 = 0;
    v219 = MEMORY[0x277D84F98];
    *&v74 = 136446210;
    v208 = v74;
    v221 = v18;
    v232 = v22;
    v75 = v234;
    v224 = v68;
LABEL_5:
    v76 = v227;
    v77 = v226;
    while (v71)
    {
      v233 = v73;
      v82 = v72;
LABEL_18:
      v237 = ((v71 - 1) & v71);
      v87 = __clz(__rbit64(v71)) | (v82 << 6);
      v88 = *(v217 + 48) + 24 * v87;
      v89 = *v88;
      v90 = *(v88 + 8);
      v91 = *(v88 + 16);
      v92 = v216;
      v93 = v215;
      (*(v216 + 16))(v215, *(v217 + 56) + *(v216 + 72) * v87, v76);
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F68, &unk_224DC38B8);
      v95 = *(v94 + 48);
      v96 = v228;
      *v228 = v89;
      *(v96 + 1) = v90;
      *(v96 + 2) = v91;
      v97 = *(v92 + 32);
      v86 = v96;
      v97(&v96[v95], v93, v76);
      (*(*(v94 - 8) + 56))(v86, 0, 1, v94);
      v98 = v89;

      v73 = v233;
      v75 = v234;
      v85 = v229;
LABEL_19:
      sub_224A44E4C(v86, v75, &qword_27D6F6F78, &qword_224DC38D0);
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F68, &unk_224DC38B8);
      if ((*(*(v99 - 8) + 48))(v75, 1, v99) == 1)
      {
        v233 = v73;

        v146 = *(v219 + 64);
        v224 = v219 + 64;
        v147 = 1 << *(v219 + 32);
        v148 = -1;
        if (v147 < 64)
        {
          v148 = ~(-1 << v147);
        }

        v149 = v148 & v146;

        swift_beginAccess();
        v150 = 0;
        v151 = (v147 + 63) >> 6;
        v152 = v221;
        v226 = v221 + 16;
        v234 = (v221 + 32);
        v237 = (v199 + 16);
        v225 = (v207 + 48);
        v223 = (v207 + 16);
        v153 = v212;
        v154 = v211;
        v155 = v232;
        v227 = v151;
        while (v149)
        {
          v156 = v150;
LABEL_59:
          v235 = (v149 - 1) & v149;
          v159 = __clz(__rbit64(v149)) | (v156 << 6);
          v160 = v219;
          v161 = v213;
          v162 = v230;
          (*(v152 + 16))(v213, *(v219 + 48) + *(v152 + 72) * v159, v230);
          v163 = *(*(v160 + 56) + 8 * v159);
          v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F80, &qword_224DC38D8);
          v165 = *(v164 + 48);
          v166 = *(v152 + 32);
          v167 = v162;
          v166(v153, v161, v162);
          *(v153 + v165) = v163;
          (*(*(v164 - 8) + 56))(v153, 0, 1, v164);

          v158 = v156;
          v155 = v232;
LABEL_60:
          sub_224A44E4C(v153, v154, &qword_27D6F6F70, &qword_224DC38C8);
          v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F80, &qword_224DC38D8);
          if ((*(*(v168 - 8) + 48))(v154, 1, v168) == 1)
          {

            sub_224D99138();
          }

          v169 = *(v154 + *(v168 + 48));
          (*v234)(v155, v154, v167);
          v170 = v169[2];
          if (v170)
          {
            v229 = v158;
            v241[0] = MEMORY[0x277D84F90];
            sub_224ADA79C(0, v170, 0);
            sub_224DAF538();
            v171 = v241[0];
            v228 = v169;
            v172 = v169 + 6;
            do
            {
              v173 = *(v172 - 2);
              v174 = *(v172 - 1);
              v175 = *v172;
              v176 = *MEMORY[0x277CFA138];
              swift_beginAccess();
              (*v237)(v238, v173 + v176, v239);
              v177 = *MEMORY[0x277CFA130];
              swift_beginAccess();
              sub_224A3796C(v173 + v177, v240, &unk_27D6F5060, &qword_224DB5620);

              v178 = sub_224DAF508();
              v241[0] = v171;
              v180 = *(v171 + 16);
              v179 = *(v171 + 24);
              if (v180 >= v179 >> 1)
              {
                sub_224ADA79C((v179 > 1), v180 + 1, 1);
                v171 = v241[0];
              }

              *(v171 + 16) = v180 + 1;
              v181 = (v171 + 24 * v180);
              v181[4] = v178;
              v181[5] = v174;
              v181[6] = v175;
              v172 += 3;
              --v170;
            }

            while (v170);
            __swift_project_boxed_opaque_existential_1(v236 + 13, v236[16]);
            v182 = v210;
            v155 = v232;
            sub_224DAAC98();
            v183 = v231;
            if ((*v225)(v182, 1, v231) == 1)
            {
              (*v220)(v155, v230);

              sub_224A3311C(v182, &qword_27D6F3320, &unk_224DBD6F0);
            }

            else
            {
              v184 = v207;
              v185 = *(v207 + 32);
              v186 = v236;
              v187 = v209;
              v185(v209, v182, v183);
              v188 = v203;
              (*(v184 + 16))(v203, v187, v183);
              v189 = (*(v184 + 80) + 32) & ~*(v184 + 80);
              v190 = swift_allocObject();
              v191 = v228;
              *(v190 + 16) = v186;
              *(v190 + 24) = v191;
              v185((v190 + v189), v188, v183);
              sub_224A3317C((v186 + 8), v241);
              v192 = v242;
              v193 = v243;
              __swift_project_boxed_opaque_existential_1(v241, v242);
              v194 = *(v193 + 64);
              v155 = v232;

              v194(v171, v155, sub_224D9EC7C, v190, v192, v193);

              (*(v184 + 8))(v209, v183);
              (*v220)(v155, v230);
              __swift_destroy_boxed_opaque_existential_1(v241);
            }

            v150 = v229;
            v153 = v212;
            v154 = v211;
            v152 = v221;
            v151 = v227;
          }

          else
          {
            (*v220)(v155, v167);

            v150 = v158;
            v152 = v221;
            v151 = v227;
          }

          v149 = v235;
        }

        if (v151 <= (v150 + 1))
        {
          v157 = (v150 + 1);
        }

        else
        {
          v157 = v151;
        }

        v158 = (v157 - 1);
        while (1)
        {
          v156 = (v150 + 1);
          if (__OFADD__(v150, 1))
          {
            goto LABEL_73;
          }

          if (v156 >= v151)
          {
            v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F80, &qword_224DC38D8);
            (*(*(v195 - 8) + 56))(v153, 1, 1, v195);
            v235 = 0;
            v167 = v230;
            goto LABEL_60;
          }

          v149 = *(v224 + 8 * v156);
          ++v150;
          if (v149)
          {
            goto LABEL_59;
          }
        }
      }

      v100 = *v75;
      v101 = *(v75 + 8);
      v102 = *(v75 + 16);
      v235 = *(v99 + 48);
      sub_224D9C314(v100, v85);
      if (!v73)
      {
        v233 = 0;
        v114 = v231;
        (*v225)(v85, 0, 1, v231);
        (*v206)(v202, v85, v114);
        v115 = v100;

        v116 = v198;
        sub_224DA9808();
        v117 = v236;
        swift_beginAccess();
        v118 = *v218;
        (*v218)(v201, v116, v227);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v244 = v117[5];
        v120 = v244;
        v117[5] = 0x8000000000000000;
        v121 = sub_224B0C03C(v115, v101, v102);
        v123 = *(v120 + 16);
        v124 = (v122 & 1) == 0;
        v125 = __OFADD__(v123, v124);
        v126 = v123 + v124;
        if (v125)
        {
          goto LABEL_75;
        }

        v127 = v122;
        if (*(v120 + 24) >= v126)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_31;
          }

          v130 = v121;
          sub_224B2B68C();
          v121 = v130;
          v129 = v244;
          if ((v127 & 1) == 0)
          {
            goto LABEL_34;
          }

LABEL_32:
          (*(v216 + 40))(v129[7] + *(v216 + 72) * v121, v201, v227);
        }

        else
        {
          sub_224B1B598(v126, isUniquelyReferenced_nonNull_native);
          v121 = sub_224B0C03C(v115, v101, v102);
          if ((v127 & 1) != (v128 & 1))
          {
            goto LABEL_77;
          }

LABEL_31:
          v129 = v244;
          if (v127)
          {
            goto LABEL_32;
          }

LABEL_34:
          v129[(v121 >> 6) + 8] |= 1 << v121;
          v131 = (v129[6] + 24 * v121);
          *v131 = v115;
          v131[1] = v101;
          v131[2] = v102;
          v118((v129[7] + *(v216 + 72) * v121), v201, v227);
          v132 = v129[2];
          v125 = __OFADD__(v132, 1);
          v133 = v132 + 1;
          if (v125)
          {
            goto LABEL_76;
          }

          v129[2] = v133;
        }

        v236[5] = v129;

        swift_endAccess();
        v134 = v200;
        sub_224DAAD98();
        v135 = v219;
        if (*(v219 + 16) && (v136 = sub_224A438E8(v134), (v137 & 1) != 0))
        {
          v138 = *(*(v135 + 56) + 8 * v136);
        }

        else
        {
          v138 = MEMORY[0x277D84F90];
        }

        v139 = v115;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_224AD9F90(0, *(v138 + 2) + 1, 1, v138);
        }

        v141 = *(v138 + 2);
        v140 = *(v138 + 3);
        if (v141 >= v140 >> 1)
        {
          v138 = sub_224AD9F90((v140 > 1), v141 + 1, 1, v138);
        }

        *(v138 + 2) = v141 + 1;
        v142 = &v138[24 * v141];
        *(v142 + 4) = v139;
        *(v142 + 5) = v101;
        *(v142 + 6) = v102;
        v143 = v219;
        v144 = swift_isUniquelyReferenced_nonNull_native();
        v241[0] = v143;
        v145 = v200;
        sub_224B240A0(v138, v200, v144);

        v219 = v241[0];
        (*v220)(v145, v230);
        (*v205)(v202, v231);
        (*v223)(v75 + v235, v227);
        v73 = v233;
        v68 = v224;
        v71 = v237;
        goto LABEL_5;
      }

      (*v225)(v85, 1, 1, v231);
      sub_224A3311C(v85, &qword_27D6F3320, &unk_224DBD6F0);
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v103 = sub_224DAB258();
      __swift_project_value_buffer(v103, qword_281365120);
      v104 = v100;

      v105 = sub_224DAB228();
      v106 = sub_224DAF288();

      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        v244 = v108;
        *v107 = v208;
        v241[0] = v104;
        v241[1] = v101;
        v241[2] = v102;
        v109 = v104;

        v110 = sub_224DAEE28();
        v112 = sub_224A33F74(v110, v111, &v244);
        v78 = v227;

        *(v107 + 4) = v112;
        _os_log_impl(&dword_224A2F000, v105, v106, "Could not queue staleness message for: %{public}s: No relationship", v107, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v108);
        MEMORY[0x22AA5EED0](v108, -1, -1);
        MEMORY[0x22AA5EED0](v107, -1, -1);
      }

      else
      {

        v78 = v227;
      }

      swift_beginAccess();
      v79 = v104;

      v80 = v222;
      sub_224B0E8E0(v79, v101, v102, v222);

      sub_224A3311C(v80, &qword_27D6F32B0, &qword_224DB3EA0);
      swift_endAccess();
      swift_beginAccess();
      v81 = v79;

      sub_224B0E8E0(v81, v101, v102, v80);

      sub_224A3311C(v80, &qword_27D6F32B0, &qword_224DB3EA0);
      swift_endAccess();

      v75 = v234;
      (*v223)(v234 + v235, v78);
      v73 = 0;
      v68 = v224;
      v77 = v226;
      v76 = v78;
      v71 = v237;
    }

    if (v77 <= v72 + 1)
    {
      v83 = v72 + 1;
    }

    else
    {
      v83 = v77;
    }

    v84 = v83 - 1;
    v85 = v229;
    v86 = v228;
    while (1)
    {
      v82 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v82 >= v77)
      {
        v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F68, &unk_224DC38B8);
        (*(*(v113 - 8) + 56))(v86, 1, 1, v113);
        v237 = 0;
        v72 = v84;
        goto LABEL_19;
      }

      v71 = *(v68 + 8 * v82);
      ++v72;
      if (v71)
      {
        v233 = v73;
        v72 = v82;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

double sub_224D987E8(void *a1)
{
  swift_beginAccess();
  v2 = MEMORY[0x277D84F98];
  a1[5] = MEMORY[0x277D84F98];

  swift_beginAccess();
  a1[4] = v2;

  sub_224DAA948();

  return result;
}

uint64_t sub_224D98870(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v101 = &v94 - v10;
  v11 = sub_224DA9878();
  v12 = *(v11 - 8);
  v102 = v11;
  v103 = v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v14, v17);
  v99 = &v94 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = &v94 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v94 - v25;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v27 = sub_224DAB258();
  v28 = __swift_project_value_buffer(v27, qword_281365120);
  v29 = a1;

  v30 = sub_224DAB228();
  v31 = sub_224DAF2A8();

  v32 = os_log_type_enabled(v30, v31);
  v104 = v26;
  v98 = v16;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v100 = v28;
    v97 = v34;
    v107[0] = v34;
    *v33 = 136446210;
    v107[3] = v29;
    v107[4] = a2;
    v107[5] = a3;
    v35 = v29;

    v36 = sub_224DAEE28();
    v38 = v29;
    v39 = sub_224A33F74(v36, v37, v107);

    *(v33 + 4) = v39;
    v29 = v38;
    _os_log_impl(&dword_224A2F000, v30, v31, "Marking timeline key as stale: %{public}s", v33, 0xCu);
    v40 = v97;
    __swift_destroy_boxed_opaque_existential_1(v97);
    v41 = v40;
    v28 = v100;
    MEMORY[0x22AA5EED0](v41, -1, -1);
    MEMORY[0x22AA5EED0](v33, -1, -1);
  }

  sub_224DA9808();
  swift_beginAccess();
  v42 = *(a4 + 40);
  if (*(v42 + 16))
  {

    v43 = sub_224B0C03C(v29, a2, a3);
    if (v44)
    {
      v96 = v29;
      v97 = a2;
      v100 = v28;
      v45 = *(v42 + 56);
      v46 = v102;
      v47 = v103;
      v95 = *(v103 + 72);
      v48 = *(v103 + 16);
      v48(v23, v45 + v95 * v43, v102);

      v49 = v99;
      sub_224DA9768();
      v50 = sub_224DA9788();
      v51 = *(v47 + 8);
      v51(v49, v46);
      if (v50)
      {
        v99 = v51;
        swift_beginAccess();
        v52 = *(a4 + 32);
        v53 = v48;
        if (*(v52 + 16))
        {

          v54 = sub_224B0C03C(v96, v97, a3);
          if (v55)
          {
            v56 = v98;
            v53(v98, *(v52 + 56) + v54 * v95, v46);

            v57 = v104;
            if (sub_224DA9788())
            {
              v58 = v101;
              v53(v101, v57, v46);
              (*(v103 + 56))(v58, 0, 1, v46);
              swift_beginAccess();
              v59 = v96;
              v60 = v96;

              v61 = v60;
              v62 = v97;
              sub_224B09DB8(v58, v61, v97, a3);
              swift_endAccess();
              (v99)(v98, v46);
            }

            else
            {
              (v99)(v56, v46);
              v59 = v96;
              v62 = v97;
            }

LABEL_20:
            sub_224D99138();
            v82 = v23;
            v83 = v99;
            (v99)(v82, v46);
            v84 = v59;

            v85 = sub_224DAB228();
            v86 = v46;
            v87 = sub_224DAF2A8();

            if (os_log_type_enabled(v85, v87))
            {
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              v105 = v89;
              v106[0] = v84;
              *v88 = 136446210;
              v106[1] = v62;
              v106[2] = a3;
              v90 = v84;

              v91 = sub_224DAEE28();
              v93 = sub_224A33F74(v91, v92, &v105);

              *(v88 + 4) = v93;
              _os_log_impl(&dword_224A2F000, v85, v87, "Delaying staleness message: %{public}s", v88, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v89);
              MEMORY[0x22AA5EED0](v89, -1, -1);
              MEMORY[0x22AA5EED0](v88, -1, -1);
            }

            return v83(v104, v86);
          }
        }

        v79 = v101;
        v53(v101, v104, v46);
        (*(v103 + 56))(v79, 0, 1, v46);
        swift_beginAccess();
        v59 = v96;
        v80 = v96;

        v81 = v80;
        v62 = v97;
        sub_224B09DB8(v79, v81, v97, a3);
        swift_endAccess();
        goto LABEL_20;
      }

      v51(v23, v46);
      v29 = v96;
      a2 = v97;
    }

    else
    {
    }
  }

  v63 = v29;

  v64 = sub_224DAB228();
  v65 = sub_224DAF2A8();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v106[0] = v67;
    *v66 = 136446210;
    v107[0] = v63;
    v107[1] = a2;
    v107[2] = a3;
    v68 = v63;

    v69 = sub_224DAEE28();
    v70 = a2;
    v72 = sub_224A33F74(v69, v71, v106);

    *(v66 + 4) = v72;
    _os_log_impl(&dword_224A2F000, v64, v65, "Sending staleness message immediately: %{public}s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x22AA5EED0](v67, -1, -1);
    MEMORY[0x22AA5EED0](v66, -1, -1);
  }

  else
  {

    v70 = a2;
  }

  v74 = v103;
  v73 = v104;
  v76 = v101;
  v75 = v102;
  (*(v103 + 16))(v101, v104, v102);
  (*(v74 + 56))(v76, 0, 1, v75);
  swift_beginAccess();
  v77 = v63;

  sub_224B09DB8(v76, v77, v70, a3);
  swift_endAccess();
  sub_224D96F1C();
  return (*(v74 + 8))(v73, v75);
}

void sub_224D99138()
{
  v1 = v0;
  v2 = sub_224DA9878();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v37 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v37 - v13;
  v15 = sub_224DAB8C8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = (&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + 56);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x277D85200], v15);
  v41 = v20;
  v21 = sub_224DAB8F8();
  (*(v16 + 8))(v19, v15);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  sub_224DAA948();

  sub_224D9B028(v14);
  sub_224DA9748();
  v22 = sub_224DA9798();
  v21 = *(v3 + 8);
  (v21)(v11, v2);
  if ((v22 & 1) == 0)
  {
    (v21)(v14, v2);
    return;
  }

  if (qword_2813516C8 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v23 = sub_224DAB258();
  __swift_project_value_buffer(v23, qword_281365120);
  (*(v3 + 16))(v7, v14, v2);
  v24 = sub_224DAB228();
  v25 = sub_224DAF2A8();
  if (os_log_type_enabled(v24, v25))
  {
    v38 = v25;
    v40 = v24;
    v26 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    v39 = v26;
    *v26 = 136446210;
    if (qword_281351A50 != -1)
    {
      swift_once();
    }

    v27 = qword_281351A58;
    v28 = sub_224DA9778();
    v29 = [v27 stringFromDate_];

    v30 = sub_224DAEE18();
    v32 = v31;

    (v21)(v7, v2);
    v33 = sub_224A33F74(v30, v32, &v42);

    v34 = v39;
    *(v39 + 1) = v33;
    v35 = v40;
    _os_log_impl(&dword_224A2F000, v40, v38, "Staleness queue has entries; starting timer. Due %{public}s", v34, 0xCu);
    v36 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x22AA5EED0](v36, -1, -1);
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }

  else
  {

    (v21)(v7, v2);
  }

  sub_224DA9808();
  sub_224DA9758();
  (v21)(v11, v2);
  swift_allocObject();
  swift_weakInit();

  sub_224DAA938();

  (v21)(v14, v2);
}

void sub_224D99640(void *a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation)
{
  v4 = v3;
  v8 = sub_224DA9878();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v13 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v31 - v15;
  if (sub_224DAF518())
  {
    sub_224DA9808();
    v31 = *(v4 + 56);
    (*(v9 + 16))(v13, v16, v8);
    v17 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v18 = swift_allocObject();
    *(v18 + 2) = v4;
    *(v18 + 3) = a1;
    *(v18 + 4) = a2;
    *(v18 + 5) = isEscapingClosureAtFileLocation;
    (*(v9 + 32))(&v18[v17], v13, v8);
    a2 = swift_allocObject();
    *(a2 + 16) = sub_224D9E9A8;
    *(a2 + 24) = v18;
    v36 = sub_224A8A838;
    v37 = a2;
    aBlock = MEMORY[0x277D85DD0];
    v33 = 1107296256;
    v34 = sub_224A9B6F8;
    v35 = &block_descriptor_59;
    v19 = _Block_copy(&aBlock);

    v20 = a1;

    dispatch_sync(v31, v19);
    _Block_release(v19);
    (*(v9 + 8))(v16, v8);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v21 = sub_224DAB258();
  __swift_project_value_buffer(v21, qword_281365120);
  v22 = a1;

  v31 = sub_224DAB228();
  v23 = sub_224DAF2A8();

  if (os_log_type_enabled(v31, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v38 = v25;
    *v24 = 136446210;
    aBlock = v22;
    v33 = a2;
    v34 = isEscapingClosureAtFileLocation;
    v26 = v22;

    v27 = sub_224DAEE28();
    v29 = sub_224A33F74(v27, v28, &v38);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_224A2F000, v31, v23, "Ignoring refresh of timeline key without container: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x22AA5EED0](v25, -1, -1);
    MEMORY[0x22AA5EED0](v24, -1, -1);
  }

  else
  {
    v30 = v31;
  }
}

uint64_t sub_224D99A50(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), uint64_t a5)
{
  v86 = a5;
  v88 = a2;
  v8 = sub_224DA9878();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v87 = &v76[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v76[-v15];
  MEMORY[0x28223BE20](v14, v17);
  v84 = &v76[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v81 = &v76[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v76[-v25];
  v28 = MEMORY[0x28223BE20](v24, v27);
  v30 = &v76[-v29];
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v76[-v32];
  swift_beginAccess();
  v34 = *(a1 + 32);
  v35 = *(v34 + 16);
  v82 = v16;
  v83 = a4;
  v85 = a3;
  if (v35)
  {

    v36 = sub_224B0C03C(v88, a3, a4);
    if (v37)
    {
      (*(v9 + 16))(v30, *(v34 + 56) + *(v9 + 72) * v36, v8);

      v38 = *(v9 + 56);
      v38(v30, 0, 1, v8);
      (*(v9 + 32))(v33, v30, v8);
      v38(v33, 0, 1, v8);
      goto LABEL_11;
    }
  }

  v38 = *(v9 + 56);
  v39 = 1;
  v38(v30, 1, 1, v8);
  swift_beginAccess();
  v40 = *(a1 + 40);
  if (*(v40 + 16))
  {

    v41 = sub_224B0C03C(v88, v85, v83);
    if (v42)
    {
      (*(v9 + 16))(v33, *(v40 + 56) + *(v9 + 72) * v41, v8);
      v39 = 0;
    }
  }

  v38(v33, v39, 1, v8);
  if ((*(v9 + 48))(v30, 1, v8) != 1)
  {
    sub_224A3311C(v30, &qword_27D6F32B0, &qword_224DB3EA0);
  }

LABEL_11:
  sub_224A3796C(v33, v26, &qword_27D6F32B0, &qword_224DB3EA0);
  v43 = (*(v9 + 48))(v26, 1, v8);
  v44 = v87;
  if (v43 == 1)
  {
    sub_224A3311C(v33, &qword_27D6F32B0, &qword_224DB3EA0);
    v33 = v26;
  }

  else
  {
    v45 = v84;
    (*(v9 + 32))();
    if (sub_224DA9798())
    {
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v46 = sub_224DAB258();
      __swift_project_value_buffer(v46, qword_281365120);
      v47 = *(v9 + 16);
      v47(v82, v86, v8);
      v47(v44, v45, v8);
      v48 = v88;
      v49 = v83;

      v50 = sub_224DAB228();
      v51 = sub_224DAF2A8();

      v88 = v48;

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v80 = v53;
        *v52 = 136446466;
        v89[0] = v53;
        v89[1] = v88;
        v89[2] = v85;
        v89[3] = v49;
        v54 = v88;

        v55 = sub_224DAEE28();
        v79 = v50;
        v57 = sub_224A33F74(v55, v56, v89);

        v78 = v52;
        *(v52 + 4) = v57;
        *(v52 + 12) = 2050;
        v58 = v87;
        v59 = v82;
        sub_224DA9758();
        v61 = v60;
        v62 = v58;
        v63 = *(v9 + 8);
        v77 = v51;
        (v63)(v62, v8);
        v87 = v63;
        (v63)(v59, v8);
        v64 = v78;
        *(v78 + 14) = v61;
        v65 = v79;
        _os_log_impl(&dword_224A2F000, v79, v77, "Stale timeline refreshed: %{public}s. Elapsed: %{public}fs", v64, 0x16u);
        v66 = v80;
        __swift_destroy_boxed_opaque_existential_1(v80);
        MEMORY[0x22AA5EED0](v66, -1, -1);
        MEMORY[0x22AA5EED0](v64, -1, -1);
      }

      else
      {

        v67 = *(v9 + 8);
        (v67)(v87, v8);
        v87 = v67;
        (v67)(v82, v8);
      }

      v68 = v81;
      v38(v81, 1, 1, v8);
      swift_beginAccess();
      v69 = v88;

      v70 = v68;
      v71 = v85;
      sub_224B09DB8(v70, v69, v85, v49);
      swift_endAccess();
      v72 = v69;
      v73 = v84;
      v74 = sub_224D9A1CC(v72, v71, v49, v84, v86);
      (v87)(v73, v8, v74);
    }

    else
    {
      (*(v9 + 8))(v45, v8);
    }
  }

  return sub_224A3311C(v33, &qword_27D6F32B0, &qword_224DB3EA0);
}

double sub_224D9A1CC(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t a1), uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v115 = a5;
  v116 = a4;
  v110 = a3;
  v108 = a2;
  v112 = a1;
  v104 = sub_224DAB7B8();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104, v7);
  v101 = v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_224DAB848();
  v100 = *(v102 - 8);
  MEMORY[0x28223BE20](v102, v9);
  v99 = v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v106 = v95 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v95 - v16;
  v113 = sub_224DA9908();
  v111 = *(v113 - 8);
  v18 = *(v111 + 64);
  v20 = MEMORY[0x28223BE20](v113, v19);
  v98 = v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v97 = v95 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v107 = v95 - v26;
  MEMORY[0x28223BE20](v25, v27);
  v109 = v95 - v28;
  v29 = sub_224DA9878();
  v114 = *(v29 - 8);
  v30 = *(v114 + 64);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v105 = v95 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = v95 - v34;
  v36 = sub_224DAB8C8();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v40 = (v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = v6[7];
  *v40 = v41;
  (*(v37 + 104))(v40, *MEMORY[0x277D85200], v36);
  v42 = v41;
  LOBYTE(v41) = sub_224DAB8F8();
  v44 = *(v37 + 8);
  v43 = (v37 + 8);
  v44(v40, v36);
  if ((v41 & 1) == 0)
  {
    __break(1u);
LABEL_17:
    swift_once();
    goto LABEL_11;
  }

  if ((sub_224DAD818() & 1) == 0)
  {
    return result;
  }

  sub_224DA9768();
  v46 = sub_224DA9798();
  (*(v114 + 8))(v35, v29);
  if ((v46 & 1) == 0)
  {
    return result;
  }

  v43 = v112;
  swift_beginAccess();

  sub_224DAA058();
  v48 = v47;

  if (v48)
  {
    sub_224DA9888();

    v49 = v111;
    v50 = v113;
    if ((*(v111 + 48))(v17, 1, v113) == 1)
    {
      v51 = &unk_27D6F5630;
      v52 = &unk_224DB34C0;
      v53 = v17;
    }

    else
    {
      v96 = *(v49 + 32);
      v95[1] = v49 + 32;
      v96(v109, v17, v50);
      __swift_project_boxed_opaque_existential_1(v6 + 13, v6[16]);
      v54 = v106;
      sub_224DAAC98();
      v55 = v54;
      v56 = sub_224DAAE38();
      v57 = *(v56 - 8);
      if ((*(v57 + 48))(v55, 1, v56) != 1)
      {
        v95[0] = v6;
        v69 = v97;
        sub_224DAADF8();
        (*(v57 + 8))(v55, v56);
        v70 = v107;
        v71 = v69;
        v72 = v113;
        v96(v107, v71, v113);
        v106 = sub_224D96A38();
        v73 = v111;
        v74 = v98;
        (*(v111 + 16))(v98, v70, v72);
        v75 = v114;
        v76 = *(v114 + 16);
        v76(v35, v115, v29);
        v76(v105, v116, v29);
        v77 = (*(v73 + 80) + 16) & ~*(v73 + 80);
        v78 = (v18 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
        v79 = *(v75 + 80);
        v80 = (v79 + v78 + 8) & ~v79;
        v81 = (v30 + v79 + v80) & ~v79;
        v82 = swift_allocObject();
        v96((v82 + v77), v74, v113);
        *(v82 + v78) = v95[0];
        v83 = *(v75 + 32);
        v83(v82 + v80, v35, v29);
        v83(v82 + v81, v105, v29);
        v84 = (v82 + ((v30 + v81 + 7) & 0xFFFFFFFFFFFFFFF8));
        v85 = v112;
        v86 = v108;
        *v84 = v112;
        v84[1] = v86;
        v84[2] = v110;
        v121 = sub_224D9EA10;
        v122 = v82;
        aBlock = MEMORY[0x277D85DD0];
        v118 = 1107296256;
        v119 = sub_224A39F40;
        v120 = &block_descriptor_52_2;
        v87 = _Block_copy(&aBlock);

        v88 = v85;

        v89 = v99;
        sub_224DAB7E8();
        v123 = MEMORY[0x277D84F90];
        sub_224D9EDC0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
        v90 = v101;
        v91 = v104;
        sub_224DAF788();
        v92 = v106;
        MEMORY[0x22AA5D760](0, v89, v90, v87);
        _Block_release(v87);

        (*(v103 + 8))(v90, v91);
        (*(v100 + 8))(v89, v102);
        v93 = *(v111 + 8);
        v94 = v113;
        v93(v107, v113);
        v93(v109, v94);

        return result;
      }

      (*(v111 + 8))(v109, v113);
      v51 = &qword_27D6F3320;
      v52 = &unk_224DBD6F0;
      v53 = v55;
    }

    sub_224A3311C(v53, v51, v52);
  }

  if (qword_2813516C8 != -1)
  {
    goto LABEL_17;
  }

LABEL_11:
  v58 = sub_224DAB258();
  __swift_project_value_buffer(v58, qword_281365120);
  v59 = v43;
  v60 = v110;

  v61 = sub_224DAB228();
  v62 = sub_224DAF288();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v123 = v64;
    *v63 = 136446210;
    aBlock = v59;
    v118 = v108;
    v119 = v60;
    v65 = v59;

    v66 = sub_224DAEE28();
    v68 = sub_224A33F74(v66, v67, &v123);

    *(v63 + 4) = v68;
    _os_log_impl(&dword_224A2F000, v61, v62, "Invalid device for staleness key %{public}s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x22AA5EED0](v64, -1, -1);
    MEMORY[0x22AA5EED0](v63, -1, -1);
  }

  return result;
}

uint64_t sub_224D9AD30()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  __swift_destroy_boxed_opaque_existential_1((v0 + 160));
  __swift_destroy_boxed_opaque_existential_1((v0 + 200));
  v1 = OBJC_IVAR____TtC10ChronoCore16StalenessService_diagnostics;
  v2 = sub_224DAD828();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_224D9AE08()
{
  sub_224D9AD30();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StalenessService(uint64_t a1)
{
  result = qword_28135ACF8;
  if (!qword_28135ACF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224D9AEB4(uint64_t a1)
{
  result = sub_224DAD828();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

unint64_t sub_224D9AFB0()
{
  result = qword_28135C140[0];
  if (!qword_28135C140[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28135C140);
  }

  return result;
}

void sub_224D9B028(char *a1@<X8>)
{
  v135 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v147 = &v131 - v4;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F68, &unk_224DC38B8);
  v6 = MEMORY[0x28223BE20](v152, v5);
  v146 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v151 = (&v131 - v9);
  v10 = sub_224DA9878();
  v149 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v145 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v158 = &v131 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v131 - v19;
  v22 = MEMORY[0x28223BE20](v18, v21);
  v154 = &v131 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v148 = &v131 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v30 = &v131 - v29;
  v32 = MEMORY[0x28223BE20](v28, v31);
  v155 = &v131 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v137 = &v131 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v136 = &v131 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v141 = &v131 - v42;
  MEMORY[0x28223BE20](v41, v43);
  v45 = &v131 - v44;
  v46 = sub_224DAB8C8();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46, v48);
  v50 = (&v131 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = v1[7];
  *v50 = v51;
  (*(v47 + 104))(v50, *MEMORY[0x277D85200], v46);
  v52 = v51;
  v53 = sub_224DAB8F8();
  (*(v47 + 8))(v50, v46);
  if (v53)
  {
    swift_beginAccess();
    if (*(v1[4] + 16))
    {
      v134 = v45;
      v132 = v30;
      v133 = v20;
      swift_beginAccess();
      v54 = v1[5];

      sub_224DA9748();
      v55 = v54 + 64;
      v56 = 1 << *(v54 + 32);
      v57 = -1;
      if (v56 < 64)
      {
        v57 = ~(-1 << v56);
      }

      v58 = v57 & *(v54 + 64);
      v59 = (v56 + 63) >> 6;
      v157 = (v149 + 16);
      v138 = (v149 + 56);
      v156 = (v149 + 8);
      v150 = (v149 + 32);
      v143 = v54;

      v60 = 0;
      v153 = v10;
      v61 = v1;
      v62 = v146;
      v140 = v54 + 64;
      v139 = v59;
      v142 = v1;
      while (1)
      {
        v63 = v158;
        if (!v58)
        {
          break;
        }

        v64 = v60;
LABEL_13:
        v65 = __clz(__rbit64(v58)) | (v64 << 6);
        v66 = *(v143 + 48) + 24 * v65;
        v68 = *v66;
        v67 = *(v66 + 8);
        v69 = *(v66 + 16);
        v70 = *(v149 + 72);
        v71 = *(v143 + 56) + v70 * v65;
        v72 = v151;
        v73 = *(v149 + 16);
        v144 = *(v152 + 48);
        v73(v151 + v144, v71, v153);
        *v72 = v68;
        v72[1] = v67;
        v72[2] = v69;
        sub_224A3796C(v72, v62, &qword_27D6F6F68, &unk_224DC38B8);
        v74 = *v62;
        v75 = v62;
        v76 = *(v62 + 16);
        v77 = v61[4];
        if (*(v77 + 16))
        {
          v78 = *(v75 + 8);
          v79 = v68;

          v80 = sub_224B0C03C(v74, v78, v76);
          if (v81)
          {
            v10 = v153;
            v73(v147, *(v77 + 56) + v80 * v70, v153);

            v82 = 0;
            v83 = 1;
          }

          else
          {

            v83 = 0;
            v82 = 1;
            v10 = v153;
          }

          v61 = v142;
        }

        else
        {
          v84 = v68;

          v83 = 0;
          v82 = 1;
          v10 = v153;
        }

        v85 = v156;
        v58 &= v58 - 1;
        v86 = v147;
        (*v138)(v147, v82, 1, v10);
        v87 = *(v152 + 48);
        sub_224A3311C(v86, &qword_27D6F32B0, &qword_224DB3EA0);
        v88 = *v85;
        v62 = v146;
        (*v85)(&v146[v87], v10);
        if (v83)
        {
          v89 = v151;
          v90 = v137;
          sub_224DA9768();
          sub_224D9EDC0(&qword_281351A40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v91 = v141;
          v92 = sub_224DAEDB8();
          sub_224A3311C(v89, &qword_27D6F6F68, &unk_224DC38B8);
          if (v92)
          {
            v93 = v90;
          }

          else
          {
            v93 = v91;
          }

          if (v92)
          {
            v94 = v91;
          }

          else
          {
            v94 = v90;
          }

          v88(v93, v10);
          v95 = *v150;
          v96 = v136;
          (*v150)(v136, v94, v10);
          v97 = v91;
          v61 = v142;
          v95(v97, v96, v10);
        }

        else
        {
          sub_224A3311C(v151, &qword_27D6F6F68, &unk_224DC38B8);
        }

        v60 = v64;
        v55 = v140;
        v59 = v139;
      }

      while (1)
      {
        v64 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          __break(1u);
          goto LABEL_60;
        }

        if (v64 >= v59)
        {
          break;
        }

        v58 = *(v55 + 8 * v64);
        ++v60;
        if (v58)
        {
          goto LABEL_13;
        }
      }

      v98 = *v150;
      v99 = v134;
      (*v150)(v134, v141, v10);

      if (sub_224DAD818())
      {
        sub_224DA9808();
        v100 = v61[5];
        v101 = *(v100 + 16);
        if (v101)
        {
          v102 = sub_224B0CE28(*(v100 + 16), 0);
          v103 = sub_224B30238(v159, &v102[(*(v149 + 80) + 32) & ~*(v149 + 80)], v101, v100);
          v151 = v159[0];
          v152 = v103;

          sub_224A3B7E4(v151);
          if (v152 != v101)
          {
            goto LABEL_61;
          }

          v10 = v153;
          v99 = v134;
        }

        else
        {
          v102 = MEMORY[0x277D84F90];
        }

        v104 = v61[4];
        v105 = *(v104 + 16);
        if (v105)
        {
          v106 = sub_224B0CE28(*(v104 + 16), 0);
          v107 = sub_224B30238(v159, &v106[(*(v149 + 80) + 32) & ~*(v149 + 80)], v105, v104);
          v151 = v159[4];
          v152 = v159[0];

          sub_224A3B7E4(v152);
          if (v107 != v105)
          {
            goto LABEL_62;
          }

          v10 = v153;
          v99 = v134;
        }

        else
        {
          v106 = MEMORY[0x277D84F90];
        }

        v108 = v156;
        v159[0] = v102;
        sub_224B42CB0(v106);
        v109 = v159[0];
        v110 = *v157;
        (*v157)(v148, v99, v10);
        v111 = *(v109 + 16);
        if (v111)
        {
          v112 = *(v149 + 80);
          v153 = v109;
          v113 = v109 + ((v112 + 32) & ~v112);
          v114 = *(v149 + 72);
          v115 = v154;
          do
          {
            v110(v115, v113, v10);
            sub_224DA9768();
            if (sub_224DA9788())
            {
              sub_224D9EDC0(&qword_281351A40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
              v117 = v148;
              v118 = sub_224DAEDB8();
              v119 = *v156;
              (*v156)(v154, v10);
              if (v118)
              {
                v120 = v158;
              }

              else
              {
                v120 = v117;
              }

              if (v118)
              {
                v121 = v117;
              }

              else
              {
                v121 = v158;
              }

              v119(v120, v10);
              v122 = v145;
              v98(v145, v121, v10);
              v123 = v117;
              v115 = v154;
              v124 = v122;
              v63 = v158;
              v98(v123, v124, v10);
            }

            else
            {
              v116 = *v156;
              (*v156)(v63, v10);
              v116(v115, v10);
            }

            v113 += v114;
            --v111;
          }

          while (v111);

          v108 = v156;
        }

        else
        {
        }

        v125 = v132;
        v98(v132, v148, v10);
        sub_224D9EDC0(&qword_281351A40, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v99 = v134;
        v126 = sub_224DAEDB8();
        v127 = *v108;
        (*v108)(v155, v10);
        if (v126)
        {
          v128 = v125;
        }

        else
        {
          v128 = v99;
        }

        if (v126)
        {
          v129 = v99;
        }

        else
        {
          v129 = v125;
        }

        v127(v128, v10);
        v130 = v133;
        v98(v133, v129, v10);
        v98(v99, v130, v10);
      }

      v98(v135, v99, v10);
    }

    else
    {
      sub_224DA9748();
    }
  }

  else
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }
}

void sub_224D9BD08(uint64_t a1)
{
  v1 = sub_224DAB8C8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  v8 = *(Strong + 56);
  *v5 = v8;
  v9 = *MEMORY[0x277D85200];
  v10 = *(v2 + 104);
  v10(v5, v9, v1);
  v11 = v8;
  LOBYTE(v8) = sub_224DAB8F8();
  v12 = *(v2 + 8);
  v12(v5, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (qword_2813516C8 != -1)
  {
LABEL_10:
    swift_once();
  }

  v13 = sub_224DAB258();
  __swift_project_value_buffer(v13, qword_281365120);
  v14 = sub_224DAB228();
  v15 = sub_224DAF2A8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v23 = v12;
    v17 = v9;
    v18 = v10;
    v19 = v16;
    *v16 = 0;
    _os_log_impl(&dword_224A2F000, v14, v15, "Staleness timer fired", v16, 2u);
    v20 = v19;
    v10 = v18;
    v9 = v17;
    v12 = v23;
    MEMORY[0x22AA5EED0](v20, -1, -1);
  }

  v21 = *(v7 + 56);
  *v5 = v21;
  v10(v5, v9, v1);
  v22 = v21;
  LOBYTE(v21) = sub_224DAB8F8();
  v12(v5, v1);
  if (v21)
  {

    sub_224DAA948();

    sub_224D9BF94();
    sub_224D96F1C();
  }

  else
  {
    __break(1u);
  }
}

void sub_224D9BF94()
{
  v1 = v0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F68, &unk_224DC38B8);
  MEMORY[0x28223BE20](v35, v2);
  v4 = v33 - v3;
  v36 = sub_224DA9878();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v5);
  v37 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAB8C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + 56);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  v14 = sub_224DAB8F8();
  (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (sub_224DAD818())
  {
    sub_224DA9808();
    swift_beginAccess();
    v15 = *(v1 + 32);
    v16 = v15 + 64;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v15 + 64);
    v20 = (v17 + 63) >> 6;
    v33[1] = v38 + 16;
    v34 = v15;
    swift_bridgeObjectRetain_n();
    v21 = 0;
    while (v19)
    {
      v22 = v1;
      v23 = v21;
LABEL_11:
      v24 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v25 = v24 | (v23 << 6);
      v26 = *(v34 + 48) + 24 * v25;
      v28 = *v26;
      v27 = *(v26 + 8);
      v29 = *(v26 + 16);
      v30 = *(v35 + 48);
      (*(v38 + 16))(&v4[v30], *(v34 + 56) + *(v38 + 72) * v25, v36);
      *v4 = v28;
      *(v4 + 1) = v27;
      *(v4 + 2) = v29;
      v31 = v28;

      v32 = &v4[v30];
      v1 = v22;
      sub_224D9A1CC(v31, v27, v29, v32, v37);
      sub_224A3311C(v4, &qword_27D6F6F68, &unk_224DC38B8);
    }

    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v20)
      {

        (*(v38 + 8))(v37, v36);
        return;
      }

      v19 = *(v16 + 8 * v23);
      ++v21;
      if (v19)
      {
        v22 = v1;
        v21 = v23;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_224D9C314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3320, &unk_224DBD6F0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v24 - v10;
  v12 = sub_224DA9908();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1 + *MEMORY[0x277CFA128];
  swift_beginAccess();
  if (!*(v17 + 8))
  {
    sub_224D9ED00();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }

  sub_224DA9888();

  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_224A3311C(v11, &unk_27D6F5630, &unk_224DB34C0);
    sub_224D9ED00();
    swift_allocError();
    *v18 = 2;
    return swift_willThrow();
  }

  (*(v13 + 32))(v16, v11, v12);
  __swift_project_boxed_opaque_existential_1((v2 + 104), *(v2 + 128));
  sub_224DAAC98();
  v21 = sub_224DAAE38();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v7, 1, v21) == 1)
  {
    sub_224A3311C(v7, &qword_27D6F3320, &unk_224DBD6F0);
    sub_224D9ED00();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
    return (*(v13 + 8))(v16, v12);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    return (*(v22 + 32))(v25, v7, v21);
  }
}

void sub_224D9C6A0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_224DAAE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v19 = *(a3 + 56);
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v10);
  v14 = (*(v11 + 80) + 41) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a3;
  *(v15 + 32) = a1;
  *(v15 + 40) = a2 & 1;
  (*(v11 + 32))(v15 + v14, &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_224D9ED54;
  *(v16 + 24) = v15;
  aBlock[4] = sub_224BC4B74;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A9B6F8;
  aBlock[3] = &block_descriptor_91_1;
  v17 = _Block_copy(aBlock);

  sub_224BA7AC0(a1, a2 & 1);

  dispatch_sync(v19, v17);
  _Block_release(v17);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

void sub_224D9C8F8(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  v112 = a5;
  v111 = a4;
  v109 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v116 = &v103 - v9;
  v10 = sub_224DA9908();
  v107 = *(v10 - 8);
  v108 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v106 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_224DAAE38();
  v113 = *(v13 - 8);
  v114 = v13;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v104 = &v103 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v105 = &v103 - v18;
  v19 = sub_224DA9878();
  v119 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v117 = &v103 - v26;
  v110 = a1;
  v27 = *(a1 + 16);
  v121 = v25;
  v122 = a2;
  v118 = v27;
  if (!v27)
  {
LABEL_16:
    if (v111)
    {
      v36 = v113;
      v37 = v114;
      if (qword_2813516C8 != -1)
      {
LABEL_37:
        swift_once();
      }

      v53 = sub_224DAB258();
      __swift_project_value_buffer(v53, qword_281365120);
      v54 = v105;
      (*(v36 + 2))(v105, v112, v37);
      v55 = v109;
      v56 = v109;
      v57 = sub_224DAB228();
      v58 = sub_224DAF288();
      sub_224B92BE0(v55, 1);
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v125[0] = v123;
        *v59 = 136446466;
        v60 = v106;
        sub_224DAAD98();
        sub_224D9EDC0(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v61 = v108;
        v62 = sub_224DAFD28();
        v63 = v54;
        v65 = v64;
        (*(v107 + 8))(v60, v61);
        (*(v36 + 1))(v63, v37);
        v66 = sub_224A33F74(v62, v65, v125);

        *(v59 + 4) = v66;
        *(v59 + 12) = 2082;
        v124 = v109;
        v67 = v109;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5620, &unk_224DB3350);
        v68 = sub_224DAEE28();
        v70 = sub_224A33F74(v68, v69, v125);

        *(v59 + 14) = v70;
        _os_log_impl(&dword_224A2F000, v57, v58, "Could not send staleness message to %{public}s: %{public}s", v59, 0x16u);
        v71 = v123;
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v71, -1, -1);
        MEMORY[0x22AA5EED0](v59, -1, -1);
      }

      else
      {

        (*(v36 + 1))(v54, v37);
      }

      goto LABEL_34;
    }

    v73 = v113;
    v72 = v114;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v74 = sub_224DAB258();
    __swift_project_value_buffer(v74, qword_281365120);
    v75 = v104;
    (*(v73 + 2))(v104, v112, v72);
    v76 = sub_224DAB228();
    v77 = sub_224DAF2A8();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v123 = swift_slowAlloc();
      v125[0] = v123;
      *v78 = 136446210;
      v79 = v106;
      sub_224DAAD98();
      sub_224D9EDC0(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v80 = v108;
      v81 = sub_224DAFD28();
      v83 = v82;
      (*(v107 + 8))(v79, v80);
      (*(v73 + 1))(v75, v72);
      v84 = sub_224A33F74(v81, v83, v125);

      *(v78 + 4) = v84;
      _os_log_impl(&dword_224A2F000, v76, v77, "Sent staleness message to %{public}s", v78, 0xCu);
      v85 = v123;
      __swift_destroy_boxed_opaque_existential_1(v123);
      MEMORY[0x22AA5EED0](v85, -1, -1);
      MEMORY[0x22AA5EED0](v78, -1, -1);

      if (!v118)
      {
        goto LABEL_34;
      }
    }

    else
    {

      (*(v73 + 1))(v75, v72);
      if (!v118)
      {
LABEL_34:
        sub_224D99138();
        return;
      }
    }

    v86 = (v119 + 56);
    v123 = (v119 + 32);
    v87 = (v110 + 48);
    do
    {
      v92 = *(v87 - 2);
      v91 = *(v87 - 1);
      v93 = *v87;
      v94 = v122;
      swift_beginAccess();
      v95 = v92;
      swift_bridgeObjectRetain_n();
      v96 = v95;
      v97 = sub_224B0C03C(v96, v91, v93);
      if (v98)
      {
        v99 = v97;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = *(v94 + 32);
        v124 = v101;
        *(v94 + 32) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_224B2B68C();
          v101 = v124;
        }

        v102 = *(*(v101 + 48) + 24 * v99);

        v89 = v116;
        v90 = v121;
        (*(v119 + 32))(v116, *(v101 + 56) + *(v119 + 72) * v99, v121);
        sub_224B1EF54(v99, v101);

        *(v94 + 32) = v101;

        v88 = 0;
      }

      else
      {

        v88 = 1;
        v89 = v116;
        v90 = v121;
      }

      (*v86)(v89, v88, 1, v90);
      sub_224A3311C(v89, &qword_27D6F32B0, &qword_224DB3EA0);
      swift_endAccess();

      v87 += 3;
      v118 = (v118 - 1);
    }

    while (v118);
    goto LABEL_34;
  }

  v28 = v118;
  v120 = (v119 + 32);
  v115 = v119 + 40;
  v29 = (v110 + 48);
  while (1)
  {
    v123 = v28;
    v31 = *(v29 - 1);
    v32 = *v29;
    v33 = *(v29 - 2);
    swift_bridgeObjectRetain_n();
    v34 = v33;
    v35 = v117;
    sub_224DA9808();
    swift_beginAccess();
    v36 = *v120;
    v37 = v23;
    (*v120)(v23, v35, v19);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v124 = *(a2 + 40);
    v39 = v124;
    *(a2 + 40) = 0x8000000000000000;
    v41 = sub_224B0C03C(v34, v31, v32);
    v42 = v39[2];
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v45 = v40;
    if (v39[3] < v44)
    {
      break;
    }

    if (v38)
    {
      v48 = v124;
      if (v40)
      {
        goto LABEL_3;
      }
    }

    else
    {
      sub_224B2B68C();
      v48 = v124;
      if (v45)
      {
LABEL_3:
        v23 = v37;
        v19 = v121;
        (*(v119 + 40))(v48[7] + *(v119 + 72) * v41, v37, v121);

        goto LABEL_4;
      }
    }

LABEL_12:
    v48[(v41 >> 6) + 8] |= 1 << v41;
    v49 = (v48[6] + 24 * v41);
    *v49 = v34;
    v49[1] = v31;
    v49[2] = v32;
    v23 = v37;
    v19 = v121;
    v36((v48[7] + *(v119 + 72) * v41), v37, v121);
    v50 = v48[2];
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_36;
    }

    v48[2] = v52;
LABEL_4:
    a2 = v122;
    v30 = v123;
    *(v122 + 40) = v48;

    swift_endAccess();

    v29 += 3;
    v28 = (v30 - 1);
    if (!v28)
    {
      goto LABEL_16;
    }
  }

  sub_224B1B598(v44, v38);
  v46 = sub_224B0C03C(v34, v31, v32);
  if ((v45 & 1) == (v47 & 1))
  {
    v41 = v46;
    v48 = v124;
    if (v45)
    {
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  sub_224DAFDD8();
  __break(1u);
}

void sub_224D9D3B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v73 = a5;
  v74 = a7;
  v72 = a6;
  v67 = a3;
  v68 = a4;
  v78 = a2;
  v8 = sub_224DA9878();
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = *(v70 + 64);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v69 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v77 = &v60 - v13;
  v14 = sub_224DA9908();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v76 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v18;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v60 - v20;
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v22 = sub_224DAB258();
  __swift_project_value_buffer(v22, qword_281365120);
  v65 = *(v15 + 16);
  v65(v21, a1, v14);
  v23 = sub_224DAB228();
  v24 = sub_224DAF2A8();
  v25 = os_log_type_enabled(v23, v24);
  v75 = v14;
  v64 = v15;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v63 = a1;
    v27 = v26;
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136446210;
    v29 = sub_224DA9898();
    v30 = v15;
    v32 = v31;
    (*(v30 + 8))(v21, v14);
    v33 = sub_224A33F74(v29, v32, aBlock);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_224A2F000, v23, v24, "Checking if device is nearby %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x22AA5EED0](v28, -1, -1);
    v34 = v27;
    a1 = v63;
    MEMORY[0x22AA5EED0](v34, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v21, v14);
  }

  v35 = v78;
  v61 = sub_224D969A4();
  v63 = sub_224DA9898();
  v62 = v36;
  v37 = v70;
  v38 = v71;
  v39 = *(v70 + 16);
  v39(v77, v67, v71);
  v40 = v69;
  v39(v69, v68, v38);
  v65(v76, a1, v75);
  v41 = *(v37 + 80);
  v42 = (v41 + 24) & ~v41;
  v43 = (v9 + v41 + v42) & ~v41;
  v44 = (v9 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = v64;
  v46 = (*(v64 + 80) + v44 + 24) & ~*(v64 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v35;
  v48 = *(v37 + 32);
  v48(v47 + v42, v77, v38);
  v48(v47 + v43, v40, v38);
  v49 = (v47 + v44);
  v50 = v72;
  v51 = v73;
  *v49 = v73;
  v49[1] = v50;
  v52 = v75;
  v49[2] = v74;
  (*(v45 + 32))(v47 + v46, v76, v52);
  v53 = v61;
  v54 = *(v61 + 48);
  v55 = swift_allocObject();
  v56 = v63;
  v55[2] = v53;
  v55[3] = v56;
  v55[4] = v62;
  v55[5] = sub_224D9EB30;
  v55[6] = v47;
  v55[7] = 0x3FF0000000000000;
  v57 = swift_allocObject();
  *(v57 + 16) = sub_224D9EC38;
  *(v57 + 24) = v55;
  aBlock[4] = sub_224BC4B74;
  aBlock[5] = v57;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A9B6F8;
  aBlock[3] = &block_descriptor_65_0;
  v58 = _Block_copy(aBlock);

  v59 = v51;

  dispatch_sync(v54, v58);
  _Block_release(v58);
  LOBYTE(v51) = swift_isEscapingClosureAtFileLocation();

  if (v51)
  {
    __break(1u);
  }
}

void sub_224D9D9A8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v91 = a8;
  v92 = a6;
  v14 = sub_224DABE18();
  v89 = *(v14 - 8);
  v90 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v88 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v84 = *(v17 - 8);
  v85 = v17;
  MEMORY[0x28223BE20](v17, v18);
  v83 = &v74 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4B00, &unk_224DB9AB0);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v82 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v74 - v25;
  v27 = sub_224DAB8C8();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = (&v74 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = a2;
  v32 = *(a2 + 56);
  *v31 = v32;
  (*(v28 + 104))(v31, *MEMORY[0x277D851F0], v27);
  v86 = v32;
  LOBYTE(v32) = sub_224DAB8F8();
  (*(v28 + 8))(v31, v27);
  if ((v32 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_6;
  }

  sub_224DA9758();
  v8 = v33;
  if (a1)
  {
    v80 = a4;
    v34 = a5;
    sub_224DAF4E8();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
    v36 = *(v35 - 8);
    v75 = *(v36 + 48);
    v37 = v75(v26, 1, v35);
    v74 = v36;
    if (v37 == 1)
    {
      sub_224A3311C(v26, &qword_27D6F4B00, &unk_224DB9AB0);
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      v77 = sub_224DA9FE8();
      v39 = v38;
      swift_endAccess();
    }

    else
    {
      v50 = v83;
      sub_224DAA268();
      (*(v36 + 8))(v26, v35);
      v51 = v85;
      v77 = sub_224DA9FE8();
      v39 = v52;
      (*(v84 + 8))(v50, v51);
    }

    v95 = 0;
    v96 = 0xE000000000000000;
    sub_224DAF938();
    v93 = v95;
    v94 = v96;
    MEMORY[0x22AA5D210](0xD00000000000001FLL, 0x8000000224DD0750);
    sub_224DAF188();
    MEMORY[0x22AA5D210](0xD000000000000035, 0x8000000224DD0770);
    v95 = v34;
    v96 = v92;
    v97 = a7;
    v34;
    v81 = a7;

    v53 = sub_224DAEE28();
    MEMORY[0x22AA5D210](v53);

    v78 = v93;
    v79 = v94;
    v95 = 0;
    v96 = 0xE000000000000000;
    sub_224DAF938();

    v95 = 0xD00000000000001FLL;
    v96 = 0x8000000224DD07B0;
    MEMORY[0x22AA5D210](v77, v39);

    v76 = v95;
    v77 = v96;
    v95 = 0;
    v96 = 0xE000000000000000;
    sub_224DAF938();
    v93 = v95;
    v94 = v96;
    MEMORY[0x22AA5D210](0xD000000000000110, 0x8000000224DD07D0);
    v54 = sub_224DA9858();
    MEMORY[0x22AA5D210](v54);

    MEMORY[0x22AA5D210](0xD000000000000014, 0x8000000224DD08F0);
    v55 = sub_224DA9858();
    MEMORY[0x22AA5D210](v55);

    MEMORY[0x22AA5D210](0xD000000000000010, 0x8000000224DD0910);
    sub_224DA9908();
    sub_224D9EDC0(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v56 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v56);

    MEMORY[0x22AA5D210](0x7562207070410A0ALL, 0xEE00203A656C646ELL);
    v57 = v82;
    sub_224DAF4E8();
    if (v75(v57, 1, v35) == 1)
    {
      sub_224A3311C(v57, &qword_27D6F4B00, &unk_224DB9AB0);
      v58 = 0;
      v59 = 0xE000000000000000;
    }

    else
    {
      v60 = v83;
      sub_224DAA268();
      (*(v74 + 8))(v57, v35);
      v61 = v85;
      v62 = sub_224DA9FE8();
      v59 = v63;
      (*(v84 + 8))(v60, v61);
      v58 = v62;
    }

    MEMORY[0x22AA5D210](v58, v59);

    MEMORY[0x22AA5D210](0xD000000000000013, 0x8000000224DC9550);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
    v64 = sub_224DA9FE8();
    v66 = v65;
    swift_endAccess();
    MEMORY[0x22AA5D210](v64, v66);

    MEMORY[0x22AA5D210](0x207465676469570ALL, 0xEE00203A646E696BLL);
    v67 = v81;

    MEMORY[0x22AA5D210](v92, v67);
    MEMORY[0x22AA5D210](0xD000000000000013, 0x8000000224DD0930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4308, &qword_224DB6B38);
    sub_224DAF3E8();
    v68 = MEMORY[0x22AA5D380](v95, &type metadata for StalenessKey);
    v70 = v69;

    MEMORY[0x22AA5D210](v68, v70);

    v71 = v88;
    sub_224DABDA8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3308, &qword_224DB5C00);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_224DB3100;
    *(v72 + 32) = sub_224DA9898();
    *(v72 + 40) = v73;
    sub_224DAD7E8();

    (*(v89 + 8))(v71, v90);
    return;
  }

  if (qword_2813516C8 != -1)
  {
    goto LABEL_15;
  }

LABEL_6:
  v40 = sub_224DAB258();
  __swift_project_value_buffer(v40, qword_281365120);
  v41 = a5;

  v42 = sub_224DAB228();
  v43 = sub_224DAF288();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v93 = v45;
    *v44 = 134349314;
    *(v44 + 4) = v8 / 60.0;
    *(v44 + 12) = 2082;
    v95 = v41;
    v96 = v92;
    v97 = a7;
    v46 = v41;

    v47 = sub_224DAEE28();
    v49 = sub_224A33F74(v47, v48, &v93);

    *(v44 + 14) = v49;
    _os_log_impl(&dword_224A2F000, v42, v43, "Timeline is still stale %{public}f minutes after staleness observed. Device is not nearby. %{public}s", v44, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x22AA5EED0](v45, -1, -1);
    MEMORY[0x22AA5EED0](v44, -1, -1);
  }
}

uint64_t sub_224D9E498@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F28, &qword_224DC3890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB30F0;
  *(inited + 32) = 0x746144656C617473;
  *(inited + 40) = 0xEA00000000007365;
  swift_beginAccess();
  *(inited + 48) = *(a1 + 32);
  *(inited + 56) = 0x65746144646E6573;
  *(inited + 64) = 0xE900000000000073;
  swift_beginAccess();
  *(inited + 72) = *(a1 + 40);

  sub_224DA2E88(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F30, &qword_224DC3898);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F38, &qword_224DC38A0);
  v5 = sub_224DAECF8();
  v7 = v6;

  *a2 = v5;
  a2[1] = v7;
  return result;
}

double sub_224D9E688(uint64_t a1)
{
  sub_224B44674(a1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48F0, &unk_224DB8630);
  if (swift_dynamicCast())
  {
    v3[0] = v2;

    sub_224DAB348();
  }

  return result;
}

uint64_t sub_224D9E730(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6F40, &qword_224DC38A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10[-v6];
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_224D9E954();
  sub_224DAFEF8();
  if (!v1)
  {
    sub_224DAF538();
    v10[7] = 0;
    sub_224D9EDC0(&qword_27D6F6F50, MEMORY[0x277CFA140], MEMORY[0x277CFA150]);
    sub_224DAFC68();
    v8 = v11;
    v10[6] = 1;
    sub_224DAFC58();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_224D9E954()
{
  result = qword_27D6F6F48;
  if (!qword_27D6F6F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F48);
  }

  return result;
}

uint64_t sub_224D9E9A8()
{
  v1 = *(sub_224DA9878() - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_224D99A50(v2, v3, v4, v5, v6);
}

void sub_224D9EA10()
{
  v1 = *(sub_224DA9908() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_224DA9878() - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = (v3 + v5 + 8) & ~v5;
  v8 = (v6 + v5 + v7) & ~v5;
  v9 = *(v0 + v3);
  v10 = v0 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v10 + 16);

  sub_224D9D3B8(v0 + v2, v9, v0 + v7, v0 + v8, v11, v12, v13);
}

void sub_224D9EB30(char a1)
{
  v3 = *(sub_224DA9878() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_224DA9908() - 8);
  v10 = *(v1 + 16);
  v11 = *(v1 + v8);
  v12 = *(v1 + v8 + 8);
  v13 = *(v1 + v8 + 16);
  v14 = v1 + ((*(v9 + 80) + v8 + 24) & ~*(v9 + 80));

  sub_224D9D9A8(a1, v10, v1 + v5, v1 + v7, v11, v12, v13, v14);
}

void sub_224D9EC7C(void *a1, char a2)
{
  v5 = *(sub_224DAAE38() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_224D9C6A0(a1, a2 & 1, v6, v7, v8);
}

unint64_t sub_224D9ED00()
{
  result = qword_27D6F6F88;
  if (!qword_27D6F6F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F88);
  }

  return result;
}

void sub_224D9ED54()
{
  v1 = *(sub_224DAAE38() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = v0 + ((*(v1 + 80) + 41) & ~*(v1 + 80));

  sub_224D9C8F8(v2, v3, v4, v5, v6);
}

uint64_t sub_224D9EDC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_224D9EE2C()
{
  result = qword_27D6F6F90;
  if (!qword_27D6F6F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F90);
  }

  return result;
}

unint64_t sub_224D9EE84()
{
  result = qword_27D6F6F98;
  if (!qword_27D6F6F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6F98);
  }

  return result;
}

unint64_t sub_224D9EEDC()
{
  result = qword_27D6F6FA0;
  if (!qword_27D6F6FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6FA0);
  }

  return result;
}

unint64_t sub_224D9EF34()
{
  result = qword_27D6F6FA8;
  if (!qword_27D6F6FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6FA8);
  }

  return result;
}

uint64_t RelevancePowerlogReporter.__allocating_init(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  RelevancePowerlogReporter.init(subsystem:category:)(a1, a2, a3, a4);
  return v8;
}

void sub_224D9F01C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39C8, &unk_224DC3BD0);
    v2 = sub_224DAFBB8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = (*(a1 + 48) + ((v11 << 10) | (16 * v12)));
        v15 = *v13;
        v14 = v13[1];

        swift_dynamicCast();
        sub_224A739A4(&v22, v24);
        sub_224A739A4(v24, v25);
        sub_224A739A4(v25, &v23);
        v16 = sub_224A3A40C(v15, v14);
        if (v17)
        {
          v8 = (v2[6] + 16 * v16);
          *v8 = v15;
          v8[1] = v14;
          v9 = v16;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          sub_224A739A4(&v23, v10);
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          v18 = (v2[6] + 16 * v16);
          *v18 = v15;
          v18[1] = v14;
          sub_224A739A4(&v23, (v2[7] + 32 * v16));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_224D9F274(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7098, &qword_224DC3C78);
    v2 = sub_224DAFBB8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_224A33E0C(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_224A739A4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_224A739A4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_224A739A4(v31, v32);
    v16 = sub_224DAF8B8();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_224A739A4(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_224D9F53C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7098, &qword_224DC3C78);
    v2 = sub_224DAFBB8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(*(a1 + 56) + 8 * v12);
    *&v32[0] = *v13;
    *(&v32[0] + 1) = v14;

    v15;
    swift_dynamicCast();
    sub_224C5C748();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_224A739A4(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_224A739A4(v31, v32);
    v16 = sub_224DAF8B8();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_224A739A4(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t RelevancePowerlogReporter.init(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = a1;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 72) = a4;

  v5 = sub_224DAEDE8();

  v6 = sub_224DAEDE8();

  v7 = PPSCreateTelemetryIdentifier();

  if (v7)
  {
    v8 = MEMORY[0x277D841D8];
  }

  else
  {
    v8 = 0;
    v10[1] = 0;
    v10[2] = 0;
  }

  v10[0] = v7;
  v10[3] = v8;
  swift_beginAccess();
  sub_224D9F8F4(v10, v4 + 16);
  swift_endAccess();
  return v4;
}

uint64_t sub_224D9F8F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4760, &unk_224DB3680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_224D9F964(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, double a7)
{
  swift_beginAccess();
  sub_224A3796C(v7 + 16, v38, &qword_27D6F4760, &unk_224DB3680);
  if (!v39)
  {
    sub_224AD523C(v38);
    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    if (qword_27D6F2D00 != -1)
    {
      swift_once();
    }

    v35 = sub_224DAB258();
    __swift_project_value_buffer(v35, qword_27D6F71F8);
    v34 = sub_224DAB228();
    v36 = sub_224DAF288();
    if (os_log_type_enabled(v34, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_224A2F000, v34, v36, "Could not unwrap telemetryID of current activity", v37, 2u);
      MEMORY[0x22AA5EED0](v37, -1, -1);
    }

    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_224DC3AB0;
  *(inited + 40) = 0x8000000224DD0980;
  v16 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v16 timeIntervalSince1970];
  v18 = v17;

  v19 = MEMORY[0x277D839F8];
  *(inited + 48) = v18;
  *(inited + 72) = v19;
  *(inited + 80) = 0x4449656C646E7562;
  v20 = MEMORY[0x277D837D0];
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = a1;
  *(inited + 104) = a2;
  *(inited + 120) = v20;
  *(inited + 128) = 1684957547;
  *(inited + 136) = 0xE400000000000000;
  *(inited + 168) = MEMORY[0x277D83E40];
  v21 = swift_allocObject();
  *(inited + 144) = v21;

  v22 = sub_224DA2F98(0xCuLL, a3, a4);
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v21[2] = v22;
  v21[3] = v24;
  v21[4] = v26;
  v21[5] = v28;
  strcpy((inited + 176), "relevanceCount");
  *(inited + 191) = -18;
  v29 = MEMORY[0x277D83B88];
  if (a6)
  {
    v30 = -1;
  }

  else
  {
    v30 = a5;
  }

  *(inited + 192) = v30;
  *(inited + 216) = v29;
  strcpy((inited + 224), "executionTime");
  *(inited + 238) = -4864;
  v31 = a7 * 1000.0;
  v32 = -1;
  if (a7 * 1000.0 < 0.0 || v31 >= 9.22337204e18)
  {
    goto LABEL_11;
  }

  if (COERCE_UNSIGNED_INT64(fabs(a7 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v31 > -9.22337204e18)
  {
    v32 = v31;
LABEL_11:
    *(inited + 264) = v29;
    *(inited + 240) = v32;
    v33 = sub_224DA0AC0(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F58E0, &unk_224DB6450);
    swift_arrayDestroy();
    sub_224D9F274(v33);

    v34 = sub_224DAECC8();

    PPSSendTelemetry();
LABEL_17:

    return;
  }

  __break(1u);
}

uint64_t RelevancePowerlogReporter.deinit()
{
  sub_224AD523C(v0 + 16);

  return v0;
}

uint64_t RelevancePowerlogReporter.__deallocating_deinit()
{
  sub_224AD523C(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_224D9FE14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7020, &qword_224DB47C8);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_224A3A40C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_224D9FF28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7060, &unk_224DC3C30);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3958, &qword_224DB4750);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &unk_27D6F7060, &unk_224DC3C30);
      result = sub_224B0B2F8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAE178();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_224DA0110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3B40, &qword_224DB4850);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      swift_unknownObjectRetain();
      result = sub_224A3A40C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
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

unint64_t sub_224DA0290(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D18, &unk_224DC3D10);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v11 = *i;
      v5 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_224B0B580(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 16 * result) = v11;
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_224DA0398(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6FF0, &unk_224DB4118);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6FF8, &qword_224DC3BB0);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F6FF0, &unk_224DB4118);
      v12 = *v6;
      result = sub_224B0B668(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = sub_224DAB0F8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_224DA0580(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D80, &qword_224DC3D50);
    v3 = sub_224DAFBB8();
    for (i = a1 + 32; ; i += 48)
    {
      sub_224A3796C(i, v11, &qword_27D6F7150, &qword_224DC3D58);
      v5 = v11[0];
      result = sub_224B0B6F0(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_224A36F98(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_224DA06F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6FE0, &unk_224DB9C50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D68, &unk_224DC3BA0);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_224A3796C(v10, v6, &unk_27D6F6FE0, &unk_224DB9C50);
      v12 = *v6;
      result = sub_224B31510(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_224DAAFC8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
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

unint64_t sub_224DA08CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7138, &unk_224DC3D40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7140, &unk_224DC00E0);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F7138, &unk_224DC3D40);
      result = sub_224A683FC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_224DA0AC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39C8, &unk_224DC3BD0);
    v3 = sub_224DAFBB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_224A3796C(v4, &v13, &unk_27D6F58E0, &unk_224DB6450);
      v5 = v13;
      v6 = v14;
      result = sub_224A3A40C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_224A739A4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_224DA0BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7158, &unk_224DC3D60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7160, &qword_224DB4738);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F7158, &unk_224DC3D60);
      v12 = *v6;
      result = sub_224A3E7EC(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_224DAC378();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_224DA0DD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3D70, &qword_224DB41E0);
    v3 = sub_224DAFBB8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_224B0B6F0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_224DA0EB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F39B8, &qword_224DC3D70);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_224A3E7EC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_224DA0FA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7090, &unk_224DC3C60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3970, &qword_224DB4758);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F7090, &unk_224DC3C60);
      v12 = *v6;
      v13 = v6[1];
      result = sub_224A3A40C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_224DAC5E8();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_224DA11A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3B10, &unk_224DC3D00);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_224A3A40C(v5, v6);
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

unint64_t sub_224DA12A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70D8, &unk_224DC3CC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70E0, &qword_224DB4950);
    v8 = sub_224DAFBB8();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F70D8, &unk_224DC3CC0);
      result = sub_224B0B8A4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAC918();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 24 * v14;
      v18 = *(v9 + 2);
      *v17 = *v9;
      *(v17 + 16) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_224DA149C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F70C8, &unk_224DC3CB0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3CA0, &qword_224DB4958);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &unk_27D6F70C8, &unk_224DC3CB0);
      result = sub_224B0B8A4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAC918();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for PlatterContentError(0);
      result = sub_224DA30E4(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_224DA16A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70B8, &unk_224DC3CA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70C0, &qword_224DB4940);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F70B8, &unk_224DC3CA0);
      result = sub_224B0B8A4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAC918();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_224DAEC58();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_224DA18C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6FB8, &qword_224DC3B60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3930, &qword_224DB4730);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F6FB8, &qword_224DC3B60);
      result = sub_224A89A08(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_224DA1AE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C60, &qword_224DB4920);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_224A5C3D0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_224DA1BD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C58, &unk_224DC3C90);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      swift_unknownObjectRetain();
      result = sub_224A5C3D0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_224DA1CF0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_224DAFBB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);
      v11 = v9;
      result = a4(v10);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v11;
      v14 = v7[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v7[2] = v16;
      if (!--v4)
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_224DA1DE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70A8, &unk_224DC3C80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F70B0, &qword_224DB4910);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F70A8, &unk_224DC3C80);
      result = sub_224B0BB84(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_224DA1FDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3C00, &qword_224DC3C70);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_224A3A40C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_224DA20F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7070, &unk_224DC3C40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3B98, &qword_224DB4888);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &unk_27D6F7070, &unk_224DC3C40);
      result = sub_224A683FC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_224DA22EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7080, &unk_224DC3C50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BA8, &qword_224DB4898);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &unk_27D6F7080, &unk_224DC3C50);
      result = sub_224B0BBA8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_224DAC2B8();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_224DAD158();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t sub_224DA2520(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7050, &unk_224DC3C20);
  v3 = sub_224DAFBB8();
  v4 = a1[4];
  v5 = sub_224AA3CDC();
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = a1 + 5;
  v10 = v1 - 1;
  while (1)
  {
    *(v3 + 64 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
    *(*(v3 + 56) + 8 * v7) = result;
    v11 = *(v3 + 16);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    *(v3 + 16) = v13;
    if (!v10)
    {
      goto LABEL_8;
    }

    v14 = *v9++;

    v7 = sub_224AA3CDC();
    --v10;
    result = v14;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224DA260C(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7048, &qword_224DC3C18);
  v3 = sub_224DAFBB8();
  v4 = a1[4];
  v5 = sub_224AA3CDC();
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = a1 + 5;
  v10 = v1 - 1;
  while (1)
  {
    *(v3 + 64 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
    *(*(v3 + 56) + 8 * v7) = result;
    v11 = *(v3 + 16);
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    *(v3 + 16) = v13;
    if (!v10)
    {
      goto LABEL_8;
    }

    v14 = *v9++;
    swift_unknownObjectRetain();
    v7 = sub_224AA3CDC();
    --v10;
    result = v14;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_224DA270C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7040, &qword_224DC3C08);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3A98, &qword_224DC3C10);
    v8 = sub_224DAFBB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_224A3796C(v10, v6, &qword_27D6F7040, &qword_224DC3C08);
      v12 = *v6;
      result = sub_224B0BD50(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_224DAC5E8();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_224DA28F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3AA0, &qword_224DC3C00);
    v3 = sub_224DAFBB8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_224A77FD0(v7, v8);
      result = sub_224A3A40C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_224DA2A0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3A70, &qword_224DB47D8);
  v3 = sub_224DAFBB8();
  v13 = *(a1 + 32);
  result = sub_224B304F8();
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_224B304F8();
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_224DA2B24(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F7030, &qword_224DB47E0);
  v4 = sub_224DAFBB8();
  v16 = *(a1 + 32);
  result = sub_224B304F8();
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    v15 = v1;
    return v4;
  }

  v7 = (a1 + 48);
  v8 = v2 - 1;
  while (1)
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v4[6] + 8 * result) = v16;
    *(v4[7] + 8 * result) = *(&v16 + 1);
    v9 = v4[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v1 = *(&v16 + 1);
    v4[2] = v11;
    if (!v8)
    {
      goto LABEL_8;
    }

    v12 = *v7++;
    v16 = v12;

    v13 = v1;
    result = sub_224B304F8();
    --v8;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_224DA2C34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3A80, &unk_224DC3BF0);
  v3 = sub_224DAFBB8();
  v4 = *(a1 + 32);
  v18 = *(a1 + 40);
  v5 = sub_224B304F8();
  v6 = v18;
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    swift_unknownObjectRetain();
    return v3;
  }

  v8 = v5;
  result = v4;
  v10 = (a1 + 64);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = result;
    *(v3[7] + 16 * v8) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = (v10 + 24);
    v15 = *(v10 - 1);
    v17 = *v10;

    swift_unknownObjectRetain();
    v8 = sub_224B304F8();
    v10 = v14;
    result = v15;
    v6 = v17;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_224DA2D90(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_224DAFBB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_224DA2E9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_224DAFBB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_224A3A40C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_224DA2F98(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  result = sub_224DAEE98();
  if (v4)
  {
    result = 15;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_12;
  }

  return sub_224DAEF28();
}

uint64_t sub_224DA30E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlatterContentError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224DA3148()
{
  v0 = sub_224DA9B28();
  v1 = *(v0 - 8);
  v3 = MEMORY[0x28223BE20](v0, v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v21 - v7;
  result = sub_224DA9AB8();
  v10 = result;
  v27 = *(result + 16);
  if (v27)
  {
    v11 = 0;
    v21 = (v1 + 8);
    v25 = (v1 + 32);
    v26 = v1 + 16;
    v12 = MEMORY[0x277D84F90];
    v23 = v5;
    v24 = v0;
    v22 = result;
    while (v11 < *(v10 + 16))
    {
      v13 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v14 = *(v1 + 72);
      (*(v1 + 16))(v8, v10 + v13 + v14 * v11, v0);
      if (sub_224DA9B18())
      {
        v15 = *v25;
        (*v25)(v5, v8, v0);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224ADA68C(0, *(v12 + 16) + 1, 1);
          v12 = v28;
        }

        v18 = *(v12 + 16);
        v17 = *(v12 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_224ADA68C((v17 > 1), v18 + 1, 1);
          v12 = v28;
        }

        *(v12 + 16) = v18 + 1;
        v19 = v12 + v13 + v18 * v14;
        v5 = v23;
        v0 = v24;
        result = (v15)(v19, v23, v24);
        v10 = v22;
      }

      else
      {
        result = (*v21)(v8, v0);
      }

      if (v27 == ++v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
LABEL_13:

    v20 = *(v12 + 16);

    return v20 != 0;
  }

  return result;
}

void *sub_224DA33B0(uint64_t a1)
{
  v3 = sub_224DA9878();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v92 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F7178, &qword_224DC3E18);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v86 - v8;
  v108 = sub_224DA9908();
  v123 = *(v108 - 8);
  v11 = MEMORY[0x28223BE20](v108, v10);
  v91 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v86 - v14;
  v16 = sub_224DADB68();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v121 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v86 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v120 = &v86 - v26;
  v27 = sub_224DADE68();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v106 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v114 = &v86 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v86 - v36;
  v110 = *(v1 + 96);
  os_unfair_lock_lock(*(v110 + 16));
  v109 = a1;
  v107 = sub_224DA3EF0(a1);
  v38 = sub_224DADE58();
  v105 = *(v38 + 16);
  if (!v105)
  {

    v41 = MEMORY[0x277D84F98];
LABEL_28:
    os_unfair_lock_unlock(*(v110 + 16));
    return v41;
  }

  v93 = v24;
  v40 = 0;
  v104 = v38 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
  v122 = *(v1 + 16);
  v103 = v28 + 104;
  v119 = v28 + 8;
  v102 = *MEMORY[0x277CF9E20];
  v101 = (v17 + 48);
  v98 = (v17 + 32);
  v112 = (v17 + 8);
  v90 = (v123 + 16);
  v100 = (v123 + 8);
  v99 = (v17 + 16);
  v96 = v17;
  v87 = v17 + 40;
  v41 = MEMORY[0x277D84F98];
  *&v39 = 134349312;
  v86 = v39;
  v97 = v9;
  v111 = v16;
  v118 = v15;
  v95 = v28;
  v94 = v38;
  v124 = v28 + 16;
  v89 = v27;
  while (v40 < *(v38 + 16))
  {
    v113 = *(v28 + 72);
    v123 = *(v28 + 16);
    (v123)(v37, v104 + v113 * v40, v27);
    v44 = v37;
    v45 = v114;
    (*(v28 + 104))(v114, v102, v27);
    v46 = sub_224DADE48();
    v47 = v45;
    v48 = v44;
    v115 = *(v28 + 8);
    v115(v47, v27);
    v49 = v107 << (v46 & 1);
    sub_224DAD988();
    os_unfair_lock_assert_owner(*(v110 + 16));
    sub_224DADB58();
    sub_224DADEB8();

    v50 = (*v101)(v9, 1, v16);
    v116 = v40;
    v117 = v41;
    if (v50 == 1)
    {
      sub_224A3311C(v9, &qword_27D6F7178, &qword_224DC3E18);
      v51 = 0;
    }

    else
    {
      v52 = *v98;
      v53 = v93;
      (*v98)(v93, v9, v16);
      v54 = sub_224DADB28();
      sub_224DA73A8(&qword_27D6F7168, MEMORY[0x277CF9DD0], MEMORY[0x277CF9DC8]);
      v88 = v49;
      if (v54 == v49)
      {
        sub_224DADD48();
        sub_224DADEE8();
        v55 = v120;
        v52(v120, v53, v16);
        v56 = v108;
        v57 = v118;
        v58 = v123;
        goto LABEL_17;
      }

      v51 = sub_224DADD38();
      if (qword_2813516C8 != -1)
      {
        swift_once();
      }

      v59 = sub_224DAB258();
      __swift_project_value_buffer(v59, qword_281365120);
      v60 = sub_224DAB228();
      v61 = sub_224DAF2A8();
      v62 = os_log_type_enabled(v60, v61);
      v49 = v88;
      if (v62)
      {
        v63 = swift_slowAlloc();
        *v63 = v86;
        swift_beginAccess();
        v64 = sub_224DADB28();
        swift_endAccess();
        *(v63 + 4) = v64;
        *(v63 + 12) = 2050;
        *(v63 + 14) = v49;
        _os_log_impl(&dword_224A2F000, v60, v61, "maximumBudgetPerWindow has changed from %{public}ld to %{public}ld, removing and recreating budget", v63, 0x16u);
        v65 = v63;
        v16 = v111;
        MEMORY[0x22AA5EED0](v65, -1, -1);
      }

      v66 = v93;
      swift_beginAccess();
      sub_224DADEC8();
      (*v112)(v66, v16);
      v48 = v44;
    }

    v67 = __OFSUB__(v49, v51);
    v56 = v108;
    if (v67)
    {
      goto LABEL_31;
    }

    v57 = v118;
    (*v90)(v91, v118, v108);
    v44 = v48;
    v58 = v123;
    (v123)(v114, v48, v27);
    sub_224DA9808();
    v55 = v120;
    v27 = v89;
    sub_224DADB38();
    sub_224DADEE8();
LABEL_17:
    (*v100)(v57, v56);
    v68 = v106;
    v58(v106, v44, v27);
    v16 = v111;
    (*v99)(v121, v55, v111);
    v69 = v117;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125 = v69;
    v71 = sub_224B0BC7C(v68);
    v73 = v69[2];
    v74 = (v72 & 1) == 0;
    v67 = __OFADD__(v73, v74);
    v75 = v73 + v74;
    if (v67)
    {
      goto LABEL_30;
    }

    v76 = v72;
    v37 = v44;
    if (v69[3] >= v75)
    {
      v78 = v116;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v84 = v71;
        sub_224B2862C();
        v71 = v84;
        v16 = v111;
      }
    }

    else
    {
      sub_224B15790(v75, isUniquelyReferenced_nonNull_native);
      v71 = sub_224B0BC7C(v68);
      v78 = v116;
      if ((v76 & 1) != (v77 & 1))
      {
        goto LABEL_33;
      }
    }

    v9 = v97;
    v41 = v125;
    if (v76)
    {
      v42 = v96;
      (*(v96 + 40))(v125[7] + *(v96 + 72) * v71, v121, v16);
      v43 = v115;
      v115(v68, v27);
      (*(v42 + 8))(v120, v16);
      v43(v37, v27);
    }

    else
    {
      v125[(v71 >> 6) + 8] |= 1 << v71;
      v79 = v71;
      (v123)(v41[6] + v71 * v113, v68, v27);
      v80 = v96;
      (*(v96 + 32))(v41[7] + *(v96 + 72) * v79, v121, v16);
      v81 = v115;
      v115(v68, v27);
      (*(v80 + 8))(v120, v16);
      v81(v37, v27);
      v82 = v41[2];
      v67 = __OFADD__(v82, 1);
      v83 = v82 + 1;
      if (v67)
      {
        goto LABEL_32;
      }

      v41[2] = v83;
    }

    v40 = v78 + 1;
    v28 = v95;
    v38 = v94;
    if (v105 == v40)
    {

      goto LABEL_28;
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
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}

uint64_t sub_224DA3EF0(uint64_t a1)
{
  v3 = sub_224DAD9C8();
  v4 = *(v3 - 8);
  v110 = v3;
  v111 = v4;
  v6 = MEMORY[0x28223BE20](v3, v5);
  v109 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v105 = &v96 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v99 = &v96 - v13;
  MEMORY[0x28223BE20](v12, v14);
  v98 = &v96 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v100 = (&v96 - v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v20 = *(v19 - 8);
  v102 = v19;
  v103 = v20;
  MEMORY[0x28223BE20](v19, v21);
  v101 = &v96 - v22;
  v23 = sub_224DA9AE8();
  v106 = *(v23 - 8);
  v107 = v23;
  MEMORY[0x28223BE20](v23, v24);
  v104 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F48D8, &unk_224DB8240);
  v28 = MEMORY[0x28223BE20](v26 - 8, v27);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v33 = &v96 - v32;
  v34 = sub_224DABCC8();
  v108 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  v38 = sub_224DAD938();
  sub_224BD7040(v38, v39, v37);

  sub_224DA9BD8();
  sub_224DA9BC8();
  sub_224DAD938();
  sub_224DA9BB8();
  v96 = a1;

  v109 = v33;
  sub_224A3796C(v33, v30, &qword_27D6F48D8, &unk_224DB8240);
  v41 = v106;
  v40 = v107;
  v42 = (*(v106 + 48))(v30, 1, v107);
  v43 = v34;
  v97 = v37;
  if (v42 == 1)
  {
    sub_224A3311C(v30, &qword_27D6F48D8, &unk_224DB8240);
LABEL_7:
    v50 = v96;
    v51 = v105;
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v52 = sub_224DAB258();
    __swift_project_value_buffer(v52, qword_281365120);
    v54 = v110;
    v53 = v111;
    (*(v111 + 16))(v51, v50, v110);
    swift_retain_n();
    v55 = sub_224DAB228();
    v56 = sub_224DAF278();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = v43;
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v113[0] = v59;
      *v58 = 136446466;
      sub_224DA73A8(&qword_27D6F4B70, MEMORY[0x277CF9D80], MEMORY[0x277CF9D98]);
      v60 = sub_224DAFD28();
      v61 = v51;
      v63 = v62;
      (*(v53 + 8))(v61, v54);
      v64 = sub_224A33F74(v60, v63, v113);

      *(v58 + 4) = v64;
      *(v58 + 12) = 2050;

      *(v58 + 14) = 60;

      _os_log_impl(&dword_224A2F000, v55, v56, "Push NOT allowed for %{public}s, defaulting to normal budget %{public}ld", v58, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x22AA5EED0](v59, -1, -1);
      MEMORY[0x22AA5EED0](v58, -1, -1);

      sub_224A3311C(v109, &qword_27D6F48D8, &unk_224DB8240);
      (*(v108 + 8))(v97, v57);
    }

    else
    {

      (*(v53 + 8))(v51, v54);
      sub_224A3311C(v109, &qword_27D6F48D8, &unk_224DB8240);
      (*(v108 + 8))(v97, v43);
    }

    return 60;
  }

  v44 = v104;
  (*(v41 + 32))(v104, v30, v40);
  if ((sub_224DA3148() & 1) == 0)
  {
    (*(v41 + 8))(v44, v40);
    goto LABEL_7;
  }

  v45 = sub_224DABCA8();
  v46 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  v47 = v100;
  sub_224A3796C(v45 + v46, v100, &unk_27D6F5060, &qword_224DB5620);

  v49 = v102;
  v48 = v103;
  if ((*(v103 + 48))(v47, 1, v102) == 1)
  {
    (*(v41 + 8))(v44, v40);
    sub_224A3311C(v109, &qword_27D6F48D8, &unk_224DB8240);
    (*(v108 + 8))(v97, v43);
    sub_224A3311C(v47, &unk_27D6F5060, &qword_224DB5620);
    return 60;
  }

  v105 = v43;
  (*(v48 + 32))(v101, v47, v49);
  sub_224DA9FE8();
  v66 = sub_224DA9AF8();

  v67 = v108;
  if ((v66 & 1) == 0)
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v83 = sub_224DAB258();
    __swift_project_value_buffer(v83, qword_281365120);
    v84 = v110;
    v85 = v111;
    v86 = v99;
    (*(v111 + 16))(v99, v96, v110);
    swift_retain_n();
    v87 = sub_224DAB228();
    v88 = sub_224DAF278();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v112 = v100;
      *v89 = 136446466;
      sub_224DA73A8(&qword_27D6F4B70, MEMORY[0x277CF9D80], MEMORY[0x277CF9D98]);
      v90 = sub_224DAFD28();
      v91 = v41;
      v93 = v92;
      (*(v85 + 8))(v86, v84);
      v94 = sub_224A33F74(v90, v93, &v112);

      *(v89 + 4) = v94;
      *(v89 + 12) = 2050;

      *(v89 + 14) = 60;

      _os_log_impl(&dword_224A2F000, v87, v88, "Frequent pushes NOT allowed for %{public}s, defaulting to normal budget %{public}ld", v89, 0x16u);
      v95 = v100;
      __swift_destroy_boxed_opaque_existential_1(v100);
      MEMORY[0x22AA5EED0](v95, -1, -1);
      MEMORY[0x22AA5EED0](v89, -1, -1);

      (*(v103 + 8))(v101, v102);
      (*(v91 + 8))(v104, v107);
      sub_224A3311C(v109, &qword_27D6F48D8, &unk_224DB8240);
      (*(v108 + 8))(v97, v105);
    }

    else
    {

      (*(v85 + 8))(v86, v84);
      (*(v103 + 8))(v101, v49);
      (*(v41 + 8))(v104, v107);
      sub_224A3311C(v109, &qword_27D6F48D8, &unk_224DB8240);
      (*(v67 + 8))(v97, v105);
    }

    return 60;
  }

  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v68 = sub_224DAB258();
  __swift_project_value_buffer(v68, qword_281365120);
  v69 = v110;
  v70 = v111;
  v71 = v98;
  (*(v111 + 16))(v98, v96, v110);
  swift_retain_n();
  v72 = sub_224DAB228();
  v73 = sub_224DAF278();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    v75 = v41;
    v76 = swift_slowAlloc();
    v112 = v76;
    *v74 = 136446466;
    sub_224DA73A8(&qword_27D6F4B70, MEMORY[0x277CF9D80], MEMORY[0x277CF9D98]);
    v77 = sub_224DAFD28();
    v78 = v71;
    v79 = v77;
    v81 = v80;
    (*(v70 + 8))(v78, v69);
    v82 = sub_224A33F74(v79, v81, &v112);

    *(v74 + 4) = v82;
    *(v74 + 12) = 2050;

    *(v74 + 14) = 240;

    _os_log_impl(&dword_224A2F000, v72, v73, "Frequent pushes allowed for %{public}s, defaulting to high frequency budget %{public}ld", v74, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x22AA5EED0](v76, -1, -1);
    MEMORY[0x22AA5EED0](v74, -1, -1);

    (*(v103 + 8))(v101, v102);
    (*(v75 + 8))(v104, v107);
  }

  else
  {

    (*(v70 + 8))(v71, v69);
    (*(v103 + 8))(v101, v102);
    (*(v41 + 8))(v104, v40);
  }

  sub_224A3311C(v109, &qword_27D6F48D8, &unk_224DB8240);
  (*(v108 + 8))(v97, v105);
  return 240;
}

uint64_t sub_224DA4EBC(uint64_t a1, int a2)
{
  LODWORD(v232) = a2;
  v222 = sub_224DADE68();
  v220 = *(v222 - 8);
  MEMORY[0x28223BE20](v222, v4);
  v214 = &v202 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_224DADB68();
  v209 = *(v221 - 8);
  MEMORY[0x28223BE20](v221, v6);
  v208 = &v202 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DA9908();
  v216 = *(v8 - 8);
  v217 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v215 = &v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_224DAD928();
  v226 = *(v224 - 8);
  v12 = MEMORY[0x28223BE20](v224, v11);
  v225 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v15 = sub_224DAD9C8();
  v16 = *(v15 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v202 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v202 - v23;
  v26 = MEMORY[0x28223BE20](v22, v25);
  v223 = &v202 - v27;
  v29 = MEMORY[0x28223BE20](v26, v28);
  v219 = &v202 - v30;
  v32 = MEMORY[0x28223BE20](v29, v31);
  v218 = &v202 - v33;
  v35 = MEMORY[0x28223BE20](v32, v34);
  v213 = &v202 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v212 = &v202 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v206 = &v202 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v204 = &v202 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v205 = &v202 - v48;
  v50 = MEMORY[0x28223BE20](v47, v49);
  v203 = &v202 - v51;
  MEMORY[0x28223BE20](v50, v52);
  v54 = &v202 - v53;
  v211 = v2;
  v233 = sub_224DA33B0(a1);
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v207 = v24;
  v55 = sub_224DAB258();
  v56 = __swift_project_value_buffer(v55, qword_281365120);
  v228 = *(v16 + 2);
  v229 = v16 + 16;
  v228(v54, a1, v15);

  v230 = v56;
  v57 = v15;
  v58 = sub_224DAB228();
  v59 = sub_224DAF278();

  v60 = os_log_type_enabled(v58, v59);
  v227 = a1;
  v210 = v20;
  if (v60)
  {
    v61 = swift_slowAlloc();
    v62 = v16;
    v63 = swift_slowAlloc();
    v234 = v63;
    *v61 = 136446722;
    v64 = v57;
    sub_224DAD978();
    v65 = v224;
    v66 = sub_224DAEE28();
    v68 = v67;
    v231 = *(v62 + 1);
    v231(v54, v64);
    v69 = sub_224A33F74(v66, v68, &v234);

    *(v61 + 4) = v69;
    *(v61 + 12) = 1026;
    *(v61 + 14) = v232 & 1;
    *(v61 + 18) = 2082;
    sub_224DA73A8(&qword_27D6F39F0, MEMORY[0x277CF9E28], MEMORY[0x277CF9E30]);
    v70 = sub_224DAECF8();
    v72 = sub_224A33F74(v70, v71, &v234);

    *(v61 + 20) = v72;
    _os_log_impl(&dword_224A2F000, v58, v59, "Checking subscription type %{public}s, alerting %{BOOL,public}d, budgets %{public}s", v61, 0x1Cu);
    swift_arrayDestroy();
    v73 = v63;
    v74 = v62;
    MEMORY[0x22AA5EED0](v73, -1, -1);
    v75 = v61;
    a1 = v227;
    MEMORY[0x22AA5EED0](v75, -1, -1);

    v76 = v64;
  }

  else
  {

    v231 = *(v16 + 1);
    v231(v54, v57);
    v76 = v57;
    v65 = v224;
    v74 = v16;
  }

  v77 = v225;
  sub_224DAD978();
  v78 = (*(v226 + 88))(v77, v65);
  v79 = v223;
  if (v78 == *MEMORY[0x277CF9D70])
  {
    v80 = v218;
    v81 = v228;
    v228(v218, a1, v76);
    v82 = v219;
    v81(v219, a1, v76);
    v83 = sub_224DAB228();
    v84 = sub_224DAF288();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v234 = v226;
      *v85 = 136446466;
      LODWORD(v225) = v84;
      v86 = sub_224DAD938();
      v223 = v74;
      v88 = v87;
      v89 = v231;
      v231(v80, v76);
      v90 = sub_224A33F74(v86, v88, &v234);

      *(v85 + 4) = v90;
      *(v85 + 12) = 2082;
      v91 = v215;
      sub_224DAD988();
      sub_224DA73A8(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v92 = v217;
      v93 = sub_224DAFD28();
      v95 = v94;
      (*(v216 + 8))(v91, v92);
      v89(v82, v76);
      v96 = sub_224A33F74(v93, v95, &v234);

      *(v85 + 14) = v96;
      _os_log_impl(&dword_224A2F000, v83, v225, "none subscription: not sending updated archive immediately: %{public}s.%{public}s", v85, 0x16u);
      v97 = v226;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v97, -1, -1);
      v98 = v85;
      a1 = v227;
      MEMORY[0x22AA5EED0](v98, -1, -1);
    }

    else
    {

      v117 = v231;
      v231(v82, v76);
      v117(v80, v76);
    }

    v118 = 0;
    if (v232)
    {
LABEL_35:
      if (v118)
      {
        goto LABEL_36;
      }

LABEL_29:

      v118 = 0;
      return v118 & 1;
    }

LABEL_39:

    return v118 & 1;
  }

  if (v78 == *MEMORY[0x277CF9D60])
  {
    v99 = v212;
    v100 = v228;
    v228(v212, a1, v76);
    v101 = v213;
    v100(v213, a1, v76);
    v102 = sub_224DAB228();
    v103 = sub_224DAF288();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v234 = v226;
      *v104 = 136446466;
      LODWORD(v225) = v103;
      v105 = sub_224DAD938();
      v107 = v106;
      v223 = v74;
      v108 = v231;
      v231(v99, v76);
      v109 = sub_224A33F74(v105, v107, &v234);

      *(v104 + 4) = v109;
      *(v104 + 12) = 2082;
      v110 = v215;
      sub_224DAD988();
      sub_224DA73A8(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v111 = v217;
      v112 = sub_224DAFD28();
      v114 = v113;
      (*(v216 + 8))(v110, v111);
      v108(v101, v76);
      v115 = sub_224A33F74(v112, v114, &v234);

      *(v104 + 14) = v115;
      _os_log_impl(&dword_224A2F000, v102, v225, "stateChanges subscription: not sending updated archive immediately: %{public}s.%{public}s", v104, 0x16u);
      v116 = v226;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v116, -1, -1);
      MEMORY[0x22AA5EED0](v104, -1, -1);
    }

    else
    {

      v141 = v231;
      v231(v101, v76);
      v141(v99, v76);
    }

    goto LABEL_34;
  }

  if (v78 != *MEMORY[0x277CF9D78])
  {
    if (v78 == *MEMORY[0x277CF9D68])
    {
      v118 = sub_224DA65F4(v233, v232 & 1);
      if (v232)
      {
        goto LABEL_35;
      }

      goto LABEL_39;
    }

    v161 = v228;
    v228(v223, a1, v76);
    v162 = v207;
    v161(v207, a1, v76);
    v163 = sub_224DAB228();
    v164 = sub_224DAF288();
    if (os_log_type_enabled(v163, v164))
    {
      v165 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      v234 = v219;
      *v165 = 136446466;
      LODWORD(v218) = v164;
      v166 = sub_224DAD938();
      v168 = v167;
      v223 = v74;
      v169 = v231;
      v231(v79, v76);
      v170 = sub_224A33F74(v166, v168, &v234);

      *(v165 + 4) = v170;
      *(v165 + 12) = 2082;
      v171 = v215;
      sub_224DAD988();
      sub_224DA73A8(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v172 = v217;
      v173 = sub_224DAFD28();
      v175 = v174;
      (*(v216 + 8))(v171, v172);
      v169(v162, v76);
      v176 = sub_224A33F74(v173, v175, &v234);

      *(v165 + 14) = v176;
      _os_log_impl(&dword_224A2F000, v163, v218, "unknown subscription: not sending updated archive immediately: %{public}s.%{public}s", v165, 0x16u);
      v177 = v219;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v177, -1, -1);
      v65 = v224;
      MEMORY[0x22AA5EED0](v165, -1, -1);
    }

    else
    {

      v180 = v231;
      v231(v162, v76);
      v180(v79, v76);
    }

    (*(v226 + 8))(v225, v65);
LABEL_34:
    v118 = 0;
    a1 = v227;
    if (v232)
    {
      goto LABEL_35;
    }

    goto LABEL_39;
  }

  if ((v232 & 1) == 0)
  {
    v142 = v204;
    v143 = v228;
    v228(v204, a1, v76);
    v144 = v206;
    v143(v206, a1, v76);
    v145 = sub_224DAB228();
    v146 = sub_224DAF278();
    if (os_log_type_enabled(v145, v146))
    {
      v147 = swift_slowAlloc();
      v232 = swift_slowAlloc();
      v234 = v232;
      *v147 = 136446466;
      LODWORD(v230) = v146;
      v148 = sub_224DAD938();
      v150 = v149;
      v151 = v144;
      v152 = v231;
      v231(v142, v76);
      v153 = sub_224A33F74(v148, v150, &v234);

      *(v147 + 4) = v153;
      *(v147 + 12) = 2082;
      v154 = v215;
      sub_224DAD988();
      sub_224DA73A8(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v155 = v217;
      v156 = sub_224DAFD28();
      v158 = v157;
      (*(v216 + 8))(v154, v155);
      v152(v151, v76);
      v159 = sub_224A33F74(v156, v158, &v234);

      *(v147 + 14) = v159;
      _os_log_impl(&dword_224A2F000, v145, v230, "alerting subscription: not sending updated non-alerting archive immediately: %{public}s.%{public}s", v147, 0x16u);
      v160 = v232;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v160, -1, -1);
      MEMORY[0x22AA5EED0](v147, -1, -1);
    }

    else
    {

      v179 = v231;
      v231(v144, v76);
      v179(v142, v76);
    }

    v118 = 0;
    goto LABEL_39;
  }

  v119 = sub_224DA6CF4(v233, 1);
  v120 = v203;
  v121 = v228;
  v228(v203, a1, v76);
  v122 = v205;
  v121(v205, a1, v76);
  v123 = sub_224DAB228();
  v124 = sub_224DAF278();
  if (!os_log_type_enabled(v123, v124))
  {

    v178 = v231;
    v231(v122, v76);
    v178(v120, v76);
    if (v119)
    {
      goto LABEL_36;
    }

    goto LABEL_29;
  }

  v125 = swift_slowAlloc();
  v226 = swift_slowAlloc();
  v234 = v226;
  *v125 = 136446466;
  v126 = sub_224DAD938();
  v223 = v74;
  v127 = v120;
  v128 = v122;
  LODWORD(v232) = v119;
  v130 = v129;
  v131 = v231;
  v231(v127, v76);
  v132 = sub_224A33F74(v126, v130, &v234);

  *(v125 + 4) = v132;
  *(v125 + 12) = 2082;
  LODWORD(v225) = v124;
  v133 = v215;
  sub_224DAD988();
  sub_224DA73A8(&qword_281351A00, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v134 = v217;
  v135 = sub_224DAFD28();
  v137 = v136;
  (*(v216 + 8))(v133, v134);
  v131(v128, v76);
  v138 = sub_224A33F74(v135, v137, &v234);

  *(v125 + 14) = v138;
  _os_log_impl(&dword_224A2F000, v123, v225, "alerting subscription: Sending updated alerting archive immediately: %{public}s.%{public}s", v125, 0x16u);
  v139 = v226;
  swift_arrayDestroy();
  MEMORY[0x22AA5EED0](v139, -1, -1);
  v140 = v125;
  a1 = v227;
  MEMORY[0x22AA5EED0](v140, -1, -1);

  if ((v232 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_36:
  v181 = v214;
  v182 = v222;
  (*(v220 + 104))(v214, *MEMORY[0x277CF9E18], v222);
  if (v233[2])
  {
    v183 = sub_224B0BC7C(v181);
    v181 = v214;
    if (v184)
    {
      v185 = v209;
      v186 = v208;
      v187 = v221;
      (*(v209 + 16))(v208, v233[7] + *(v209 + 72) * v183, v221);
      (*(v220 + 8))(v181, v182);

      sub_224DA73A8(&qword_27D6F7168, MEMORY[0x277CF9DD0], MEMORY[0x277CF9DC8]);
      sub_224DADD58();
      sub_224DADEE8();
      (*(v185 + 8))(v186, v187);
LABEL_43:
      v118 = 1;
      return v118 & 1;
    }
  }

  (*(v220 + 8))(v181, v182);
  v188 = v210;
  v228(v210, a1, v76);

  v189 = sub_224DAB228();
  v190 = sub_224DAF288();

  if (!os_log_type_enabled(v189, v190))
  {

    v231(v188, v76);
    goto LABEL_43;
  }

  v191 = swift_slowAlloc();
  v192 = swift_slowAlloc();
  v234 = v192;
  *v191 = 136446722;
  sub_224DA73A8(&qword_27D6F4B70, MEMORY[0x277CF9D80], MEMORY[0x277CF9D98]);
  v193 = sub_224DAFD28();
  v195 = v194;
  v231(v188, v76);
  v196 = sub_224A33F74(v193, v195, &v234);

  *(v191 + 4) = v196;
  *(v191 + 12) = 1026;
  v118 = 1;
  *(v191 + 14) = 1;
  *(v191 + 18) = 2082;
  sub_224DA73A8(&qword_27D6F39F0, MEMORY[0x277CF9E28], MEMORY[0x277CF9E30]);
  v197 = sub_224DAECF8();
  v199 = v198;

  v200 = sub_224A33F74(v197, v199, &v234);

  *(v191 + 20) = v200;
  _os_log_impl(&dword_224A2F000, v189, v190, "No budget for %{public}s, alerting %{BOOL,public}d, budgets %{public}s", v191, 0x1Cu);
  swift_arrayDestroy();
  MEMORY[0x22AA5EED0](v192, -1, -1);
  MEMORY[0x22AA5EED0](v191, -1, -1);

  return v118 & 1;
}

uint64_t sub_224DA65F4(uint64_t a1, char a2)
{
  v4 = sub_224DADE68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DADB68();
  v47 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v46 - v15;
  v17 = MEMORY[0x277CF9E20];
  if ((a2 & 1) == 0)
  {
    v17 = MEMORY[0x277CF9E18];
  }

  (*(v5 + 104))(v8, *v17, v4);
  if (!*(a1 + 16) || (v18 = sub_224B0BC7C(v8), (v19 & 1) == 0))
  {
    (*(v5 + 8))(v8, v4);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v29 = sub_224DAB258();
    __swift_project_value_buffer(v29, qword_281365120);

    v30 = sub_224DAB228();
    v31 = sub_224DAF288();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v48[0] = v33;
      *v32 = 67240450;
      *(v32 + 4) = a2 & 1;
      *(v32 + 8) = 2082;
      sub_224DA73A8(&qword_27D6F39F0, MEMORY[0x277CF9E28], MEMORY[0x277CF9E30]);
      v34 = sub_224DAECF8();
      v36 = sub_224A33F74(v34, v35, v48);

      *(v32 + 10) = v36;
      _os_log_impl(&dword_224A2F000, v30, v31, "full subscription: no budget, alerting %{BOOL,public}d, budgets %{public}s", v32, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x22AA5EED0](v33, -1, -1);
      MEMORY[0x22AA5EED0](v32, -1, -1);
    }

    return 0;
  }

  v20 = v47;
  (*(v47 + 16))(v13, *(a1 + 56) + *(v47 + 72) * v18, v9);
  (*(v5 + 8))(v8, v4);
  (*(v20 + 32))(v16, v13, v9);
  sub_224DA73A8(&qword_27D6F7168, MEMORY[0x277CF9DD0], MEMORY[0x277CF9DC8]);
  if (sub_224DADD28())
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v21 = sub_224DAB258();
    __swift_project_value_buffer(v21, qword_281365120);
    v22 = sub_224DAB228();
    v23 = sub_224DAF2A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v49 = v25;
      *v24 = 136446210;
      swift_beginAccess();
      sub_224DA73A8(&qword_27D6F7170, MEMORY[0x277CF9DD0], MEMORY[0x277CF9DD8]);
      v26 = sub_224DAFD28();
      v28 = sub_224A33F74(v26, v27, &v49);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_224A2F000, v22, v23, "full subscription: budget is exhausted, not sending updated archive immediately: %{public}s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x22AA5EED0](v25, -1, -1);
      MEMORY[0x22AA5EED0](v24, -1, -1);
    }

    (*(v47 + 8))(v16, v9);
    return 0;
  }

  sub_224DADD58();
  sub_224DADEE8();
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v38 = sub_224DAB258();
  __swift_project_value_buffer(v38, qword_281365120);
  v39 = sub_224DAB228();
  v40 = sub_224DAF2A8();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v49 = v42;
    *v41 = 136446210;
    swift_beginAccess();
    sub_224DA73A8(&qword_27D6F7170, MEMORY[0x277CF9DD0], MEMORY[0x277CF9DD8]);
    v43 = sub_224DAFD28();
    v45 = sub_224A33F74(v43, v44, &v49);

    *(v41 + 4) = v45;
    _os_log_impl(&dword_224A2F000, v39, v40, "full subscription: budget allows sending update immediately: %{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x22AA5EED0](v42, -1, -1);
    MEMORY[0x22AA5EED0](v41, -1, -1);
  }

  (*(v47 + 8))(v16, v9);
  return 1;
}

uint64_t sub_224DA6CF4(uint64_t a1, char a2)
{
  v4 = sub_224DADE68();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_224DADB68();
  v10 = *(v9 - 8);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v41[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v41[-v16];
  if ((a2 & 1) == 0)
  {
    return 0;
  }

  (*(v5 + 104))(v8, *MEMORY[0x277CF9E20], v4);
  if (!*(a1 + 16) || (v18 = sub_224B0BC7C(v8), (v19 & 1) == 0))
  {
    (*(v5 + 8))(v8, v4);
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v28 = sub_224DAB258();
    __swift_project_value_buffer(v28, qword_281365120);
    v29 = sub_224DAB228();
    v30 = sub_224DAF288();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 67240192;
      *(v31 + 4) = 1;
      _os_log_impl(&dword_224A2F000, v29, v30, "full subscription: no budget, alerting %{BOOL,public}d", v31, 8u);
      MEMORY[0x22AA5EED0](v31, -1, -1);
    }

    return 0;
  }

  (*(v10 + 16))(v14, *(a1 + 56) + *(v10 + 72) * v18, v9);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 32))(v17, v14, v9);
  sub_224DA73A8(&qword_27D6F7168, MEMORY[0x277CF9DD0], MEMORY[0x277CF9DC8]);
  if (sub_224DADD28())
  {
    if (qword_2813516C8 != -1)
    {
      swift_once();
    }

    v20 = sub_224DAB258();
    __swift_project_value_buffer(v20, qword_281365120);
    v21 = sub_224DAB228();
    v22 = sub_224DAF2A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42 = v24;
      *v23 = 136446210;
      swift_beginAccess();
      sub_224DA73A8(&qword_27D6F7170, MEMORY[0x277CF9DD0], MEMORY[0x277CF9DD8]);
      v25 = sub_224DAFD28();
      v27 = sub_224A33F74(v25, v26, &v42);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_224A2F000, v21, v22, "alerts subscription: budget is exhausted, not sending updated immediately:  %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x22AA5EED0](v24, -1, -1);
      MEMORY[0x22AA5EED0](v23, -1, -1);
    }

    (*(v10 + 8))(v17, v9);
    return 0;
  }

  sub_224DADD58();
  sub_224DADEE8();
  if (qword_2813516C8 != -1)
  {
    swift_once();
  }

  v33 = sub_224DAB258();
  __swift_project_value_buffer(v33, qword_281365120);
  v34 = sub_224DAB228();
  v35 = sub_224DAF2A8();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v42 = v37;
    *v36 = 136446210;
    swift_beginAccess();
    sub_224DA73A8(&qword_27D6F7170, MEMORY[0x277CF9DD0], MEMORY[0x277CF9DD8]);
    v38 = sub_224DAFD28();
    v40 = sub_224A33F74(v38, v39, &v42);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_224A2F000, v34, v35, "alerts subscription: budget allows sending update archive immediately: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x22AA5EED0](v37, -1, -1);
    MEMORY[0x22AA5EED0](v36, -1, -1);
  }

  (*(v10 + 8))(v17, v9);
  return 1;
}

uint64_t sub_224DA7334()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_224DA73A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224DA73F0()
{
  v1 = *(v0 + 4);
  v2 = 1702195828;
  if (!*v0)
  {
    v2 = 0x65736C6166;
  }

  v7 = v2;

  MEMORY[0x22AA5D210](58, 0xE100000000000000);

  v3 = sub_224DA8870(v1);
  v5 = v4;

  MEMORY[0x22AA5D210](v3, v5);

  return v7;
}

id sub_224DA74E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  sub_224DA9FE8();
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  swift_unknownObjectRetain();
  v7 = sub_224DAEDE8();

  v8 = [v6 initWithEffectiveBundleIdentifier:v7 delegate:a2 onQueue:a4];

  swift_unknownObjectRelease();
  return v8;
}

void sub_224DA7670()
{
  if (*&v0[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager])
  {
    __break(1u);
  }

  else
  {
    v1.receiver = v0;
    v1.super_class = swift_getObjectType();
    objc_msgSendSuper2(&v1, sel_dealloc);
  }
}

uint64_t type metadata accessor for _LocationAuthorizationMonitorImpl(uint64_t a1)
{
  result = qword_281352B40;
  if (!qword_281352B40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224DA7818(char *a1)
{
  v1 = &a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager];
  if (*&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager])
  {
    v3 = &a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__didChangeHandler];
    v4 = *&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__didChangeHandler];
    v5 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    sub_224A3D418(v4, v5);
    if (*v1)
    {
      v6 = *(v1 + 1);
      ObjectType = swift_getObjectType();
      (*(v6 + 24))(ObjectType, v6);
    }

    *v1 = 0;
    *(v1 + 1) = 0;
    swift_unknownObjectRelease();
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v8 = sub_224DAB258();
    __swift_project_value_buffer(v8, qword_281364D60);
    v9 = a1;
    v10 = sub_224DAB228();
    v11 = sub_224DAF278();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136446210;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      sub_224DA89A4();
      v14 = sub_224DAFD28();
      v16 = sub_224A33F74(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_224A2F000, v10, v11, "[mon:%{public}s] invalidated", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x22AA5EED0](v13, -1, -1);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }
  }
}

void sub_224DA7A08()
{
  v1 = *&v0[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_lock];
  os_unfair_lock_lock(*(v1 + 16));
  sub_224DA7AC8(v0, v4);
  os_unfair_lock_unlock(*(v1 + 16));
  v2 = v4[0];
  if (v4[0])
  {
    v3 = v4[1];
    (v4[0])(&v0[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier]);

    sub_224A3D418(v2, v3);
  }
}

void sub_224DA7AC8(char *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v2 = a2;
  if (*&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager])
  {
    v4 = *&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager + 8];
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    swift_unknownObjectRetain();
    v7 = v6(ObjectType, v4);
    v8 = v7;
    v9 = OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_status;
    v10 = *&a1[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_status];
    v99 = HIDWORD(v7);
    if (v10 == 2)
    {
      v100 = OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_status;
      if (qword_281351430 != -1)
      {
        swift_once();
      }

      v11 = sub_224DAB258();
      __swift_project_value_buffer(v11, qword_281364D60);
      v12 = a1;
      v13 = sub_224DAB228();
      v14 = sub_224DAF2A8();

      if (os_log_type_enabled(v13, v14))
      {
        v95 = v2;
        v15 = swift_slowAlloc();
        v104 = v8;
        v16 = swift_slowAlloc();
        v114 = v16;
        *v15 = 136446466;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
        sub_224DA89A4();
        v17 = sub_224DAFD28();
        v19 = sub_224A33F74(v17, v18, &v114);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2082;
        v20 = 1702195828;
        if (v104)
        {
          v21 = 0xE400000000000000;
        }

        else
        {
          v20 = 0x65736C6166;
          v21 = 0xE500000000000000;
        }

        v108 = v20;

        MEMORY[0x22AA5D210](58, 0xE100000000000000);

        v22 = sub_224DA8870(v99);
        v24 = v23;

        MEMORY[0x22AA5D210](v22, v24);

        v25 = sub_224A33F74(v108, v21, &v114);

        *(v15 + 14) = v25;
        _os_log_impl(&dword_224A2F000, v13, v14, "[mon:%{public}s] auth initialized to %{public}s", v15, 0x16u);
        swift_arrayDestroy();
        v26 = v16;
        v8 = v104;
        MEMORY[0x22AA5EED0](v26, -1, -1);
        v27 = v15;
        v2 = v95;
        MEMORY[0x22AA5EED0](v27, -1, -1);
      }

      swift_unknownObjectRelease();

      v9 = v100;
LABEL_11:
      *&a1[v9] = v8 & 0xFFFFFFFF00000001;
      *v2 = 0;
      v2[1] = 0;
      return;
    }

    if ((v7 & 1) == (v10 & 1))
    {
      if (HIDWORD(v10) == HIDWORD(v7))
      {
        v106 = v7;
        if (qword_281351430 != -1)
        {
          swift_once();
        }

        v51 = sub_224DAB258();
        __swift_project_value_buffer(v51, qword_281364D60);
        v52 = a1;
        v53 = sub_224DAB228();
        v54 = sub_224DAF298();

        if (os_log_type_enabled(v53, v54))
        {
          v97 = v2;
          v55 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v114 = v93;
          *v55 = 136446466;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
          v102 = v9;
          sub_224DA89A4();
          v56 = sub_224DAFD28();
          v58 = sub_224A33F74(v56, v57, &v114);

          *(v55 + 4) = v58;
          *(v55 + 12) = 2082;
          v59 = 1702195828;
          if (v106)
          {
            v60 = 0xE400000000000000;
          }

          else
          {
            v59 = 0x65736C6166;
            v60 = 0xE500000000000000;
          }

          v111 = v59;

          MEMORY[0x22AA5D210](58, 0xE100000000000000);

          v61 = sub_224DA8870(v99);
          v63 = v62;

          MEMORY[0x22AA5D210](v61, v63);

          v8 = v106;

          v64 = sub_224A33F74(v111, v60, &v114);

          *(v55 + 14) = v64;
          v9 = v102;
          _os_log_impl(&dword_224A2F000, v53, v54, "[mon:%{public}s] auth reported to change when it actually didn't : %{public}s", v55, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v93, -1, -1);
          v65 = v55;
          v2 = v97;
          MEMORY[0x22AA5EED0](v65, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          v8 = v106;
        }
      }

      else
      {
        v98 = v2;
        if (qword_281351430 != -1)
        {
          swift_once();
        }

        v70 = sub_224DAB258();
        __swift_project_value_buffer(v70, qword_281364D60);
        v71 = a1;
        v72 = sub_224DAB228();
        v73 = sub_224DAF2A8();

        if (os_log_type_enabled(v72, v73))
        {
          v107 = v8;
          v74 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          v114 = v94;
          *v74 = 136446722;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
          v103 = v9;
          sub_224DA89A4();
          v75 = sub_224DAFD28();
          v77 = sub_224A33F74(v75, v76, &v114);

          *(v74 + 4) = v77;
          *(v74 + 12) = 2082;
          v78 = 1702195828;
          if (v10)
          {
            v79 = 0xE400000000000000;
          }

          else
          {
            v78 = 0x65736C6166;
            v79 = 0xE500000000000000;
          }

          v112 = v78;

          MEMORY[0x22AA5D210](58, 0xE100000000000000);

          v80 = sub_224DA8870(SHIDWORD(v10));
          v82 = v81;

          MEMORY[0x22AA5D210](v80, v82);

          v83 = sub_224A33F74(v112, v79, &v114);

          *(v74 + 14) = v83;
          *(v74 + 22) = 2082;
          v84 = 0x65736C6166;
          if (v107)
          {
            v84 = 1702195828;
            v85 = 0xE400000000000000;
          }

          else
          {
            v85 = 0xE500000000000000;
          }

          v113 = v84;

          MEMORY[0x22AA5D210](58, 0xE100000000000000);

          v86 = sub_224DA8870(v99);
          v88 = v87;

          MEMORY[0x22AA5D210](v86, v88);

          v89 = sub_224A33F74(v113, v85, &v114);

          *(v74 + 24) = v89;
          v9 = v103;
          _os_log_impl(&dword_224A2F000, v72, v73, "[mon:%{public}s] auth changed from %{public}s to %{public}s", v74, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x22AA5EED0](v94, -1, -1);
          v90 = v74;
          v8 = v107;
          MEMORY[0x22AA5EED0](v90, -1, -1);
        }

        swift_unknownObjectRelease();

        v2 = v98;
      }

      goto LABEL_11;
    }

    v105 = v7;
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v28 = sub_224DAB258();
    __swift_project_value_buffer(v28, qword_281364D60);
    v29 = a1;
    v30 = sub_224DAB228();
    v31 = sub_224DAF2A8();

    if (os_log_type_enabled(v30, v31))
    {
      v96 = v2;
      v32 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v114 = v92;
      *v32 = 136446722;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      v101 = v9;
      sub_224DA89A4();
      v33 = sub_224DAFD28();
      v35 = sub_224A33F74(v33, v34, &v114);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2082;
      v36 = 1702195828;
      if (v10)
      {
        v37 = 0xE400000000000000;
      }

      else
      {
        v36 = 0x65736C6166;
        v37 = 0xE500000000000000;
      }

      v109 = v36;

      MEMORY[0x22AA5D210](58, 0xE100000000000000);

      v38 = sub_224DA8870(SHIDWORD(v10));
      v40 = v39;

      MEMORY[0x22AA5D210](v38, v40);

      v41 = sub_224A33F74(v109, v37, &v114);

      *(v32 + 14) = v41;
      *(v32 + 22) = 2082;
      v91 = v31;
      v42 = v29;
      v43 = v105;
      v44 = 0x65736C6166;
      if (v105)
      {
        v44 = 1702195828;
        v45 = 0xE400000000000000;
      }

      else
      {
        v45 = 0xE500000000000000;
      }

      v110 = v44;

      MEMORY[0x22AA5D210](58, 0xE100000000000000);

      v46 = sub_224DA8870(v99);
      v48 = v47;

      MEMORY[0x22AA5D210](v46, v48);

      v49 = sub_224A33F74(v110, v45, &v114);

      *(v32 + 24) = v49;
      v9 = v101;
      _os_log_impl(&dword_224A2F000, v30, v91, "[mon:%{public}s] auth changed from %{public}s to %{public}s", v32, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v92, -1, -1);
      v50 = v32;
      v2 = v96;
      MEMORY[0x22AA5EED0](v50, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();

      v42 = v29;
      v43 = v105;
    }

    *&a1[v9] = v43 & 0xFFFFFFFF00000001;
    v66 = *&v42[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__didChangeHandler];
    v67 = *&v42[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__didChangeHandler + 8];
    if (v66)
    {
      v68 = swift_allocObject();
      *(v68 + 16) = v66;
      *(v68 + 24) = v67;
      v69 = sub_224C984F8;
    }

    else
    {
      v69 = 0;
      v68 = 0;
    }

    *v2 = v69;
    v2[1] = v68;
    sub_224A364AC(v66, v67);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_224DA8700(uint64_t a1)
{
  sub_224C4EFE8();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for LocationAuthorizationMonitorStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LocationAuthorizationMonitorStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_224DA8870(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x7265746544746F6ELL;
    }

    if (a1 == 1)
    {
      return 0x7463697274736572;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6465696E6564;
      case 3:
        return 0xD000000000000010;
      case 4:
        return 0xD000000000000013;
    }
  }

  v2 = sub_224DAFD28();
  MEMORY[0x22AA5D210](v2);

  MEMORY[0x22AA5D210](41, 0xE100000000000000);
  return 40;
}

unint64_t sub_224DA89A4()
{
  result = qword_281351940;
  if (!qword_281351940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F3900, &unk_224DB4640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351940);
  }

  return result;
}

char *sub_224DA8A08(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v63 = a5;
  v61 = a3;
  ObjectType = swift_getObjectType();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v60 = v59 - v15;
  v16 = &v7[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__didChangeHandler];
  *v16 = 0;
  v16[1] = 0;
  *&v7[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_status] = 2;
  v17 = &v7[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_lock;
  type metadata accessor for UnfairLock();
  v19 = swift_allocObject();
  v20 = swift_slowAlloc();
  *&v7[v18] = v19;
  *v20 = 0;
  *&v7[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl__assertionCount] = 1;
  *(v19 + 16) = v20;
  v66 = v13;
  v21 = *(v13 + 16);
  v64 = v12;
  v59[0] = v21;
  v59[1] = v13 + 16;
  v21(&v7[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier], a1, v12);
  v22 = *v16;
  v23 = v16[1];
  *v16 = v63;
  v16[1] = a6;

  sub_224A3D418(v22, v23);
  v68.receiver = v7;
  v68.super_class = ObjectType;
  v24 = objc_msgSendSuper2(&v68, sel_init);
  v62 = OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_lock;
  v25 = *(*&v24[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_lock] + 16);
  v26 = v24;
  os_unfair_lock_lock(v25);
  v27 = *(v61 + 8);
  v63 = a1;
  ObjectType = a4;
  v28 = v27(a1, v26, &off_2838379C0, a4, a2);
  v30 = v29;

  v31 = &v26[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_manager];
  *v31 = v28;
  v31[1] = v30;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v28)
  {
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v46 = sub_224DAB258();
    __swift_project_value_buffer(v46, qword_281364D60);
    v47 = v26;
    v34 = sub_224DAB228();
    v35 = sub_224DAF288();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v67 = v37;
      *v36 = 136446210;
      v48 = v24;
      v49 = v60;
      v39 = v64;
      (v59[0])(v60, &v47[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier], v64);
      sub_224DA89A4();
      v50 = sub_224DAFD28();
      v52 = v51;
      v53 = v49;
      v24 = v48;
      (*(v66 + 8))(v53, v39);
      v54 = sub_224A33F74(v50, v52, &v67);

      *(v36 + 4) = v54;
      v45 = "[mon:%{public}s] failed to create";
      goto LABEL_10;
    }

LABEL_11:

    v39 = v64;
    v55 = v66;
    goto LABEL_12;
  }

  swift_unknownObjectRelease();
  if (qword_281351430 != -1)
  {
    swift_once();
  }

  v32 = sub_224DAB258();
  __swift_project_value_buffer(v32, qword_281364D60);
  v33 = v26;
  v34 = sub_224DAB228();
  v35 = sub_224DAF278();

  if (!os_log_type_enabled(v34, v35))
  {
    goto LABEL_11;
  }

  v36 = swift_slowAlloc();
  v37 = swift_slowAlloc();
  v67 = v37;
  *v36 = 136446210;
  v38 = v60;
  v39 = v64;
  (v59[0])(v60, &v33[OBJC_IVAR____TtC10ChronoCore33_LocationAuthorizationMonitorImpl_containerIdentifier], v64);
  sub_224DA89A4();
  v40 = sub_224DAFD28();
  v41 = v24;
  v43 = v42;
  (*(v66 + 8))(v38, v39);
  v44 = sub_224A33F74(v40, v43, &v67);
  v24 = v41;

  *(v36 + 4) = v44;
  v45 = "[mon:%{public}s] created";
LABEL_10:
  _os_log_impl(&dword_224A2F000, v34, v35, v45, v36, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v37);
  MEMORY[0x22AA5EED0](v37, -1, -1);
  v55 = v66;
  MEMORY[0x22AA5EED0](v36, -1, -1);

LABEL_12:
  v56 = *(*&v24[v62] + 16);
  v57 = v26;

  os_unfair_lock_unlock(v56);

  (*(v55 + 8))(v63, v39);
  return v57;
}

void CHDRegisterForTemporaryFolder_cold_1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_224A2F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error clearing temporary directory contents on startup: %@", &v1, 0xCu);
}

void CHDJetsamSetElevatedInactivePriority_cold_1(int a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = strerror(a1);
  _os_log_error_impl(&dword_224A2F000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error raising Jetsam Inactive Priority: %s", &v1, 0xCu);
}

void ProactiveSuggestionClientModelLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *ProactiveSuggestionClientModelLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"TemporaryProactive.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void __getATXInfoTimelineEntryRelevanceClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getATXInfoTimelineEntryRelevanceClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TemporaryProactive.m" lineNumber:18 description:{@"Unable to find class %s", "ATXInfoTimelineEntryRelevance"}];

  __break(1u);
}

void __getATXInfoTimelineEntryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getATXInfoTimelineEntryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TemporaryProactive.m" lineNumber:17 description:{@"Unable to find class %s", "ATXInfoTimelineEntry"}];

  __break(1u);
}

void __getATXInfoTimelineDonationClientClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getATXInfoTimelineDonationClientClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"TemporaryProactive.m" lineNumber:16 description:{@"Unable to find class %s", "ATXInfoTimelineDonationClient"}];

  __break(1u);
  sub_224DA92A8();
}