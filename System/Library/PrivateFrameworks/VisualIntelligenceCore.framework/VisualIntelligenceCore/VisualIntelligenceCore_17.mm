uint64_t sub_1D890C0A8(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1D8B16D20();
  if (!v4)
  {
    v5 = 5;
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    v5 = 6;
LABEL_5:
    MEMORY[0x1DA720210](v5);
    sub_1D8B15A60();
    return sub_1D8B16D80();
  }

  if (v3 <= 1)
  {
    v6 = (v3 | v2) != 0;
  }

  else if (v3 ^ 2 | v2)
  {
    if (v3 ^ 3 | v2)
    {
      v6 = 4;
    }

    else
    {
      v6 = 3;
    }
  }

  else
  {
    v6 = 2;
  }

  MEMORY[0x1DA720210](v6);
  return sub_1D8B16D80();
}

uint64_t sub_1D890C18C(uint64_t a1)
{
  v2 = sub_1D8912FFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890C1C8(uint64_t a1)
{
  v2 = sub_1D8912FFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890C204()
{
  v1 = 0x4264656B636F6C62;
  v2 = 0x69737365636F7270;
  if (*v0 != 2)
  {
    v2 = 0x69724374656D6E75;
  }

  if (*v0)
  {
    v1 = 0x64657269707865;
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

uint64_t sub_1D890C29C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8915F1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D890C2C4(uint64_t a1)
{
  v2 = sub_1D8912EAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890C300(uint64_t a1)
{
  v2 = sub_1D8912EAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890C33C(uint64_t a1)
{
  v2 = sub_1D8912FA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890C378(uint64_t a1)
{
  v2 = sub_1D8912FA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890C3B4(uint64_t a1)
{
  v2 = sub_1D8912F54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890C3F0(uint64_t a1)
{
  v2 = sub_1D8912F54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D890C42C(uint64_t a1)
{
  v2 = sub_1D8912F00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890C468(uint64_t a1)
{
  v2 = sub_1D8912F00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleClassificationRuntimeError.ErrorType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA653B0, &qword_1D8B287F8);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA653B8, &qword_1D8B28800);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA653C0, &qword_1D8B28808);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA653C8, &qword_1D8B28810);
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA653D0, &qword_1D8B28818);
  v34 = *(v13 - 8);
  v35 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  v16 = v1[1];
  v32 = *v1;
  v33 = v16;
  v17 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8912EAC();
  sub_1D8B16DD0();
  v18 = v17 >> 6;
  if (v17 >> 6 <= 1)
  {
    if (v18)
    {
      LOBYTE(v36) = 2;
      sub_1D8912F54();
      v12 = v26;
      v19 = v35;
      sub_1D8B16A40();
      v10 = v28;
      sub_1D8B16A90();
      v20 = v27;
    }

    else
    {
      LOBYTE(v36) = 0;
      sub_1D8912FFC();
      v19 = v35;
      sub_1D8B16A40();
      v36 = v32;
      v37 = v33;
      v38 = v17;
      sub_1D8913050();
      sub_1D8B16AE0();
      v20 = v23;
    }

    goto LABEL_7;
  }

  if (v18 == 2)
  {
    LOBYTE(v36) = 3;
    sub_1D8912F00();
    v12 = v29;
    v19 = v35;
    sub_1D8B16A40();
    v10 = v31;
    sub_1D8B16A90();
    v20 = v30;
LABEL_7:
    (*(v20 + 8))(v12, v10);
    return (*(v34 + 8))(v15, v19);
  }

  LOBYTE(v36) = 1;
  sub_1D8912FA8();
  v22 = v35;
  sub_1D8B16A40();
  (*(v24 + 8))(v9, v25);
  return (*(v34 + 8))(v15, v22);
}

uint64_t BundleClassificationRuntimeError.ErrorType.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v5 == 2)
    {
      v6 = 3;
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  if (v5)
  {
    v6 = 2;
    goto LABEL_10;
  }

  MEMORY[0x1DA720210](0);
  if (!v4)
  {
    v6 = 5;
    goto LABEL_10;
  }

  if (v4 != 1)
  {
    if (v3 > 1)
    {
      if (v3 ^ 2 | v2)
      {
        if (v3 ^ 3 | v2)
        {
          v8 = 4;
        }

        else
        {
          v8 = 3;
        }
      }

      else
      {
        v8 = 2;
      }

      return MEMORY[0x1DA720210](v8);
    }

    if (!(v3 | v2))
    {
      v8 = 0;
      return MEMORY[0x1DA720210](v8);
    }

LABEL_19:
    v8 = 1;
    return MEMORY[0x1DA720210](v8);
  }

  v6 = 6;
LABEL_10:
  MEMORY[0x1DA720210](v6);

  return sub_1D8B15A60();
}

uint64_t BundleClassificationRuntimeError.ErrorType.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D8B16D20();
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v4 == 2)
    {
      v5 = 3;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (v4)
  {
    v5 = 2;
    goto LABEL_10;
  }

  MEMORY[0x1DA720210](0);
  if (!v3)
  {
    v5 = 5;
    goto LABEL_10;
  }

  if (v3 != 1)
  {
    if (v2 > 1)
    {
      if (v2 ^ 2 | v1)
      {
        if (v2 ^ 3 | v1)
        {
          v6 = 4;
        }

        else
        {
          v6 = 3;
        }
      }

      else
      {
        v6 = 2;
      }

      goto LABEL_18;
    }

    if (!(v2 | v1))
    {
      v6 = 0;
LABEL_18:
      MEMORY[0x1DA720210](v6);
      return sub_1D8B16D80();
    }

LABEL_17:
    v6 = 1;
    goto LABEL_18;
  }

  v5 = 6;
LABEL_10:
  MEMORY[0x1DA720210](v5);
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

uint64_t BundleClassificationRuntimeError.ErrorType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65408, &qword_1D8B28820);
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v42 - v3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65410, &qword_1D8B28828);
  v49 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v51 = &v42 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65418, &qword_1D8B28830);
  v45 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v6 = &v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65420, &qword_1D8B28838);
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65428, &qword_1D8B28840);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v42 - v12;
  v14 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8912EAC();
  v15 = v55;
  sub_1D8B16DB0();
  if (!v15)
  {
    v16 = v9;
    v43 = v7;
    v44 = 0;
    v17 = v51;
    v18 = v52;
    v55 = v11;
    v20 = v53;
    v19 = v54;
    v21 = sub_1D8B16A20();
    v22 = (2 * *(v21 + 16)) | 1;
    v59 = v21;
    v60 = v21 + 32;
    v61 = 0;
    v62 = v22;
    v23 = sub_1D881F7BC();
    if (v23 == 4 || v61 != v62 >> 1)
    {
      v30 = sub_1D8B16770();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
      *v32 = &type metadata for BundleClassificationRuntimeError.ErrorType;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
    }

    else
    {
      if (v23 > 1u)
      {
        v29 = v19;
        v34 = v55;
        if (v23 == 2)
        {
          LOBYTE(v56) = 2;
          sub_1D8912F54();
          v35 = v17;
          v36 = v44;
          sub_1D8B16950();
          if (v36)
          {
            (*(v34 + 8))(v13, v10);
            goto LABEL_11;
          }

          v37 = v46;
          v27 = sub_1D8B169C0();
          v26 = v40;
          (*(v49 + 8))(v35, v37);
          v29 = v54;
          (*(v34 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v28 = 64;
        }

        else
        {
          LOBYTE(v56) = 3;
          sub_1D8912F00();
          v39 = v44;
          sub_1D8B16950();
          if (v39)
          {
            (*(v34 + 8))(v13, v10);
            swift_unknownObjectRelease();
            return __swift_destroy_boxed_opaque_existential_1(v63);
          }

          v27 = sub_1D8B169C0();
          v26 = v41;
          (*(v50 + 8))(v18, v20);
          (*(v34 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v28 = 0x80;
        }

LABEL_22:
        *v29 = v27;
        *(v29 + 8) = v26;
        *(v29 + 16) = v28;
        return __swift_destroy_boxed_opaque_existential_1(v63);
      }

      if (!v23)
      {
        LOBYTE(v56) = 0;
        sub_1D8912FFC();
        v24 = v44;
        sub_1D8B16950();
        if (!v24)
        {
          sub_1D89130A4();
          v25 = v43;
          sub_1D8B16A10();
          (*(v47 + 8))(v16, v25);
          (*(v55 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v27 = v56;
          v26 = v57;
          v28 = v58;
          v29 = v19;
          goto LABEL_22;
        }

        goto LABEL_10;
      }

      LOBYTE(v56) = 1;
      sub_1D8912FA8();
      v38 = v44;
      sub_1D8B16950();
      if (!v38)
      {
        (*(v45 + 8))(v6, v48);
        (*(v55 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v27 = 0;
        v26 = 0;
        v28 = -64;
        v29 = v19;
        goto LABEL_22;
      }
    }

LABEL_10:
    (*(v55 + 8))(v13, v10);
LABEL_11:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1D890D3AC(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v5 == 2)
    {
      v6 = 3;
      goto LABEL_10;
    }

    goto LABEL_19;
  }

  if (v5)
  {
    v6 = 2;
    goto LABEL_10;
  }

  MEMORY[0x1DA720210](0);
  if (!v4)
  {
    v6 = 5;
    goto LABEL_10;
  }

  if (v4 != 1)
  {
    if (v3 > 1)
    {
      if (v3 ^ 2 | v2)
      {
        if (v3 ^ 3 | v2)
        {
          v8 = 4;
        }

        else
        {
          v8 = 3;
        }
      }

      else
      {
        v8 = 2;
      }

      return MEMORY[0x1DA720210](v8);
    }

    if (!(v3 | v2))
    {
      v8 = 0;
      return MEMORY[0x1DA720210](v8);
    }

LABEL_19:
    v8 = 1;
    return MEMORY[0x1DA720210](v8);
  }

  v6 = 6;
LABEL_10:
  MEMORY[0x1DA720210](v6);

  return sub_1D8B15A60();
}

uint64_t sub_1D890D4C4(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1D8B16D20();
  v5 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v5 == 2)
    {
      v6 = 3;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (v5)
  {
    v6 = 2;
    goto LABEL_10;
  }

  MEMORY[0x1DA720210](0);
  if (!v4)
  {
    v6 = 5;
    goto LABEL_10;
  }

  if (v4 != 1)
  {
    if (v3 > 1)
    {
      if (v3 ^ 2 | v2)
      {
        if (v3 ^ 3 | v2)
        {
          v7 = 4;
        }

        else
        {
          v7 = 3;
        }
      }

      else
      {
        v7 = 2;
      }

      goto LABEL_18;
    }

    if (!(v3 | v2))
    {
      v7 = 0;
LABEL_18:
      MEMORY[0x1DA720210](v7);
      return sub_1D8B16D80();
    }

LABEL_17:
    v7 = 1;
    goto LABEL_18;
  }

  v6 = 6;
LABEL_10:
  MEMORY[0x1DA720210](v6);
  sub_1D8B15A60();
  return sub_1D8B16D80();
}

double BundleClassificationRuntimeError.type.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 24);
  *(a1 + 16) = v4;
  return sub_1D8912A68(v2, v3, v4);
}

uint64_t sub_1D890D608()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1D890D664@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8916098(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D890D68C(uint64_t a1)
{
  v2 = sub_1D89130F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890D6C8(uint64_t a1)
{
  v2 = sub_1D89130F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleClassificationRuntimeError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65438, &qword_1D8B28848);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = *(v1 + 8);
  v12 = *(v1 + 16);
  v13 = v7;
  v8 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89130F8();
  sub_1D8B16DD0();
  LOBYTE(v16) = 0;
  v9 = v14;
  sub_1D8B16AA0();
  if (!v9)
  {
    v16 = v13;
    v17 = v12;
    v18 = v8;
    v15 = 1;
    sub_1D8912A68(v13, v12, v8);
    sub_1D891314C();
    sub_1D8B16AE0();
    sub_1D88E1004(v16, v17, v18);
    LOBYTE(v16) = 2;
    sub_1D8B16AB0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t BundleClassificationRuntimeError.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  sub_1D8B16D40();
  v6 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v6 == 2)
    {
      v7 = 3;
      goto LABEL_10;
    }

LABEL_17:
    v8 = 1;
    goto LABEL_18;
  }

  if (v6)
  {
    v7 = 2;
    goto LABEL_10;
  }

  MEMORY[0x1DA720210](0);
  if (!v4)
  {
    v7 = 5;
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    v7 = 6;
LABEL_10:
    MEMORY[0x1DA720210](v7);
    sub_1D8B15A60();
    goto LABEL_19;
  }

  if (v3 > 1)
  {
    if (v3 ^ 2 | v2)
    {
      if (v3 ^ 3 | v2)
      {
        v8 = 4;
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 2;
    }

    goto LABEL_18;
  }

  if (v3 | v2)
  {
    goto LABEL_17;
  }

  v8 = 0;
LABEL_18:
  MEMORY[0x1DA720210](v8);
LABEL_19:
  v9 = 0.0;
  if (v5 != 0.0)
  {
    v9 = v5;
  }

  return MEMORY[0x1DA720250](*&v9);
}

uint64_t BundleClassificationRuntimeError.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4[72] = *v0;
  v5 = *(v0 + 8);
  v6 = v1;
  v7 = v2;
  sub_1D8B16D20();
  BundleClassificationRuntimeError.hash(into:)(v4);
  return sub_1D8B16D80();
}

void BundleClassificationRuntimeError.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65450, &qword_1D8B28850);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89130F8();
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v19) = 0;
    v9 = sub_1D8B169D0();
    v18 = 1;
    sub_1D89131A0();
    sub_1D8B16A10();
    v10 = v19;
    v16 = v20;
    v17 = v21;
    LOBYTE(v19) = 2;
    sub_1D8B169E0();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    v13 = v16;
    *(a2 + 8) = v10;
    *(a2 + 16) = v13;
    v14 = v17;
    *(a2 + 24) = v17;
    *(a2 + 32) = v12;
    sub_1D8912A68(v10, v13, v14);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D88E1004(v10, v13, v14);
  }
}

uint64_t sub_1D890DCDC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4[72] = *v0;
  v5 = *(v0 + 8);
  v6 = v1;
  v7 = v2;
  sub_1D8B16D20();
  BundleClassificationRuntimeError.hash(into:)(v4);
  return sub_1D8B16D80();
}

uint64_t sub_1D890DD44(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v5[72] = *v1;
  v6 = *(v1 + 8);
  v7 = v2;
  v8 = v3;
  sub_1D8B16D20();
  BundleClassificationRuntimeError.hash(into:)(v5);
  return sub_1D8B16D80();
}

uint64_t BundleClassificationRuntimeError.ErrorType.errorDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = v1 >> 6;
  if (v1 >> 6 <= 1)
  {
    if (!v2)
    {
      sub_1D8912A90(*v0, *(v0 + 8), v1);
      return sub_1D8B159E0();
    }

    goto LABEL_5;
  }

  if (v2 == 2)
  {
LABEL_5:
    v4 = *v0;

    return v4;
  }

  return 0x64657269707845;
}

uint64_t sub_1D890DE44(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 400) = a5;
  *(v6 + 408) = v5;
  *(v6 + 384) = a3;
  *(v6 + 392) = a4;
  *(v6 + 368) = a1;
  *(v6 + 376) = a2;
  v8 = sub_1D8B15170();
  *(v6 + 416) = v8;
  *(v6 + 424) = *(v8 - 8);
  *(v6 + 432) = swift_task_alloc();
  v9 = sub_1D8B15130();
  *(v6 + 440) = v9;
  *(v6 + 448) = *(v9 - 8);
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = type metadata accessor for BundleClassification(0);
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  type metadata accessor for BundleClassification.ClassificationType(0);
  *(v6 + 512) = swift_task_alloc();
  v10 = a3[3];
  *(v6 + 48) = a3[2];
  *(v6 + 64) = v10;
  v11 = a3[5];
  *(v6 + 80) = a3[4];
  *(v6 + 96) = v11;
  v12 = a3[1];
  *(v6 + 16) = *a3;
  *(v6 + 32) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1D890E010, 0, 0);
}

uint64_t sub_1D890E010()
{
  v51 = v0;
  v1 = *(v0 + 512);
  v2 = *(v0 + 400);
  v3 = *(v0 + 384);
  v4 = *(v0 + 376);
  BundleClassification.ClassificationType.asEmpty.getter(v1);
  sub_1D891B79C(v1, v2, v0 + 208);
  sub_1D89128B8(v1, type metadata accessor for BundleClassification.ClassificationType);
  v5 = v3[3];
  v50[2] = v3[2];
  v50[3] = v5;
  v6 = v3[5];
  v50[4] = v3[4];
  v50[5] = v6;
  v7 = v3[1];
  v50[0] = *v3;
  v50[1] = v7;
  sub_1D890F44C(v4, v50, (v0 + 208), &v46);
  v8 = v46;
  v9 = v49 >> 62;
  if ((v49 >> 62) > 1)
  {
    if (v9 == 2 && *&v46 <= 0.0)
    {
      v12 = 3;
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v47;
    if (!v9)
    {
      v11 = v48;
      if (v48 == 2 && v46 == 1 && !v47)
      {
        v12 = 4;
LABEL_10:
        sub_1D89163AC(v12, 0, 0, 0);
        v11 = 0;
        v10 = 0;
        v8 = 0;
        v13 = 2;
LABEL_24:
        v42 = *(v0 + 408);
        v43 = *(v0 + 368);
        sub_1D89163AC(v13, v8, v10, v11);
        sub_1D89163AC(v12, 0, 0, 0);
        sub_1D8912BA4(v42, v43, type metadata accessor for BundleClassification);
        __swift_destroy_boxed_opaque_existential_1((v0 + 208));

        v44 = *(v0 + 8);

        return v44();
      }

LABEL_23:
      v13 = 0;
      v12 = 2;
      goto LABEL_24;
    }

    if ((v46 & 1) == 0)
    {
      v11 = v49;
      v8 = v47;
      v10 = v48;
      goto LABEL_23;
    }

    sub_1D8916384(v46, v47, v48, v49);
  }

  if (qword_1EE0E6340 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 504);
  v15 = *(v0 + 408);
  v16 = type metadata accessor for LoggingSignposter(0);
  *(v0 + 520) = __swift_project_value_buffer(v16, qword_1EE0E6348);
  *(v0 + 616) = *(v16 + 20);
  sub_1D8912BA4(v15, v14, type metadata accessor for BundleClassification);
  sub_1D8B15120();
  v17 = sub_1D8B15150();
  v18 = sub_1D8B16370();
  v19 = sub_1D8B16460();
  v20 = *(v0 + 504);
  if (v19)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v50[0] = v22;
    *v21 = 136446210;
    v23 = BundleClassification.ClassificationType.caseDescription.getter();
    v25 = v24;
    sub_1D89128B8(v20, type metadata accessor for BundleClassification);
    v26 = sub_1D89AC714(v23, v25, v50);

    *(v21 + 4) = v26;
    v27 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v17, v18, v27, "BundleClassification.update", "type: %{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1DA721330](v22, -1, -1);
    MEMORY[0x1DA721330](v21, -1, -1);
  }

  else
  {

    sub_1D89128B8(v20, type metadata accessor for BundleClassification);
  }

  v28 = *(v0 + 472);
  v29 = *(v0 + 440);
  v30 = *(v0 + 448);
  (*(v30 + 16))(*(v0 + 464), v28, v29);
  sub_1D8B151A0();
  swift_allocObject();
  *(v0 + 528) = sub_1D8B15190();
  v31 = *(v30 + 8);
  *(v0 + 536) = v31;
  *(v0 + 544) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v31(v28, v29);
  v32 = *(v0 + 232);
  v33 = *(v0 + 240);
  __swift_project_boxed_opaque_existential_1((v0 + 208), v32);
  v34 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v34;
  v35 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v35;
  v36 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v36;
  v45 = (*(v33 + 16) + **(v33 + 16));
  v37 = swift_task_alloc();
  *(v0 + 552) = v37;
  *v37 = v0;
  v37[1] = sub_1D890E5CC;
  v38 = *(v0 + 488);
  v39 = *(v0 + 408);
  v40 = *(v0 + 376);

  return v45(v38, v40, v39, v0 + 112, v0 + 248, v32, v33);
}

