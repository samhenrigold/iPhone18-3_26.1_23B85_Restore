uint64_t _s22AuthenticationServices24ASAuthorizationUIContextV7MessageO2eeoiySbAE_AEtFZ_0(void *a1, char *a2)
{
  v93 = a1;
  v94 = a2;
  v2 = type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v89 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ASAuthorizationUIContext.Message(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v91 = &v89 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v90 = &v89 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v89 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v89 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v89 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v89 - v19);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v92 = &v89 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = (&v89 - v24);
  MEMORY[0x1EEE9AC00](v23);
  v27 = (&v89 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775400, &qword_1B1D880C0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v89 - v30;
  v32 = &v89 + *(v29 + 56) - v30;
  sub_1B1D18204(v93, &v89 - v30);
  v93 = v32;
  sub_1B1D18204(v94, v32);
  v94 = v31;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v33 = v94;
      sub_1B1D18204(v94, v25);
      v61 = v93;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v62 = v89;
        sub_1B1D1831C(v61, v89);
        v39 = _s22AuthenticationServices24ASAuthorizationUIContextV14PasskeyMessageO2eeoiySbAE_AEtFZ_0(v25, v62);
        sub_1B1D182BC(v62, type metadata accessor for ASAuthorizationUIContext.PasskeyMessage);
        sub_1B1D182BC(v25, type metadata accessor for ASAuthorizationUIContext.PasskeyMessage);
        goto LABEL_21;
      }

      sub_1B1D182BC(v25, type metadata accessor for ASAuthorizationUIContext.PasskeyMessage);
      goto LABEL_43;
    case 2u:
      v33 = v94;
      v42 = v92;
      sub_1B1D18204(v94, v92);
      v43 = *(v42 + 48);
      v106 = *(v42 + 32);
      v107 = v43;
      v108 = *(v42 + 64);
      v44 = *(v42 + 16);
      v104 = *v42;
      v105 = v44;
      v45 = v93;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v46 = *(v45 + 1);
        v47 = *(v45 + 3);
        v101 = *(v45 + 2);
        v102 = v47;
        v48 = *(v45 + 1);
        v99 = *v45;
        v100 = v48;
        v49 = *(v42 + 48);
        v97[2] = *(v42 + 32);
        v97[3] = v49;
        v50 = *(v42 + 16);
        v97[0] = *v42;
        v97[1] = v50;
        v51 = *(v45 + 3);
        v95[2] = v101;
        v95[3] = v51;
        v103 = v45[8];
        v98 = *(v42 + 64);
        v96 = v45[8];
        v95[0] = v99;
        v95[1] = v46;
        v39 = _s22AuthenticationServices24ASAuthorizationUIContextV15PasswordMessageO2eeoiySbAE_AEtFZ_0(v97, v95);
        sub_1B1D18268(&v99);
        sub_1B1D18268(&v104);
        goto LABEL_21;
      }

      sub_1B1D18268(&v104);
      goto LABEL_43;
    case 3u:
      v33 = v94;
      sub_1B1D18204(v94, v20);
      v52 = v93;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_43;
      }

      v39 = *v20 == *v52;
      goto LABEL_21;
    case 4u:
      v33 = v94;
      sub_1B1D18204(v94, v17);
      v37 = v93;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_43;
      }

      v38 = *v17 ^ *v37;
      goto LABEL_8;
    case 5u:
      v33 = v94;
      sub_1B1D18204(v94, v14);
      v64 = *v14;
      v63 = *(v14 + 1);
      v65 = v14[16];
      v67 = *(v14 + 3);
      v66 = *(v14 + 4);
      v68 = v93;
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        v77 = v64;
        v78 = v63;
        goto LABEL_42;
      }

      v69 = *v68;
      v70 = v68[1];
      v71 = *(v68 + 16);
      v72 = v68[4];
      v92 = v68[3];
      v93 = v72;
      *&v104 = v64;
      *(&v104 + 1) = v63;
      LOBYTE(v105) = v65;
      *&v99 = v69;
      *(&v99 + 1) = v70;
      LOBYTE(v100) = v71;
      v73 = _s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v104, &v99);
      sub_1B1CF8E9C(v69, v70);
      sub_1B1CF8E9C(v64, v63);
      if ((v73 & 1) == 0)
      {

        sub_1B1D182BC(v94, type metadata accessor for ASAuthorizationUIContext.Message);
        goto LABEL_44;
      }

      v74 = v67 == v92 && v66 == v93;
      v75 = v94;
      if (v74)
      {
      }

      else
      {
        v76 = sub_1B1D7C50C();

        if ((v76 & 1) == 0)
        {
          sub_1B1D182BC(v75, type metadata accessor for ASAuthorizationUIContext.Message);
          goto LABEL_44;
        }
      }

      v80 = v75;
      goto LABEL_34;
    case 6u:
      v33 = v94;
      sub_1B1D18204(v94, v11);
      v55 = *v11;
      v54 = *(v11 + 1);
      v56 = v11[16];
      v57 = v93;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    case 7u:
      v33 = v94;
      v53 = v90;
      sub_1B1D18204(v94, v90);
      v55 = *v53;
      v54 = *(v53 + 8);
      v56 = *(v53 + 16);
      v57 = v93;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
LABEL_18:
        v58 = *v57;
        v59 = v57[1];
        v60 = *(v57 + 16);
        *&v104 = v55;
        *(&v104 + 1) = v54;
        LOBYTE(v105) = v56;
        *&v99 = v58;
        *(&v99 + 1) = v59;
        LOBYTE(v100) = v60;
        v39 = _s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v104, &v99);
        sub_1B1CF8E9C(v58, v59);
        sub_1B1CF8E9C(v55, v54);
LABEL_21:
        sub_1B1D182BC(v33, type metadata accessor for ASAuthorizationUIContext.Message);
        return v39 & 1;
      }

LABEL_31:
      v77 = v55;
      v78 = v54;
LABEL_42:
      sub_1B1CF8E9C(v77, v78);
      goto LABEL_43;
    case 8u:
      v33 = v94;
      v81 = v91;
      sub_1B1D18204(v94, v91);
      v82 = v81[1];
      v83 = v81[2];
      v84 = v93;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_43;
      }

      if (*v81 != *v84 || v82 != v84[1])
      {
        goto LABEL_57;
      }

      v38 = v83 ^ v84[2];
LABEL_8:
      sub_1B1D182BC(v33, type metadata accessor for ASAuthorizationUIContext.Message);
      v39 = v38 ^ 1;
      return v39 & 1;
    case 9u:
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v33 = v94;
      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_43;
      }

      goto LABEL_33;
    case 0xAu:
      v79 = swift_getEnumCaseMultiPayload();
      v33 = v94;
      if (v79 == 10)
      {
        goto LABEL_33;
      }

      goto LABEL_43;
    case 0xBu:
      v36 = swift_getEnumCaseMultiPayload();
      v33 = v94;
      if (v36 != 11)
      {
        goto LABEL_43;
      }

      goto LABEL_33;
    case 0xCu:
      v40 = swift_getEnumCaseMultiPayload();
      v33 = v94;
      if (v40 != 12)
      {
        goto LABEL_43;
      }

      goto LABEL_33;
    default:
      v33 = v94;
      sub_1B1D18204(v94, v27);
      v34 = *v27;
      v35 = v93;
      if (swift_getEnumCaseMultiPayload())
      {

LABEL_43:
        sub_1B1CDEC18(v33, &qword_1EB775400, &qword_1B1D880C0);
        goto LABEL_44;
      }

      v86 = *v35;
      if (!v34)
      {
        if (!v86)
        {
          goto LABEL_33;
        }

LABEL_56:

LABEL_57:
        sub_1B1D182BC(v33, type metadata accessor for ASAuthorizationUIContext.Message);
LABEL_44:
        v39 = 0;
        return v39 & 1;
      }

      if (!v86)
      {
        v86 = v34;
        goto LABEL_56;
      }

      sub_1B1CED540(0, &qword_1EB7753A8, 0x1E698DCF8);
      v87 = v34;
      v88 = sub_1B1D7C14C();

      if ((v88 & 1) == 0)
      {
        goto LABEL_57;
      }

LABEL_33:
      v80 = v33;
LABEL_34:
      sub_1B1D182BC(v80, type metadata accessor for ASAuthorizationUIContext.Message);
      v39 = 1;
      return v39 & 1;
  }
}

uint64_t _s22AuthenticationServices24ASAuthorizationUIContextV8IconTypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = v5 >> 6;
  if (v5 >> 6 <= 1)
  {
    if (!v10)
    {
      if (v9 <= 0x3F)
      {
        v26[0] = *a1;
        v26[1] = v2;
        v26[2] = v4;
        v27 = v5;
        v24[0] = v7;
        v24[1] = v6;
        v24[2] = v8;
        v25 = v9;
        sub_1B1D18380(v7, v6, v8, v9);
        sub_1B1D18380(v3, v2, v4, v5);
        sub_1B1D18380(v3, v2, v4, v5);
        sub_1B1D18380(v7, v6, v8, v9);
        v11 = _s22AuthenticationServices9ASAppIconO2eeoiySbAC_ACtFZ_0(v26, v24);
        sub_1B1D183A8(v3, v2, v4, v5);
        sub_1B1D183A8(v7, v6, v8, v9);
        sub_1B1D183A8(v7, v6, v8, v9);
        sub_1B1D183A8(v3, v2, v4, v5);
        return v11 & 1;
      }

      sub_1B1CE20D4(*a1, v2, v4, v5);
LABEL_32:
      sub_1B1D18380(v7, v6, v8, v9);
      sub_1B1D183A8(v3, v2, v4, v5);
      sub_1B1D183A8(v7, v6, v8, v9);
      v11 = 0;
      return v11 & 1;
    }

    if ((v9 & 0xC0) == 0x40)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v10 == 2)
  {
    if ((v9 & 0xC0) == 0x80)
    {
LABEL_9:
      v12 = *a1;
      if (v3 != v7 || v2 != v6)
      {
        v11 = sub_1B1D7C50C();
        sub_1B1D18380(v3, v2, v4, v5);
        sub_1B1D18380(v7, v6, v8, v9);
        sub_1B1D183A8(v3, v2, v4, v5);
        sub_1B1D183A8(v7, v6, v8, v9);
        return v11 & 1;
      }

      sub_1B1D18380(v12, v2, v4, v5);
      sub_1B1D18380(v3, v2, v8, v9);
      sub_1B1D183A8(v3, v2, v4, v5);
      v20 = v3;
      v21 = v2;
LABEL_38:
      sub_1B1D183A8(v20, v21, v8, v9);
      v11 = 1;
      return v11 & 1;
    }

LABEL_7:

    goto LABEL_32;
  }

  if (v9 <= 0xBF)
  {
    goto LABEL_32;
  }

  v14 = *a1;
  if (!*a1)
  {
    v16 = 0xE700000000000000;
    v15 = 0x64696863756F74;
    v17 = *a2;
    if (*a2)
    {
      goto LABEL_23;
    }

LABEL_35:
    v19 = 0xE700000000000000;
    if (v15 != 0x64696863756F74)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  if (v14 == 1)
  {
    v15 = 0x646965636166;
  }

  else
  {
    v15 = 0x6469636974706FLL;
  }

  if (v14 == 1)
  {
    v16 = 0xE600000000000000;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  v17 = *a2;
  if (!*a2)
  {
    goto LABEL_35;
  }

LABEL_23:
  if (v17 == 1)
  {
    v18 = 0x646965636166;
  }

  else
  {
    v18 = 0x6469636974706FLL;
  }

  if (v17 == 1)
  {
    v19 = 0xE600000000000000;
  }

  else
  {
    v19 = 0xE700000000000000;
  }

  if (v15 != v18)
  {
    goto LABEL_40;
  }

LABEL_36:
  if (v16 == v19)
  {

    sub_1B1D183A8(v3, v2, v4, v5);
    v20 = v7;
    v21 = v6;
    goto LABEL_38;
  }

LABEL_40:
  v23 = sub_1B1D7C50C();

  sub_1B1D183A8(v3, v2, v4, v5);
  sub_1B1D183A8(v7, v6, v8, v9);
  return v23 & 1;
}

uint64_t type metadata accessor for ASAuthorizationUIContext.Message(uint64_t a1)
{
  result = qword_1EB775388;
  if (!qword_1EB775388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B1D172D0()
{
  result = qword_1EB775350;
  if (!qword_1EB775350)
  {
    sub_1B1CED540(255, &qword_1EB775450, 0x1E696ABD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775350);
  }

  return result;
}

unint64_t sub_1B1D17344()
{
  result = qword_1EB775360;
  if (!qword_1EB775360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775360);
  }

  return result;
}

unint64_t sub_1B1D173E0()
{
  result = qword_1EB775378;
  if (!qword_1EB775378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775378);
  }

  return result;
}

unint64_t sub_1B1D17438()
{
  result = qword_1EB775380;
  if (!qword_1EB775380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775380);
  }

  return result;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B1D174A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 51))
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

uint64_t sub_1B1D174F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 51) = 1;
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

    *(result + 51) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1D17560(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3D && *(a1 + 25))
  {
    return (*a1 + 61);
  }

  v3 = (*(a1 + 24) & 0x3C | (*(a1 + 24) >> 6)) ^ 0x3F;
  if (v3 >= 0x3C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B1D175B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 61;
    if (a3 >= 0x3D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASAuthorizationUIContext.Title(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 9))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 8) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 8) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ASAuthorizationUIContext.Title(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1B1D17728(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1B1D17758(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = *(result + 8) & 1 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0x80;
  }

  return result;
}

void sub_1B1D17794(uint64_t a1)
{
  sub_1B1D1790C(319, &qword_1EB775398, sub_1B1D178A4);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(319);
    if (v2 <= 0x3F)
    {
      sub_1B1D1790C(319, &qword_1EB7753B0, type metadata accessor for LABiometryType);
      if (v3 <= 0x3F)
      {
        sub_1B1D17958();
        if (v4 <= 0x3F)
        {
          sub_1B1D17988();
          if (v5 <= 0x3F)
          {
            sub_1B1D179EC();
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B1D178A4(uint64_t a1)
{
  if (!qword_1EB7753A0)
  {
    sub_1B1CED540(255, &qword_1EB7753A8, 0x1E698DCF8);
    v1 = sub_1B1D7C18C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB7753A0);
    }
  }
}

void sub_1B1D1790C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B1D17958()
{
  result = qword_1EB7753B8;
  if (!qword_1EB7753B8)
  {
    result = MEMORY[0x1E69E6370];
    atomic_store(MEMORY[0x1E69E6370], &qword_1EB7753B8);
  }

  return result;
}

void sub_1B1D17988()
{
  if (!qword_1EB7753C0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB7753C0);
    }
  }
}

void sub_1B1D179EC()
{
  if (!qword_1EB7753C8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB7753C8);
    }
  }
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ASAuthorizationUIContext.MainButton(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ASAuthorizationUIContext.MainButton(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASAuthorizationUIContext.MainButton.ButtonText(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ASAuthorizationUIContext.MainButton.ButtonText(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_1B1D17B9C(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_1B1D17BB4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ASAuthorizationUIContext.MainButton.ButtonAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_19;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
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

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_19;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_19:
  v7 = *a1;
  if (*a1 < 2u)
  {
    return 0;
  }

  v8 = (v7 & 0xFE) + 2147483646;
  if ((v8 & 0x7FFFFFFEu) <= 5)
  {
    return 0;
  }

  return (v8 & 0x7FFFFFFE | v7 & 1u) - 5;
}

uint64_t storeEnumTagSinglePayload for ASAuthorizationUIContext.MainButton.ButtonAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
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

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1B1D17D4C(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B1D17D68(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 __swift_memcpy22_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ASAuthorizationUIContext.ConfigurationOverrides(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[22])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ASAuthorizationUIContext.ConfigurationOverrides(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 22) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 22) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B1D17E6C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1B1D17EFC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ASAuthorizationUIContext.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASAuthorizationUIContext.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B1D18110()
{
  result = qword_1EB7753D8;
  if (!qword_1EB7753D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7753D8);
  }

  return result;
}

unint64_t sub_1B1D18168()
{
  result = qword_1EB7753E0;
  if (!qword_1EB7753E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7753E0);
  }

  return result;
}

uint64_t sub_1B1D181BC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1B1D18204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASAuthorizationUIContext.Message(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1D182BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B1D1831C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B1D18380(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 != 2)
    {
      return;
    }
  }

  else if (!(a4 >> 6))
  {
    sub_1B1CE20D4(a1, a2, a3, a4);
    return;
  }
}

uint64_t sub_1B1D183A8(uint64_t result, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 != 2)
    {
      return result;
    }
  }

  else if (!(a4 >> 6))
  {
    return sub_1B1CE246C(result, a2, a3, a4);
  }
}

uint64_t get_enum_tag_for_layout_string_22AuthenticationServices24ASAuthorizationUIContextV18CredentialProviderO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B1D183E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1D1843C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1B1D18498(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1B1D184CC()
{
  result = qword_1EB775408;
  if (!qword_1EB775408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775408);
  }

  return result;
}

uint64_t ASAuthorizationWebBrowserPlatformPublicKeyCredential.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ASAuthorizationWebBrowserPlatformPublicKeyCredential.customTitle.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ASAuthorizationWebBrowserPlatformPublicKeyCredential.relyingParty.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ASAuthorizationWebBrowserPlatformPublicKeyCredential.credentialID.getter()
{
  v1 = *(v0 + 48);
  sub_1B1CE111C(v1, *(v0 + 56));
  return v1;
}

uint64_t ASAuthorizationWebBrowserPlatformPublicKeyCredential.userHandle.getter()
{
  v1 = *(v0 + 64);
  sub_1B1CE111C(v1, *(v0 + 72));
  return v1;
}

uint64_t ASAuthorizationWebBrowserPlatformPublicKeyCredential.providerName.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1B1D1868C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1B1D186D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1B1D1873C()
{
  result = [objc_allocWithZone(MEMORY[0x1E698DFA0]) init];
  qword_1EB775410 = result;
  return result;
}

uint64_t ASAuthorizationWebBrowserPublicKeyCredentialManager.platformCredentials(forRelyingParty:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1D18794, 0, 0);
}

