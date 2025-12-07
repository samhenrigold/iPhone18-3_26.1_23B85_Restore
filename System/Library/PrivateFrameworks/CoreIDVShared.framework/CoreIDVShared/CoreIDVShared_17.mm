uint64_t sub_225B28AC0()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CECAD0[v1]);
  return sub_225CCFC24();
}

uint64_t sub_225B28B48()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](qword_225CECAD0[v1]);
  return sub_225CCFC24();
}

CoreIDVShared::DIPError::PropertyKey_optional __swiftcall DIPError.PropertyKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCFA64();

  v5 = 0;
  v6 = 9;
  switch(v3)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v5 = 1;
      goto LABEL_23;
    case 2:
      v5 = 2;
      goto LABEL_23;
    case 3:
      v5 = 3;
      goto LABEL_23;
    case 4:
      v5 = 4;
      goto LABEL_23;
    case 5:
      v5 = 5;
      goto LABEL_23;
    case 6:
      v5 = 6;
      goto LABEL_23;
    case 7:
      v5 = 7;
      goto LABEL_23;
    case 8:
      v5 = 8;
LABEL_23:
      v6 = v5;
      break;
    case 9:
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    default:
      v6 = 27;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_225B28D10()
{
  v0 = DIPError.PropertyKey.rawValue.getter();
  v2 = v1;
  if (v0 == DIPError.PropertyKey.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_225CCF934();
  }

  return v5 & 1;
}

uint64_t sub_225B28DAC()
{
  sub_225CCFBD4();
  DIPError.PropertyKey.rawValue.getter();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225B28E14(uint64_t a1)
{
  DIPError.PropertyKey.rawValue.getter();
  sub_225CCE5B4();
}

uint64_t sub_225B28E78()
{
  sub_225CCFBD4();
  DIPError.PropertyKey.rawValue.getter();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

unint64_t sub_225B28EE8@<X0>(unint64_t *a1@<X8>)
{
  result = DIPError.PropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void DIPError.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 4);
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = (v2 + 40);
    v6 = *(v2 + 16);
    v7 = (v2 + 40);
    while (1)
    {
      v9 = *v7;
      v7 += 7;
      v8 = v9;
      if (v9)
      {
        v10 = *(v5 - 1) & 0xFFFFFFFFFFFFLL;
        if ((v8 & 0x2000000000000000) != 0)
        {
          v10 = HIBYTE(v8) & 0xF;
        }

        if (v10)
        {
          break;
        }
      }

      v5 = v7;
      if (!--v6)
      {
        goto LABEL_15;
      }
    }

    v11 = v4 - 1;
    v12 = (v2 + 56 * v4 - 24);
    while (1)
    {
      v13 = v12[1];
      if (v13)
      {
        v14 = *v12;
        v15 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v15 = *v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v15)
        {
          break;
        }
      }

      v12 -= 7;
      if (--v11 >= v4)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
LABEL_15:
    v14 = 0;
    v13 = 0xE000000000000000;
  }

  sub_225CCF204();

  *&v36[0] = 0x20726F727245;
  *(&v36[0] + 1) = 0xE600000000000000;
  MEMORY[0x22AA6CE70](v14, v13);

  MEMORY[0x22AA6CE70](0x206E69616D6F4420, 0xEA0000000000203DLL);
  MEMORY[0x22AA6CE70](0x726F727245504944, 0xE800000000000000);
  MEMORY[0x22AA6CE70](0x203D2065646F4320, 0xE800000000000000);
  *&v33 = qword_225CECAD0[v1];
  v16 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v16);

  MEMORY[0x22AA6CE70](10272, 0xE200000000000000);
  LOWORD(v33) = v1;
  v17 = sub_225CCE504();
  MEMORY[0x22AA6CE70](v17);

  MEMORY[0x22AA6CE70](41, 0xE100000000000000);
  v36[3] = v36[0];
  if (*(v3 + 16))
  {
    MEMORY[0x22AA6CE70](0x747265706F725020, 0xEF5B203D20736569);
    v18 = 1 << *(v3 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v3 + 64);
    v21 = (v18 + 63) >> 6;

    v22 = 0;
    v23 = 0;
    v24 = 0xE000000000000000;
    if (v20)
    {
      while (1)
      {
        v25 = v23;
LABEL_28:
        v28 = __clz(__rbit64(v20));
        v20 &= v20 - 1;
        v29 = v28 | (v25 << 6);
        v30 = *(*(v3 + 48) + v29);
        sub_225A32940(*(v3 + 56) + 40 * v29, v32);
        LOBYTE(v33) = v30;
        sub_2259A9C20(v32, &v33 + 8);
        v27 = v25;
LABEL_29:
        v36[1] = v34;
        v36[2] = v35;
        v36[0] = v33;
        if (!v35)
        {
          break;
        }

        sub_2259A9C20((v36 + 8), &v33);
        *&v32[0] = 0;
        *(&v32[0] + 1) = 0xE000000000000000;
        sub_225CCF434();
        MEMORY[0x22AA6CE70](8250, 0xE200000000000000);
        __swift_project_boxed_opaque_existential_1(&v33, *(&v34 + 1));
        sub_225CCF914();
        v31 = v32[0];
        *&v32[0] = v22;
        *(&v32[0] + 1) = v24;

        MEMORY[0x22AA6CE70](v31, *(&v31 + 1));

        MEMORY[0x22AA6CE70](*&v32[0], *(&v32[0] + 1));

        __swift_destroy_boxed_opaque_existential_0(&v33);
        v22 = 8236;
        v24 = 0xE200000000000000;
        v23 = v27;
        if (!v20)
        {
          goto LABEL_21;
        }
      }

      MEMORY[0x22AA6CE70](93, 0xE100000000000000);
    }

    else
    {
LABEL_21:
      if (v21 <= v23 + 1)
      {
        v26 = v23 + 1;
      }

      else
      {
        v26 = v21;
      }

      v27 = v26 - 1;
      while (1)
      {
        v25 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v25 >= v21)
        {
          v20 = 0;
          v34 = 0u;
          v35 = 0u;
          v33 = 0u;
          goto LABEL_29;
        }

        v20 = *(v3 + 64 + 8 * v25);
        ++v23;
        if (v20)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
    }
  }
}

uint64_t DIPError.debugDescription.getter()
{
  v44 = sub_225CCCEA4();
  v1 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *v0;
  v45 = v0[1];
  v4 = v0[4];
  v41 = v0[5];
  *&v52[0] = 0;
  *(&v52[0] + 1) = 0xE000000000000000;
  sub_225CCF204();

  *&v52[0] = 0xD00000000000001FLL;
  *(&v52[0] + 1) = 0x8000000225D1DD70;
  *&v49 = qword_225CECAD0[v3];
  v5 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v5);

  MEMORY[0x22AA6CE70](10272, 0xE200000000000000);
  LOWORD(v49) = v3;
  v6 = sub_225CCE504();
  MEMORY[0x22AA6CE70](v6);

  MEMORY[0x22AA6CE70](41, 0xE100000000000000);
  v53 = v52[0];
  if (*(v4 + 16))
  {
    v46 = v1;
    MEMORY[0x22AA6CE70](0x7265706F7250090ALL, 0xED00003A73656974);
    v7 = 1 << *(v4 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v4 + 64);
    v10 = (v7 + 63) >> 6;

    v12 = 0;
    if (!v9)
    {
LABEL_6:
      if (v10 <= v12 + 1)
      {
        v14 = v12 + 1;
      }

      else
      {
        v14 = v10;
      }

      v15 = v14 - 1;
      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v10)
        {
          v9 = 0;
          v50 = 0u;
          v51 = 0u;
          v49 = 0u;
          goto LABEL_14;
        }

        v9 = *(v4 + 64 + 8 * v13);
        ++v12;
        if (v9)
        {
          goto LABEL_13;
        }
      }

LABEL_32:
      __break(1u);
      return result;
    }

    while (1)
    {
      v13 = v12;
LABEL_13:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v13 << 6);
      v18 = *(*(v4 + 48) + v17);
      sub_225A32940(*(v4 + 56) + 40 * v17, v48);
      LOBYTE(v49) = v18;
      sub_2259A9C20(v48, &v49 + 8);
      v15 = v13;
LABEL_14:
      v52[0] = v49;
      v52[1] = v50;
      v52[2] = v51;
      if (!v51)
      {
        break;
      }

      v19 = v52[0];
      sub_2259A9C20((v52 + 8), &v49);
      MEMORY[0x22AA6CE70](10, 0xE100000000000000);
      *&v48[0] = 0;
      *(&v48[0] + 1) = 0xE000000000000000;
      v47 = v19;
      sub_225CCF434();
      MEMORY[0x22AA6CE70](8250, 0xE200000000000000);
      __swift_project_boxed_opaque_existential_1(&v49, *(&v50 + 1));
      sub_225CCF914();
      v21 = *(&v48[0] + 1);
      v20 = *&v48[0];
      *&v48[0] = 539822345;
      *(&v48[0] + 1) = 0xE400000000000000;
      MEMORY[0x22AA6CE70](v20, v21);

      MEMORY[0x22AA6CE70](*&v48[0], *(&v48[0] + 1));

      result = __swift_destroy_boxed_opaque_existential_0(&v49);
      v12 = v15;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v1 = v46;
  }

  v22 = *(v45 + 16);
  if (v22)
  {
    result = MEMORY[0x22AA6CE70](0x61636F766E49090ALL, 0xEE003A736E6F6974);
    v42 = (v1 + 8);
    v23 = (v45 + 56 * v22);
    while (v22 <= *(v45 + 16))
    {
      v24 = *(v23 - 2);
      v46 = *(v23 - 3);
      v25 = v23[1];
      v26 = v23[2];
      v27 = v23[3];

      MEMORY[0x22AA6CE70](10, 0xE100000000000000);
      v28 = v43;
      sub_225CCCDC4();
      v29 = sub_225CCCDE4();
      v31 = v30;
      (*v42)(v28, v44);
      *&v52[0] = v29;
      *(&v52[0] + 1) = v31;
      MEMORY[0x22AA6CE70](58, 0xE100000000000000);

      MEMORY[0x22AA6CE70](v25, v26);

      MEMORY[0x22AA6CE70](58, 0xE100000000000000);
      *&v49 = v27;
      v32 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v32);

      v33 = v52[0];
      *&v52[0] = 539822345;
      *(&v52[0] + 1) = 0xE400000000000000;
      MEMORY[0x22AA6CE70](v33, *(&v33 + 1));

      MEMORY[0x22AA6CE70](*&v52[0], *(&v52[0] + 1));

      if (v24)
      {
        v34 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v34 = v46 & 0xFFFFFFFFFFFFLL;
        }

        if (v34)
        {
          *&v52[0] = 9;
          *(&v52[0] + 1) = 0xE100000000000000;
          MEMORY[0x22AA6CE70]();

          MEMORY[0x22AA6CE70](*&v52[0], *(&v52[0] + 1));
        }
      }

      v23 -= 7;
      if (!--v22)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_28:
  v35 = v41;
  if (v41)
  {
    v36 = v41;
    MEMORY[0x22AA6CE70](0xD000000000000013, 0x8000000225D1DD90);
    ErrorValue = swift_getErrorValue();
    MEMORY[0x28223BE20](ErrorValue);
    (*(v39 + 16))(&v41 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    v40 = sub_225CCE524();
    *&v52[0] = 0x202D09090ALL;
    *(&v52[0] + 1) = 0xE500000000000000;
    MEMORY[0x22AA6CE70](v40);

    MEMORY[0x22AA6CE70](*&v52[0], *(&v52[0] + 1));
  }

  return v53;
}

char *sub_225B29AA0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D998, &qword_225CECAC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_225B29BC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08, &unk_225CE40A0);
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

char *sub_225B29CD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD10, &qword_225CD42B8);
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
    v10 = MEMORY[0x277D84F90];
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_225B29DD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D928, &qword_225CECA58);
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

void *sub_225B29F2C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v19 = MEMORY[0x277D84F90];
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

void *sub_225B2A114(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD68, &unk_225CF90E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD70, &unk_225CDC620);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_225B2A270(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D938, &qword_225CECA68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_225B2A398(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD18, &qword_225CD42C0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD20, &qword_225CD42C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_225B2A4F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_225B2A6D0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73CBD8, &qword_225CE2718);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD00, &unk_225CDC7C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_225B2A818(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73ACE8, &unk_225CF1C90);
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
    v10 = MEMORY[0x277D84F90];
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

char *sub_225B2A91C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8E8, &qword_225CECA18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_225B2AA3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8F0, &qword_225CECA20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

char *sub_225B2AB30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8F8, &qword_225CECA28);
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
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