uint64_t sub_1D890E5CC()
{

  if (v0)
  {
    v1 = sub_1D890EC78;
  }

  else
  {
    v1 = sub_1D890E6DC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D890E6DC()
{
  sub_1D8912918(v0[61], v0[62], type metadata accessor for BundleClassification);
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v1 = qword_1ECA675B0;
    v0[70] = qword_1ECA675B0;

    return MEMORY[0x1EEE6DFA0](sub_1D890E9E0, v1, 0);
  }

  else
  {
    v2 = sub_1D8B15150();
    sub_1D8B15180();
    v3 = sub_1D8B16360();
    if (sub_1D8B16460())
    {
      v5 = v0[53];
      v4 = v0[54];
      v6 = v0[52];

      sub_1D8B151B0();

      if ((*(v5 + 88))(v4, v6) == *MEMORY[0x1E69E93E8])
      {
        v7 = "[Error] Interval already ended";
      }

      else
      {
        (*(v0[53] + 8))(v0[54], v0[52]);
        v7 = "";
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = sub_1D8B15110();
      _os_signpost_emit_with_name_impl(&dword_1D8783000, v2, v3, v9, "BundleClassification.update", v7, v8, 2u);
      MEMORY[0x1DA721330](v8, -1, -1);
    }

    v10 = v0[67];
    v11 = v0[62];
    v12 = v0[57];
    v13 = v0[55];
    v14 = v0[46];

    v10(v12, v13);
    sub_1D8912918(v11, v14, type metadata accessor for BundleClassification);
    __swift_destroy_boxed_opaque_existential_1(v0 + 26);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1D890E9E0()
{
  sub_1D8A3B924();

  return MEMORY[0x1EEE6DFA0](sub_1D890EA4C, 0, 0);
}

uint64_t sub_1D890EA4C(uint64_t a1)
{
  v2 = sub_1D8B15150();
  sub_1D8B15180();
  v3 = sub_1D8B16360();
  if (sub_1D8B16460())
  {
    v5 = v1[53];
    v4 = v1[54];
    v6 = v1[52];

    sub_1D8B151B0();

    if ((*(v5 + 88))(v4, v6) == *MEMORY[0x1E69E93E8])
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[53] + 8))(v1[54], v1[52]);
      v7 = "";
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v2, v3, v9, "BundleClassification.update", v7, v8, 2u);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  v10 = v1[67];
  v11 = v1[62];
  v12 = v1[57];
  v13 = v1[55];
  v14 = v1[46];

  v10(v12, v13);
  sub_1D8912918(v11, v14, type metadata accessor for BundleClassification);
  __swift_destroy_boxed_opaque_existential_1(v1 + 26);

  v15 = v1[1];

  return v15();
}

uint64_t sub_1D890EC78(uint64_t a1)
{
  v36 = v1;
  v2 = *(v1 + 248);
  *(v1 + 620) = v2;
  v3 = *(v1 + 256);
  v4 = *(v1 + 264);
  *(v1 + 568) = v3;
  *(v1 + 576) = v4;
  v5 = *(v1 + 272);
  *(v1 + 621) = v5;
  v6 = *(v1 + 280);
  *(v1 + 584) = v6;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v7 = qword_1ECA675B0;
    *(v1 + 592) = qword_1ECA675B0;
    *(v1 + 328) = v2;
    *(v1 + 336) = v3;
    *(v1 + 344) = v4;
    *(v1 + 352) = v5;
    *(v1 + 360) = v6;
    sub_1D88E0E0C();
    *(v1 + 600) = sub_1D8B16C90();
    *(v1 + 608) = v8;

    return MEMORY[0x1EEE6DFA0](sub_1D890F0B0, v7, 0);
  }

  else
  {
    v9 = *(v1 + 584);
    v34 = *(v1 + 621);
    v10 = *(v1 + 576);
    v11 = *(v1 + 568);
    v12 = *(v1 + 620);
    v13 = *(v1 + 496);
    v14 = *(v1 + 480);
    BundleClassification.ClassificationType.asEmpty.getter(v13);
    CVBundle.latestEstimate.getter(v35);
    v35[1] = v35[0];
    CVDetection.detection.getter((v1 + 288));
    v15 = *(v1 + 312);
    v16 = *(v1 + 320);
    __swift_project_boxed_opaque_existential_1((v1 + 288), v15);
    v17 = (*(v16 + 88))(v15, v16);

    __swift_destroy_boxed_opaque_existential_1((v1 + 288));
    v18 = v13 + *(v14 + 20);
    *v18 = 2;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    sub_1D88E0FE4(2, 0, 0, 0);
    *v18 = v12;
    *(v18 + 1) = v11;
    *(v18 + 2) = v10;
    *(v18 + 3) = v34;
    *(v18 + 4) = v9;
    *(v13 + *(v14 + 24)) = v17;
    v19 = sub_1D8B15150();
    sub_1D8B15180();
    v20 = sub_1D8B16360();
    if (sub_1D8B16460())
    {
      v22 = *(v1 + 424);
      v21 = *(v1 + 432);
      v23 = *(v1 + 416);

      sub_1D8B151B0();

      if ((*(v22 + 88))(v21, v23) == *MEMORY[0x1E69E93E8])
      {
        v24 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v1 + 424) + 8))(*(v1 + 432), *(v1 + 416));
        v24 = "";
      }

      v25 = swift_slowAlloc();
      *v25 = 0;
      v26 = sub_1D8B15110();
      _os_signpost_emit_with_name_impl(&dword_1D8783000, v19, v20, v26, "BundleClassification.update", v24, v25, 2u);
      MEMORY[0x1DA721330](v25, -1, -1);
    }

    v27 = *(v1 + 536);
    v28 = *(v1 + 496);
    v29 = *(v1 + 456);
    v30 = *(v1 + 440);
    v31 = *(v1 + 368);

    v27(v29, v30);
    sub_1D8912918(v28, v31, type metadata accessor for BundleClassification);
    __swift_destroy_boxed_opaque_existential_1((v1 + 208));

    v32 = *(v1 + 8);

    return v32();
  }
}

uint64_t sub_1D890F0B0()
{
  sub_1D8A3BB18(v0[51], v0[75], v0[76]);

  return MEMORY[0x1EEE6DFA0](sub_1D890F130, 0, 0);
}

uint64_t sub_1D890F130()
{
  v28 = v0;
  v1 = *(v0 + 584);
  v26 = *(v0 + 621);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 620);
  v5 = *(v0 + 496);
  v6 = *(v0 + 480);
  BundleClassification.ClassificationType.asEmpty.getter(v5);
  CVBundle.latestEstimate.getter(v27);
  v27[1] = v27[0];
  CVDetection.detection.getter((v0 + 288));
  v7 = *(v0 + 312);
  v8 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1((v0 + 288), v7);
  v9 = (*(v8 + 88))(v7, v8);

  __swift_destroy_boxed_opaque_existential_1((v0 + 288));
  v10 = v5 + *(v6 + 20);
  *v10 = 2;
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  sub_1D88E0FE4(2, 0, 0, 0);
  *v10 = v4;
  *(v10 + 1) = v3;
  *(v10 + 2) = v2;
  *(v10 + 3) = v26;
  *(v10 + 4) = v1;
  *(v5 + *(v6 + 24)) = v9;
  v11 = sub_1D8B15150();
  sub_1D8B15180();
  v12 = sub_1D8B16360();
  if (sub_1D8B16460())
  {
    v14 = *(v0 + 424);
    v13 = *(v0 + 432);
    v15 = *(v0 + 416);

    sub_1D8B151B0();

    if ((*(v14 + 88))(v13, v15) == *MEMORY[0x1E69E93E8])
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(*(v0 + 424) + 8))(*(v0 + 432), *(v0 + 416));
      v16 = "";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v11, v12, v18, "BundleClassification.update", v16, v17, 2u);
    MEMORY[0x1DA721330](v17, -1, -1);
  }

  v19 = *(v0 + 536);
  v20 = *(v0 + 496);
  v21 = *(v0 + 456);
  v22 = *(v0 + 440);
  v23 = *(v0 + 368);

  v19(v21, v22);
  sub_1D8912918(v20, v23, type metadata accessor for BundleClassification);
  __swift_destroy_boxed_opaque_existential_1((v0 + 208));

  v24 = *(v0 + 8);

  return v24();
}

void sub_1D890F44C(uint64_t a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  CVBundle.latestEstimate.getter(&v41);
  v43 = v41;
  CVDetection.detection.getter(&v35);
  v11 = *(&v36 + 1);
  v12 = v37;
  __swift_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
  v13 = (*(v12 + 88))(v11, v12);

  __swift_destroy_boxed_opaque_existential_1(&v35);
  CVBundle.workState.getter(&v35);
  if (v35 != 2)
  {
    *a4 = xmmword_1D8B190D0;
    *(a4 + 16) = xmmword_1D8B28660;
    *(a4 + 32) = v13;
    return;
  }

  v14 = a3[3];
  v15 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v14);
  v16 = a2[3];
  v37 = a2[2];
  v38 = v16;
  v17 = a2[5];
  v39 = a2[4];
  v40 = v17;
  v18 = a2[1];
  v35 = *a2;
  v36 = v18;
  (*(v15 + 8))(&v41, a1, &v35, v14, v15);
  v19 = v42;
  if (v42 != 255)
  {
    *a4 = v41;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 16) = v19;
    return;
  }

  v20 = type metadata accessor for BundleClassification(0);
  v21 = v34;
  v22 = *(v34 + *(v20 + 24));
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v23 = qword_1EE0E54C8;
  v24 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_classificationsNeverExpire;
  swift_beginAccess();
  if (*(v23 + v24))
  {
    v25 = INFINITY;
  }

  else
  {
    sub_1D8912BA4(v21, v10, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1D89128B8(v10, type metadata accessor for BundleClassification.ClassificationType);
    if (EnumCaseMultiPayload == 1)
    {
      v25 = 3.0;
    }

    else
    {
      v25 = 2.0;
    }
  }

  if (v13 >= v22 + v25)
  {
    goto LABEL_16;
  }

  v27 = (v21 + *(v20 + 20));
  v28 = *v27;
  if (v28 == 2)
  {
    *a4 = v13 - v22;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = xmmword_1D8B28680;
    return;
  }

  if (v28)
  {
LABEL_16:
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = xmmword_1D8B28670;
  }

  else
  {
    v29 = *(v27 + 1);
    v30 = *(v27 + 2);
    v31 = *(v27 + 4);
    v32 = v27[24];
    *a4 = 0;
    *(a4 + 8) = v29;
    *(a4 + 16) = v30;
    *(a4 + 24) = v32 | 0x4000000000000000;
    *(a4 + 32) = v31;
    sub_1D8912A68(v29, v30, v32);
  }
}