uint64_t sub_1B1D18794()
{
  v1 = v0[21];
  v2 = sub_1B1D7BE1C();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B1D188CC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775418, &qword_1B1D88300);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B1D19C48;
  v0[13] = &block_descriptor_3;
  v0[14] = v3;
  [v1 corePlatformCredentialsForRelyingParty:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1D188CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1D189AC, 0, 0);
}

char *sub_1B1D189AC()
{
  v1 = *(v0 + 144);
  if (v1 >> 62)
  {
    v34 = *(v0 + 144);
    v2 = sub_1B1D7C1FC();
    v1 = v34;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v3 = v1;
  v46 = MEMORY[0x1E69E7CC0];
  result = sub_1B1D19518(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = v46;
  v7 = v3;
  v36 = v0;
  v37 = v3 & 0xC000000000000001;
  v38 = v2;
  v39 = v3;
  do
  {
    if (v37)
    {
      v8 = MEMORY[0x1B273B2E0](v5, v7);
    }

    else
    {
      v8 = *(v7 + 8 * v5 + 32);
    }

    v9 = v8;
    v10 = [v8 name];
    v11 = sub_1B1D7BE4C();
    v44 = v12;
    v45 = v11;

    v13 = [v9 customTitle];
    v14 = sub_1B1D7BE4C();
    v42 = v15;
    v43 = v14;

    v16 = [v9 relyingParty];
    v17 = sub_1B1D7BE4C();
    v40 = v18;
    v41 = v17;

    v19 = [v9 credentialID];
    v20 = sub_1B1D7B4EC();
    v22 = v21;

    v23 = [v9 userHandle];
    v24 = sub_1B1D7B4EC();
    v26 = v25;

    v27 = [v9 providerName];
    v28 = sub_1B1D7BE4C();
    v30 = v29;

    v32 = *(v46 + 16);
    v31 = *(v46 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1B1D19518((v31 > 1), v32 + 1, 1);
    }

    ++v5;
    *(v46 + 16) = v32 + 1;
    v33 = (v46 + 96 * v32);
    v33[4] = v45;
    v33[5] = v44;
    v33[6] = v43;
    v33[7] = v42;
    v33[8] = v41;
    v33[9] = v40;
    v33[10] = v20;
    v33[11] = v22;
    v33[12] = v24;
    v33[13] = v26;
    v33[14] = v28;
    v33[15] = v30;
    v7 = v39;
  }

  while (v38 != v5);

  v0 = v36;
LABEL_14:

  v35 = *(v0 + 8);

  return v35(v6);
}

uint64_t ASAuthorizationWebBrowserPublicKeyCredentialManager.corePlatformCredentials(forRelyingParty:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1D18CC8, 0, 0);
}

uint64_t sub_1B1D18CC8()
{
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 safari_isPasswordManagerTestMode];

  if (v2)
  {
    v3 = [objc_allocWithZone(sub_1B1D7B81C()) init];
    if (v3)
    {
      sub_1B1D7B7FC();
    }
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 176) = v3;
  v4 = [*(v0 + 168) agentProxy];
  *(v0 + 184) = v4;
  v5 = sub_1B1D7BE1C();
  *(v0 + 192) = v5;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1B1D18E9C;
  v6 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775418, &qword_1B1D88300);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B1D19C48;
  *(v0 + 104) = &block_descriptor_3;
  *(v0 + 112) = v6;
  [v4 browserPasskeysForRelyingParty:v5 testOptions:v3 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B1D18E9C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1D18F7C, 0, 0);
}

uint64_t sub_1B1D18F7C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1B1D18FF8(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_1B1D19BF4();
  **(*(v2 + 64) + 40) = sub_1B1D7BEEC();

  return MEMORY[0x1EEE6DED8](v2);
}

uint64_t sub_1B1D191F4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1B1D7BE4C();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1B1D192C8;

  return ASAuthorizationWebBrowserPublicKeyCredentialManager.corePlatformCredentials(forRelyingParty:)(v5, v7);
}

uint64_t sub_1B1D192C8(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v7 = *v1;

  sub_1B1D19BF4();
  v4 = sub_1B1D7BEDC();

  (v2)[2](v2, v4);

  _Block_release(v2);
  v5 = *(v7 + 8);

  return v5();
}

void *sub_1B1D19470(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1D19558(a1, a2, a3, *v3, &qword_1EB775430, &qword_1B1D88330, MEMORY[0x1E698DF18]);
  *v3 = result;
  return result;
}

void *sub_1B1D194B4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1D19558(a1, a2, a3, *v3, &qword_1EB775428, &qword_1B1D88328, MEMORY[0x1E69C8780]);
  *v3 = result;
  return result;
}

char *sub_1B1D194F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1D19734(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B1D19518(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1D19840(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B1D19538(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B1D19960(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B1D19558(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
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

char *sub_1B1D19734(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774F88, &qword_1B1D85C60);
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

char *sub_1B1D19840(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775440, &unk_1B1D88340);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B1D19960(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775438, &qword_1B1D88338);
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
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

id _sSo51ASAuthorizationWebBrowserPublicKeyCredentialManagerC22AuthenticationServicesE30_isDeviceConfiguredForPasskeysSbyFZ_0()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 safari_isPasswordManagerTestMode];

  if (v1)
  {
    v2 = [objc_allocWithZone(sub_1B1D7B81C()) init];
    if (v2)
    {
      sub_1B1D7B7FC();
    }
  }

  else
  {
    v2 = 0;
  }

  if (qword_1EB7749B0 != -1)
  {
    swift_once();
  }

  v3 = [qword_1EB775410 isDeviceConfiguredForPasskeysWithTestOptions_];

  return v3;
}

uint64_t sub_1B1D19B40()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B1CE9AD0;

  return sub_1B1D191F4(v2, v3, v4);
}

unint64_t sub_1B1D19BF4()
{
  result = qword_1EB775420;
  if (!qword_1EB775420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB775420);
  }

  return result;
}

id ASAuthorizationPlatformPublicKeyCredentialProvider.createCredentialRegistrationRequest(clientData:name:userID:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v14 = *a1;
  v15 = *(a1 + 2);
  v16 = *(a1 + 3);
  v17 = a1[2];
  LOBYTE(v18) = *(a1 + 48);
  v9 = sub_1B1D2BC34();
  v10 = sub_1B1D7BE1C();
  v11 = sub_1B1D7B4DC();
  v12 = [v8 createCredentialRegistrationRequestWithClientData:v9 name:v10 userID:{v11, v14, v15, v16, v17, v18}];

  return v12;
}

id ASAuthorizationPlatformPublicKeyCredentialProvider.createCredentialRegistrationRequest(clientData:name:userID:requestStyle:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  LOBYTE(v18) = *(a1 + 48);
  v10 = sub_1B1D2BC34();
  v11 = sub_1B1D7BE1C();
  v12 = sub_1B1D7B4DC();
  v13 = [v8 createCredentialRegistrationRequestWithClientData:v10 name:v11 userID:v12 requestStyle:{a6, v15, v16, v17, v18}];

  return v13;
}

id sub_1B1D19DF4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *v7;
  v14 = *a1;
  v15 = a1[1];
  v16 = a1[2];
  LOBYTE(v17) = *(a1 + 48);
  v9 = sub_1B1D2BC34();
  v10 = sub_1B1D7BE1C();
  v11 = sub_1B1D7B4DC();
  v12 = [v8 createCredentialRegistrationRequestWithClientData:v9 name:v10 userID:{v11, v14, v15, v16, v17}];

  return v12;
}

id sub_1B1D19EC0(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = *v7;
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  LOBYTE(v18) = *(a1 + 48);
  v10 = sub_1B1D2BC34();
  v11 = sub_1B1D7BE1C();
  v12 = sub_1B1D7B4DC();
  v13 = [v9 createCredentialRegistrationRequestWithClientData:v10 name:v11 userID:v12 requestStyle:{a6, v15, v16, v17, v18}];

  return v13;
}

void sub_1B1D19FA0(uint64_t a1@<X8>)
{
  v3 = [v1 clientData];
  if (v3)
  {
    sub_1B1D2BB24(v3, &v9);
    v4 = v9;
    v5 = v10;
    v6 = v11;
    v7 = v12;
    v8 = v13;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v8 = 0;
    v4 = 0uLL;
    v7 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
}

id ASAuthorizationSecurityKeyPublicKeyCredentialProvider.createCredentialRegistrationRequest(clientData:displayName:name:userID:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  LOBYTE(v18) = *(a1 + 48);
  v9 = sub_1B1D2BC34();
  v10 = sub_1B1D7BE1C();
  v11 = sub_1B1D7BE1C();
  v12 = sub_1B1D7B4DC();
  v13 = [v8 createCredentialRegistrationRequestWithClientData:v9 displayName:v10 name:v11 userID:{v12, v15, v16, v17, v18}];

  return v13;
}

id sub_1B1D1A11C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  LOBYTE(v15) = *(a1 + 48);
  v9 = sub_1B1D2BC34();
  v10 = [v8 createCredentialAssertionRequestWithClientData_];

  return v10;
}

id sub_1B1D1A198(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *v7;
  v15 = *a1;
  v16 = a1[1];
  v17 = a1[2];
  LOBYTE(v18) = *(a1 + 48);
  v9 = sub_1B1D2BC34();
  v10 = sub_1B1D7BE1C();
  v11 = sub_1B1D7BE1C();
  v12 = sub_1B1D7B4DC();
  v13 = [v8 createCredentialRegistrationRequestWithClientData:v9 displayName:v10 name:v11 userID:{v12, v15, v16, v17, v18}];

  return v13;
}

id sub_1B1D1A28C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *v7;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  LOBYTE(v15) = *(a1 + 48);
  v9 = sub_1B1D2BC34();
  v10 = [v8 createCredentialAssertionRequestWithClientData_];

  return v10;
}

uint64_t sub_1B1D1A388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B1D20E80(a3, v25 - v10);
  v12 = sub_1B1D7BF4C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B1D20EF0(v11);
  }

  else
  {
    sub_1B1D7BF3C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B1D7BF0C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B1D7BE6C() + 32;
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

      sub_1B1D20EF0(a3);

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

  sub_1B1D20EF0(a3);
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

uint64_t sub_1B1D1A668()
{
  v1 = *(*(v0 + 16) + 112);
  v2 = [v1 enabledExtensions];
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
    sub_1B1CF5EB4();
    v5 = sub_1B1D7BEEC();

    v15 = v3;
    if (v5 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B1D7C1FC())
    {
      v7 = 0;
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      v3 = &unk_1E7AF9000;
      v14 = v0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1B273B2E0](v7, v5);
        }

        else
        {
          if (v7 >= *(v8 + 16))
          {
            goto LABEL_20;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v0 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if ([v1 extensionSupportsCredentialUpdate_])
        {
          sub_1B1D7C2DC();
          sub_1B1D7C30C();
          sub_1B1D7C31C();
          sub_1B1D7C2EC();
          v8 = v5 & 0xFFFFFFFFFFFFFF8;
        }

        else
        {
        }

        ++v7;
        if (v0 == i)
        {
          v3 = v15;
          v0 = v14;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_15:
  }

  v11 = sub_1B1D20C74(v3);

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_1B1D1A9D8(const void *a1, uint64_t a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);

  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1B1D1AA80;

  return sub_1B1D1A648();
}

uint64_t sub_1B1D1AA80(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v6 = *v1;

  sub_1B1CF5EB4();
  sub_1B1D172D0();
  v3 = sub_1B1D7BF5C();

  (v2)[2](v2, v3);

  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1B1D1AC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[14] = a6;
  v7[15] = v6;
  v7[12] = a4;
  v7[13] = a5;
  v7[10] = a2;
  v7[11] = a3;
  v7[9] = a1;
  v8 = swift_task_alloc();
  v7[16] = v8;
  *v8 = v7;
  v8[1] = sub_1B1D1AC9C;

  return sub_1B1D1A648();
}

uint64_t sub_1B1D1AC9C(uint64_t a1)
{
  v2 = *(*v1 + 120);
  *(*v1 + 136) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B1D1ADB4, v2, 0);
}

uint64_t sub_1B1D1ADB4()
{
  v1 = v0[17];
  if ((v1 & 0xC000000000000001) == 0)
  {
    if (*(v1 + 16))
    {
      v5 = 0;
      v8 = -1;
      v9 = -1 << *(v1 + 32);
      v3 = v1 + 56;
      v10 = *(v1 + 56);
      if (-v9 < 64)
      {
        v8 = ~(-1 << -v9);
      }

      v0[20] = ~v9;
      v0[19] = v3;
      v6 = v8 & v10;
      v7 = 63 - v9;
      v0[18] = v1;
      v2 = v0 + 18;
      goto LABEL_9;
    }

LABEL_19:

    if (qword_1EB7749C0 == -1)
    {
LABEL_20:
      v20 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v20, qword_1EB782548);
      v21 = sub_1B1D7BD6C();
      v22 = sub_1B1D7BFEC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1B1C8D000, v21, v22, "No supporting credential providers found. Nothing to report.", v23, 2u);
        MEMORY[0x1B273C4C0](v23, -1, -1);
      }

LABEL_26:
      v25 = v0[1];

      __asm { BRAA            X1, X16 }
    }

LABEL_30:
    swift_once();
    goto LABEL_20;
  }

  if (!sub_1B1D7C1FC())
  {
    goto LABEL_19;
  }

  sub_1B1D7C1EC();
  sub_1B1CF5EB4();
  sub_1B1D172D0();
  sub_1B1D7BF8C();
  v1 = v0[2];
  v0[18] = v1;
  v2 = v0 + 18;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v0[20] = v4;
  v0[19] = v3;
  if ((v1 & 0x8000000000000000) == 0)
  {
    v7 = v4 + 64;
LABEL_9:
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      v13 = v7 >> 6;
      v14 = v5;
      while (1)
      {
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v12 >= v13)
        {
          goto LABEL_25;
        }

        v11 = *(v3 + 8 * v12);
        ++v14;
        if (v11)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_14:
    v15 = (v11 - 1) & v11;
    v16 = *(*(v1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    goto LABEL_15;
  }

  v24 = sub_1B1D7C21C();
  if (!v24)
  {
    goto LABEL_25;
  }

  v0[8] = v24;
  swift_dynamicCast();
  v16 = v0[7];
  v12 = v5;
  v15 = v6;
LABEL_15:
  v0[22] = v12;
  v0[23] = v15;
  v0[21] = v16;
  if (!v16)
  {
LABEL_25:
    sub_1B1D17338(*v2);
    goto LABEL_26;
  }

  sub_1B1D7BF2C();
  v17 = v16;
  v0[24] = sub_1B1D7BF1C();
  v19 = sub_1B1D7BF0C();

  return MEMORY[0x1EEE6DFA0](sub_1B1D1B100, v19, v18);
}

uint64_t sub_1B1D1B100()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 120);

  v3 = objc_allocWithZone(_ASCredentialAuthenticationViewController);
  v4 = sub_1B1D7BE1C();
  v5 = sub_1B1D7B4DC();
  v6 = sub_1B1D7BE1C();
  v7 = [v3 initWithExtension:v1 updatePasskeyRequestForRelyingParty:v4 userHandle:v5 newName:v6];

  return MEMORY[0x1EEE6DFA0](sub_1B1D1B214, v2, 0);
}