double sub_225B2AC50@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>, uint64_t a3@<X1>)
{
  v4 = v3;
  v6 = sub_2259F18D4(a1, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_225A43EF0();
      v10 = v12;
    }

    sub_2259B9624((*(v10 + 56) + 32 * v8), a2);
    sub_225B2B010(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_225B2ACF4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2259F1C5C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_225A44248();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_225CCF454();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_2259B9624((*(v9 + 56) + 32 * v7), a2);
    sub_225B2B1C0(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_225B2ADD0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_2259F1AA8(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_225A454A4();
      v9 = v11;
    }

    sub_2259B9624((*(v9 + 56) + 32 * v7), a2);
    sub_225B2BB88(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_225B2AE70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_2259F2024(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_225A45D44();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
    sub_2259F61BC(v10 + *(*(v11 - 8) + 72) * v7);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8, &unk_225CD7AB0);
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v7, v13);
    sub_225B2BF24(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8, &unk_225CD7AB0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_225B2B010(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_225CCF104() + 1) & ~v5;
    do
    {
      sub_225CCFBD4();

      sub_225CCE5B4();
      v10 = sub_225CCFC24();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_225B2B1C0(int64_t a1, uint64_t a2)
{
  v4 = sub_225CCF454();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_225CCF104();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_225CCE344();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_225B2B474(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_225CCF104() + 1) & ~v5;
    do
    {
      sub_225CCFBD4();
      sub_225CCE5B4();

      result = sub_225CCFC24();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v3);
        v14 = (v12 + v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 40 * v3;
        v17 = (v15 + 40 * v6);
        if (v3 != v6 || v16 >= v17 + 40)
        {
          v9 = *v17;
          v10 = v17[1];
          *(v16 + 32) = *(v17 + 4);
          *v16 = v9;
          *(v16 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_225B2B9D8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_225CCF104() + 1) & ~v5;
    do
    {
      sub_225CCFBD4();

      sub_225CCE5B4();
      v9 = sub_225CCFC24();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_225B2BB88(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_225CCF104() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      sub_225CCFBD4();
      type metadata accessor for CFString(0);
      sub_225B2EB64(&qword_27D73AEA0, type metadata accessor for CFString, &unk_225CD3A60);
      v11 = v10;
      sub_225CCD504();
      v12 = sub_225CCFC24();

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

uint64_t sub_225B2BD80(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_225CCF104() + 1) & ~v5;
    do
    {
      v9 = (*(a2 + 48) + 16 * v6);
      v10 = *v9;
      v11 = v9[1];
      sub_225CCFBD4();
      MEMORY[0x22AA6E420](v10);
      MEMORY[0x22AA6E420](v11);
      result = sub_225CCFC24();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_225B2BF24(int64_t a1, uint64_t a2)
{
  v28 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  v4 = *(v28 - 8);
  result = MEMORY[0x28223BE20](v28);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_225CCF104();
    v26 = v11;
    v27 = (v12 + 1) & v11;
    v13 = *(v4 + 72);
    do
    {
      v14 = v13 * v10;
      sub_2259F6158(*(a2 + 48) + v13 * v10, v7);
      sub_225CCFBD4();
      sub_225CCE5B4();
      sub_225CCD124();
      sub_225B2EB64(&qword_27D73FDF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_225CCE354();
      v15 = sub_225CCFC24();
      result = sub_2259F61BC(v7);
      v16 = v15 & v11;
      if (a1 >= v27)
      {
        if (v16 >= v27 && a1 >= v16)
        {
LABEL_11:
          if (v13 * a1 < v14 || *(a2 + 48) + v13 * a1 >= (*(a2 + 48) + v14 + v13))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v13 * a1 != v14)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v17 = *(a2 + 56);
          v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8, &unk_225CD7AB0) - 8) + 72);
          v19 = v18 * a1;
          result = v17 + v18 * a1;
          v20 = v18 * v10;
          v21 = v17 + v18 * v10 + v18;
          if (v19 < v20 || result >= v21)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v10;
            v11 = v26;
          }

          else
          {
            a1 = v10;
            v11 = v26;
            if (v19 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              a1 = v10;
            }
          }
        }
      }

      else if (v16 >= v27 || a1 >= v16)
      {
        goto LABEL_11;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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

unint64_t sub_225B2C248(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B368, &qword_225CD9578);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, v10, &qword_27D73B060, &unk_225CD3AE0);
      result = sub_2259F193C(v10);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_2259A9C20(&v11, v3[7] + 40 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_225B2C374(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B368, &qword_225CD9578);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, v10, &qword_27D73B060, &unk_225CD3AE0);
      result = sub_2259F19CC(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_2259A9C20(&v11, v3[7] + 40 * result);
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_225B2C4A0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_225B33B40(v43);
  if (!v44)
  {
    goto LABEL_25;
  }

  v12 = v43[0];
  sub_2259A9C20(&v43[8], v42);
  v13 = *a5;
  result = sub_2259F19CC(v12);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (*(v13 + 24) < v19)
  {
    sub_225A3FEA4(v19, a4 & 1);
    result = sub_2259F19CC(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_225CCFAC4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_225A43D70();
    result = v25;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v20)
  {
LABEL_11:
    v22 = *a5;
    v23 = 40 * result;
    sub_225A32940(*(*a5 + 56) + 40 * result, v41);
    __swift_destroy_boxed_opaque_existential_0(v42);
    v24 = *(v22 + 56);
    __swift_destroy_boxed_opaque_existential_0((v24 + v23));
    sub_2259A9C20(v41, v24 + v23);
    goto LABEL_15;
  }

LABEL_13:
  v26 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  *(v26[6] + result) = v12;
  result = sub_2259A9C20(v42, v26[7] + 40 * result);
  v27 = v26[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v26[2] = v28;
LABEL_15:
    sub_225B33B40(v43);
    if (v44)
    {
      v20 = 1;
      do
      {
        v12 = v43[0];
        sub_2259A9C20(&v43[8], v42);
        v32 = *a5;
        result = sub_2259F19CC(v12);
        v34 = *(v32 + 16);
        v35 = (v33 & 1) == 0;
        v18 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (*(v32 + 24) < v36)
        {
          sub_225A3FEA4(v36, 1);
          result = sub_2259F19CC(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v29 = *a5;
          v30 = 40 * result;
          sub_225A32940(*(*a5 + 56) + 40 * result, v41);
          __swift_destroy_boxed_opaque_existential_0(v42);
          v31 = *(v29 + 56);
          __swift_destroy_boxed_opaque_existential_0((v31 + v30));
          sub_2259A9C20(v41, v31 + v30);
        }

        else
        {
          v38 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          *(v38[6] + result) = v12;
          result = sub_2259A9C20(v42, v38[7] + 40 * result);
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_225B33B40(v43);
      }

      while (v44);
    }

LABEL_25:
    sub_2259D8710(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_225B2C7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
  }
}

unint64_t sub_225B2C828(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D990, &qword_225CECAC0);
    v3 = sub_225CCF584();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_2259F1900(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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

unint64_t sub_225B2C92C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B180, &qword_225CD7CD8);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, &v13, &unk_27D73B090, &unk_225CD7610);
      v5 = v13;
      v6 = v14;
      result = sub_2259F18D4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2259B9624(&v15, (v3[7] + 32 * result));
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

unint64_t sub_225B2CA64()
{
  result = qword_281059B98;
  if (!qword_281059B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059B98);
  }

  return result;
}

unint64_t sub_225B2CABC()
{
  result = qword_281059BA0;
  if (!qword_281059BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281059BA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DIPError.Code(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB62)
  {
    goto LABEL_17;
  }

  if (a2 + 1182 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 1182 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 1182;
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

      return (*a1 | (v4 << 16)) - 1182;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 1182;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x49F;
  v8 = v6 - 1183;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for DIPError.Code(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1182 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 1182 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB62)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB61)
  {
    v6 = ((a2 - 64354) >> 16) + 1;
    *result = a2 + 1182;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
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
        goto LABEL_21;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_21:
    *result = a2 + 1182;
    return result;
  }

  if (a2)
  {
    goto LABEL_21;
  }

  return result;
}

uint64_t sub_225B2CCA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_225B2CCEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_225B2CD48()
{
  result = qword_27D73D8C8;
  if (!qword_27D73D8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73D8C8);
  }

  return result;
}

unint64_t sub_225B2CD9C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B338, &qword_225CD9550);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, &v13, &qword_27D73AF90, &qword_225CFB9A0);
      v5 = v13;
      v6 = v14;
      result = sub_2259F18D4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2259B9624(&v15, (v3[7] + 32 * result));
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

void *sub_225B2CECC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B418, &unk_225CD9610);
  v3 = sub_225CCF584();
  LOBYTE(v4) = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_2259F1BAC(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_2259F1BAC(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_225B2CFE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D980, &qword_225CECAB0);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, &v11, &qword_27D73B070, &qword_225CD7AF0);
      v5 = v11;
      result = sub_2259F1CC0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2259B9624(&v12, (v3[7] + 32 * result));
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

unint64_t sub_225B2D108(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D970, &qword_225CECAA0);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, v13, &qword_27D73D978, &qword_225CECAA8);
      result = sub_2259F1C18(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2259B9624(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_225B2D244(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D968, &qword_225CECA98);
  v3 = sub_225CCF584();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_2259F1D10(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_2259CB710(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 16);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_2259F1D10(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_225B2D350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B408, &qword_225CD9600);
    v3 = sub_225CCF584();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_2259CB710(v5, v6);
      v8 = v7;
      result = sub_2259F1D7C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_225B2D458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3F0, &qword_225CD95E8);
    v3 = sub_225CCF584();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_2259F18D4(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_225B2D5A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD18, &unk_225CDC800);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B390, &qword_225CD9598);
    v7 = sub_225CCF584();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_225A0DE54(v9, v5, &qword_27D73BD18, &unk_225CDC800);
      v11 = *v5;
      v12 = v5[1];
      result = sub_2259F18D4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for AnyCodable(0);
      result = sub_225B2EBAC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for AnyCodable);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_225B2D79C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D948, &qword_225CECA78);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D8, &qword_225CD95D0);
    v7 = sub_225CCF584();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_225A0DE54(v9, v5, &qword_27D73D948, &qword_225CECA78);
      v12 = *v5;
      v11 = v5[1];
      result = sub_2259F18D4(*v5, v11);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v12;
      v16[1] = v11;
      v17 = v7[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
      result = sub_225A47298(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_225B2D990(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3C8, &qword_225CD95C8);
  v3 = sub_225CCF584();
  v5 = a1[4];
  v4 = a1[5];
  v6 = a1[6];
  result = sub_2259F1900(v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v9 = a1 + 9;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    v10 = (v3[7] + 16 * result);
    *v10 = v4;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_2259CB710(v4, v6);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v9 - 2);
    v4 = *(v9 - 1);
    v6 = *v9;
    result = sub_2259F1900(v5);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_225B2DA9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BD68, &unk_225CDC998);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D940, &qword_225CECA70);
    v7 = sub_225CCF584();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_225A0DE54(v9, v5, &qword_27D73BD68, &unk_225CDC998);
      v11 = *v5;
      v12 = v5[1];
      result = sub_2259F18D4(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for ISO18013Package.Document(0);
      result = sub_225B2EBAC(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for ISO18013Package.Document);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_225B2DC84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B348, &qword_225CD9558);
    v3 = sub_225CCF584();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2259F18D4(v5, v6);
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

unint64_t sub_225B2DDA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3A8, &qword_225CD95A8);
    v3 = sub_225CCF584();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      sub_2259CB710(v5, *i);
      result = sub_2259F1D7C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v9 = (*(v3 + 48) + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = *(v3 + 16);
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      *(v3 + 16) = v12;
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

unint64_t sub_225B2DEC4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_225CCF584();

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

unint64_t sub_225B2DFBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D930, &qword_225CECA60);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B388, &qword_225CD9590);
    v7 = sub_225CCF584();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_225A0DE54(v9, v5, &qword_27D73D930, &qword_225CECA60);
      v11 = *v5;
      result = sub_2259F1900(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for AnyCodable(0);
      result = sub_225B2EBAC(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for AnyCodable);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_225B2E194(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B378, &qword_225CD9580);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, &v11, &qword_27D73D648, &unk_225CE7160);
      v5 = v11;
      result = sub_2259F1AA8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2259B9624(&v12, (v3[7] + 32 * result));
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

unint64_t sub_225B2E2BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B370, &qword_225CE5350);
    v3 = sub_225CCF584();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2259F18D4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_225B2E3D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_225CCF584();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_2259F18D4(v7, v8);
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

unint64_t sub_225B2E4D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D910, &qword_225CECA40);
    v3 = sub_225CCF584();

    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_2259F1E8C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 4 * result) = v6;
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

unint64_t sub_225B2E5BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8D8, &qword_225CECA10);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, &v11, &qword_27D73D8E0, &qword_225CF29A0);
      v5 = v11;
      result = sub_2259F7044();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2259B9624(&v12, (v3[7] + 32 * result));
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

void *sub_225B2E6E4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B358, &qword_225CD9568);
  v3 = sub_225CCF584();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_2259F1F14(v4, v5);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = v5;
    *(v3[7] + 8 * v9) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_2259F1F14(v4, v5);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_225B2E800(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D900, &qword_225CECA30);
    v3 = sub_225CCF584();
    v4 = a1 + 32;

    while (1)
    {
      sub_225A0DE54(v4, &v11, &qword_27D73D908, &qword_225CECA38);
      v5 = v11;
      result = sub_2259F7044();
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2259B9624(&v12, (v3[7] + 32 * result));
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

unint64_t sub_225B2E928(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B340, &unk_225CFA9A0);
    v3 = sub_225CCF584();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2259F18D4(v5, v6);
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

unint64_t sub_225B2EA3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D8D0, &qword_225CECA08);
    v3 = sub_225CCF584();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 16);
      v9 = *(i - 1);
      v8 = *i;
      sub_2259F6128(v5, v6, *(i - 16));

      result = sub_2259F20F0(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 24 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      v13 = (v3[7] + 16 * result);
      *v13 = v9;
      v13[1] = v8;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

uint64_t sub_225B2EB64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225B2EBAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t DIPRetrier.init(maxRetries:backoffStrategy:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a1;
  v5 = sub_225CCEDA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_225CCDA64();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_225CCED84();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = *a2;
  v12 = *(a2 + 8);
  sub_2259D8718(0, &qword_28105BFA8, 0x277D85C78);
  sub_225CCED74();
  sub_225CCDA54();
  (*(v6 + 104))(v8, *MEMORY[0x277D85260], v5);
  result = sub_225CCEDD4();
  *(a3 + 24) = result;
  v14 = v16 + 1;
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    if (v14 <= 1)
    {
      v14 = 1;
    }

    *a3 = v14;
    *(a3 + 8) = v11;
    *(a3 + 16) = v12;
  }

  return result;
}

uint64_t DIPRetrier.retry<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 72) = a3;
  *(v5 + 80) = a4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  v7 = sub_225CCF3F4();
  *(v5 + 88) = v7;
  *(v5 + 96) = *(v7 - 8);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  v8 = sub_225CCF404();
  *(v5 + 120) = v8;
  *(v5 + 128) = *(v8 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = type metadata accessor for DIPRetrier.RetryResult(0, a4, v9, v10);
  v11 = swift_task_alloc();
  v12 = *v4;
  *(v5 + 152) = v11;
  *(v5 + 160) = v12;
  *(v5 + 168) = v4[1];
  *(v5 + 33) = *(v4 + 16);

  return MEMORY[0x2822009F8](sub_225B2EF90, 0, 0);
}

uint64_t sub_225B2EF90()
{
  sub_225CCEA54();
  v1 = v0[20];
  v2 = v0[8];
  if (v1 <= 1)
  {
    v1 = 1;
  }

  v0[22] = v1;
  v0[23] = 0;
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_225B2F114;
  v4 = v0[19];

  return v6(v4);
}

uint64_t sub_225B2F114()
{

  return MEMORY[0x2822009F8](sub_225B2F210, 0, 0);
}

uint64_t sub_225B2F210()
{
  v1 = *(v0 + 152);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(*(*(v0 + 80) - 8) + 32))(*(v0 + 56), v1);

    v3 = *(v0 + 8);
