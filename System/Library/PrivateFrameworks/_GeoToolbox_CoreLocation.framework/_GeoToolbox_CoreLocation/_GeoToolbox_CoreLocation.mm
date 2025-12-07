void sub_275277DD0(void *a1)
{
  v32[1] = *MEMORY[0x277D85DE8];
  v2 = sub_275278AA0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v31[-v7];
  v9 = [a1 postalAddress];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_allocWithZone(MEMORY[0x277CBDB80]) init];
    v12 = [v11 stringFromPostalAddress_];

    v13 = sub_275278B10();
    v15 = v14;

    *v8 = v13;
    v8[1] = v15;
    (*(v3 + 104))(v8, *MEMORY[0x277CCB110], v2);
    v16 = sub_2752781D4(0, 1, 1, MEMORY[0x277D84F90]);
    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      v16 = sub_2752781D4((v17 > 1), v18 + 1, 1, v16);
    }

    v16[2] = v18 + 1;
    (*(v3 + 32))(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v8, v2);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v19 = [a1 location];
  if (v19)
  {
    *v6 = v19;
    v20 = v19;
    (*(v3 + 104))(v6, *MEMORY[0x277CCB108], v2);
    v21 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_2752781D4(0, v16[2] + 1, 1, v16);
    }

    v23 = v16[2];
    v22 = v16[3];
    if (v23 >= v22 >> 1)
    {
      v16 = sub_2752781D4((v22 > 1), v23 + 1, 1, v16);
    }

    v16[2] = v23 + 1;
    (*(v3 + 32))(v16 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v23, v6, v2);
  }

  v24 = [a1 name];
  if (v24)
  {
    v25 = v24;
    sub_275278B10();
  }

  sub_275278AE0();
  v26 = objc_opt_self();
  v32[0] = 0;
  v27 = [v26 archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v32];
  v28 = v32[0];
  if (v27)
  {
    sub_275278A90();

    sub_275278AD0();
  }

  else
  {
    v29 = v28;
    v30 = sub_275278A80();

    swift_willThrow();
  }
}

void *sub_2752781D4(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9F00, &qword_275278D38);
  v10 = *(sub_275278AA0() - 8);
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
  v15 = *(sub_275278AA0() - 8);
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

void PlaceDescriptor.init(placemark:)(void *a1)
{
  sub_275277DD0(a1);
}

char *PlaceDescriptor.placemark.getter()
{
  v1 = sub_275278AA0();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v50 = (&v42 - v7);
  v8 = MEMORY[0x28223BE20](v6);
  v51 = &v42 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v43 = v0;
  v12 = sub_275278AC0();
  if (v13 >> 60 != 15)
  {
    v14 = v12;
    v15 = v13;
    sub_2752789D0(0, &qword_2809B9F08, 0x277CCAAC8);
    sub_2752789D0(0, &qword_2809B9F10, 0x277CBFC40);
    v29 = sub_275278B20();
    sub_275278A18(v14, v15);
    result = v29;
    if (v29)
    {
      return result;
    }
  }

  v42 = 0;
  v52 = v5;
  result = sub_275278AF0();
  v46 = *(result + 2);
  if (!v46)
  {
LABEL_9:

    v51 = 0;
LABEL_14:
    result = sub_275278AF0();
    v30 = result;
    v31 = *(result + 2);
    if (v31)
    {
      v32 = 0;
      v33 = *MEMORY[0x277CCB110];
      while (1)
      {
        if (v32 >= *(v30 + 16))
        {
          __break(1u);
          goto LABEL_28;
        }

        v34 = v52;
        (*(v2 + 16))(v52, v30 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v32, v1);
        if ((*(v2 + 88))(v34, v1) == v33)
        {
          break;
        }

        ++v32;
        result = (*(v2 + 8))(v34, v1);
        if (v31 == v32)
        {
          goto LABEL_19;
        }
      }

      (*(v2 + 96))(v34, v1);
      v35 = [objc_allocWithZone(MEMORY[0x277CBDB60]) init];
      v40 = sub_275278B00();

      [v35 setStreet_];

      v36 = v51;
      if (v51)
      {
        goto LABEL_20;
      }
    }

    else
    {
LABEL_19:

      v35 = 0;
      v36 = v51;
      if (v51)
      {
LABEL_20:
        v37 = v36;
        sub_275278AB0();
        if (v38)
        {
          v39 = sub_275278B00();
        }

        else
        {
          v39 = 0;
        }

        v41 = [objc_opt_self() placemarkWithLocation:v37 name:v39 postalAddress:v35];

        return v41;
      }
    }

    return 0;
  }

  v17 = 0;
  v48 = v2 + 88;
  v49 = v2 + 16;
  v47 = *MEMORY[0x277CCB100];
  v18 = (v2 + 8);
  v45 = (v2 + 32);
  v44 = *MEMORY[0x277CCB108];
  while (v17 < *(result + 2))
  {
    v19 = result;
    v20 = *(v2 + 16);
    v20(v11, &result[((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v17], v1);
    v21 = v51;
    v20(v51, v11, v1);
    v22 = v11;
    v23 = *(v2 + 88);
    v24 = v23(v21, v1);
    if (v24 == v47)
    {

      (*(v2 + 96))(v21, v1);
      v51 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:*v21 longitude:v21[1]];
      (*(v2 + 8))(v22, v1);
      goto LABEL_14;
    }

    v25 = *v18;
    (*v18)(v21, v1);
    v26 = v22;
    v27 = v50;
    (*v45)();
    v28 = v23(v27, v1);
    if (v28 == v44)
    {

      (*(v2 + 96))(v27, v1);
      v51 = *v27;
      goto LABEL_14;
    }

    ++v17;
    v25(v27, v1);
    v11 = v26;
    result = v19;
    if (v46 == v17)
    {
      goto LABEL_9;
    }
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2752789D0(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_275278A18(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_275278A2C(a1, a2);
  }
}

void sub_275278A2C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}