uint64_t sub_1B1D1B214()
{
  v4 = *(v0 + 176);
  v5 = *(v0 + 184);
  v6 = *(v0 + 144);
  if (v6 < 0)
  {
    v12 = sub_1B1D7C21C();
    if (!v12)
    {
      goto LABEL_14;
    }

    *(v0 + 64) = v12;
    sub_1B1CF5EB4();
    swift_dynamicCast();
    v11 = *(v0 + 56);
    v8 = v4;
    v10 = v5;
LABEL_10:
    *(v0 + 176) = v8;
    *(v0 + 184) = v10;
    *(v0 + 168) = v11;
    if (v11)
    {
      sub_1B1D7BF2C();
      v13 = v11;
      *(v0 + 192) = sub_1B1D7BF1C();
      v14 = sub_1B1D7BF0C();
      v16 = v15;
      v1 = sub_1B1D1B100;
      v2 = v14;
      v3 = v16;

      return MEMORY[0x1EEE6DFA0](v1, v2, v3);
    }

LABEL_14:
    sub_1B1D17338(*(v0 + 144));
    v17 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  v7 = *(v0 + 184);
  v8 = *(v0 + 176);
  if (v5)
  {
LABEL_7:
    v10 = (v7 - 1) & v7;
    v11 = *(*(v6 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v7)))));
    goto LABEL_10;
  }

  v9 = *(v0 + 176);
  while (1)
  {
    v8 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v8 >= ((*(v0 + 160) + 64) >> 6))
    {
      goto LABEL_14;
    }

    v7 = *(*(v0 + 152) + 8 * v8);
    ++v9;
    if (v7)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1B1D1B580(uint64_t a1, void *a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = sub_1B1D7BE4C();
  v10 = v9;
  v5[4] = v9;
  v11 = a2;
  v12 = a3;

  v13 = sub_1B1D7B4EC();
  v15 = v14;

  v5[5] = v13;
  v5[6] = v15;
  v16 = sub_1B1D7BE4C();
  v18 = v17;

  v5[7] = v18;
  v19 = swift_task_alloc();
  v5[8] = v19;
  *v19 = v5;
  v19[1] = sub_1B1D1B6B8;

  return sub_1B1D1AC00(v8, v10, v13, v15, v16, v18);
}

uint64_t sub_1B1D1B6B8()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v6 = *v0;

  sub_1B1CDEFDC(v2, v1);

  v3[2](v3);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1B1D1B870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[20] = v6;
  *v6 = v5;
  v6[1] = sub_1B1D1B94C;

  return sub_1B1D1A648();
}

uint64_t sub_1B1D1B94C(uint64_t a1)
{
  v2 = *(*v1 + 136);
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B1D1BA64, v2, 0);
}

uint64_t sub_1B1D1BA64(void *a1)
{
  v2 = v1[21];
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (*(v2 + 16))
    {
      v5 = 0;
      v7 = -1 << *(v2 + 32);
      v3 = v2 + 56;
      v4 = ~v7;
      v8 = -v7;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      else
      {
        v9 = -1;
      }

      v6 = v9 & *(v2 + 56);
      goto LABEL_9;
    }

LABEL_30:

    if (qword_1EB7749C0 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (!sub_1B1D7C1FC())
  {
    goto LABEL_30;
  }

  sub_1B1D7C1EC();
  sub_1B1CF5EB4();
  sub_1B1D172D0();
  sub_1B1D7BF8C();
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
LABEL_9:
  v10 = (v4 + 64) >> 6;
  v38 = v2;
  v39 = v10;
  v40 = v3;
  while (v2 < 0)
  {
    v16 = sub_1B1D7C21C();
    if (!v16 || (v1[12] = v16, sub_1B1CF5EB4(), swift_dynamicCast(), v15 = v1[11], v13 = v5, v14 = v6, !v15))
    {
LABEL_29:
      sub_1B1D17338(v2);
      goto LABEL_34;
    }

LABEL_21:
    v45 = v14;
    v17 = v1[19];
    v43 = v1[18];
    v18 = v1[15];
    v19 = v1[16];
    v20 = v1[14];
    v41 = v17;
    v42 = v1[13];
    v21 = sub_1B1D7BF4C();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v17, 1, 1, v21);
    sub_1B1D7BF2C();
    v23 = v15;

    sub_1B1CE111C(v18, v19);
    v24 = sub_1B1D7BF1C();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = MEMORY[0x1E69E85E0];
    v25[4] = v23;
    v44 = v23;
    v25[5] = v42;
    v25[6] = v20;
    v25[7] = v18;
    v25[8] = v19;
    sub_1B1D20E80(v41, v43);
    LODWORD(v18) = (*(v22 + 48))(v43, 1, v21);

    v26 = v1[18];
    if (v18 == 1)
    {
      sub_1B1D20EF0(v1[18]);
    }

    else
    {
      sub_1B1D7BF3C();
      (*(v22 + 8))(v26, v21);
    }

    v27 = v25[2];
    swift_unknownObjectRetain();

    v10 = v39;
    v3 = v40;
    if (v27)
    {
      swift_getObjectType();
      v28 = sub_1B1D7BF0C();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v2 = v38;
    sub_1B1D20EF0(v1[19]);
    v31 = swift_allocObject();
    *(v31 + 16) = &unk_1B1D88498;
    *(v31 + 24) = v25;
    if (v30 | v28)
    {
      v1[7] = 0;
      v1[8] = 0;
      v1[9] = v28;
      v1[10] = v30;
    }

    swift_task_create();

    v5 = v13;
    v6 = v45;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_17:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_29;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_38:
  swift_once();
LABEL_31:
  v32 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v32, qword_1EB782548);
  v33 = sub_1B1D7BD6C();
  v34 = sub_1B1D7BFEC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1B1C8D000, v33, v34, "No supporting credential providers found. Nothing to report.", v35, 2u);
    MEMORY[0x1B273C4C0](v35, -1, -1);
  }

LABEL_34:

  v36 = v1[1];

  return v36();
}

uint64_t sub_1B1D1BF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_1B1D7BF2C();
  v8[7] = sub_1B1D7BF1C();
  v10 = sub_1B1D7BF0C();

  return MEMORY[0x1EEE6DFA0](sub_1B1D1C010, v10, v9);
}

uint64_t sub_1B1D1C010()
{
  v1 = *(v0 + 16);

  v2 = objc_allocWithZone(_ASCredentialAuthenticationViewController);
  v3 = sub_1B1D7BE1C();
  v4 = sub_1B1D7B4DC();
  v5 = [v2 initWithExtension:v1 unknownPasskeyRequestForRelyingParty:v3 credentialID:v4];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B1D1C278(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1B1D7BE4C();
  v8 = v7;
  v4[4] = v7;
  v9 = a2;

  v10 = sub_1B1D7B4EC();
  v12 = v11;

  v4[5] = v10;
  v4[6] = v12;
  v13 = swift_task_alloc();
  v4[7] = v13;
  *v13 = v4;
  v13[1] = sub_1B1D1C37C;

  return sub_1B1D1B870(v6, v8, v10, v12);
}

uint64_t sub_1B1D1C37C()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);
  v6 = *v0;

  sub_1B1CDEFDC(v2, v1);

  v3[2](v3);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1B1D1C518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[17] = a5;
  v6[18] = v5;
  v6[15] = a3;
  v6[16] = a4;
  v6[13] = a1;
  v6[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v7 = swift_task_alloc();
  v6[21] = v7;
  *v7 = v6;
  v7[1] = sub_1B1D1C5F4;

  return sub_1B1D1A648();
}

uint64_t sub_1B1D1C5F4(uint64_t a1)
{
  v2 = *(*v1 + 144);
  *(*v1 + 176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B1D1C70C, v2, 0);
}

uint64_t sub_1B1D1C70C(void *a1)
{
  v2 = v1[22];
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (*(v2 + 16))
    {
      v5 = 0;
      v7 = -1 << *(v2 + 32);
      v3 = v2 + 56;
      v4 = ~v7;
      v8 = -v7;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      else
      {
        v9 = -1;
      }

      v6 = v9 & *(v2 + 56);
      goto LABEL_9;
    }

LABEL_30:

    if (qword_1EB7749C0 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (!sub_1B1D7C1FC())
  {
    goto LABEL_30;
  }

  sub_1B1D7C1EC();
  sub_1B1CF5EB4();
  sub_1B1D172D0();
  sub_1B1D7BF8C();
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
LABEL_9:
  v10 = (v4 + 64) >> 6;
  v39 = v2;
  v40 = v10;
  v41 = v3;
  while (v2 < 0)
  {
    v16 = sub_1B1D7C21C();
    if (!v16 || (v1[12] = v16, sub_1B1CF5EB4(), swift_dynamicCast(), v15 = v1[11], v13 = v5, v14 = v6, !v15))
    {
LABEL_29:
      sub_1B1D17338(v2);
      goto LABEL_34;
    }

LABEL_21:
    v47 = v14;
    v17 = v1[20];
    v46 = v1[19];
    v18 = v1[16];
    v42 = v1[17];
    v20 = v1[14];
    v19 = v1[15];
    v44 = v17;
    v45 = v1[13];
    v21 = sub_1B1D7BF4C();
    v43 = *(v21 - 8);
    (*(v43 + 56))(v17, 1, 1, v21);
    sub_1B1D7BF2C();
    v22 = v15;

    v23 = v18;
    sub_1B1CE111C(v19, v18);

    v24 = sub_1B1D7BF1C();
    v25 = swift_allocObject();
    v25[2] = v24;
    v25[3] = MEMORY[0x1E69E85E0];
    v25[4] = v22;
    v25[5] = v45;
    v25[6] = v20;
    v25[7] = v19;
    v25[8] = v23;
    v25[9] = v42;
    sub_1B1D20E80(v44, v46);
    v26 = (*(v43 + 48))(v46, 1, v21);

    v27 = v1[19];
    if (v26 == 1)
    {
      sub_1B1D20EF0(v1[19]);
    }

    else
    {
      sub_1B1D7BF3C();
      (*(v43 + 8))(v27, v21);
    }

    v28 = v25[2];
    swift_unknownObjectRetain();

    v10 = v40;
    v3 = v41;
    if (v28)
    {
      swift_getObjectType();
      v29 = sub_1B1D7BF0C();
      v31 = v30;
      swift_unknownObjectRelease();
    }

    else
    {
      v29 = 0;
      v31 = 0;
    }

    v2 = v39;
    sub_1B1D20EF0(v1[20]);
    v32 = swift_allocObject();
    *(v32 + 16) = &unk_1B1D884C0;
    *(v32 + 24) = v25;
    if (v31 | v29)
    {
      v1[7] = 0;
      v1[8] = 0;
      v1[9] = v29;
      v1[10] = v31;
    }

    swift_task_create();

    v5 = v13;
    v6 = v47;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_17:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_29;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_38:
  swift_once();
LABEL_31:
  v33 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v33, qword_1EB782548);
  v34 = sub_1B1D7BD6C();
  v35 = sub_1B1D7BFEC();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_1B1C8D000, v34, v35, "No supporting credential providers found. Nothing to report.", v36, 2u);
    MEMORY[0x1B273C4C0](v36, -1, -1);
  }

LABEL_34:

  v37 = v1[1];

  return v37();
}

uint64_t sub_1B1D1CC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v13;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  sub_1B1D7BF2C();
  v8[8] = sub_1B1D7BF1C();
  v10 = sub_1B1D7BF0C();

  return MEMORY[0x1EEE6DFA0](sub_1B1D1CCDC, v10, v9);
}

uint64_t sub_1B1D1CCDC()
{
  v1 = *(v0 + 16);

  v2 = objc_allocWithZone(_ASCredentialAuthenticationViewController);
  v3 = sub_1B1D7BE1C();
  v4 = sub_1B1D7B4DC();
  v5 = sub_1B1D7BEDC();
  v6 = [v2 initWithExtension:v1 acceptedPasskeysRequestForRelyingParty:v3 userHandle:v4 acceptedCredentialIDs:v5];

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B1D1CF80(uint64_t a1, void *a2, void *a3, void *aBlock, uint64_t a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = sub_1B1D7BE4C();
  v10 = v9;
  v5[4] = v9;
  v11 = a2;
  v12 = a3;

  v13 = sub_1B1D7B4EC();
  v15 = v14;

  v5[5] = v13;
  v5[6] = v15;
  v16 = sub_1B1D7BEEC();
  v5[7] = v16;

  v17 = swift_task_alloc();
  v5[8] = v17;
  *v17 = v5;
  v17[1] = sub_1B1D21F08;

  return sub_1B1D1C518(v8, v10, v13, v15, v16);
}

uint64_t sub_1B1D1D0B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[16] = a4;
  v5[17] = v4;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v6 = swift_task_alloc();
  v5[20] = v6;
  *v6 = v5;
  v6[1] = sub_1B1D1D194;

  return sub_1B1D1A648();
}

uint64_t sub_1B1D1D194(uint64_t a1)
{
  v2 = *(*v1 + 136);
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B1D1D2AC, v2, 0);
}

uint64_t sub_1B1D1D2AC(void *a1)
{
  v2 = v1[21];
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (*(v2 + 16))
    {
      v5 = 0;
      v7 = -1 << *(v2 + 32);
      v3 = v2 + 56;
      v4 = ~v7;
      v8 = -v7;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      else
      {
        v9 = -1;
      }

      v6 = v9 & *(v2 + 56);
      goto LABEL_9;
    }

LABEL_30:

    if (qword_1EB7749C0 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_31;
  }

  if (!sub_1B1D7C1FC())
  {
    goto LABEL_30;
  }

  sub_1B1D7C1EC();
  sub_1B1CF5EB4();
  sub_1B1D172D0();
  sub_1B1D7BF8C();
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
LABEL_9:
  v10 = (v4 + 64) >> 6;
  v38 = v3;
  v39 = v2;
  v37 = v10;
  while (v2 < 0)
  {
    v16 = sub_1B1D7C21C();
    if (!v16 || (v1[12] = v16, sub_1B1CF5EB4(), swift_dynamicCast(), v15 = v1[11], v13 = v5, v14 = v6, !v15))
    {
LABEL_29:
      sub_1B1D17338(v2);
      goto LABEL_34;
    }

LABEL_21:
    v44 = v14;
    v17 = v1[19];
    v18 = v1[16];
    v41 = v1[15];
    v42 = v1[18];
    v19 = v1[14];
    v40 = v1[13];
    v20 = sub_1B1D7BF4C();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v17, 1, 1, v20);
    sub_1B1D7BF2C();
    v22 = v15;

    v23 = sub_1B1D7BF1C();
    v24 = swift_allocObject();
    v24[2] = v23;
    v24[3] = MEMORY[0x1E69E85E0];
    v24[4] = v22;
    v43 = v22;
    v24[5] = v40;
    v24[6] = v19;
    v24[7] = v41;
    v24[8] = v18;
    sub_1B1D20E80(v17, v42);
    LODWORD(v19) = (*(v21 + 48))(v42, 1, v20);

    v25 = v1[18];
    if (v19 == 1)
    {
      sub_1B1D20EF0(v1[18]);
    }

    else
    {
      sub_1B1D7BF3C();
      (*(v21 + 8))(v25, v20);
    }

    v26 = v24[2];
    swift_unknownObjectRetain();

    if (v26)
    {
      swift_getObjectType();
      v27 = sub_1B1D7BF0C();
      v29 = v28;
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v10 = v37;
    sub_1B1D20EF0(v1[19]);
    v30 = swift_allocObject();
    *(v30 + 16) = &unk_1B1D884E0;
    *(v30 + 24) = v24;
    if (v29 | v27)
    {
      v1[7] = 0;
      v1[8] = 0;
      v1[9] = v27;
      v1[10] = v29;
    }

    v3 = v38;
    v2 = v39;
    swift_task_create();

    v5 = v13;
    v6 = v44;
  }

  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_17:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_29;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_38:
  swift_once();
LABEL_31:
  v31 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v31, qword_1EB782548);
  v32 = sub_1B1D7BD6C();
  v33 = sub_1B1D7BFEC();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1B1C8D000, v32, v33, "No supporting credential providers found. Nothing to report.", v34, 2u);
    MEMORY[0x1B273C4C0](v34, -1, -1);
  }