LABEL_7:

    return v3();
  }

  if (EnumCaseMultiPayload == 1 || (v4 = *(v0 + 184), v5 = *(v0 + 176) - 1, v6 = *v1, *(v0 + 200) = *v1, v4 == v5))
  {
    swift_willThrow();

    v3 = *(v0 + 8);
    goto LABEL_7;
  }

  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  if (*(v0 + 33))
  {
    if (*(v0 + 33) != 1)
    {
      v24 = v8 <= 0.0;
      if (v8 < -1.0)
      {
        v24 = 1;
      }

      if (((v9 | v24) & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }

    v10 = *(v0 + 168);
    v11 = 0.0;
    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    if (v4 <= 0x3F)
    {
      v11 = (1 << v4);
    }

    v12 = v11 * v10;
  }

  else
  {
    v12 = *(v0 + 168);
    if (v12 < 0.0)
    {
      if (v8 <= 0.0)
      {
        LOBYTE(v9) = 1;
      }

      if ((v9 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }
  }

  if ((v9 & 1) == 0)
  {
    if (v12 <= v8)
    {
      if (v8 <= 0.0)
      {
        goto LABEL_32;
      }
    }

    else if (v12 <= 0.0)
    {
      goto LABEL_32;
    }

LABEL_26:
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 88);
    v16 = _sSd13CoreIDVSharedE8durations8DurationVvg_0();
    v18 = v17;
    sub_225CCFAF4();
    *(v0 + 40) = v16;
    *(v0 + 48) = v18;
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    v19 = sub_225B33CE8(&qword_28105B8A0, MEMORY[0x277D85928], MEMORY[0x277D85930]);
    sub_225CCFAD4();
    sub_225B33CE8(&unk_28105B8A8, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
    sub_225CCF414();
    v20 = *(v14 + 8);
    *(v0 + 208) = v20;
    *(v0 + 216) = (v14 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v20(v13, v15);
    v21 = swift_task_alloc();
    *(v0 + 224) = v21;
    *v21 = v0;
    v21[1] = sub_225B2F698;
    v23 = *(v0 + 112);
    v22 = *(v0 + 120);

    return MEMORY[0x2822008C8](v23, v0 + 16, v22, v19);
  }

  if (v12 > 0.0 && v12 > -1.0 && v12 > 0.0)
  {
    goto LABEL_26;
  }

LABEL_32:

  ++*(v0 + 184);
  v27 = (*(v0 + 64) + **(v0 + 64));
  v25 = swift_task_alloc();
  *(v0 + 192) = v25;
  *v25 = v0;
  v25[1] = sub_225B2F114;
  v26 = *(v0 + 152);

  return v27(v26);
}

uint64_t sub_225B2F698()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    (*(v2 + 208))(*(v2 + 112), *(v2 + 88));
    v3 = sub_225B2F8F8;
  }

  else
  {
    v5 = *(v2 + 128);
    v4 = *(v2 + 136);
    v6 = *(v2 + 120);
    (*(v2 + 208))(*(v2 + 112), *(v2 + 88));
    (*(v5 + 8))(v4, v6);
    v3 = sub_225B2F7F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_225B2F7F0()
{
  ++*(v0 + 184);
  v4 = (*(v0 + 64) + **(v0 + 64));
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_225B2F114;
  v2 = *(v0 + 152);

  return v4(v2);
}

uint64_t sub_225B2F8F8()
{
  v1 = v0[25];
  (*(v0[16] + 8))(v0[17], v0[15]);

  v2 = v0[1];

  return v2();
}

void DIPRetrier.sync(_:)(unint64_t a1, const char *a2)
{
  v125 = a1;
  v126 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v114 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v115 = &v113 - v7;
  v127 = sub_225CCD954();
  v8 = MEMORY[0x28223BE20](v127);
  v116 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v121 = &v113 - v11;
  MEMORY[0x28223BE20](v10);
  v122 = &v113 - v12;
  v13 = 0;
  v128 = *v2;
  v123 = (v14 + 16);
  v124 = (v14 + 8);
  v15 = *(v2 + 8);
  v118 = *(v2 + 16);
  v117 = "CoreIDVShared/DIPRetrier.swift";
  if (v15 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v15;
  }

  v119 = " retryWithError from action";
  v120 = " retryAfterDelay from action";
  v17 = 64;
  LOBYTE(v18) = 1;
  while ((v18 & 1) != 0)
  {
    v19 = v17 - 63;
    if (v128 < v17 - 63)
    {
      *&v131 = 0;
      *(&v131 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v131 = 0x656972742078616DLL;
      *(&v131 + 1) = 0xEA00000000002073;
      v130 = v128;
      v64 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v64);

      MEMORY[0x22AA6CE70](0x6564656563786520, 0xE900000000000064);
      v66 = *(&v131 + 1);
      v65 = v131;
      v126 = "retrier action returned error";
      v67 = v13;
      v68 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v69 = swift_allocError();
      v20 = v70;
      v127 = v69;
      v128 = v66;
      if (v13)
      {
        swift_getErrorValue();
        v71 = v129;
        v72 = v13;
        sub_225B21FAC(v71, &v131);

        v18 = *(&v131 + 1);
        if (*(&v131 + 1))
        {
          v124 = v133;
          v125 = v131;
          v73 = v134;
          v122 = v135;
          v123 = v132;
          goto LABEL_81;
        }

        *&v131 = v13;
        v82 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
        sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
        if (swift_dynamicCast())
        {
          v83 = v130;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v85 = [v83 code];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = MEMORY[0x277D83BF8];
          *(inited + 40) = v85;
          v73 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v86 = v13;
          v123 = 0;
          v124 = 0;
          v18 = MEMORY[0x277D84F90];
          v125 = 141;
          v122 = v13;
          goto LABEL_81;
        }

        *&v131 = v13;
        v101 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
        v74 = sub_225CCE954();
        v75 = v115;
        v102 = swift_dynamicCast();
        (*(*(v74 - 8) + 56))(v75, v102 ^ 1u, 1, v74);
        v66 = v128;
      }

      else
      {
        v74 = sub_225CCE954();
        v75 = v115;
        (*(*(v74 - 8) + 56))(v115, 1, 1, v74);
      }

      sub_225CCE954();
      v103 = (*(*(v74 - 8) + 48))(v75, 1, v74);
      sub_2259CB640(v75, &unk_27D73B050, &unk_225CD3AD0);
      if (v103)
      {
        v104 = 141;
      }

      else
      {
        v104 = 23;
      }

      v125 = v104;

      v18 = MEMORY[0x277D84F90];
      v73 = sub_225B2C374(MEMORY[0x277D84F90]);
      v105 = v13;
      v122 = v13;
      v123 = v65;
      v124 = v66;
LABEL_81:
      v19 = v126 | 0x8000000000000000;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v131 = v73;
      sub_225B2C4A0(v68, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v131);

      v3 = v131;
      v17 = v65;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_82:
        v108 = *(v18 + 16);
        v107 = *(v18 + 24);
        if (v108 >= v107 >> 1)
        {
          v18 = sub_225B29AA0((v107 > 1), v108 + 1, 1, v18);
        }

        *(v18 + 16) = v108 + 1;
        v109 = (v18 + 56 * v108);
        v110 = v128;
        v109[4] = v17;
        v109[5] = v110;
        v109[6] = 0xD00000000000001ELL;
        v109[7] = v19;
        v109[8] = 0x293A5F28636E7973;
        v109[9] = 0xE800000000000000;
        v109[10] = 148;
        *v20 = v125;
        v112 = v123;
        v111 = v124;
        *(v20 + 8) = v18;
        *(v20 + 16) = v112;
        *(v20 + 24) = v111;
        *(v20 + 32) = v3;
        *(v20 + 40) = v122;
        goto LABEL_85;
      }

LABEL_87:
      v18 = sub_225B29AA0(0, *(v18 + 16) + 1, 1, v18);
      goto LABEL_82;
    }

    (v125)(&v131, v17 - 63);

    v20 = *(&v131 + 1);
    v13 = v131;
    if (v132 <= 1u)
    {
      if (!v132)
      {
        v21 = v131;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v22 = off_28105B918;
        v23 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v3 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
        os_unfair_lock_lock(&v3[off_28105B918]);
        v24 = v122;
        v25 = v22 + v23;
        v26 = v127;
        (*v123)(v122, v25, v127);
        os_unfair_lock_unlock(&v3[v22]);
        DIPLogError(_:message:log:)(v13, 0xD00000000000002ALL, v119 | 0x8000000000000000);
        sub_225B33C90(v13, v20, 0);
        (*v124)(v24, v26);
        v18 = 0;
        goto LABEL_7;
      }

      v34 = v131;
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v35 = off_28105B918;
      v36 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v3 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
      os_unfair_lock_lock(&v3[off_28105B918]);
      v37 = v122;
      v38 = v35 + v36;
      v39 = v127;
      (*v123)(v122, v38, v127);
      os_unfair_lock_unlock(&v3[v35]);
      DIPLogError(_:message:log:)(v13, 0xD00000000000002BLL, v120 | 0x8000000000000000);
      (*v124)(v37, v39);
      if (v19 < v128)
      {
        if (v118)
        {
          if (v118 == 1)
          {
            v40 = (1 << v17);
            if (v19 > 0x40)
            {
              v40 = 0.0;
            }

            v41 = v16 * v40;
            goto LABEL_5;
          }
        }

        else
        {
          v41 = v15;
          if (v15 < 0.0)
          {
            v41 = 0.0;
          }

LABEL_5:
          [objc_opt_self() sleepForTimeInterval_];
        }
      }

      v18 = 1;
      sub_225B33C90(v13, v20, 1u);
      goto LABEL_7;
    }

    if (v132 == 2)
    {
      if (v131)
      {
        sub_225B33CA4(v131, *(&v131 + 1), 2u);
        v27 = v13;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v28 = off_28105B918;
        v29 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v3 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
        os_unfair_lock_lock(&v3[off_28105B918]);
        v30 = v122;
        v31 = v28 + v29;
        v32 = v127;
        (*v123)(v122, v31, v127);
        os_unfair_lock_unlock(&v3[v28]);
        DIPLogError(_:message:log:)(v13, 0xD00000000000002CLL, v117 | 0x8000000000000000);
        v33 = v30;
      }

      else
      {
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v48 = off_28105B918;
        v49 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v3 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
        os_unfair_lock_lock(&v3[off_28105B918]);
        v50 = v116;
        (*v123)(v116, &v48[v49], v127);
        v51 = &v3[v48];
        v52 = v50;
        os_unfair_lock_unlock(v51);
        v53 = sub_225CCD934();
        v54 = sub_225CCED04();
        if (os_log_type_enabled(v53, v54))
        {
          v3 = swift_slowAlloc();
          *v3 = 0;
          _os_log_impl(&dword_2259A7000, v53, v54, "Retrier received retryAfterDelay from action", v3, 2u);
          MEMORY[0x22AA6F950](v3, -1, -1);

          v33 = v116;
        }

        else
        {

          v33 = v52;
        }

        v32 = v127;
      }

      (*v124)(v33, v32);
      [objc_opt_self() sleepForTimeInterval_];
      sub_225B33C90(v13, v20, 2u);
      sub_225B33C90(v13, v20, 2u);
      goto LABEL_53;
    }

    if (v131 != 0)
    {
      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v42 = off_28105B918;
      v43 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v3 = ((*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL);
      os_unfair_lock_lock(&v3[off_28105B918]);
      (*v123)(v121, &v42[v43], v127);
      os_unfair_lock_unlock(&v3[v42]);
      v44 = sub_225CCD934();
      v45 = sub_225CCED04();
      if (os_log_type_enabled(v44, v45))
      {
        v3 = swift_slowAlloc();
        *v3 = 0;
        _os_log_impl(&dword_2259A7000, v44, v45, "Retrier received retry from action", v3, 2u);
        MEMORY[0x22AA6F950](v3, -1, -1);
      }

      (*v124)(v121, v127);
      if (v19 < v128)
      {
        if (v118)
        {
          if (v118 == 1)
          {
            v46 = (1 << v17);
            if (v19 > 0x40)
            {
              v46 = 0.0;
            }

            v47 = v16 * v46;
            goto LABEL_51;
          }
        }

        else
        {
          v47 = v15;
          if (v15 < 0.0)
          {
            v47 = 0.0;
          }

LABEL_51:
          [objc_opt_self() sleepForTimeInterval_];
        }
      }

      sub_225B33C90(v13, v20, 3u);
      v13 = 0;
LABEL_53:
      v18 = 1;
      goto LABEL_7;
    }

    v18 = 0;
    v13 = 0;
LABEL_7:
    ++v17;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_87;
    }
  }

  if (!v13)
  {
    return;
  }

  v55 = v13;
  v56 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v124 = swift_allocError();
  v58 = v57;
  swift_getErrorValue();
  v59 = v136;
  v60 = v13;
  sub_225B21FAC(v59, &v131);

  v61 = *(&v131 + 1);
  v125 = 0x8000000225D1DDD0;
  if (*(&v131 + 1))
  {
    v127 = v132;
    v128 = v131;
    v126 = v133;
    v62 = v134;
    v63 = v135;
  }

  else
  {
    *&v131 = v13;
    v76 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v77 = v130;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      v78 = swift_initStackObject();
      *(v78 + 16) = xmmword_225CD30F0;
      *(v78 + 32) = 20;
      v79 = [v77 code];
      v80 = MEMORY[0x277D83BF8];
      *(v78 + 64) = MEMORY[0x277D83B88];
      *(v78 + 72) = v80;
      *(v78 + 40) = v79;
      v62 = sub_225B2C374(v78);
      swift_setDeallocating();
      sub_2259CB640(v78 + 32, &qword_27D73B060, &unk_225CD3AE0);

      v81 = v13;
      v127 = 0;
      v128 = 0;
      v126 = 0;
      v61 = MEMORY[0x277D84F90];
    }

    else
    {
      *&v131 = v13;
      v87 = v13;
      v88 = sub_225CCE954();
      v89 = v114;
      v90 = swift_dynamicCast();
      v91 = *(v88 - 8);
      (*(v91 + 56))(v89, v90 ^ 1u, 1, v88);
      LODWORD(v91) = (*(v91 + 48))(v89, 1, v88);
      sub_2259CB640(v89, &unk_27D73B050, &unk_225CD3AD0);
      if (v91)
      {
        v92 = 0;
      }

      else
      {
        v92 = 23;
      }

      v128 = v92;
      v61 = MEMORY[0x277D84F90];
      v62 = sub_225B2C374(MEMORY[0x277D84F90]);
      v93 = v13;
      v126 = 0x8000000225D1DDD0;
      v127 = 0xD00000000000001DLL;
    }

    v63 = v13;
  }

  v94 = swift_isUniquelyReferenced_nonNull_native();
  *&v131 = v62;
  sub_225B2C4A0(v56, sub_225B2AC40, 0, v94, &v131);

  v95 = v131;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v61 = sub_225B29AA0(0, *(v61 + 2) + 1, 1, v61);
  }

  v97 = *(v61 + 2);
  v96 = *(v61 + 3);
  if (v97 >= v96 >> 1)
  {
    v61 = sub_225B29AA0((v96 > 1), v97 + 1, 1, v61);
  }

  *(v61 + 2) = v97 + 1;
  v98 = &v61[56 * v97];
  v99 = v125;
  *(v98 + 4) = 0xD00000000000001DLL;
  *(v98 + 5) = v99;
  *(v98 + 6) = 0xD00000000000001ELL;
  *(v98 + 7) = 0x8000000225D1DDF0;
  *(v98 + 8) = 0x293A5F28636E7973;
  *(v98 + 9) = 0xE800000000000000;
  *(v98 + 10) = 154;
  v100 = v127;
  *v58 = v128;
  *(v58 + 8) = v61;
  *(v58 + 16) = v100;
  *(v58 + 24) = v126;
  *(v58 + 32) = v95;
  *(v58 + 40) = v63;
LABEL_85:
  swift_willThrow();
}

uint64_t DIPRetrier.async(action:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a1;
  v24 = a3;
  v7 = sub_225CCDA34();
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_225CCDA64();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v14 = v4[1];
  v15 = *(v4 + 16);
  v16 = v4[3];
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  *(v17 + 32) = v15;
  v19 = v23;
  v18 = v24;
  *(v17 + 40) = v16;
  *(v17 + 48) = v19;
  *(v17 + 56) = a2;
  *(v17 + 64) = v18;
  *(v17 + 72) = a4;
  aBlock[4] = sub_225B33CB8;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225A1A000;
  aBlock[3] = &block_descriptor_4;
  v20 = _Block_copy(aBlock);
  v16;

  sub_225CCDA54();
  v27 = MEMORY[0x277D84F90];
  sub_225B33CE8(&qword_28105BFD8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B170, &qword_225CD7CD0);
  sub_225B33D30();
  sub_225CCF0E4();
  MEMORY[0x22AA6D600](0, v12, v9, v20);
  _Block_release(v20);
  (*(v26 + 8))(v9, v7);
  (*(v10 + 8))(v12, v25);
}

void sub_225B30E60(int64_t a1, uint64_t a2, int a3, uint64_t a4, void (*a5)(uint64_t, uint64_t (*)(), uint64_t), uint64_t a6, void (*a7)(void *), uint64_t a8)
{
  v323 = a8;
  v324 = a7;
  v343 = a5;
  v344 = a6;
  v329 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v312 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v312 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v314 = &v312 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v317 = &v312 - v20;
  MEMORY[0x28223BE20](v19);
  v316 = &v312 - v21;
  v22 = sub_225CCD954();
  v23 = MEMORY[0x28223BE20](v22);
  v321 = &v312 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v330 = &v312 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v336 = &v312 - v28;
  MEMORY[0x28223BE20](v27);
  v320 = &v312 - v30;
  v31 = *&a2;
  if (*&a2 < 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = *&a2;
  }

  v337 = 0x8000000225D1DEB0;
  v338 = 0x8000000225D1DDF0;
  v315 = v16;
  if (a1 < 1)
  {
    isUniquelyReferenced_nonNull_native = 0;
    v322 = 0;
    goto LABEL_204;
  }

  v313 = v13;
  isUniquelyReferenced_nonNull_native = 0;
  v322 = 0;
  v341 = (v29 + 8);
  v342 = (v29 + 16);
  v34 = &v362;
  v319 = "CoreIDVShared/DIPRetrier.swift";
  v327 = " retryWithError from action";
  v328 = " retryAfterDelay from action";
  v339 = xmmword_225CD30F0;
  v326 = xmmword_225CEEFF0;
  v325 = xmmword_225CEEFE0;
  v318 = xmmword_225CEEFD0;
  v35 = 1;
  v340 = a1;
  v333 = v22;
  while (1)
  {
    while (1)
    {

      v36 = dispatch_semaphore_create(0);
      v37 = swift_allocObject();
      *(v37 + 24) = 0;
      *(v37 + 16) = 0;
      *(v37 + 32) = 3;
      v38 = swift_allocObject();
      *(v38 + 16) = v37;
      *(v38 + 24) = v36;

      v39 = v36;
      v343(v35, sub_225B3438C, v38);

      v348 = v39;
      sub_225CCEEB4();
      swift_beginAccess();
      v40 = *(v37 + 16);
      v41 = *(v37 + 24);
      v42 = *(v37 + 32);
      if (v42 <= 1)
      {
        break;
      }

      if (v42 == 2)
      {
        v346 = v37;
        if (!v40)
        {
          a1 = v41;
          if (qword_28105B910 != -1)
          {
            swift_once();
          }

          v76 = off_28105B918;
          v77 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
          v78 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
          os_unfair_lock_lock((off_28105B918 + v78));
          v79 = &v76[v77];
          v80 = v321;
          (*v342)(v321, v79, v22);
          v81 = &v76[v78];
          v82 = v80;
          os_unfair_lock_unlock(v81);
          v83 = sub_225CCD934();
          v71 = sub_225CCED04();
          if (os_log_type_enabled(v83, v71))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_2259A7000, v83, v71, "Retrier received retryAfterDelay from action", v84, 2u);
            MEMORY[0x22AA6F950](v84, -1, -1);
          }

          (*v341)(v82, v22);
          isUniquelyReferenced_nonNull_native = 0;
          goto LABEL_195;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        v48 = swift_allocObject();
        *(v48 + 16) = v339;
        *(v48 + 32) = 24;
        *(v48 + 64) = MEMORY[0x277D83B88];
        *(v48 + 72) = MEMORY[0x277D83BF8];
        *(v48 + 40) = v35;
        v49 = v40;
        v50 = v40;
        v51 = v40;
        v350 = sub_225B2C374(v48);
        swift_setDeallocating();
        sub_2259CB640(v48 + 32, &qword_27D73B060, &unk_225CD3AE0);
        swift_deallocClassInstance();
        swift_getErrorValue();
        v52 = v361;
        v53 = v40;
        sub_225B21FAC(v52, &v362);
        sub_225B33C90(v40, v41, 2u);
        v345 = v35;
        v349 = v41;
        v347 = v40;
        if (*(&v362 + 1))
        {
          v335 = *(&v362 + 1);
          v331 = v363;
          *&v332 = v362;
          v334 = *(&v363 + 1);
          *(&v332 + 1) = *(&v364 + 1);
          v54 = v364;
        }

        else
        {
          *&v362 = v40;
          v99 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
          sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
          if (swift_dynamicCast())
          {
            v52 = v357;
            v100 = swift_allocObject();
            *(v100 + 16) = v339;
            *(v100 + 32) = 20;
            v101 = [v52 code];
            *(v100 + 64) = MEMORY[0x277D83B88];
            *(v100 + 72) = MEMORY[0x277D83BF8];
            *(v100 + 40) = v101;
            v54 = sub_225B2C374(v100);
            swift_setDeallocating();
            sub_2259CB640(v100 + 32, &qword_27D73B060, &unk_225CD3AE0);
            swift_deallocClassInstance();

            sub_225B33CA4(v40, v41, 2u);
            v331 = 0;
            *&v332 = 0;
            v334 = 0;
            *(&v332 + 1) = v40;
            v335 = MEMORY[0x277D84F90];
          }

          else
          {
            *&v362 = v40;
            v206 = v40;
            v207 = sub_225CCE954();
            v52 = v41;
            v208 = v314;
            v209 = swift_dynamicCast();
            v210 = *(v207 - 8);
            (*(v210 + 56))(v208, v209 ^ 1u, 1, v207);
            LODWORD(v210) = (*(v210 + 48))(v208, 1, v207);
            sub_2259CB640(v208, &unk_27D73B050, &unk_225CD3AD0);
            if (v210)
            {
              v211 = 0;
            }

            else
            {
              v211 = 23;
            }

            *&v332 = v211;
            v212 = MEMORY[0x277D84F90];
            v54 = sub_225B2C374(MEMORY[0x277D84F90]);
            sub_225B33CA4(v40, v52, 2u);
            v331 = 0x7466417972746572;
            v334 = 0xEF79616C65447265;
            v335 = v212;
            *(&v332 + 1) = v40;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v360 = v54;
        v35 = v350 + 64;
        v213 = 1 << *(v350 + 32);
        if (v213 < 64)
        {
          v214 = ~(-1 << v213);
        }

        else
        {
          v214 = -1;
        }

        v22 = v214 & *(v350 + 64);
        a1 = (v213 + 63) >> 6;

        v71 = 0;
        while (2)
        {
          if (v22)
          {
            v215 = v71;
            goto LABEL_172;
          }

          if (a1 <= (v71 + 1))
          {
            v216 = v71 + 1;
          }

          else
          {
            v216 = a1;
          }

          v217 = v216 - 1;
          do
          {
            v215 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              __break(1u);
              goto LABEL_228;
            }

            if (v215 >= a1)
            {
              v22 = 0;
              v358 = 0u;
              v359 = 0u;
              v71 = v217;
              v357 = 0u;
              goto LABEL_173;
            }

            v22 = *(v35 + 8 * v215);
            ++v71;
          }

          while (!v22);
          v71 = v215;
LABEL_172:
          v218 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v219 = v218 | (v215 << 6);
          v220 = *(*(v350 + 48) + v219);
          sub_225A32940(*(v350 + 56) + 40 * v219, &v354);
          LOBYTE(v357) = v220;
          sub_2259A9C20(&v354, &v357 + 8);
LABEL_173:
          v355 = v358;
          v356 = v359;
          v354 = v357;
          if (!v359)
          {
            v363 = 0u;
            v364 = 0u;
            v362 = 0u;
LABEL_188:

            v229 = v335;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v229 = sub_225B29AA0(0, *(v229 + 2) + 1, 1, v229);
            }

            v230 = v347;
            v231 = v334;
            v232 = *(&v332 + 1);
            v234 = *(v229 + 2);
            v233 = *(v229 + 3);
            if (v234 >= v233 >> 1)
            {
              v229 = sub_225B29AA0((v233 > 1), v234 + 1, 1, v229);
            }

            a1 = v349;
            sub_225B33C90(v230, v349, 2u);
            *(v229 + 2) = v234 + 1;
            v235 = &v229[56 * v234];
            *(v235 + 2) = v318;
            v236 = v337;
            v237 = v338;
            *(v235 + 6) = 0xD00000000000001ELL;
            *(v235 + 7) = v237;
            *(v235 + 8) = 0xD000000000000019;
            *(v235 + 9) = v236;
            *(v235 + 10) = 276;
            sub_2259CB5EC();
            v350 = swift_allocError();
            v239 = v331;
            v238 = v332;
            *v240 = v332;
            *(v240 + 8) = v229;
            *(v240 + 16) = v239;
            *(v240 + 24) = v231;
            *(v240 + 32) = v54;
            *(v240 + 40) = v232;
            v335 = swift_allocError();
            *v241 = v238;
            *(v241 + 8) = v229;
            *(v241 + 16) = v239;
            *(v241 + 24) = v231;
            *(v241 + 32) = v54;
            *(v241 + 40) = v232;

            v242 = v232;

            v243 = v232;
            v71 = v231;
            v244 = v232;
            if (qword_28105B910 != -1)
            {
              swift_once();
            }

            v245 = off_28105B918;
            v246 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
            v247 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
            os_unfair_lock_lock((off_28105B918 + v247));
            v248 = &v245[v246];
            v249 = v336;
            v22 = v333;
            (*v342)(v336, v248, v333);
            os_unfair_lock_unlock(&v245[v247]);
            v250 = v335;
            DIPLogError(_:message:log:)(v335, 0xD00000000000002CLL, v319 | 0x8000000000000000);

            v40 = v347;
            sub_225B33C90(v347, a1, 2u);
            (*v341)(v249, v22);

            v34 = &v362;
            v35 = v345;
            isUniquelyReferenced_nonNull_native = v350;
LABEL_195:
            [objc_opt_self() sleepForTimeInterval_];

            sub_225B33C90(v40, a1, 2u);

            v127 = __OFADD__(v35++, 1);
            if (v127)
            {
              goto LABEL_247;
            }

            a1 = v340;
            goto LABEL_197;
          }

          LOBYTE(v362) = v354;
          sub_225A32940(&v354 + 8, &v362 + 8);
          sub_2259CB640(&v354, &qword_27D73D9A0, &qword_225CEF150);
          if (!v364)
          {
            goto LABEL_188;
          }

          v40 = v362;
          sub_2259A9C20((&v362 + 8), &v357);
          v34 = sub_2259F19CC(v40);
          v222 = v54[2];
          v223 = (v221 & 1) == 0;
          v224 = v222 + v223;
          if (__OFADD__(v222, v223))
          {
            goto LABEL_242;
          }

          v52 = v221;
          if (v54[3] >= v224)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if ((v221 & 1) == 0)
              {
                goto LABEL_182;
              }
            }

            else
            {
              sub_225A43D70();
              if ((v52 & 1) == 0)
              {
                goto LABEL_182;
              }
            }
          }

          else
          {
            sub_225A3FEA4(v224, isUniquelyReferenced_nonNull_native & 1);
            v225 = sub_2259F19CC(v40);
            if ((v52 & 1) != (v226 & 1))
            {
LABEL_249:
              sub_225CCFAC4();
              __break(1u);
              return;
            }

            v34 = v225;
            if ((v52 & 1) == 0)
            {
LABEL_182:
              v54 = v360;
              v360[(v34 >> 6) + 8] |= 1 << v34;
              *(v54[6] + v34) = v40;
              sub_2259A9C20(&v357, v54[7] + 40 * v34);
              v227 = v54[2];
              v127 = __OFADD__(v227, 1);
              v228 = v227 + 1;
              if (v127)
              {
                goto LABEL_245;
              }

              v54[2] = v228;
              goto LABEL_161;
            }
          }

          v54 = v360;
          sub_225A32940(v360[7] + 40 * v34, &v354);
          __swift_destroy_boxed_opaque_existential_0(&v357);
          v52 = v54[7];
          __swift_destroy_boxed_opaque_existential_0((v52 + 40 * v34));
          sub_2259A9C20(&v354, v52 + 40 * v34);
LABEL_161:
          isUniquelyReferenced_nonNull_native = 1;
          continue;
        }
      }

      if (!(v40 | v41))
      {
        v40 = v37;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v89 = off_28105B918;
        v90 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v91 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v91));
        v92 = &v89[v90];
        v93 = v320;
        (*v342)(v320, v92, v22);
        v94 = &v89[v91];
        v95 = v93;
        os_unfair_lock_unlock(v94);
        v96 = sub_225CCD934();
        v97 = sub_225CCED04();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&dword_2259A7000, v96, v97, "Retrier received stop from action", v98, 2u);
          MEMORY[0x22AA6F950](v98, -1, -1);
        }

        else
        {
        }

        (*v341)(v95, v22);

        v71 = 0;
        isUniquelyReferenced_nonNull_native = 0;
        goto LABEL_149;
      }

      if (qword_28105B910 != -1)
      {
        swift_once();
      }

      v60 = off_28105B918;
      v61 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v62 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v62));
      (*v342)(v330, &v60[v61], v22);
      os_unfair_lock_unlock(&v60[v62]);
      v63 = sub_225CCD934();
      v64 = sub_225CCED04();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&dword_2259A7000, v63, v64, "Retrier received retry from action", v65, 2u);
        MEMORY[0x22AA6F950](v65, -1, -1);
      }

      (*v341)(v330, v22);
      if (v35 >= a1)
      {
LABEL_31:

        isUniquelyReferenced_nonNull_native = 0;
        v71 = 1;
        goto LABEL_149;
      }

      if (v329)
      {
        if (v329 != 1)
        {
          goto LABEL_31;
        }

        v66 = v35 & ~(v35 >> 63);
        v67 = v66 + 63;
        v68 = 1uLL >> (1 - v66);
        v69 = 1 << v67;
        if (v35 == 65)
        {
          v69 = 0;
        }

        if (v35 >= 1)
        {
          v68 = v69;
        }

        if (v35 > 65)
        {
          v68 = 0;
        }

        v70 = v32 * v68;
      }

      else
      {
        v70 = v31;
        if (v31 < 0.0)
        {
          v70 = 0.0;
        }
      }

      [objc_opt_self() sleepForTimeInterval_];

      isUniquelyReferenced_nonNull_native = 0;
      if (++v35 > a1)
      {
        goto LABEL_204;
      }
    }

    v345 = v35;
    v346 = v37;
    v349 = v41;
    v347 = v40;
    if (!v42)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    v55 = swift_allocObject();
    *(v55 + 16) = v339;
    *(v55 + 32) = 24;
    *(v55 + 64) = MEMORY[0x277D83B88];
    *(v55 + 72) = MEMORY[0x277D83BF8];
    *(v55 + 40) = v35;
    sub_225B33CA4(v40, v349, 1u);
    v56 = v40;
    v350 = sub_225B2C374(v55);
    swift_setDeallocating();
    sub_2259CB640(v55 + 32, &qword_27D73B060, &unk_225CD3AE0);
    swift_deallocClassInstance();
    swift_getErrorValue();
    v57 = v353;
    v58 = v40;
    sub_225B21FAC(v57, &v362);
    sub_225B33C90(v40, v349, 1u);
    *(&v332 + 1) = *(&v362 + 1);
    if (*(&v362 + 1))
    {
      v331 = v363;
      *&v332 = v362;
      v59 = v364;
      v334 = *(&v363 + 1);
      v335 = *(&v364 + 1);
    }

    else
    {
      *&v362 = v40;
      v85 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v86 = v357;
        v87 = swift_allocObject();
        *(v87 + 16) = v339;
        *(v87 + 32) = 20;
        v88 = [v86 code];
        *(v87 + 64) = MEMORY[0x277D83B88];
        *(v87 + 72) = MEMORY[0x277D83BF8];
        *(v87 + 40) = v88;
        v59 = sub_225B2C374(v87);
        swift_setDeallocating();
        sub_2259CB640(v87 + 32, &qword_27D73B060, &unk_225CD3AE0);
        swift_deallocClassInstance();

        sub_225B33CA4(v40, v349, 1u);
        v334 = 0;
        v335 = v40;
        v331 = 0;
        *&v332 = 0;
        *(&v332 + 1) = MEMORY[0x277D84F90];
      }

      else
      {
        *&v362 = v40;
        v151 = v40;
        v152 = sub_225CCE954();
        v153 = v317;
        v154 = swift_dynamicCast();
        v155 = *(v152 - 8);
        (*(v155 + 56))(v153, v154 ^ 1u, 1, v152);
        LODWORD(v155) = (*(v155 + 48))(v153, 1, v152);
        sub_2259CB640(v153, &unk_27D73B050, &unk_225CD3AD0);
        if (v155)
        {
          v156 = 0;
        }

        else
        {
          v156 = 23;
        }

        *&v332 = v156;
        v157 = MEMORY[0x277D84F90];
        v59 = sub_225B2C374(MEMORY[0x277D84F90]);
        sub_225B33CA4(v40, v349, 1u);
        v334 = 0xEE00726F72724568;
        v335 = v40;
        v331 = 0x7469577972746572;
        *(&v332 + 1) = v157;
      }
    }

    v40 = swift_isUniquelyReferenced_nonNull_native();
    v360 = v59;
    isUniquelyReferenced_nonNull_native = v350 + 64;
    v158 = 1 << *(v350 + 32);
    if (v158 < 64)
    {
      v159 = ~(-1 << v158);
    }

    else
    {
      v159 = -1;
    }

    v71 = v159 & *(v350 + 64);
    a1 = (v158 + 63) >> 6;

    v35 = 0;
    while (1)
    {
      if (v71)
      {
        v162 = v35;
LABEL_110:
        v165 = __clz(__rbit64(v71));
        v71 &= v71 - 1;
        v166 = v165 | (v162 << 6);
        v167 = *(*(v350 + 48) + v166);
        sub_225A32940(*(v350 + 56) + 40 * v166, &v354);
        LOBYTE(v357) = v167;
        sub_2259A9C20(&v354, &v357 + 8);
      }

      else
      {
        v163 = a1 <= v35 + 1 ? v35 + 1 : a1;
        v164 = v163 - 1;
        while (1)
        {
          v162 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            __break(1u);
            goto LABEL_214;
          }

          if (v162 >= a1)
          {
            break;
          }

          v71 = *(isUniquelyReferenced_nonNull_native + 8 * v162);
          ++v35;
          if (v71)
          {
            v35 = v162;
            goto LABEL_110;
          }
        }

        v71 = 0;
        v358 = 0u;
        v359 = 0u;
        v35 = v164;
        v357 = 0u;
      }

      v355 = v358;
      v356 = v359;
      v354 = v357;
      if (!v359)
      {
        break;
      }

      LOBYTE(v362) = v354;
      sub_225A32940(&v354 + 8, &v362 + 8);
      sub_2259CB640(&v354, &qword_27D73D9A0, &qword_225CEF150);
      if (!v364)
      {
        goto LABEL_126;
      }

      v34 = v362;
      sub_2259A9C20((&v362 + 8), &v357);
      v22 = sub_2259F19CC(v34);
      v169 = v59[2];
      v170 = (v168 & 1) == 0;
      v171 = v169 + v170;
      if (__OFADD__(v169, v170))
      {
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
        __break(1u);
LABEL_248:
        v35 = sub_225B29AA0(0, *(v35 + 16) + 1, 1, v35);
LABEL_223:
        v282 = *(v35 + 16);
        v281 = *(v35 + 24);
        if (v282 >= v281 >> 1)
        {
          v35 = sub_225B29AA0((v281 > 1), v282 + 1, 1, v35);
        }

        *(v35 + 16) = v282 + 1;
        v283 = (v35 + 56 * v282);
        v284 = v350;
        v283[4] = v349;
        v283[5] = v284;
        v285 = v338;
        v283[6] = 0xD00000000000001ELL;
        v283[7] = v285;
        v286 = v337;
        v283[8] = 0xD000000000000019;
        v283[9] = v286;
        v283[10] = 289;
        sub_2259CB5EC();
        v287 = swift_allocError();
        *v288 = v34;
        *(v288 + 8) = v35;
        *(v288 + 16) = v22;
        *(v288 + 24) = v40;
        *(v288 + 32) = v71;
        *(v288 + 40) = a1;

        v289 = a1;
        v324(v287);

        v290 = a1;
LABEL_226:

        return;
      }

      v172 = v168;
      if (v59[3] >= v171)
      {
        if (v40)
        {
          if (v168)
          {
            goto LABEL_98;
          }
        }

        else
        {
          sub_225A43D70();
          if (v172)
          {
            goto LABEL_98;
          }
        }
      }

      else
      {
        sub_225A3FEA4(v171, v40 & 1);
        v173 = sub_2259F19CC(v34);
        if ((v172 & 1) != (v174 & 1))
        {
          goto LABEL_249;
        }

        v22 = v173;
        if (v172)
        {
LABEL_98:
          v59 = v360;
          v160 = 40 * v22;
          sub_225A32940(v360[7] + 40 * v22, &v354);
          __swift_destroy_boxed_opaque_existential_0(&v357);
          v161 = v59[7];
          __swift_destroy_boxed_opaque_existential_0((v161 + v160));
          sub_2259A9C20(&v354, v161 + v160);
          goto LABEL_99;
        }
      }

      v59 = v360;
      v360[(v22 >> 6) + 8] |= 1 << v22;
      *(v59[6] + v22) = v34;
      sub_2259A9C20(&v357, v59[7] + 40 * v22);
      v175 = v59[2];
      v127 = __OFADD__(v175, 1);
      v176 = v175 + 1;
      if (v127)
      {
        goto LABEL_244;
      }

      v59[2] = v176;
