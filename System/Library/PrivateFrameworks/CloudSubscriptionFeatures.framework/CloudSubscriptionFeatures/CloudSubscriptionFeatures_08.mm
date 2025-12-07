void sub_1DF54B0BC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v109 = a7;
  v108 = a6;
  v112 = a4;
  error[1] = *MEMORY[0x1E69E9840];
  v11 = sub_1DF564984();
  v110 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1DF564494();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v107 - v19;
  v111 = a1;
  if (a1)
  {
    if (a3)
    {
      v21 = v111;
      v22 = v111;
      v23 = a3;
      if (qword_1ED954C48 != -1)
      {
        swift_once();
      }

      v24 = sub_1DF5647B4();
      __swift_project_value_buffer(v24, qword_1ED954C50);
      v25 = a3;
      v26 = sub_1DF564794();
      v27 = sub_1DF564C24();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v114 = v29;
        *v28 = 136315138;
        swift_getErrorValue();
        v30 = sub_1DF5651B4();
        v32 = sub_1DF47EF6C(v30, v31, &v114);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_1DF47C000, v26, v27, "Unable to get BAA certificates. Error: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x1E12D75F0](v29, -1, -1);
        MEMORY[0x1E12D75F0](v28, -1, -1);
      }

      sub_1DF54AB9C();
      v33 = swift_allocError();
      *v34 = 1;
      v114 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
      sub_1DF564B14();

      goto LABEL_30;
    }

    if (!a2)
    {
      v56 = v111;
      goto LABEL_25;
    }

    Signature = v111;
    v48 = sub_1DF54BEBC(a2);
    if (!v48)
    {
LABEL_25:
      if (qword_1ED954C48 != -1)
      {
        swift_once();
      }

      v57 = sub_1DF5647B4();
      __swift_project_value_buffer(v57, qword_1ED954C50);
      v58 = sub_1DF564794();
      v59 = sub_1DF564C24();
      v60 = os_log_type_enabled(v58, v59);
      v21 = v111;
      if (v60)
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1DF47C000, v58, v59, "Unable to get BAA certificates. Unknown error.", v61, 2u);
        MEMORY[0x1E12D75F0](v61, -1, -1);
      }

      sub_1DF54AB9C();
      v62 = swift_allocError();
      *v63 = 1;
      v114 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
      sub_1DF564B14();
      goto LABEL_30;
    }

    v49 = v48 & 0xFFFFFFFFFFFFFF8;
    if (v48 >> 62)
    {
      v64 = v48;
      v65 = sub_1DF564F04();
      v48 = v64;
      if (v65 < 2)
      {
        goto LABEL_18;
      }
    }

    else if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
LABEL_18:

      goto LABEL_25;
    }

    v107 = v48;
    sub_1DF4952D8(a5, v20);
    if ((*(v15 + 48))(v20, 1, v14) == 1)
    {
      sub_1DF47E5B4(v20, &qword_1ECE37A10, &qword_1DF567C00);
      sub_1DF564474();
      v20 = v17;
    }

    sub_1DF564444();
    v67 = v66;
    v69 = *(v15 + 8);
    v68 = v15 + 8;
    v69(v20, v14);
    v70 = v67 * 1000.0;
    if (COERCE__INT64(fabs(v67 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v70 > -1.0)
    {
      if (v70 < 1.84467441e19)
      {
        v114 = v70;
        v114 = sub_1DF5650A4();
        v115 = v71;

        MEMORY[0x1E12D62C0](59, 0xE100000000000000);

        MEMORY[0x1E12D62C0](v108, v109);

        sub_1DF564974();
        v68 = sub_1DF564954();
        v17 = v72;

        (*(v110 + 8))(v13, v11);
        if (v17 >> 60 == 15)
        {

          sub_1DF54AB9C();
          v73 = swift_allocError();
          *v74 = 4;
          v114 = v73;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
          sub_1DF564B14();

          return;
        }

        error[0] = 0;
        v75 = *MEMORY[0x1E697B128];
        v76 = sub_1DF564354();
        Signature = SecKeyCreateSignature(Signature, v75, v76, error);

        if (!Signature)
        {

          v82 = error[0];
          if (!error[0])
          {
            if (qword_1ED954C48 != -1)
            {
              swift_once();
            }

            v101 = sub_1DF5647B4();
            __swift_project_value_buffer(v101, qword_1ED954C50);
            v102 = sub_1DF564794();
            v103 = sub_1DF564C24();
            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              *v104 = 0;
              _os_log_impl(&dword_1DF47C000, v102, v103, "BAA signature was empty", v104, 2u);
              MEMORY[0x1E12D75F0](v104, -1, -1);
            }

            sub_1DF54AB9C();
            v105 = swift_allocError();
            *v106 = 3;
            v114 = v105;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
            sub_1DF564B14();
            sub_1DF48C2F4(v68, v17);
            v21 = v111;
            goto LABEL_30;
          }

          if (qword_1ED954C48 == -1)
          {
            goto LABEL_50;
          }

          goto LABEL_66;
        }

        if (qword_1ED954C48 == -1)
        {
LABEL_41:
          v77 = sub_1DF5647B4();
          __swift_project_value_buffer(v77, qword_1ED954C50);
          v78 = sub_1DF564794();
          v79 = sub_1DF564C14();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            *v80 = 0;
            _os_log_impl(&dword_1DF47C000, v78, v79, "Successfully fetched BAA signing credentials", v80, 2u);
            MEMORY[0x1E12D75F0](v80, -1, -1);
          }

          sub_1DF4EF5A8(v68, v17);
          v81 = Signature;
          v82 = sub_1DF564374();
          v84 = v83;

          v85 = v107;
          if ((v107 & 0xC000000000000001) != 0)
          {
            v88 = MEMORY[0x1E12D66D0](0, v107);
            v89 = MEMORY[0x1E12D66D0](1, v85);
            goto LABEL_47;
          }

          v86 = *(v49 + 16);
          if (v86)
          {
            if (v86 != 1)
            {
              v87 = *(v107 + 40);
              v88 = *(v107 + 32);
              v89 = v87;
LABEL_47:
              v90 = v89;

              v114 = v68;
              v115 = v17;
              v116 = v82;
              v117 = v84;
              v118 = v88;
              v119 = v90;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
              sub_1DF564B24();
LABEL_53:
              sub_1DF48C2F4(v68, v17);

              v21 = v111;
LABEL_30:

              return;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_66:
          swift_once();
LABEL_50:
          v91 = sub_1DF5647B4();
          __swift_project_value_buffer(v91, qword_1ED954C50);
          v81 = v82;
          v92 = sub_1DF564794();
          v93 = sub_1DF564C24();

          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v114 = v95;
            *v94 = 136315138;
            v113 = v81;
            type metadata accessor for CFError(0);
            sub_1DF54C1C8();
            v96 = sub_1DF5651B4();
            v98 = sub_1DF47EF6C(v96, v97, &v114);

            *(v94 + 4) = v98;
            _os_log_impl(&dword_1DF47C000, v92, v93, "Unable to create BAA signature: %s", v94, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v95);
            MEMORY[0x1E12D75F0](v95, -1, -1);
            MEMORY[0x1E12D75F0](v94, -1, -1);
          }

          sub_1DF54AB9C();
          v99 = swift_allocError();
          *v100 = 5;
          v114 = v99;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
          sub_1DF564B14();
          goto LABEL_53;
        }

LABEL_62:
        swift_once();
        goto LABEL_41;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_61;
  }

  if (a3)
  {
    v35 = a3;
    if (qword_1ED954C48 != -1)
    {
      swift_once();
    }

    v36 = sub_1DF5647B4();
    __swift_project_value_buffer(v36, qword_1ED954C50);
    v37 = a3;
    v38 = sub_1DF564794();
    v39 = sub_1DF564C24();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v114 = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v42 = sub_1DF5651B4();
      v44 = sub_1DF47EF6C(v42, v43, &v114);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_1DF47C000, v38, v39, "Unable to get BAA signing keys. Error: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x1E12D75F0](v41, -1, -1);
      MEMORY[0x1E12D75F0](v40, -1, -1);
    }

    sub_1DF54AB9C();
    v45 = swift_allocError();
    *v46 = 2;
    v114 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
    sub_1DF564B14();
  }

  else
  {
    if (qword_1ED954C48 != -1)
    {
      swift_once();
    }

    v50 = sub_1DF5647B4();
    __swift_project_value_buffer(v50, qword_1ED954C50);
    v51 = sub_1DF564794();
    v52 = sub_1DF564C24();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_1DF47C000, v51, v52, "Unable to get BAA signing keys. Unknown error.", v53, 2u);
      MEMORY[0x1E12D75F0](v53, -1, -1);
    }

    sub_1DF54AB9C();
    v54 = swift_allocError();
    *v55 = 2;
    v114 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748);
    sub_1DF564B14();
  }
}

uint64_t sub_1DF54BEBC(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_1DF564E84();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_1DF47F24C(i, v5);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_1DF564E64();
    sub_1DF564E94();
    sub_1DF564EA4();
    sub_1DF564E74();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

unint64_t sub_1DF54BFA8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DF54C550(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DF54BFF0(uint64_t a1)
{
  v2 = sub_1DF54C3FC();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DF54C02C(uint64_t a1)
{
  v2 = sub_1DF54C3FC();
  v3 = sub_1DF54C4FC();
  v4 = sub_1DF4995C8();

  return MEMORY[0x1EEDC6AB0](a1, v2, v3, v4);
}

void sub_1DF54C094(void *a1, uint64_t a2, void *a3)
{
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38588, &qword_1DF56D748) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (v3 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];

  sub_1DF54B0BC(a1, a2, a3, v3 + v8, v3 + v11, v13, v14);
}

unint64_t sub_1DF54C1C8()
{
  result = qword_1ECE38598;
  if (!qword_1ECE38598)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38598);
  }

  return result;
}

void sub_1DF54C278(uint64_t a1)
{
  sub_1DF4820E4(319);
  if (v1 <= 0x3F)
  {
    sub_1DF54C2FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1DF54C2FC()
{
  result = qword_1ED9548C8;
  if (!qword_1ED9548C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED9548C8);
  }

  return result;
}

unint64_t sub_1DF54C364()
{
  result = qword_1ECE385A0;
  if (!qword_1ECE385A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE385A8, &qword_1DF56D7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE385A0);
  }

  return result;
}

unint64_t sub_1DF54C3CC(uint64_t a1)
{
  *(a1 + 8) = sub_1DF54C3FC();
  result = sub_1DF54C450();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF54C3FC()
{
  result = qword_1ECE385B0;
  if (!qword_1ECE385B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE385B0);
  }

  return result;
}

unint64_t sub_1DF54C450()
{
  result = qword_1ECE385B8;
  if (!qword_1ECE385B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE385B8);
  }

  return result;
}

unint64_t sub_1DF54C4A8()
{
  result = qword_1ECE385C0;
  if (!qword_1ECE385C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE385C0);
  }

  return result;
}

unint64_t sub_1DF54C4FC()
{
  result = qword_1ECE385C8;
  if (!qword_1ECE385C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE385C8);
  }

  return result;
}

unint64_t sub_1DF54C550(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t SiriAssistantLocale.current.getter()
{
  if (qword_1ED9556F8 != -1)
  {
    swift_once();
  }

  v0 = sub_1DF5647B4();
  __swift_project_value_buffer(v0, qword_1ED955700);
  v1 = sub_1DF564794();
  v2 = sub_1DF564C44();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DF47C000, v1, v2, "Attempting to get locale from CFPreferences.", v3, 2u);
    MEMORY[0x1E12D75F0](v3, -1, -1);
  }

  v4 = sub_1DF564914();
  CFPreferencesSynchronize(v4, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);

  v5 = sub_1DF564914();
  v6 = sub_1DF564914();
  v7 = CFPreferencesCopyAppValue(v5, v6);

  if (!v7)
  {
    v16 = sub_1DF564794();
    v17 = sub_1DF564C24();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1DF47C000, v16, v17, "SiriAssistantLocale.current - Unable to get locale from CFPreferences", v18, 2u);
      MEMORY[0x1E12D75F0](v18, -1, -1);
    }

    return 0;
  }

  v8 = CFGetTypeID(v7);
  if (v8 != CFStringGetTypeID())
  {
    swift_unknownObjectRetain();
    v19 = sub_1DF564794();
    v20 = sub_1DF564C24();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v21 = 136315394;
      swift_getObjectType();
      v23 = sub_1DF5652D4();
      v25 = sub_1DF47EF6C(v23, v24, v36);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      v37 = v7;
      swift_unknownObjectRetain();
      v26 = sub_1DF564994();
      v28 = sub_1DF47EF6C(v26, v27, v36);

      *(v21 + 14) = v28;
      v29 = "SiriAssistantLocale.current - Value from preferences is not expected type CFString. Type is: %s - %s";
LABEL_18:
      _os_log_impl(&dword_1DF47C000, v19, v20, v29, v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E12D75F0](v22, -1, -1);
      MEMORY[0x1E12D75F0](v21, -1, -1);

      swift_unknownObjectRelease();
      return 0;
    }

LABEL_19:
    swift_unknownObjectRelease();

    return 0;
  }

  v37 = v7;
  swift_unknownObjectRetain();
  if (!swift_dynamicCast())
  {
    swift_unknownObjectRetain();
    v19 = sub_1DF564794();
    v20 = sub_1DF564C24();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36[0] = v22;
      *v21 = 136315394;
      swift_getObjectType();
      v30 = sub_1DF5652D4();
      v32 = sub_1DF47EF6C(v30, v31, v36);

      *(v21 + 4) = v32;
      *(v21 + 12) = 2080;
      v37 = v7;
      swift_unknownObjectRetain();
      v33 = sub_1DF564994();
      v35 = sub_1DF47EF6C(v33, v34, v36);

      *(v21 + 14) = v35;
      v29 = "SiriAssistantLocale.current - Unable to downcast to String: %s - %s";
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v9 = v36[0];

  v10 = sub_1DF564794();
  v11 = sub_1DF564C44();
  v12 = v36[1];

  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v36[0] = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1DF47EF6C(v9, v12, v36);
    _os_log_impl(&dword_1DF47C000, v10, v11, "SiriAssistantLocale.current - Resolved, returning locale: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x1E12D75F0](v14, -1, -1);
    MEMORY[0x1E12D75F0](v13, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return v9;
}

void sub_1DF54CB34()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DF564914();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  qword_1ED9562C0 = v2;
}

uint64_t static GMBypass.setGMEligibilityBypass(_:)(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = sub_1DF5647B4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1DF548FD8();
  if (result)
  {

    sub_1DF5647A4();
    v12 = sub_1DF564794();
    v13 = sub_1DF564C44();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136446466;
      *(v14 + 4) = sub_1DF47EF6C(0xD00000000000001ALL, 0x80000001DF5750F0, &v23);
      *(v14 + 12) = 1026;
      *(v14 + 14) = a1 & 1;
      _os_log_impl(&dword_1DF47C000, v12, v13, "%{public}s Setting AFM bypass to %{BOOL,public}d.", v14, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1E12D75F0](v15, -1, -1);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    if (qword_1ED9562B0 != -1)
    {
      swift_once();
    }

    v16 = qword_1ED9562C0;
    v17 = a1 & 1;
    v18 = sub_1DF564AF4();
    v19 = sub_1DF564914();
    [v16 setValue:v18 forKey:v19];

    v20 = sub_1DF564B44();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = v2;
    *(v21 + 40) = v17;
    sub_1DF515B98(0, 0, v6, &unk_1DF56DA20, v21);
  }

  return result;
}

uint64_t sub_1DF54CF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1DF48D3C0;

  return sub_1DF54DDB8(v6);
}

uint64_t static GMBypass.setGMEligibilityBypassAndWait(_:)(char a1)
{
  *(v1 + 48) = a1;
  v2 = sub_1DF5647B4();
  *(v1 + 16) = v2;
  *(v1 + 24) = *(v2 - 8);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF54D0B8, 0, 0);
}

uint64_t sub_1DF54D0B8()
{
  v18 = v0;
  if (sub_1DF548FD8())
  {

    sub_1DF5647A4();
    v1 = sub_1DF564794();
    v2 = sub_1DF564C44();
    v3 = os_log_type_enabled(v1, v2);
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = *(v0 + 16);
    if (v3)
    {
      v7 = *(v0 + 48);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_1DF47EF6C(0xD000000000000021, 0x80000001DF575110, &v17);
      *(v8 + 12) = 1026;
      *(v8 + 14) = v7;
      _os_log_impl(&dword_1DF47C000, v1, v2, "%{public}s Setting AFM bypass to %{BOOL,public}d.", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1E12D75F0](v9, -1, -1);
      MEMORY[0x1E12D75F0](v8, -1, -1);
    }

    (*(v5 + 8))(v4, v6);
    if (qword_1ED9562B0 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED9562C0;
    v11 = sub_1DF564AF4();
    v12 = sub_1DF564914();
    [v10 setValue:v11 forKey:v12];

    v13 = swift_task_alloc();
    *(v0 + 40) = v13;
    *v13 = v0;
    v13[1] = sub_1DF550780;
    v14 = *(v0 + 48);

    return sub_1DF54DDB8(v14);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

id sub_1DF54D390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1DF548FD8() & 1) == 0)
  {
    return 0;
  }

  if (qword_1ED9562B0 != -1)
  {
    swift_once();
  }

  v4 = qword_1ED9562C0;
  v5 = sub_1DF564914();
  v6 = [v4 BOOLForKey_];

  return v6;
}

uint64_t static GMBypass.setADMBypass(_:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE383B0, &qword_1DF568C10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  result = sub_1DF548FD8();
  if (result)
  {
    if (qword_1ED9562B0 != -1)
    {
      swift_once();
    }

    v7 = qword_1ED9562C0;
    v8 = sub_1DF564914();
    v9 = a1 & 1;
    [v7 setBool:v9 forKey:v8];

    v10 = sub_1DF564B44();
    (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v1;
    *(v11 + 40) = v9;
    sub_1DF515B98(0, 0, v5, &unk_1DF56DA40, v11);
  }

  return result;
}

{
  *(v1 + 48) = a1;
  v2 = sub_1DF5647B4();
  *(v1 + 16) = v2;
  *(v1 + 24) = *(v2 - 8);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF54D8AC, 0, 0);
}

uint64_t sub_1DF54D5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1DF48D4B0;

  return sub_1DF54F6A4(v6);
}