LABEL_34:

  v35 = v1[1];

  return v35();
}

uint64_t sub_1B1D1D7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_1B1D7BF2C();
  v8[7] = sub_1B1D7BF1C();
  v10 = sub_1B1D7BF0C();

  return MEMORY[0x1EEE6DFA0](sub_1B1D1D858, v10, v9);
}

uint64_t sub_1B1D1D858()
{
  v1 = *(v0 + 16);

  v2 = objc_allocWithZone(_ASCredentialAuthenticationViewController);
  v3 = sub_1B1D7BE1C();
  v4 = sub_1B1D7BE1C();
  v5 = [v2 initWithExtension:v1 unusedPasswordRequestForDomain:v3 username:v4];

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B1D1DAC0(uint64_t a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v5 = sub_1B1D7BE4C();
  v7 = v6;
  v4[4] = v6;
  v8 = sub_1B1D7BE4C();
  v10 = v9;
  v4[5] = v9;

  v11 = swift_task_alloc();
  v4[6] = v11;
  *v11 = v4;
  v11[1] = sub_1B1D1DBBC;

  return sub_1B1D1D0B8(v5, v7, v8, v10);
}

uint64_t sub_1B1D1DBBC()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v4 + 8);

  return v2();
}

void _ASCredentialProviderExtensionNotificationManager.__allocating_init()()
{
  swift_allocObject();
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void _ASCredentialProviderExtensionNotificationManager.init()()
{
  swift_defaultActor_initialize();
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t _ASCredentialProviderExtensionNotificationManager.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B1D1DE68(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B1D1DF60;

  return v6(a1);
}

uint64_t sub_1B1D1DF60()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B1D1E058(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = *v3;
  sub_1B1D7C5CC();
  sub_1B1D7B4FC();
  v7 = sub_1B1D7C61C();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v50 = *v40;
    sub_1B1CE111C(a2, a3);
    sub_1B1D1F508(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v40 = *v50;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  if (a2)
  {
    v12 = 0;
  }

  else
  {
    v12 = a3 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a3 >> 62;
  v15 = __OFSUB__(HIDWORD(a2), a2);
  v45 = v15;
  v44 = a3;
  v46 = v11;
  v47 = BYTE6(a3);
  v42 = v6 + 56;
  v43 = v6;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v48) & 1) == 0)
      {
        v37 = 0;
        v38 = 0xC000000000000000;
        goto LABEL_63;
      }

LABEL_36:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_65;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_66;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v47;
        if (v14)
        {
          v27 = HIDWORD(a2) - a2;
          if (v45)
          {
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
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
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_61;
      }

      goto LABEL_13;
    }

    v29 = *(a2 + 16);
    v28 = *(a2 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_64;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_61;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v50 = v18;
        *&v50[8] = v17;
        v50[10] = BYTE2(v17);
        v50[11] = BYTE3(v17);
        v50[12] = BYTE4(v17);
        v50[13] = BYTE5(v17);
        sub_1B1CE111C(v18, v17);
        v11 = v46;
        goto LABEL_60;
      }

      if (v18 >> 32 < v18)
      {
        goto LABEL_67;
      }

      sub_1B1CE111C(v18, v17);
      v32 = sub_1B1D7B34C();
      if (v32)
      {
        v34 = sub_1B1D7B36C();
        if (__OFSUB__(v18, v34))
        {
          goto LABEL_70;
        }

        v32 += v18 - v34;
      }

      goto LABEL_57;
    }

    if (v19 != 2)
    {
      break;
    }

    v31 = *(v18 + 16);
    v30 = *(v18 + 24);
    sub_1B1CE111C(v18, v17);
    v32 = sub_1B1D7B34C();
    if (v32)
    {
      v33 = sub_1B1D7B36C();
      if (__OFSUB__(v31, v33))
      {
        goto LABEL_69;
      }

      v32 += v31 - v33;
    }

    if (__OFSUB__(v30, v31))
    {
      goto LABEL_68;
    }

LABEL_57:
    sub_1B1D7B35C();
    a3 = v44;
    sub_1B1D036A8(v32, a2, v44, v50);
    sub_1B1CDEFDC(v18, v17);
    v8 = v42;
    v6 = v43;
    v11 = v46;
    if (v50[0])
    {
      goto LABEL_61;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  *&v50[6] = 0;
  *v50 = 0;
  sub_1B1CE111C(v18, v17);
LABEL_60:
  sub_1B1D036A8(v50, a2, a3, &v49);
  sub_1B1CDEFDC(v18, v17);
  if (!v49)
  {
    goto LABEL_13;
  }

LABEL_61:
  v37 = a2;
  v38 = a3;
LABEL_63:
  sub_1B1CDEFDC(v37, v38);
  v39 = *(*(v6 + 48) + 16 * v10);
  *a1 = v39;
  sub_1B1CE111C(v39, *(&v39 + 1));
  return 0;
}

uint64_t sub_1B1D1E4E0(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_1B1D7C5CC();
  if (a3)
  {
    if (a3 != 1)
    {
      MEMORY[0x1B273B630](0);
      sub_1B1D7BE7C();
      goto LABEL_7;
    }

    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  MEMORY[0x1B273B630](v8);
LABEL_7:
  v9 = sub_1B1D7C61C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1B1CF96A8(a2, a3);
    sub_1B1D1F980(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v12 = ~v10;
  v13 = *(v7 + 48);
  while (1)
  {
    v14 = (v13 + 16 * v11);
    v15 = v14[1];
    if (!v15)
    {
      if (!a3)
      {
        goto LABEL_22;
      }

      goto LABEL_10;
    }

    if (v15 != 1)
    {
      break;
    }

    if (a3 == 1)
    {
      goto LABEL_22;
    }

LABEL_10:
    v11 = (v11 + 1) & v12;
    if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if (a3 < 2)
  {
    goto LABEL_10;
  }

  v16 = *v14 == a2 && v15 == a3;
  if (!v16 && (sub_1B1D7C50C() & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1B1CED598(a2, a3);
LABEL_22:
  v17 = *(*(v7 + 48) + 16 * v11);
  *a1 = v17;
  sub_1B1CF96A8(v17, *(&v17 + 1));
  return 0;
}

BOOL sub_1B1D1E69C()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  v2 = sub_1B1D7C61C() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    sub_1B1D1FB58(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t sub_1B1D1E758(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B1D7C20C();

    if (v9)
    {

      sub_1B1CF5EB4();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B1D7C1FC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B1D1E970(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B1D1F25C(v20 + 1);
    }

    v18 = v8;
    sub_1B1D1F484(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1B1CF5EB4();
  v11 = sub_1B1D7C13C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B1D1FC70(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B1D7C14C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B1D1E970(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7754F0, &qword_1B1D88680);
    v2 = sub_1B1D7C24C();
    v15 = v2;
    sub_1B1D7C1EC();
    if (sub_1B1D7C21C())
    {
      sub_1B1CF5EB4();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1B1D1F25C(v9 + 1);
        }

        v2 = v15;
        result = sub_1B1D7C13C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1B1D7C21C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1B1D1EB50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7754D8, &unk_1B1D88660);
  result = sub_1B1D7C23C();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1B1D7C5CC();
      sub_1B1D7B4FC();
      result = sub_1B1D7C61C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B1D1EDB0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7754F8, &qword_1B1D88688);
  result = sub_1B1D7C23C();
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
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_36;
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
          bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v29;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_34;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_1B1D7C5CC();
      if (!v19)
      {
        break;
      }

      if (v19 == 1)
      {
        v21 = 2;
LABEL_19:
        MEMORY[0x1B273B630](v21);
        goto LABEL_21;
      }

      MEMORY[0x1B273B630](0);
      sub_1B1D7BE7C();
LABEL_21:
      result = sub_1B1D7C61C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v21 = 1;
    goto LABEL_19;
  }

LABEL_34:

  *v2 = v5;
  return result;
}

uint64_t sub_1B1D1F03C(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750C8, &qword_1B1D861E0);
  result = sub_1B1D7C23C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
LABEL_13:
      sub_1B1D7C5CC();
      sub_1B1D7BE7C();
      result = sub_1B1D7C61C();
      v14 = -1 << *(v4 + 32);
      v15 = result & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v11 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v11 + 8 * v16);
          if (v20 != -1)
          {
            v12 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

LABEL_28:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v15) & ~*(v11 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v9 &= v9 - 1;
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      ++*(v4 + 16);
    }

    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v13 >= v10)
      {
        break;
      }

      v9 = v6[v13];
      ++v5;
      if (v9)
      {
        v5 = v13;
        goto LABEL_13;
      }
    }

    v21 = 1 << *(v2 + 32);
    if (v21 >= 64)
    {
      bzero((v2 + 56), ((v21 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v21;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_1B1D1F25C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7754F0, &qword_1B1D88680);
  result = sub_1B1D7C23C();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1B1D7C13C();
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1B1D1F484(uint64_t a1, uint64_t a2)
{
  sub_1B1D7C13C();
  result = sub_1B1D7C1DC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1B1D1F508(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1B1D1EB50(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        sub_1B1D1FDD0();
        goto LABEL_68;
      }

      sub_1B1D202E4(v8 + 1);
    }

    v10 = *v4;
    sub_1B1D7C5CC();
    sub_1B1D7B4FC();
    v11 = sub_1B1D7C61C();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = v11 & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (result)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v49 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(result), result);
      v46 = v18;
      v45 = HIDWORD(result) - result;
      v47 = v14;
      v48 = BYTE6(a2);
      v42 = result;
      v43 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(result + 16);
          v28 = *(result + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v48;
          if (v17)
          {
            v27 = v45;
            if (v46)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_1B1CE111C(v21, v20);
              v35 = sub_1B1D7B34C();
              if (v35)
              {
                v36 = sub_1B1D7B36C();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v51[6] = 0;
            *v51 = 0;
            sub_1B1CE111C(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_1B1CE111C(v21, v20);
              v35 = sub_1B1D7B34C();
              if (v35)
              {
                v37 = sub_1B1D7B36C();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              sub_1B1D7B35C();
              result = v42;
              a2 = v43;
              sub_1B1D036A8(v35, v42, v43, v51);
              sub_1B1CDEFDC(v21, v20);
              v12 = v10 + 56;
              v14 = v47;
              if (v51[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v51 = v21;
            *&v51[8] = v20;
            v51[10] = BYTE2(v20);
            v51[11] = BYTE3(v20);
            v51[12] = BYTE4(v20);
            v51[13] = BYTE5(v20);
            sub_1B1CE111C(v21, v20);
            v14 = v47;
          }

          sub_1B1D036A8(v51, result, a2, &v50);
          sub_1B1CDEFDC(v21, v20);
          if (v50)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v49) & 1) == 0)
      {
LABEL_67:
        sub_1B1D7C52C();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v44;
  *(*v44 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = result;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
}

uint64_t sub_1B1D1F980(uint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_29;
  }

  if (a4)
  {
    sub_1B1D1EDB0(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_1B1D1FF2C();
      goto LABEL_29;
    }

    sub_1B1D20520(v9 + 1);
  }

  v11 = *v4;
  sub_1B1D7C5CC();
  if (a2)
  {
    if (a2 != 1)
    {
      MEMORY[0x1B273B630](0);
      sub_1B1D7BE7C();
      goto LABEL_14;
    }

    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  MEMORY[0x1B273B630](v12);
LABEL_14:
  result = sub_1B1D7C61C();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
    goto LABEL_29;
  }

  v15 = ~v14;
  v16 = *(v11 + 48);
  while (1)
  {
    v17 = (v16 + 16 * a3);
    v18 = v17[1];
    if (!v18)
    {
      if (!a2)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v18 != 1)
    {
      break;
    }

    if (a2 == 1)
    {
      goto LABEL_28;
    }

LABEL_17:
    a3 = (a3 + 1) & v15;
    if (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  if (a2 < 2)
  {
    goto LABEL_17;
  }

  if (*v17 != v8 || v18 != a2)
  {
    result = sub_1B1D7C50C();
    if ((result & 1) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_28:
  result = sub_1B1D7C52C();
  __break(1u);
LABEL_29:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = v8;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

unint64_t sub_1B1D1FB58(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1B1D1F03C(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_1B1D20784(v3 + 1);
LABEL_8:
      v6 = *v2;
      sub_1B1D7C5CC();
      sub_1B1D7BE7C();
      result = sub_1B1D7C61C() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_1B1D20088();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_1B1D7C52C();
  __break(1u);
  return result;
}

void sub_1B1D1FC70(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B1D1F25C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1B1D20194();
      goto LABEL_12;
    }

    sub_1B1D20968(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1B1D7C13C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1B1CF5EB4();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1B1D7C14C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B1D7C52C();
  __break(1u);
}

void sub_1B1D1FDD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7754D8, &unk_1B1D88660);
  v2 = *v0;
  v3 = sub_1B1D7C22C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        sub_1B1CE111C(v18, *(&v18 + 1));
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
}

void *sub_1B1D1FF2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7754F8, &qword_1B1D88688);
  v2 = *v0;
  v3 = sub_1B1D7C22C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1B1CF96A8(v18, *(&v18 + 1));
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

void *sub_1B1D20088()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750C8, &qword_1B1D861E0);
  v2 = *v0;
  v3 = sub_1B1D7C22C();
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
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }

  return result;
}

id sub_1B1D20194()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7754F0, &qword_1B1D88680);
  v2 = *v0;
  v3 = sub_1B1D7C22C();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
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

uint64_t sub_1B1D202E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7754D8, &unk_1B1D88660);
  result = sub_1B1D7C23C();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1B1D7C5CC();
      sub_1B1CE111C(v18, v19);
      sub_1B1D7B4FC();
      result = sub_1B1D7C61C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_1B1D20520(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7754F8, &qword_1B1D88688);
  result = sub_1B1D7C23C();
  v5 = result;
  if (!*(v3 + 16))
  {

LABEL_32:
    *v2 = v5;
    return result;
  }

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
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_15:
    v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
    v19 = *v17;
    v18 = v17[1];
    sub_1B1D7C5CC();
    if (!v18)
    {
      v20 = 1;
      goto LABEL_19;
    }

    if (v18 == 1)
    {
      v20 = 2;
LABEL_19:
      MEMORY[0x1B273B630](v20);
      goto LABEL_21;
    }

    MEMORY[0x1B273B630](0);

    sub_1B1D7BE7C();
LABEL_21:
    result = sub_1B1D7C61C();
    v21 = -1 << *(v5 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v21) >> 6;
      while (++v23 != v25 || (v24 & 1) == 0)
      {
        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        v27 = *(v11 + 8 * v23);
        if (v27 != -1)
        {
          v12 = __clz(__rbit64(~v27)) + (v23 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_34;
    }

    v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
    v13 = (*(v5 + 48) + 16 * v12);
    *v13 = v19;
    v13[1] = v18;
    ++*(v5 + 16);
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v6 >= v10)
    {

      v2 = v1;
      goto LABEL_32;
    }

    v16 = *(v3 + 56 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v9 = (v16 - 1) & v16;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1B1D20784(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750C8, &qword_1B1D861E0);
  result = sub_1B1D7C23C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
LABEL_13:
      sub_1B1D7C5CC();
      sub_1B1D7BE7C();
      result = sub_1B1D7C61C();
      v13 = -1 << *(v4 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v10 + 8 * (v14 >> 6))) == 0)
      {
        v16 = 0;
        v17 = (63 - v13) >> 6;
        while (++v15 != v17 || (v16 & 1) == 0)
        {
          v18 = v15 == v17;
          if (v15 == v17)
          {
            v15 = 0;
          }

          v16 |= v18;
          v19 = *(v10 + 8 * v15);
          if (v19 != -1)
          {
            v11 = __clz(__rbit64(~v19)) + (v15 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v11 = __clz(__rbit64((-1 << v14) & ~*(v10 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v4 + 16);
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_22;
      }

      v8 = *(v2 + 56 + 8 * v12);
      ++v5;
      if (v8)
      {
        v5 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1B1D20968(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7754F0, &qword_1B1D88680);
  result = sub_1B1D7C23C();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1B1D7C13C();
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
      *(*(v5 + 48) + 8 * v12) = v16;
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

        v2 = v24;
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

uint64_t sub_1B1D20B7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B1D10564();
  result = MEMORY[0x1B273AFD0](v2, MEMORY[0x1E6969080], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_1B1CE111C(v7, *v5);
      sub_1B1D1E058(v8, v7, v6);
      sub_1B1CDEFDC(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_1B1D20C18(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_1B1D21DFC();
  result = MEMORY[0x1B273AFD0](v1, &type metadata for ASExportedCredentialData.FormatVersion, v2);
  v4 = result;
  if (v1)
  {
    do
    {
      sub_1B1D1E69C();
      --v1;
    }

    while (v1);
    return v4;
  }

  return result;
}

uint64_t sub_1B1D20C74(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B1D7C1FC())
  {
    v4 = sub_1B1CF5EB4();
    v5 = sub_1B1D172D0();
    result = MEMORY[0x1B273AFD0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1B273B2E0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1B1D1E758(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1B1D7C1FC();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1B1D20DA4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B1CE9AD0;

  return sub_1B1D1BF70(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B1D20E80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1D20EF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1D20F58(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B1CE9AD0;

  return sub_1B1D1DE68(a1, v4);
}

uint64_t sub_1B1D21010(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B1CE9AD0;

  return sub_1B1D1CC34(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B1D210FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B1CE9AD0;

  return sub_1B1D1D7B8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t dispatch thunk of _ASCredentialProviderExtensionNotificationManager.extensionsSupportingCredentialUpdate()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B1D21334;

  return v5();
}

uint64_t sub_1B1D21334(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of _ASCredentialProviderExtensionNotificationManager.reportPublicKeyCredentialUpdate(relyingParty:userHandle:newName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x70);
  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B1CE9AD0;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of _ASCredentialProviderExtensionNotificationManager.reportUnknownPublicKeyCredential(relyingParty:credentialID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x78);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B1CE9AD0;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of _ASCredentialProviderExtensionNotificationManager.reportAllAcceptedPublicKeyCredentials(relyingParty:userHandle:acceptedCredentialIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x80);
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B1CE9AD0;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of _ASCredentialProviderExtensionNotificationManager.reportUnusedPasswordCredential(domain:username:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x88);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B1CE99BC;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1B1D21998()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B1CE9AD0;

  return sub_1B1D1DAC0(v2, v3, v5, v4);
}

uint64_t sub_1B1D21A58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B1CE9AD0;

  return sub_1B1D1CF80(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_36Tm()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B1D21B70()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B1CE9AD0;

  return sub_1B1D1C278(v2, v3, v5, v4);
}

uint64_t objectdestroy_49Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B1D21C88()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B1CE9AD0;

  return sub_1B1D1B580(v2, v3, v4, v5, v6);
}

uint64_t sub_1B1D21D50()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B1CE9AD0;

  return sub_1B1D1A9D8(v2, v3);
}

unint64_t sub_1B1D21DFC()
{
  result = qword_1EB7754E0;
  if (!qword_1EB7754E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7754E0);
  }

  return result;
}

uint64_t sub_1B1D21E50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B1CE99BC;

  return sub_1B1D1DE68(a1, v4);
}

uint64_t sub_1B1D22094(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_1B1CED540(0, &qword_1EB775500, 0x1E69C8A10);
  v5 = sub_1B1D7BEEC();
  v3[4] = v5;
  v6 = a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1B1D2218C;

  return sub_1B1D229A0(v5);
}

uint64_t sub_1B1D2218C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 24);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1B1D222F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B1CE9AD0;

  return sub_1B1D22094(v2, v3, v4);
}

uint64_t sub_1B1D223A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1B1CE9AD0;

  return v6();
}

uint64_t sub_1B1D2248C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B1CE99BC;

  return v7();
}

uint64_t sub_1B1D22574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1B1D20E80(a3, v23 - v10);
  v12 = sub_1B1D7BF4C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B1D20EF0(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1B1D7BF3C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1B1D7BF0C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1B1D7BE6C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1B1D20EF0(a3);

    return v21;
  }

LABEL_8:
  sub_1B1D20EF0(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1B1D22830(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B1CE9AD0;

  return sub_1B1D1DE68(a1, v4);
}

uint64_t sub_1B1D228E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B1CE99BC;

  return sub_1B1D1DE68(a1, v4);
}

uint64_t sub_1B1D229C0()
{
  if ([objc_opt_self() isPromotePasskeyUpgradesEnabled])
  {
    sub_1B1CED540(0, &qword_1EB775508, 0x1E69C8980);
    v1 = objc_allocWithZone(MEMORY[0x1E69C8988]);
    [v1 initWithMetadataEntryClass_];
    sub_1B1D7B69C();
    sub_1B1D7B68C();
    swift_allocObject();
    sub_1B1D7B67C();
    sub_1B1D7B6BC();
    swift_allocObject();
    v0[3] = sub_1B1D7B6AC();
    v7 = (*MEMORY[0x1E69C87A8] + MEMORY[0x1E69C87A8]);
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_1B1D22BA4;
    v4 = v0[2];

    return v7(v4, 0, 0);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1B1D22BA4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1D22CA0, 0, 0);
}

uint64_t sub_1B1D22CA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B1D22D10(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775510, &qword_1B1D886D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B1D22E28(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_name;
  swift_beginAccess();
  sub_1B1D22EF8(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1B1D22DD0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_name;
  swift_beginAccess();
  return sub_1B1D22E28(v1 + v3, a1);
}

uint64_t sub_1B1D22E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775510, &qword_1B1D886D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1D22E98(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_name;
  swift_beginAccess();
  sub_1B1D22EF8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1B1D22EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775510, &qword_1B1D886D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1D22FC8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_email + 8);
  if (v2)
  {
    *a1 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_email);
    *(a1 + 8) = v2;
    *(a1 + 16) = 1;
  }

  else
  {
    result = *(v1 + OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_phoneNumber + 8);
    if (!result)
    {
      __break(1u);
      return result;
    }

    *a1 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_phoneNumber);
    *(a1 + 8) = result;
    *(a1 + 16) = 0;
  }
}

void sub_1B1D2304C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_credentialRegistration;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id sub_1B1D230AC()
{
  v1 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_credentialRegistration;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1B1D23100(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_credentialRegistration;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1B1D231BC@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775510, &qword_1B1D886D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v7 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_email);
  v6 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_email + 8);
  v9 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_phoneNumber);
  v8 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_phoneNumber + 8);
  v10 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_name;
  swift_beginAccess();
  sub_1B1D22E28(v1 + v10, v5);
  v11 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_credentialRegistration;
  swift_beginAccess();
  v12 = *(v1 + v11);

  [v12 copy];
  sub_1B1D7C1AC();
  swift_unknownObjectRelease();
  sub_1B1CED540(0, &qword_1EB775528, off_1E7AF67F8);
  swift_dynamicCast();
  v13 = v23;
  v14 = type metadata accessor for ASAuthorizationAccountCreationPlatformPublicKeyCredential(0);
  v15 = objc_allocWithZone(v14);
  v16 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_name;
  v17 = sub_1B1D7B3BC();
  (*(*(v17 - 8) + 56))(&v15[v16], 1, 1, v17);
  v18 = &v15[OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_email];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v15[OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_phoneNumber];
  *v18 = v7;
  *(v18 + 1) = v6;
  *v19 = v9;
  *(v19 + 1) = v8;
  swift_beginAccess();
  sub_1B1CED898(v5, &v15[v16]);
  swift_endAccess();
  *&v15[OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_credentialRegistration] = v13;
  v22.receiver = v15;
  v22.super_class = v14;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  result = sub_1B1CED908(v5);
  a1[3] = v14;
  *a1 = v20;
  return result;
}

uint64_t type metadata accessor for ASAuthorizationAccountCreationPlatformPublicKeyCredential(uint64_t a1)
{
  result = qword_1EB7755B0;
  if (!qword_1EB7755B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B1D234B0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775510, &qword_1B1D886D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19[-v5];
  if (*(v2 + OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_email + 8))
  {

    v7 = sub_1B1D7BE1C();
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1B1D7BE1C();
  [a1 encodeObject:v7 forKey:v8];
  swift_unknownObjectRelease();

  if (*(v2 + OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_phoneNumber + 8))
  {

    v9 = sub_1B1D7BE1C();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_1B1D7BE1C();
  [a1 encodeObject:v9 forKey:v10];
  swift_unknownObjectRelease();

  v11 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_name;
  swift_beginAccess();
  sub_1B1D22E28(v2 + v11, v6);
  v12 = sub_1B1D7B3BC();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v6, 1, v12) != 1)
  {
    v14 = sub_1B1D7B3AC();
    (*(v13 + 8))(v6, v12);
  }

  v15 = sub_1B1D7BE1C();
  [a1 encodeObject:v14 forKey:v15];
  swift_unknownObjectRelease();

  v16 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_credentialRegistration;
  swift_beginAccess();
  v17 = *(v2 + v16);
  v18 = sub_1B1D7BE1C();
  [a1 encodeObject:v17 forKey:v18];
}

id ASAuthorizationAccountCreationPlatformPublicKeyCredential.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775510, &qword_1B1D886D0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v37 - v8;
  sub_1B1CED540(0, &qword_1EB775530, 0x1E696AEC0);
  v10 = sub_1B1D7C12C();
  v11 = sub_1B1D7C12C();
  sub_1B1CED540(0, &qword_1EB775538, 0x1E696ADF0);
  v12 = sub_1B1D7C12C();
  sub_1B1CED540(0, &qword_1EB775528, off_1E7AF67F8);
  v13 = sub_1B1D7C12C();
  if (v13)
  {
    v14 = v13;
    if (v10)
    {
      v47 = 0;
      v48 = 0;
      v15 = v10;
      sub_1B1D7BE3C();

      v16 = v47;
      if (!v48)
      {
        v16 = 0;
      }

      v43 = v16;
      v44 = v48;
      if (v11)
      {
LABEL_6:
        v47 = 0;
        v48 = 0;
        v17 = v11;
        sub_1B1D7BE3C();

        v18 = v47;
        if (!v48)
        {
          v18 = 0;
        }

        v41 = v18;
        v42 = v48;
        v45 = v10;
        if (v12)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }
    }

    else
    {
      v43 = 0;
      v44 = 0;
      if (v11)
      {
        goto LABEL_6;
      }
    }

    v41 = 0;
    v42 = 0;
    v45 = v10;
    if (v12)
    {
LABEL_9:
      v37 = v11;
      v38 = v9;
      v39 = v2;
      v19 = sub_1B1D7B3BC();
      v20 = *(v19 - 8);
      v21 = *(v20 + 56);
      v21(v7, 1, 1, v19);
      sub_1B1D23D4C();
      v22 = v12;
      sub_1B1D7C39C();

      v23 = (*(v20 + 48))(v7, 1, v19);
      v40 = v22;
      v24 = v38;
      if (v23 == 1)
      {
        v25 = v38;
        v26 = 1;
      }

      else
      {
        (*(v20 + 32))(v38, v7, v19);
        v25 = v24;
        v26 = 0;
      }

      v21(v25, v26, 1, v19);
      v11 = v37;
      goto LABEL_17;
    }

LABEL_14:
    v19 = sub_1B1D7B3BC();
    (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
    v40 = 0;
    v24 = v9;
LABEL_17:
    v28 = type metadata accessor for ASAuthorizationAccountCreationPlatformPublicKeyCredential(0);
    v29 = objc_allocWithZone(v28);
    v30 = OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_name;
    sub_1B1D7B3BC();
    (*(*(v19 - 8) + 56))(&v29[v30], 1, 1, v19);
    v31 = &v29[OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_email];
    *v31 = 0;
    *(v31 + 1) = 0;
    v32 = &v29[OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_phoneNumber];
    v33 = v44;
    *v31 = v43;
    *(v31 + 1) = v33;
    v34 = v42;
    *v32 = v41;
    *(v32 + 1) = v34;
    swift_beginAccess();
    sub_1B1CED898(v24, &v29[v30]);
    swift_endAccess();
    *&v29[OBJC_IVAR____TtC22AuthenticationServices57ASAuthorizationAccountCreationPlatformPublicKeyCredential_credentialRegistration] = v14;
    v46.receiver = v29;
    v46.super_class = v28;
    v35 = v14;
    v27 = objc_msgSendSuper2(&v46, sel_init);

    sub_1B1CED908(v24);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v27;
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_1B1D23D4C()
{
  result = qword_1EB775540;
  if (!qword_1EB775540)
  {
    sub_1B1D7B3BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775540);
  }

  return result;
}

id ASAuthorizationAccountCreationPlatformPublicKeyCredential.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ASAuthorizationAccountCreationPlatformPublicKeyCredential.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASAuthorizationAccountCreationPlatformPublicKeyCredential(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B1D23F14(uint64_t a1)
{
  sub_1B1D241BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B1D241BC(uint64_t a1)
{
  if (!qword_1EB7755C0)
  {
    sub_1B1D7B3BC();
    v1 = sub_1B1D7C18C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB7755C0);
    }
  }
}

uint64_t ASAuthorizationPlatformPublicKeyCredentialAssertion.prf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1D7BB2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D68, &qword_1B1D85838);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = [v1 coreCredential];
  v11 = [v10 extensions];

  if (!v11)
  {
    goto LABEL_4;
  }

  sub_1B1D7BB3C();

  if ((*(v4 + 48))(v9, 1, v3))
  {
    sub_1B1CDEC18(v9, &qword_1EB774D68, &qword_1B1D85838);
LABEL_4:
    v12 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionOutput(0);
    return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
  }

  (*(v4 + 16))(v6, v9, v3);
  sub_1B1CDEC18(v9, &qword_1EB774D68, &qword_1B1D85838);
  sub_1B1D7BB0C();
  v14 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionOutput(0);
  sub_1B1D7BB1C();
  (*(v4 + 8))(v6, v3);
  return (*(*(v14 - 8) + 56))(a1, 0, 1, v14);
}

id ASAuthorizationPlatformPublicKeyCredentialAssertion.__largeBlobSwift.getter()
{
  v1 = sub_1B1D7BB5C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v23 - v6;
  v8 = sub_1B1D7BB8C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D60, &qword_1B1D85830);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  v15 = [v0 coreCredential];
  v16 = [v15 extensions];

  if (!v16)
  {
    return 0;
  }

  sub_1B1D7BB9C();

  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_1B1CDEC18(v14, &qword_1EB774D60, &qword_1B1D85830);
    return 0;
  }

  (*(v9 + 16))(v11, v14, v8);
  sub_1B1CDEC18(v14, &qword_1EB774D60, &qword_1B1D85830);
  sub_1B1D7BB7C();
  (*(v2 + 16))(v5, v7, v1);
  v18 = (*(v2 + 88))(v5, v1);
  if (v18 == *MEMORY[0x1E698DF38])
  {
    (*(v2 + 8))(v7, v1);
    (*(v9 + 8))(v11, v8);
    (*(v2 + 96))(v5, v1);
    v19 = *v5;
    v20 = *(v5 + 1);
    if (v20 >> 60 == 15)
    {
      v21 = 0;
    }

    else
    {
      sub_1B1CE111C(*v5, *(v5 + 1));
      v21 = sub_1B1D7B4DC();
      sub_1B1C91AE4(v19, v20);
    }

    v22 = [objc_opt_self() _outputWithData_didWrite_];

    sub_1B1C91AE4(v19, v20);
    return v22;
  }

  else if (v18 == *MEMORY[0x1E698DF40])
  {
    (*(v2 + 8))(v7, v1);
    (*(v9 + 8))(v11, v8);
    (*(v2 + 96))(v5, v1);
    return [objc_opt_self() _outputWithData_didWrite_];
  }

  else
  {
    result = sub_1B1D7C32C();
    __break(1u);
  }

  return result;
}

id ASAuthorizationPlatformPublicKeyCredentialAssertion.__prfSwift.getter()
{
  v1 = sub_1B1D7BB2C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774D68, &qword_1B1D85838);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = type metadata accessor for ASAuthorizationPublicKeyCredentialPRFAssertionOutput(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 coreCredential];
  v12 = [v11 extensions];

  if (!v12)
  {
    return 0;
  }

  sub_1B1D7BB3C();

  if ((*(v2 + 48))(v7, 1, v1))
  {
    sub_1B1CDEC18(v7, &qword_1EB774D68, &qword_1B1D85838);
    return 0;
  }

  (*(v2 + 16))(v4, v7, v1);
  sub_1B1CDEC18(v7, &qword_1EB774D68, &qword_1B1D85838);
  sub_1B1D7BB0C();
  sub_1B1D7BB1C();
  (*(v2 + 8))(v4, v1);
  v14 = sub_1B1D0EEA0();
  sub_1B1CE1090(v10);
  return v14;
}

id ASAuthorizationAccountCreationProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1B1D24BEC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v16 = type metadata accessor for ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_acceptedContactIdentifiers] = a1;
  v17[OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_shouldRequestName] = a2;
  v18 = &v17[OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_relyingPartyIdentifier];
  *v18 = a3;
  v18[1] = a4;
  v19 = &v17[OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_challenge];
  *v19 = a5;
  v19[1] = a6;
  v20 = &v17[OBJC_IVAR____TtC22AuthenticationServices64ASAuthorizationAccountCreationPlatformPublicKeyCredentialRequest_userID];
  *v20 = a7;
  v20[1] = a8;

  sub_1B1CE111C(a5, a6);
  sub_1B1CE111C(a7, a8);
  v22.receiver = v17;
  v22.super_class = v16;
  return objc_msgSendSuper2(&v22, sel_initWithProvider_);
}

id ASAuthorizationAccountCreationProvider.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ASAuthorizationAccountCreationProvider();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ASAuthorizationAccountCreationProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ASAuthorizationAccountCreationProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B1D24E50()
{
  v1 = sub_1B1D7B7AC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7755D0, &qword_1B1D887F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7755D8, &qword_1B1D887F8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  v16 = [v0 testOptions];
  if (v16)
  {
    v17 = v16;
    sub_1B1D7B7BC();
  }

  else
  {
    (*(v2 + 56))(v15, 1, 1, v1);
  }

  (*(v2 + 104))(v13, *MEMORY[0x1E698DEE8], v1);
  (*(v2 + 56))(v13, 0, 1, v1);
  v18 = *(v4 + 48);
  sub_1B1D25320(v15, v6);
  sub_1B1D25320(v13, &v6[v18]);
  v19 = *(v2 + 48);
  if (v19(v6, 1, v1) != 1)
  {
    sub_1B1D25320(v6, v10);
    if (v19(&v6[v18], 1, v1) != 1)
    {
      v21 = v25;
      (*(v2 + 32))(v25, &v6[v18], v1);
      sub_1B1D25390();
      v20 = sub_1B1D7BE0C();
      v22 = *(v2 + 8);
      v22(v21, v1);
      sub_1B1CDEC18(v13, &qword_1EB7755D8, &qword_1B1D887F8);
      sub_1B1CDEC18(v15, &qword_1EB7755D8, &qword_1B1D887F8);
      v22(v10, v1);
      sub_1B1CDEC18(v6, &qword_1EB7755D8, &qword_1B1D887F8);
      return v20 & 1;
    }

    sub_1B1CDEC18(v13, &qword_1EB7755D8, &qword_1B1D887F8);
    sub_1B1CDEC18(v15, &qword_1EB7755D8, &qword_1B1D887F8);
    (*(v2 + 8))(v10, v1);
    goto LABEL_9;
  }

  sub_1B1CDEC18(v13, &qword_1EB7755D8, &qword_1B1D887F8);
  sub_1B1CDEC18(v15, &qword_1EB7755D8, &qword_1B1D887F8);
  if (v19(&v6[v18], 1, v1) != 1)
  {
LABEL_9:
    sub_1B1CDEC18(v6, &qword_1EB7755D0, &qword_1B1D887F0);
    v20 = 0;
    return v20 & 1;
  }

  sub_1B1CDEC18(v6, &qword_1EB7755D8, &qword_1B1D887F8);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1B1D25320(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7755D8, &qword_1B1D887F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1D25390()
{
  result = qword_1EB7755E0;
  if (!qword_1EB7755E0)
  {
    sub_1B1D7B7AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7755E0);
  }

  return result;
}

uint64_t sub_1B1D25414()
{
  v0 = sub_1B1D7BD8C();
  __swift_allocate_value_buffer(v0, qword_1EB782548);
  __swift_project_value_buffer(v0, qword_1EB782548);
  return sub_1B1D7BD7C();
}

uint64_t sub_1B1D254B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B1D7BD8C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1B1D7BD7C();
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

uint64_t sub_1B1D25594(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1B1D255D8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B1D7B43C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id sub_1B1D2563C()
{
  v1 = OBJC_IVAR____ASAgentFileVaultRecoveryKeyListener____lazy_storage___accountStore;
  v2 = *(v0 + OBJC_IVAR____ASAgentFileVaultRecoveryKeyListener____lazy_storage___accountStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____ASAgentFileVaultRecoveryKeyListener____lazy_storage___accountStore);
  }

  else
  {
    v4 = v0;
    sub_1B1CED540(0, &qword_1EB775688, 0x1E69C8A38);
    v5 = sub_1B1D7C0BC();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_1B1D256BC()
{
  *&v0[OBJC_IVAR____ASAgentFileVaultRecoveryKeyListener____lazy_storage___accountStore] = 0;
  *&v0[OBJC_IVAR____ASAgentFileVaultRecoveryKeyListener_internalLock] = 0;
  v1 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
  v2 = sub_1B1D7BE1C();
  v3 = [v1 initWithMachServiceName_];

  *&v0[OBJC_IVAR____ASAgentFileVaultRecoveryKeyListener_listener] = v3;
  v9.receiver = v0;
  v9.super_class = _ASAgentFileVaultRecoveryKeyListener;
  v4 = objc_msgSendSuper2(&v9, sel_init);
  v5 = OBJC_IVAR____ASAgentFileVaultRecoveryKeyListener_listener;
  v6 = *&v4[OBJC_IVAR____ASAgentFileVaultRecoveryKeyListener_listener];
  v7 = v4;
  [v6 setDelegate_];
  [*&v4[v5] resume];

  return v7;
}

void sub_1B1D257D8(uint64_t a1, uint64_t a2)
{
  if (qword_1EB7749C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v2, qword_1EB782560);

  oslog = sub_1B1D7BD6C();
  v3 = sub_1B1D7BFEC();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775110, &qword_1B1D862E0);
    v6 = sub_1B1D7C17C();
    v8 = sub_1B1D0D070(v6, v7, &v10);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1B1C8D000, oslog, v3, "%s disconnected", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1B273C4C0](v5, -1, -1);
    MEMORY[0x1B273C4C0](v4, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1B1D259EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B1D25A14, 0, 0);
}

uint64_t sub_1B1D25A14()
{
  sub_1B1D26938(*(v0 + 24));
  *(v0 + 56) = sub_1B1D2563C();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1B1D25B30;
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE33130](v2);
}

uint64_t sub_1B1D25B30()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_1B1D25CB4;
  }

  else
  {

    v3 = sub_1B1D25C4C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B1D25C4C()
{
  (*(v0 + 40))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B1D25CB4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = v1;
  v2(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B1D25E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B1D25EBC, 0, 0);
}

uint64_t sub_1B1D25EBC()
{
  sub_1B1D26938(*(v0 + 24));
  *(v0 + 80) = sub_1B1D2563C();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1B1D25FDC;
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);

  return MEMORY[0x1EEE33138](v5, v4, v2, v3);
}

uint64_t sub_1B1D25FDC()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1B1D26160;
  }

  else
  {

    v3 = sub_1B1D260F8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B1D260F8()
{
  (*(v0 + 64))(0);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B1D26160()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 64);
  v3 = v1;
  v2(v1);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B1D2620C(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = sub_1B1D7BE4C();
  v11 = v10;
  v12 = sub_1B1D7BE4C();
  v14 = v13;
  _Block_copy(v8);
  v15 = a1;
  a6(v9, v11, v12, v14, v15, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_1B1D2633C(void *a1)
{
  v2 = v1;
  [a1 auditToken];
  v4 = WBSApplicationIdentifierFromAuditToken();
  if (v4)
  {
    v5 = v4;
    v6 = sub_1B1D7BE4C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  if (qword_1EB7749C8 != -1)
  {
    swift_once();
  }

  v9 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v9, qword_1EB782560);

  v10 = sub_1B1D7BD6C();
  v11 = sub_1B1D7BFEC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    aBlock = v6;
    *v12 = 136315138;
    aBlock_8 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775110, &qword_1B1D862E0);
    v14 = sub_1B1D7C17C();
    v16 = sub_1B1D0D070(v14, v15, &v21);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B1C8D000, v10, v11, "Received connection from %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x1B273C4C0](v13, -1, -1);
    MEMORY[0x1B273C4C0](v12, -1, -1);
  }

  v17 = [objc_opt_self() interfaceWithProtocol_];
  [a1 setExportedInterface_];

  [a1 setExportedObject_];
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v8;
  v26 = sub_1B1D275D4;
  v27 = v18;
  aBlock = MEMORY[0x1E69E9820];
  aBlock_8 = 1107296256;
  v24 = sub_1B1D25594;
  v25 = &block_descriptor_4;
  v19 = _Block_copy(&aBlock);

  [a1 setInvalidationHandler_];
  _Block_release(v19);
  [a1 resume];
  return 1;
}

uint64_t sub_1B1D26628(void *a1, void *a2, void (**a3)(void, void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = objc_opt_self();
  _Block_copy(a3);
  v11 = [v10 currentConnection];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1B1D7BF4C();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;
    v14[5] = v12;
    v14[6] = a1;
    v14[7] = sub_1B1CE9ADC;
    v14[8] = v9;
    v15 = a2;
    v16 = a1;

    sub_1B1D1A388(0, 0, v8, &unk_1B1D88818, v14);
  }

  else
  {
    if (qword_1EB7749C8 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v18, qword_1EB782560);
    v19 = sub_1B1D7BD6C();
    v20 = sub_1B1D7C00C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B1C8D000, v19, v20, "No active connection.", v21, 2u);
      MEMORY[0x1B273C4C0](v21, -1, -1);
    }

    v22 = sub_1B1D7B66C();
    sub_1B1D273A0();
    v23 = swift_allocError();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69C8790], v22);
    v25 = sub_1B1D7B43C();
    (a3)[2](a3, v25);
  }
}