LABEL_99:
      v40 = 1;
    }

    v363 = 0u;
    v364 = 0u;
    v362 = 0u;
LABEL_126:

    v177 = *(&v332 + 1);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v177 = sub_225B29AA0(0, *(v177 + 2) + 1, 1, v177);
    }

    v178 = v347;
    v180 = *(v177 + 2);
    v179 = *(v177 + 3);
    if (v180 >= v179 >> 1)
    {
      v251 = v347;
      v177 = sub_225B29AA0((v179 > 1), v180 + 1, 1, v177);
      v178 = v251;
    }

    sub_225B33C90(v178, v349, 1u);
    *(v177 + 2) = v180 + 1;
    v181 = &v177[56 * v180];
    *(v181 + 2) = v325;
    v182 = v337;
    v183 = v338;
    *(v181 + 6) = 0xD00000000000001ELL;
    *(v181 + 7) = v183;
    *(v181 + 8) = 0xD000000000000019;
    *(v181 + 9) = v182;
    *(v181 + 10) = 270;
    sub_2259CB5EC();
    v350 = swift_allocError();
    v185 = v331;
    v184 = v332;
    *v186 = v332;
    *(v186 + 8) = v177;
    *(v186 + 16) = v185;
    v188 = v334;
    v187 = v335;
    *(v186 + 24) = v334;
    *(v186 + 32) = v59;
    *(v186 + 40) = v187;
    v189 = swift_allocError();
    *v190 = v184;
    *(v190 + 8) = v177;
    *(v190 + 16) = v185;
    *(v190 + 24) = v188;
    *(v190 + 32) = v59;
    *(v190 + 40) = v187;

    v191 = v187;
    v192 = v177;

    v193 = v187;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v194 = off_28105B918;
    v195 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v196 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v196));
    v197 = &v194[v195];
    v198 = v336;
    v199 = v333;
    (*v342)(v336, v197, v333);
    v200 = &v194[v196];
    v22 = v199;
    os_unfair_lock_unlock(v200);
    DIPLogError(_:message:log:)(v189, 0xD00000000000002BLL, v328 | 0x8000000000000000);
    (*v341)(v198, v199);

    v35 = v345;
    v40 = v192;
    if (v345 >= v340)
    {
      goto LABEL_142;
    }

    if (v329)
    {
      if (v329 == 1)
      {
        v201 = v345 & ~(v345 >> 63);
        v202 = v201 + 63;
        v203 = 1uLL >> (1 - v201);
        v204 = 1 << v202;
        if (v345 == 65)
        {
          v204 = 0;
        }

        if (v345 >= 1)
        {
          v203 = v204;
        }

        if (v345 > 65)
        {
          v203 = 0;
        }

        v205 = v32 * v203;
        v34 = &v362;
        goto LABEL_147;
      }

LABEL_142:

      v71 = 1;
      sub_225B33C90(v347, v349, 1u);

      v34 = &v362;
    }

    else
    {
      v205 = v31;
      v34 = &v362;
      if (v31 < 0.0)
      {
        v205 = 0.0;
      }

LABEL_147:
      [objc_opt_self() sleepForTimeInterval_];

      v71 = 1;
      sub_225B33C90(v347, v349, 1u);
    }