uint64_t sub_1DF54D8AC()
{
  v18 = v0;
  if (sub_1DF548FD8())
  {

    sub_1DF5647A4();
    v1 = sub_1DF564794();
    v2 = sub_1DF564C44();
    v3 = os_log_type_enabled(v1, v2);
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = *(v0 + 16);
    if (v3)
    {
      v7 = *(v0 + 48);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446466;
      *(v8 + 4) = sub_1DF47EF6C(0xD000000000000010, 0x80000001DF575140, &v17);
      *(v8 + 12) = 1026;
      *(v8 + 14) = v7;
      _os_log_impl(&dword_1DF47C000, v1, v2, "%{public}s Setting ADM bypass to %{BOOL,public}d.", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1E12D75F0](v9, -1, -1);
      MEMORY[0x1E12D75F0](v8, -1, -1);
    }

    (*(v5 + 8))(v4, v6);
    if (qword_1ED9562B0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 48);
    v11 = qword_1ED9562C0;
    v12 = sub_1DF564914();
    [v11 setBool:v10 forKey:v12];

    v13 = swift_task_alloc();
    *(v0 + 40) = v13;
    *v13 = v0;
    v13[1] = sub_1DF54DB64;
    v14 = *(v0 + 48);

    return sub_1DF54F6A4(v14);
  }

  else
  {

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1DF54DB64()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id GMBypass.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for GMBypass();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1DF54DCF4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF54CF34(a1, v4, v5, v6, v7);
}

uint64_t sub_1DF54DDD8()
{
  v15 = v0;
  v1 = *(v0 + 360);
  sub_1DF5646D4();
  swift_allocObject();
  *(v0 + 160) = sub_1DF5646C4();
  if (v1 == 1)
  {
    if (qword_1ED9545D8 != -1)
    {
      swift_once();
    }

    v2 = sub_1DF5647B4();
    __swift_project_value_buffer(v2, qword_1ED9545E0);
    v3 = sub_1DF564794();
    v4 = sub_1DF564C04();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v14 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF5751C0, &v14);
      _os_log_impl(&dword_1DF47C000, v3, v4, "%{public}s Updating availability with bypass enabled.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
      MEMORY[0x1E12D75F0](v6, -1, -1);
      MEMORY[0x1E12D75F0](v5, -1, -1);
    }

    v7 = sub_1DF564654();
    *(v0 + 168) = v7;
    *(v0 + 176) = *(v7 - 8);
    v8 = swift_task_alloc();
    *(v0 + 184) = v8;
    v9 = *(sub_1DF564634() - 8);
    swift_task_alloc();
    (*(v9 + 104))();
    sub_1DF564644();

    v10 = swift_task_alloc();
    *(v0 + 192) = v10;
    *v10 = v0;
    v10[1] = sub_1DF54E1AC;

    return MEMORY[0x1EEE0B5B8](v8);
  }

  else
  {
    v11 = objc_opt_self();
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1DF54E7FC;
    v12 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37D50, qword_1DF569370);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1DF4E5758;
    *(v0 + 104) = &block_descriptor_11;
    *(v0 + 112) = v12;
    [v11 currentAvailabilityWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1DF54E1AC()
{
  v2 = *v1;
  v3 = *v1;
  v2[25] = v0;

  v4 = v2[22];
  if (v0)
  {
    (*(v4 + 8))(v2[23], v2[21]);

    return MEMORY[0x1EEE6DFA0](sub_1DF54F26C, 0, 0);
  }

  else
  {
    (*(v4 + 8))();

    v5 = swift_task_alloc();
    v2[26] = v5;
    *v5 = v3;
    v5[1] = sub_1DF54E39C;
    v6 = MEMORY[0x1E69E7CD0];

    return MEMORY[0x1EEE0B5C0](v6);
  }
}

uint64_t sub_1DF54E39C()
{
  v2 = *v1;
  *(v2 + 216) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF54F2DC, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 224) = v3;
    *v3 = v2;
    v3[1] = sub_1DF54E510;

    return MEMORY[0x1EEE0B5C8](1);
  }
}

uint64_t sub_1DF54E510()
{
  v2 = *v1;
  *(v2 + 232) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1DF54F340, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 240) = v3;
    *v3 = v2;
    v3[1] = sub_1DF54E684;

    return MEMORY[0x1EEE0B5D0](1);
  }
}

uint64_t sub_1DF54E684()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1DF54F3A4;
  }

  else
  {
    v2 = sub_1DF54E798;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF54E798()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF54E7FC()
{

  return MEMORY[0x1EEE6DFA0](sub_1DF54E8DC, 0, 0);
}

uint64_t sub_1DF54E8DC()
{
  v0[32] = v0[18];
  v1 = sub_1DF564654();
  v0[33] = v1;
  v0[34] = *(v1 - 8);
  v2 = swift_task_alloc();
  v0[35] = v2;
  sub_1DF4F396C();
  v3 = swift_task_alloc();
  v0[36] = v3;
  *v3 = v0;
  v3[1] = sub_1DF54E9E4;

  return MEMORY[0x1EEE0B5B8](v2);
}

uint64_t sub_1DF54E9E4()
{
  v2 = *(*v1 + 280);
  v3 = *(*v1 + 272);
  v4 = *(*v1 + 264);
  *(*v1 + 296) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1DF54F408;
  }

  else
  {

    v5 = sub_1DF54EB64;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DF54EB64()
{
  v11 = v0;
  if (qword_1ED954D60 != -1)
  {
    swift_once();
  }

  if (qword_1ED955730 != -1)
  {
    swift_once();
  }

  v1 = sub_1DF5647B4();
  __swift_project_value_buffer(v1, qword_1ED955738);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C44();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1DF47EF6C(0xD000000000000010, 0x80000001DF572630, &v10);
    _os_log_impl(&dword_1DF47C000, v2, v3, "%{public}s is deprecated, returning empty set.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1E12D75F0](v5, -1, -1);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  v0[19] = 0;
  v7 = sub_1DF4F6300(v6);
  v0[38] = v7;
  v8 = swift_task_alloc();
  v0[39] = v8;
  *v8 = v0;
  v8[1] = sub_1DF54ED5C;

  return MEMORY[0x1EEE0B5C0](v7);
}

uint64_t sub_1DF54ED5C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_1DF54F484;
  }

  else
  {

    v2 = sub_1DF54EE78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF54EE78()
{
  v1 = _s25CloudSubscriptionFeatures7GMOptInC7currentACSgvgZ_0();
  v2 = sub_1DF4BFA44();

  v3 = swift_task_alloc();
  *(v0 + 328) = v3;
  *v3 = v0;
  v3[1] = sub_1DF54EF28;

  return MEMORY[0x1EEE0B5C8](v2 & 1);
}

uint64_t sub_1DF54EF28()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1DF54F500;
  }

  else
  {
    v2 = sub_1DF54F03C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF54F03C()
{
  v1 = [*(v0 + 256) status] == 0;
  v2 = swift_task_alloc();
  *(v0 + 344) = v2;
  *v2 = v0;
  v2[1] = sub_1DF54F0EC;

  return MEMORY[0x1EEE0B5D0](v1);
}

uint64_t sub_1DF54F0EC()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1DF54F570;
  }

  else
  {
    v2 = sub_1DF54F200;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF54F200()
{
  v1 = *(v0 + 256);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1DF54F26C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF54F2DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF54F340()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF54F3A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF54F408()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF54F484()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF54F500()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF54F570()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF54F5E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D3C0;

  return sub_1DF54D5C0(a1, v4, v5, v6, v7);
}

uint64_t sub_1DF54F6C4()
{
  v87 = v0;
  if (qword_1ED956390 != -1)
  {
LABEL_54:
    swift_once();
  }

  v1 = sub_1DF5647B4();
  *(v0 + 5) = __swift_project_value_buffer(v1, qword_1ED956398);
  v2 = sub_1DF564794();
  v3 = sub_1DF564C04();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v86[0] = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF5751A0, v86);
    _os_log_impl(&dword_1DF47C000, v2, v3, "%s Updating availability.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1E12D75F0](v5, -1, -1);
    MEMORY[0x1E12D75F0](v4, -1, -1);
  }

  v6 = v0[104];
  sub_1DF5646D4();
  swift_allocObject();
  *(v0 + 6) = sub_1DF5646C4();
  v7 = MEMORY[0x1E69E7CC0];
  if (v6 != 1)
  {
    v42 = sub_1DF481988();
    v43 = [v42 aa_primaryAppleAccount];
    v83 = v0;
    if (v43 && (v44 = v43, v45 = [v43 aa_altDSID], v44, v45))
    {
      v46 = sub_1DF564944();
      v85 = v47;
    }

    else
    {

      v46 = 0;
      v85 = 0;
    }

    v48 = 0;
    v86[0] = v7;
    v84 = v7;
LABEL_21:
    v49 = 4;
    if (v48 > 4)
    {
      v49 = v48;
    }

    v0 = &unk_1F5A88670 + 16 * v48 + 40;
    v50 = v49 + 1;
    while (v48 != 4)
    {
      if (v50 == ++v48)
      {
        __break(1u);
        goto LABEL_54;
      }

      v51 = *(v0 - 1);
      v52 = *v0;
      v53 = qword_1ED955FF0;

      if (v53 != -1)
      {
        swift_once();
      }

      v0 += 16;
      v54 = FeatureCache.cachedFeature(identifier:altDSID:allowAnySession:ignoreTTL:)(v51, v52, v46, v85, 0, 0);

      if (v54)
      {
        MEMORY[0x1E12D6340](v55);
        if (*((v86[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DF564AC4();
        }

        sub_1DF564AE4();
        v84 = v86[0];
        goto LABEL_21;
      }
    }

    v56 = v84;
    if (v84 >> 62)
    {
      v57 = sub_1DF564F04();
      v56 = v84;
    }

    else
    {
      v57 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v57)
    {
      v58 = v56;
      v86[0] = MEMORY[0x1E69E7CC0];
      v59 = sub_1DF4BCE90(0, v57 & ~(v57 >> 63), 0);
      if (v57 < 0)
      {
        __break(1u);
        return MEMORY[0x1EEE0B5D8](v59);
      }

      v60 = 0;
      v61 = v86[0];
      v62 = v58;
      v63 = v58 & 0xC000000000000001;
      do
      {
        if (v63)
        {
          v64 = MEMORY[0x1E12D66D0](v60, v62);
        }

        else
        {
          v64 = *(v62 + 8 * v60 + 32);
        }

        v65 = v64;
        v66 = *&v64[OBJC_IVAR___CloudFeature_featureID];
        v67 = *&v64[OBJC_IVAR___CloudFeature_featureID + 8];
        v68 = OBJC_IVAR___CloudFeature_canUse;
        swift_beginAccess();
        v69 = v65[v68];

        v86[0] = v61;
        v71 = *(v61 + 16);
        v70 = *(v61 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_1DF4BCE90((v70 > 1), v71 + 1, 1);
          v61 = v86[0];
        }

        ++v60;
        *(v61 + 16) = v71 + 1;
        v72 = v61 + 24 * v71;
        *(v72 + 32) = v66;
        *(v72 + 40) = v67;
        *(v72 + 48) = v69;
        v62 = v84;
      }

      while (v57 != v60);

      if (*(v61 + 16))
      {
        goto LABEL_44;
      }
    }

    else
    {

      if (*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_44:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CD0, &unk_1DF56A380);
        v73 = sub_1DF564F34();
LABEL_47:
        v86[0] = v73;

        sub_1DF4E9C6C(v74, 1, v86);

        v31 = v86[0];
        *(v83 + 10) = v86[0];

        v75 = sub_1DF564794();
        v76 = sub_1DF564C04();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v86[0] = v78;
          *v77 = 136315394;
          *(v77 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF5751A0, v86);
          *(v77 + 12) = 2080;
          v79 = sub_1DF564884();
          v81 = sub_1DF47EF6C(v79, v80, v86);

          *(v77 + 14) = v81;
          _os_log_impl(&dword_1DF47C000, v75, v76, "%s Updating access cache with cached features: %s", v77, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E12D75F0](v78, -1, -1);
          MEMORY[0x1E12D75F0](v77, -1, -1);
        }

        v40 = swift_task_alloc();
        *(v83 + 11) = v40;
        *v40 = v83;
        v41 = sub_1DF550360;
        goto LABEL_50;
      }
    }

    v73 = MEMORY[0x1E69E7CC8];
    goto LABEL_47;
  }

  v8 = v0;
  v86[0] = MEMORY[0x1E69E7CC0];
  sub_1DF4BCE90(0, 4, 0);
  v9 = v86[0];
  v10 = qword_1F5A88690;
  v11 = off_1F5A88698;
  v13 = *(v86[0] + 16);
  v12 = *(v86[0] + 24);
  v14 = v12 >> 1;
  v15 = v13 + 1;

  if (v12 >> 1 <= v13)
  {
    sub_1DF4BCE90((v12 > 1), v13 + 1, 1);
    v9 = v86[0];
    v12 = *(v86[0] + 24);
    v14 = v12 >> 1;
  }

  *(v9 + 16) = v15;
  v16 = v9 + 24 * v13;
  *(v16 + 32) = v10;
  *(v16 + 40) = v11;
  *(v16 + 48) = 1;
  v18 = qword_1F5A886A0;
  v17 = off_1F5A886A8;
  v86[0] = v9;

  if (v14 <= v15)
  {
    sub_1DF4BCE90((v12 > 1), v13 + 2, 1);
    v9 = v86[0];
  }

  *(v9 + 16) = v13 + 2;
  v19 = v9 + 24 * v15;
  *(v19 + 32) = v18;
  *(v19 + 40) = v17;
  *(v19 + 48) = 1;
  v20 = qword_1F5A886B0;
  v21 = off_1F5A886B8;
  v86[0] = v9;
  v23 = *(v9 + 16);
  v22 = *(v9 + 24);
  v24 = v22 >> 1;
  v25 = v23 + 1;

  if (v22 >> 1 <= v23)
  {
    sub_1DF4BCE90((v22 > 1), v23 + 1, 1);
    v9 = v86[0];
    v22 = *(v86[0] + 24);
    v24 = v22 >> 1;
  }

  *(v9 + 16) = v25;
  v26 = v9 + 24 * v23;
  *(v26 + 32) = v20;
  *(v26 + 40) = v21;
  *(v26 + 48) = 1;
  v28 = aCloudLlm_0[0];
  v27 = aCloudLlm_0[1];
  v86[0] = v9;

  if (v24 <= v25)
  {
    sub_1DF4BCE90((v22 > 1), v23 + 2, 1);
    v9 = v86[0];
  }

  *(v9 + 16) = v23 + 2;
  v29 = v9 + 24 * v25;
  *(v29 + 32) = v28;
  *(v29 + 40) = v27;
  *(v29 + 48) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37CD0, &unk_1DF56A380);
  v86[0] = sub_1DF564F34();

  sub_1DF4E9C6C(v30, 1, v86);

  v31 = v86[0];
  v32 = v8;
  *(v8 + 7) = v86[0];

  v33 = sub_1DF564794();
  v34 = sub_1DF564C04();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v86[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF5751A0, v86);
    *(v35 + 12) = 2080;
    v37 = sub_1DF564884();
    v39 = sub_1DF47EF6C(v37, v38, v86);

    *(v35 + 14) = v39;
    _os_log_impl(&dword_1DF47C000, v33, v34, "%s Updating access cache with bypassed features: %s", v35, 0x16u);
    swift_arrayDestroy();
    v32 = v8;
    MEMORY[0x1E12D75F0](v36, -1, -1);
    MEMORY[0x1E12D75F0](v35, -1, -1);
  }

  v40 = swift_task_alloc();
  *(v32 + 8) = v40;
  *v40 = v32;
  v41 = sub_1DF550104;
LABEL_50:
  v40[1] = v41;
  v59 = v31;

  return MEMORY[0x1EEE0B5D8](v59);
}

uint64_t sub_1DF550104()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1DF5505BC;
  }

  else
  {
    v2 = sub_1DF550218;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF550218()
{
  v8 = v0;

  v1 = sub_1DF564794();
  v2 = sub_1DF564C04();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF5751A0, &v7);
    _os_log_impl(&dword_1DF47C000, v1, v2, "%s Finished updating availability.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1E12D75F0](v4, -1, -1);
    MEMORY[0x1E12D75F0](v3, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DF550360()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1DF550628;
  }

  else
  {
    v2 = sub_1DF550474;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DF550474()
{
  v8 = v0;

  v1 = sub_1DF564794();
  v2 = sub_1DF564C04();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v7 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1DF47EF6C(0xD00000000000001ELL, 0x80000001DF5751A0, &v7);
    _os_log_impl(&dword_1DF47C000, v1, v2, "%s Finished updating availability.", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1E12D75F0](v4, -1, -1);
    MEMORY[0x1E12D75F0](v3, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DF5505BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF550628()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1DF5506BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1DF48D4B0;

  return sub_1DF54D5C0(a1, v4, v5, v6, v7);
}

uint64_t sub_1DF550784()
{
  v1 = v0[2];
  v2 = v0[3];
  MEMORY[0x1E12D62C0](*v0, v0[1]);
  MEMORY[0x1E12D62C0](2108704, 0xE300000000000000);
  MEMORY[0x1E12D62C0](v1, v2);
  MEMORY[0x1E12D62C0](93, 0xE100000000000000);
  return 91;
}

id NotificationObservation.addTicketObserver(change:)(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() defaultCenter];
  v6 = *(v2 + 24);
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v13[4] = sub_1DF5510CC;
  v13[5] = v7;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1DF550D18;
  v13[3] = &block_descriptor_6;
  v8 = _Block_copy(v13);

  v9 = [v5 addObserverForName:v6 object:0 queue:0 usingBlock:v8];
  _Block_release(v8);

  if ((*(v2 + 33) & 1) == 0)
  {
    v10 = sub_1DF564944();
    sub_1DF47E1B8(v10, v11);

    *(v2 + 33) = 1;
  }

  return v9;
}

void sub_1DF550968(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    swift_unknownObjectRetain();
    v7 = a3;
    v8 = a5;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      if (v7)
      {
        v9 = sub_1DF564944();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0;
      }

      sub_1DF551144(v9, v11);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

void sub_1DF550A5C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED955E10);

  v7 = sub_1DF564794();
  v8 = sub_1DF564C44();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1DF47EF6C(a1, a2, &v13);
    _os_log_impl(&dword_1DF47C000, v7, v8, "deregistering darwin observer for name: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1E12D75F0](v10, -1, -1);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  v11 = CFNotificationCenterGetDarwinNotifyCenter();
  v12 = sub_1DF564914();
  CFNotificationCenterRemoveObserver(v11, v3, v12, 0);
}

uint64_t NotificationObservation.deinit()
{
  v1 = sub_1DF564944();
  sub_1DF550A5C(v1, v2);

  v3 = sub_1DF564944();
  sub_1DF550A5C(v3, v4);

  return v0;
}

uint64_t NotificationObservation.__deallocating_deinit()
{
  v1 = sub_1DF564944();
  sub_1DF550A5C(v1, v2);

  v3 = sub_1DF564944();
  sub_1DF550A5C(v3, v4);

  return MEMORY[0x1EEE6BDC0](v0, 34, 7);
}

uint64_t sub_1DF550D18(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DF5641E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1DF5641D4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DF550E0C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, const char *a4)
{
  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v6 = sub_1DF5647B4();
  __swift_project_value_buffer(v6, qword_1ED955E10);
  v7 = sub_1DF564794();
  v8 = sub_1DF564C44();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DF47C000, v7, v8, a4, v9, 2u);
    MEMORY[0x1E12D75F0](v9, -1, -1);
  }

  return a2();
}

void _s25CloudSubscriptionFeatures23NotificationObservationC14removeObserver5tokenySo8NSObject_p_tF_0(void *a1)
{
  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v2 = sub_1DF5647B4();
  __swift_project_value_buffer(v2, qword_1ED955E10);
  swift_unknownObjectRetain();
  v3 = sub_1DF564794();
  v4 = sub_1DF564C44();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v7 = [a1 description];
    v8 = sub_1DF564944();
    v10 = v9;

    v11 = sub_1DF47EF6C(v8, v10, &v13);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1DF47C000, v3, v4, "removing observer for token: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x1E12D75F0](v6, -1, -1);
    MEMORY[0x1E12D75F0](v5, -1, -1);
  }

  v12 = [objc_opt_self() defaultCenter];
  [v12 removeObserver_];
}