void sub_1B1D26938(void *a1)
{
  v2 = sub_1B1D7BE1C();
  v3 = [a1 safari:v2 BOOLForEntitlement:?];

  if ((v3 & 1) == 0)
  {
    v4 = sub_1B1D7BE1C();
    v5 = [a1 safari:v4 BOOLForEntitlement:?];

    if (!v5)
    {
      if (qword_1EB7749C8 != -1)
      {
        swift_once();
      }

      v6 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v6, qword_1EB782560);
      v7 = sub_1B1D7BD6C();
      v8 = sub_1B1D7C00C();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_1B1C8D000, v7, v8, "Client is not entitled.", v9, 2u);
        MEMORY[0x1B273C4C0](v9, -1, -1);
      }

      v10 = sub_1B1D7B66C();
      sub_1B1D273A0();
      swift_allocError();
      (*(*(v10 - 8) + 104))(v11, *MEMORY[0x1E69C8788], v10);
      swift_willThrow();
    }
  }
}

void sub_1B1D26B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = [objc_opt_self() currentConnection];
  if (v7)
  {
    v19 = v7;
    sub_1B1D26938(v7);
    v8 = sub_1B1D2563C();
    v9 = sub_1B1D7C0CC();

    (*(a6 + 16))(a6, v9, 0);
    v18 = v19;
  }

  else
  {
    if (qword_1EB7749C8 != -1)
    {
      swift_once();
    }

    v10 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v10, qword_1EB782560);
    v11 = sub_1B1D7BD6C();
    v12 = sub_1B1D7C00C();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1B1C8D000, v11, v12, "No active connection.", v13, 2u);
      MEMORY[0x1B273C4C0](v13, -1, -1);
    }

    v14 = sub_1B1D7B66C();
    sub_1B1D273A0();
    v15 = swift_allocError();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69C8790], v14);
    v17 = sub_1B1D7B43C();
    (*(a6 + 16))(a6, 0, v17);

    v18 = v15;
  }
}