LABEL_148:
    a1 = v340;
    isUniquelyReferenced_nonNull_native = v350;
LABEL_149:
    v127 = __OFADD__(v35++, 1);
    if (v127)
    {
      goto LABEL_246;
    }

    if (!v71)
    {
      if (!isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_215;
      }

      v35 = 0xD000000000000019;
      v40 = 0x8000000225D1DDD0;
      v262 = isUniquelyReferenced_nonNull_native;
      v52 = sub_225B2C248(MEMORY[0x277D84F90]);
      swift_getErrorValue();
      v263 = v365;
      v264 = isUniquelyReferenced_nonNull_native;
      sub_225B21FAC(v263, &v362);

      v265 = *(&v362 + 1);
      v350 = 0x8000000225D1DDD0;
      if (*(&v362 + 1))
      {
        v266 = v362;
        v267 = *(&v363 + 1);
        v268 = v363;
        v270 = *(&v364 + 1);
        v269 = v364;
LABEL_235:
        v302 = swift_isUniquelyReferenced_nonNull_native();
        *&v362 = v269;
        sub_225B2C4A0(v52, sub_225B2AC40, 0, v302, &v362);

        v303 = v362;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v265 = sub_225B29AA0(0, *(v265 + 2) + 1, 1, v265);
        }

        v305 = *(v265 + 2);
        v304 = *(v265 + 3);
        if (v305 >= v304 >> 1)
        {
          v265 = sub_225B29AA0((v304 > 1), v305 + 1, 1, v265);
        }

        *(v265 + 2) = v305 + 1;
        v306 = &v265[56 * v305];
        v307 = v350;
        *(v306 + 4) = 0xD00000000000001DLL;
        *(v306 + 5) = v307;
        v308 = v338;
        *(v306 + 6) = 0xD00000000000001ELL;
        *(v306 + 7) = v308;
        v309 = v337;
        *(v306 + 8) = 0xD000000000000019;
        *(v306 + 9) = v309;
        *(v306 + 10) = 297;
        sub_2259CB5EC();
        v287 = swift_allocError();
        *v310 = v266;
        *(v310 + 8) = v265;
        *(v310 + 16) = v268;
        *(v310 + 24) = v267;
        *(v310 + 32) = v303;
        *(v310 + 40) = v270;

        v311 = v270;
        v324(v287);

        v290 = v270;
        goto LABEL_226;
      }

LABEL_228:
      *&v362 = isUniquelyReferenced_nonNull_native;
      v291 = isUniquelyReferenced_nonNull_native;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
      sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
      if (swift_dynamicCast())
      {
        v292 = v357;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
        v293 = swift_allocObject();
        *(v293 + 16) = v339;
        *(v293 + 32) = 20;
        v294 = [v292 code];
        *(v293 + 64) = MEMORY[0x277D83B88];
        *(v293 + 72) = MEMORY[0x277D83BF8];
        *(v293 + 40) = v294;
        v269 = sub_225B2C374(v293);
        swift_setDeallocating();
        sub_2259CB640(v293 + 32, &qword_27D73B060, &unk_225CD3AE0);
        swift_deallocClassInstance();

        v295 = isUniquelyReferenced_nonNull_native;
        v266 = 0;
        v268 = 0;
        v267 = 0;
        v265 = MEMORY[0x277D84F90];
      }

      else
      {
        *&v362 = isUniquelyReferenced_nonNull_native;
        v296 = isUniquelyReferenced_nonNull_native;
        v297 = sub_225CCE954();
        v298 = v313;
        v299 = swift_dynamicCast();
        v300 = *(v297 - 8);
        (*(v300 + 56))(v298, v299 ^ 1u, 1, v297);
        LODWORD(v300) = (*(v300 + 48))(v298, 1, v297);
        sub_2259CB640(v298, &unk_27D73B050, &unk_225CD3AD0);
        if (v300)
        {
          v266 = 0;
        }

        else
        {
          v266 = 23;
        }

        v265 = MEMORY[0x277D84F90];
        v269 = sub_225B2C374(MEMORY[0x277D84F90]);
        v301 = isUniquelyReferenced_nonNull_native;
        v268 = v35 + 4;
        v267 = v40;
      }

      v270 = isUniquelyReferenced_nonNull_native;
      goto LABEL_235;
    }