void sub_1DF551144(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return;
  }

  v3 = v2;
  if (sub_1DF564944() == a1 && v6 == a2)
  {
  }

  else
  {
    v8 = sub_1DF5650D4();

    if ((v8 & 1) == 0)
    {
      if (sub_1DF564944() == a1 && v9 == a2)
      {
      }

      else
      {
        v11 = sub_1DF5650D4();

        if ((v11 & 1) == 0)
        {
          return;
        }
      }

      if (qword_1ED955E08 != -1)
      {
        swift_once();
      }

      v18 = sub_1DF5647B4();
      __swift_project_value_buffer(v18, qword_1ED955E10);

      v19 = sub_1DF564794();
      v20 = sub_1DF564C44();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v24 = v22;
        *v21 = 136315138;
        *(v21 + 4) = sub_1DF47EF6C(a1, a2, &v24);
        _os_log_impl(&dword_1DF47C000, v19, v20, "Receieved Ticket darwin notification %s, posting new local notification.", v21, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v22);
        MEMORY[0x1E12D75F0](v22, -1, -1);
        MEMORY[0x1E12D75F0](v21, -1, -1);
      }

      v17 = 24;
      goto LABEL_19;
    }
  }

  if (qword_1ED955E08 != -1)
  {
    swift_once();
  }

  v12 = sub_1DF5647B4();
  __swift_project_value_buffer(v12, qword_1ED955E10);

  v13 = sub_1DF564794();
  v14 = sub_1DF564C44();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1DF47EF6C(a1, a2, &v24);
    _os_log_impl(&dword_1DF47C000, v13, v14, "Received Feature darwin notification %s, posting new local notification.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x1E12D75F0](v16, -1, -1);
    MEMORY[0x1E12D75F0](v15, -1, -1);
  }

  v17 = 16;
LABEL_19:
  v23 = [objc_opt_self() defaultCenter];
  [v23 postNotificationName:*(v3 + v17) object:0];
}

id sub_1DF551510(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(type metadata accessor for TicketStatus());
  result = TicketStatus.init(rawValue:)(a1, a2);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_1DF55161C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = objc_allocWithZone(type metadata accessor for TicketStatus());
  result = TicketStatus.init(rawValue:)(a3, a4);
  if (result)
  {

    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DF5516F0()
{
  v1 = (v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1DF5517B4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1DF551814(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1DF5518E4()
{
  v0 = type metadata accessor for TicketStatus();
  v1 = objc_allocWithZone(v0);
  result = TicketStatus.init(rawValue:)(0x7551746559746F6ELL, 0xEC00000064657565);
  if (!result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = sub_1DF564CD4();

  if (v4)
  {
    return 0;
  }

  v5 = objc_allocWithZone(v0);
  result = TicketStatus.init(rawValue:)(0x6465756575716E65, 0xE800000000000000);
  if (!result)
  {
    goto LABEL_12;
  }

  v6 = result;
  v7 = sub_1DF564CD4();

  if (v7)
  {
    return 1;
  }

  v8 = objc_allocWithZone(v0);
  result = TicketStatus.init(rawValue:)(0x657669746361, 0xE600000000000000);
  if (!result)
  {
    goto LABEL_13;
  }

  v9 = result;
  v10 = sub_1DF564CD4();

  if (v10)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1DF551AD4()
{
  strcpy(v5, "TicketStatus.");
  HIWORD(v5[1]) = -4864;
  v1 = (v0 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  MEMORY[0x1E12D62C0](v3, v2);

  return v5[0];
}

id TicketStatus.init(rawValue:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_allowedValues;
  v7 = sub_1DF552A0C(&unk_1F5A88418);
  swift_arrayDestroy();
  *&v2[v6] = v7;

  v8 = sub_1DF4BEB48(a1, a2, v7);

  if (v8)
  {
    v9 = &v3[OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue];
    *v9 = a1;
    *(v9 + 1) = a2;
    v17.receiver = v3;
    v17.super_class = type metadata accessor for TicketStatus();
    return objc_msgSendSuper2(&v17, sel_init);
  }

  else
  {
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v11 = sub_1DF5647B4();
    __swift_project_value_buffer(v11, qword_1ED956088);

    v12 = sub_1DF564794();
    v13 = sub_1DF564C24();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v18 = v15;
      *v14 = 136315138;
      v16 = sub_1DF47EF6C(a1, a2, &v18);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1DF47C000, v12, v13, "Decoded ticket with non-allowed value: %s. Will return nil.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1E12D75F0](v15, -1, -1);
      MEMORY[0x1E12D75F0](v14, -1, -1);
    }

    else
    {
    }

    type metadata accessor for TicketStatus();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

char *TicketStatus.init(from:)(void *a1)
{
  v3 = v1;
  v5 = OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_allowedValues;
  v6 = sub_1DF552A0C(&unk_1F5A88B48);
  swift_arrayDestroy();
  *&v1[v5] = v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF565274();
  if (v2)
  {
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(a1);

    type metadata accessor for TicketStatus();
    swift_deallocPartialClassInstance();
    return v3;
  }

  __swift_project_boxed_opaque_existential_0(v22, v22[3]);
  v7 = sub_1DF5650E4();
  v9 = v8;
  __swift_destroy_boxed_opaque_existential_0(v22);
  v10 = *&v1[v5];

  v11 = sub_1DF4BEB48(v7, v9, v10);

  if ((v11 & 1) == 0)
  {
    if (qword_1ED956080 != -1)
    {
      swift_once();
    }

    v13 = sub_1DF5647B4();
    __swift_project_value_buffer(v13, qword_1ED956088);

    v14 = sub_1DF564794();
    v15 = sub_1DF564C24();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136315138;
      v18 = sub_1DF47EF6C(v7, v9, v22);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_1DF47C000, v14, v15, "Decoded ticket with non-allowed value: %s. Will return nil.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1E12D75F0](v17, -1, -1);
      MEMORY[0x1E12D75F0](v16, -1, -1);
    }

    else
    {
    }

    sub_1DF498474();
    swift_allocError();
    *v19 = 4;
    swift_willThrow();
    goto LABEL_10;
  }

  v12 = &v3[OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue];
  *v12 = v7;
  v12[1] = v9;
  v21.receiver = v3;
  v21.super_class = type metadata accessor for TicketStatus();
  v3 = objc_msgSendSuper2(&v21, sel_init);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

id TicketStatus.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_allowedValues;
  v4 = sub_1DF552A0C(&unk_1F5A88B98);
  swift_arrayDestroy();
  *(v1 + v3) = v4;
  sub_1DF4BC0E0();
  v5 = sub_1DF564CB4();
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    v6 = v5;
    sub_1DF564934();
  }

  type metadata accessor for TicketStatus();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_1DF552380(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF565294();
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);

  sub_1DF5650F4();

  return __swift_destroy_boxed_opaque_existential_0(v2);
}

void sub_1DF55244C(void *a1)
{
  swift_beginAccess();

  v2 = sub_1DF564914();

  v3 = sub_1DF564914();
  [a1 encodeObject:v2 forKey:v3];
}

uint64_t sub_1DF5525C0(uint64_t a1)
{
  sub_1DF4EC8F4(a1, v10);
  if (!v11)
  {
    sub_1DF4A7D80(v10);
    goto LABEL_9;
  }

  type metadata accessor for TicketStatus();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v7 = 0;
    return v7 & 1;
  }

  v2 = &v9[OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue];
  swift_beginAccess();
  v3 = *v2;
  v4 = *(v2 + 1);
  v5 = (v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  if (v3 == *v5 && v4 == v5[1])
  {

    v7 = 1;
  }

  else
  {
    v7 = sub_1DF5650D4();
  }

  return v7 & 1;
}

id TicketStatus.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TicketStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TicketStatus();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1DF552848@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = objc_allocWithZone(type metadata accessor for TicketStatus());
  result = TicketStatus.init(rawValue:)(v3, v4);
  *a2 = result;
  return result;
}

double sub_1DF552894@<D0>(void *a1@<X8>)
{
  v3 = (*v1 + OBJC_IVAR____TtC25CloudSubscriptionFeatures12TicketStatus_rawValue);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

char *sub_1DF5528EC@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for TicketStatus());
  result = TicketStatus.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1DF552940(void *a1)
{
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF565294();
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);

  sub_1DF5650F4();

  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_1DF552A0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE37F30, &unk_1DF56A3A0);
    v3 = sub_1DF564DC4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1DF565234();

      sub_1DF5649E4();
      result = sub_1DF565264();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1DF5650D4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1DF552D04@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1DF4A4DFC();

  *a2 = v3;
  return result;
}

unint64_t sub_1DF552D48()
{
  result = qword_1ECE38640;
  if (!qword_1ECE38640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38640);
  }

  return result;
}

unint64_t sub_1DF552DA0()
{
  result = qword_1ECE38648;
  if (!qword_1ECE38648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38648);
  }

  return result;
}

unint64_t sub_1DF552DF8()
{
  result = qword_1ECE38650;
  if (!qword_1ECE38650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38650);
  }

  return result;
}

unint64_t sub_1DF552E50()
{
  result = qword_1ECE38658;
  if (!qword_1ECE38658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38658);
  }

  return result;
}

unint64_t sub_1DF552EB4@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DF552F38(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1DF552EE4()
{
  result = qword_1ECE38660;
  if (!qword_1ECE38660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38660);
  }

  return result;
}