void sub_1B1D26DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() currentConnection];
  if (v5)
  {
    v6 = v5;
    sub_1B1D26938(v5);
    v7 = sub_1B1D2563C();
    sub_1B1D7C0DC();

    sub_1B1CED540(0, &qword_1EB775690, 0x1E69C8888);
    v17 = sub_1B1D7BEDC();
    (*(a4 + 16))(a4, v17, 0);

    v16 = v17;
  }

  else
  {
    if (qword_1EB7749C8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v8, qword_1EB782560);
    v9 = sub_1B1D7BD6C();
    v10 = sub_1B1D7C00C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B1C8D000, v9, v10, "No active connection.", v11, 2u);
      MEMORY[0x1B273C4C0](v11, -1, -1);
    }

    v12 = sub_1B1D7B66C();
    sub_1B1D273A0();
    v13 = swift_allocError();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x1E69C8790], v12);
    v15 = sub_1B1D7B43C();
    (*(a4 + 16))(a4, 0, v15);

    v16 = v13;
  }
}

uint64_t sub_1B1D2705C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (**a6)(void, void))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775460, &qword_1B1D86860);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  v16 = objc_opt_self();
  _Block_copy(a6);
  v17 = [v16 currentConnection];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1B1D7BF4C();
    (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = a5;
    v20[5] = v18;
    v20[6] = a1;
    v20[7] = a2;
    v20[8] = a3;
    v20[9] = a4;
    v20[10] = sub_1B1CE93F0;
    v20[11] = v15;
    v21 = a5;

    sub_1B1D1A388(0, 0, v14, &unk_1B1D88808, v20);
  }

  else
  {
    if (qword_1EB7749C8 != -1)
    {
      swift_once();
    }

    v23 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v23, qword_1EB782560);
    v24 = sub_1B1D7BD6C();
    v25 = sub_1B1D7C00C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B1C8D000, v24, v25, "No active connection.", v26, 2u);
      MEMORY[0x1B273C4C0](v26, -1, -1);
    }

    v27 = sub_1B1D7B66C();
    sub_1B1D273A0();
    v28 = swift_allocError();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69C8790], v27);
    v30 = sub_1B1D7B43C();
    (a6)[2](a6, v30);
  }
}

unint64_t sub_1B1D273A0()
{
  result = qword_1EB775680;
  if (!qword_1EB775680)
  {
    sub_1B1D7B66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775680);
  }

  return result;
}