LABEL_197:
    if (v35 > a1)
    {
LABEL_204:
      *&v362 = 0;
      *(&v362 + 1) = 0xE000000000000000;
      sub_225CCF204();

      *&v362 = 0x656972742078616DLL;
      *(&v362 + 1) = 0xEA00000000002073;
      *&v357 = a1;
      v252 = MEMORY[0x277D83B88];
      v253 = MEMORY[0x277D83BF8];
      v254 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v254);

      MEMORY[0x22AA6CE70](0x6564656563786520, 0xE900000000000064);
      v350 = *(&v362 + 1);
      v22 = v362;
      v255 = isUniquelyReferenced_nonNull_native;
      v256 = sub_225B2C248(MEMORY[0x277D84F90]);
      v349 = v22;
      if (isUniquelyReferenced_nonNull_native)
      {
        swift_getErrorValue();
        v257 = v351;
        v258 = isUniquelyReferenced_nonNull_native;
        sub_225B21FAC(v257, &v362);

        v35 = *(&v362 + 1);
        if (*(&v362 + 1))
        {
          LOWORD(v34) = v362;
          v40 = *(&v363 + 1);
          v22 = v363;
          a1 = *(&v364 + 1);
          v259 = v364;
          goto LABEL_222;
        }

        *&v362 = isUniquelyReferenced_nonNull_native;
        v271 = isUniquelyReferenced_nonNull_native;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
        sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
        if (swift_dynamicCast())
        {
          v272 = v357;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          v273 = swift_allocObject();
          *(v273 + 16) = xmmword_225CD30F0;
          *(v273 + 32) = 20;
          v274 = [v272 code];
          *(v273 + 64) = v252;
          *(v273 + 72) = v253;
          *(v273 + 40) = v274;
          v259 = sub_225B2C374(v273);
          swift_setDeallocating();
          sub_2259CB640(v273 + 32, &qword_27D73B060, &unk_225CD3AE0);
          swift_deallocClassInstance();

          v275 = isUniquelyReferenced_nonNull_native;
          v40 = 0;
          v22 = 0;
          v35 = MEMORY[0x277D84F90];
          LOWORD(v34) = 141;
LABEL_221:
          a1 = isUniquelyReferenced_nonNull_native;
LABEL_222:
          v280 = swift_isUniquelyReferenced_nonNull_native();
          *&v362 = v259;
          sub_225B2C4A0(v256, sub_225B2AC40, 0, v280, &v362);

          v71 = v362;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_248;
          }

          goto LABEL_223;
        }

        *&v362 = isUniquelyReferenced_nonNull_native;
        v276 = isUniquelyReferenced_nonNull_native;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
        v260 = sub_225CCE954();
        v261 = v315;
        v277 = swift_dynamicCast();
        (*(*(v260 - 8) + 56))(v261, v277 ^ 1u, 1, v260);
      }

      else
      {
        v260 = sub_225CCE954();
        v261 = v315;
        (*(*(v260 - 8) + 56))(v315, 1, 1, v260);
      }

      sub_225CCE954();
      v278 = (*(*(v260 - 8) + 48))(v261, 1, v260);
      sub_2259CB640(v261, &unk_27D73B050, &unk_225CD3AD0);
      if (v278)
      {
        LOWORD(v34) = 141;
      }

      else
      {
        LOWORD(v34) = 23;
      }

      v40 = v350;

      v35 = MEMORY[0x277D84F90];
      v259 = sub_225B2C374(MEMORY[0x277D84F90]);
      v279 = isUniquelyReferenced_nonNull_native;
      goto LABEL_221;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
  v43 = swift_allocObject();
  *(v43 + 16) = v339;
  *(v43 + 32) = 24;
  *(v43 + 64) = MEMORY[0x277D83B88];
  *(v43 + 72) = MEMORY[0x277D83BF8];
  *(v43 + 40) = v35;
  sub_225B33CA4(v40, v41, 0);
  v44 = v40;
  v350 = sub_225B2C374(v43);
  swift_setDeallocating();
  sub_2259CB640(v43 + 32, &qword_27D73B060, &unk_225CD3AE0);
  swift_deallocClassInstance();
  swift_getErrorValue();
  v45 = v352;
  v46 = v40;
  sub_225B21FAC(v45, &v362);
  sub_225B33C90(v40, v41, 0);
  if (*(&v362 + 1))
  {
    v331 = v363;
    v332 = v362;
    v334 = *(&v364 + 1);
    v47 = v364;
    v335 = *(&v363 + 1);
  }

  else
  {
    *&v362 = v40;
    v72 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v73 = v357;
      v74 = swift_allocObject();
      *(v74 + 16) = v339;
      *(v74 + 32) = 20;
      v75 = [v73 code];
      *(v74 + 64) = MEMORY[0x277D83B88];
      *(v74 + 72) = MEMORY[0x277D83BF8];
      *(v74 + 40) = v75;
      v47 = sub_225B2C374(v74);
      swift_setDeallocating();
      sub_2259CB640(v74 + 32, &qword_27D73B060, &unk_225CD3AE0);
      swift_deallocClassInstance();

      sub_225B33CA4(v40, v41, 0);
      v334 = v40;
      v335 = 0;
      v331 = 0;
      *&v332 = 0;
      *(&v332 + 1) = MEMORY[0x277D84F90];
    }

    else
    {
      *&v362 = v40;
      v102 = v40;
      v103 = sub_225CCE954();
      v104 = v41;
      v105 = v316;
      v106 = swift_dynamicCast();
      v107 = *(v103 - 8);
      (*(v107 + 56))(v105, v106 ^ 1u, 1, v103);
      LODWORD(v107) = (*(v107 + 48))(v105, 1, v103);
      sub_2259CB640(v105, &unk_27D73B050, &unk_225CD3AD0);
      if (v107)
      {
        v108 = 0;
      }

      else
      {
        v108 = 23;
      }

      *&v332 = v108;
      v109 = MEMORY[0x277D84F90];
      v47 = sub_225B2C374(MEMORY[0x277D84F90]);
      sub_225B33CA4(v40, v104, 0);
      v334 = v40;
      v335 = 0xED0000726F727245;
      v331 = 0x68746957706F7473;
      *(&v332 + 1) = v109;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v360 = v47;
  v35 = v350 + 64;
  v110 = 1 << *(v350 + 32);
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  else
  {
    v111 = -1;
  }

  v40 = v111 & *(v350 + 64);
  a1 = (v110 + 63) >> 6;

  v71 = 0;
  while (2)
  {
    if (v40)
    {
      v113 = v71;
LABEL_67:
      v116 = __clz(__rbit64(v40));
      v40 &= v40 - 1;
      v117 = v116 | (v113 << 6);
      v118 = *(*(v350 + 48) + v117);
      sub_225A32940(*(v350 + 56) + 40 * v117, &v354);
      LOBYTE(v357) = v118;
      sub_2259A9C20(&v354, &v357 + 8);
LABEL_68:
      v355 = v358;
      v356 = v359;
      v354 = v357;
      if (!v359)
      {
        v363 = 0u;
        v364 = 0u;
        v362 = 0u;
LABEL_83:

        v129 = *(&v332 + 1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v129 = sub_225B29AA0(0, *(v129 + 2) + 1, 1, v129);
        }

        v40 = 0xD000000000000019;
        v130 = v347;
        v132 = v334;
        v131 = v335;
        v133 = v332;
        v135 = *(v129 + 2);
        v134 = *(v129 + 3);
        if (v135 >= v134 >> 1)
        {
          v129 = sub_225B29AA0((v134 > 1), v135 + 1, 1, v129);
        }

        sub_225B33C90(v130, v349, 0);
        *(v129 + 2) = v135 + 1;
        v136 = &v129[56 * v135];
        *(v136 + 2) = v326;
        v137 = v337;
        v138 = v338;
        *(v136 + 6) = 0xD00000000000001ELL;
        *(v136 + 7) = v138;
        *(v136 + 8) = 0xD000000000000019;
        *(v136 + 9) = v137;
        *(v136 + 10) = 263;
        sub_2259CB5EC();
        v350 = swift_allocError();
        *v139 = v133;
        v140 = v331;
        *(v139 + 8) = v129;
        *(v139 + 16) = v140;
        *(v139 + 24) = v131;
        *(v139 + 32) = v47;
        *(v139 + 40) = v132;
        v335 = swift_allocError();
        *v141 = v133;
        *(v141 + 8) = v129;
        *(v141 + 16) = v140;
        *(v141 + 24) = v131;
        *(v141 + 32) = v47;
        *(v141 + 40) = v132;

        v142 = v132;

        v143 = v132;
        v144 = v132;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v145 = off_28105B918;
        v146 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v147 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v147));
        v148 = &v145[v146];
        v149 = v336;
        v22 = v333;
        (*v342)(v336, v148, v333);
        os_unfair_lock_unlock(&v145[v147]);
        v150 = v335;
        DIPLogError(_:message:log:)(v335, 0xD00000000000002ALL, v327 | 0x8000000000000000);

        sub_225B33C90(v347, v349, 0);
        (*v341)(v149, v22);

        v71 = 0;
        v34 = &v362;
        v35 = v345;
        goto LABEL_148;
      }

      LOBYTE(v362) = v354;
      sub_225A32940(&v354 + 8, &v362 + 8);
      sub_2259CB640(&v354, &qword_27D73D9A0, &qword_225CEF150);
      if (!v364)
      {
        goto LABEL_83;
      }

      v22 = v362;
      sub_2259A9C20((&v362 + 8), &v357);
      v34 = sub_2259F19CC(v22);
      v120 = v47[2];
      v121 = (v119 & 1) == 0;
      v122 = v120 + v121;
      if (__OFADD__(v120, v121))
      {
        goto LABEL_241;
      }

      v123 = v119;
      if (v47[3] >= v122)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v119 & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        else
        {
          sub_225A43D70();
          if ((v123 & 1) == 0)
          {
            goto LABEL_77;
          }
        }
      }

      else
      {
        sub_225A3FEA4(v122, isUniquelyReferenced_nonNull_native & 1);
        v124 = sub_2259F19CC(v22);
        if ((v123 & 1) != (v125 & 1))
        {
          goto LABEL_249;
        }

        v34 = v124;
        if ((v123 & 1) == 0)
        {
LABEL_77:
          v47 = v360;
          v360[(v34 >> 6) + 8] |= 1 << v34;
          *(v47[6] + v34) = v22;
          sub_2259A9C20(&v357, v47[7] + 40 * v34);
          v126 = v47[2];
          v127 = __OFADD__(v126, 1);
          v128 = v126 + 1;
          if (v127)
          {
            goto LABEL_243;
          }

          v47[2] = v128;
          goto LABEL_56;
        }
      }

      v47 = v360;
      sub_225A32940(v360[7] + 40 * v34, &v354);
      __swift_destroy_boxed_opaque_existential_0(&v357);
      v112 = v47[7];
      __swift_destroy_boxed_opaque_existential_0((v112 + 40 * v34));
      sub_2259A9C20(&v354, v112 + 40 * v34);
LABEL_56:
      isUniquelyReferenced_nonNull_native = 1;
      continue;
    }

    break;
  }

  if (a1 <= (v71 + 1))
  {
    v114 = v71 + 1;
  }

  else
  {
    v114 = a1;
  }

  v115 = v114 - 1;
  while (1)
  {
    v113 = v71 + 1;
    if (__OFADD__(v71, 1))
    {
      break;
    }

    if (v113 >= a1)
    {
      v40 = 0;
      v358 = 0u;
      v359 = 0u;
      v71 = v115;
      v357 = 0u;
      goto LABEL_68;
    }

    v40 = *(v35 + 8 * v113);
    ++v71;
    if (v40)
    {
      v71 = v113;
      goto LABEL_67;
    }
  }

LABEL_214:
  __break(1u);
LABEL_215:
  v324(0);
}

uint64_t sub_225B33A94(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  v8 = *(a2 + 32);
  *(a2 + 32) = v5;
  sub_225B33CA4(v3, v4, v5);
  sub_225B33C90(v6, v7, v8);
  return sub_225CCEEC4();
}

uint64_t sub_225B33B40@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + v13);
    sub_225A32940(*(v3 + 56) + 40 * v13, v18);
    LOBYTE(v21) = v14;
    result = sub_2259A9C20(v18, &v21 + 8);
    v16 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18[0] = v21;
      v18[1] = v22;
      v19 = v16;
      v20 = *(&v23 + 1);
      v17(v18);
      return sub_2259CB640(v18, &qword_27D73D9A0, &qword_225CEF150);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_225B33C90(id a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }
}

id sub_225B33CA4(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    return result;
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_225B33CE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_225B33D30()
{
  result = qword_28105BFD0;
  if (!qword_28105BFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D73B170, &qword_225CD7CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105BFD0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared14DIPRetryResultO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_225B33DB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_225B33DF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_225B33E3C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DIPBackoffStrategy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for DIPBackoffStrategy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_225B33EF0(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_225B33F08(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

void sub_225B33F40(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_225B3429C();
    if (v2 <= 0x3F)
    {
      sub_225B34300(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_225B33FCC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 17;
  if (*(v3 + 64) > 0x11uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_225B340E4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x11)
  {
    v5 = 17;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_225B3429C()
{
  result = qword_281059A30;
  if (!qword_281059A30)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281059A30);
  }

  return result;
}

void sub_225B34300(uint64_t a1)
{
  if (!qword_281059A28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AC48, &qword_225CD75F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73CEE0, &qword_225CE3630);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281059A28);
    }
  }
}

Swift::String __swiftcall Data.base16EncodedString()()
{
  sub_225B34448(v0, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v2 = sub_225CCE384();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_225B34448(unint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v46 = MEMORY[0x277D84F90];
    v32 = a2 >> 62;
    sub_2259D52A4(0, v5 & ~(v5 >> 63), 0);
    v9 = v32;
    if (v32)
    {
      if (v32 == 2)
      {
        v10 = *(a1 + 16);
      }

      else
      {
        v10 = a1;
      }
    }

    else
    {
      v10 = 0;
    }

    v33 = v10;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v11 = 0;
    v8 = v46;
    v30 = &v34 + v10;
    do
    {
      if (v11 >= v5)
      {
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
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_41;
      }

      v13 = v33 + v11;
      if (v9 == 2)
      {
        if (v13 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v13 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v18 = sub_225CCCA44();
        if (!v18)
        {
          goto LABEL_51;
        }

        v15 = v18;
        v19 = sub_225CCCA74();
        v17 = v13 - v19;
        if (__OFSUB__(v13, v19))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v9 != 1)
        {
          if (v13 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v20 = v30[v11];
          goto LABEL_36;
        }

        if (v13 < a1 || v13 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v14 = sub_225CCCA44();
        if (!v14)
        {
          goto LABEL_50;
        }

        v15 = v14;
        v16 = sub_225CCCA74();
        v17 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_46;
        }
      }

      v20 = *(v15 + v17);
      v9 = v32;
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7B0, &qword_225CEF1C0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_225CD30F0;
      *(v21 + 56) = MEMORY[0x277D84B78];
      *(v21 + 64) = MEMORY[0x277D84BC0];
      *(v21 + 32) = v20;
      v22 = sub_225CCE4A4();
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        v29 = v22;
        v27 = v23;
        sub_2259D52A4((v24 > 1), v25 + 1, 1);
        v9 = v32;
        v23 = v27;
        v22 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = v8 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      ++v11;
    }

    while (v12 != v5);
  }

  return v8;
}

uint64_t Digest.data.getter(uint64_t a1, uint64_t a2)
{
  v2 = Digest.bytes.getter(a1, a2);
  v3 = sub_2259D8490(v2);

  return v3;
}

uint64_t Data.clone()(uint64_t result, unint64_t a2)
{
  v2 = result;
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      return sub_225CCCFD4();
    }

    result = *(result + 16);
    v4 = *(v2 + 24);
  }

  else
  {
    if (!v3)
    {
      return sub_225CCCFD4();
    }

    result = result;
    v4 = v2 >> 32;
  }

  if (v4 >= result)
  {
    return sub_225CCCFD4();
  }

  __break(1u);
  return result;
}

_BYTE *Data.init(base16Encoded:)(uint64_t a1, uint64_t a2)
{
  v28[5] = *MEMORY[0x277D85DE8];
  v2 = sub_225CCE444();

  v3 = HexToBytes(v2);

  if (v3)
  {
    v4 = sub_225CCCFA4();
    v6 = v5;

    v28[3] = MEMORY[0x277CC9318];
    v28[4] = MEMORY[0x277CC9300];
    v28[0] = v4;
    v28[1] = v6;
    v7 = __swift_project_boxed_opaque_existential_1(v28, MEMORY[0x277CC9318]);
    v8 = *v7;
    v9 = v7[1];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        memset(v26, 0, 14);
        v12 = v26;
        v11 = v26;
        goto LABEL_25;
      }

      v13 = *(v8 + 16);
      v14 = *(v8 + 24);
      v15 = sub_225CCCA44();
      if (v15)
      {
        v16 = sub_225CCCA74();
        v8 = v13 - v16;
        if (__OFSUB__(v13, v16))
        {
          goto LABEL_28;
        }

        v15 += v8;
      }

      v17 = __OFSUB__(v14, v13);
      v18 = v14 - v13;
      if (!v17)
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    else if (!v10)
    {
      v26[0] = *v7;
      LOWORD(v26[1]) = v9;
      BYTE2(v26[1]) = BYTE2(v9);
      BYTE3(v26[1]) = BYTE3(v9);
      BYTE4(v26[1]) = BYTE4(v9);
      BYTE5(v26[1]) = BYTE5(v9);
      v11 = v26 + BYTE6(v9);
      v12 = v26;
LABEL_25:
      sub_225B3D3E8(v12, v11, &v27);
      v3 = v27;
      __swift_destroy_boxed_opaque_existential_0(v28);
      return v3;
    }

    v19 = v8;
    v20 = v8 >> 32;
    v18 = v20 - v19;
    if (v20 >= v19)
    {
      v15 = sub_225CCCA44();
      if (!v15)
      {
LABEL_17:
        v22 = sub_225CCCA64();
        if (v22 >= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v22;
        }

        v24 = (v23 + v15);
        if (v15)
        {
          v11 = v24;
        }

        else
        {
          v11 = 0;
        }

        v12 = v15;
        goto LABEL_25;
      }

      v21 = sub_225CCCA74();
      if (!__OFSUB__(v19, v21))
      {
        v15 += v19 - v21;
        goto LABEL_17;
      }

LABEL_29:
      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  return v3;
}

_OWORD *sub_225B34A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_225CCF0F4();
  if (result == (1 << *(a1 + 32)))
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    *a2 = sub_225B3D6D8(v5, result, *(a1 + 36), 0, a1);
    return sub_2259B9624(v5, (a2 + 8));
  }

  return result;
}

uint64_t URL.serializedOrigin.getter()
{
  v0 = sub_225CCCE74();
  if (!v1)
  {
    return 0;
  }

  v2 = v0;
  v3 = sub_225CCCE44();
  if (!v4)
  {

    return 0;
  }

  v5 = v3;
  v6 = v4;
  v19 = v2;

  MEMORY[0x22AA6CE70](3092282, 0xE300000000000000);
  MEMORY[0x22AA6CE70](v5, v6);

  v7 = v2;
  v8 = sub_225CCCE64();
  if (v9)
  {

    return v7;
  }

  v11 = v8;
  if (sub_225CCE514() == 1886680168 && v12 == 0xE400000000000000)
  {
  }

  else
  {
    v13 = sub_225CCF934();

    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (v11 != 80)
  {

LABEL_19:
    v18 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v18);

    MEMORY[0x22AA6CE70](58, 0xE100000000000000);

    return v19;
  }

LABEL_14:
  v14 = sub_225CCE514();
  v16 = v15;

  if (v14 == 0x7370747468 && v16 == 0xE500000000000000)
  {
  }

  else
  {
    v17 = sub_225CCF934();

    if ((v17 & 1) == 0)
    {
      return v7;
    }
  }

  result = v7;
  if (v11 != 443)
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t Sequence<>.uniqued.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness();
  v18 = sub_225CCE294();
  (*(v8 + 16))(v10, v4, a1);
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v17 = &v18;
  v11 = sub_225CCE744();

  return v11;
}

double KeyedDecodingContainer.decodeDouble(forKey:)(uint64_t a1, uint64_t a2)
{
  sub_225CCF6A4();
  if (v2)
  {
    v4 = sub_225CCF6C4();

    return v4;
  }

  return result;
}

double KeyedDecodingContainer.decodeDoubleIfPresent(forKey:)(uint64_t a1, uint64_t a2)
{
  sub_225CCF644();
  if (v2)
  {
    v4 = sub_225CCF6C4();

    return v4;
  }

  return result;
}

Swift::String __swiftcall Data.base64urlEncodedString()()
{
  sub_225CCCF84();
  sub_2259D8654();
  sub_225CCF064();

  sub_225CCF064();

  v0 = sub_225CCF064();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t Data.init(base64urlEncoded:)(uint64_t a1, uint64_t a2)
{
  sub_2259D8654();
  sub_225CCF064();

  sub_225CCF064();

  v2 = sub_225CCE5D4();

  v3 = v2 & 3;
  if (v2 <= 0)
  {
    v3 = -(-v2 & 3);
  }

  if (v3 >= 1)
  {
    v4 = sub_225CCE6D4();
    MEMORY[0x22AA6CE70](v4);
  }

  v5 = sub_225CCCF04();
  v7 = v6;
  sub_2259CB6FC(v5, v6);

  if (v7 >> 60 != 15)
  {
    sub_2259B97A8(v5, v7);
  }

  return v5;
}

uint64_t Date.utcDayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73BCA8, &qword_225CDC6E8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_225CCD1E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_225CCD284();
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277CC9830], v4);
  sub_225CCD1F4();
  (*(v5 + 8))(v7, v4);
  sub_225CCD294();
  v11 = sub_225CCD2D4();
  result = (*(*(v11 - 8) + 48))(v3, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_225CCD254();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AEB8, &unk_225CD4940);
    v13 = sub_225CCD264();
    v14 = *(v13 - 8);
    v15 = *(v14 + 72);
    v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_225CD73C0;
    v18 = v17 + v16;
    v19 = *(v14 + 104);
    v19(v18, *MEMORY[0x277CC99C0], v13);
    v19(v18 + v15, *MEMORY[0x277CC99C8], v13);
    v19(v18 + 2 * v15, *MEMORY[0x277CC9988], v13);
    v19(v18 + 3 * v15, *MEMORY[0x277CC9998], v13);
    v19(v18 + 4 * v15, *MEMORY[0x277CC9968], v13);
    sub_2259F4D58(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v20 = v24;
    sub_225CCD224();

    (*(v8 + 8))(v10, v23);
    v21 = sub_225CCCB74();
    return (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
  }

  return result;
}

uint64_t OS_dispatch_group.wait(interval:)(double a1)
{
  return sub_225B35704(MEMORY[0x277D85220], a1);
}

{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  return MEMORY[0x2822009F8](sub_225B3597C, 0, 0);
}

uint64_t sub_225B35704(uint64_t (*a1)(char *), double a2)
{
  v4 = sub_225CCDA94();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = sub_225CCDA14();
  v12 = *(v11 - 8);
  result = MEMORY[0x28223BE20](v11);
  v15 = (&v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a2 * 1000.0;
  if (COERCE__INT64(fabs(a2 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v16 < 9.22337204e18)
  {
    *v15 = v16;
    (*(v12 + 104))(v15, *MEMORY[0x277D85178], v11);
    sub_225CCDA84();
    MEMORY[0x22AA6C2E0](v8, v15);
    v17 = *(v5 + 8);
    v17(v8, v4);
    v18 = a1(v10);
    v17(v10, v4);
    (*(v12 + 8))(v15, v11);
    return v18 & 1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_225B3597C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  if (v2 <= 0.0)
  {
    v10 = v4;
    v11 = swift_task_alloc();
    *(v0 + 64) = v11;
    *(v11 + 16) = v10;
    v12 = swift_task_alloc();
    *(v0 + 72) = v12;
    *v12 = v0;
    v12[1] = sub_225B35C90;
    v13 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v12, 0, 0, 0x292874696177, 0xE600000000000000, sub_225B3D82C, v11, v13);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = &unk_225CEF168;
    *(v5 + 32) = v3;
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_225B35B6C;
    v7 = MEMORY[0x277D84F78] + 8;
    v8 = MEMORY[0x277D84F78] + 8;
    v9 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200740](v6, v7, v8, 0, 0, &unk_225CEF170, v5, v9);
  }
}

uint64_t sub_225B35B6C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_225B35E28;
  }

  else
  {

    v2 = sub_225B35E10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225B35C90()
{

  return MEMORY[0x2822009F8](sub_225B35DA8, 0, 0);
}

uint64_t sub_225B35DA8()
{

  return MEMORY[0x2822009F8](sub_225B35E10, 0, 0);
}

uint64_t sub_225B35E28()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_225B35EC0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_225B35FA4;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0x292874696177, 0xE600000000000000, sub_225B3DAD4, v2, v4);
}

uint64_t sub_225B35FA4()
{

  return MEMORY[0x2822009F8](sub_2259FDE14, 0, 0);
}

uint64_t sub_225B360DC()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_225B361C0;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v3, 0, 0, 0x292874696177, 0xE600000000000000, sub_225B3DAD4, v2, v4);
}