uint64_t sub_1D890F760(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a2[3];
  v18[2] = a2[2];
  v18[3] = v9;
  v10 = a2[5];
  v18[4] = a2[4];
  v18[5] = v10;
  v11 = a2[1];
  v18[0] = *a2;
  v18[1] = v11;
  result = BundleClassification.ClassificationType.asEmpty.getter(v8);
  if (!*(a3 + 16))
  {
    __break(1u);
    goto LABEL_12;
  }

  result = sub_1D87EF6AC(v8);
  if ((v13 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  sub_1D87C1470(*(a3 + 56) + 40 * result, v17);
  sub_1D89128B8(v8, type metadata accessor for BundleClassification.ClassificationType);
  sub_1D890F44C(a1, v18, v17, &v19);
  __swift_destroy_boxed_opaque_existential_1(v17);
  v14 = v19;
  v15 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    v14 = v15 != 2 || *&v19 >= 0.2;
  }

  else if (v15)
  {
    sub_1D8916384(v19, v20, v21, v22);
  }

  else
  {
    sub_1D8916384(v19, v20, v21, v22);
    v14 = 0;
  }

  return v14 & 1;
}

unint64_t sub_1D890F8E8()
{
  v1 = *v0;
  v2 = 0x73736563637573;
  v3 = 0x526572756C696166;
  if (v1 == 3)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0xD000000000000017;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_1D890F998@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D89161C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D890F9C0(uint64_t a1)
{
  v2 = sub_1D89131F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D890F9FC(uint64_t a1)
{
  v2 = sub_1D89131F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleClassificationResultSummary.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65460, &unk_1D8B28858);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v16 = *(v1 + 8);
  v15 = *(v1 + 16);
  v7 = *(v1 + 24);
  v13 = *(v1 + 32);
  v14 = v7;
  v8 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89131F4();
  sub_1D8B16DD0();
  LOBYTE(v19) = 0;
  v9 = v17;
  sub_1D8B16AA0();
  if (!v9)
  {
    v11 = v13;
    v12 = v14;
    LOBYTE(v19) = 1;
    sub_1D8B16A70();
    v19 = v12;
    v18 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
    sub_1D8913248(&qword_1ECA65470, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D8B16A80();
    v19 = v11;
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65478, &qword_1D8B28868);
    sub_1D89132B4(&qword_1ECA65480, MEMORY[0x1E69E6160], MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
    sub_1D8B16A80();
    v19 = v8;
    v18 = 4;
    sub_1D8B16A80();
  }

  return (*(v4 + 8))(v6, v3);
}

void BundleClassificationResultSummary.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65488, &qword_1D8B28870);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D89131F4();
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v22) = 0;
    v9 = sub_1D8B169D0();
    LOBYTE(v22) = 1;
    v10 = sub_1D8B169A0();
    v20 = v11;
    v19 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
    v21 = 2;
    sub_1D8913248(&qword_1ECA65490, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1D8B169B0();
    v18 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65478, &qword_1D8B28868);
    v21 = 3;
    v17 = sub_1D89132B4(&qword_1ECA65498, MEMORY[0x1E69E6190], MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    sub_1D8B169B0();
    v16 = v22;
    v21 = 4;
    sub_1D8B169B0();
    (*(v6 + 8))(v8, v5);
    v12 = v22;
    *a2 = v9 & 1;
    v13 = v18;
    *(a2 + 8) = v19;
    *(a2 + 16) = v20 & 1;
    v14 = v16;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
    *(a2 + 40) = v12;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void CVDebugArtifactManager.summary(for:)(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for BundleClassification.ClassificationType(0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24[-v9];
  BundleClassification.ClassificationType.asEmpty.getter(&v24[-v9]);
  swift_beginAccess();
  v11 = v1[18];
  if (*(v11 + 16))
  {

    v12 = sub_1D87EF6AC(v10);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      sub_1D89128B8(v10, type metadata accessor for BundleClassification.ClassificationType);

      goto LABEL_6;
    }
  }

  sub_1D89128B8(v10, type metadata accessor for BundleClassification.ClassificationType);
  v14 = 0;
LABEL_6:
  BundleClassification.ClassificationType.asEmpty.getter(v8);
  swift_beginAccess();
  v15 = v3[19];
  if (!*(v15 + 16))
  {
    goto LABEL_11;
  }

  v16 = sub_1D87EF6AC(v8);
  if ((v17 & 1) == 0)
  {

LABEL_11:
    sub_1D89128B8(v8, type metadata accessor for BundleClassification.ClassificationType);
    v18 = MEMORY[0x1E69E7CD0];
    v19 = *(MEMORY[0x1E69E7CD0] + 16);
    if (!v19)
    {
      goto LABEL_9;
    }

LABEL_12:
    v20 = sub_1D87F38C0(v19, 0);
    v21 = sub_1D88178CC(&v25, v20 + 4, v19, v18);
    sub_1D87977A0(v25);
    if (v21 == v19)
    {
      v25 = v20;

      sub_1D8910430(&v25);
      if (!v2)
      {

        v19 = v25;
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v18 = *(*(v15 + 56) + 8 * v16);

  sub_1D89128B8(v8, type metadata accessor for BundleClassification.ClassificationType);

  v19 = *(v18 + 16);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_9:

LABEL_15:
  swift_beginAccess();
  v22 = v3[16];
  if (*(v22 + 16))
  {
  }

  else
  {
    v22 = 0;
  }

  swift_beginAccess();
  if (*(v3[17] + 16))
  {
  }

  else
  {
    v23 = 0;
  }

  *a1 = v14 > 0;
  *(a1 + 8) = v14 & ~(v14 >> 63);
  *(a1 + 16) = v14 < 1;
  *(a1 + 24) = v19;
  *(a1 + 32) = v22;
  *(a1 + 40) = v23;
}

void sub_1D8910430(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D885D3D0(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_1D891049C(v4);
  *a1 = v2;
}

void sub_1D891049C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D8B16B30();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D8B15D60();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1D8910664(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D8910594(0, v2, 1, a1);
  }
}

uint64_t sub_1D8910594(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_1D8B16BA0(), (result & 1) == 0))
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

void sub_1D8910664(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_138:
      v8 = sub_1D885CC68(v8);
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
        sub_1D8910C40((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
          goto LABEL_115;
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
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_142;
    }

LABEL_115:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        v13 = sub_1D8B16BA0();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (v14[1] == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else if ((v13 ^ sub_1D8B16BA0()))
          {
            goto LABEL_23;
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

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D87C7C5C(0, *(v8 + 2) + 1, 1, v8);
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      v8 = sub_1D87C7C5C((v39 > 1), v40 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *a1;
    if (!*a1)
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
        sub_1D8910C40((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
          goto LABEL_115;
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D885CC68(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        sub_1D885CBDC(v44);
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
    if (v37 || (sub_1D8B16BA0() & 1) == 0)
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
}

uint64_t sub_1D8910C40(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1D8B16BA0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1D8B16BA0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t _s22VisualIntelligenceCore20BundleClassificationV14BlockingReasonO2eeoiySbAE_AEtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = a2[1];
  v7 = *(a2 + 16);
  if (!*(a1 + 16))
  {
    if (*(a2 + 16))
    {
      goto LABEL_10;
    }

    v16 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_1D8B16BA0();
      sub_1D8912A90(v6, v5, 0);
      sub_1D8912A90(v3, v2, 0);
      sub_1D88E102C(v3, v2, 0);
      v10 = v6;
      v11 = v5;
      v12 = 0;
      goto LABEL_28;
    }

    sub_1D8912A90(v16, v2, 0);
    sub_1D8912A90(v3, v2, 0);
    sub_1D88E102C(v3, v2, 0);
    v15 = v3;
    v18 = v2;
    v19 = 0;
    goto LABEL_44;
  }

  if (v4 != 1)
  {
    if (v3 <= 1)
    {
      if (v3 | v2)
      {
        if (v7 == 2 && v6 == 1 && !v5)
        {
          sub_1D88E102C(*a1, v2, 2u);
          v13 = 1;
          sub_1D88E102C(1, 0, 2u);
          return v13;
        }

        goto LABEL_10;
      }

      if (v7 != 2 || v5 | v6)
      {
LABEL_10:
        sub_1D8912A90(*a2, a2[1], v7);
        sub_1D8912A90(v3, v2, v4);
        sub_1D88E102C(v3, v2, v4);
        sub_1D88E102C(v6, v5, v7);
        return 0;
      }

      sub_1D88E102C(*a1, v2, 2u);
      v15 = 0;
    }

    else if (v3 ^ 2 | v2)
    {
      if (v3 ^ 3 | v2)
      {
        if (v7 != 2 || v6 != 4 || v5)
        {
          goto LABEL_10;
        }

        sub_1D88E102C(*a1, v2, 2u);
        v15 = 4;
      }

      else
      {
        if (v7 != 2 || v6 != 3 || v5)
        {
          goto LABEL_10;
        }

        sub_1D88E102C(*a1, v2, 2u);
        v15 = 3;
      }
    }

    else
    {
      if (v7 != 2 || v6 != 2 || v5)
      {
        goto LABEL_10;
      }

      sub_1D88E102C(*a1, v2, 2u);
      v15 = 2;
    }

    v18 = 0;
    v19 = 2;
LABEL_44:
    sub_1D88E102C(v15, v18, v19);
    return 1;
  }

  if (v7 != 1)
  {
    goto LABEL_10;
  }

  if (v3 == v6 && v2 == v5)
  {
    v13 = 1;
    sub_1D8912A90(*a1, v2, 1u);
    sub_1D8912A90(v3, v2, 1u);
    sub_1D88E102C(v3, v2, 1u);
    sub_1D88E102C(v3, v2, 1u);
    return v13;
  }

  v9 = sub_1D8B16BA0();
  sub_1D8912A90(v6, v5, 1u);
  sub_1D8912A90(v3, v2, 1u);
  sub_1D88E102C(v3, v2, 1u);
  v10 = v6;
  v11 = v5;
  v12 = 1;
LABEL_28:
  sub_1D88E102C(v10, v11, v12);
  return v9 & 1;
}

uint64_t _s22VisualIntelligenceCore32BundleClassificationRuntimeErrorV0G4TypeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v8 != 2)
    {
      v12 = v7 >= 0xC0 && (v5 | v6) == 0;
      if (!v12 || v7 != 192)
      {
        goto LABEL_18;
      }

      sub_1D88E1004(*a1, v2, v4);
      v13 = 0;
      v14 = 0;
      v15 = -64;
LABEL_22:
      sub_1D88E1004(v13, v14, v15);
      v9 = 1;
      return v9 & 1;
    }

    if ((v7 & 0xC0) != 0x80)
    {
      goto LABEL_18;
    }

LABEL_9:
    v10 = *a1;
    if (v3 != v6 || v2 != v5)
    {
      v9 = sub_1D8B16BA0();
      sub_1D8912A68(v3, v2, v4);
      sub_1D8912A68(v6, v5, v7);
      sub_1D88E1004(v3, v2, v4);
      sub_1D88E1004(v6, v5, v7);
      return v9 & 1;
    }

    sub_1D8912A68(v10, v2, v4);
    sub_1D8912A68(v3, v2, v7);
    sub_1D88E1004(v3, v2, v4);
    v13 = v3;
    v14 = v2;
    v15 = v7;
    goto LABEL_22;
  }

  if (v8)
  {
    if ((v7 & 0xC0) != 0x40)
    {
      goto LABEL_18;
    }

    goto LABEL_9;
  }

  if (v7 > 0x3F)
  {
LABEL_18:
    sub_1D8912A68(*a1, v2, v4);
    sub_1D8912A68(v6, v5, v7);
    sub_1D88E1004(v3, v2, v4);
    sub_1D88E1004(v6, v5, v7);
    v9 = 0;
    return v9 & 1;
  }

  v19[0] = *a1;
  v19[1] = v2;
  v20 = v4;
  v17[0] = v6;
  v17[1] = v5;
  v18 = v7;
  sub_1D8912A68(v6, v5, v7);
  sub_1D8912A68(v3, v2, v4);
  sub_1D8912A68(v3, v2, v4);
  sub_1D8912A68(v6, v5, v7);
  v9 = _s22VisualIntelligenceCore20BundleClassificationV14BlockingReasonO2eeoiySbAE_AEtFZ_0(v19, v17);
  sub_1D88E1004(v3, v2, v4);
  sub_1D88E1004(v6, v5, v7);
  sub_1D88E1004(v6, v5, v7);
  sub_1D88E1004(v3, v2, v4);
  return v9 & 1;
}

uint64_t _s22VisualIntelligenceCore32BundleClassificationRuntimeErrorV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v20 = v5;
  v21 = v4;
  v22 = v2;
  v23 = v3;
  v7 = a2[4];
  v8 = a1[4];
  v10 = *(a2 + 1);
  v9 = *(a2 + 2);
  v11 = *(a1 + 2);
  v12 = *(a1 + 24);
  v13 = *(a2 + 24);
  v17 = *(a1 + 1);
  v18 = v11;
  v19 = v12;
  v14 = v10;
  v15 = v9;
  v16 = v13;
  sub_1D8912A68(v17, v11, v12);
  sub_1D8912A68(v10, v9, v13);
  LOBYTE(v9) = _s22VisualIntelligenceCore32BundleClassificationRuntimeErrorV0G4TypeO2eeoiySbAE_AEtFZ_0(&v17, &v14);
  sub_1D88E1004(v14, v15, v16);
  sub_1D88E1004(v17, v18, v19);
  return v9 & (v8 == v7);
}

BOOL _s22VisualIntelligenceCore20BundleClassificationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BundleClassification(0);
  v5 = *(v4 + 20);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v9 = *(a1 + v5 + 16);
  v8 = *(a1 + v5 + 24);
  v10 = *(a1 + v5 + 32);
  v11 = (a2 + v5);
  v13 = *v11;
  v12 = v11[1];
  v14 = v11[2];
  v15 = v11[3];
  v16 = v11[4];
  if (v7 == 2)
  {
    v27 = v4;
    v28 = v6;
    v17 = v6;
    v18 = v9;
    v19 = v9;
    v20 = v8;
    sub_1D8912A48(v7, v17, v19, v8);
    sub_1D8912A48(v13, v12, v14, v15);
    if (v13 == 2)
    {
      sub_1D88E0FE4(v7, v28, v18, v20);
      return *(a1 + *(v27 + 24)) == *(a2 + *(v27 + 24));
    }

    goto LABEL_7;
  }

  v34 = v7;
  v35 = v6;
  v36 = v9;
  v37 = v8;
  v38 = v10;
  if (v13 == 2)
  {
    v21 = v8;
    sub_1D8912A48(v7, v6, v9, v8);
    sub_1D8912A48(v13, v12, v14, v15);
    sub_1D8912A48(v7, v6, v9, v21);
    v28 = v6;
    v22 = v6;
    v18 = v9;
    v23 = v9;
    v20 = v21;
    sub_1D88E1004(v22, v23, v21);
LABEL_7:
    sub_1D88E0FE4(v7, v28, v18, v20);
    sub_1D88E0FE4(v13, v12, v14, v15);
    return 0;
  }

  v27 = v4;
  v29[0] = v13 & 1;
  v30 = v12;
  v31 = v14;
  v32 = v15;
  v33 = v16;
  v26 = v8;
  sub_1D8912A48(v7, v6, v9, v8);
  sub_1D8912A48(v13, v12, v14, v15);
  sub_1D8912A48(v7, v6, v9, v26);
  v25 = _s22VisualIntelligenceCore32BundleClassificationRuntimeErrorV2eeoiySbAC_ACtFZ_0(&v34, v29);
  sub_1D88E1004(v30, v31, v32);
  sub_1D88E1004(v35, v36, v37);
  sub_1D88E0FE4(v7, v6, v9, v26);
  if (v25)
  {
    return *(a1 + *(v27 + 24)) == *(a2 + *(v27 + 24));
  }

  return 0;
}

uint64_t _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  *&v77 = a2;
  v2 = sub_1D8B145A0();
  v74 = *(v2 - 8);
  v75 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for VisualLookupClassifier.Result(0);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v67 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0, &unk_1D8B23AB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v67 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65700, &qword_1D8B2AB90);
  MEMORY[0x1EEE9AC00](v69);
  v73 = &v67 - v7;
  v8 = type metadata accessor for BundleClassification.ClassificationType(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v67 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v67 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v67 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v67 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v67 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65708, &qword_1D8B2AB98);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v67 - v28;
  v30 = (&v67 + *(v27 + 56) - v28);
  sub_1D8912BA4(v76, &v67 - v28, type metadata accessor for BundleClassification.ClassificationType);
  sub_1D8912BA4(v77, v30, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D8912BA4(v29, v11, type metadata accessor for BundleClassification.ClassificationType);
        v37 = *v11;
        if (swift_getEnumCaseMultiPayload() != 5)
        {
LABEL_35:

          goto LABEL_37;
        }

        v38 = v29;
        v34 = sub_1D894DD7C(v37, *v30);

LABEL_42:
        sub_1D89128B8(v38, type metadata accessor for BundleClassification.ClassificationType);
        return v34 & 1;
      }

      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_37;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_37;
      }
    }

    else if (EnumCaseMultiPayload == 8)
    {
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_37;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 9)
    {
      goto LABEL_37;
    }

    v59 = v29;
LABEL_32:
    sub_1D89128B8(v59, type metadata accessor for BundleClassification.ClassificationType);
    v34 = 1;
    return v34 & 1;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D8912BA4(v29, v25, type metadata accessor for BundleClassification.ClassificationType);
      v35 = *v25;
      v36 = v25[1];
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_35;
      }

      v38 = v29;
      v61 = v30[1];
      sub_1D88E4BE8(v35, *v30);
      v63 = v62;

      if ((v63 & 1) == 0)
      {
        sub_1D89128B8(v29, type metadata accessor for BundleClassification.ClassificationType);
        goto LABEL_38;
      }

      v34 = v36 == v61;
      goto LABEL_42;
    }

    sub_1D8912BA4(v29, v23, type metadata accessor for BundleClassification.ClassificationType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D87A14E4(v23, &qword_1ECA641B0, &unk_1D8B23AB0);
      goto LABEL_37;
    }

    v54 = v29;
    v55 = *(v69 + 48);
    v56 = v73;
    sub_1D8912598(v23, v73);
    sub_1D8912598(v30, v56 + v55);
    v57 = *(v71 + 48);
    v58 = v72;
    if (v57(v56, 1, v72) == 1)
    {
      if (v57(v56 + v55, 1, v58) == 1)
      {
        sub_1D87A14E4(v56, &qword_1ECA641B0, &unk_1D8B23AB0);
LABEL_49:
        v59 = v54;
        goto LABEL_32;
      }
    }

    else
    {
      v64 = v68;
      sub_1D8912848(v56, v68);
      if (v57(v56 + v55, 1, v58) != 1)
      {
        v65 = v67;
        sub_1D8912918(v56 + v55, v67, type metadata accessor for VisualLookupClassifier.Result);
        v66 = static VisualLookupClassifier.Result.== infix(_:_:)(v64, v65);
        sub_1D89128B8(v65, type metadata accessor for VisualLookupClassifier.Result);
        sub_1D89128B8(v64, type metadata accessor for VisualLookupClassifier.Result);
        sub_1D87A14E4(v56, &qword_1ECA641B0, &unk_1D8B23AB0);
        if (v66)
        {
          goto LABEL_49;
        }

LABEL_46:
        sub_1D89128B8(v54, type metadata accessor for BundleClassification.ClassificationType);
        goto LABEL_38;
      }

      sub_1D89128B8(v64, type metadata accessor for VisualLookupClassifier.Result);
    }

    sub_1D87A14E4(v56, &qword_1ECA65700, &qword_1D8B2AB90);
    goto LABEL_46;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1D8912BA4(v29, v20, type metadata accessor for BundleClassification.ClassificationType);
    v39 = *v20;
    v40 = v20[2];
    v41 = v20[4];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v42 = v20[5];
      v43 = v20[3];
      v44 = v20[1];
      v45 = v29;
      v47 = *(v30 + 2);
      v46 = *(v30 + 3);
      v48 = *(v30 + 4);
      v49 = *(v30 + 5);
      v83[0] = v39;
      v83[1] = v44;
      v83[2] = v40;
      v83[3] = v43;
      v83[4] = v41;
      v83[5] = v42;
      v77 = *v30;
      v78 = v77;
      v79 = v47;
      v80 = v46;
      v81 = v48;
      v82 = v49;
      v34 = _s22VisualIntelligenceCore18BCSActionContainerV2eeoiySbAC_ACtFZ_0(v83, &v78);

      sub_1D89128B8(v45, type metadata accessor for BundleClassification.ClassificationType);
      return v34 & 1;
    }

    goto LABEL_37;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_1D8912BA4(v29, v14, type metadata accessor for BundleClassification.ClassificationType);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v51 = v74;
      v50 = v75;
      v52 = v70;
      (*(v74 + 32))(v70, v30, v75);
      v34 = MEMORY[0x1DA71DA70](v14, v52);
      v53 = *(v51 + 8);
      v53(v52, v50);
      v53(v14, v50);
      sub_1D89128B8(v29, type metadata accessor for BundleClassification.ClassificationType);
      return v34 & 1;
    }

    (*(v74 + 8))(v14, v75);
    goto LABEL_37;
  }

  sub_1D8912BA4(v29, v17, type metadata accessor for BundleClassification.ClassificationType);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_37:
    sub_1D87A14E4(v29, &qword_1ECA65708, &qword_1D8B2AB98);
LABEL_38:
    v34 = 0;
    return v34 & 1;
  }

  v32 = v29;
  v33 = *v17 ^ *v30;
  sub_1D89128B8(v32, type metadata accessor for BundleClassification.ClassificationType);
  v34 = v33 ^ 1;
  return v34 & 1;
}

uint64_t _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63410, &qword_1D8B23AD0);
  v0 = *(type metadata accessor for BundleClassification.ClassificationType(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D8B1AB50;
  v4 = (v3 + v2);
  *v4 = MEMORY[0x1E69E7CC0];
  v4[1] = 0xBFF0000000000000;
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for VisualLookupClassifier.Result(0);
  (*(*(v5 - 8) + 56))(v4 + 5 * v1, 1, 1, v5);
  swift_storeEnumTagMultiPayload();
  v6 = v4 + 6 * v1;
  *v6 = xmmword_1D8B190C0;
  *(v6 + 2) = 0xE700000000000000;
  *(v6 + 3) = 0x7974706D65;
  *(v6 + 4) = 0xE500000000000000;
  *(v6 + 5) = 0;
  swift_storeEnumTagMultiPayload();
  *(v4 + 7 * v1) = 0;
  swift_storeEnumTagMultiPayload();
  v7 = &v4[v1];
  *v7 = 0x7974706D65;
  v7[1] = 0xE500000000000000;
  v8 = *MEMORY[0x1E69C9C08];
  v9 = sub_1D8B145A0();
  (*(*(v9 - 8) + 104))(v7, v8, v9);
  swift_storeEnumTagMultiPayload();
  *(v4 + 9 * v1) = MEMORY[0x1E69E7CD0];
  swift_storeEnumTagMultiPayload();
  return v3;
}

unint64_t sub_1D891234C()
{
  result = qword_1ECA651C8;
  if (!qword_1ECA651C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA651C8);
  }

  return result;
}

unint64_t sub_1D89123A0()
{
  result = qword_1ECA651D0;
  if (!qword_1ECA651D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA651D0);
  }

  return result;
}

unint64_t sub_1D89123F4()
{
  result = qword_1ECA651D8;
  if (!qword_1ECA651D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA651D8);
  }

  return result;
}

unint64_t sub_1D8912448()
{
  result = qword_1ECA651E8;
  if (!qword_1ECA651E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA651E8);
  }

  return result;
}

unint64_t sub_1D891249C()
{
  result = qword_1ECA651F0;
  if (!qword_1ECA651F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA651F0);
  }

  return result;
}

unint64_t sub_1D89124F0()
{
  result = qword_1ECA651F8;
  if (!qword_1ECA651F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA651F8);
  }

  return result;
}

unint64_t sub_1D8912544()
{
  result = qword_1ECA65200;
  if (!qword_1ECA65200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65200);
  }

  return result;
}

uint64_t sub_1D8912598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0, &unk_1D8B23AB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8912608()
{
  result = qword_1ECA65208;
  if (!qword_1ECA65208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65208);
  }

  return result;
}

uint64_t sub_1D891265C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D89126A4()
{
  result = qword_1ECA65218;
  if (!qword_1ECA65218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65218);
  }

  return result;
}

unint64_t sub_1D89126F8()
{
  result = qword_1ECA65220;
  if (!qword_1ECA65220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65220);
  }

  return result;
}

unint64_t sub_1D891274C()
{
  result = qword_1ECA65228;
  if (!qword_1ECA65228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65228);
  }

  return result;
}

unint64_t sub_1D89127A0()
{
  result = qword_1ECA65230;
  if (!qword_1ECA65230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65230);
  }

  return result;
}

unint64_t sub_1D89127F4()
{
  result = qword_1ECA65238;
  if (!qword_1ECA65238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65238);
  }

  return result;
}

uint64_t sub_1D8912848(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B0, &unk_1D8B23AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D89128B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8912918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8912980()
{
  result = qword_1ECA652A0;
  if (!qword_1ECA652A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA652A0);
  }

  return result;
}

unint64_t sub_1D89129D4()
{
  result = qword_1ECA652A8;
  if (!qword_1ECA652A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA652A8);
  }

  return result;
}

double sub_1D8912A48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result != 2)
  {
    return sub_1D8912A68(a2, a3, a4);
  }

  return v4;
}

double sub_1D8912A68(uint64_t a1, uint64_t a2, uint64_t a3)
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
    return sub_1D8912A90(a1, a2, a3);
  }

  return result;
}

double sub_1D8912A90(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

unint64_t sub_1D8912AA8()
{
  result = qword_1ECA652C0;
  if (!qword_1ECA652C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA652C0);
  }

  return result;
}

unint64_t sub_1D8912AFC()
{
  result = qword_1ECA652D0;
  if (!qword_1ECA652D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA652D0);
  }

  return result;
}

unint64_t sub_1D8912B50()
{
  result = qword_1ECA652E8;
  if (!qword_1ECA652E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA652E8);
  }

  return result;
}

uint64_t sub_1D8912BA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8912C0C()
{
  result = qword_1ECA65330;
  if (!qword_1ECA65330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65330);
  }

  return result;
}

unint64_t sub_1D8912C60()
{
  result = qword_1ECA65338;
  if (!qword_1ECA65338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65338);
  }

  return result;
}

unint64_t sub_1D8912CB4()
{
  result = qword_1ECA65340;
  if (!qword_1ECA65340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65340);
  }

  return result;
}

unint64_t sub_1D8912D08()
{
  result = qword_1ECA65348;
  if (!qword_1ECA65348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65348);
  }

  return result;
}

unint64_t sub_1D8912D5C()
{
  result = qword_1ECA65350;
  if (!qword_1ECA65350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65350);
  }

  return result;
}

unint64_t sub_1D8912DB0()
{
  result = qword_1ECA65358;
  if (!qword_1ECA65358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65358);
  }

  return result;
}

unint64_t sub_1D8912E04()
{
  result = qword_1ECA65360;
  if (!qword_1ECA65360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65360);
  }

  return result;
}

unint64_t sub_1D8912E58()
{
  result = qword_1ECA65368;
  if (!qword_1ECA65368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65368);
  }

  return result;
}

unint64_t sub_1D8912EAC()
{
  result = qword_1ECA653D8;
  if (!qword_1ECA653D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA653D8);
  }

  return result;
}

unint64_t sub_1D8912F00()
{
  result = qword_1ECA653E0;
  if (!qword_1ECA653E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA653E0);
  }

  return result;
}

unint64_t sub_1D8912F54()
{
  result = qword_1ECA653E8;
  if (!qword_1ECA653E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA653E8);
  }

  return result;
}

unint64_t sub_1D8912FA8()
{
  result = qword_1ECA653F0;
  if (!qword_1ECA653F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA653F0);
  }

  return result;
}

unint64_t sub_1D8912FFC()
{
  result = qword_1ECA653F8;
  if (!qword_1ECA653F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA653F8);
  }

  return result;
}

unint64_t sub_1D8913050()
{
  result = qword_1ECA65400;
  if (!qword_1ECA65400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65400);
  }

  return result;
}

unint64_t sub_1D89130A4()
{
  result = qword_1ECA65430;
  if (!qword_1ECA65430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65430);
  }

  return result;
}

unint64_t sub_1D89130F8()
{
  result = qword_1ECA65440;
  if (!qword_1ECA65440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65440);
  }

  return result;
}

unint64_t sub_1D891314C()
{
  result = qword_1ECA65448;
  if (!qword_1ECA65448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65448);
  }

  return result;
}

unint64_t sub_1D89131A0()
{
  result = qword_1ECA65458;
  if (!qword_1ECA65458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65458);
  }

  return result;
}

unint64_t sub_1D89131F4()
{
  result = qword_1ECA65468;
  if (!qword_1ECA65468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65468);
  }

  return result;
}

uint64_t sub_1D8913248(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D89132B4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA65478, &qword_1D8B28868);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D89133B8()
{
  result = qword_1ECA654A8;
  if (!qword_1ECA654A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654A8);
  }

  return result;
}

unint64_t sub_1D8913410()
{
  result = qword_1ECA654B0;
  if (!qword_1ECA654B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654B0);
  }

  return result;
}

unint64_t sub_1D8913468()
{
  result = qword_1ECA654B8;
  if (!qword_1ECA654B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654B8);
  }

  return result;
}

unint64_t sub_1D89134C0()
{
  result = qword_1ECA654C0;
  if (!qword_1ECA654C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654C0);
  }

  return result;
}

void sub_1D891353C(uint64_t a1)
{
  type metadata accessor for BundleClassification.ClassificationType(319);
  if (v1 <= 0x3F)
  {
    sub_1D89135C8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D89135C8()
{
  if (!qword_1EE0E46C8)
  {
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E46C8);
    }
  }
}