uint64_t sub_1B1D273F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B1CE9AD0;

  return sub_1B1D25E80(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1B1D274F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1B1CE99BC;

  return sub_1B1D259EC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1B1D275F4()
{
  v1 = v0;
  v64 = sub_1B1D7B75C();
  v2 = *(v64 - 8);
  v3 = MEMORY[0x1EEE9AC00](v64);
  v62 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v63 = v59 - v5;
  v6 = sub_1B1D7B77C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v65 = v59 - v11;
  v12 = v1;
  v13 = [v1 clientDataHash];
  v14 = sub_1B1D7B4EC();
  v16 = v15;

  v17 = v16 >> 62;
  if ((v16 >> 62) <= 1)
  {
    if (!v17)
    {
      sub_1B1CDEFDC(v14, v16);
      v18 = BYTE6(v16);
      goto LABEL_10;
    }

    sub_1B1CDEFDC(v14, v16);
    if (!__OFSUB__(HIDWORD(v14), v14))
    {
      v18 = HIDWORD(v14) - v14;
      goto LABEL_10;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v17 == 2)
  {
    v61 = v7;
    v19 = v6;
    v20 = v2;
    v22 = *(v14 + 16);
    v21 = *(v14 + 24);
    sub_1B1CDEFDC(v14, v16);
    v18 = v21 - v22;
    if (!__OFSUB__(v21, v22))
    {
      v2 = v20;
      v6 = v19;
      v7 = v61;
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_27;
  }

  sub_1B1CDEFDC(v14, v16);
  v18 = 0;
LABEL_10:
  if (v18 == sub_1B1D7BDBC())
  {
    v60 = v2;
    v23 = [v12 authenticatorData];
    sub_1B1D7B4EC();
    v24 = v12;

    v25 = v66;
    sub_1B1D7B70C();
    v12 = v25;
    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B1D85D30;
      *(inited + 32) = sub_1B1D7BE4C();
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = v27;
      *(inited + 48) = 0xD00000000000001ALL;
      *(inited + 56) = 0x80000001B1D9C8F0;
      *(inited + 80) = sub_1B1D7BE4C();
      *(inited + 88) = v28;
      swift_getErrorValue();
      v29 = v67;
      v30 = v68;
      *(inited + 120) = v68;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 96));
      (*(*(v30 - 8) + 16))(boxed_opaque_existential_0, v29, v30);
      v32 = @"com.apple.AuthenticationServices.AuthorizationError";
      sub_1B1D6FAB8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB774FA0, &unk_1B1D93690);
      swift_arrayDestroy();
      v33 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v34 = sub_1B1D7BDCC();

      [v33 initWithDomain:v32 code:1002 userInfo:v34];

      swift_willThrow();
      return;
    }

    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_1B1D85C40;
  *(v35 + 32) = sub_1B1D7BE4C();
  *(v35 + 40) = v36;
  v69 = 0;
  v70 = 0xE000000000000000;
  v7 = @"com.apple.AuthenticationServices.AuthorizationError";
  sub_1B1D7C27C();
  MEMORY[0x1B273AEE0](0xD00000000000005BLL, 0x80000001B1D9C890);
  v71 = sub_1B1D7BDBC();
  v37 = sub_1B1D7C4EC();
  MEMORY[0x1B273AEE0](v37);

  MEMORY[0x1B273AEE0](0x20646E756F66202CLL, 0xE800000000000000);
  v38 = [v12 clientDataHash];
  v10 = sub_1B1D7B4EC();
  v40 = v39;

  v41 = v40;
  v42 = v40 >> 62;
  if ((v40 >> 62) > 1)
  {
    if (v42 == 2)
    {
      v24 = *(v10 + 2);
      v6 = *(v10 + 3);
      sub_1B1CDEFDC(v10, v41);
      v43 = v6 - v24;
      if (__OFSUB__(v6, v24))
      {
        __break(1u);
LABEL_20:
        v61 = v7;
        (v7[1].isa)(v65, v10, v6);
        v44 = [v24 relyingParty];
        v45 = sub_1B1D7BE4C();
        v59[4] = v46;
        v59[5] = v45;

        v59[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775698, &qword_1B1D88830);
        v59[3] = v12;
        v66 = v6;
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1B1D88820;
        sub_1B1D7B73C();
        sub_1B1D7B74C();
        sub_1B1D7B72C();
        v69 = v47;
        sub_1B1D2843C();
        v59[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756A8, &qword_1B1D88838);
        sub_1B1D28494();
        v48 = v63;
        sub_1B1D7C1BC();
        v49 = v65;
        v50 = swift_allocObject();
        *(v50 + 16) = xmmword_1B1D85C40;
        sub_1B1D7B71C();
        v69 = v50;
        v51 = v62;
        sub_1B1D7C1BC();
        sub_1B1D7B76C();

        v52 = *(v60 + 8);
        v53 = v64;
        v52(v51, v64);
        v52(v48, v53);
        (v61->info)(v49, v66);
        return;
      }
    }

    else
    {
      sub_1B1CDEFDC(v10, v40);
      v43 = 0;
    }

    goto LABEL_24;
  }

  if (v42)
  {
    sub_1B1CDEFDC(v10, v40);
    LODWORD(v43) = HIDWORD(v10) - v10;
    if (!__OFSUB__(HIDWORD(v10), v10))
    {
      v43 = v43;
      goto LABEL_24;
    }

LABEL_28:
    __break(1u);
    return;
  }

  sub_1B1CDEFDC(v10, v40);
  v43 = BYTE6(v40);
LABEL_24:
  v71 = v43;
  v54 = sub_1B1D7C4EC();
  MEMORY[0x1B273AEE0](v54);

  MEMORY[0x1B273AEE0](46, 0xE100000000000000);
  v55 = v69;
  v56 = v70;
  *(v35 + 72) = MEMORY[0x1E69E6158];
  *(v35 + 48) = v55;
  *(v35 + 56) = v56;
  sub_1B1D6FAB8(v35);
  swift_setDeallocating();
  sub_1B1CF1634(v35 + 32);
  v57 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v58 = sub_1B1D7BDCC();

  [v57 initWithDomain:v7 code:1002 userInfo:v58];

  swift_willThrow();
}

id ASPasskeyAssertionCredential.init(userHandle:relyingParty:signature:clientDataHash:authenticatorData:credentialID:extensionOutput:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t *a13)
{
  v17 = *a13;
  v29 = sub_1B1D7B4DC();
  v28 = sub_1B1D7BE1C();

  v31 = a5;
  v33 = a6;
  v27 = sub_1B1D7B4DC();
  v30 = a8;
  v18 = sub_1B1D7B4DC();
  v19 = sub_1B1D7B4DC();
  v21 = sub_1B1D7B4DC();
  if (v17)
  {
    v22 = [objc_allocWithZone(ASPasskeyAssertionCredentialExtensionOutput) init];
    v23 = *&v22[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions];
    *&v22[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions] = v17;
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v20)) initWithUserHandle:v29 relyingParty:v28 signature:v27 clientDataHash:v18 authenticatorData:v19 credentialID:v21 extensionOutput:v24];
  sub_1B1CDEFDC(a11, a12);
  sub_1B1CDEFDC(a9, a10);
  sub_1B1CDEFDC(a7, v30);
  sub_1B1CDEFDC(v31, v33);
  sub_1B1CDEFDC(a1, a2);

  return v25;
}

void ASPasskeyAssertionCredential.extensionOutput.getter(void *a1@<X8>)
{
  v3 = [v1 extensionOutput];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v4 = [v1 extensionOutput];
  if (v4)
  {
    v5 = v4;
    v6 = *&v4[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions];

LABEL_5:
    *a1 = v6;
    return;
  }

  __break(1u);
}

void ASPasskeyAssertionCredential.extensionOutput.setter(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = [objc_allocWithZone(ASPasskeyAssertionCredentialExtensionOutput) init];
    v4 = *&v3[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions];
    *&v3[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions] = v2;
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  [v1 setExtensionOutput_];
}

void (*ASPasskeyAssertionCredential.extensionOutput.modify(void *a1))(void **a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 extensionOutput];
  if (!v3)
  {
    v6 = 0;
    goto LABEL_5;
  }

  result = [v1 extensionOutput];
  if (result)
  {
    v5 = result;
    v6 = *(result + OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions);

LABEL_5:
    *a1 = v6;
    return sub_1B1D28330;
  }

  __break(1u);
  return result;
}

void sub_1B1D28330(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      v4 = objc_allocWithZone(ASPasskeyAssertionCredentialExtensionOutput);
      v5 = v3;
      v6 = [v4 init];
      v7 = *&v6[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions];
      v10 = v6;
      *&v6[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions] = v5;
    }

    else
    {
      v10 = 0;
    }

    [a1[1] setExtensionOutput_];
  }

  else if (v3)
  {
    v8 = [objc_allocWithZone(ASPasskeyAssertionCredentialExtensionOutput) init];
    v9 = *&v8[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions];
    v10 = v8;
    *&v8[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionOutput_coreExtensions] = v3;

    [a1[1] setExtensionOutput_];
  }

  else
  {
    v10 = 0;
    [a1[1] setExtensionOutput_];
  }
}

unint64_t sub_1B1D2843C()
{
  result = qword_1EB7756A0;
  if (!qword_1EB7756A0)
  {
    sub_1B1D7B75C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7756A0);
  }

  return result;
}

unint64_t sub_1B1D28494()
{
  result = qword_1EB7756B0;
  if (!qword_1EB7756B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7756A8, &qword_1B1D88838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7756B0);
  }

  return result;
}

id ASPasskeyCredentialIdentity.init(relyingPartyIdentifier:userName:credentialID:userHandle:recordIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v14 = sub_1B1D7BE1C();

  v15 = sub_1B1D7BE1C();

  v16 = sub_1B1D7B4DC();
  v18 = sub_1B1D7B4DC();
  if (a10)
  {
    v19 = sub_1B1D7BE1C();
  }

  else
  {
    v19 = 0;
  }

  v20 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v17)) initWithRelyingPartyIdentifier:v14 userName:v15 credentialID:v16 userHandle:v18 recordIdentifier:v19];
  sub_1B1CDEFDC(a7, a8);
  sub_1B1CDEFDC(a5, a6);

  return v20;
}

uint64_t ASPasskeyRegistrationCredentialExtensionInput.largeBlob.getter@<X0>(char *a1@<X8>)
{
  v2 = sub_1B1D7BC2C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - v7;
  v9 = sub_1B1D7BC5C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7756C0, &unk_1B1D86B00);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v20 - v14;
  sub_1B1D7BC6C();
  if ((*(v10 + 48))(v15, 1, v9))
  {
    result = sub_1B1CDEC18(v15, &unk_1EB7756C0, &unk_1B1D86B00);
    v17 = 2;
  }

  else
  {
    (*(v10 + 16))(v12, v15, v9);
    sub_1B1CDEC18(v15, &unk_1EB7756C0, &unk_1B1D86B00);
    sub_1B1D7BC4C();
    (*(v3 + 16))(v6, v8, v2);
    v18 = (*(v3 + 88))(v6, v2);
    if (v18 != *MEMORY[0x1E698DF48] && v18 != *MEMORY[0x1E698DF50])
    {
      result = sub_1B1D7C32C();
      __break(1u);
      return result;
    }

    v17 = v18 != *MEMORY[0x1E698DF48];
    (*(v3 + 8))(v8, v2);
    result = (*(v10 + 8))(v12, v9);
  }

  *a1 = v17;
  return result;
}

uint64_t ASPasskeyRegistrationCredentialExtensionInput.prf.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_1B1D7BBFC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756D0, &qword_1B1D88840);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  sub_1B1D7BC0C();
  if ((*(v6 + 48))(v11, 1, v5))
  {
    result = sub_1B1CDEC18(v11, &qword_1EB7756D0, &qword_1B1D88840);
    *a1 = 2;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
  }

  else
  {
    (*(v6 + 16))(v8, v11, v5);
    sub_1B1CDEC18(v11, &qword_1EB7756D0, &qword_1B1D88840);
    v22 = sub_1B1D7BBEC();
    sub_1B1D7BBCC();
    v13 = sub_1B1D7BA2C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v4, 1, v13) == 1)
    {
      (*(v6 + 8))(v8, v5);
      result = sub_1B1CDEC18(v4, &qword_1EB7751F8, &unk_1B1D86AF0);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0xF000000000000000;
    }

    else
    {
      v21 = sub_1B1D7BA0C();
      v18 = v19;
      v16 = sub_1B1D7BA1C();
      v17 = v20;
      (*(v6 + 8))(v8, v5);
      sub_1B1C91AE4(0, 0xF000000000000000);
      result = (*(v14 + 8))(v4, v13);
      v15 = v21;
    }

    *a1 = v22 & 1;
    *(a1 + 8) = v15;
    *(a1 + 16) = v18;
    *(a1 + 24) = v16;
    *(a1 + 32) = v17;
  }

  return result;
}

void __swiftcall ASPasskeyRegistrationCredentialExtensionInput.toObjC()(ASPasskeyRegistrationCredentialExtensionInput *__return_ptr retstr)
{
  v2 = *v1;
  v3 = objc_allocWithZone(ASPasskeyRegistrationCredentialExtensionInput);

  [v3 initWithCoreExtensions_];
}

id sub_1B1D28CF8()
{
  v1 = sub_1B1D7BC2C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  v8 = sub_1B1D7BC5C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7756C0, &unk_1B1D86B00);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  v15 = *(v0 + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions);
  sub_1B1D7BC6C();

  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_1B1CDEC18(v14, &unk_1EB7756C0, &unk_1B1D86B00);
    return 0;
  }

  (*(v9 + 16))(v11, v14, v8);
  sub_1B1CDEC18(v14, &unk_1EB7756C0, &unk_1B1D86B00);
  sub_1B1D7BC4C();
  (*(v2 + 16))(v5, v7, v1);
  v17 = (*(v2 + 88))(v5, v1);
  if (v17 == *MEMORY[0x1E698DF48])
  {
    v18 = 0;
  }

  else
  {
    if (v17 != *MEMORY[0x1E698DF50])
    {
      result = sub_1B1D7C32C();
      __break(1u);
      return result;
    }

    v18 = 1;
  }

  (*(v2 + 8))(v7, v1);
  (*(v9 + 8))(v11, v8);
  return [objc_allocWithZone(ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput) initWithSupportRequirement_];
}

id ASPasskeyRegistrationCredentialExtensionInput.init(coder:)(void *a1)
{
  v2 = v1;
  sub_1B1D7BC8C();
  v4 = sub_1B1D7C12C();
  if (v4)
  {
    v5 = v4;
    v6 = [v2 initWithCoreExtensions_];
  }

  else
  {

    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

Swift::Void __swiftcall ASPasskeyRegistrationCredentialExtensionInput.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions);
  v4 = sub_1B1D7BE1C();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];
}

void __swiftcall ASPasskeyRegistrationCredentialExtensionInput.init()(ASPasskeyRegistrationCredentialExtensionInput *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata(retstr));

  [v1 init];
}

id ASPasskeyRegistrationCredentialExtensionInput.init()()
{
  v1 = OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions;
  *&v0[v1] = [objc_allocWithZone(sub_1B1D7BC8C()) init];
  v3.receiver = v0;
  v3.super_class = ASPasskeyRegistrationCredentialExtensionInput;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t type metadata accessor for ASPasskeyRegistrationCredentialExtensionInput()
{
  result = qword_1EB7756E0;
  if (!qword_1EB7756E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7756E0);
  }

  return result;
}