uint64_t sub_225B361C0()
{

  return MEMORY[0x2822009F8](sub_225B362D8, 0, 0);
}

uint64_t sub_225B362EC(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v21 = a1;
  v26 = sub_225CCDA64();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v23 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73DA00, &qword_225CEF238);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = sub_225CCDA44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_225CCDA34();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCDA24();
  sub_2259D8718(0, &qword_28105BFA8, 0x277D85C78);
  (*(v8 + 104))(v10, *MEMORY[0x277D851C8], v7);
  v13 = sub_225CCEDE4();
  (*(v8 + 8))(v10, v7);
  (*(v4 + 16))(v6, v21, v3);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  (*(v4 + 32))(v15 + v14, v6, v3);
  aBlock[4] = sub_225B3DA4C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225A1A000;
  aBlock[3] = &block_descriptor_5;
  v16 = _Block_copy(aBlock);
  v17 = v23;
  sub_225CCDA54();
  sub_225CCED64();
  _Block_release(v16);

  (*(v24 + 8))(v17, v26);
  (*(v20 + 8))(v12, v22);
}

uint64_t Dictionary<>.optString(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_225CCEFC4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  v20[1] = a1;
  v20[2] = a2;

  sub_225CCF194();
  sub_225CCE334();
  sub_2259F60D4(&v21);
  if ((*(v12 + 48))(v11, 1, a4) == 1)
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  else
  {
    v19 = *(v12 + 32);
    v19(v17, v11, a4);
    v19(v15, v17, a4);
    if (swift_dynamicCast())
    {
      return v21;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t Dictionary<>.optInt(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_225CCEFC4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v20 - v10;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v20 - v16;
  v20[1] = a1;
  v20[2] = a2;

  sub_225CCF194();
  sub_225CCE334();
  sub_2259F60D4(v21);
  if ((*(v12 + 48))(v11, 1, a4) == 1)
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  else
  {
    v19 = *(v12 + 32);
    v19(v17, v11, a4);
    v19(v15, v17, a4);
    if (swift_dynamicCast())
    {
      return v21[0];
    }

    else
    {
      return 0;
    }
  }
}

uint64_t Dictionary<>.optDataHex(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_225CCEFC4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v22 - v16;
  v22[1] = a1;
  v22[2] = a2;

  sub_225CCF194();
  sub_225CCE334();
  sub_2259F60D4(&v23);
  if ((*(v12 + 48))(v11, 1, a4) == 1)
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(v12 + 32))(v17, v11, a4);
    (*(v12 + 16))(v15, v17, a4);
    if (swift_dynamicCast())
    {
      v18 = v23;
      v19 = v24;
      v23 = sub_225B34448(v23, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
      sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
      v20 = sub_225CCE384();
      sub_2259BEF00(v18, v19);
      (*(v12 + 8))(v17, a4);

      return v20;
    }

    (*(v12 + 8))(v17, a4);
  }

  return 0;
}

uint64_t sub_225B36ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v23 = a5;
  v24 = a6;
  v9 = sub_225CCEFC4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v22 - v12;
  v14 = *(a4 - 8);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - v18;
  v25 = a1;
  v26 = a2;

  sub_225CCF194();
  sub_225CCE334();
  sub_2259F60D4(v27);
  if ((*(v14 + 48))(v13, 1, a4) == 1)
  {
    (*(v10 + 8))(v13, v9);
    return 0;
  }

  else
  {
    v21 = *(v14 + 32);
    v21(v19, v13, a4);
    v21(v17, v19, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    if (swift_dynamicCast())
    {
      return v27[0];
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _sSq13CoreIDVSharedE8asyncMapyqd__Sgqd__xYaqd_0_YKXEYaqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = v8;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v9[10] = *(a6 - 8);
  v9[11] = swift_task_alloc();
  v11 = *(a4 + 16);
  v9[12] = v11;
  v9[13] = *(v11 - 8);
  v9[14] = swift_task_alloc();
  v9[15] = *(a4 - 8);
  v9[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B37298, 0, 0);
}

uint64_t sub_225B37298()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  (*(v0[15] + 16))(v1, v0[8], v0[5]);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0[6] - 8) + 56))(v0[2], 1, 1);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[3];
    (*(v0[13] + 32))(v0[14], v0[16], v0[12]);
    v11 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_225B37494;
    v8 = v0[14];
    v9 = v0[11];
    v10 = v0[2];

    return v11(v10, v8, v9);
  }
}

uint64_t sub_225B37494()
{

  if (v0)
  {
    v1 = sub_225B3DAD0;
  }

  else
  {
    v1 = sub_225B375A4;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_225B375A4()
{
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(*(v0[6] - 8) + 56))(v0[2], 0, 1);

  v1 = v0[1];

  return v1();
}

uint64_t _sSq13CoreIDVSharedE12asyncFlatMapyqd__SgACxYaqd_0_YKXEYaqd_0_YKs5ErrorRd_0_r0_lF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[8] = v8;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v9[10] = *(a6 - 8);
  v9[11] = swift_task_alloc();
  v11 = *(a4 + 16);
  v9[12] = v11;
  v9[13] = *(v11 - 8);
  v9[14] = swift_task_alloc();
  v9[15] = *(a4 - 8);
  v9[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225B377E8, 0, 0);
}

uint64_t sub_225B377E8()
{
  v1 = v0[16];
  v2 = v0[12];
  v3 = v0[13];
  (*(v0[15] + 16))(v1, v0[8], v0[5]);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0[6] - 8) + 56))(v0[2], 1, 1);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[3];
    (*(v0[13] + 32))(v0[14], v0[16], v0[12]);
    v11 = (v6 + *v6);
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_225B379E0;
    v8 = v0[14];
    v9 = v0[11];
    v10 = v0[2];

    return v11(v10, v8, v9);
  }
}

uint64_t sub_225B379E0()
{

  if (v0)
  {
    v1 = sub_225B37B84;
  }

  else
  {
    v1 = sub_225B37AF0;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_225B37AF0()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_225B37B84()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  (*(v0[13] + 8))(v0[14], v0[12]);
  (*(v3 + 32))(v2, v1, v4);

  v5 = v0[1];

  return v5();
}

void NSXPCInterface.setClasses(_:for:argumentIndex:ofReply:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CBEB58]) init];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    do
    {
      v7 += 8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D9B8, &unk_225CEF1A0);
      [v5 addObject_];
      swift_unknownObjectRelease();
      --v6;
    }

    while (v6);
  }

  v8 = v5;
  sub_225CCEBF4();

  sub_225CCF524();
  __break(1u);
}

Swift::Bool __swiftcall NSXPCConnection.isEntitled(_:)(Swift::String a1)
{
  v2 = sub_225CCE444();
  v3 = [v1 valueForEntitlement_];

  if (!v3)
  {
    return 0;
  }

  sub_225CCF0A4();
  swift_unknownObjectRelease();
  sub_2259B9624(v9, v10);
  sub_2259CB810(v10, v9);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v10);
    return v7;
  }

  sub_2259CB810(v10, v9);
  if (!swift_dynamicCast())
  {
    sub_2259CB810(v10, v9);
    sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
    if (swift_dynamicCast() || (sub_2259CB810(v10, v9), sub_2259D8718(0, &unk_27D73E350, 0x277CBEAC0), swift_dynamicCast()))
    {
      v6 = [v7 count];

      __swift_destroy_boxed_opaque_existential_0(v10);
      return v6 > 0;
    }

    __swift_destroy_boxed_opaque_existential_0(v10);
    return 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v10);

  v5 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v5 = v7 & 0xFFFFFFFFFFFFLL;
  }

  return v5 != 0;
}