void sub_1D8913618(uint64_t a1)
{
  sub_1D89136BC(319);
  if (v1 <= 0x3F)
  {
    sub_1D8913734(319);
    if (v2 <= 0x3F)
    {
      sub_1D8B145A0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D89136BC(uint64_t a1)
{
  if (!qword_1EE0E3960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA639D8, &qword_1D8B28700);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0E3960);
    }
  }
}

void sub_1D8913734(uint64_t a1)
{
  if (!qword_1EE0E95A8[0])
  {
    type metadata accessor for VisualLookupClassifier.Result(255);
    v1 = sub_1D8B16470();
    if (!v2)
    {
      atomic_store(v1, qword_1EE0E95A8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore20BundleClassificationV14BlockingReasonO(uint64_t a1)
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

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore32BundleClassificationRuntimeErrorV0G4TypeO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D89137D4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
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

uint64_t sub_1D8913828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D8913884(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 17))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D89138D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 16) = 0;
    *result = a2 - 61;
    *(result + 8) = 0;
    if (a3 >= 0x3D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_1D8913938(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t sub_1D8913988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 16) + **(a7 + 16));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D8864FBC;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1D8913AF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1D8913B54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BundleClassification.BlockingReason.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BundleClassification.BlockingReason.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for AskAcmeRequirement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AskAcmeRequirement(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8913FF8()
{
  result = qword_1ECA654C8;
  if (!qword_1ECA654C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654C8);
  }

  return result;
}

unint64_t sub_1D8914050()
{
  result = qword_1ECA654D0;
  if (!qword_1ECA654D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654D0);
  }

  return result;
}

unint64_t sub_1D89140A8()
{
  result = qword_1ECA654D8;
  if (!qword_1ECA654D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654D8);
  }

  return result;
}

unint64_t sub_1D8914100()
{
  result = qword_1ECA654E0;
  if (!qword_1ECA654E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654E0);
  }

  return result;
}

unint64_t sub_1D8914158()
{
  result = qword_1ECA654E8;
  if (!qword_1ECA654E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654E8);
  }

  return result;
}

unint64_t sub_1D89141B0()
{
  result = qword_1ECA654F0;
  if (!qword_1ECA654F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654F0);
  }

  return result;
}

unint64_t sub_1D8914208()
{
  result = qword_1ECA654F8;
  if (!qword_1ECA654F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA654F8);
  }

  return result;
}

unint64_t sub_1D8914260()
{
  result = qword_1ECA65500;
  if (!qword_1ECA65500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65500);
  }

  return result;
}

unint64_t sub_1D89142B8()
{
  result = qword_1ECA65508;
  if (!qword_1ECA65508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65508);
  }

  return result;
}

unint64_t sub_1D8914310()
{
  result = qword_1ECA65510;
  if (!qword_1ECA65510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65510);
  }

  return result;
}

unint64_t sub_1D8914368()
{
  result = qword_1ECA65518;
  if (!qword_1ECA65518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65518);
  }

  return result;
}

unint64_t sub_1D89143C0()
{
  result = qword_1ECA65520;
  if (!qword_1ECA65520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65520);
  }

  return result;
}

unint64_t sub_1D8914418()
{
  result = qword_1ECA65528;
  if (!qword_1ECA65528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65528);
  }

  return result;
}

unint64_t sub_1D8914470()
{
  result = qword_1ECA65530;
  if (!qword_1ECA65530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65530);
  }

  return result;
}

unint64_t sub_1D89144C8()
{
  result = qword_1ECA65538;
  if (!qword_1ECA65538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65538);
  }

  return result;
}

unint64_t sub_1D8914520()
{
  result = qword_1ECA65540;
  if (!qword_1ECA65540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65540);
  }

  return result;
}

unint64_t sub_1D8914578()
{
  result = qword_1ECA65548;
  if (!qword_1ECA65548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65548);
  }

  return result;
}

unint64_t sub_1D89145D0()
{
  result = qword_1ECA65550;
  if (!qword_1ECA65550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65550);
  }

  return result;
}

unint64_t sub_1D8914628()
{
  result = qword_1ECA65558;
  if (!qword_1ECA65558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65558);
  }

  return result;
}

unint64_t sub_1D8914680()
{
  result = qword_1ECA65560;
  if (!qword_1ECA65560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65560);
  }

  return result;
}

unint64_t sub_1D89146D8()
{
  result = qword_1ECA65568;
  if (!qword_1ECA65568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65568);
  }

  return result;
}

unint64_t sub_1D8914730()
{
  result = qword_1ECA65570;
  if (!qword_1ECA65570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65570);
  }

  return result;
}

unint64_t sub_1D8914788()
{
  result = qword_1ECA65578;
  if (!qword_1ECA65578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65578);
  }

  return result;
}

unint64_t sub_1D89147E0()
{
  result = qword_1ECA65580;
  if (!qword_1ECA65580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65580);
  }

  return result;
}

unint64_t sub_1D8914838()
{
  result = qword_1ECA65588;
  if (!qword_1ECA65588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65588);
  }

  return result;
}

unint64_t sub_1D8914890()
{
  result = qword_1ECA65590;
  if (!qword_1ECA65590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65590);
  }

  return result;
}

unint64_t sub_1D89148E8()
{
  result = qword_1ECA65598;
  if (!qword_1ECA65598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65598);
  }

  return result;
}

unint64_t sub_1D8914940()
{
  result = qword_1ECA655A0;
  if (!qword_1ECA655A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655A0);
  }

  return result;
}

unint64_t sub_1D8914998()
{
  result = qword_1ECA655A8;
  if (!qword_1ECA655A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655A8);
  }

  return result;
}

unint64_t sub_1D89149F0()
{
  result = qword_1ECA655B0;
  if (!qword_1ECA655B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655B0);
  }

  return result;
}

unint64_t sub_1D8914A48()
{
  result = qword_1ECA655B8;
  if (!qword_1ECA655B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655B8);
  }

  return result;
}

unint64_t sub_1D8914AA0()
{
  result = qword_1ECA655C0;
  if (!qword_1ECA655C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655C0);
  }

  return result;
}

unint64_t sub_1D8914AF8()
{
  result = qword_1ECA655C8;
  if (!qword_1ECA655C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655C8);
  }

  return result;
}

unint64_t sub_1D8914B50()
{
  result = qword_1ECA655D0;
  if (!qword_1ECA655D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655D0);
  }

  return result;
}

unint64_t sub_1D8914BA8()
{
  result = qword_1ECA655D8;
  if (!qword_1ECA655D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655D8);
  }

  return result;
}

unint64_t sub_1D8914C00()
{
  result = qword_1ECA655E0;
  if (!qword_1ECA655E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655E0);
  }

  return result;
}

unint64_t sub_1D8914C58()
{
  result = qword_1ECA655E8;
  if (!qword_1ECA655E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655E8);
  }

  return result;
}

unint64_t sub_1D8914CB0()
{
  result = qword_1ECA655F0;
  if (!qword_1ECA655F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655F0);
  }

  return result;
}

unint64_t sub_1D8914D08()
{
  result = qword_1ECA655F8;
  if (!qword_1ECA655F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA655F8);
  }

  return result;
}

unint64_t sub_1D8914D60()
{
  result = qword_1ECA65600;
  if (!qword_1ECA65600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65600);
  }

  return result;
}

unint64_t sub_1D8914DB8()
{
  result = qword_1ECA65608;
  if (!qword_1ECA65608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65608);
  }

  return result;
}

unint64_t sub_1D8914E10()
{
  result = qword_1ECA65610;
  if (!qword_1ECA65610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65610);
  }

  return result;
}

unint64_t sub_1D8914E68()
{
  result = qword_1ECA65618;
  if (!qword_1ECA65618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65618);
  }

  return result;
}

unint64_t sub_1D8914EC0()
{
  result = qword_1ECA65620;
  if (!qword_1ECA65620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65620);
  }

  return result;
}

unint64_t sub_1D8914F18()
{
  result = qword_1ECA65628;
  if (!qword_1ECA65628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65628);
  }

  return result;
}

unint64_t sub_1D8914F70()
{
  result = qword_1ECA65630;
  if (!qword_1ECA65630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65630);
  }

  return result;
}

unint64_t sub_1D8914FC8()
{
  result = qword_1ECA65638;
  if (!qword_1ECA65638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65638);
  }

  return result;
}

unint64_t sub_1D8915020()
{
  result = qword_1ECA65640;
  if (!qword_1ECA65640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65640);
  }

  return result;
}

unint64_t sub_1D8915078()
{
  result = qword_1ECA65648;
  if (!qword_1ECA65648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65648);
  }

  return result;
}

unint64_t sub_1D89150D0()
{
  result = qword_1ECA65650;
  if (!qword_1ECA65650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65650);
  }

  return result;
}

unint64_t sub_1D8915128()
{
  result = qword_1ECA65658;
  if (!qword_1ECA65658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65658);
  }

  return result;
}

unint64_t sub_1D8915180()
{
  result = qword_1ECA65660;
  if (!qword_1ECA65660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65660);
  }

  return result;
}

unint64_t sub_1D89151D8()
{
  result = qword_1ECA65668;
  if (!qword_1ECA65668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65668);
  }

  return result;
}

unint64_t sub_1D8915230()
{
  result = qword_1ECA65670;
  if (!qword_1ECA65670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65670);
  }

  return result;
}

unint64_t sub_1D8915288()
{
  result = qword_1ECA65678;
  if (!qword_1ECA65678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65678);
  }

  return result;
}

unint64_t sub_1D89152E0()
{
  result = qword_1ECA65680;
  if (!qword_1ECA65680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65680);
  }

  return result;
}

unint64_t sub_1D8915338()
{
  result = qword_1ECA65688;
  if (!qword_1ECA65688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65688);
  }

  return result;
}

unint64_t sub_1D8915390()
{
  result = qword_1ECA65690;
  if (!qword_1ECA65690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65690);
  }

  return result;
}

unint64_t sub_1D89153E8()
{
  result = qword_1ECA65698;
  if (!qword_1ECA65698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA65698);
  }

  return result;
}

unint64_t sub_1D8915440()
{
  result = qword_1ECA656A0;
  if (!qword_1ECA656A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656A0);
  }

  return result;
}

unint64_t sub_1D8915498()
{
  result = qword_1ECA656A8;
  if (!qword_1ECA656A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656A8);
  }

  return result;
}

unint64_t sub_1D89154F0()
{
  result = qword_1ECA656B0;
  if (!qword_1ECA656B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656B0);
  }

  return result;
}

unint64_t sub_1D8915548()
{
  result = qword_1ECA656B8;
  if (!qword_1ECA656B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656B8);
  }

  return result;
}

unint64_t sub_1D89155A0()
{
  result = qword_1ECA656C0;
  if (!qword_1ECA656C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656C0);
  }

  return result;
}

unint64_t sub_1D89155F8()
{
  result = qword_1ECA656C8;
  if (!qword_1ECA656C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656C8);
  }

  return result;
}

unint64_t sub_1D8915650()
{
  result = qword_1ECA656D0;
  if (!qword_1ECA656D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656D0);
  }

  return result;
}

unint64_t sub_1D89156A8()
{
  result = qword_1ECA656D8;
  if (!qword_1ECA656D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656D8);
  }

  return result;
}

unint64_t sub_1D8915700()
{
  result = qword_1ECA656E0;
  if (!qword_1ECA656E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656E0);
  }

  return result;
}

unint64_t sub_1D8915758()
{
  result = qword_1ECA656E8;
  if (!qword_1ECA656E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656E8);
  }

  return result;
}

unint64_t sub_1D89157B0()
{
  result = qword_1ECA656F0;
  if (!qword_1ECA656F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656F0);
  }

  return result;
}

unint64_t sub_1D8915808()
{
  result = qword_1ECA656F8;
  if (!qword_1ECA656F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA656F8);
  }

  return result;
}

uint64_t sub_1D891585C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x757365527370616DLL && a2 == 0xEB0000000073746CLL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E657665 && a2 == 0xE500000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F6C4164616572 && a2 == 0xE900000000000064 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74616C736E617274 && a2 == 0xE900000000000065 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7A6972616D6D7573 && a2 == 0xE900000000000065 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x796669746E656469 && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65646F63726162 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x686372616573 && a2 == 0xE600000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xEF746E65746E6F43 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6974634174786574 && a2 == 0xEB00000000736E6FLL)
  {

    return 9;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_1D8915B9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x45656D69746E7572 && a2 == 0xEC000000726F7272 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8915CC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001D8B441D0 == a2;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D61657274737075 && a2 == 0xEC0000006B726F57 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D8B441F0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D8B44210 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x696D694C65746172 && a2 == 0xEB00000000646574 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69446D6574737973 && a2 == 0xEE0064656C626173 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D8B44230 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8915F1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4264656B636F6C62 && a2 == 0xE900000000000079;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64657269707865 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69737365636F7270 && a2 == 0xEF726F727245676ELL || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69724374656D6E75 && a2 == 0xED00006169726574)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8916098(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001D8B44250 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D89161C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D8B44270 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x526572756C696166 && a2 == 0xEE00736E6F736165 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D8B44290 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D8B442B0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

double sub_1D8916384(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 62 == 1)
  {
    return sub_1D88E1004(a2, a3, a4);
  }

  if (!(a4 >> 62))
  {
    return sub_1D88E102C(a1, a2, a3);
  }

  return result;
}

double sub_1D89163AC(char a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a1 & 0xFE) != 2 && a1 != 4)
  {
    return sub_1D88E1004(a2, a3, a4);
  }

  return result;
}