uint64_t sub_1B1D29558(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1B1D7C2FC();
    v4 = a1 + 32;
    type metadata accessor for ASCOSEAlgorithmIdentifier(0);
    sub_1B1D298E0();
    do
    {
      v4 += 8;
      swift_dynamicCast();
      sub_1B1D7C2DC();
      sub_1B1D7C30C();
      sub_1B1D7C31C();
      sub_1B1D7C2EC();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

char *sub_1B1D29638(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B1D7C1FC();
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

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1B1D19538(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) == 0)
    {
      for (i = (a1 + 32); ; ++i)
      {
        v10 = *i;
        v15 = 0;
        v16 = 1;
        v11 = v10;
        result = MEMORY[0x1B273B000]();
        if (v16 == 1)
        {
          break;
        }

        v12 = v15;

        v17 = v3;
        v14 = *(v3 + 16);
        v13 = *(v3 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1B1D19538((v13 > 1), v14 + 1, 1);
          v3 = v17;
        }

        *(v3 + 16) = v14 + 1;
        *(v3 + 8 * v14 + 32) = v12;
        if (!--v2)
        {
          return v3;
        }
      }

      goto LABEL_21;
    }

    v5 = 0;
    while (1)
    {
      MEMORY[0x1B273B2E0](v5, a1);
      v15 = 0;
      v16 = 1;
      result = MEMORY[0x1B273B000]();
      if (v16 == 1)
      {
        break;
      }

      v6 = v15;
      swift_unknownObjectRelease();
      v17 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1B1D19538((v7 > 1), v8 + 1, 1);
        v3 = v17;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      *(v3 + 8 * v8 + 32) = v6;
      if (v2 == v5)
      {
        return v3;
      }
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id ASPasskeyCredentialRequest.init(credentialIdentity:clientDataHash:userVerificationPreference:supportedAlgorithms:)(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata(v6));
  v13 = sub_1B1D7B4DC();
  sub_1B1D29558(a5);

  sub_1B1D298E0();
  v14 = sub_1B1D7BEDC();

  v15 = [v12 initWithCredentialIdentity:a1 clientDataHash:v13 userVerificationPreference:a4 supportedAlgorithms:v14];

  sub_1B1CDEFDC(a2, a3);
  return v15;
}

unint64_t sub_1B1D298E0()
{
  result = qword_1EB7756E8;
  if (!qword_1EB7756E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB7756E8);
  }

  return result;
}

id ASPasskeyCredentialRequest.init(credentialIdentity:clientDataHash:userVerificationPreference:supportedAlgorithms:extensionInput:)(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, void **a6)
{
  return sub_1B1D29954(a1, a2, a3, a4, a5, a6, off_1E7AF6970, &selRef_initWithCredentialIdentity_clientDataHash_userVerificationPreference_supportedAlgorithms_registrationExtensionInput_);
}

{
  return sub_1B1D29954(a1, a2, a3, a4, a5, a6, off_1E7AF6940, &selRef_initWithCredentialIdentity_clientDataHash_userVerificationPreference_supportedAlgorithms_assertionExtensionInput_);
}

id sub_1B1D29954(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, void **a6, Class *a7, SEL *a8)
{
  v14 = *a6;
  v15 = sub_1B1D7B4DC();
  sub_1B1D29558(a5);

  sub_1B1D298E0();
  v16 = sub_1B1D7BEDC();

  if (v14)
  {
    v18 = [objc_allocWithZone(*a7) initWithCoreExtensions_];
  }

  else
  {
    v18 = 0;
  }

  v19 = [objc_allocWithZone(swift_getObjCClassFromMetadata(v17)) *a8];

  sub_1B1CDEFDC(a2, a3);
  return v19;
}

uint64_t ASPasskeyCredentialRequest.init(loginChoice:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B1D29AA0, 0, 0);
}

uint64_t sub_1B1D29AA0()
{
  *(v0 + 56) = sub_1B1D7B96C();
  v3 = (*MEMORY[0x1E698DF20] + MEMORY[0x1E698DF20]);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1B1D29B50;

  return v3();
}

uint64_t sub_1B1D29B50(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = a2;
  v3[9] = a2;

  return MEMORY[0x1EEE6DFA0](sub_1B1D29C58, 0, 0);
}

uint64_t sub_1B1D29C58()
{
  if (!*(v0 + 72))
  {
    v27 = *(v0 + 56);

LABEL_12:
    v26 = 0;
    goto LABEL_13;
  }

  v1 = *(v0 + 56);
  v2 = sub_1B1D7BE1C();
  [v1 setUserName_];

  v3 = sub_1B1D7BE1C();

  [v1 setUserDisplayName_];

  v4 = [v1 clientDataHash];
  v5 = *(v0 + 56);
  if (!v4)
  {

    goto LABEL_12;
  }

  v6 = v4;
  v7 = sub_1B1D7B4EC();
  v30 = v8;

  v9 = [v5 relyingPartyIdentifier];
  if (!v9)
  {
    sub_1B1D7BE4C();
    v9 = sub_1B1D7BE1C();
  }

  v10 = [*(v0 + 56) userName];
  if (!v10)
  {
    sub_1B1D7BE4C();
    v10 = sub_1B1D7BE1C();
  }

  v11 = *(v0 + 56);
  v12 = [v11 userIdentifier];
  v13 = sub_1B1D7B4EC();
  v15 = v14;

  v16 = objc_allocWithZone(ASPasskeyCredentialIdentity);
  v17 = sub_1B1D7B4DC();
  v18 = sub_1B1D7B4DC();
  v19 = [v16 initWithRelyingPartyIdentifier:v9 userName:v10 credentialID:v17 userHandle:v18 recordIdentifier:0];
  sub_1B1CDEFDC(v13, v15);

  v20 = sub_1B1D7B4DC();
  v22 = [v11 supportedAlgorithmIdentifiers];
  if (!v22)
  {
    sub_1B1D298E0();
    sub_1B1D7BEEC();
    v22 = sub_1B1D7BEDC();
  }

  v23 = *(v0 + 56);
  v24 = *(v0 + 40);
  v25 = [swift_getObjCClassFromMetadata(v21) requestWithCredentialIdentity:v19 clientDataHash:v20 userVerificationPreference:@"discouraged" supportedAlgorithms:v22];

  sub_1B1CDEFDC(v7, v31);
  v26 = v25;
LABEL_13:
  v28 = *(v0 + 8);

  return v28(v26);
}

char *ASPasskeyCredentialRequest.supportedAlgorithms.getter()
{
  v1 = [v0 supportedAlgorithms];
  sub_1B1D298E0();
  v2 = sub_1B1D7BEEC();

  v3 = sub_1B1D29638(v2);

  return v3;
}

void ASPasskeyCredentialRequest.extensionInput.getter(void *a1@<X8>)
{
  v3 = [v1 assertionExtensionInput];
  if (v3)
  {
    v4 = v3;
    v5 = *&v3[OBJC_IVAR___ASPasskeyAssertionCredentialExtensionInput_coreExtensions];
  }

  else
  {
    v6 = [v1 registrationExtensionInput];
    if (v6)
    {
      v7 = v6;
      v8 = *&v6[OBJC_IVAR___ASPasskeyRegistrationCredentialExtensionInput_coreExtensions];

      v5 = (v8 | 0x4000000000000000);
    }

    else
    {
      v5 = 0x8000000000000000;
    }
  }

  *a1 = v5;
}

unint64_t get_enum_tag_for_layout_string_22AuthenticationServices33ASPasskeyCredentialExtensionInputO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1B1D2A0AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B1D2A108(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1B1D2A168(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1B1D2A1F4()
{
  v1 = v0;
  v2 = sub_1B1D7B75C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v102 = &v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v103 = &v98 - v6;
  v7 = sub_1B1D7B77C();
  v107 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v105 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v104 = &v98 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756F8, &qword_1B1D88968);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v108 = &v98 - v12;
  v109 = sub_1B1D7B9DC();
  v13 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v15 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = v1;
  v16 = [v1 attestationObject];
  v17 = sub_1B1D7B4EC();
  v19 = v18;

  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    if (v20 != 2)
    {
      sub_1B1CDEFDC(v17, v19);
      goto LABEL_15;
    }

    v101 = v7;
    v21 = v3;
    v22 = v2;
    v23 = v13;
    v24 = *(v17 + 16);
    v25 = *(v17 + 24);
    result = sub_1B1CDEFDC(v17, v19);
    v27 = v25 - v24;
    if (!__OFSUB__(v25, v24))
    {
      v13 = v23;
      v2 = v22;
      v3 = v21;
      v7 = v101;
      if (v27 < 1)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v20)
  {
    result = sub_1B1CDEFDC(v17, v19);
    if (!__OFSUB__(HIDWORD(v17), v17))
    {
      if (HIDWORD(v17) - v17 >= 1)
      {
        goto LABEL_11;
      }

LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1B1D85C40;
      *(inited + 32) = sub_1B1D7BE4C();
      v37 = inited + 32;
      v38 = 0x80000001B1D9C9F0;
      *(inited + 72) = MEMORY[0x1E69E6158];
      v39 = 0xD000000000000043;
LABEL_16:
      *(inited + 40) = v36;
      *(inited + 48) = v39;
      *(inited + 56) = v38;
      v40 = @"com.apple.AuthenticationServices.AuthorizationError";
      sub_1B1D6FAB8(inited);
      swift_setDeallocating();
      sub_1B1CDEC18(v37, &unk_1EB774FA0, &unk_1B1D93690);
      v41 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v42 = sub_1B1D7BDCC();

      [v41 initWithDomain:v40 code:1002 userInfo:v42];

      return swift_willThrow();
    }

    goto LABEL_50;
  }

  sub_1B1CDEFDC(v17, v19);
  if (!BYTE6(v19))
  {
    goto LABEL_15;
  }

LABEL_11:
  v28 = [v110 clientDataHash];
  v29 = sub_1B1D7B4EC();
  v31 = v30;

  v32 = v31;
  v33 = v31 >> 62;
  if ((v31 >> 62) <= 1)
  {
    if (!v33)
    {
      sub_1B1CDEFDC(v29, v31);
      v34 = BYTE6(v31);
      goto LABEL_23;
    }

    result = sub_1B1CDEFDC(v29, v31);
    if (!__OFSUB__(HIDWORD(v29), v29))
    {
      v34 = HIDWORD(v29) - v29;
      goto LABEL_23;
    }

LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v33 == 2)
  {
    v31 = v3;
    v43 = v2;
    v44 = v13;
    v46 = *(v29 + 16);
    v45 = *(v29 + 24);
    result = sub_1B1CDEFDC(v29, v32);
    v34 = v45 - v46;
    if (!__OFSUB__(v45, v46))
    {
      v13 = v44;
      v2 = v43;
      v3 = v31;
      goto LABEL_23;
    }

    goto LABEL_51;
  }

  sub_1B1CDEFDC(v29, v31);
  v34 = 0;
LABEL_23:
  if (v34 != sub_1B1D7BDBC())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    v2 = swift_initStackObject();
    *(v2 + 16) = xmmword_1B1D85C40;
    *(v2 + 32) = sub_1B1D7BE4C();
    v3 = v2 + 32;
    *(v2 + 40) = v49;
    v113 = 0;
    v114 = 0xE000000000000000;
    v50 = @"com.apple.AuthenticationServices.AuthorizationError";
    sub_1B1D7C27C();
    MEMORY[0x1B273AEE0](0xD00000000000005BLL, 0x80000001B1D9C890);
    v115 = sub_1B1D7BDBC();
    v51 = sub_1B1D7C4EC();
    MEMORY[0x1B273AEE0](v51);

    MEMORY[0x1B273AEE0](0x20646E756F66202CLL, 0xE800000000000000);
    v52 = [v110 clientDataHash];
    v15 = sub_1B1D7B4EC();
    v54 = v53;

    v55 = v54;
    v56 = v54 >> 62;
    if ((v54 >> 62) > 1)
    {
      if (v56 == 2)
      {
        v61 = *(v15 + 2);
        v60 = *(v15 + 3);
        sub_1B1CDEFDC(v15, v55);
        v57 = v60 - v61;
        if (__OFSUB__(v60, v61))
        {
          __break(1u);
          goto LABEL_36;
        }
      }

      else
      {
        sub_1B1CDEFDC(v15, v54);
        v57 = 0;
      }

LABEL_42:
      v115 = v57;
      v75 = sub_1B1D7C4EC();
      MEMORY[0x1B273AEE0](v75);

      MEMORY[0x1B273AEE0](46, 0xE100000000000000);
      v76 = v113;
      v77 = v114;
      *(v2 + 72) = MEMORY[0x1E69E6158];
      *(v2 + 48) = v76;
      *(v2 + 56) = v77;
      sub_1B1D6FAB8(v2);
      swift_setDeallocating();
      sub_1B1CDEC18(v2 + 32, &unk_1EB774FA0, &unk_1B1D93690);
      v78 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v79 = sub_1B1D7BDCC();

      [v78 initWithDomain:v50 code:1002 userInfo:v79];

      return swift_willThrow();
    }

    if (!v56)
    {
      sub_1B1CDEFDC(v15, v54);
      v57 = BYTE6(v54);
      goto LABEL_42;
    }

    result = sub_1B1CDEFDC(v15, v54);
    LODWORD(v57) = HIDWORD(v15) - v15;
    if (!__OFSUB__(HIDWORD(v15), v15))
    {
      v57 = v57;
      goto LABEL_42;
    }

LABEL_53:
    __break(1u);
    return result;
  }

  v47 = [v110 attestationObject];
  sub_1B1D7B4EC();

  v48 = v108;
  sub_1B1D7B9BC();
  v31 = v109;
  if ((*(v13 + 48))(v48, 1, v109) == 1)
  {
    sub_1B1CDEC18(v48, &qword_1EB7756F8, &qword_1B1D88968);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    *(inited + 32) = sub_1B1D7BE4C();
    v37 = inited + 32;
    v38 = 0x80000001B1D9CA40;
    *(inited + 72) = MEMORY[0x1E69E6158];
    v39 = 0xD000000000000024;
    goto LABEL_16;
  }

  v100 = v13;
  (*(v13 + 32))(v15, v48, v31);
  if (sub_1B1D7B9AC() == 1701736302 && v58 == 0xE400000000000000)
  {
LABEL_31:
    v59 = v107;

    goto LABEL_37;
  }

LABEL_36:
  v62 = sub_1B1D7C50C();

  v59 = v107;
  if ((v62 & 1) == 0)
  {
    if (sub_1B1D7B9AC() != 0x6972707265746E65 || v90 != 0xEA00000000006573)
    {
      v91 = sub_1B1D7C50C();

      v59 = v107;
      if ((v91 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
        v92 = swift_initStackObject();
        *(v92 + 16) = xmmword_1B1D85C40;
        v93 = v15;
        *(v92 + 32) = sub_1B1D7BE4C();
        *(v92 + 72) = MEMORY[0x1E69E6158];
        *(v92 + 40) = v94;
        *(v92 + 48) = 0xD000000000000023;
        *(v92 + 56) = 0x80000001B1D9CA70;
        v95 = @"com.apple.AuthenticationServices.AuthorizationError";
        sub_1B1D6FAB8(v92);
        swift_setDeallocating();
        sub_1B1CDEC18(v92 + 32, &unk_1EB774FA0, &unk_1B1D93690);
        v96 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
        v97 = sub_1B1D7BDCC();

        [v96 initWithDomain:v95 code:1002 userInfo:v97];

        swift_willThrow();
        return (*(v100 + 8))(v93, v31);
      }

      goto LABEL_37;
    }

    goto LABEL_31;
  }

LABEL_37:
  sub_1B1D7B9CC();
  v64 = v105;
  v63 = v106;
  sub_1B1D7B70C();
  v108 = v63;
  v99 = v15;
  if (v63)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_1B1D85D30;
    *(v65 + 32) = sub_1B1D7BE4C();
    *(v65 + 72) = MEMORY[0x1E69E6158];
    *(v65 + 40) = v66;
    *(v65 + 48) = 0xD00000000000001ALL;
    *(v65 + 56) = 0x80000001B1D9C8F0;
    *(v65 + 80) = sub_1B1D7BE4C();
    *(v65 + 88) = v67;
    v68 = v108;
    swift_getErrorValue();
    v69 = v111;
    v70 = v112;
    *(v65 + 120) = v112;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v65 + 96));
    (*(*(v70 - 8) + 16))(boxed_opaque_existential_0, v69, v70);
    v72 = @"com.apple.AuthenticationServices.AuthorizationError";
    sub_1B1D6FAB8(v65);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB774FA0, &unk_1B1D93690);
    swift_arrayDestroy();
    v73 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v74 = sub_1B1D7BDCC();

    [v73 initWithDomain:v72 code:1002 userInfo:v74];

    swift_willThrow();
    return (*(v100 + 8))(v99, v31);
  }

  else
  {
    v80 = *(v59 + 32);
    v101 = v7;
    v80(v104, v64, v7);
    v81 = [v110 relyingParty];
    v110 = sub_1B1D7BE4C();
    v107 = v82;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775698, &qword_1B1D88830);
    v83 = v3;
    v84 = swift_allocObject();
    *(v84 + 16) = xmmword_1B1D88950;
    sub_1B1D7B73C();
    sub_1B1D7B74C();
    sub_1B1D7B72C();
    sub_1B1D7B71C();
    v113 = v84;
    sub_1B1D2843C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756A8, &qword_1B1D88838);
    v85 = v59;
    sub_1B1D28494();
    v86 = v103;
    sub_1B1D7C1BC();
    v113 = MEMORY[0x1E69E7CC0];
    v87 = v102;
    v88 = v104;
    sub_1B1D7C1BC();
    sub_1B1D7B76C();

    v89 = *(v83 + 8);
    v89(v87, v2);
    v89(v86, v2);
    (*(v85 + 8))(v88, v101);
    return (*(v100 + 8))(v99, v109);
  }
}