unint64_t sub_1DF552F38(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1DF552F48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38688, &qword_1DF56E110);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF554430();
  sub_1DF5652A4();
  v14 = 0;
  sub_1DF565054();
  if (!v5)
  {
    v13 = 1;
    sub_1DF565054();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DF5530DC()
{
  if (*v0)
  {
    return 0x707954726F727265;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1DF553120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001DF5753D0 == a2 || (sub_1DF5650D4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x707954726F727265 && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DF5650D4();

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

uint64_t sub_1DF553210(uint64_t a1)
{
  v2 = sub_1DF554430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF55324C(uint64_t a1)
{
  v2 = sub_1DF554430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF553288@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DF554040(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1DF5532D8()
{
  v1 = *v0;
  v2 = 0x72656767697274;
  v3 = 0x6E45737361707962;
  v4 = 0x52657361656C6572;
  if (v1 != 4)
  {
    v4 = 0x726F727265;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1702125924;
  if (v1 != 1)
  {
    v5 = 0x636F725074736F68;
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

uint64_t sub_1DF5533A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF554224(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF5533DC(uint64_t a1)
{
  v2 = sub_1DF5536D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF553418(uint64_t a1)
{
  v2 = sub_1DF5536D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetDiagnostics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38668, &qword_1DF56DEE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5536D0();
  sub_1DF5652A4();
  LOBYTE(v14) = 0;
  sub_1DF565024();
  if (!v2)
  {
    v9 = type metadata accessor for AssetDiagnostics(0);
    LOBYTE(v14) = 1;
    sub_1DF564494();
    sub_1DF484ECC(&qword_1ED955120, MEMORY[0x1E6969538]);
    sub_1DF565074();
    LOBYTE(v14) = 2;
    sub_1DF565054();
    LOBYTE(v14) = 3;
    sub_1DF565064();
    LOBYTE(v14) = 4;
    sub_1DF565024();
    v10 = (v3 + *(v9 + 36));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 5;
    sub_1DF553770();
    sub_1DF565044();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1DF5536D0()
{
  result = qword_1ED954A10;
  if (!qword_1ED954A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954A10);
  }

  return result;
}

uint64_t type metadata accessor for AssetDiagnostics(uint64_t a1)
{
  result = qword_1ED954ED0;
  if (!qword_1ED954ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1DF553770()
{
  result = qword_1ED9549F8;
  if (!qword_1ED9549F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9549F8);
  }

  return result;
}

uint64_t AssetDiagnostics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1DF564494();
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38670, &qword_1DF56DEE8);
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v26 - v6;
  v8 = type metadata accessor for AssetDiagnostics(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5536D0();
  v32 = v7;
  v11 = v33;
  sub_1DF565284();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v33 = a1;
  v12 = v10;
  v13 = v30;
  LOBYTE(v34) = 0;
  *v12 = sub_1DF564F84();
  v12[1] = v14;
  v27 = v12;
  LOBYTE(v34) = 1;
  sub_1DF484ECC(&qword_1ED955C88, MEMORY[0x1E6969558]);
  sub_1DF564FE4();
  (*(v13 + 32))(v27 + v8[5], v5, v3);
  LOBYTE(v34) = 2;
  v15 = sub_1DF564FC4();
  v16 = v27;
  v17 = (v27 + v8[6]);
  *v17 = v15;
  v17[1] = v18;
  LOBYTE(v34) = 3;
  *(v16 + v8[7]) = sub_1DF564FD4() & 1;
  LOBYTE(v34) = 4;
  v19 = sub_1DF564F84();
  v20 = v33;
  v21 = (v16 + v8[8]);
  *v21 = v19;
  v21[1] = v22;
  v36 = 5;
  sub_1DF553C88();
  sub_1DF564FB4();
  MEMORY[8](v32, v31);
  v23 = (v16 + v8[9]);
  v24 = v35;
  *v23 = v34;
  v23[1] = v24;
  sub_1DF553CDC(v16, v28);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return sub_1DF553D40(v16);
}

unint64_t sub_1DF553C88()
{
  result = qword_1ECE38678;
  if (!qword_1ECE38678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38678);
  }

  return result;
}

uint64_t sub_1DF553CDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetDiagnostics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF553D40(uint64_t a1)
{
  v2 = type metadata accessor for AssetDiagnostics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DF553DF4(uint64_t a1)
{
  sub_1DF553ECC(319, qword_1ED955E88, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1DF564494();
    if (v2 <= 0x3F)
    {
      sub_1DF553ECC(319, &qword_1ED9549F0, &type metadata for AssetDiagnostics.CodableError);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DF553ECC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DF564D04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1DF553F3C()
{
  result = qword_1ECE38680;
  if (!qword_1ECE38680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38680);
  }

  return result;
}

unint64_t sub_1DF553F94()
{
  result = qword_1ED954A00;
  if (!qword_1ED954A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954A00);
  }

  return result;
}

unint64_t sub_1DF553FEC()
{
  result = qword_1ED954A08;
  if (!qword_1ED954A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954A08);
  }

  return result;
}

uint64_t sub_1DF554040(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38698, &qword_1DF56E118);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF554430();
  sub_1DF565284();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1DF564FC4();
    v10 = 1;
    sub_1DF564FC4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1DF554224(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656767697274 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636F725074736F68 && a2 == 0xEB00000000737365 || (sub_1DF5650D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E45737361707962 && a2 == 0xED000064656C6261 || (sub_1DF5650D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x52657361656C6572 && a2 == 0xED00006E6F736165 || (sub_1DF5650D4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1DF5650D4();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_1DF554430()
{
  result = qword_1ECE38690;
  if (!qword_1ECE38690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38690);
  }

  return result;
}

unint64_t sub_1DF554498()
{
  result = qword_1ECE386A0;
  if (!qword_1ECE386A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE386A0);
  }

  return result;
}

unint64_t sub_1DF5544F0()
{
  result = qword_1ECE386A8;
  if (!qword_1ECE386A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE386A8);
  }

  return result;
}

unint64_t sub_1DF554548()
{
  result = qword_1ECE386B0;
  if (!qword_1ECE386B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE386B0);
  }

  return result;
}

uint64_t sub_1DF55459C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386E0, &qword_1DF56E4C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55612C();
  sub_1DF5652A4();
  v8[15] = 0;
  sub_1DF564494();
  sub_1DF5557A0(&qword_1ED955120, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1DF565074();
  if (!v1)
  {
    type metadata accessor for CoreTelephonyDiagnostic.LastResponse(0);
    v8[14] = 1;
    sub_1DF565064();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DF554754@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = sub_1DF564494();
  v22 = *(v4 - 8);
  v23 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386F0, &qword_1DF56E4D8);
  v21 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v19 - v7;
  Response = type metadata accessor for CoreTelephonyDiagnostic.LastResponse(0);
  MEMORY[0x1EEE9AC00](Response);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55612C();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v11;
  v12 = v21;
  v13 = v22;
  v26 = 0;
  sub_1DF5557A0(&qword_1ED955C88, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v14 = v23;
  sub_1DF564FE4();
  (*(v13 + 32))(v19, v6, v14);
  v25 = 1;
  v15 = sub_1DF564FD4();
  (*(v12 + 8))(v8, v24);
  v17 = v19;
  v16 = v20;
  v19[*(Response + 20)] = v15 & 1;
  sub_1DF5561D4(v17, v16, type metadata accessor for CoreTelephonyDiagnostic.LastResponse);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DF55623C(v17, type metadata accessor for CoreTelephonyDiagnostic.LastResponse);
}

uint64_t sub_1DF554A9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386E8, &qword_1DF56E4D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF556180();
  sub_1DF5652A4();
  v8[15] = 0;
  sub_1DF564494();
  sub_1DF5557A0(&qword_1ED955120, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1DF565074();
  if (!v1)
  {
    type metadata accessor for CoreTelephonyDiagnostic.SanitizedError(0);
    v8[14] = 1;
    sub_1DF565054();
    v8[13] = 2;
    sub_1DF565054();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DF554C8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1DF564494();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386F8, &unk_1DF56E4E0);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v7 = &v24 - v6;
  v8 = type metadata accessor for CoreTelephonyDiagnostic.SanitizedError(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF556180();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v28;
  v11 = v29;
  v25 = v8;
  v26 = v10;
  v34 = 0;
  sub_1DF5557A0(&qword_1ED955C88, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v14 = v30;
  v13 = v31;
  sub_1DF564FE4();
  (*(v11 + 32))(v26, v14, v4);
  v33 = 1;
  v15 = sub_1DF564FC4();
  v16 = &v26[*(v25 + 20)];
  *v16 = v15;
  v16[1] = v17;
  v32 = 2;
  v18 = sub_1DF564FC4();
  v20 = v19;
  (*(v12 + 8))(v7, v13);
  v21 = v26;
  v22 = &v26[*(v25 + 24)];
  *v22 = v18;
  v22[1] = v20;
  sub_1DF5561D4(v21, v27, type metadata accessor for CoreTelephonyDiagnostic.SanitizedError);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DF55623C(v21, type metadata accessor for CoreTelephonyDiagnostic.SanitizedError);
}

uint64_t sub_1DF555058()
{
  if (*v0)
  {
    return 0x7365636341736168;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1DF555090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365636341736168 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

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

uint64_t sub_1DF555174(uint64_t a1)
{
  v2 = sub_1DF55612C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5551B0(uint64_t a1)
{
  v2 = sub_1DF55612C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DF55521C()
{
  v1 = 0x6E69616D6F64;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_1DF555270@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF556F28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF555298(uint64_t a1)
{
  v2 = sub_1DF556180();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5552D4(uint64_t a1)
{
  v2 = sub_1DF556180();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF555340()
{
  if (*v0)
  {
    return 0x73756F6976657270;
  }

  else
  {
    return 0x707365527473616CLL;
  }
}

uint64_t sub_1DF555390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x707365527473616CLL && a2 == 0xEC00000065736E6FLL;
  if (v6 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73756F6976657270 && a2 == 0xEE0073726F727245)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

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

uint64_t sub_1DF555478(uint64_t a1)
{
  v2 = sub_1DF55570C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5554B4(uint64_t a1)
{
  v2 = sub_1DF55570C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreTelephonyDiagnostic.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386B8, &qword_1DF56E230);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55570C();
  sub_1DF5652A4();
  v12 = 0;
  type metadata accessor for CoreTelephonyDiagnostic.LastResponse(0);
  sub_1DF5557A0(&qword_1ED9548A8, type metadata accessor for CoreTelephonyDiagnostic.LastResponse, &unk_1DF56E450);
  sub_1DF565044();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for CoreTelephonyDiagnostic(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386C0, &qword_1DF56E238);
    sub_1DF555C14(&qword_1ED954688, &qword_1ED954810, &unk_1DF56E428, MEMORY[0x1E69E6300]);
    sub_1DF565074();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1DF55570C()
{
  result = qword_1ED9548C0;
  if (!qword_1ED9548C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9548C0);
  }

  return result;
}

uint64_t sub_1DF5557A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF555808(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CoreTelephonyDiagnostic.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386C8, &qword_1DF56E240);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386D0, &qword_1DF56E248);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for CoreTelephonyDiagnostic(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55570C();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v10;
  v13 = v12;
  v14 = v21;
  type metadata accessor for CoreTelephonyDiagnostic.LastResponse(0);
  v25 = 0;
  sub_1DF5557A0(&qword_1ED9548A0, type metadata accessor for CoreTelephonyDiagnostic.LastResponse, &unk_1DF56E400);
  v15 = v22;
  sub_1DF564FB4();
  sub_1DF555BA4(v6, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386C0, &qword_1DF56E238);
  v24 = 1;
  sub_1DF555C14(&qword_1ED954680, &qword_1ED954808, &unk_1DF56E3D8, MEMORY[0x1E69E6330]);
  sub_1DF564FE4();
  (*(v14 + 8))(v9, v15);
  v16 = v20;
  *(v13 + *(v19 + 20)) = v23;
  sub_1DF5561D4(v13, v16, type metadata accessor for CoreTelephonyDiagnostic);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DF55623C(v13, type metadata accessor for CoreTelephonyDiagnostic);
}

uint64_t sub_1DF555BA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386C8, &qword_1DF56E240);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DF555C14(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE386C0, &qword_1DF56E238);
    sub_1DF5557A0(a2, type metadata accessor for CoreTelephonyDiagnostic.SanitizedError, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF555CB0(uint64_t a1)
{
  *(a1 + 8) = sub_1DF5557A0(&qword_1ED954790, type metadata accessor for CoreTelephonyDiagnostic, &protocol conformance descriptor for CoreTelephonyDiagnostic);
  result = sub_1DF5557A0(&qword_1ED954798, type metadata accessor for CoreTelephonyDiagnostic, &protocol conformance descriptor for CoreTelephonyDiagnostic);
  *(a1 + 16) = result;
  return result;
}

void sub_1DF555D8C(uint64_t a1)
{
  sub_1DF555E70(319, &qword_1ED954888, type metadata accessor for CoreTelephonyDiagnostic.LastResponse, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1DF555E70(319, &qword_1ED954690, type metadata accessor for CoreTelephonyDiagnostic.SanitizedError, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DF555E70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DF555EFC(uint64_t a1)
{
  result = sub_1DF564494();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DF555FA0(uint64_t a1)
{
  result = sub_1DF564494();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DF556028()
{
  result = qword_1ECE386D8;
  if (!qword_1ECE386D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE386D8);
  }

  return result;
}

unint64_t sub_1DF556080()
{
  result = qword_1ED9548B0;
  if (!qword_1ED9548B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9548B0);
  }

  return result;
}

unint64_t sub_1DF5560D8()
{
  result = qword_1ED9548B8;
  if (!qword_1ED9548B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9548B8);
  }

  return result;
}

unint64_t sub_1DF55612C()
{
  result = qword_1ECE37640;
  if (!qword_1ECE37640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37640);
  }

  return result;
}

unint64_t sub_1DF556180()
{
  result = qword_1ED954828[0];
  if (!qword_1ED954828[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED954828);
  }

  return result;
}

uint64_t sub_1DF5561D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF55623C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DF55629C(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386C8, &qword_1DF56E240);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v19 - v3;
  v5 = type metadata accessor for CoreTelephonyDiagnostic(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B40, &qword_1DF567E88);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v19 - v13;
  sub_1DF4B578C(4u);
  sub_1DF564474();
  Response = type metadata accessor for CoreTelephonyDiagnostic.LastResponse(0);
  v4[*(Response + 20)] = a1 & 1;
  (*(*(Response - 8) + 56))(v4, 0, 1, Response);
  sub_1DF47E4CC(v14, v12, &qword_1ECE37B40, &qword_1DF567E88);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {
    sub_1DF47E5B4(v12, &qword_1ECE37B40, &qword_1DF567E88);
    v16 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v16 = *&v12[*(v5 + 20)];

    sub_1DF55623C(v12, type metadata accessor for CoreTelephonyDiagnostic);
  }

  sub_1DF555BA4(v4, v8);
  *&v8[*(v5 + 20)] = v16;
  v20[0] = 4;
  v19[3] = v5;
  v19[4] = sub_1DF5557A0(&qword_1ED954790, type metadata accessor for CoreTelephonyDiagnostic, &protocol conformance descriptor for CoreTelephonyDiagnostic);
  v19[5] = sub_1DF5557A0(&qword_1ED954798, type metadata accessor for CoreTelephonyDiagnostic, &protocol conformance descriptor for CoreTelephonyDiagnostic);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  sub_1DF5561D4(v8, boxed_opaque_existential_1, type metadata accessor for CoreTelephonyDiagnostic);
  sub_1DF55D5F0(v20, v19);
  sub_1DF55623C(v8, type metadata accessor for CoreTelephonyDiagnostic);
  sub_1DF47E5B4(v14, &qword_1ECE37B40, &qword_1DF567E88);
  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t sub_1DF556638(uint64_t a1)
{
  v54 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE386C8, &qword_1DF56E240);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v46 - v2;
  v4 = type metadata accessor for CoreTelephonyDiagnostic(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CoreTelephonyDiagnostic.SanitizedError(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37B40, &qword_1DF567E88);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v46 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v46 - v19;
  result = os_variant_has_internal_ui();
  if (result)
  {
    v53 = v3;
    sub_1DF4B578C(4u);
    v51 = 0;
    sub_1DF47E4CC(v20, v18, &qword_1ECE37B40, &qword_1DF567E88);
    v22 = *(v5 + 48);
    v50 = v5 + 48;
    v47 = v22;
    v23 = v22(v18, 1, v4);
    v52 = v20;
    v49 = v9;
    v48 = v7;
    if (v23 == 1)
    {
      sub_1DF47E5B4(v18, &qword_1ECE37B40, &qword_1DF567E88);
      v24 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v24 = *&v18[*(v4 + 20)];

      sub_1DF55623C(v18, type metadata accessor for CoreTelephonyDiagnostic);
    }

    sub_1DF564474();
    swift_getErrorValue();
    v25 = sub_1DF49A0C0(v57, v58);
    v26 = [v25 domain];

    v27 = sub_1DF564944();
    v29 = v28;

    swift_getErrorValue();
    v30 = sub_1DF5651B4();
    v31 = &v11[*(v8 + 20)];
    *v31 = v27;
    v31[1] = v29;
    v32 = &v11[*(v8 + 24)];
    *v32 = v30;
    v32[1] = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_1DF4A9EE0(0, v24[2] + 1, 1, v24);
    }

    v35 = v24[2];
    v34 = v24[3];
    v36 = v35 + 1;
    v37 = v48;
    v38 = v52;
    if (v35 >= v34 >> 1)
    {
      v24 = sub_1DF4A9EE0((v34 > 1), v35 + 1, 1, v24);
    }

    v39 = v53;
    v24[2] = v36;
    v40 = v24 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    sub_1DF556C94(v11, v40 + *(v49 + 72) * v35);
    if (v35 >= 5)
    {
      sub_1DF4B6AF8(v24, v40, v35 - 4, (2 * v36) | 1);
      v45 = v44;

      v24 = v45;
    }

    sub_1DF47E4CC(v38, v15, &qword_1ECE37B40, &qword_1DF567E88);
    if (v47(v15, 1, v4) == 1)
    {
      sub_1DF47E5B4(v15, &qword_1ECE37B40, &qword_1DF567E88);
      Response = type metadata accessor for CoreTelephonyDiagnostic.LastResponse(0);
      (*(*(Response - 8) + 56))(v39, 1, 1, Response);
    }

    else
    {
      sub_1DF47E4CC(v15, v39, &qword_1ECE386C8, &qword_1DF56E240);
      sub_1DF55623C(v15, type metadata accessor for CoreTelephonyDiagnostic);
    }

    sub_1DF555BA4(v39, v37);
    *(v37 + *(v4 + 20)) = v24;
    v56 = 4;
    v55[3] = v4;
    v55[4] = sub_1DF5557A0(&qword_1ED954790, type metadata accessor for CoreTelephonyDiagnostic, &protocol conformance descriptor for CoreTelephonyDiagnostic);
    v55[5] = sub_1DF5557A0(&qword_1ED954798, type metadata accessor for CoreTelephonyDiagnostic, &protocol conformance descriptor for CoreTelephonyDiagnostic);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
    sub_1DF5561D4(v37, boxed_opaque_existential_1, type metadata accessor for CoreTelephonyDiagnostic);
    v43 = v51;
    sub_1DF55D5F0(&v56, v55);
    if (v43)
    {
    }

    sub_1DF55623C(v37, type metadata accessor for CoreTelephonyDiagnostic);
    sub_1DF47E5B4(v38, &qword_1ECE37B40, &qword_1DF567E88);
    return __swift_destroy_boxed_opaque_existential_0(v55);
  }

  return result;
}

uint64_t sub_1DF556C94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreTelephonyDiagnostic.SanitizedError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DF556D1C()
{
  result = qword_1ECE38700;
  if (!qword_1ECE38700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38700);
  }

  return result;
}

unint64_t sub_1DF556D74()
{
  result = qword_1ECE38708;
  if (!qword_1ECE38708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38708);
  }

  return result;
}

unint64_t sub_1DF556DCC()
{
  result = qword_1ED954818;
  if (!qword_1ED954818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954818);
  }

  return result;
}

unint64_t sub_1DF556E24()
{
  result = qword_1ED954820;
  if (!qword_1ED954820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954820);
  }

  return result;
}

unint64_t sub_1DF556E7C()
{
  result = qword_1ECE37630;
  if (!qword_1ECE37630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37630);
  }

  return result;
}

unint64_t sub_1DF556ED4()
{
  result = qword_1ECE37638;
  if (!qword_1ECE37638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37638);
  }

  return result;
}

uint64_t sub_1DF556F28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DF5753D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF5650D4();

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

uint64_t sub_1DF557058(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_1DF564494();
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x1E69E7CC0];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DF4BCE30(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1DF4BCE30((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_1DF557328(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1DF4BCB24(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1DF4BCB24((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_1DF5574A0()
{
  v1 = v0;
  v2 = type metadata accessor for ExcessiveRequestDetector(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DF564534();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DF564544();
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v49 - v13;
  v15 = sub_1DF564494();
  v16 = *(v15 - 8);
  v55 = v15;
  v56 = v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v57 = &v49 - v20;
  if (*(v1 + v2[9]) == 1)
  {
    v51 = v9;
    v53 = v4;
    if (qword_1ED956018 != -1)
    {
      swift_once();
    }

    v21 = sub_1DF5647B4();
    v52 = __swift_project_value_buffer(v21, qword_1ED956020);
    v22 = sub_1DF564794();
    v23 = sub_1DF564C14();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v50 = v2;
      v25 = v1;
      v26 = v24;
      *v24 = 0;
      _os_log_impl(&dword_1DF47C000, v22, v23, "Checking for excessive /features requests", v24, 2u);
      v27 = v26;
      v1 = v25;
      v2 = v50;
      MEMORY[0x1E12D75F0](v27, -1, -1);
    }

    sub_1DF564524();
    (*(v6 + 104))(v8, *MEMORY[0x1E6969A48], v5);
    sub_1DF564514();
    (*(v6 + 8))(v8, v5);
    (*(v54 + 8))(v11, v51);
    v29 = v55;
    v28 = v56;
    if ((*(v56 + 48))(v14, 1, v55) == 1)
    {
      sub_1DF4C46C4(v14);
      v30 = v57;
      sub_1DF5643D4();
    }

    else
    {
      v31 = *(v28 + 32);
      v31(v19, v14, v29);
      v30 = v57;
      v31(v57, v19, v29);
    }

    v32 = sub_1DF557C44();
    MEMORY[0x1EEE9AC00](v32);
    *(&v49 - 2) = v30;
    v34 = sub_1DF557058(sub_1DF557F9C, (&v49 - 4), v33);

    v35 = sub_1DF564794();
    v36 = sub_1DF564C14();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = *(v34 + 16);

      _os_log_impl(&dword_1DF47C000, v35, v36, "Found %ld recent requests.", v37, 0xCu);
      MEMORY[0x1E12D75F0](v37, -1, -1);
    }

    else
    {
    }

    v38 = v53;
    v39 = *(v34 + 16);
    if (v39 >= *(v1 + v2[6]))
    {
      sub_1DF557FCC(v1, v53, type metadata accessor for ExcessiveRequestDetector);

      v43 = sub_1DF564794();
      v44 = sub_1DF564C44();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 134349312;
        v46 = *(v34 + 16);

        *(v45 + 4) = v46;
        v28 = v56;

        *(v45 + 12) = 2050;
        v47 = *(v38 + v2[6]);
        sub_1DF558034(v38, type metadata accessor for ExcessiveRequestDetector);
        *(v45 + 14) = v47;
        _os_log_impl(&dword_1DF47C000, v43, v44, "Excessive requests detected (%{public}ld exceeded %{public}ld. Sending CA event.", v45, 0x16u);
        MEMORY[0x1E12D75F0](v45, -1, -1);
      }

      else
      {
        sub_1DF558034(v38, type metadata accessor for ExcessiveRequestDetector);

        swift_bridgeObjectRelease_n();
      }

      v30 = v57;
      sub_1DF4E1D9C(v39, *(v1 + v2[8]));
    }

    else
    {

      v40 = sub_1DF564794();
      v41 = sub_1DF564C14();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_1DF47C000, v40, v41, "No excessive requests detected. Not posting TTR.", v42, 2u);
        MEMORY[0x1E12D75F0](v42, -1, -1);
      }
    }

    (*(v28 + 8))(v30, v29);
  }

  return 0;
}

uint64_t type metadata accessor for ExcessiveRequestDetector(uint64_t a1)
{
  result = qword_1ECE37608;
  if (!qword_1ECE37608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DF557C14@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1DF557C44()
{
  v0 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DF564494();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DF4B5FB4(&v22);
  v14 = v22;
  if (!v22)
  {
    if (qword_1ED956018 != -1)
    {
      swift_once();
    }

    v8 = sub_1DF5647B4();
    __swift_project_value_buffer(v8, qword_1ED956020);
    v9 = sub_1DF564794();
    v10 = sub_1DF564C14();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DF47C000, v9, v10, "No diagnostics found, will return empty array.", v11, 2u);
      MEMORY[0x1E12D75F0](v11, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(v22 + 16);
  if (!v15)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v21 = v0;
  v22 = MEMORY[0x1E69E7CC0];
  sub_1DF4BCE30(0, v15, 0);
  v12 = v22;
  v16 = v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v20 = *(v1 + 72);
  v19[0] = v14;
  v19[1] = v5 + 32;
  do
  {
    sub_1DF557FCC(v16, v3, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    (*(v5 + 16))(v7, &v3[*(v21 + 20)], v4);
    sub_1DF558034(v3, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    v22 = v12;
    v18 = *(v12 + 16);
    v17 = *(v12 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1DF4BCE30((v17 > 1), v18 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v18 + 1;
    (*(v5 + 32))(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v18, v7, v4);
    v16 += v20;
    --v15;
  }

  while (v15);

  return v12;
}

uint64_t sub_1DF557FCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DF558034(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DF5580CC(uint64_t a1)
{
  result = sub_1DF4AD70C(319, &qword_1ECE37678, &protocol descriptor for RecentRequestFetcher);
  if (v2 <= 0x3F)
  {
    result = sub_1DF564494();
    if (v3 <= 0x3F)
    {
      result = sub_1DF4AD70C(319, &qword_1ECE376C0, &protocol descriptor for TapToRadarPosting);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1DF5581A8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38750, &qword_1DF56EA90);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF559E08();
  sub_1DF5652A4();
  v8[15] = 0;
  sub_1DF565054();
  if (!v1)
  {
    v8[14] = 1;
    sub_1DF565064();
    type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent.FeatureDiagnostic(0);
    v8[13] = 2;
    sub_1DF564494();
    sub_1DF5597C4(&qword_1ED955120, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DF565044();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DF5583C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38748, &qword_1DF56EA88);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent.FeatureDiagnostic(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF559E08();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v10;
  v13 = v18;
  v22 = 0;
  *v12 = sub_1DF564FC4();
  *(v12 + 1) = v14;
  v21 = 1;
  v12[16] = sub_1DF564FD4() & 1;
  sub_1DF564494();
  v20 = 2;
  sub_1DF5597C4(&qword_1ED955C88, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DF564FB4();
  (*(v13 + 8))(v9, v19);
  sub_1DF48C284(v6, &v12[*(v16 + 24)]);
  sub_1DF559E5C(v12, v17, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent.FeatureDiagnostic);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DF499688(v12, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent.FeatureDiagnostic);
}

uint64_t sub_1DF5586F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38738, &qword_1DF56EA78);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF559C70();
  sub_1DF5652A4();
  LOBYTE(v15[0]) = 0;
  sub_1DF565054();
  if (!v2)
  {
    v9 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
    LOBYTE(v15[0]) = 1;
    sub_1DF564494();
    sub_1DF5597C4(&qword_1ED955120, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DF565074();
    v10 = v3 + *(v9 + 24);
    v11 = *(v10 + 32);
    v12 = *(v10 + 40);
    v13 = *(v10 + 16);
    v15[0] = *v10;
    v15[1] = v13;
    v16 = v11;
    v17 = v12;
    v18 = 2;
    sub_1DF559CC4();
    sub_1DF565044();
    *&v15[0] = *(v3 + *(v9 + 28));
    v18 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38728, &unk_1DF56E8A0);
    sub_1DF559D18(&qword_1ECE37498, &qword_1ECE37570, &unk_1DF56E988, MEMORY[0x1E69E6300]);
    sub_1DF565044();
    LOBYTE(v15[0]) = 4;
    sub_1DF565074();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1DF5589D4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1DF564494();
  v42 = *(v3 - 8);
  v43 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38740, &qword_1DF56EA80);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF559C70();
  v46 = v11;
  v15 = v47;
  sub_1DF565284();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v39 = v6;
    v40 = v12;
    v47 = a1;
    LOBYTE(v48) = 0;
    v17 = v44;
    v16 = v45;
    v18 = v14;
    *v14 = sub_1DF564FC4();
    v14[1] = v19;
    v38 = v19;
    LOBYTE(v48) = 1;
    v20 = sub_1DF5597C4(&qword_1ED955C88, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v21 = v8;
    v22 = v43;
    sub_1DF564FE4();
    v23 = v17;
    v36 = v20;
    v24 = v40;
    v25 = v21;
    v26 = *(v42 + 32);
    v26(v18 + v40[5], v25, v22);
    v52 = 2;
    sub_1DF559DB4();
    v37 = 0;
    sub_1DF564FB4();
    v27 = v18;
    v28 = v50;
    v29 = v51;
    v30 = v18 + v24[6];
    v31 = v49;
    *v30 = v48;
    *(v30 + 1) = v31;
    *(v30 + 4) = v28;
    v30[40] = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38728, &unk_1DF56E8A0);
    v52 = 3;
    sub_1DF559D18(&qword_1ECE37490, &qword_1ECE37568, &unk_1DF56E9B0, MEMORY[0x1E69E6330]);
    sub_1DF564FB4();
    v35 = v26;
    *(v18 + v24[7]) = v48;
    LOBYTE(v48) = 4;
    v32 = v39;
    v33 = v43;
    sub_1DF564FE4();
    (*(v23 + 8))(v46, v16);
    v35(v27 + v24[8], v32, v33);
    sub_1DF559E5C(v27, v41, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
    __swift_destroy_boxed_opaque_existential_0(v47);
    sub_1DF499688(v27, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
  }
}

uint64_t sub_1DF558F98()
{
  v1 = 0x6573556E6163;
  if (*v0 != 1)
  {
    v1 = 7107700;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4965727574616566;
  }
}

uint64_t sub_1DF558FEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF55A54C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF559014(uint64_t a1)
{
  v2 = sub_1DF559E08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF559050(uint64_t a1)
{
  v2 = sub_1DF559E08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF5590BC()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x74736575716572;
  v4 = 0x7365727574616566;
  if (v1 != 3)
  {
    v4 = 0x6974656C706D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4472656767697274;
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

uint64_t sub_1DF559170@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DF55A668(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DF559198(uint64_t a1)
{
  v2 = sub_1DF559C70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF5591D4(uint64_t a1)
{
  v2 = sub_1DF559C70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF559254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E657665 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF5650D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF5592D8(uint64_t a1)
{
  v2 = sub_1DF5594FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF559314(uint64_t a1)
{
  v2 = sub_1DF5594FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureRequestFinishDiagnostic.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38710, &qword_1DF56E7A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5594FC();

  sub_1DF5652A4();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38718, &qword_1DF56E7A8);
  sub_1DF559728(&qword_1ECE37480, &qword_1ECE37538, &unk_1DF56EA00, MEMORY[0x1E69E6300]);
  sub_1DF565074();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DF5594FC()
{
  result = qword_1ECE37518;
  if (!qword_1ECE37518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37518);
  }

  return result;
}

uint64_t FeatureRequestFinishDiagnostic.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38720, qword_1DF56E7B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF5594FC();
  sub_1DF565284();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38718, &qword_1DF56E7A8);
    sub_1DF559728(&qword_1ECE37478, &qword_1ECE37530, &unk_1DF56E9D8, MEMORY[0x1E69E6330]);
    sub_1DF564FE4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DF559728(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE38718, &qword_1DF56E7A8);
    sub_1DF5597C4(a2, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DF5597C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DF55980C(uint64_t a1)
{
  *(a1 + 8) = sub_1DF4B9780();
  result = sub_1DF4B97D4();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DF55986C(uint64_t *a1, int a2)
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

uint64_t sub_1DF5598B4(uint64_t result, int a2, int a3)
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

void sub_1DF559928(uint64_t a1)
{
  sub_1DF564494();
  if (v1 <= 0x3F)
  {
    sub_1DF5599D8();
    if (v2 <= 0x3F)
    {
      sub_1DF559A28(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DF5599D8()
{
  if (!qword_1ED9546D8)
  {
    v0 = sub_1DF564D04();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9546D8);
    }
  }
}

void sub_1DF559A28(uint64_t a1)
{
  if (!qword_1ECE37488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE38728, &unk_1DF56E8A0);
    v1 = sub_1DF564D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECE37488);
    }
  }
}

void sub_1DF559AD4(uint64_t a1)
{
  sub_1DF4820E4(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1DF559B6C()
{
  result = qword_1ECE38730;
  if (!qword_1ECE38730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38730);
  }

  return result;
}

unint64_t sub_1DF559BC4()
{
  result = qword_1ECE37508;
  if (!qword_1ECE37508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37508);
  }

  return result;
}

unint64_t sub_1DF559C1C()
{
  result = qword_1ECE37510;
  if (!qword_1ECE37510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37510);
  }

  return result;
}

unint64_t sub_1DF559C70()
{
  result = qword_1ECE37550;
  if (!qword_1ECE37550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37550);
  }

  return result;
}

unint64_t sub_1DF559CC4()
{
  result = qword_1ED9546E0;
  if (!qword_1ED9546E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9546E0);
  }

  return result;
}

uint64_t sub_1DF559D18(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE38728, &unk_1DF56E8A0);
    sub_1DF5597C4(a2, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent.FeatureDiagnostic, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF559DB4()
{
  result = qword_1ECE375F8;
  if (!qword_1ECE375F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375F8);
  }

  return result;
}

unint64_t sub_1DF559E08()
{
  result = qword_1ECE37588;
  if (!qword_1ECE37588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37588);
  }

  return result;
}

uint64_t sub_1DF559E5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1DF559EC4()
{
  v0 = sub_1DF564494();
  v39 = *(v0 - 8);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v34 - v4;
  v6 = type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37A10, &qword_1DF567C00);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  sub_1DF4B5BBC(&v40);
  v36 = v18;
  v37 = v5;
  v38 = v3;
  v19 = v40;
  v20 = *(v40 + 16);
  if (v20)
  {
    v35 = v0;
    v21 = v40 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    while (v20 <= *(v19 + 16))
    {
      --v20;
      v22 = v21 + *(v7 + 72) * v20;
      sub_1DF559E5C(v22, v10, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      v23 = &v10[*(v6 + 24)];
      if (!*(v23 + 1) || (v23[40] & 1) != 0)
      {
        sub_1DF499688(v10, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
      }

      else
      {
        v24 = *(v23 + 4);
        sub_1DF499688(v10, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
        if (v24 == 200)
        {
          v25 = v12;
          sub_1DF559E5C(v22, v12, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);

          v26 = v39;
          v27 = &v12[*(v6 + 32)];
          v0 = v35;
          v28 = v36;
          (*(v39 + 16))(v36, v27, v35);
          sub_1DF499688(v25, type metadata accessor for FeatureRequestFinishDiagnostic.FinishEvent);
          v29 = 0;
          goto LABEL_13;
        }
      }

      if (!v20)
      {

        v29 = 1;
        v0 = v35;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {

    v29 = 1;
LABEL_12:
    v26 = v39;
    v28 = v36;
LABEL_13:
    (*(v26 + 56))(v28, v29, 1, v0);
    sub_1DF4952D8(v28, v16);
    v30 = (*(v26 + 48))(v16, 1, v0);
    v32 = v37;
    v31 = v38;
    if (v30 == 1)
    {
      sub_1DF4C46C4(v28);
      sub_1DF4C46C4(v16);
    }

    else
    {
      (*(v26 + 32))(v37, v16, v0);
      sub_1DF564474();
      sub_1DF5643C4();
      v33 = *(v26 + 8);
      v33(v31, v0);
      v33(v32, v0);
      sub_1DF4C46C4(v28);
    }
  }
}

unint64_t sub_1DF55A340()
{
  result = qword_1ECE38758;
  if (!qword_1ECE38758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38758);
  }

  return result;
}

unint64_t sub_1DF55A398()
{
  result = qword_1ECE38760;
  if (!qword_1ECE38760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38760);
  }

  return result;
}

unint64_t sub_1DF55A3F0()
{
  result = qword_1ECE37578;
  if (!qword_1ECE37578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37578);
  }

  return result;
}

unint64_t sub_1DF55A448()
{
  result = qword_1ECE37580;
  if (!qword_1ECE37580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37580);
  }

  return result;
}

unint64_t sub_1DF55A4A0()
{
  result = qword_1ECE37540;
  if (!qword_1ECE37540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37540);
  }

  return result;
}

unint64_t sub_1DF55A4F8()
{
  result = qword_1ECE37548;
  if (!qword_1ECE37548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37548);
  }

  return result;
}

uint64_t sub_1DF55A54C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4965727574616566 && a2 == 0xE900000000000044;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573556E6163 && a2 == 0xE600000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107700 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DF5650D4();

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

uint64_t sub_1DF55A668(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1DF5650D4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4472656767697274 && a2 == 0xEB00000000657461 || (sub_1DF5650D4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736575716572 && a2 == 0xE700000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000 || (sub_1DF5650D4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEE00657461446E6FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DF5650D4();

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

uint64_t sub_1DF55A82C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38788, &qword_1DF56EF18);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55B710();
  sub_1DF5652A4();
  v8[15] = 0;
  sub_1DF565054();
  if (!v1)
  {
    type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart(0);
    v8[14] = 1;
    sub_1DF564494();
    sub_1DF55B764(&qword_1ED955120, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1DF565074();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1DF55A9E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_1DF564494();
  v16 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38790, &qword_1DF56EF20);
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v15 - v6;
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart(0);
  MEMORY[0x1EEE9AC00](started);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55B710();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v15 = started;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_1DF564FC4();
  v10[1] = v13;
  v21 = 1;
  sub_1DF55B764(&qword_1ED955C88, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1DF564FE4();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_1DF55B7AC(v10, v17);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DF55B810(v10);
}

uint64_t sub_1DF55AD08()
{
  if (*v0)
  {
    return 0x4472656767697274;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1DF55AD50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (sub_1DF5650D4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4472656767697274 && a2 == 0xEB00000000657461)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DF5650D4();

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

uint64_t sub_1DF55AE38(uint64_t a1)
{
  v2 = sub_1DF55B710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF55AE74(uint64_t a1)
{
  v2 = sub_1DF55B710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF55AEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737472617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DF5650D4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DF55AF78(uint64_t a1)
{
  v2 = sub_1DF55B19C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF55AFB4(uint64_t a1)
{
  v2 = sub_1DF55B19C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeatureRequestStartDiagnostic.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38768, &qword_1DF56ECB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55B19C();

  sub_1DF5652A4();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38770, &qword_1DF56ECB8);
  sub_1DF55B3F4(&qword_1ECE374A8, &qword_1ECE375D8, &unk_1DF56EEA0, MEMORY[0x1E69E6300]);
  sub_1DF565074();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DF55B19C()
{
  result = qword_1ECE375B8;
  if (!qword_1ECE375B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375B8);
  }

  return result;
}

uint64_t type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart(uint64_t a1)
{
  result = qword_1ECE375C0;
  if (!qword_1ECE375C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FeatureRequestStartDiagnostic.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38778, &qword_1DF56ECC0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55B19C();
  sub_1DF565284();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE38770, &qword_1DF56ECB8);
    sub_1DF55B3F4(&qword_1ECE374A0, &qword_1ECE375D0, &unk_1DF56EE78, MEMORY[0x1E69E6330]);
    sub_1DF564FE4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DF55B3F4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE38770, &qword_1DF56ECB8);
    sub_1DF55B764(a2, type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DF55B490(uint64_t a1)
{
  *(a1 + 8) = sub_1DF4B9B20();
  result = sub_1DF55B4C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DF55B4C0()
{
  result = qword_1ECE375A0;
  if (!qword_1ECE375A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375A0);
  }

  return result;
}

uint64_t sub_1DF55B57C(uint64_t a1)
{
  result = sub_1DF564494();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DF55B60C()
{
  result = qword_1ECE38780;
  if (!qword_1ECE38780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38780);
  }

  return result;
}

unint64_t sub_1DF55B664()
{
  result = qword_1ECE375A8;
  if (!qword_1ECE375A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375A8);
  }

  return result;
}

unint64_t sub_1DF55B6BC()
{
  result = qword_1ECE375B0;
  if (!qword_1ECE375B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375B0);
  }

  return result;
}

unint64_t sub_1DF55B710()
{
  result = qword_1ECE375F0;
  if (!qword_1ECE375F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375F0);
  }

  return result;
}

uint64_t sub_1DF55B764(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DF55B7AC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_1DF55B810(uint64_t a1)
{
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_1DF55B86C(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DF565094();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart(0);
        v6 = sub_1DF564AD4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DF55BB98(v8, v9, a1, v4);
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
    return sub_1DF55B998(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DF55B998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart(0);
  v9 = MEMORY[0x1EEE9AC00](started);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v27 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v34 = v19;
    v28 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v32 = v21;
    v33 = a3;
    v30 = v24;
    v31 = v23;
    while (1)
    {
      sub_1DF55B7AC(v24, v18);
      sub_1DF55B7AC(v21, v14);
      v25 = sub_1DF564404();
      sub_1DF55B810(v14);
      result = sub_1DF55B810(v18);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v33 + 1;
        v21 = v32 + v28;
        v23 = v31 - 1;
        v24 = v30 + v28;
        if (v33 + 1 == v29)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v34)
      {
        break;
      }

      sub_1DF55CA9C(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1DF55CA9C(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1DF55BB98(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v102 = a1;
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart(0);
  v110 = *(started - 8);
  v10 = MEMORY[0x1EEE9AC00](started);
  v104 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v113 = &v99 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v99 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v19 = &v99 - v18;
  v112 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_1DF4B8128(a4);
    }

    v115 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v112)
      {
        v95 = *(result + 16 * a4);
        v96 = result;
        v97 = *(result + 16 * (a4 - 1) + 40);
        sub_1DF55C3F8(*v112 + *(v110 + 72) * v95, *v112 + *(v110 + 72) * *(result + 16 * (a4 - 1) + 32), *v112 + *(v110 + 72) * v97, v5);
        if (v6)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_1DF4B8128(v96);
        }

        if (a4 - 2 >= *(v96 + 2))
        {
          goto LABEL_123;
        }

        v98 = &v96[16 * a4];
        *v98 = v95;
        *(v98 + 1) = v97;
        v115 = v96;
        sub_1DF4B809C(a4 - 1);
        result = v115;
        a4 = *(v115 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E7CC0];
  v101 = a4;
  v114 = started;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v105 = v22;
    if (v24 >= v20)
    {
      v20 = v24;
    }

    else
    {
      v25 = *v112;
      v26 = v23;
      v27 = *(v110 + 72);
      v5 = *v112 + v27 * v24;
      sub_1DF55B7AC(v5, v19);
      sub_1DF55B7AC(v25 + v27 * v26, v16);
      LODWORD(v109) = sub_1DF564404();
      sub_1DF55B810(v16);
      result = sub_1DF55B810(v19);
      v100 = v26;
      v28 = v26 + 2;
      v111 = v27;
      v29 = v25 + v27 * v28;
      v30 = v109;
      while (v20 != v28)
      {
        sub_1DF55B7AC(v29, v19);
        sub_1DF55B7AC(v5, v16);
        v31 = sub_1DF564404() & 1;
        sub_1DF55B810(v16);
        result = sub_1DF55B810(v19);
        ++v28;
        v29 += v111;
        v5 += v111;
        if ((v30 & 1) != v31)
        {
          v32 = v30;
          v20 = v28 - 1;
          goto LABEL_11;
        }
      }

      v32 = v30;
LABEL_11:
      v23 = v100;
      a4 = v101;
      if (v32)
      {
        if (v20 < v100)
        {
          goto LABEL_126;
        }

        if (v100 < v20)
        {
          v99 = v6;
          v33 = v111 * (v20 - 1);
          v34 = v20 * v111;
          v109 = v20;
          v35 = v20;
          v36 = v100;
          v37 = v100 * v111;
          do
          {
            if (v36 != --v35)
            {
              v38 = *v112;
              if (!*v112)
              {
                goto LABEL_132;
              }

              v5 = v38 + v37;
              sub_1DF55CA9C(v38 + v37, v104);
              if (v37 < v33 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v33)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1DF55CA9C(v104, v38 + v33);
            }

            ++v36;
            v33 -= v111;
            v34 -= v111;
            v37 += v111;
          }

          while (v36 < v35);
          v6 = v99;
          v23 = v100;
          a4 = v101;
          v20 = v109;
        }
      }
    }

    v39 = v112[1];
    if (v20 < v39)
    {
      if (__OFSUB__(v20, v23))
      {
        goto LABEL_125;
      }

      if (v20 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_127;
        }

        if ((v23 + a4) >= v39)
        {
          v40 = v112[1];
        }

        else
        {
          v40 = v23 + a4;
        }

        if (v40 < v23)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v20 != v40)
        {
          break;
        }
      }
    }

    v41 = v20;
    if (v20 < v23)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v105;
    }

    else
    {
      result = sub_1DF4A9F30(0, *(v105 + 2) + 1, 1, v105);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v42 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v42 >> 1)
    {
      result = sub_1DF4A9F30((v42 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v43 = &v22[16 * a4];
    *(v43 + 4) = v23;
    *(v43 + 5) = v41;
    v44 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    v106 = v41;
    if (a4)
    {
      while (1)
      {
        v45 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v46 = *(v22 + 4);
          v47 = *(v22 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_54:
          if (v49)
          {
            goto LABEL_113;
          }

          v62 = &v22[16 * v5];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_116;
          }

          v68 = &v22[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_120;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v72 = &v22[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_68:
        if (v67)
        {
          goto LABEL_115;
        }

        v75 = &v22[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_118;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v45 - 1;
        if (v45 - 1 >= v5)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
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
          goto LABEL_128;
        }

        if (!*v112)
        {
          goto LABEL_131;
        }

        v83 = v22;
        v84 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v45 + 40];
        sub_1DF55C3F8(*v112 + *(v110 + 72) * v84, *v112 + *(v110 + 72) * *&v22[16 * v45 + 32], *v112 + *(v110 + 72) * v5, v44);
        if (v6)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1DF4B8128(v83);
        }

        if (a4 >= *(v83 + 2))
        {
          goto LABEL_110;
        }

        v85 = &v83[16 * a4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        v115 = v83;
        result = sub_1DF4B809C(v45);
        v22 = v115;
        v5 = *(v115 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v22[16 * v5 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_111;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_112;
      }

      v57 = &v22[16 * v5];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_114;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_117;
      }

      if (v61 >= v53)
      {
        v79 = &v22[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_121;
        }

        if (v48 < v82)
        {
          v45 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v20 = v112[1];
    v21 = v106;
    a4 = v101;
    if (v106 >= v20)
    {
      goto LABEL_96;
    }
  }

  v99 = v6;
  v100 = v23;
  a4 = *v112;
  v86 = *(v110 + 72);
  v87 = *v112 + v86 * (v20 - 1);
  v88 = v20;
  v89 = -v86;
  v90 = v23 - v88;
  v109 = v88;
  v103 = v86;
  v5 = a4 + v88 * v86;
  v106 = v40;
LABEL_86:
  v107 = v5;
  v108 = v90;
  v111 = v87;
  v91 = v87;
  while (1)
  {
    sub_1DF55B7AC(v5, v19);
    sub_1DF55B7AC(v91, v16);
    v92 = sub_1DF564404();
    sub_1DF55B810(v16);
    result = sub_1DF55B810(v19);
    if ((v92 & 1) == 0)
    {
LABEL_85:
      v87 = v111 + v103;
      v90 = v108 - 1;
      v41 = v106;
      v5 = v107 + v103;
      if (++v109 != v106)
      {
        goto LABEL_86;
      }

      v6 = v99;
      v23 = v100;
      if (v106 < v100)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v93 = v113;
    sub_1DF55CA9C(v5, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_1DF55CA9C(v93, v91);
    v91 += v89;
    v5 += v89;
    if (__CFADD__(v90++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_1DF55C3F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = a3;
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart(0);
  v8 = MEMORY[0x1EEE9AC00](started);
  v42 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v38 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v44 - a2;
  if (v44 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v47 = a1;
  v46 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38[1] = v4;
    v23 = a4 + v18;
    if (v18 < 1)
    {
      v26 = a4 + v18;
    }

    else
    {
      v24 = -v14;
      v25 = a4 + v18;
      v26 = v23;
      v40 = v24;
      v41 = a4;
      do
      {
        v38[0] = v26;
        v27 = a2;
        v28 = a2 + v24;
        while (1)
        {
          v30 = v44;
          if (v27 <= a1)
          {
            v47 = v27;
            v45 = v38[0];
            goto LABEL_59;
          }

          v39 = v26;
          v44 += v24;
          v31 = v25 + v24;
          sub_1DF55B7AC(v31, v12);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v42;
          sub_1DF55B7AC(v33, v42);
          v36 = sub_1DF564404();
          v37 = v35;
          v12 = v34;
          sub_1DF55B810(v37);
          sub_1DF55B810(v34);
          if (v36)
          {
            break;
          }

          v26 = v31;
          if (v30 < v25 || v44 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v31;
          v29 = v31 > v41;
          v24 = v40;
          if (!v29)
          {
            a2 = v27;
            goto LABEL_58;
          }
        }

        if (v30 < v27 || v44 >= v27)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v39;
          v24 = v40;
        }

        else
        {
          v26 = v39;
          v24 = v40;
          a2 = v32;
          if (v30 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v41);
    }

LABEL_58:
    v47 = a2;
    v45 = v26;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v45 = a4 + v17;
    if (v17 >= 1 && a2 < v44)
    {
      do
      {
        sub_1DF55B7AC(a2, v12);
        v21 = v42;
        sub_1DF55B7AC(a4, v42);
        v22 = sub_1DF564404();
        sub_1DF55B810(v21);
        sub_1DF55B810(v12);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v47 = a1;
      }

      while (a4 < v19 && a2 < v44);
    }
  }

LABEL_59:
  sub_1DF4B813C(&v47, &v46, &v45);
  return 1;
}

uint64_t sub_1DF55C880(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart(0);
  v5 = *(started - 8);
  MEMORY[0x1EEE9AC00](started);
  v7 = (v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DF4B5B78(v16);
  if (v16[0])
  {
    v8 = v16[0];
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  sub_1DF564474();
  *v7 = a1;
  v7[1] = a2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1DF4A9F08(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1DF4A9F08((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v11 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  sub_1DF55CA9C(v7, v11 + *(v5 + 72) * v10);
  v16[0] = v11;
  v16[1] = v10 + 1;
  sub_1DF55B86C(v16);
  v12 = v8[2];
  if (v12 >= 0x65)
  {
    sub_1DF4B6C98(v8, v11, v12 - 100, (2 * v12) | 1);
    v15 = v14;

    v8 = v15;
  }

  v17[0] = 0;
  v16[3] = &type metadata for FeatureRequestStartDiagnostic;
  v16[4] = sub_1DF4B9B20();
  v16[5] = sub_1DF55B4C0();
  v16[0] = v8;
  sub_1DF55D5F0(v17, v16);
  return __swift_destroy_boxed_opaque_existential_0(v16);
}

uint64_t sub_1DF55CA9C(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for FeatureRequestStartDiagnostic.FeatureRequestStart(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

unint64_t sub_1DF55CB14()
{
  result = qword_1ECE38798;
  if (!qword_1ECE38798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE38798);
  }

  return result;
}

unint64_t sub_1DF55CB6C()
{
  result = qword_1ECE375E0;
  if (!qword_1ECE375E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375E0);
  }

  return result;
}

unint64_t sub_1DF55CBC4()
{
  result = qword_1ECE375E8;
  if (!qword_1ECE375E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE375E8);
  }

  return result;
}

void static FrameworkDiagnostics.fetchDiagnostic<A>(forKey:)(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v23 = a3;
  v4 = sub_1DF564104();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v9 = sub_1DF564914();
  v10 = [v8 initWithSuiteName_];

  if (v10)
  {

    v11 = sub_1DF564914();

    v12 = [v10 dataForKey_];

    if (v12)
    {
      v13 = sub_1DF564374();
      v15 = v14;

      sub_1DF564144();
      swift_allocObject();
      sub_1DF564134();
      (*(v5 + 104))(v7, *MEMORY[0x1E6967F30], v4);
      sub_1DF564114();
      sub_1DF564124();

      sub_1DF48C308(v13, v15);
    }

    else
    {
      sub_1DF4B9828();
      swift_allocError();
      *v21 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1ED9550D0 != -1)
    {
      swift_once();
    }

    v16 = sub_1DF5647B4();
    __swift_project_value_buffer(v16, qword_1ED9550D8);
    v17 = sub_1DF564794();
    v18 = sub_1DF564C34();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DF47C000, v17, v18, "Failed to initialize diagnostics default. Diagnostics can not be saved.", v19, 2u);
      MEMORY[0x1E12D75F0](v19, -1, -1);
    }

    sub_1DF4B9828();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
  }
}

CloudSubscriptionFeatures::FrameworkDiagnostics::DiagnosticKey_optional __swiftcall FrameworkDiagnostics.DiagnosticKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DF564F54();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FrameworkDiagnostics.DiagnosticKey.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x5265727574616566;
  v3 = 0x74657373416D6661;
  v4 = 0x74657373416D6461;
  if (v1 != 3)
  {
    v4 = 0x656C655465726F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
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

uint64_t sub_1DF55D11C()
{
  sub_1DF565234();
  sub_1DF5649E4();

  return sub_1DF565264();
}

uint64_t sub_1DF55D228(uint64_t a1)
{
  sub_1DF5649E4();
}

uint64_t sub_1DF55D320(uint64_t a1)
{
  sub_1DF565234();
  sub_1DF5649E4();

  return sub_1DF565264();
}

void sub_1DF55D434(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00747365757165;
  v4 = 0x5265727574616566;
  v5 = 0x74657373416D6661;
  v6 = 0xE900000000000073;
  v7 = 0x74657373416D6461;
  v8 = 0xE900000000000073;
  if (v2 != 3)
  {
    v7 = 0x656C655465726F63;
    v8 = 0xED0000796E6F6870;
  }

  if (v2 != 2)
  {
    v5 = v7;
    v6 = v8;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001DF570B60;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1DF55D500()
{
  result = qword_1ECE387A0;
  if (!qword_1ECE387A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE387A0);
  }

  return result;
}

unint64_t sub_1DF55D59C()
{
  result = qword_1ECE387A8;
  if (!qword_1ECE387A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE387A8);
  }

  return result;
}

uint64_t sub_1DF55D5F0(unsigned __int8 *a1, void *a2)
{
  v50 = a2;
  v49 = sub_1DF564184();
  v4 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DF564164();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = *a1;
  v9 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v10 = sub_1DF564914();
  v11 = [v9 initWithSuiteName_];

  if (v11)
  {
    v48 = v8;

    if (qword_1ED9550D0 != -1)
    {
      swift_once();
    }

    v47 = v2;
    v12 = sub_1DF5647B4();
    v45 = __swift_project_value_buffer(v12, qword_1ED9550D8);
    v13 = sub_1DF564794();
    v14 = sub_1DF564C44();
    if (os_log_type_enabled(v13, v14))
    {
      v46 = v11;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v51 = v16;
      *v15 = 136315138;
      v17 = 0xEE00747365757165;
      v18 = 0x74657373416D6661;
      v19 = 0xE900000000000073;
      v20 = 0x74657373416D6461;
      v21 = 0xE900000000000073;
      if (v48 != 3)
      {
        v20 = 0x656C655465726F63;
        v21 = 0xED0000796E6F6870;
      }

      if (v48 != 2)
      {
        v18 = v20;
        v19 = v21;
      }

      if (v48)
      {
        v22 = 0x5265727574616566;
      }

      else
      {
        v22 = 0xD000000000000013;
      }

      if (!v48)
      {
        v17 = 0x80000001DF570B60;
      }

      if (v48 <= 1)
      {
        v23 = v22;
      }

      else
      {
        v23 = v18;
      }

      if (v48 <= 1)
      {
        v24 = v17;
      }

      else
      {
        v24 = v19;
      }

      v25 = sub_1DF47EF6C(v23, v24, &v51);

      *(v15 + 4) = v25;
      _os_log_impl(&dword_1DF47C000, v13, v14, "Attempting to save diagnostics for %s to user defaults.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1E12D75F0](v16, -1, -1);
      MEMORY[0x1E12D75F0](v15, -1, -1);

      v11 = v46;
    }

    else
    {
    }

    sub_1DF5641C4();
    swift_allocObject();
    sub_1DF5641B4();
    sub_1DF564154();
    sub_1DF564174();
    (*(v4 + 104))(v6, *MEMORY[0x1E6967FC8], v49);
    sub_1DF564194();
    __swift_project_boxed_opaque_existential_0(v50, v50[3]);
    v32 = v47;
    v33 = sub_1DF5641A4();
    if (v32)
    {
    }

    v49 = v33;
    v50 = v34;
    v35 = sub_1DF564354();
    v36 = sub_1DF564914();

    [v11 setObject:v35 forKey:v36];

    v37 = sub_1DF564794();
    v38 = v11;
    v39 = sub_1DF564C44();
    if (!os_log_type_enabled(v37, v39))
    {
      sub_1DF48C308(v49, v50);
    }

    v46 = v38;
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51 = v41;
    *v40 = 136315138;
    if (v48 <= 1)
    {
      if (v48)
      {
        v42 = 0x5265727574616566;
      }

      else
      {
        v42 = 0xD000000000000013;
      }

      if (v48)
      {
        v43 = 0xEE00747365757165;
      }

      else
      {
        v43 = 0x80000001DF570B60;
      }

      goto LABEL_44;
    }

    if (v48 == 2)
    {
      v42 = 0x74657373416D6661;
    }

    else
    {
      if (v48 != 3)
      {
        v42 = 0x656C655465726F63;
        v43 = 0xED0000796E6F6870;
        goto LABEL_44;
      }

      v42 = 0x74657373416D6461;
    }

    v43 = 0xE900000000000073;
LABEL_44:
    v44 = sub_1DF47EF6C(v42, v43, &v51);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_1DF47C000, v37, v39, "Saved diagnostics for %s to user defaults.", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x1E12D75F0](v41, -1, -1);
    MEMORY[0x1E12D75F0](v40, -1, -1);
    sub_1DF48C308(v49, v50);
  }

  if (qword_1ED9550D0 != -1)
  {
    swift_once();
  }

  v26 = sub_1DF5647B4();
  __swift_project_value_buffer(v26, qword_1ED9550D8);
  v27 = sub_1DF564794();
  v28 = sub_1DF564C34();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1DF47C000, v27, v28, "Failed to initialize diagnostics defaults. Diagnostics can not be saved.", v29, 2u);
    MEMORY[0x1E12D75F0](v29, -1, -1);
  }

  sub_1DF4B9828();
  swift_allocError();
  *v30 = 0;
  return swift_willThrow();
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

uint64_t sub_1DF55DD60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1DF55DDA8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1DF55DE04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE387D0, &qword_1DF56F498);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55EB4C();
  sub_1DF5652A4();
  v14 = 0;
  sub_1DF565054();
  if (!v5)
  {
    v13 = 1;
    sub_1DF565054();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1DF55DF98(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE387B8, &qword_1DF56F2D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55E928();
  sub_1DF5652A4();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1DF55E9D0();
  sub_1DF565074();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_1DF565034();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DF55E164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000018 && 0x80000001DF575410 == a2 || (sub_1DF5650D4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DF575430 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DF5650D4();

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

uint64_t sub_1DF55E24C(uint64_t a1)
{
  v2 = sub_1DF55EB4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF55E288(uint64_t a1)
{
  v2 = sub_1DF55EB4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DF55E2C4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DF55E524(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1DF55E314()
{
  if (*v0)
  {
    return 0x7461745370747468;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1DF55E360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001DF5753F0 == a2 || (sub_1DF5650D4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7461745370747468 && a2 == 0xEE0065646F437375)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DF5650D4();

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

uint64_t sub_1DF55E450(uint64_t a1)
{
  v2 = sub_1DF55E928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DF55E48C(uint64_t a1)
{
  v2 = sub_1DF55E928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1DF55E4C8@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1DF55E708(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1DF55E524(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE387C8, &qword_1DF56F490);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55EB4C();
  sub_1DF565284();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_1DF564FC4();
    v10 = 1;
    sub_1DF564FC4();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

uint64_t sub_1DF55E708@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE387B0, &qword_1DF56F2D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1DF55E928();
  sub_1DF565284();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = 0;
  sub_1DF55E97C();
  sub_1DF564FE4();
  v17 = v19;
  v18 = v20;
  v9 = v22;
  v16 = v21;
  LOBYTE(v19) = 1;
  v10 = sub_1DF564FA4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v14 = v18;
  *a2 = v17;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12 & 1;
  return result;
}

unint64_t sub_1DF55E928()
{
  result = qword_1ED954718[0];
  if (!qword_1ED954718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED954718);
  }

  return result;
}

unint64_t sub_1DF55E97C()
{
  result = qword_1ECE37600;
  if (!qword_1ECE37600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE37600);
  }

  return result;
}

unint64_t sub_1DF55E9D0()
{
  result = qword_1ED9546E8;
  if (!qword_1ED9546E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9546E8);
  }

  return result;
}

unint64_t sub_1DF55EA48()
{
  result = qword_1ECE387C0;
  if (!qword_1ECE387C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE387C0);
  }

  return result;
}

unint64_t sub_1DF55EAA0()
{
  result = qword_1ED954708;
  if (!qword_1ED954708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954708);
  }

  return result;
}

unint64_t sub_1DF55EAF8()
{
  result = qword_1ED954710;
  if (!qword_1ED954710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954710);
  }

  return result;
}

unint64_t sub_1DF55EB4C()
{
  result = qword_1ED954700;
  if (!qword_1ED954700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED954700);
  }

  return result;
}

unint64_t sub_1DF55EBB4()
{
  result = qword_1ECE387D8;
  if (!qword_1ECE387D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE387D8);
  }

  return result;
}

unint64_t sub_1DF55EC0C()
{
  result = qword_1ED9546F0;
  if (!qword_1ED9546F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9546F0);
  }

  return result;
}

unint64_t sub_1DF55EC64()
{
  result = qword_1ED9546F8;
  if (!qword_1ED9546F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9546F8);
  }

  return result;
}

Swift::Void __swiftcall TapToRadarPoster.postTTR(configuration:)(CloudSubscriptionFeatures::TapToRadarConfiguration *configuration)
{
  countAndFlagsBits = configuration->title._countAndFlagsBits;
  object = configuration->title._object;
  if (configuration->enabled)
  {
    v3 = objc_opt_self();
    v4 = sub_1DF564914();
    v5 = sub_1DF564914();
    oslog = sub_1DF564914();
    [v3 tapToRadar:v4 withMessage:v5 withReason:oslog];
  }

  else
  {
    if (qword_1ECE37858 != -1)
    {
      swift_once();
    }

    v6 = sub_1DF5647B4();
    __swift_project_value_buffer(v6, qword_1ECE37FD0);

    oslog = sub_1DF564794();
    v7 = sub_1DF564C44();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1DF47EF6C(countAndFlagsBits, object, &v11);
      _os_log_impl(&dword_1DF47C000, oslog, v7, "Attempted to post TTR %{public}s but it is disabled.", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x1E12D75F0](v9, -1, -1);
      MEMORY[0x1E12D75F0](v8, -1, -1);
    }
  }
}

void static TapToRadarConfiguration.noJWT(feature:)(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000014;
  *(a1 + 8) = 0x80000001DF571B70;
  *(a1 + 16) = 0xD00000000000003BLL;
  *(a1 + 24) = 0x80000001DF571B90;
  *(a1 + 32) = 0xD00000000000001CLL;
  *(a1 + 40) = 0x80000001DF571BD0;
  *(a1 + 48) = 1;
}

void static TapToRadarConfiguration.expiredJWT(feature:)(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000022;
  *(a1 + 8) = 0x80000001DF575450;
  *(a1 + 16) = 0xD000000000000039;
  *(a1 + 24) = 0x80000001DF575480;
  *(a1 + 32) = 0xD00000000000001DLL;
  *(a1 + 40) = 0x80000001DF5754C0;
  *(a1 + 48) = 0;
}

uint64_t static TapToRadarConfiguration.excessiveRequests(numberOfRequestsInLast24Hours:)@<X0>(uint64_t a1@<X8>)
{
  sub_1DF564DF4();
  MEMORY[0x1E12D62C0](0xD000000000000071, 0x80000001DF575510);
  v2 = sub_1DF5650A4();
  MEMORY[0x1E12D62C0](v2);

  result = MEMORY[0x1E12D62C0](46, 0xE100000000000000);
  *a1 = 0xD000000000000029;
  *(a1 + 8) = 0x80000001DF5754E0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0xD00000000000003ELL;
  *(a1 + 40) = 0x80000001DF575590;
  *(a1 + 48) = 0;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DF55F0B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1DF55F0F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DF55F158()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56B0F0;
  *(inited + 32) = 0x4364656863746566;
  *(inited + 40) = 0xEF61697265746972;
  *(inited + 48) = sub_1DF564AF4();
  *(inited + 56) = 0xD00000000000001ELL;
  *(inited + 64) = 0x80000001DF5755D0;
  *(inited + 72) = sub_1DF564B74();
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001DF5755F0;
  *(inited + 96) = sub_1DF564AF4();
  v3 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  if ((*(v1 + 16) & 1) == 0)
  {
    v4 = sub_1DF565214();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v4, 0x79616C6564, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  }

  if ((*(v1 + 40) & 1) == 0)
  {
    v6 = sub_1DF564B74();
    v7 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v6, 0xD000000000000023, 0x80000001DF575610, v7);
  }

  return v3;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF55F33C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[42])
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

uint64_t sub_1DF55F390(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DF55F3F0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DF55FA00(*a1);
  *a2 = result;
  return result;
}

id sub_1DF55F41C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56B0F0;
  *(inited + 32) = 0x656D6F6374756FLL;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_1DF564BD4();
  *(inited + 56) = 0xD00000000000001ELL;
  *(inited + 64) = 0x80000001DF5755D0;
  *(inited + 72) = sub_1DF564B74();
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001DF5755F0;
  *(inited + 96) = sub_1DF564AF4();
  v3 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  if (*(v1 + 1) != 2)
  {
    v4 = sub_1DF564AF4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = v3;
    sub_1DF502218(v4, 0x6C61727265666564, 0xEE00746C75736552, isUniquelyReferenced_nonNull_native);
  }

  if (*(v1 + 2) == 2)
  {
    if (*(v1 + 16))
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = sub_1DF564AF4();
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = v3;
    sub_1DF502218(v11, 0xD00000000000001FLL, 0x80000001DF575670, v12);
    if (*(v1 + 16))
    {
LABEL_5:
      if (!*(v1 + 24))
      {
        goto LABEL_6;
      }

LABEL_13:
      swift_getErrorValue();
      DynamicType = swift_getDynamicType();
      v26 = v27;
      sub_1DF4E50D4(v1, v24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE387E0, &qword_1DF56F710);
      sub_1DF564994();
      v15 = sub_1DF564914();

      v16 = swift_isUniquelyReferenced_nonNull_native();
      v24[0] = v3;
      sub_1DF502218(v15, 0x7245664F65707974, 0xEB00000000726F72, v16);
      v17 = v24[0];
      v18 = sub_1DF5642E4();
      result = [v18 domain];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v19 = result;
      v20 = swift_isUniquelyReferenced_nonNull_native();
      v24[0] = v17;
      sub_1DF502218(v19, 0x6D6F44726F727265, 0xEB000000006E6961, v20);
      v21 = v24[0];
      [v18 code];
      v22 = sub_1DF564BD4();
      v23 = swift_isUniquelyReferenced_nonNull_native();
      v24[0] = v21;
      sub_1DF502218(v22, 0x646F43726F727265, 0xE900000000000065, v23);
      sub_1DF54507C(v1);

      v3 = v24[0];
      if ((*(v1 + 40) & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    }
  }

  v13 = sub_1DF564B74();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v24[0] = v3;
  sub_1DF502218(v13, 0xD00000000000002BLL, 0x80000001DF575640, v14);
  if (*(v1 + 24))
  {
    goto LABEL_13;
  }

LABEL_6:
  if ((*(v1 + 40) & 1) == 0)
  {
LABEL_7:
    v6 = sub_1DF565214();
    v7 = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = v3;
    sub_1DF502218(v6, 0xD000000000000017, 0x80000001DF574C80, v7);
    v3 = v24[0];
  }

LABEL_8:
  if ((*(v1 + 64) & 1) == 0)
  {
    v8 = sub_1DF564B74();
    v9 = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = v3;
    sub_1DF502218(v8, 0xD000000000000023, 0x80000001DF575610, v9);
    return v24[0];
  }

  return v3;
}

__n128 __swift_memcpy66_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DF55F8C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 66))
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

uint64_t sub_1DF55F920(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1DF55F9AC()
{
  result = qword_1ECE387E8;
  if (!qword_1ECE387E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE387E8);
  }

  return result;
}

unint64_t sub_1DF55FA00(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_1DF55FA10(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 > 2)
  {
    if (a1 == 5)
    {
      v1 = 0xD000000000000017;
    }

    if (a1 == 4)
    {
      v1 = 0xD00000000000001BLL;
    }

    if (a1 == 3)
    {
      return 0xD000000000000018;
    }

    else
    {
      return v1;
    }
  }

  else
  {
    if (a1 == 2)
    {
      v1 = 0xD000000000000016;
    }

    if (a1 == 1)
    {
      v1 = 0xD000000000000017;
    }

    if (a1)
    {
      return v1;
    }

    else
    {
      return 0xD00000000000001BLL;
    }
  }
}

unint64_t sub_1DF55FB08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56CE10;
  strcpy((inited + 32), "activityState");
  *(inited + 46) = -4864;
  v2 = *v0;
  *(inited + 48) = sub_1DF564BD4();
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x80000001DF575690;
  sub_1DF55FA10(v2);
  v3 = sub_1DF564914();

  *(inited + 72) = v3;
  *(inited + 80) = 0x64656C646E6168;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_1DF564AF4();
  *(inited + 104) = 0xD000000000000026;
  *(inited + 112) = 0x80000001DF5756B0;
  *(inited + 120) = sub_1DF564B74();
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001DF5755F0;
  *(inited + 144) = sub_1DF564AF4();
  v4 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  if ((*(v0 + 32) & 1) == 0)
  {
    v5 = sub_1DF564B74();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v5, 0xD000000000000023, 0x80000001DF575610, isUniquelyReferenced_nonNull_native);
  }

  return v4;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DF55FD04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DF55FD58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DF55FDB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56B0F0;
  *(inited + 32) = 0x6C61767265746E69;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = sub_1DF565214();
  strcpy((inited + 56), "criteriaDelay");
  *(inited + 70) = -4864;
  *(inited + 72) = sub_1DF565214();
  strcpy((inited + 80), "criteriaGrace");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_1DF565214();
  v4 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  return v4;
}

uint64_t getEnumTagSinglePayload for DaemonControllerScheduleRebuildEvent(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DaemonControllerScheduleRebuildEvent(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

id sub_1DF55FF58(unsigned int a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF566E40;
  *(inited + 32) = 0x73736563637573;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_1DF564AF4();
  *(inited + 56) = 0x6C62617061437369;
  *(inited + 64) = 0xE900000000000065;
  *(inited + 72) = sub_1DF564AF4();
  v4 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  if (!a2)
  {
    return v4;
  }

  swift_getErrorValue();
  v5 = a2;
  sub_1DF5651B4();
  v6 = sub_1DF564914();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DF502218(v6, 0xD000000000000010, 0x80000001DF5757A0, isUniquelyReferenced_nonNull_native);
  swift_getErrorValue();
  v8 = sub_1DF49A0C0(v17, v18);
  result = [v8 domain];
  if (result)
  {
    v10 = result;

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v10, 0x6D6F44726F727265, 0xEB000000006E6961, v11);
    swift_getErrorValue();
    v12 = sub_1DF49A0C0(v15, v16);
    [v12 code];

    v13 = sub_1DF564BD4();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v13, 0x646F43726F727265, 0xE900000000000065, v14);

    return v4;
  }

  __break(1u);
  return result;
}

id sub_1DF5601F4()
{
  if (*(v0 + 1))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return sub_1DF55FF58(v1 | *v0, v0[1]);
}

uint64_t sub_1DF560214(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1DF560270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1DF5602EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF567CF0;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001DF572220;
  *(inited + 48) = sub_1DF564BD4();
  v1 = sub_1DF480040(inited);
  swift_setDeallocating();
  sub_1DF483E24(inited + 32);
  return v1;
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

uint64_t sub_1DF5603F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1DF560440(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

id sub_1DF5604A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56FA80;
  strcpy((inited + 32), "requestReason");
  *(inited + 46) = -4864;
  v3 = *(v0 + 8);
  *(inited + 48) = sub_1DF564BD4();
  *(inited + 56) = 0xD000000000000018;
  *(inited + 64) = 0x80000001DF575410;
  *(inited + 72) = sub_1DF564914();
  *(inited + 80) = 0xD000000000000018;
  *(inited + 88) = 0x80000001DF575430;
  *(inited + 96) = sub_1DF564914();
  *(inited + 104) = 0xD000000000000026;
  *(inited + 112) = 0x80000001DF5756B0;
  *(inited + 120) = sub_1DF564B74();
  v4 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  v5 = *(v1 + 72);
  if (v5)
  {
    v6 = v5;
    [v6 code];
    v7 = sub_1DF564BD4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v7, 0x646F43726F727265, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
    result = [v6 domain];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v10, 0x6D6F44726F727265, 0xEB000000006E6961, v11);
  }

  if (v3 >= 3)
  {
    v12 = sub_1DF564914();
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v12, 0xD000000000000012, 0x80000001DF5757C0, v13);
  }

  if ((*(v1 + 56) & 1) == 0)
  {
    v14 = sub_1DF564BD4();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v14, 0x65736E6F70736572, 0xEC00000065646F43, v15);
  }

  return v4;
}

unint64_t sub_1DF560774(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF567CF0;
  strcpy((inited + 32), "requestReason");
  *(inited + 46) = -4864;
  *(inited + 48) = sub_1DF564BD4();
  v4 = sub_1DF480040(inited);
  swift_setDeallocating();
  sub_1DF483E24(inited + 32);
  if (a2 >= 3)
  {
    v5 = sub_1DF564914();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v5, 0xD000000000000012, 0x80000001DF5757C0, isUniquelyReferenced_nonNull_native);
  }

  return v4;
}

uint64_t sub_1DF5608AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DF56090C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1DF560974(unsigned int a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56FA80;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001DF575820;
  *(inited + 48) = sub_1DF564AF4();
  *(inited + 56) = 0x756F636341736168;
  *(inited + 64) = 0xEA0000000000746ELL;
  *(inited + 72) = sub_1DF564AF4();
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001DF575840;
  *(inited + 96) = sub_1DF564AF4();
  *(inited + 104) = 0xD000000000000018;
  *(inited + 112) = 0x80000001DF575860;
  *(inited + 120) = sub_1DF564AF4();
  v2 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  return v2;
}

unint64_t sub_1DF560AE4()
{
  if (v0[3])
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (v0[2])
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (v0[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1DF560974(v3 | *v0 | v2 | v1);
}

uint64_t getEnumTagSinglePayload for GatewayRequestSigningEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
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

uint64_t storeEnumTagSinglePayload for GatewayRequestSigningEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t *sub_1DF560BD8@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DF560BF0(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56FC40;
  *(inited + 32) = 0x73736563637573;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_1DF564AF4();
  *(inited + 56) = 0x5365727574616566;
  *(inited + 64) = 0xEA00000000007465;
  *(inited + 72) = sub_1DF564BD4();
  *(inited + 80) = 0x6156726576726573;
  *(inited + 88) = 0xEF796C6E4F65756CLL;
  *(inited + 96) = sub_1DF564AF4();
  *(inited + 104) = 0x7373617079427369;
  *(inited + 112) = 0xEF64656C62616E45;
  *(inited + 120) = sub_1DF564AF4();
  *(inited + 128) = 0x7365636341736168;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = sub_1DF564AF4();
  *(inited + 152) = 0xD000000000000012;
  *(inited + 160) = 0x80000001DF575880;
  *(inited + 168) = sub_1DF564AF4();
  v2 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  return v2;
}

unint64_t sub_1DF560DC8()
{
  v1 = 0x10000000000;
  if (!v0[5])
  {
    v1 = 0;
  }

  v2 = 0x100000000;
  if (!v0[4])
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!v0[3])
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!v0[2])
  {
    v4 = 0;
  }

  return sub_1DF560BF0(v4 | *v0 | (v0[1] << 8) | v3 | v2 | v1);
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for GetAccessStatusEvent(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[6])
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

uint64_t storeEnumTagSinglePayload for GetAccessStatusEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1DF560EF8()
{
  result = qword_1ECE387F0;
  if (!qword_1ECE387F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE387F0);
  }

  return result;
}

unint64_t sub_1DF560F4C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56FD70;
  strcpy((inited + 32), "deviceEligible");
  *(inited + 47) = -18;
  *(inited + 48) = sub_1DF564AF4();
  strcpy((inited + 56), "receivedValue");
  *(inited + 70) = -4864;
  *(inited + 72) = sub_1DF564AF4();
  *(inited + 80) = 0x7365636341736168;
  *(inited + 88) = 0xE900000000000073;
  *(inited + 96) = sub_1DF564AF4();
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x80000001DF575880;
  *(inited + 120) = sub_1DF564AF4();
  *(inited + 128) = 0xD000000000000011;
  *(inited + 136) = 0x80000001DF5758A0;
  *(inited + 144) = sub_1DF564AF4();
  *(inited + 152) = 0xD000000000000010;
  *(inited + 160) = 0x80000001DF5758C0;
  *(inited + 168) = sub_1DF564AF4();
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x80000001DF5758E0;
  *(inited + 192) = sub_1DF564AF4();
  *(inited + 200) = 0x656372756F73;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 216) = sub_1DF564BD4();
  v4 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  return v4;
}

unint64_t sub_1DF561178(uint64_t a1, uint64_t a2)
{
  v3 = 256;
  if ((*(v2 + 1) & 1) == 0)
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFFFFFFFFFFFFFELL | *v2 & 1;
  v5 = 0x10000;
  if ((*(v2 + 2) & 1) == 0)
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if ((*(v2 + 3) & 1) == 0)
  {
    v6 = 0;
  }

  v7 = v4 | v5 | v6;
  v8 = 0x100000000;
  if ((*(v2 + 4) & 1) == 0)
  {
    v8 = 0;
  }

  v9 = 0x10000000000;
  if ((*(v2 + 5) & 1) == 0)
  {
    v9 = 0;
  }

  v10 = 0x1000000000000;
  if ((*(v2 + 6) & 1) == 0)
  {
    v10 = 0;
  }

  return sub_1DF560F4C(v7 | v8 | v9 | v10, a2, *(v2 + 16));
}

uint64_t sub_1DF5611FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1DF56125C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1DF5612EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1DF561334(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DF5613F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DF561440(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1DF5614A0@<X0>(void *result@<X0>, char *a2@<X8>)
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

id sub_1DF5614C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC0, &qword_1DF56A5C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DF56FA80;
  *(inited + 32) = 0x5474736575716572;
  *(inited + 40) = 0xEB00000000657079;
  *(inited + 48) = sub_1DF564BD4();
  *(inited + 56) = 0x73736563637573;
  *(inited + 64) = 0xE700000000000000;
  *(inited + 72) = sub_1DF564AF4();
  *(inited + 80) = 0xD000000000000012;
  *(inited + 88) = 0x80000001DF5757C0;
  *(inited + 96) = sub_1DF564914();
  *(inited + 104) = 0xD000000000000012;
  *(inited + 112) = 0x80000001DF575880;
  *(inited + 120) = sub_1DF564AF4();
  v2 = sub_1DF480040(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE37DC8, &unk_1DF5692B0);
  swift_arrayDestroy();
  v3 = *(v0 + 24);
  if (v3)
  {
    v4 = v3;
    sub_1DF5518E4();
    v5 = sub_1DF564BD4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v5, 0x64656E7275746572, 0xEE00737574617453, isUniquelyReferenced_nonNull_native);
  }

  if ((*(v0 + 40) & 1) == 0)
  {
    v7 = sub_1DF564BD4();
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v7, 0xD000000000000012, 0x80000001DF575920, v8);
  }

  if (*(v0 + 41) != 4)
  {
    v9 = sub_1DF564BD4();
    v10 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v9, 0x656372756F73, 0xE600000000000000, v10);
  }

  v11 = *(v0 + 48);
  if (!v11)
  {
    return v2;
  }

  swift_getErrorValue();
  v12 = v11;
  v13 = sub_1DF49A0C0(v22, v23);
  result = [v13 domain];
  if (result)
  {
    v15 = result;

    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v15, 0x6D6F44726F727265, 0xEB000000006E6961, v16);
    swift_getErrorValue();
    v17 = sub_1DF49A0C0(v20, v21);
    [v17 code];

    v18 = sub_1DF564BD4();
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DF502218(v18, 0x646F43726F727265, 0xE900000000000065, v19);

    return v2;
  }

  __break(1u);
  return result;
}

unint64_t sub_1DF561840()
{
  result = qword_1ECE387F8;
  if (!qword_1ECE387F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE387F8);
  }

  return result;
}

BOOL sub_1DF561928(uint64_t a1, uint64_t a2, unint64_t a3, char *a4)
{
  v49 = a2;
  v50 = a3;
  v6 = sub_1DF564704();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v52 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v44 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - v13;
  v51 = a4;
  sub_1DF564724();
  sub_1DF5646E4();
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v15 = sub_1DF5647B4();
  v16 = __swift_project_value_buffer(v15, qword_1ED956020);
  v47 = *(v7 + 16);
  v47(v12, v14, v6);
  v48 = v16;
  v17 = sub_1DF564794();
  v18 = sub_1DF564C04();
  v19 = os_log_type_enabled(v17, v18);
  v53 = v7;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v45 = v6;
    v21 = v20;
    v22 = swift_slowAlloc();
    v46 = a1;
    v23 = v22;
    v55 = v22;
    *v21 = 134349314;
    v24 = sub_1DF5646F4();
    v54 = *(v7 + 8);
    v54(v12, v45);
    *(v21 + 4) = v24;
    *(v21 + 12) = 2082;
    sub_1DF48818C(v46);
    v25 = sub_1DF564E04();
    v27 = sub_1DF47EF6C(v25, v26, &v55);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_1DF47C000, v17, v18, "%{public}llu [Start] [Sync] %{public}s", v21, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v28 = v23;
    a1 = v46;
    MEMORY[0x1E12D75F0](v28, -1, -1);
    v29 = v21;
    v6 = v45;
    MEMORY[0x1E12D75F0](v29, -1, -1);
  }

  else
  {
    v54 = *(v7 + 8);
    v54(v12, v6);
  }

  v30 = sub_1DF487DC4(a1, v14, v49, v50);
  LODWORD(v50) = MKBDeviceUnlockedSinceBoot();
  v49 = v30;
  sub_1DF48AD44(a1, v30, 0, 0);
  v31 = v52;
  v47(v52, v14, v6);
  v32 = sub_1DF564794();
  v33 = sub_1DF564C04();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v31;
    v35 = swift_slowAlloc();
    v36 = a1;
    v37 = swift_slowAlloc();
    v55 = v37;
    *v35 = 134349314;
    v38 = sub_1DF5646F4();
    v51 = v14;
    v54(v34, v6);
    *(v35 + 4) = v38;
    *(v35 + 12) = 2082;
    sub_1DF48818C(v36);
    v39 = sub_1DF564E04();
    v41 = sub_1DF47EF6C(v39, v40, &v55);

    *(v35 + 14) = v41;
    _os_log_impl(&dword_1DF47C000, v32, v33, "%{public}llu [Finish] [Sync] SUCCESS %{public}s", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v37);
    MEMORY[0x1E12D75F0](v37, -1, -1);
    MEMORY[0x1E12D75F0](v35, -1, -1);

    v54(v51, v6);
  }

  else
  {
    v42 = v54;
    v54(v31, v6);

    v42(v14, v6);
  }

  return v50 == 0;
}

uint64_t sub_1DF561DC0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v15[5] = a12;
  v15[6] = a14;
  v15[3] = a6;
  v15[4] = a8;
  v15[2] = a5;
  v19 = swift_task_alloc();
  v15[7] = v19;
  *v19 = v15;
  v19[1] = sub_1DF561EE8;

  return sub_1DF562C9C(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1DF561EE8(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;

  v7 = *(v5 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

uint64_t sub_1DF562090(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v57 = a6;
  v58 = a7;
  v55 = a3;
  v56 = a5;
  v54 = a2;
  v9 = sub_1DF564704();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v60 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v49 - v16;
  v59 = a4;
  sub_1DF564724();
  sub_1DF5646E4();
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v18 = sub_1DF5647B4();
  v19 = __swift_project_value_buffer(v18, qword_1ED956020);
  v52 = *(v10 + 16);
  v52(v15, v17, v9);
  v53 = v19;
  v20 = sub_1DF564794();
  v21 = sub_1DF564C04();
  v22 = os_log_type_enabled(v20, v21);
  v61 = v10;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v51 = a1;
    v24 = v23;
    v25 = swift_slowAlloc();
    v50 = v9;
    v26 = v25;
    v62 = v25;
    *v24 = 134349314;
    v27 = sub_1DF5646F4();
    v64 = *(v10 + 8);
    v64(v15, v50);
    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    sub_1DF48818C(v51);
    v28 = sub_1DF564E04();
    v30 = sub_1DF47EF6C(v28, v29, &v62);

    *(v24 + 14) = v30;
    _os_log_impl(&dword_1DF47C000, v20, v21, "%{public}llu [Start] [Sync] %{public}s", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    v31 = v26;
    v9 = v50;
    MEMORY[0x1E12D75F0](v31, -1, -1);
    v32 = v24;
    a1 = v51;
    MEMORY[0x1E12D75F0](v32, -1, -1);
  }

  else
  {
    v64 = *(v10 + 8);
    v64(v15, v9);
  }

  v33 = sub_1DF487DC4(a1, v17, v54, v55);
  __swift_project_boxed_opaque_existential_0((v56 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_deviceCapabilities), *(v56 + OBJC_IVAR____TtC25CloudSubscriptionFeatures21FeatureRequestHandler_deviceCapabilities + 24));
  v35 = v57;
  v34 = v58;
  LODWORD(v56) = sub_1DF4AABD8(v57, v58);
  v62 = 4023401;
  v63 = 0xE300000000000000;
  MEMORY[0x1E12D62C0](v35, v34);
  v58 = v33;
  sub_1DF48AD44(a1, v33, v62, v63);

  v36 = v60;
  v52(v60, v17, v9);
  v37 = sub_1DF564794();
  v38 = sub_1DF564C04();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = v36;
    v40 = swift_slowAlloc();
    v41 = a1;
    v42 = swift_slowAlloc();
    v62 = v42;
    *v40 = 134349314;
    v43 = sub_1DF5646F4();
    v59 = v17;
    v64(v39, v9);
    *(v40 + 4) = v43;
    *(v40 + 12) = 2082;
    sub_1DF48818C(v41);
    v44 = sub_1DF564E04();
    v46 = sub_1DF47EF6C(v44, v45, &v62);

    *(v40 + 14) = v46;
    _os_log_impl(&dword_1DF47C000, v37, v38, "%{public}llu [Finish] [Sync] SUCCESS %{public}s", v40, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x1E12D75F0](v42, -1, -1);
    MEMORY[0x1E12D75F0](v40, -1, -1);

    v64(v59, v9);
  }

  else
  {
    v47 = v64;
    v64(v36, v9);

    v47(v17, v9);
  }

  return v56 & 1;
}

uint64_t sub_1DF562588(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = a6;
  *(v6 + 56) = a3;
  *(v6 + 64) = a4;
  *(v6 + 48) = a2;
  *(v6 + 192) = a1;
  v7 = sub_1DF564704();
  *(v6 + 88) = v7;
  *(v6 + 96) = *(v7 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF56266C, 0, 0);
}

uint64_t sub_1DF56266C(uint64_t a1)
{
  v27 = v1;
  sub_1DF564724();
  sub_1DF5646E4();
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v6 = sub_1DF5647B4();
  *(v1 + 128) = __swift_project_value_buffer(v6, qword_1ED956020);
  v7 = *(v5 + 16);
  *(v1 + 136) = v7;
  *(v1 + 144) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v3, v4);
  v8 = sub_1DF564794();
  v9 = sub_1DF564C04();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v1 + 112);
  v12 = *(v1 + 88);
  v13 = *(v1 + 96);
  if (v10)
  {
    v24 = *(v1 + 192);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26 = v15;
    *v14 = 134349314;
    v16 = sub_1DF5646F4();
    v17 = *(v13 + 8);
    v17(v11, v12);
    *(v14 + 4) = v16;
    *(v14 + 12) = 2082;
    sub_1DF48818C(v24);
    v18 = sub_1DF564E04();
    v20 = sub_1DF47EF6C(v18, v19, &v26);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_1DF47C000, v8, v9, "%{public}llu [Start] [Async] %{public}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1E12D75F0](v15, -1, -1);
    MEMORY[0x1E12D75F0](v14, -1, -1);
  }

  else
  {
    v17 = *(v13 + 8);
    v17(*(v1 + 112), *(v1 + 88));
  }

  *(v1 + 152) = v17;
  v21 = *(v1 + 72);
  *(v1 + 160) = sub_1DF487DC4(*(v1 + 192), *(v1 + 120), *(v1 + 48), *(v1 + 56));
  v25 = (v21 + *v21);
  v22 = swift_task_alloc();
  *(v1 + 168) = v22;
  *v22 = v1;
  v22[1] = sub_1DF562944;

  return v25();
}

uint64_t sub_1DF562944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[22] = a2;
  v4[23] = a3;

  return MEMORY[0x1EEE6DFA0](sub_1DF562A4C, 0, 0);
}

uint64_t sub_1DF562A4C()
{
  v24 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 88);
  sub_1DF48AD44(*(v0 + 192), *(v0 + 160), *(v0 + 176), *(v0 + 184));

  v1(v3, v2, v4);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C04();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 152);
  v9 = *(v0 + 120);
  v10 = *(v0 + 104);
  v11 = *(v0 + 88);
  if (v7)
  {
    v21 = *(v0 + 192);
    v22 = *(v0 + 120);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 134349314;
    v14 = sub_1DF5646F4();
    v8(v10, v11);
    *(v12 + 4) = v14;
    *(v12 + 12) = 2082;
    sub_1DF48818C(v21);
    v15 = sub_1DF564E04();
    v17 = sub_1DF47EF6C(v15, v16, &v23);

    *(v12 + 14) = v17;
    _os_log_impl(&dword_1DF47C000, v5, v6, "%{public}llu [Finish] [Async] SUCCESS %{public}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x1E12D75F0](v13, -1, -1);
    MEMORY[0x1E12D75F0](v12, -1, -1);

    v8(v22, v11);
  }

  else
  {
    v8(*(v0 + 104), *(v0 + 88));

    v8(v9, v11);
  }

  v18 = *(v0 + 24);

  v19 = *(v0 + 8);

  return v19(v18);
}

uint64_t sub_1DF562C9C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v15;
  *(v8 + 96) = v13;
  *(v8 + 112) = v14;
  *(v8 + 80) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 24) = a2;
  *(v8 + 256) = a1;
  v9 = sub_1DF564704();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DF562DAC, 0, 0);
}

uint64_t sub_1DF562DAC(uint64_t a1)
{
  v34 = v1;
  sub_1DF564724();
  sub_1DF5646E4();
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 168);
  v3 = *(v1 + 176);
  v4 = *(v1 + 136);
  v5 = *(v1 + 144);
  v6 = sub_1DF5647B4();
  *(v1 + 184) = __swift_project_value_buffer(v6, qword_1ED956020);
  v7 = *(v5 + 16);
  *(v1 + 192) = v7;
  *(v1 + 200) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v3, v4);
  v8 = sub_1DF564794();
  v9 = sub_1DF564C04();
  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v1 + 168);
  v12 = *(v1 + 136);
  v13 = *(v1 + 144);
  if (v10)
  {
    v32 = *(v1 + 256);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 134349314;
    v16 = sub_1DF5646F4();
    v17 = *(v13 + 8);
    v17(v11, v12);
    *(v14 + 4) = v16;
    *(v14 + 12) = 2082;
    sub_1DF48818C(v32);
    v18 = sub_1DF564E04();
    v20 = sub_1DF47EF6C(v18, v19, &v33);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_1DF47C000, v8, v9, "%{public}llu [Start] [Async] %{public}s", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1E12D75F0](v15, -1, -1);
    MEMORY[0x1E12D75F0](v14, -1, -1);
  }

  else
  {
    v17 = *(v13 + 8);
    v17(*(v1 + 168), *(v1 + 136));
  }

  *(v1 + 208) = v17;
  *(v1 + 216) = sub_1DF487DC4(*(v1 + 256), *(v1 + 176), *(v1 + 24), *(v1 + 32));
  v21 = swift_task_alloc();
  *(v1 + 224) = v21;
  *v21 = v1;
  v21[1] = sub_1DF563054;
  v22 = *(v1 + 128);
  v23 = *(v1 + 104);
  v24 = *(v1 + 88);
  v25 = *(v1 + 96);
  v26 = *(v1 + 72);
  v27 = *(v1 + 80);
  v28 = *(v1 + 56);
  v29 = *(v1 + 64);
  v30 = *(v1 + 48);
  v37 = *(v1 + 120);
  v38 = v22;
  v36 = v23;

  return sub_1DF4CA1E8(v1 + 16, v30, v28, v29, v26, v27, v24, v25);
}

uint64_t sub_1DF563054(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 232) = v2;

  if (v2)
  {
    v7 = sub_1DF5633E8;
  }

  else
  {
    *(v6 + 240) = a2;
    *(v6 + 248) = a1;
    v7 = sub_1DF563188;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DF563188()
{
  v26 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v5 = *(v0 + 16);
  sub_1DF48AD44(*(v0 + 256), *(v0 + 216), *(v0 + 248), *(v0 + 240));

  v1(v3, v2, v4);
  v6 = sub_1DF564794();
  v7 = sub_1DF564C04();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 208);
  v10 = *(v0 + 176);
  v11 = *(v0 + 160);
  v12 = *(v0 + 136);
  if (v8)
  {
    v22 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v24 = v5;
    v25 = swift_slowAlloc();
    v14 = v25;
    *v13 = 134349314;
    v23 = v10;
    v15 = sub_1DF5646F4();
    v9(v11, v12);
    *(v13 + 4) = v15;
    *(v13 + 12) = 2082;
    sub_1DF48818C(v22);
    v16 = sub_1DF564E04();
    v18 = sub_1DF47EF6C(v16, v17, &v25);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1DF47C000, v6, v7, "%{public}llu [Finish] [Async] SUCCESS %{public}s", v13, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    v19 = v14;
    v5 = v24;
    MEMORY[0x1E12D75F0](v19, -1, -1);
    MEMORY[0x1E12D75F0](v13, -1, -1);

    v9(v23, v12);
  }

  else
  {
    v9(*(v0 + 160), *(v0 + 136));

    v9(v10, v12);
  }

  v20 = *(v0 + 8);

  return v20(v5);
}

uint64_t sub_1DF5633E8()
{
  v24 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  sub_1DF48AD44(*(v0 + 256), *(v0 + 216), 0, 0);
  v1(v3, v2, v4);
  v5 = sub_1DF564794();
  v6 = sub_1DF564C04();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 208);
  v9 = *(v0 + 152);
  v10 = *(v0 + 136);
  if (v7)
  {
    v22 = *(v0 + 256);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 134349314;
    v13 = sub_1DF5646F4();
    v8(v9, v10);
    *(v11 + 4) = v13;
    *(v11 + 12) = 2082;
    sub_1DF48818C(v22);
    v14 = sub_1DF564E04();
    v16 = sub_1DF47EF6C(v14, v15, &v23);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_1DF47C000, v5, v6, "%{public}llu [Finish] [Async] FAILURE %{public}s", v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x1E12D75F0](v12, -1, -1);
    MEMORY[0x1E12D75F0](v11, -1, -1);
  }

  else
  {
    v8(*(v0 + 152), *(v0 + 136));
  }

  v17 = *(v0 + 208);
  v18 = *(v0 + 176);
  v19 = *(v0 + 136);
  swift_willThrow();

  v17(v18, v19);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1DF563648(uint64_t *a1, int a2)
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

uint64_t sub_1DF563690(uint64_t result, int a2, int a3)
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

uint64_t sub_1DF5636DC(uint64_t a1, uint64_t (*a2)(void, void, void, void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35[3] = a4;
  v35[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (qword_1ED956018 != -1)
  {
    swift_once();
  }

  v10 = sub_1DF5647B4();
  __swift_project_value_buffer(v10, qword_1ED956020);
  sub_1DF47FCEC(v35, &v33);
  sub_1DF47FCEC(v35, v32);
  v11 = sub_1DF564794();
  v12 = sub_1DF564C14();
  if (os_log_type_enabled(v11, v12))
  {
    v30 = a2;
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v13 = 136315394;
    __swift_project_boxed_opaque_existential_0(&v33, v34);
    v14 = *(a5 + 8);
    v15 = v14(a4, a5);
    v17 = v16;
    __swift_destroy_boxed_opaque_existential_0(&v33);
    v18 = sub_1DF47EF6C(v15, v17, &v31);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    __swift_project_boxed_opaque_existential_0(v32, v32[3]);
    if ((*(a5 + 16))(a4, a5))
    {
      sub_1DF480144();
      v19 = sub_1DF564894();
      v21 = v20;
    }

    else
    {
      v21 = 0xE500000000000000;
      v19 = 0x3E6C696E3CLL;
    }

    __swift_destroy_boxed_opaque_existential_0(v32);
    v24 = sub_1DF47EF6C(v19, v21, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1DF47C000, v11, v12, "Sending message %s with body %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12D75F0](v29, -1, -1);
    MEMORY[0x1E12D75F0](v13, -1, -1);

    a2 = v30;
    v22 = v14(a4, a5);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&v33);
    __swift_destroy_boxed_opaque_existential_0(v32);
    v22 = (*(a5 + 8))(a4, a5);
  }

  v25 = v22;
  v26 = v23;
  sub_1DF47FCEC(v35, &v33);
  v27 = swift_allocObject();
  sub_1DF47E390(&v33, v27 + 16);
  LOBYTE(v25) = a2(v25, v26, sub_1DF4803C8, v27);

  __swift_destroy_boxed_opaque_existential_0(v35);
  return v25 & 1;
}