void sub_1D89163D8(void (*a1)(char *), uint64_t a2, char *a3)
{
  v4 = v3;
  v36 = a1;
  v37 = a2;
  v6 = type metadata accessor for CVProcessorTaskDescriptor(0);
  v35 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ProcessorState(0);
  v33 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 2);
  if (v10)
  {
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D87F439C(0, v10, 0);
    v41 = v42;
    v39 = a3 + 64;
    v11 = sub_1D8B16580();
    v12 = 0;
    v31 = a3 + 72;
    v32 = v10;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << a3[32])
    {
      v15 = v11 >> 6;
      if ((*&v39[8 * (v11 >> 6)] & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      v16 = *(a3 + 9);
      v17 = a3;
      v18 = *(a3 + 6);
      a3 = v34;
      sub_1D8917FF0(v18 + *(v35 + 72) * v11, v34, type metadata accessor for CVProcessorTaskDescriptor);
      v36(a3);
      v38 = v4;
      if (v4)
      {
        goto LABEL_26;
      }

      sub_1D89388D8(a3, type metadata accessor for CVProcessorTaskDescriptor);
      v19 = v41;
      v42 = v41;
      v21 = *(v41 + 16);
      v20 = *(v41 + 24);
      a3 = (v21 + 1);
      if (v21 >= v20 >> 1)
      {
        sub_1D87F439C((v20 > 1), v21 + 1, 1);
        v19 = v42;
      }

      *(v19 + 16) = a3;
      v22 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v41 = v19;
      sub_1D8918058(v40, v19 + v22 + *(v33 + 72) * v21, type metadata accessor for ProcessorState);
      v13 = 1 << v17[32];
      if (v11 >= v13)
      {
        goto LABEL_23;
      }

      v23 = *&v39[8 * v15];
      if ((v23 & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      a3 = v17;
      if (v16 != *(v17 + 9))
      {
        goto LABEL_25;
      }

      v24 = v23 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v13 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v14 = v32;
      }

      else
      {
        v25 = v15 << 6;
        v26 = v15 + 1;
        v14 = v32;
        v27 = &v31[8 * v15];
        while (v26 < (v13 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_1D87977B4(v11, v16, 0);
            v13 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_1D87977B4(v11, v16, 0);
      }

LABEL_4:
      ++v12;
      v11 = v13;
      v4 = v38;
      if (v12 == v14)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1D89388D8(a3, type metadata accessor for CVProcessorTaskDescriptor);

    __break(1u);
  }
}

void sub_1D89167A8(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D87F470C(0, v4, 0);
    v7 = v15;
    v8 = *(type metadata accessor for TextDetectorResult(0) - 8);
    v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);
    while (1)
    {
      a1(&v14, v9);
      if (v3)
      {
        break;
      }

      v11 = v14;
      v15 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D87F470C((v12 > 1), v13 + 1, 1);
        v7 = v15;
      }

      *(v7 + 16) = v13 + 1;
      *(v7 + 8 * v13 + 32) = v11;
      v9 += v10;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D8916908(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1D87F474C(0, v4, 0);
    v6 = v23;
    v7 = *(type metadata accessor for TextDetectorResult(0) - 8);
    v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v17 = *(v7 + 72);
    while (1)
    {
      a1(&v19, v8);
      if (v3)
      {
        break;
      }

      v10 = v19;
      v9 = v20;
      v11 = v21;
      v12 = v22;
      v23 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        v16 = v20;
        sub_1D87F474C((v13 > 1), v14 + 1, 1);
        v9 = v16;
        v6 = v23;
      }

      *(v6 + 16) = v14 + 1;
      v15 = (v6 + 32 * v14);
      v15[4] = v10;
      v15[5] = v9;
      v15[6] = v11;
      v15[7] = v12;
      v8 += v17;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D8916A7C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64048, &qword_1D8B23118);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = *(a3 + 16);
  if (v10)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D87F4840(0, v10, 0);
    v11 = v20;
    v12 = *(type metadata accessor for StreamingBarcodeDetectorResult(0) - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    while (1)
    {
      v18(v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D87F4840((v14 > 1), v15 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v15 + 1;
      sub_1D881F6FC(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, &qword_1ECA64048, &qword_1D8B23118);
      v13 += v17;
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D8916C7C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a1;
  v34 = a2;
  v6 = type metadata accessor for BundleClassification.ClassificationType(0);
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v40 = MEMORY[0x1E69E7CC0];
    sub_1D87F498C(0, v9, 0);
    v37 = a3 + 64;
    v38 = v40;
    v10 = sub_1D8B16580();
    v11 = 0;
    v29 = a3 + 72;
    v30 = v9;
    v31 = v8;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a3 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v37 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v35 = v11;
      v15 = *(a3 + 36);
      v16 = a3;
      sub_1D8917FF0(*(a3 + 48) + *(v32 + 72) * v10, v8, type metadata accessor for BundleClassification.ClassificationType);
      v33(&v39, v8);
      v36 = v4;
      if (v4)
      {
        goto LABEL_26;
      }

      sub_1D89388D8(v8, type metadata accessor for BundleClassification.ClassificationType);
      v17 = v38;
      v18 = v39;
      v40 = v38;
      v20 = *(v38 + 16);
      v19 = *(v38 + 24);
      v8 = (v20 + 1);
      if (v20 >= v19 >> 1)
      {
        sub_1D87F498C((v19 > 1), v20 + 1, 1);
        v17 = v40;
      }

      *(v17 + 16) = v8;
      *(v17 + 8 * v20 + 32) = v18;
      v12 = 1 << *(v16 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v21 = *(v37 + 8 * v14);
      if ((v21 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      a3 = v16;
      v38 = v17;
      if (v15 != *(v16 + 36))
      {
        goto LABEL_25;
      }

      v22 = v21 & (-2 << (v10 & 0x3F));
      if (v22)
      {
        v12 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v30;
        v8 = v31;
      }

      else
      {
        v23 = v14 << 6;
        v24 = v14 + 1;
        v13 = v30;
        v25 = (v29 + 8 * v14);
        v8 = v31;
        while (v24 < (v12 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            sub_1D87977B4(v10, v15, 0);
            v12 = __clz(__rbit64(v26)) + v23;
            goto LABEL_4;
          }
        }

        sub_1D87977B4(v10, v15, 0);
      }

LABEL_4:
      v4 = v36;
      v11 = v35 + 1;
      v10 = v12;
      if (v35 + 1 == v13)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1D89388D8(v8, type metadata accessor for BundleClassification.ClassificationType);

    __break(1u);
  }
}

void sub_1D8916FAC(void (*a1)(uint64_t *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D87F4B1C(0, v4, 0);
    v7 = v20;
    v8 = (a3 + 48);
    while (1)
    {
      v9 = *v8;
      v15[0] = *(v8 - 16);
      v16 = *(v8 - 1);
      v17 = v9;
      a1(&v18, v15);
      if (v3)
      {
        break;
      }

      v10 = v18;
      v11 = v19;
      v20 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D87F4B1C((v12 > 1), v13 + 1, 1);
        v7 = v20;
      }

      v8 += 3;
      *(v7 + 16) = v13 + 1;
      v14 = v7 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      if (!--v4)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D8917148(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v25 = a7;
  v26 = a1;
  v10 = v7;
  v27 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v22 - v14;
  v16 = *(a3 + 16);
  if (v16)
  {
    v28 = MEMORY[0x1E69E7CC0];
    v23 = a5;
    a5(0, v16, 0);
    v17 = v28;
    v18 = *(a6(0) - 8);
    v19 = a3 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v24 = *(v18 + 72);
    while (1)
    {
      v26(v19);
      if (v10)
      {
        break;
      }

      v10 = 0;
      v28 = v17;
      v21 = *(v17 + 16);
      v20 = *(v17 + 24);
      if (v21 >= v20 >> 1)
      {
        v23(v20 > 1, v21 + 1, 1);
        v17 = v28;
      }

      *(v17 + 16) = v21 + 1;
      sub_1D8918058(v15, v17 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, v25);
      v19 += v24;
      if (!--v16)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D8917354(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectionRequest(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v22 - v13;
  v15 = 0;
  v23 = a2;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a1 + 56);
  for (i = (v16 + 63) >> 6; v18; result = sub_1D89388D8(v11, type metadata accessor for DetectionRequest))
  {
    v20 = v15;
LABEL_9:
    v21 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    sub_1D8917FF0(*(a1 + 48) + *(v5 + 72) * (v21 | (v20 << 6)), v14, type metadata accessor for DetectionRequest);
    sub_1D8918058(v14, v8, type metadata accessor for DetectionRequest);
    sub_1D87FB834(v11, v8);
  }

  while (1)
  {
    v20 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v20 >= i)
    {

      return v23;
    }

    v18 = *(a1 + 56 + 8 * v20);
    ++v15;
    if (v18)
    {
      v15 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8917554(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1D87FC140(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CVBundle.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v2, v9, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D8B13240();
    return (*(*(v10 - 8) + 32))(a1, v9, v10);
  }

  else
  {
    sub_1D8918058(v9, v6, type metadata accessor for CVTrackSnapshot);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 16))(a1, v6, v12);
    return sub_1D89388D8(v6, type metadata accessor for CVTrackSnapshot);
  }
}

void *CVBundle.classifications.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA641B8, &unk_1D8B23AC0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v59 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v52 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v58 = &v52 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v65 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v52 - v11;
  v13 = type metadata accessor for BundleClassification(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v57 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v56 = &v52 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v52 - v19;
  v20 = type metadata accessor for RefinementState(0);
  v63 = *(v20 - 8);
  v64 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v62 = &v52 - v24;
  v25 = *(v0 + *(type metadata accessor for CVBundle(0) + 28));
  v26 = v6;
  v27 = v25 + 64;
  v28 = 1 << *(v25 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v25 + 64);
  v31 = (v28 + 63) >> 6;
  v61 = (v14 + 56);
  v54 = v14;
  v68 = v25;
  v69 = (v14 + 48);
  result = swift_bridgeObjectRetain_n();
  v33 = 0;
  v60 = MEMORY[0x1E69E7CC0];
  v66 = v6;
  v67 = v13;
LABEL_4:
  v34 = v33;
  if (!v30)
  {
    goto LABEL_6;
  }

  do
  {
    v33 = v34;
LABEL_9:
    v35 = v62;
    sub_1D8917FF0(*(v68 + 56) + *(v63 + 72) * (__clz(__rbit64(v30)) | (v33 << 6)), v62, type metadata accessor for RefinementState);
    sub_1D8918058(v35, v23, type metadata accessor for RefinementState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1D89388D8(v23, type metadata accessor for RefinementState);
        v37 = v65;
        v13 = v67;
        (*v61)(v65, 1, 1, v67);
        goto LABEL_25;
      }

      v42 = v26;
      sub_1D881F6FC(v23, v26, &qword_1ECA641B8, &unk_1D8B23AC0);
      v43 = v67;
      if ((*v69)(v26, 1, v67) == 1)
      {
        sub_1D87A14E4(v26, &qword_1ECA641B8, &unk_1D8B23AC0);
      }

      else
      {
        v44 = v56;
        sub_1D8918058(v42, v56, type metadata accessor for BundleClassification);
        if (*(v44 + *(v43 + 20)) == 2)
        {
          v45 = v44;
          v46 = v58;
          sub_1D8918058(v45, v58, type metadata accessor for BundleClassification);
          (*v61)(v46, 0, 1, v43);
          v37 = v65;
LABEL_24:
          sub_1D881F6FC(v46, v37, &qword_1ECA641B8, &unk_1D8B23AC0);
          v13 = v67;
          goto LABEL_25;
        }

        sub_1D89388D8(v44, type metadata accessor for BundleClassification);
      }

      v46 = v58;
      v37 = v65;
      (*v61)(v58, 1, 1, v67);
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v38 = v57;
      sub_1D8918058(v23, v57, type metadata accessor for BundleClassification);
      if (*(v38 + *(v13 + 20)) == 2)
      {
        v39 = v38;
        v40 = v59;
        sub_1D8918058(v39, v59, type metadata accessor for BundleClassification);
        v41 = 0;
      }

      else
      {
        sub_1D89388D8(v38, type metadata accessor for BundleClassification);
        v41 = 1;
        v40 = v59;
      }

      v37 = v65;
      v13 = v67;
      (*v61)(v40, v41, 1, v67);
      sub_1D881F6FC(v40, v37, &qword_1ECA641B8, &unk_1D8B23AC0);
    }

    else
    {
      v37 = v65;
      (*v61)(v65, 1, 1, v13);
    }

LABEL_25:
    v30 &= v30 - 1;
    sub_1D881F6FC(v37, v12, &qword_1ECA641B8, &unk_1D8B23AC0);
    if ((*v69)(v12, 1, v13) != 1)
    {
      sub_1D8918058(v12, v55, type metadata accessor for BundleClassification);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_1D87C7D74(0, v60[2] + 1, 1, v60);
      }

      v26 = v66;
      v48 = v60[2];
      v47 = v60[3];
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v53 = v48 + 1;
        v51 = sub_1D87C7D74((v47 > 1), v48 + 1, 1, v60);
        v49 = v53;
        v60 = v51;
      }

      v50 = v60;
      v60[2] = v49;
      result = sub_1D8918058(v55, v50 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v48, type metadata accessor for BundleClassification);
      goto LABEL_4;
    }

    result = sub_1D87A14E4(v12, &qword_1ECA641B8, &unk_1D8B23AC0);
    v34 = v33;
    v26 = v66;
  }

  while (v30);
LABEL_6:
  while (1)
  {
    v33 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v33 >= v31)
    {

      return v60;
    }

    v30 = *(v27 + 8 * v33);
    ++v34;
    if (v30)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8917FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8918058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CVBundle.debugLabel.getter()
{
  v1 = v0;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v1, v7, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    MEMORY[0x1DA71EFA0](0x2870756F7267, 0xE600000000000000);
    sub_1D8B168A0();
    MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
    v8 = v13[0];
    v9 = sub_1D8B13240();
    (*(*(v9 - 8) + 8))(v7, v9);
  }

  else
  {
    sub_1D8918058(v7, v4, type metadata accessor for CVTrackSnapshot);
    v16 = *&v4[*(v2 + 24)];
    CVDetection.detection.getter(v13);
    v10 = v14;
    v11 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v8 = (*(v11 + 72))(v10, v11);
    sub_1D89388D8(v4, type metadata accessor for CVTrackSnapshot);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  return v8;
}

uint64_t CVBundle.latestDetection.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVBundle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v2, v13, type metadata accessor for CVBundle.BundleType);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    sub_1D8918058(v13, v10, type metadata accessor for CVTrackSnapshot);
    v17 = *&v10[*(v8 + 20)];

    result = sub_1D89388D8(v10, type metadata accessor for CVTrackSnapshot);
    goto LABEL_5;
  }

  v15 = *(v2 + *(v4 + 20));
  if (*(v15 + 16))
  {
    sub_1D8917FF0(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v7, type metadata accessor for CVBundle);
    CVBundle.latestDetection.getter(&v19);
    sub_1D89388D8(v7, type metadata accessor for CVBundle);
    v16 = sub_1D8B13240();
    result = (*(*(v16 - 8) + 8))(v13, v16);
    v17 = v19;
LABEL_5:
    *a1 = v17;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t CVBundle.sanitizeForJSON()@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v56 = type metadata accessor for CVTrackSnapshot(0);
  v2 = MEMORY[0x1EEE9AC00](v56);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v50 - v4;
  v62 = type metadata accessor for CVBundle.BundleType(0);
  v5 = MEMORY[0x1EEE9AC00](v62);
  v58 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v50 - v7;
  v9 = type metadata accessor for CVBundle(0);
  v61 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v59 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v60 = &v50 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v50 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v50 - v18;
  v51 = v1;
  v52 = result;
  v20 = *(v1 + *(result + 20));
  v57 = *(v20 + 16);
  if (!v57)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_15:
    v32 = v51;
    v33 = *(v51 + *(v52 + 24));
    v34 = *(v33 + 16);
    if (!v34)
    {
      v36 = MEMORY[0x1E69E7CC0];
LABEL_29:
      v48 = v50;
      sub_1D8917FF0(v32, v50, type metadata accessor for CVBundle.BundleType);
      result = sub_1D893C688(MEMORY[0x1E69E7CC0]);
      v49 = v52;
      *(v48 + *(v52 + 20)) = v22;
      *(v48 + *(v49 + 24)) = v36;
      *(v48 + *(v49 + 28)) = result;
      return result;
    }

    v35 = 0;
    v36 = MEMORY[0x1E69E7CC0];
    v37 = v58;
    while (1)
    {
      if (v35 >= *(v33 + 16))
      {
        goto LABEL_31;
      }

      v38 = v60;
      v39 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v40 = *(v61 + 72);
      sub_1D8917FF0(v33 + v39 + v40 * v35, v60, type metadata accessor for CVBundle);
      sub_1D8917FF0(v38, v37, type metadata accessor for CVBundle.BundleType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      v42 = v53;
      sub_1D8918058(v37, v53, type metadata accessor for CVTrackSnapshot);
      v43 = *(v42 + *(v56 + 24));
      sub_1D89388D8(v42, type metadata accessor for CVTrackSnapshot);
      v44 = v43 >> 60;
      v37 = v58;
      if (v44 != 2)
      {
        goto LABEL_23;
      }

      result = sub_1D89388D8(v60, type metadata accessor for CVBundle);
LABEL_18:
      if (v34 == ++v35)
      {
        goto LABEL_29;
      }
    }

    v41 = sub_1D8B13240();
    (*(*(v41 - 8) + 8))(v37, v41);
LABEL_23:
    sub_1D8918058(v60, v59, type metadata accessor for CVBundle);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D87F4074(0, *(v36 + 16) + 1, 1);
      v36 = v63;
    }

    v47 = *(v36 + 16);
    v46 = *(v36 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_1D87F4074((v46 > 1), v47 + 1, 1);
      v36 = v63;
    }

    *(v36 + 16) = v47 + 1;
    result = sub_1D8918058(v59, v36 + v39 + v47 * v40, type metadata accessor for CVBundle);
    v37 = v58;
    goto LABEL_18;
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v55 = v16;
  while (v21 < *(v20 + 16))
  {
    v23 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v24 = *(v61 + 72);
    sub_1D8917FF0(v20 + v23 + v24 * v21, v19, type metadata accessor for CVBundle);
    sub_1D8917FF0(v19, v8, type metadata accessor for CVBundle.BundleType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v25 = sub_1D8B13240();
      (*(*(v25 - 8) + 8))(v8, v25);
LABEL_9:
      sub_1D8918058(v19, v16, type metadata accessor for CVBundle);
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v63 = v22;
      if ((v28 & 1) == 0)
      {
        sub_1D87F4074(0, *(v22 + 16) + 1, 1);
        v22 = v63;
      }

      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D87F4074((v29 > 1), v30 + 1, 1);
        v22 = v63;
      }

      *(v22 + 16) = v30 + 1;
      v31 = v22 + v23 + v30 * v24;
      v16 = v55;
      result = sub_1D8918058(v55, v31, type metadata accessor for CVBundle);
      goto LABEL_4;
    }

    v26 = v54;
    sub_1D8918058(v8, v54, type metadata accessor for CVTrackSnapshot);
    v27 = *(v26 + *(v56 + 24));
    sub_1D89388D8(v26, type metadata accessor for CVTrackSnapshot);
    if (v27 >> 60 != 2)
    {
      goto LABEL_9;
    }

    result = sub_1D89388D8(v19, type metadata accessor for CVBundle);
LABEL_4:
    if (v57 == ++v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t CVBundle.latestEstimate.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVBundle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v2, v13, type metadata accessor for CVBundle.BundleType);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    sub_1D8918058(v13, v10, type metadata accessor for CVTrackSnapshot);
    v17 = *&v10[*(v8 + 24)];

    result = sub_1D89388D8(v10, type metadata accessor for CVTrackSnapshot);
    goto LABEL_5;
  }

  v15 = *(v2 + *(v4 + 20));
  if (*(v15 + 16))
  {
    sub_1D8917FF0(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v7, type metadata accessor for CVBundle);
    CVBundle.latestEstimate.getter(&v19);
    sub_1D89388D8(v7, type metadata accessor for CVBundle);
    v16 = sub_1D8B13240();
    result = (*(*(v16 - 8) + 8))(v13, v16);
    v17 = v19;
LABEL_5:
    *a1 = v17;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8918E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

unint64_t sub_1D8918EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t CVBundle.corners.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVBundle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v2, v13, type metadata accessor for CVBundle.BundleType);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    sub_1D8918058(v13, v10, type metadata accessor for CVTrackSnapshot);
    v31 = *&v10[*(v8 + 24)];
    CVDetection.detection.getter(&v32);
    v26 = v34;
    __swift_project_boxed_opaque_existential_1(&v32, *&v34.f64[0]);
    (*(*&v26.f64[1] + 64))(&v37, *&v26.f64[0], *&v26.f64[1]);
    sub_1D89388D8(v10, type metadata accessor for CVTrackSnapshot);
    result = __swift_destroy_boxed_opaque_existential_1(&v32);
LABEL_16:
    v27 = *v38;
    *a1 = v37;
    a1[1] = v27;
    v28 = *&v38[32];
    a1[2] = *&v38[16];
    a1[3] = v28;
    return result;
  }

  v15 = *(v2 + *(v4 + 20));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    sub_1D8917FF0(v15 + v17, v7, type metadata accessor for CVBundle);
    CVBundle.corners.getter(&v32);
    sub_1D89388D8(v7, type metadata accessor for CVBundle);
    v19 = *(&v32 + 1);
    v18 = *&v32;
    v20 = v33;
    v21 = v36;
    v22 = v16 - 1;
    v30 = v35;
    v29 = v34;
    if (v22)
    {
      v23 = *(v5 + 72);
      v24 = v15 + v23 + v17;
      do
      {
        sub_1D8917FF0(v24, v7, type metadata accessor for CVBundle);
        CVBundle.corners.getter(&v32);
        if (*&v32 < v18)
        {
          v18 = *&v32;
        }

        if (*(&v32 + 1) < v19)
        {
          v19 = *(&v32 + 1);
        }

        if (v20 <= v33)
        {
          v20 = v33;
        }

        v30 = vbslq_s8(vcgeq_f64(v35, v30), v35, v30);
        v29 = vbslq_s8(vcgtq_f64(v29, v34), v34, v29);
        if (v21 <= v36)
        {
          v21 = v36;
        }

        sub_1D89388D8(v7, type metadata accessor for CVBundle);
        v24 += v23;
        --v22;
      }

      while (v22);
    }

    *&v37 = v18;
    *(&v37 + 1) = v19;
    *v38 = v20;
    *&v38[8] = v29;
    *&v38[24] = v30;
    *&v38[40] = v21;
    v25 = sub_1D8B13240();
    result = (*(*(v25 - 8) + 8))(v13, v25);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8919304()
{
  v0 = type metadata accessor for RefinementState(0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - v5;
  result = sub_1D891DBA0();
  v8 = result;
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    while (v10 < *(v8 + 16))
    {
      sub_1D8917FF0(v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v10, v6, type metadata accessor for RefinementState);
      sub_1D8918058(v6, v4, type metadata accessor for RefinementState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {

          return 0;
        }
      }

      else if (EnumCaseMultiPayload)
      {

        sub_1D87A14E4(v4, &qword_1ECA641B8, &unk_1D8B23AC0);
        return 0;
      }

      ++v10;
      result = sub_1D89388D8(v4, type metadata accessor for RefinementState);
      if (v9 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    return 1;
  }

  return result;
}

void *CVBundle.textDetectorResults.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64820, &unk_1D8B2F6E0);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v24 - v4;
  v6 = type metadata accessor for TextDetectorResult(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v30 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CVTrackSnapshot(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D891DE68();
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v9 + 24);
    v16 = *(v10 + 80);
    v24[1] = v13;
    v17 = v13 + ((v16 + 32) & ~v16);
    v28 = *(v10 + 72);
    v29 = v15;
    v27 = (v7 + 56);
    v18 = MEMORY[0x1E69E7CC0];
    v25 = v7;
    v26 = v6;
    do
    {
      sub_1D8917FF0(v17, v12, type metadata accessor for CVTrackSnapshot);
      if (*&v12[v29] >> 60 == 5)
      {
        v19 = swift_projectBox();
        sub_1D8917FF0(v19, v3, type metadata accessor for TextDetectorResult);
        v20 = 0;
      }

      else
      {
        v20 = 1;
      }

      (*v27)(v3, v20, 1, v6);
      sub_1D881F6FC(v3, v5, &qword_1ECA64820, &unk_1D8B2F6E0);
      sub_1D89388D8(v12, type metadata accessor for CVTrackSnapshot);
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_1D87A14E4(v5, &qword_1ECA64820, &unk_1D8B2F6E0);
      }

      else
      {
        sub_1D8918058(v5, v30, type metadata accessor for TextDetectorResult);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1D87C7EE0(0, v18[2] + 1, 1, v18);
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          v18 = sub_1D87C7EE0((v21 > 1), v22 + 1, 1, v18);
        }

        v18[2] = v22 + 1;
        sub_1D8918058(v30, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for TextDetectorResult);
        v6 = v26;
      }

      v17 += v28;
      --v14;
    }

    while (v14);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v18;
}

char *CVBundle.textDetections.getter()
{
  v0 = type metadata accessor for CVTrackSnapshot(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D891DE68();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v0 + 24);
    v7 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v8 = *(v1 + 72);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8917FF0(v7, v3, type metadata accessor for CVTrackSnapshot);
      v10 = *&v3[v6];
      if (v10 >> 60 == 5)
      {

        sub_1D89388D8(v3, type metadata accessor for CVTrackSnapshot);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D87C7F54(0, *(v9 + 2) + 1, 1, v9);
        }

        v12 = *(v9 + 2);
        v11 = *(v9 + 3);
        if (v12 >= v11 >> 1)
        {
          v9 = sub_1D87C7F54((v11 > 1), v12 + 1, 1, v9);
        }

        *(v9 + 2) = v12 + 1;
        *&v9[8 * v12 + 32] = v10;
      }

      else
      {
        sub_1D89388D8(v3, type metadata accessor for CVTrackSnapshot);
      }

      v7 += v8;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

uint64_t sub_1D8919AAC()
{
  v73 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v73);
  v87 = &v70 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for BundleClassification(0);
  v72 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v71 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D8B13240();
  v79 = *(v80 - 8);
  v7 = MEMORY[0x1EEE9AC00](v80);
  v77 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v78 = &v70 - v9;
  v86 = sub_1D8B12F00();
  v10 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AC0, &unk_1D8B36E70);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v70 - v19;
  sub_1D8B13290();
  *(&v81 + 1) = sub_1D88914A8();
  sub_1D8B12EC0();
  v92 = xmmword_1D8B254D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AC8, &unk_1D8B2BE30);
  sub_1D881CF20(&qword_1ECA65AD0, &qword_1ECA65AC8, &unk_1D8B2BE30, MEMORY[0x1E69E5FB8]);
  sub_1D8B12EF0();
  MEMORY[0x1DA71C3B0](v12, v14);
  (*(v10 + 8))(v12, v86);
  v21 = *(v15 + 8);
  v85 = v15 + 8;
  v83 = v21;
  v21(v18, v14);
  v22 = v74;
  CVBundle.corners.getter(&v92);
  Corners.bounds.getter();
  Width = CGRectGetWidth(v95);
  sub_1D881CF20(&qword_1ECA65AD8, &qword_1ECA65AC0, &unk_1D8B36E70, MEMORY[0x1E6968E80]);
  sub_1D8B156F0();
  v23 = v92;
  CVBundle.corners.getter(&v92);
  Corners.bounds.getter();
  Width = CGRectGetHeight(v96);
  v84 = v20;
  v24 = v22;
  v25 = v75;
  v86 = v14;
  sub_1D8B156F0();
  v26 = v92;
  *&v92 = 0;
  *(&v92 + 1) = 0xE000000000000000;
  sub_1D8B16720();

  Width = 23356;
  v91 = 0xE200000000000000;
  sub_1D8917FF0(v24, v25, type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v82 = v23;
  v81 = v26;
  if (EnumCaseMultiPayload == 1)
  {
    v28 = v79;
    v29 = *(v79 + 32);
    v30 = v77;
    v31 = v80;
    v29(v77, v25, v80);
  }

  else
  {
    v32 = v71;
    sub_1D8918058(v25, v71, type metadata accessor for CVTrackSnapshot);
    v28 = v79;
    v30 = v77;
    v31 = v80;
    (*(v79 + 16))(v77, v32, v80);
    sub_1D89388D8(v32, type metadata accessor for CVTrackSnapshot);
    v29 = *(v28 + 32);
  }

  v33 = v78;
  v29(v78, v30, v31);
  v34 = sub_1D8B131E0();
  v36 = v35;
  (*(v28 + 8))(v33, v31);
  v37 = sub_1D881BE2C(8, v34, v36);
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = MEMORY[0x1DA71EF10](v37, v39, v41, v43);
  v46 = v45;

  MEMORY[0x1DA71EFA0](v44, v46);

  MEMORY[0x1DA71EFA0](8285, 0xE200000000000000);
  CVBundle.latestEstimate.getter(&v89);
  v88 = v89;
  CVDetection.detection.getter(&v92);
  v47 = v93;
  v48 = v94;
  __swift_project_boxed_opaque_existential_1(&v92, v93);
  v49 = (*(v48 + 72))(v47, v48);
  v51 = v50;

  __swift_destroy_boxed_opaque_existential_1(&v92);
  MEMORY[0x1DA71EFA0](v49, v51);

  MEMORY[0x1DA71EFA0](5972026, 0xE300000000000000);
  v52 = CVBundle.classifications.getter();
  v53 = v52[2];
  if (v53)
  {
    *&v92 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v53, 0);
    v54 = v92;
    v55 = (*(v72 + 80) + 32) & ~*(v72 + 80);
    v80 = v52;
    v56 = v52 + v55;
    v57 = *(v72 + 72);
    do
    {
      sub_1D8917FF0(v56, v3, type metadata accessor for BundleClassification);
      sub_1D8917FF0(v3, v87, type metadata accessor for BundleClassification.ClassificationType);
      v58 = swift_getEnumCaseMultiPayload();
      if (v58 > 4)
      {
        if (v58 <= 6)
        {
          if (v58 == 5)
          {
            sub_1D89388D8(v87, type metadata accessor for BundleClassification.ClassificationType);
            v60 = 0x6974634174786574;
            v59 = 0xEB00000000736E6FLL;
          }

          else
          {
            v59 = 0xE500000000000000;
            v60 = 0x746E657665;
          }
        }

        else
        {
          v61 = 0x74616C736E617274;
          if (v58 != 8)
          {
            v61 = 0x7A6972616D6D7573;
          }

          if (v58 == 7)
          {
            v60 = 0x756F6C4164616572;
          }

          else
          {
            v60 = v61;
          }

          if (v58 == 7)
          {
            v59 = 0xE900000000000064;
          }

          else
          {
            v59 = 0xE900000000000065;
          }
        }
      }

      else if (v58 <= 1)
      {
        if (v58)
        {
          sub_1D89388D8(v87, type metadata accessor for BundleClassification.ClassificationType);
          v59 = 0xE800000000000000;
          v60 = 0x796669746E656469;
        }

        else
        {
          sub_1D89388D8(v87, type metadata accessor for BundleClassification.ClassificationType);
          v59 = 0xE400000000000000;
          v60 = 1936744813;
        }
      }

      else if (v58 == 2)
      {
        sub_1D89388D8(v87, type metadata accessor for BundleClassification.ClassificationType);
        v59 = 0xE700000000000000;
        v60 = 0x65646F63726162;
      }

      else if (v58 == 3)
      {
        v59 = 0xE600000000000000;
        v60 = 0x686372616573;
      }

      else
      {
        sub_1D89388D8(v87, type metadata accessor for BundleClassification.ClassificationType);
        v59 = 0xE400000000000000;
        v60 = 1667459446;
      }

      sub_1D89388D8(v3, type metadata accessor for BundleClassification);
      *&v92 = v54;
      v63 = *(v54 + 16);
      v62 = *(v54 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1D87F3F54((v62 > 1), v63 + 1, 1);
        v54 = v92;
      }

      *(v54 + 16) = v63 + 1;
      v64 = v54 + 16 * v63;
      *(v64 + 32) = v60;
      *(v64 + 40) = v59;
      v56 += v57;
      --v53;
    }

    while (v53);
  }

  else
  {

    v54 = MEMORY[0x1E69E7CC0];
  }

  *&v92 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
  sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
  v65 = sub_1D8B15810();
  v67 = v66;

  MEMORY[0x1DA71EFA0](v65, v67);

  MEMORY[0x1DA71EFA0](0x203A7728203B5DLL, 0xE700000000000000);
  MEMORY[0x1DA71EFA0](v82, *(&v82 + 1));

  MEMORY[0x1DA71EFA0](0x203A68202CLL, 0xE500000000000000);
  MEMORY[0x1DA71EFA0](v81, *(&v81 + 1));

  MEMORY[0x1DA71EFA0](15913, 0xE200000000000000);
  v68 = Width;
  v83(v84, v86);
  return v68;
}

double CVBundle.bounds.getter()
{
  CVBundle.corners.getter(v1);
  Corners.bounds.getter();
  return result;
}

uint64_t sub_1D891A6E8()
{
  v0 = type metadata accessor for CVTrackSnapshot(0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - v5;
  result = sub_1D891DE68();
  v8 = result;
  v9 = *(result + 16);
  if (v9)
  {
    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    v18 = v4;
    v19 = v0;
    while (v10 < *(v8 + 16))
    {
      v12 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v13 = *(v1 + 72);
      sub_1D8917FF0(v8 + v12 + v13 * v10, v6, type metadata accessor for CVTrackSnapshot);
      if (*&v6[*(v0 + 20)] >> 60 == 2)
      {
        sub_1D8918058(v6, v4, type metadata accessor for CVTrackSnapshot);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v11;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F4628(0, *(v11 + 16) + 1, 1);
          v11 = v20;
        }

        v16 = *(v11 + 16);
        v15 = *(v11 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1D87F4628((v15 > 1), v16 + 1, 1);
          v11 = v20;
        }

        *(v11 + 16) = v16 + 1;
        v4 = v18;
        result = sub_1D8918058(v18, v11 + v12 + v16 * v13, type metadata accessor for CVTrackSnapshot);
        v0 = v19;
      }

      else
      {
        result = sub_1D89388D8(v6, type metadata accessor for CVTrackSnapshot);
      }

      if (v9 == ++v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_13:

    return v11;
  }

  return result;
}

char *sub_1D891A92C()
{
  v0 = type metadata accessor for CVTrackSnapshot(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D891DE68();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v0 + 24);
    v7 = v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v8 = *(v1 + 72);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8917FF0(v7, v3, type metadata accessor for CVTrackSnapshot);
      v10 = *&v3[v6];
      if (v10 >> 60 == 9)
      {

        sub_1D89388D8(v3, type metadata accessor for CVTrackSnapshot);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D87C7F54(0, *(v9 + 2) + 1, 1, v9);
        }

        v12 = *(v9 + 2);
        v11 = *(v9 + 3);
        if (v12 >= v11 >> 1)
        {
          v9 = sub_1D87C7F54((v11 > 1), v12 + 1, 1, v9);
        }

        *(v9 + 2) = v12 + 1;
        *&v9[8 * v12 + 32] = v10;
      }

      else
      {
        sub_1D89388D8(v3, type metadata accessor for CVTrackSnapshot);
      }

      v7 += v8;
      --v5;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v9;
}

uint64_t CVBundle.groupType.getter@<X0>(BOOL *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v2, v6, type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = sub_1D8B13240();
    result = (*(*(v9 - 8) + 8))(v6, v9);
  }

  else
  {
    result = sub_1D89388D8(v6, type metadata accessor for CVBundle.BundleType);
  }

  *a1 = EnumCaseMultiPayload != 1;
  return result;
}

char sub_1D891AC38()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA642F0, &qword_1D8B2BF00);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v27 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v6 = *(v38 - 8);
  v7 = MEMORY[0x1EEE9AC00](v38);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v27 - v10;
  v11 = type metadata accessor for CVTrackSnapshot(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D891DE68();
  v36 = *(v14 + 16);
  if (!v36)
  {

    LOBYTE(v16) = MEMORY[0x1E69E7CC0];
LABEL_21:
    LOBYTE(v14) = v16;
    return v14;
  }

  v15 = 0;
  v34 = *(v11 + 24);
  v35 = v12;
  v33 = v14 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v32 = (v6 + 56);
  v30 = v5;
  v31 = (v6 + 48);
  v16 = MEMORY[0x1E69E7CC0];
  v28 = v9;
  v29 = v6;
  v17 = v14;
  v27 = v14;
  v18 = v38;
  while (v15 < *(v17 + 16))
  {
    v19 = v39;
    sub_1D8917FF0(v33 + *(v35 + 72) * v15, v39, type metadata accessor for CVTrackSnapshot);
    if (*(v19 + v34) >> 60)
    {
      goto LABEL_12;
    }

    v20 = swift_projectBox();
    LOBYTE(v14) = sub_1D87A0E38(v20, v9, &qword_1ECA67750, &unk_1D8B1E0C0);
    v21 = *&v9[*(v18 + 44)];
    if (!*(v21 + 16))
    {
      goto LABEL_23;
    }

    LOBYTE(v14) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v21 + 32));
    if (v40 == 181)
    {
      goto LABEL_24;
    }

    if (v40 != 160)
    {
      sub_1D87A14E4(v9, &qword_1ECA67750, &unk_1D8B1E0C0);
LABEL_12:
      v22 = v9;
      (*v32)(v3, 1, 1, v18);
      goto LABEL_13;
    }

    v22 = v9;
    sub_1D881F6FC(v9, v3, &qword_1ECA67750, &unk_1D8B1E0C0);
    (*v32)(v3, 0, 1, v18);
LABEL_13:
    v23 = v30;
    sub_1D881F6FC(v3, v30, &qword_1ECA642F0, &qword_1D8B2BF00);
    sub_1D89388D8(v39, type metadata accessor for CVTrackSnapshot);
    if ((*v31)(v23, 1, v18) == 1)
    {
      LOBYTE(v14) = sub_1D87A14E4(v23, &qword_1ECA642F0, &qword_1D8B2BF00);
      v18 = v38;
      v9 = v22;
    }

    else
    {
      sub_1D881F6FC(v23, v37, &qword_1ECA67750, &unk_1D8B1E0C0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1D87C8C58(0, v16[2] + 1, 1, v16);
      }

      v25 = v16[2];
      v24 = v16[3];
      v18 = v38;
      if (v25 >= v24 >> 1)
      {
        v16 = sub_1D87C8C58((v24 > 1), v25 + 1, 1, v16);
      }

      v16[2] = v25 + 1;
      LOBYTE(v14) = sub_1D881F6FC(v37, v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25, &qword_1ECA67750, &unk_1D8B1E0C0);
      v17 = v27;
      v9 = v28;
    }

    if (v36 == ++v15)
    {

      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return v14;
}

float CVBundle.score.getter()
{
  v1 = type metadata accessor for CVBundle(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v0, v10, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v0 + *(v1 + 20));
    v12 = *(v11 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (v12)
    {
      v24 = MEMORY[0x1E69E7CC0];
      sub_1D87F47F0(0, v12, 0);
      v13 = v24;
      v14 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v15 = *(v2 + 72);
      do
      {
        sub_1D8917FF0(v14, v4, type metadata accessor for CVBundle);
        v16 = CVBundle.score.getter();
        sub_1D89388D8(v4, type metadata accessor for CVBundle);
        v24 = v13;
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1D87F47F0((v17 > 1), v18 + 1, 1);
          v13 = v24;
        }

        *(v13 + 16) = v18 + 1;
        *(v13 + 4 * v18 + 32) = v16;
        v14 += v15;
        --v12;
      }

      while (v12);
    }

    v20 = sub_1D8918EC0(v13);

    if ((v20 & 0x100000000) != 0)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = *&v20;
    }

    v21 = sub_1D8B13240();
    (*(*(v21 - 8) + 8))(v10, v21);
  }

  else
  {
    sub_1D8918058(v10, v7, type metadata accessor for CVTrackSnapshot);
    v19 = *&v7[*(v5 + 36)];
    sub_1D89388D8(v7, type metadata accessor for CVTrackSnapshot);
  }

  return v19;
}

uint64_t sub_1D891B418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CVBundle(0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1E69E7CD0];
  v18 = MEMORY[0x1E69E7CD0];
  v10 = *(a1 + *(v9 + 28));
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v13 = *(v5 + 72);
    do
    {
      sub_1D8917FF0(v12, v7, type metadata accessor for CVBundle);
      v14 = sub_1D89011A0(v7);
      if (v14)
      {
        v15 = sub_1D89DF91C(v7, a2, v14);

        sub_1D8AA4AE0(v15);
        v16 = sub_1D891B418(v7, a2);
        sub_1D8AA4AE0(v16);
      }

      sub_1D89388D8(v7, type metadata accessor for CVBundle);
      v12 += v13;
      --v11;
    }

    while (v11);
    return v18;
  }

  return result;
}