uint64_t static NSXPCConnection.hasArrayEntitlement(name:values:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [swift_getObjCClassFromMetadata() currentConnection];
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = sub_225CCE444();
  v7 = [v5 valueForEntitlement_];

  if (v7)
  {
    sub_225CCF0A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v16[0] = v14;
  v16[1] = v15;
  if (!*(&v15 + 1))
  {

    sub_2259CB640(v16, &qword_27D73DD90, &unk_225CD4950);
    return 0;
  }

  sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  v8 = a3 + 40;
  v9 = *(a3 + 16) + 1;
  while (--v9)
  {
    v10 = v8 + 16;

    v11 = sub_225CCE444();

    v12 = [v13 containsObject_];

    v8 = v10;
    if ((v12 & 1) == 0)
    {

      return 0;
    }
  }

  return 1;
}

Swift::Bool __swiftcall NSXPCConnection.hasArrayEntitlement(name:values:)(Swift::String name, Swift::OpaquePointer values)
{
  v4 = sub_225CCE444();
  v5 = [v2 valueForEntitlement_];

  if (v5)
  {
    sub_225CCF0A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_2259CB640(v15, &qword_27D73DD90, &unk_225CD4950);
    return 0;
  }

  sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v6 = values._rawValue + 40;
  v7 = *(values._rawValue + 2) + 1;
  while (--v7)
  {
    v8 = v6 + 16;

    v9 = sub_225CCE444();

    v10 = [v12 containsObject_];

    v6 = v8;
    if ((v10 & 1) == 0)
    {

      return 0;
    }
  }

  return 1;
}

Swift::OpaquePointer_optional __swiftcall NSXPCConnection.getArrayEntitlement(name:)(Swift::String name)
{
  v2 = sub_225CCCD54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_225CCE444();
  v7 = [v1 valueForEntitlement_];

  if (v7)
  {
    sub_225CCF0A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28 = v26;
  v29 = v27;
  if (!*(&v27 + 1))
  {
    sub_2259CB640(&v28, &qword_27D73DD90, &unk_225CD4950);
    goto LABEL_17;
  }

  sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v10 = 0;
    goto LABEL_20;
  }

  v9 = v24;
  sub_225CCEF04();
  sub_225CCCD44();
  if (*(&v29 + 1))
  {
    v10 = MEMORY[0x277D84F90];
    do
    {
      sub_2259B9624(&v28, &v26);
      if (swift_dynamicCast())
      {
        v12 = v24;
        v11 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_225B29BC8(0, *(v10 + 2) + 1, 1, v10);
        }

        v13 = *(v10 + 2);
        v14 = *(v10 + 3);
        v15 = v13 + 1;
        if (v13 >= v14 >> 1)
        {
          v23 = v11;
          v17 = v13 + 1;
          v18 = v10;
          v19 = v13;
          v20 = sub_225B29BC8((v14 > 1), v13 + 1, 1, v18);
          v13 = v19;
          v15 = v17;
          v11 = v23;
          v10 = v20;
        }

        *(v10 + 2) = v15;
        v16 = &v10[16 * v13];
        *(v16 + 4) = v12;
        *(v16 + 5) = v11;
      }

      sub_225CCCD44();
    }

    while (*(&v29 + 1));
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  (*(v3 + 8))(v5, v2);

LABEL_20:
  v21 = v10;
  result.value._rawValue = v21;
  result.is_nil = v8;
  return result;
}

Swift::OpaquePointer_optional __swiftcall NSXPCConnection.getDictionaryOfStringArraysEntitlement(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v65 = &v56 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - v11;
  v62 = sub_225CCCD54();
  v13 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v64 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = countAndFlagsBits;
  v15 = sub_225CCE444();
  v16 = [v1 valueForEntitlement_];

  if (v16)
  {
    sub_225CCF0A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
  }

  v79 = v75;
  v80 = v76;
  if (!*(&v76 + 1))
  {
    sub_2259CB640(&v79, &qword_27D73DD90, &unk_225CD4950);
    goto LABEL_39;
  }

  sub_2259D8718(0, &unk_27D73E350, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:
    v55 = 0;
    goto LABEL_41;
  }

  v18 = v73;
  v61 = sub_225B2E3C0(MEMORY[0x277D84F90]);
  v60 = v18;
  v68 = sub_225CCECC4();
  sub_225CCECD4();
  v79 = v75;
  v80 = v76;
  *(&v19 + 1) = *(&v77 + 1);
  v81 = v77;
  v82 = v78;
  if (*(&v76 + 1))
  {
    v63 = v12;
    v69 = (v5 + 16);
    v20 = (v5 + 8);
    v58 = (v13 + 8);
    *&v19 = 136315138;
    v66 = v19;
    v21 = v65;
    do
    {
      sub_2259B9624(&v79, &v75);
      sub_2259B9624(&v81, &v73);
      sub_2259D8718(0, &qword_281059AA0, 0x277CBEA60);
      if (swift_dynamicCast())
      {
        v22 = v72[0];
        sub_2259CB810(&v75, &v73);
        if (!swift_dynamicCast())
        {
          v23 = v8;
          if (qword_28105B910 != -1)
          {
            swift_once();
          }

          v24 = off_28105B918;
          v25 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
          v26 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
          os_unfair_lock_lock((off_28105B918 + v26));
          (*v69)(v21, &v24[v25], v4);
          os_unfair_lock_unlock(&v24[v26]);

          v27 = sub_225CCD934();
          v28 = v21;
          v29 = sub_225CCED14();

          if (os_log_type_enabled(v27, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            *&v73 = v31;
            *v30 = v66;
            *(v30 + 4) = sub_2259BE198(v67, object, &v73);
            _os_log_impl(&dword_2259A7000, v27, v29, "Dictionary entitlement %s has an invalid value", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v31);
            MEMORY[0x22AA6F950](v31, -1, -1);
            MEMORY[0x22AA6F950](v30, -1, -1);
          }

          (*v20)(v28, v4);
          __swift_destroy_boxed_opaque_existential_0(&v75);
          v21 = v28;
          v8 = v23;
          goto LABEL_9;
        }

        v56 = v72[0];
        v57 = v72[1];
        sub_225CCEF04();
        sub_225CCCD44();
        if (v74)
        {
          v59 = MEMORY[0x277D84F90];
          do
          {
            while (1)
            {
              sub_2259B9624(&v73, v72);
              if (swift_dynamicCast())
              {
                break;
              }

              if (qword_28105B910 != -1)
              {
                swift_once();
              }

              v39 = off_28105B918;
              v40 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
              v41 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
              os_unfair_lock_lock((off_28105B918 + v41));
              v42 = v63;
              (*v69)(v63, &v39[v40], v4);
              os_unfair_lock_unlock(&v39[v41]);

              v43 = sub_225CCD934();
              v44 = sub_225CCED14();

              if (os_log_type_enabled(v43, v44))
              {
                v45 = swift_slowAlloc();
                v46 = swift_slowAlloc();
                v72[0] = v46;
                *v45 = v66;
                *(v45 + 4) = sub_2259BE198(v67, object, v72);
                _os_log_impl(&dword_2259A7000, v43, v44, "Dictionary entitlement %s has an invalid value", v45, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v46);
                MEMORY[0x22AA6F950](v46, -1, -1);
                MEMORY[0x22AA6F950](v45, -1, -1);
              }

              (*v20)(v42, v4);
              v21 = v65;
              sub_225CCCD44();
              if (!v74)
              {
                goto LABEL_37;
              }
            }

            v47 = v70;
            v48 = v71;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v59 = sub_225B29BC8(0, *(v59 + 2) + 1, 1, v59);
            }

            v50 = *(v59 + 2);
            v49 = *(v59 + 3);
            if (v50 >= v49 >> 1)
            {
              v59 = sub_225B29BC8((v49 > 1), v50 + 1, 1, v59);
            }

            v51 = v59;
            *(v59 + 2) = v50 + 1;
            v52 = &v51[16 * v50];
            *(v52 + 4) = v47;
            *(v52 + 5) = v48;
            sub_225CCCD44();
            v21 = v65;
          }

          while (v74);
        }

        else
        {
          v59 = MEMORY[0x277D84F90];
        }

LABEL_37:
        (*v58)(v64, v62);
        v53 = v61;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v73 = v53;
        sub_225A04A70(v59, v56, v57, isUniquelyReferenced_nonNull_native);

        v61 = v73;
      }

      else
      {
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v32 = off_28105B918;
        v33 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v34 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v34));
        (*v69)(v8, &v32[v33], v4);
        os_unfair_lock_unlock(&v32[v34]);

        v35 = sub_225CCD934();
        v36 = sub_225CCED14();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          v38 = swift_slowAlloc();
          *&v73 = v38;
          *v37 = v66;
          *(v37 + 4) = sub_2259BE198(v67, object, &v73);
          _os_log_impl(&dword_2259A7000, v35, v36, "Dictionary entitlement %s has an invalid value", v37, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v38);
          MEMORY[0x22AA6F950](v38, -1, -1);
          MEMORY[0x22AA6F950](v37, -1, -1);
        }

        (*v20)(v8, v4);
      }

      __swift_destroy_boxed_opaque_existential_0(&v75);
LABEL_9:
      sub_225CCECD4();
      v79 = v75;
      v80 = v76;
      v81 = v77;
      v82 = v78;
    }

    while (*(&v76 + 1));
  }

  v55 = v61;
LABEL_41:
  result.value._rawValue = v55;
  result.is_nil = v17;
  return result;
}

uint64_t sub_225B3904C()
{
  v1 = [v0 debugDescription];
  v2 = sub_225CCE474();

  return v2;
}

id KeyedDecodingContainer.decodeBase64URLEncodedData(forKey:)(uint64_t a1, uint64_t a2)
{
  sub_225CCF684();
  if (!v3)
  {
    v4 = sub_2259D8654();
    v5 = MEMORY[0x277D837D0];
    sub_225CCF064();

    v19 = v4;
    v20 = v4;
    v17 = v5;
    v18 = v4;
    sub_225CCF064();

    v6 = sub_225CCE5D4();

    v7 = v6 & 3;
    if (v6 <= 0)
    {
      v7 = -(-v6 & 3);
    }

    if (v7 >= 1)
    {
      v8 = sub_225CCE6D4();
      MEMORY[0x22AA6CE70](v8);
    }

    v2 = sub_225CCCF04();
    v10 = v9;
    sub_2259CB6FC(v2, v9);

    if (v10 >> 60 == 15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080, &unk_225CEF1B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = sub_225CCE474();
      *(inited + 72) = v5;
      *(inited + 40) = v12;
      *(inited + 48) = 0xD000000000000029;
      *(inited + 56) = 0x8000000225D1DF50;
      sub_225B2C92C(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &unk_27D73B090, &unk_225CD7610);
      v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v14 = sub_225CCE444();
      v15 = sub_225CCE2B4();

      v2 = [v13 initWithDomain:v14 code:-1 userInfo:{v15, v17, v18, v19, v20}];

      swift_willThrow();
    }

    else
    {
      sub_2259B97A8(v2, v10);
    }
  }

  return v2;
}

id UnkeyedDecodingContainer.decodeBase64URLEncodedData()(uint64_t a1, uint64_t a2)
{
  sub_225CCF874();
  if (!v3)
  {
    v4 = sub_2259D8654();
    v5 = MEMORY[0x277D837D0];
    sub_225CCF064();

    v19 = v4;
    v20 = v4;
    v17 = v5;
    v18 = v4;
    sub_225CCF064();

    v6 = sub_225CCE5D4();

    v7 = v6 & 3;
    if (v6 <= 0)
    {
      v7 = -(-v6 & 3);
    }

    if (v7 >= 1)
    {
      v8 = sub_225CCE6D4();
      MEMORY[0x22AA6CE70](v8);
    }

    v2 = sub_225CCCF04();
    v10 = v9;
    sub_2259CB6FC(v2, v9);

    if (v10 >> 60 == 15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B080, &unk_225CEF1B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = sub_225CCE474();
      *(inited + 72) = v5;
      *(inited + 40) = v12;
      *(inited + 48) = 0xD000000000000029;
      *(inited + 56) = 0x8000000225D1DF50;
      sub_225B2C92C(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &unk_27D73B090, &unk_225CD7610);
      v13 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v14 = sub_225CCE444();
      v15 = sub_225CCE2B4();

      v2 = [v13 initWithDomain:v14 code:-1 userInfo:{v15, v17, v18, v19, v20}];

      swift_willThrow();
    }

    else
    {
      sub_2259B97A8(v2, v10);
    }
  }

  return v2;
}

void *Digest.bytes.getter(uint64_t a1, uint64_t a2)
{
  v2 = sub_225CCE154();
  v4 = sub_2259D732C(v2, v3);

  return v4;
}

uint64_t Digest.hexStr.getter(uint64_t a1, uint64_t a2)
{
  v2 = Digest.bytes.getter(a1, a2);
  v3 = v2[2];
  if (v3)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2259D52A4(0, v3, 0);
    v4 = 32;
    v5 = v19;
    v6 = MEMORY[0x277D84B78];
    v7 = MEMORY[0x277D84BC0];
    do
    {
      v8 = *(v2 + v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D7B0, &qword_225CEF1C0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_225CD30F0;
      *(v9 + 56) = v6;
      *(v9 + 64) = v7;
      *(v9 + 32) = v8;
      v10 = sub_225CCE4A4();
      v20 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        v18 = v10;
        v15 = v11;
        sub_2259D52A4((v12 > 1), v13 + 1, 1);
        v11 = v15;
        v10 = v18;
        v5 = v20;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      ++v4;
      --v3;
    }

    while (v3);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259D8B24(&qword_281059B20, &qword_27D73DCB0, &unk_225CD76A0, MEMORY[0x277D83958]);
  v16 = sub_225CCE384();

  return v16;
}

uint64_t Digest.base64Str.getter(uint64_t a1, uint64_t a2)
{
  v2 = Digest.bytes.getter(a1, a2);
  v3 = sub_2259D8490(v2);
  v5 = v4;

  v6 = sub_225CCCF84();
  sub_2259BEF00(v3, v5);
  return v6;
}

uint64_t Date.isAtLeast(days:after:)(uint64_t a1)
{
  v1 = sub_225CCD0B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD024();
  sub_225B3D8F8();
  v5 = sub_225CCE3A4();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

uint64_t Date.isAtLeast(seconds:after:)(double a1)
{
  v1 = sub_225CCD0B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225CCD024();
  sub_225B3D8F8();
  v5 = sub_225CCE3A4();
  (*(v2 + 8))(v4, v1);
  return v5 & 1;
}

uint64_t Date.isAfterAndWithin(seconds:of:)(uint64_t a1, double a2)
{
  v2 = sub_225CCD0B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225B3D8F8();
  if (sub_225CCE3A4())
  {
    sub_225CCD024();
    v6 = sub_225CCE3B4();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t Date.isBeforeAndWithin(seconds:of:)(uint64_t a1, double a2)
{
  v2 = sub_225CCD0B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_225B3D8F8();
  if (sub_225CCE3B4())
  {
    sub_225CCD024();
    v6 = sub_225CCE3A4();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

BOOL Date.isWithin(seconds:of:)(double a1)
{
  sub_225CCD004();
  v3 = v2;
  sub_225CCD004();
  return vabdd_f64(v3, v4) < a1;
}

void Date.addingRandomOffset(in:)(double a1)
{
  if (a1 < 0.0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_7:
    __break(1u);
    return;
  }

  sub_225B3D47C(0x20000000000001uLL);

  sub_225CCD024();
}

uint64_t Int.formattedByteSize.getter(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  v3 = [v2 stringFromByteCount_];

  v4 = sub_225CCE474();
  return v4;
}

char *Array<A>.intArray.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_225CCF144();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v11 = MEMORY[0x277D84F90];
  result = sub_2259D5304(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v11;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AA6DA80](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 integerValue];

      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2259D5304((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      *(v11 + 16) = v10 + 1;
      *(v11 + 8 * v10 + 32) = v8;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t Array<A>.numberArray.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v6 = MEMORY[0x277D84F90];
    sub_225CCF394();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      sub_225CCF364();
      sub_225CCF3A4();
      sub_225CCF3B4();
      sub_225CCF374();
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

unint64_t UUID.data.getter()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = sub_225CCD104();
  v2[1] = v0;
  return sub_2259D2BE8(v2, &v3);
}

Swift::String_optional __swiftcall URL.fileSize()()
{
  v0 = sub_225CCD954();
  MEMORY[0x28223BE20](v0);
  v1 = sub_225CCCBA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D9C8, &qword_225CEF1C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  v6 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v7 = v6;
  sub_2259F6C80(inited);
  swift_setDeallocating();
  sub_225B3D950(inited + 32);
  sub_225CCCDB4();

  v8 = sub_225CCCB94();
  (*(v2 + 8))(v4, v1);
  sub_225B34A98(v8, &v19);

  if (!v19)
  {
    sub_2259CB640(&v19, &qword_27D73D9D0, &qword_225CEF1D0);
    goto LABEL_4;
  }

  sub_2259B9624(&v20, &v21);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_4:
    v16 = 0;
    v15 = 0xE000000000000000;
    goto LABEL_7;
  }

  v9 = v19;
  v10 = [objc_allocWithZone(MEMORY[0x277CCA8E8]) init];
  v11 = [v10 stringFromByteCount_];
  v12 = sub_225CCE474();
  v14 = v13;

  v15 = v14;
  v16 = v12;
LABEL_7:
  result.value._object = v15;
  result.value._countAndFlagsBits = v16;
  return result;
}

id URL.count.getter()
{
  v0 = sub_225CCD954();
  MEMORY[0x28223BE20](v0);
  v1 = sub_225CCCBA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D9C8, &qword_225CEF1C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  v6 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v7 = v6;
  sub_2259F6C80(inited);
  swift_setDeallocating();
  sub_225B3D950(inited + 32);
  sub_225CCCDB4();

  v8 = sub_225CCCB94();
  (*(v2 + 8))(v4, v1);
  sub_225B34A98(v8, &v11);

  if (v11)
  {

    sub_2259B9624(&v12, &v13);
    if (swift_dynamicCast())
    {
      return v11;
    }
  }

  else
  {
    sub_2259CB640(&v11, &qword_27D73D9D0, &qword_225CEF1D0);
  }

  return 0;
}