char *CVBundle.allDetections(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v4 = type metadata accessor for CVTrackSnapshot(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D891DE68();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v4 + 24);
    v11 = *(v5 + 80);
    v20[1] = v8;
    v12 = v8 + ((v11 + 32) & ~v11);
    v13 = *(v5 + 72);
    v14 = MEMORY[0x1E69E7CC0];
    v20[2] = a2;
    do
    {
      sub_1D8917FF0(v12, v7, type metadata accessor for CVTrackSnapshot);
      v15 = *&v7[v10];
      v21 = v15;

      v16 = a1(&v21);
      sub_1D89388D8(v7, type metadata accessor for CVTrackSnapshot);
      if (v16)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1D87C7F54(0, *(v14 + 2) + 1, 1, v14);
        }

        v18 = *(v14 + 2);
        v17 = *(v14 + 3);
        if (v18 >= v17 >> 1)
        {
          v14 = sub_1D87C7F54((v17 > 1), v18 + 1, 1, v14);
        }

        *(v14 + 2) = v18 + 1;
        *&v14[8 * v18 + 32] = v15;
      }

      else
      {
      }

      v12 += v13;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v14;
}

void sub_1D891B79C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(a1, v9, type metadata accessor for BundleClassification.ClassificationType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v21 = *(v3 + *(type metadata accessor for BundleManager.Configuration(0) + 44));
        *(a3 + 24) = &type metadata for VisualLookupClassifier;
        *(a3 + 32) = &off_1F5432A50;
        *a3 = v21;
LABEL_21:
        sub_1D89388D8(v9, type metadata accessor for BundleClassification.ClassificationType);
        return;
      }

      sub_1D89388D8(v9, type metadata accessor for BundleClassification.ClassificationType);
      v14 = &type metadata for MapsResultsClassifier;
      v15 = &off_1F542E438;
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          v11 = *(v3 + 13);
          *(a3 + 24) = &type metadata for SearchClassifier;
          *(a3 + 32) = &off_1F542FD90;
          *a3 = a2;
          *(a3 + 8) = v11;

          return;
        }

        *(a3 + 24) = &type metadata for VerticalContentClassifier;
        *(a3 + 32) = &off_1F54329B8;
        goto LABEL_21;
      }

      sub_1D89388D8(v9, type metadata accessor for BundleClassification.ClassificationType);
      v14 = &type metadata for BarcodeClassifier;
      v15 = &off_1F542E630;
    }

    *(a3 + 24) = v14;
    *(a3 + 32) = v15;
    return;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v12 = &type metadata for ReadAloudClassifier;
      v13 = &off_1F542FCF0;
    }

    else
    {
      if (EnumCaseMultiPayload != 8)
      {
        v17 = *(type metadata accessor for BundleManager.Configuration(0) + 32);
        v18 = type metadata accessor for SummarizeClassifier(0);
        *(a3 + 24) = v18;
        *(a3 + 32) = &off_1F54300C0;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
        v20 = sub_1D8B15340();
        (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v3 + v17, v20);
        *(boxed_opaque_existential_1 + *(v18 + 20)) = 1;
        return;
      }

      v12 = &type metadata for TranslateClassifier;
      v13 = &off_1F5430290;
    }

    *(a3 + 24) = v12;
    *(a3 + 32) = v13;
    *a3 = 1;
    return;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_1D89388D8(v9, type metadata accessor for BundleClassification.ClassificationType);
    v16 = *(v3 + *(type metadata accessor for BundleManager.Configuration(0) + 36));
    *(a3 + 24) = &type metadata for TextActionsClassifier;
    *(a3 + 32) = &off_1F54300E0;
    *a3 = v16;
  }

  else
  {
    v22 = *(v3 + 12);
    *(a3 + 24) = &type metadata for EventClassifier;
    *(a3 + 32) = &off_1F542D750;
    *a3 = v22;
  }
}

uint64_t CVBundle.workState.getter@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for CVBundle(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v1, v12, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *(v1 + *(v3 + 20));
    v14 = *(v13 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v24 = a1;
      v26 = MEMORY[0x1E69E7CC0];
      sub_1D87F42A4(0, v14, 0);
      v15 = v26;
      v16 = v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v17 = *(v4 + 72);
      do
      {
        sub_1D8917FF0(v16, v6, type metadata accessor for CVBundle);
        CVBundle.workState.getter(&v25);
        sub_1D89388D8(v6, type metadata accessor for CVBundle);
        v18 = v25;
        v26 = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D87F42A4((v19 > 1), v20 + 1, 1);
          v15 = v26;
        }

        *(v15 + 16) = v20 + 1;
        *(v15 + v20 + 32) = v18;
        v16 += v17;
        --v14;
      }

      while (v14);
      a1 = v24;
    }

    sub_1D891FD78(v15, &v27);

    v23 = sub_1D8B13240();
    result = (*(*(v23 - 8) + 8))(v12, v23);
    v21 = v27;
  }

  else
  {
    sub_1D8918058(v12, v9, type metadata accessor for CVTrackSnapshot);
    v21 = v9[*(v7 + 40)];
    result = sub_1D89388D8(v9, type metadata accessor for CVTrackSnapshot);
  }

  *a1 = v21;
  return result;
}

void sub_1D891BDC8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1852270963 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D891BE50(uint64_t a1)
{
  v2 = sub_1D893FBBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D891BE8C(uint64_t a1)
{
  v2 = sub_1D893FBBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D891BEC8(uint64_t a1)
{
  v2 = sub_1D893FC10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D891BF04(uint64_t a1)
{
  v2 = sub_1D893FC10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BundleGroupType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65710, &qword_1D8B2ABA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65718, &qword_1D8B2ABA8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D893FBBC();
  sub_1D8B16DD0();
  sub_1D893FC10();
  sub_1D8B16A40();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t BundleGroupType.hashValue.getter()
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](0);
  return sub_1D8B16D80();
}

uint64_t BundleGroupType.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65730, &qword_1D8B2ABB0);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65738, &unk_1D8B2ABB8);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D893FBBC();
  sub_1D8B16DB0();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1D8B16A20();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if (sub_1D87E3874() || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1D8B16770();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
    *v16 = &type metadata for BundleGroupType;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_1D893FC10();
  sub_1D8B16950();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1D891C4D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A20, &qword_1D8B2BDC0);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v36 = &v25 - v3;
  v4 = sub_1D8B13240();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A28, &qword_1D8B2BDC8);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v25 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v25);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A30, &qword_1D8B2BDD0);
  v14 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8943594();
  sub_1D8B16DD0();
  sub_1D8917FF0(v32, v13, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v28;
    v18 = v29;
    (*(v28 + 32))(v34, v13, v29);
    v40 = 1;
    sub_1D89435E8();
    v19 = v33;
    sub_1D8B16A40();
    v39 = 0;
    sub_1D893FD6C(&qword_1ECA637D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v20 = v31;
    v21 = v35;
    sub_1D8B16AE0();
    if (!v21)
    {
      v38 = 1;
      sub_1D894363C();
      sub_1D8B16AE0();
    }

    (*(v30 + 8))(v36, v20);
    (*(v17 + 8))(v34, v18);
    return (*(v14 + 8))(v16, v19);
  }

  else
  {
    sub_1D8918058(v13, v10, type metadata accessor for CVTrackSnapshot);
    v37 = 0;
    sub_1D8943690();
    v23 = v33;
    sub_1D8B16A40();
    sub_1D893FD6C(&qword_1ECA65A58, type metadata accessor for CVTrackSnapshot, &protocol conformance descriptor for CVTrackSnapshot);
    v24 = v27;
    sub_1D8B16AE0();
    (*(v26 + 8))(v8, v24);
    sub_1D89388D8(v10, type metadata accessor for CVTrackSnapshot);
    return (*(v14 + 8))(v16, v23);
  }
}

uint64_t sub_1D891CA54(uint64_t a1)
{
  v3 = sub_1D8B13240();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v1, v12, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v12, v3);
    MEMORY[0x1DA720210](1);
    sub_1D893FD6C(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D8B157A0();
    MEMORY[0x1DA720210](0);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    sub_1D8918058(v12, v9, type metadata accessor for CVTrackSnapshot);
    MEMORY[0x1DA720210](0);
    CVTrackSnapshot.hash(into:)(a1);
    return sub_1D89388D8(v9, type metadata accessor for CVTrackSnapshot);
  }
}

uint64_t sub_1D891CCBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A60, &qword_1D8B2BDD8);
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A68, &qword_1D8B2BDE0);
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65A70, &qword_1D8B2BDE8);
  v48 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v8 = &v38 - v7;
  v9 = type metadata accessor for CVBundle.BundleType(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v38 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v38 - v16;
  v18 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D8943594();
  v19 = v50;
  sub_1D8B16DB0();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v40 = v15;
  v41 = v12;
  v20 = v6;
  v22 = v46;
  v21 = v47;
  v50 = v9;
  v23 = v49;
  v24 = v45;
  v25 = sub_1D8B16A20();
  v26 = (2 * *(v25 + 16)) | 1;
  v52 = v25;
  v53 = v25 + 32;
  v54 = 0;
  v55 = v26;
  v27 = sub_1D881F7CC();
  if (v27 == 2 || v54 != v55 >> 1)
  {
    v29 = sub_1D8B16770();
    swift_allocError();
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
    *v31 = v50;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x1E69E6AF8], v29);
    swift_willThrow();
    (*(v48 + 8))(v8, v24);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  if (v27)
  {
    v56 = 1;
    sub_1D89435E8();
    sub_1D8B16950();
    v28 = v48;
    v39 = v17;
    sub_1D8B13240();
    v56 = 0;
    sub_1D893FD6C(&unk_1ECA689C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1D8B16A10();
    v56 = 1;
    sub_1D89436E4();
    sub_1D8B16A10();
    v38 = 0;
    (*(v44 + 8))(v22, v21);
    (*(v28 + 8))(v8, v24);
    swift_unknownObjectRelease();
    v36 = v41;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v56 = 0;
    sub_1D8943690();
    v33 = v20;
    sub_1D8B16950();
    v34 = v48;
    v39 = v17;
    type metadata accessor for CVTrackSnapshot(0);
    sub_1D893FD6C(&qword_1ECA65A80, type metadata accessor for CVTrackSnapshot, &protocol conformance descriptor for CVTrackSnapshot);
    v36 = v40;
    v35 = v43;
    sub_1D8B16A10();
    v38 = 0;
    (*(v42 + 8))(v33, v35);
    (*(v34 + 8))(v8, v24);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v23 = v49;
  }

  v37 = v39;
  sub_1D8918058(v36, v39, type metadata accessor for CVBundle.BundleType);
  sub_1D8918058(v37, v23, type metadata accessor for CVBundle.BundleType);
  return __swift_destroy_boxed_opaque_existential_1(v51);
}

uint64_t sub_1D891D444(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65710, &qword_1D8B2ABA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65718, &qword_1D8B2ABA8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D893FBBC();
  sub_1D8B16DD0();
  sub_1D893FC10();
  sub_1D8B16A40();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D891D61C()
{
  if (*v0)
  {
    return 0x70756F7267;
  }

  else
  {
    return 1701080942;
  }
}

void sub_1D891D64C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080942 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D8B16BA0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D8B16BA0();

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
}

uint64_t sub_1D891D724(uint64_t a1)
{
  v2 = sub_1D8943594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D891D760(uint64_t a1)
{
  v2 = sub_1D8943594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D891D79C()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

void sub_1D891D7B8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D8B16BA0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D8B16BA0();

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
}

uint64_t sub_1D891D884(uint64_t a1)
{
  v2 = sub_1D89435E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D891D8C0(uint64_t a1)
{
  v2 = sub_1D89435E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D891D8FC(uint64_t a1)
{
  v2 = sub_1D8943690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D891D938(uint64_t a1)
{
  v2 = sub_1D8943690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVBundle.refinementState(of:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + *(type metadata accessor for CVBundle(0) + 28));
  BundleClassification.ClassificationType.asEmpty.getter(v5);
  if (*(v6 + 16) && (v7 = sub_1D87EF6AC(v5), (v8 & 1) != 0))
  {
    v9 = v7;
    v10 = *(v6 + 56);
    v11 = type metadata accessor for RefinementState(0);
    v12 = *(v11 - 8);
    sub_1D8917FF0(v10 + *(v12 + 72) * v9, a1, type metadata accessor for RefinementState);
    sub_1D89388D8(v5, type metadata accessor for BundleClassification.ClassificationType);
    return (*(v12 + 56))(a1, 0, 1, v11);
  }

  else
  {
    sub_1D89388D8(v5, type metadata accessor for BundleClassification.ClassificationType);
    v14 = type metadata accessor for RefinementState(0);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }
}

void *sub_1D891DBA0()
{
  v1 = *(v0 + *(type metadata accessor for CVBundle(0) + 28));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D87F3704(*(v1 + 16), 0);
  v4 = *(type metadata accessor for RefinementState(0) - 8);
  v5 = sub_1D8816AD8(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);
  v6 = v8;

  sub_1D87977A0(v6);
  if (v5 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

void sub_1D891DCA0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v19[2] = a1[2];
  v19[3] = v6;
  v19[4] = a1[4];
  v7 = a1[1];
  v19[0] = *a1;
  v19[1] = v7;
  v8 = *(v3 + *(type metadata accessor for CVBundle(0) + 28));
  v16[2] = a2;
  v16[3] = a3;
  v17 = v3;
  v18 = v19;

  sub_1D8916C7C(sub_1D8943B78, v16, v8);
  v10 = v9;

  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = MEMORY[0x1E69E7CD0];
    while (v12 < *(v10 + 16))
    {
      v14 = v12 + 1;

      v13 = sub_1D8917354(v15, v13);
      v12 = v14;
      if (v11 == v14)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1D891DDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X4>, void *a5@<X8>)
{
  sub_1D891B79C(a1, a2, v14);
  v8 = v15;
  v9 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v10 = a4[3];
  v13[2] = a4[2];
  v13[3] = v10;
  v13[4] = a4[4];
  v11 = a4[1];
  v13[0] = *a4;
  v13[1] = v11;
  *a5 = (*(v9 + 24))(a3, v13, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_1D891DE68()
{
  v1 = v0;
  v2 = type metadata accessor for CVBundle(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CVTrackSnapshot(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v1, v8, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D89388D8(v8, type metadata accessor for CVBundle.BundleType);
    v13 = *(v1 + *(v2 + 20));
    v14 = *(v13 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      v55 = v2;
      v56 = v1;
      v57 = MEMORY[0x1E69E7CC0];
      sub_1D87F4318(0, v14, 0);
      v15 = v57;
      v16 = v13 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v17 = *(v3 + 72);
      do
      {
        sub_1D8917FF0(v16, v5, type metadata accessor for CVBundle);
        v18 = sub_1D891DE68();
        sub_1D89388D8(v5, type metadata accessor for CVBundle);
        v57 = v15;
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D87F4318((v19 > 1), v20 + 1, 1);
          v15 = v57;
        }

        *(v15 + 16) = v20 + 1;
        *(v15 + 8 * v20 + 32) = v18;
        v16 += v17;
        --v14;
      }

      while (v14);
      v2 = v55;
      v1 = v56;
    }

    sub_1D893A8A0(v15);
    v33 = v32;

    v34 = *(v1 + *(v2 + 24));
    v35 = *(v34 + 16);
    v36 = MEMORY[0x1E69E7CC0];
    if (v35)
    {
      v57 = MEMORY[0x1E69E7CC0];
      sub_1D87F4318(0, v35, 0);
      v36 = v57;
      v37 = v34 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v38 = *(v3 + 72);
      do
      {
        sub_1D8917FF0(v37, v5, type metadata accessor for CVBundle);
        v39 = sub_1D891DE68();
        sub_1D89388D8(v5, type metadata accessor for CVBundle);
        v57 = v36;
        v41 = *(v36 + 16);
        v40 = *(v36 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1D87F4318((v40 > 1), v41 + 1, 1);
          v36 = v57;
        }

        *(v36 + 16) = v41 + 1;
        *(v36 + 8 * v41 + 32) = v39;
        v37 += v38;
        --v35;
      }

      while (v35);
    }

    v57 = v33;
    sub_1D88F42F8(v36);
  }

  else
  {
    sub_1D8918058(v8, v12, type metadata accessor for CVTrackSnapshot);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633E0, &qword_1D8B23010);
    v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D8B1AB90;
    v54 = v12;
    sub_1D8917FF0(v12, v22 + v21, type metadata accessor for CVTrackSnapshot);
    v23 = *(v1 + *(v2 + 20));
    v24 = *(v23 + 16);
    v25 = MEMORY[0x1E69E7CC0];
    if (v24)
    {
      v55 = v2;
      v56 = v1;
      v57 = MEMORY[0x1E69E7CC0];
      sub_1D87F4318(0, v24, 0);
      v25 = v57;
      v26 = v3;
      v27 = v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v53 = v26;
      v28 = *(v26 + 72);
      do
      {
        sub_1D8917FF0(v27, v5, type metadata accessor for CVBundle);
        v29 = sub_1D891DE68();
        sub_1D89388D8(v5, type metadata accessor for CVBundle);
        v57 = v25;
        v31 = *(v25 + 16);
        v30 = *(v25 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1D87F4318((v30 > 1), v31 + 1, 1);
          v25 = v57;
        }

        *(v25 + 16) = v31 + 1;
        *(v25 + 8 * v31 + 32) = v29;
        v27 += v28;
        --v24;
      }

      while (v24);
      v3 = v53;
      v2 = v55;
      v1 = v56;
    }

    v57 = v22;
    sub_1D88F42F8(v25);
    v42 = v57;
    v43 = *(v1 + *(v2 + 24));
    v44 = *(v43 + 16);
    v45 = MEMORY[0x1E69E7CC0];
    if (v44)
    {
      v57 = MEMORY[0x1E69E7CC0];
      sub_1D87F4318(0, v44, 0);
      v45 = v57;
      v46 = v43 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v47 = *(v3 + 72);
      do
      {
        sub_1D8917FF0(v46, v5, type metadata accessor for CVBundle);
        v48 = sub_1D891DE68();
        sub_1D89388D8(v5, type metadata accessor for CVBundle);
        v57 = v45;
        v50 = *(v45 + 16);
        v49 = *(v45 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_1D87F4318((v49 > 1), v50 + 1, 1);
          v45 = v57;
        }

        *(v45 + 16) = v50 + 1;
        *(v45 + 8 * v50 + 32) = v48;
        v46 += v47;
        --v44;
      }

      while (v44);
    }

    v57 = v42;
    sub_1D88F42F8(v45);
    sub_1D89388D8(v54, type metadata accessor for CVTrackSnapshot);
  }

  return v57;
}

unint64_t sub_1D891E4BC()
{
  v1 = 1701869940;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000028;
  }

  if (*v0)
  {
    v1 = 0x6E6572646C696863;
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

uint64_t sub_1D891E534@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D89403D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D891E55C(uint64_t a1)
{
  v2 = sub_1D893FC64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D891E598(uint64_t a1)
{
  v2 = sub_1D893FC64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVBundle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65740, &qword_1D8B2ABC8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D893FC64();
  sub_1D8B16DD0();
  LOBYTE(v13) = 0;
  type metadata accessor for CVBundle.BundleType(0);
  sub_1D893FD6C(&qword_1ECA65750, type metadata accessor for CVBundle.BundleType, &unk_1D8B2BCA8);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for CVBundle(0);
    v13 = *(v3 + v9[5]);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65758, &qword_1D8B2ABD0);
    sub_1D893FCB8();
    sub_1D8B16AE0();
    v13 = *(v3 + v9[6]);
    v12 = 2;
    sub_1D8B16AE0();
    v13 = *(v3 + v9[7]);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65768, &qword_1D8B2ABD8);
    sub_1D893FDB4();
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

void CVBundle.hash(into:)(uint64_t a1)
{
  sub_1D891CA54(a1);
  v3 = type metadata accessor for CVBundle(0);
  sub_1D87CF97C(a1, *(v1 + v3[5]));
  sub_1D87CF97C(a1, *(v1 + v3[6]));
  v4 = *(v1 + v3[7]);

  sub_1D893983C(a1, v4);
}

uint64_t CVBundle.hashValue.getter()
{
  sub_1D8B16D20();
  sub_1D891CA54(v3);
  v1 = type metadata accessor for CVBundle(0);
  sub_1D87CF97C(v3, *(v0 + v1[5]));
  sub_1D87CF97C(v3, *(v0 + v1[6]));
  sub_1D893983C(v3, *(v0 + v1[7]));
  return sub_1D8B16D80();
}

void CVBundle.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v4);
  v18 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65780, &qword_1D8B2ABE0);
  v17 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = &v16 - v6;
  v8 = type metadata accessor for CVBundle(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D893FC64();
  v20 = v7;
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = v17;
    v12 = v10;
    LOBYTE(v22) = 0;
    sub_1D893FD6C(&qword_1ECA65788, type metadata accessor for CVBundle.BundleType, &unk_1D8B2BC80);
    v14 = v18;
    v13 = v19;
    sub_1D8B16A10();
    sub_1D8918058(v14, v12, type metadata accessor for CVBundle.BundleType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65758, &qword_1D8B2ABD0);
    v21 = 1;
    sub_1D893FEA0();
    sub_1D8B16A10();
    *(v12 + v8[5]) = v22;
    v21 = 2;
    v15 = v20;
    sub_1D8B16A10();
    *(v12 + v8[6]) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65768, &qword_1D8B2ABD8);
    v21 = 3;
    sub_1D893FF54();
    sub_1D8B16A10();
    (*(v11 + 8))(v15, v13);
    *(v12 + v8[7]) = v22;
    sub_1D8917FF0(v12, v16, type metadata accessor for CVBundle);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_1D89388D8(v12, type metadata accessor for CVBundle);
  }
}

uint64_t sub_1D891EDBC(int *a1)
{
  sub_1D8B16D20();
  sub_1D891CA54(v4);
  sub_1D87CF97C(v4, *(v1 + a1[5]));
  sub_1D87CF97C(v4, *(v1 + a1[6]));
  sub_1D893983C(v4, *(v1 + a1[7]));
  return sub_1D8B16D80();
}

void sub_1D891EE30(uint64_t a1, int *a2)
{
  sub_1D891CA54(a1);
  sub_1D87CF97C(a1, *(v2 + a2[5]));
  sub_1D87CF97C(a1, *(v2 + a2[6]));
  v5 = *(v2 + a2[7]);

  sub_1D893983C(a1, v5);
}

uint64_t sub_1D891EE9C(uint64_t a1, int *a2)
{
  sub_1D8B16D20();
  sub_1D891CA54(v5);
  sub_1D87CF97C(v5, *(v2 + a2[5]));
  sub_1D87CF97C(v5, *(v2 + a2[6]));
  sub_1D893983C(v5, *(v2 + a2[7]));
  return sub_1D8B16D80();
}

void CVBundle.modifyWithRotation(_:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v53 = a2;
  v5 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for CVBundle.BundleType(0);
  v7 = MEMORY[0x1EEE9AC00](v51);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v47 - v9;
  v10 = type metadata accessor for CVBundle(0);
  v11 = *(v10 - 1);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v47 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v47 - v19;
  v21 = *a1;
  v22 = *(v2 + *(v18 + 20));
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  v54 = v18;
  v55 = v2;
  if (v23)
  {
    v56 = v14;
    v58 = MEMORY[0x1E69E7CC0];
    sub_1D87F4074(0, v23, 0);
    v24 = v58;
    v25 = v11;
    v26 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v27 = v22 + v26;
    v48 = v25;
    v28 = *(v25 + 72);
    do
    {
      sub_1D8917FF0(v27, v17, type metadata accessor for CVBundle);
      v57 = v21;
      CVBundle.modifyWithRotation(_:)(&v57, v20);
      sub_1D89388D8(v17, type metadata accessor for CVBundle);
      v58 = v24;
      v30 = *(v24 + 16);
      v29 = *(v24 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1D87F4074((v29 > 1), v30 + 1, 1);
        v24 = v58;
      }

      *(v24 + 16) = v30 + 1;
      sub_1D8918058(v20, v24 + v26 + v30 * v28, type metadata accessor for CVBundle);
      v27 += v28;
      --v23;
    }

    while (v23);
    v10 = v54;
    v3 = v55;
    v14 = v56;
    v11 = v48;
  }

  v31 = *(v3 + v10[6]);
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v58 = MEMORY[0x1E69E7CC0];
    sub_1D87F4074(0, v32, 0);
    v33 = v58;
    v56 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v34 = v31 + v56;
    v35 = *(v11 + 72);
    do
    {
      sub_1D8917FF0(v34, v17, type metadata accessor for CVBundle);
      v57 = v21;
      CVBundle.modifyWithRotation(_:)(&v57, v14);
      sub_1D89388D8(v17, type metadata accessor for CVBundle);
      v58 = v33;
      v36 = v14;
      v38 = *(v33 + 16);
      v37 = *(v33 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_1D87F4074((v37 > 1), v38 + 1, 1);
        v33 = v58;
      }

      *(v33 + 16) = v38 + 1;
      sub_1D8918058(v36, v33 + v56 + v38 * v35, type metadata accessor for CVBundle);
      v34 += v35;
      --v32;
      v14 = v36;
    }

    while (v32);
    v10 = v54;
    v3 = v55;
  }

  v39 = v50;
  sub_1D8917FF0(v3, v50, type metadata accessor for CVBundle.BundleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v41 = v52;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1D8917FF0(v3, v52, type metadata accessor for CVBundle.BundleType);
    v42 = sub_1D8B13240();
    (*(*(v42 - 8) + 8))(v39, v42);
  }

  else
  {
    v43 = v39;
    v44 = v49;
    sub_1D8918058(v43, v49, type metadata accessor for CVTrackSnapshot);
    v58 = v21;
    sub_1D8AC0ACC(&v58, v41);
    sub_1D89388D8(v44, type metadata accessor for CVTrackSnapshot);
    swift_storeEnumTagMultiPayload();
  }

  v45 = *(v3 + v10[7]);
  v46 = v53;
  sub_1D8918058(v41, v53, type metadata accessor for CVBundle.BundleType);
  *(v46 + v10[5]) = v24;
  *(v46 + v10[6]) = v33;
  *(v46 + v10[7]) = v45;
}

BOOL CVBundle.isFullScreenBundle.getter()
{
  CVBundle.latestDetection.getter(&v3);
  if (v3 >> 60 != 11)
  {

    return 0;
  }

  v0 = type metadata accessor for SyntheticDetectionResult(0);
  if (*(swift_projectBox() + *(v0 + 24)))
  {
    v1 = sub_1D8B16BA0();

    return (v1 & 1) != 0;
  }

  return 1;
}

double sub_1D891F55C()
{
  CVBundle.corners.getter(v1);
  Corners.bounds.getter();
  return result;
}

char *sub_1D891F590(double a1)
{
  v41 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v41);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for CVTrackSnapshot(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D891DE68();
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = *(v5 + 80);
    v11 = MEMORY[0x1E69E7CC0];
    v12 = *(v4 + 20);
    v39 = v8;
    v40 = v12;
    v13 = v8 + ((v10 + 32) & ~v10);
    v14 = *(v5 + 72);
    do
    {
      sub_1D8917FF0(v13, v7, type metadata accessor for CVTrackSnapshot);
      switch(*&v7[v12] >> 60)
      {
        case 1:
          v28 = type metadata accessor for GroundedParseDetectorResult(0);
          v16 = swift_projectBox();
          v43 = v28;
          v44 = sub_1D893FD6C(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_17;
        case 2:
          v23 = type metadata accessor for MetaDetectionResult(0);
          v16 = swift_projectBox();
          v43 = v23;
          v44 = sub_1D893FD6C(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for MetaDetectionResult;
          goto LABEL_17;
        case 3:
        case 8:
          v15 = type metadata accessor for ObjectDetectorResult(0);
          v16 = swift_projectBox();
          v43 = v15;
          v44 = sub_1D893FD6C(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_17;
        case 4:
          v29 = type metadata accessor for ParseDetectorResult(0);
          v16 = swift_projectBox();
          v43 = v29;
          v44 = sub_1D893FD6C(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for ParseDetectorResult;
          goto LABEL_17;
        case 5:
          v30 = type metadata accessor for TextDetectorResult(0);
          v16 = swift_projectBox();
          v43 = v30;
          v44 = sub_1D893FD6C(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for TextDetectorResult;
          goto LABEL_17;
        case 6:
        case 7:
          v19 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v16 = swift_projectBox();
          v43 = v19;
          v44 = sub_1D893FD6C(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_17;
        case 9:
        case 0xALL:
          v20 = swift_projectBox();
          sub_1D8917FF0(v20, v3, type metadata accessor for AFMResult);
          v43 = v41;
          v44 = sub_1D893FD6C(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
          v21 = __swift_allocate_boxed_opaque_existential_1(v42);
          sub_1D8918058(v3, v21, type metadata accessor for AFMResult);
          break;
        case 0xBLL:
          v22 = type metadata accessor for SyntheticDetectionResult(0);
          v16 = swift_projectBox();
          v43 = v22;
          v44 = sub_1D893FD6C(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_17;
        case 0xCLL:
          v24 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v16 = swift_projectBox();
          v43 = v24;
          v44 = sub_1D893FD6C(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_17;
        case 0xDLL:
          v31 = type metadata accessor for GroundedParseClassificationsResult(0);
          v16 = swift_projectBox();
          v43 = v31;
          v44 = sub_1D893FD6C(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
          v18 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_17:
          sub_1D8917FF0(v16, boxed_opaque_existential_1, v18);
          break;
        default:
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
          v26 = swift_projectBox();
          v43 = v25;
          v44 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
          v27 = __swift_allocate_boxed_opaque_existential_1(v42);
          v12 = v40;
          sub_1D87A0E38(v26, v27, &qword_1ECA67750, &unk_1D8B1E0C0);
          break;
      }

      v33 = v43;
      v32 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      v34 = (*(v32 + 88))(v33, v32);
      __swift_destroy_boxed_opaque_existential_1(v42);
      if (v34 == a1)
      {
        v35 = *&v7[v12];

        sub_1D89388D8(v7, type metadata accessor for CVTrackSnapshot);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1D87C7F54(0, *(v11 + 2) + 1, 1, v11);
        }

        v37 = *(v11 + 2);
        v36 = *(v11 + 3);
        if (v37 >= v36 >> 1)
        {
          v11 = sub_1D87C7F54((v36 > 1), v37 + 1, 1, v11);
        }

        *(v11 + 2) = v37 + 1;
        *&v11[8 * v37 + 32] = v35;
      }

      else
      {
        sub_1D89388D8(v7, type metadata accessor for CVTrackSnapshot);
      }

      v13 += v14;
      --v9;
    }

    while (v9);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

void sub_1D891FD78(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = sub_1D893F918(&unk_1F54237F0, &qword_1ECA65C08, &qword_1D8B2C030, sub_1D881F7DC);
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = v4;
    v7 = *(a1 + 32);
    if (v5 == 1)
    {
LABEL_12:

      *a2 = v7;
      return;
    }

    v8 = (a1 + 33);
    v9 = 1;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (!*(v6 + 16))
      {
        goto LABEL_14;
      }

      v12 = *v8++;
      v11 = v12;
      v13 = sub_1D881F7DC();
      if ((v14 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (!*(v6 + 16))
      {
        goto LABEL_16;
      }

      v15 = *(*(v6 + 56) + 8 * v13);
      v16 = sub_1D881F7DC();
      if ((v17 & 1) == 0)
      {
        goto LABEL_17;
      }

      if (v15 < *(*(v6 + 56) + 8 * v16))
      {
        v7 = v11;
      }

      ++v9;
      if (v10 == v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D891FE98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v2, v9, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1D8B13240();
    return (*(*(v10 - 8) + 32))(a1, v9, v10);
  }

  else
  {
    sub_1D8918058(v9, v6, type metadata accessor for CVTrackSnapshot);
    v12 = sub_1D8B13240();
    (*(*(v12 - 8) + 16))(a1, v6, v12);
    return sub_1D89388D8(v6, type metadata accessor for CVTrackSnapshot);
  }
}

double sub_1D892004C()
{
  v1 = type metadata accessor for CVBundle(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8917FF0(v0, v10, type metadata accessor for CVBundle.BundleType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *(v0 + *(v1 + 20));
    v12 = *(v11 + 16);
    if (v12)
    {
      v26 = MEMORY[0x1E69E7CC0];
      sub_1D87F4140(0, v12, 0);
      v13 = v26;
      v14 = v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v15 = *(v2 + 72);
      do
      {
        sub_1D8917FF0(v14, v4, type metadata accessor for CVBundle);
        v16 = sub_1D892004C();
        sub_1D89388D8(v4, type metadata accessor for CVBundle);
        v26 = v13;
        v18 = *(v13 + 16);
        v17 = *(v13 + 24);
        v19 = v18 + 1;
        if (v18 >= v17 >> 1)
        {
          sub_1D87F4140((v17 > 1), v18 + 1, 1);
          v13 = v26;
        }

        *(v13 + 16) = v19;
        *(v13 + 8 * v18 + 32) = v16;
        v14 += v15;
        --v12;
      }

      while (v12);
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
      v19 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v19)
      {
        v20 = 0.0;
LABEL_17:

        v23 = sub_1D8B13240();
        (*(*(v23 - 8) + 8))(v10, v23);
        return v20;
      }
    }

    v20 = *(v13 + 32);
    v21 = v19 - 1;
    if (v19 != 1)
    {
      v22 = 40;
      do
      {
        if (*(v13 + v22) < v20)
        {
          v20 = *(v13 + v22);
        }

        v22 += 8;
        --v21;
      }

      while (v21);
    }

    goto LABEL_17;
  }

  sub_1D8918058(v10, v7, type metadata accessor for CVTrackSnapshot);
  v20 = *&v7[*(v5 + 32)];
  sub_1D89388D8(v7, type metadata accessor for CVTrackSnapshot);
  return v20;
}

uint64_t sub_1D8920388(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B8, &qword_1D8B2D5D0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - v6;
  v45 = type metadata accessor for BundleClassification.ClassificationType(0);
  v8 = *(v45 - 8);
  v9 = MEMORY[0x1EEE9AC00](v45);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v38 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v38 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  v20 = *(a1 + 16);
  if (!v20)
  {
    return 1;
  }

  v21 = *(v1 + *(type metadata accessor for CVBundle(0) + 28));
  v22 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v39 = *MEMORY[0x1E69C9C08];
  v41 = *(v8 + 72);
  v38 = xmmword_1D8B190C0;
  v23 = v17;
  v42 = v21;
  v40 = v14;
  while (1)
  {
    sub_1D8917FF0(v22, v19, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D8917FF0(v19, v11, type metadata accessor for BundleClassification.ClassificationType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D89388D8(v11, type metadata accessor for BundleClassification.ClassificationType);
        *v14 = MEMORY[0x1E69E7CD0];
      }

      goto LABEL_18;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v26 = type metadata accessor for VisualLookupClassifier.Result(0);
        (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
        goto LABEL_17;
      }

      sub_1D89388D8(v11, type metadata accessor for BundleClassification.ClassificationType);
      *v14 = MEMORY[0x1E69E7CC0];
      v14[1] = 0xBFF0000000000000;
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1D89388D8(v11, type metadata accessor for BundleClassification.ClassificationType);
        *v14 = v38;
        v14[2] = 0xE700000000000000;
        v14[3] = 0x7974706D65;
        v14[4] = 0xE500000000000000;
        v14[5] = 0;
        goto LABEL_18;
      }

      if (EnumCaseMultiPayload != 3)
      {
        *v14 = 0x7974706D65;
        v14[1] = 0xE500000000000000;
        v25 = sub_1D8B145A0();
        (*(*(v25 - 8) + 104))(v14, v39, v25);
LABEL_17:
        swift_storeEnumTagMultiPayload();
        sub_1D89388D8(v11, type metadata accessor for BundleClassification.ClassificationType);
        goto LABEL_19;
      }

      *v14 = 0;
    }

LABEL_18:
    swift_storeEnumTagMultiPayload();
LABEL_19:
    sub_1D8918058(v14, v23, type metadata accessor for BundleClassification.ClassificationType);
    if (*(v21 + 16))
    {
      v44 = v20;
      v27 = v23;
      v28 = sub_1D87EF6AC(v23);
      if (v29)
      {
        v30 = v28;
        v31 = v11;
        v32 = *(v21 + 56);
        v33 = type metadata accessor for RefinementState(0);
        v34 = *(v33 - 8);
        v35 = v32 + *(v34 + 72) * v30;
        v11 = v31;
        sub_1D8917FF0(v35, v7, type metadata accessor for RefinementState);
        sub_1D89388D8(v27, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D89388D8(v19, type metadata accessor for BundleClassification.ClassificationType);
        (*(v34 + 56))(v7, 0, 1, v33);
        v14 = v40;
      }

      else
      {
        sub_1D89388D8(v23, type metadata accessor for BundleClassification.ClassificationType);
        sub_1D89388D8(v19, type metadata accessor for BundleClassification.ClassificationType);
        v33 = type metadata accessor for RefinementState(0);
        (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
      }

      v23 = v27;
      v20 = v44;
    }

    else
    {
      sub_1D89388D8(v23, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D89388D8(v19, type metadata accessor for BundleClassification.ClassificationType);
      v33 = type metadata accessor for RefinementState(0);
      (*(*(v33 - 8) + 56))(v7, 1, 1, v33);
    }

    type metadata accessor for RefinementState(0);
    v36 = (*(*(v33 - 8) + 48))(v7, 1, v33);
    v21 = v42;
    if (v36 == 1)
    {
      goto LABEL_3;
    }

    sub_1D87A0E38(v7, v43, &qword_1ECA657B8, &qword_1D8B2D5D0);
    if ((swift_getEnumCaseMultiPayload() | 2) != 2)
    {
      break;
    }

    sub_1D89388D8(v43, type metadata accessor for RefinementState);
LABEL_3:
    sub_1D87A14E4(v7, &qword_1ECA657B8, &qword_1D8B2D5D0);
    v22 += v41;
    if (!--v20)
    {
      return 1;
    }
  }

  sub_1D89388D8(v43, type metadata accessor for RefinementState);
  sub_1D87A14E4(v7, &qword_1ECA657B8, &qword_1D8B2D5D0);
  return 0;
}

int *CVBundle.init(synthetic:rotationAngle:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v84 = type metadata accessor for BundleClassification.ClassificationType(0);
  v77 = *(v84 - 8);
  v12 = MEMORY[0x1EEE9AC00](v84);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v72 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v72 - v18);
  v73 = type metadata accessor for CVBundle.BundleType(0);
  MEMORY[0x1EEE9AC00](v73);
  v82 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D8B13240();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v83 = *a1;
  v79 = &v72 - v26;
  sub_1D8B13230();
  v89.origin.x = a3;
  v89.origin.y = a4;
  v89.size.width = a5;
  v89.size.height = a6;
  *&v76 = CGRectGetMinX(v89);
  v90.origin.x = a3;
  v90.origin.y = a4;
  v90.size.width = a5;
  v90.size.height = a6;
  MinY = CGRectGetMinY(v90);
  v91.origin.x = a3;
  v91.origin.y = a4;
  v91.size.width = a5;
  v91.size.height = a6;
  MaxX = CGRectGetMaxX(v91);
  v92.origin.x = a3;
  v92.origin.y = a4;
  v92.size.width = a5;
  v92.size.height = a6;
  v27 = CGRectGetMinY(v92);
  v93.origin.x = a3;
  v93.origin.y = a4;
  v93.size.width = a5;
  v93.size.height = a6;
  MinX = CGRectGetMinX(v93);
  v94.origin.x = a3;
  v94.origin.y = a4;
  v94.size.width = a5;
  v94.size.height = a6;
  MaxY = CGRectGetMaxY(v94);
  v95.origin.x = a3;
  v95.origin.y = a4;
  v95.size.width = a5;
  v95.size.height = a6;
  v30 = CGRectGetMaxX(v95);
  v96.origin.x = a3;
  v96.origin.y = a4;
  v96.size.width = a5;
  v96.size.height = a6;
  v31 = CGRectGetMaxY(v96);
  v32 = CACurrentMediaTime();
  v33 = MEMORY[0x1E69E7CC0];
  v87 = MEMORY[0x1E69E7CC0];
  v88 = MEMORY[0x1E69E7CC0];
  v86 = MEMORY[0x1E69E7CC0];
  v34 = type metadata accessor for ObjectDetectorResult(0);
  v78 = swift_allocBox();
  v36 = v35;
  sub_1D8B13230();
  v80 = v22;
  v37 = *(v22 + 32);
  v81 = v21;
  v37(v36, v25, v21);
  *(v36 + v34[5]) = 1065353216;
  v38 = (v36 + v34[6]);
  v39 = MinY;
  *v38 = v76;
  v38[1] = v39;
  v38[2] = MaxX;
  v38[3] = v27;
  v38[4] = MinX;
  v38[5] = MaxY;
  v38[6] = v30;
  v38[7] = v31;
  v40 = (v36 + v34[7]);
  *v40 = 1852270963;
  v40[1] = 0xE400000000000000;
  *(v36 + v34[8]) = v83;
  *(v36 + v34[9]) = v32;
  v41 = sub_1D87C50A0(v33);
  v42 = sub_1D893FA4C(v33, v41, type metadata accessor for BundleClassification.ClassificationType, type metadata accessor for BundleClassification.ClassificationType, sub_1D87F8208, type metadata accessor for BundleClassification.ClassificationType);
  v43 = sub_1D893FA4C(v33, v42, type metadata accessor for BundleClassification.ClassificationType, type metadata accessor for BundleClassification.ClassificationType, sub_1D87F8208, type metadata accessor for BundleClassification.ClassificationType);
  v44 = v43;
  v45 = *(v43 + 16);
  if (v45)
  {
    v46 = sub_1D87F3A90(*(v43 + 16), 0);
    v47 = sub_1D8817E20(&v85, v46 + ((*(v77 + 80) + 32) & ~*(v77 + 80)), v45, v44);
    v48 = sub_1D87977A0(v85);
    if (v47 == v45)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v46 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v49 = v78 | 0x3000000000000000;
  MEMORY[0x1EEE9AC00](v48);
  *(&v72 - 4) = &v87;
  *(&v72 - 3) = v32;
  *(&v72 - 2) = &v88;
  *(&v72 - 1) = &v86;
  sub_1D8917148(sub_1D8940040, (&v72 - 6), v46, type metadata accessor for RefinementState, sub_1D87F4A50, type metadata accessor for BundleClassification.ClassificationType, type metadata accessor for RefinementState);
  MaxX = v50;
  MinY = 0.0;
  v51 = v82;
  (*(v80 + 16))(v82, v79, v81);
  v52 = type metadata accessor for CVTrackSnapshot(0);
  *(v51 + v52[5]) = v49;
  *(v51 + v52[6]) = v49;
  *(v51 + v52[7]) = 0;
  *(v51 + v52[8]) = v32;
  *(v51 + v52[9]) = 1065353216;
  *(v51 + v52[10]) = 2;
  swift_storeEnumTagMultiPayload();
  v53 = v46[2];
  if (v53)
  {
    v73 = a2;
    v85 = MEMORY[0x1E69E7CC0];
    swift_retain_n();
    sub_1D87F4A0C(0, v53, 0);
    v54 = v46;
    v55 = v85;
    v56 = (*(v77 + 80) + 32) & ~*(v77 + 80);
    v72 = v54;
    v83 = v56;
    v57 = v54 + v56;
    v58 = *(v77 + 72);
    LODWORD(v77) = *MEMORY[0x1E69C9C08];
    v76 = xmmword_1D8B190C0;
    while (1)
    {
      sub_1D8917FF0(v57, v17, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8917FF0(v17, v14, type metadata accessor for BundleClassification.ClassificationType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 4)
      {
        if (EnumCaseMultiPayload == 5)
        {
          sub_1D89388D8(v14, type metadata accessor for BundleClassification.ClassificationType);
          *v19 = MEMORY[0x1E69E7CD0];
        }

        goto LABEL_21;
      }

      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          sub_1D89388D8(v14, type metadata accessor for BundleClassification.ClassificationType);
          *v19 = MEMORY[0x1E69E7CC0];
          v19[1] = 0xBFF0000000000000;
          goto LABEL_21;
        }

        v61 = type metadata accessor for VisualLookupClassifier.Result(0);
        (*(*(v61 - 8) + 56))(v19, 1, 1, v61);
      }

      else
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_1D89388D8(v14, type metadata accessor for BundleClassification.ClassificationType);
          *v19 = v76;
          v19[2] = 0xE700000000000000;
          v19[3] = 0x7974706D65;
          v19[4] = 0xE500000000000000;
          v19[5] = 0;
          goto LABEL_21;
        }

        if (EnumCaseMultiPayload == 3)
        {
          *v19 = 0;
LABEL_21:
          swift_storeEnumTagMultiPayload();
          goto LABEL_22;
        }

        *v19 = 0x7974706D65;
        v19[1] = 0xE500000000000000;
        v60 = sub_1D8B145A0();
        (*(*(v60 - 8) + 104))(v19, v77, v60);
      }

      swift_storeEnumTagMultiPayload();
      sub_1D89388D8(v14, type metadata accessor for BundleClassification.ClassificationType);
LABEL_22:
      sub_1D89388D8(v17, type metadata accessor for BundleClassification.ClassificationType);
      v85 = v55;
      v63 = *(v55 + 16);
      v62 = *(v55 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1D87F4A0C((v62 > 1), v63 + 1, 1);
        v55 = v85;
      }

      *(v55 + 16) = v63 + 1;
      sub_1D8918058(v19, v55 + v83 + v63 * v58, type metadata accessor for BundleClassification.ClassificationType);
      v57 += v58;
      if (!--v53)
      {

        a2 = v73;
        goto LABEL_27;
      }
    }
  }

  swift_retain_n();

  v55 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v64 = *&MaxX;
  if (*(*&MaxX + 16) >= *(v55 + 16))
  {
    v65 = *(v55 + 16);
  }

  else
  {
    v65 = *(*&MaxX + 16);
  }

  if (v65)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA657B0, &qword_1D8B2ABE8);
    v66 = sub_1D8B16910();
  }

  else
  {
    v66 = MEMORY[0x1E69E7CC8];
  }

  v85 = v66;
  v67 = v64;
  v68 = MinY;
  sub_1D8938938(v55, v67, 1, &v85);
  if (v68 == 0.0)
  {

    v69 = v85;
    (*(v80 + 8))(v79, v81);
    sub_1D8918058(v82, a2, type metadata accessor for CVBundle.BundleType);
    result = type metadata accessor for CVBundle(0);
    v71 = MEMORY[0x1E69E7CC0];
    *(a2 + result[5]) = MEMORY[0x1E69E7CC0];
    *(a2 + result[6]) = v71;
    *(a2 + result[7]) = v69;
  }

  else
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}