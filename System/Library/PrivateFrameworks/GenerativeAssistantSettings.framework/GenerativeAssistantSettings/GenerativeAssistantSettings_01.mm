unint64_t sub_2230B7390@<X0>(unint64_t *a1@<X8>)
{
  result = GenerativeAssistantSettingsUserDefaults.Key.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static GenerativeAssistantSettingsUserDefaults.set(_:forKey:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v8 = qword_280D39238;
  if (qword_280D39238)
  {
    sub_2230A2E80(a1, v31, &qword_27D0553D0, &qword_2230C4D28);
    v9 = v32;
    if (v32)
    {
      v10 = __swift_project_boxed_opaque_existential_0Tm(v31, v32);
      v11 = *(v9 - 8);
      MEMORY[0x28223BE20](v10);
      v13 = &v29[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v13);
      v14 = sub_2230C3FA4();
      (*(v11 + 8))(v13, v9);
      __swift_destroy_boxed_opaque_existential_0(v31);
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_2230C3D74();
    [v8 setObject:v14 forKey:v15];
    swift_unknownObjectRelease();
  }

  if (qword_280D39240)
  {

    sub_2230A4978(a1, a2, a3);
  }

  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v16 = sub_2230C38A4();
  __swift_project_value_buffer(v16, qword_280D39220);
  sub_2230A2E80(a1, v31, &qword_27D0553D0, &qword_2230C4D28);

  v17 = sub_2230C3884();
  v18 = sub_2230C3E94();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136446978;
    v29[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0556C0, &qword_2230C5E28);
    v21 = sub_2230C3DA4();
    v23 = sub_22309F9F4(v21, v22, &v30);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_22309F9F4(0x6F663A5F28746573, 0xEE00293A79654B72, &v30);
    *(v19 + 22) = 2082;
    *(v19 + 24) = sub_22309F9F4(a2, a3, &v30);
    *(v19 + 32) = 2082;
    sub_2230A2E80(v31, v29, &qword_27D0553D0, &qword_2230C4D28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D0, &qword_2230C4D28);
    v24 = sub_2230C3DA4();
    v26 = v25;
    sub_2230A2EE8(v31, &qword_27D0553D0, &qword_2230C4D28);
    v27 = sub_22309F9F4(v24, v26, &v30);

    *(v19 + 34) = v27;
    _os_log_impl(&dword_22309D000, v17, v18, "%{public}s - %{public}s -%{public}s set to %{public}s", v19, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DD5490](v20, -1, -1);
    MEMORY[0x223DD5490](v19, -1, -1);
  }

  else
  {

    sub_2230A2EE8(v31, &qword_27D0553D0, &qword_2230C4D28);
  }
}

void static GenerativeAssistantSettingsUserDefaults.syncSharedPreferences()()
{
  if (qword_280D38F60 != -1)
  {
    swift_once();
  }

  v0 = sub_2230C38A4();
  __swift_project_value_buffer(v0, qword_280D39220);
  v1 = sub_2230C3884();
  v2 = sub_2230C3EA4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22309D000, v1, v2, "GenerativeAssistantSettingsUserDefaults is syncing preferences to Cascade...", v3, 2u);
    MEMORY[0x223DD5490](v3, -1, -1);
  }

  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v4 = qword_280D39238;
  if (qword_280D39238)
  {
    v5 = sub_2230C3D74();
    LOBYTE(v4) = [v4 BOOLForKey_];
  }

  v10 = MEMORY[0x277D839B0];
  v9[0] = v4;
  static GenerativeAssistantSettingsUserDefaults.set(_:forKey:)(v9, 0x656C62616E457369, 0xE900000000000064);
  sub_2230A2EE8(v9, &qword_27D0553D0, &qword_2230C4D28);
  v6 = sub_2230C3884();
  v7 = sub_2230C3EA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22309D000, v6, v7, "GenerativeAssistantSettingsUserDefaults is done syncing preferences to Cascade.", v8, 2u);
    MEMORY[0x223DD5490](v8, -1, -1);
  }
}

void static GenerativeAssistantSettingsUserDefaults.setDeclineMediaQAExpiration(_:)()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C35B4();
    v2 = sub_2230C3D74();
    [v0 setObject:v1 forKey:v2];
  }
}

void static GenerativeAssistantSettingsUserDefaults.setDeclineKnowledgeFallbackExpiration(_:)()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C35B4();
    v2 = sub_2230C3D74();
    [v0 setObject:v1 forKey:v2];
  }
}

void static GenerativeAssistantSettingsUserDefaults.setDeclineComposeViaSiriExpiration(_:)()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C35B4();
    v2 = sub_2230C3D74();
    [v0 setObject:v1 forKey:v2];
  }
}

void static GenerativeAssistantSettingsUserDefaults.decrementDecline(for:expirationDate:)(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_2230BB728();
  if (v1 > 2)
  {
    return;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      _s27GenerativeAssistantSettings0abC12UserDefaultsC31decrementKnowledgeFallbackCountyyFZ_0();
      if (qword_280D38F68 != -1)
      {
        swift_once();
      }

      v2 = qword_280D39238;
      if (qword_280D39238)
      {
LABEL_15:
        v3 = sub_2230C35B4();
        v4 = sub_2230C3D74();
        [v2 setObject:v3 forKey:v4];
      }
    }

    else
    {
      _s27GenerativeAssistantSettings0abC12UserDefaultsC35decrementDeclineComposeViaSiriCountyyFZ_0();
      if (qword_280D38F68 != -1)
      {
        swift_once();
      }

      v2 = qword_280D39238;
      if (qword_280D39238)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    _s27GenerativeAssistantSettings0abC12UserDefaultsC28decrementDeclineMediaQACountyyFZ_0();
    if (qword_280D38F68 != -1)
    {
      swift_once();
    }

    v2 = qword_280D39238;
    if (qword_280D39238)
    {
      goto LABEL_15;
    }
  }
}

void static GenerativeAssistantSettingsUserDefaults.setDeclineMediaQACount(_:)(uint64_t a1)
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v2 = qword_280D39238;
  if (qword_280D39238)
  {
    v3 = sub_2230C3D74();
    [v2 setInteger:a1 forKey:v3];
  }
}

void static GenerativeAssistantSettingsUserDefaults.setDeclineKnowledgeFallbackCount(_:)(uint64_t a1)
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v2 = qword_280D39238;
  if (qword_280D39238)
  {
    v3 = sub_2230C3D74();
    [v2 setInteger:a1 forKey:v3];
  }
}

void static GenerativeAssistantSettingsUserDefaults.setDeclineComposeViaSiriCount(_:)(uint64_t a1)
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v2 = qword_280D39238;
  if (qword_280D39238)
  {
    v3 = sub_2230C3D74();
    [v2 setInteger:a1 forKey:v3];
  }
}

void static GenerativeAssistantSettingsUserDefaults.setTaperConfirmationDialog(_:)(char a1)
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v2 = qword_280D39238;
  if (qword_280D39238)
  {
    v3 = sub_2230C3D74();
    [v2 setBool:a1 & 1 forKey:v3];
  }
}

void static GenerativeAssistantSettingsUserDefaults.setConfirmationCount(_:)(uint64_t a1)
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v2 = qword_280D39238;
  if (qword_280D39238)
  {
    v3 = sub_2230C3D74();
    [v2 setInteger:a1 forKey:v3];
  }
}

uint64_t static GenerativeAssistantSettingsUserDefaults.lastRateLimitFullMessageDate()@<X0>(uint64_t a1@<X8>)
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v2 = qword_280D39238;
  if (qword_280D39238)
  {
    v3 = sub_2230C3D74();
    v4 = [v2 objectForKey_];

    if (v4)
    {
      sub_2230C3EE4();
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v11 = v9;
    v12 = v10;
    if (*(&v10 + 1))
    {
      v5 = sub_2230C3604();
      v6 = swift_dynamicCast();
      return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
    }
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  sub_2230A2EE8(&v11, &qword_27D0553D0, &qword_2230C4D28);
  v8 = sub_2230C3604();
  return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
}

void static GenerativeAssistantSettingsUserDefaults.updateLastRateLimitFullMessageDate(_:)()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C35B4();
    v2 = sub_2230C3D74();
    [v0 setObject:v1 forKey:v2];
  }
}

void static GenerativeAssistantSettingsUserDefaults.clearLastRateLimitFullMessageDate()()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    [v0 removeObjectForKey_];
  }
}

void static GenerativeAssistantSettingsUserDefaults.logConfirmationCount()(uint64_t a1)
{
  v1 = _s27GenerativeAssistantSettings0abC12UserDefaultsC17confirmationCountSiyFZ_0();
  if (v1 > 1)
  {
    if (qword_280D38F68 != -1)
    {
      swift_once();
    }

    v4 = qword_280D39238;
    if (qword_280D39238)
    {
      v6 = sub_2230C3D74();
      [v4 setBool:1 forKey:?];
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_280D38F68 != -1)
    {
      v5 = v1;
      swift_once();
      v1 = v5;
    }

    v2 = qword_280D39238;
    if (qword_280D39238)
    {
      v3 = v1;
      v6 = sub_2230C3D74();
      [v2 setInteger:v3 + 1 forKey:?];
LABEL_10:
    }
  }
}

void static GenerativeAssistantSettingsUserDefaults.setConsecutiveLLMConfirmationDates(_:)(uint64_t a1)
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v1 = qword_280D39238;
  if (qword_280D39238)
  {
    sub_2230C3604();
    v2 = sub_2230C3DF4();
    v3 = sub_2230C3D74();
    [v1 setObject:v2 forKey:v3];
  }
}

void static GenerativeAssistantSettingsUserDefaults.updateConsecutiveLLMConfirmation(date:)(uint64_t a1)
{
  v41 = a1;
  v56 = sub_2230C3674();
  v2 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2230C3684();
  v4 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v40 - v7;
  v58 = sub_2230C3604();
  v9 = *(v58 - 8);
  v10 = MEMORY[0x28223BE20](v58);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v40 = &v40 - v13;
  MEMORY[0x28223BE20](v12);
  v59 = &v40 - v14;
  v15 = _s27GenerativeAssistantSettings0abC12UserDefaultsC31consecutiveLLMConfirmationDatesSay10Foundation4DateVGyFZ_0();
  v52 = *(v15 + 16);
  if (v52)
  {
    v16 = 0;
    v50 = v9 + 16;
    v49 = *MEMORY[0x277CC9980];
    v47 = (v2 + 8);
    v48 = (v2 + 104);
    v45 = v9 + 48;
    v46 = (v4 + 8);
    v17 = (v9 + 8);
    v42 = (v9 + 32);
    v44 = MEMORY[0x277D84F90];
    v18 = v58;
    v51 = v15;
    while (1)
    {
      if (v16 >= *(v15 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v57 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v19 = *(v9 + 72);
      (*(v9 + 16))(v59, v15 + v57 + v19 * v16, v18);
      v20 = v17;
      v21 = v53;
      sub_2230C3664();
      v23 = v55;
      v22 = v56;
      (*v48)(v55, v49, v56);
      sub_2230C3654();
      v18 = v58;
      (*v47)(v23, v22);
      v24 = v21;
      v17 = v20;
      (*v46)(v24, v54);
      if ((*(v9 + 48))(v8, 1, v18) == 1)
      {
        sub_2230A2EE8(v8, &qword_27D055340, &qword_2230C58A0);
        v1 = *v20;
      }

      else
      {
        sub_2230C35D4();
        v17 = v20;
        v18 = v58;
        v26 = v25;
        v1 = *v20;
        (*v20)(v8, v58);
        if (v26 > 0.0)
        {
          v27 = *v42;
          (*v42)(v43, v59, v18);
          v28 = v44;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v30 = v28;
          v60 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2230BAB00(0, v28[2] + 1, 1);
            v17 = v20;
            v18 = v58;
            v30 = v60;
          }

          v1 = v30[2];
          v31 = v30[3];
          if (v1 >= v31 >> 1)
          {
            sub_2230BAB00((v31 > 1), v1 + 1, 1);
            v17 = v20;
            v18 = v58;
            v30 = v60;
          }

          v30[2] = v1 + 1;
          v44 = v30;
          v27(v30 + v57 + v1 * v19, v43, v18);
          goto LABEL_5;
        }
      }

      (v1)(v59, v18);
LABEL_5:
      ++v16;
      v15 = v51;
      if (v52 == v16)
      {
        goto LABEL_15;
      }
    }
  }

  v44 = MEMORY[0x277D84F90];
  v18 = v58;
LABEL_15:

  v1 = v40;
  (*(v9 + 16))(v40, v41, v18);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v32 = v44;
  }

  else
  {
LABEL_25:
    v32 = sub_2230BA908(0, v44[2] + 1, 1, v44);
  }

  v34 = v32[2];
  v33 = v32[3];
  v35 = v32;
  if (v34 >= v33 >> 1)
  {
    v32 = sub_2230BA908((v33 > 1), v34 + 1, 1, v32);
  }

  v32[2] = v34 + 1;
  v36 = v32;
  (*(v9 + 32))(v32 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v34, v1, v58, v35);
  sub_2230B8DEC(3uLL, v36);
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v37 = qword_280D39238;
  if (qword_280D39238)
  {
    v38 = sub_2230C3DF4();

    v39 = sub_2230C3D74();
    [v37 setObject:v38 forKey:v39];
  }

  else
  {
  }
}

void *sub_2230B8DEC(unint64_t a1, uint64_t a2)
{
  v4 = sub_2230C3604();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return MEMORY[0x277D84F90];
  }

  v9 = *(a2 + 16);
  v29 = a1;
  if (v9 >= a1)
  {
    v10 = a1;
  }

  else
  {
    v10 = v9;
  }

  v36 = MEMORY[0x277D84F90];
  sub_2230BAB00(0, v10, 0);
  v34 = v36;
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = 0;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v33 = v14;
    v15 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v28[1] = a2;
    v16 = a2 + v15;
    v17 = *(v13 + 56);
    v30 = (v13 + 24);
    v31 = (v13 + 16);
    v18 = v29;
    do
    {
      v21 = v8;
      result = v33(v8, v16, v4);
      v23 = v34;
      v22 = *(v34 + 16);
      if (v22 < v18)
      {
        v32 = v12;
        v36 = v34;
        v19 = *(v34 + 24);
        if (v22 >= v19 >> 1)
        {
          sub_2230BAB00((v19 > 1), v22 + 1, 1);
          v18 = v29;
          v23 = v36;
        }

        *(v23 + 16) = v22 + 1;
        v34 = v23;
        v20 = v23 + v15 + v22 * v17;
        v8 = v21;
        (*v31)(v20, v21, v4);
        v12 = v32;
      }

      else
      {
        if (v12 >= v22)
        {
          __break(1u);
          goto LABEL_27;
        }

        v8 = v21;
        (*v30)(v34 + v15 + v17 * v12, v21, v4);
        if ((v12 + 1) < v18)
        {
          ++v12;
        }

        else
        {
          v12 = 0;
        }
      }

      v16 += v17;
      --v11;
    }

    while (v11);

    if (!v12)
    {
      return v34;
    }

    v24 = *(v34 + 16);
    v35 = MEMORY[0x277D84F90];
    result = sub_2230BAB00(0, v24, 0);
    if (v24 >= v12)
    {
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_29;
      }

      v25 = v34;
      v26 = *(v34 + 16);
      if (v26 >= v12 && v26 >= v24)
      {

        sub_2230BAE04(v27, v25 + v15, v12, (2 * v24) | 1);
        sub_2230BAE04(v25, v25 + v15, 0, (2 * v12) | 1);
        return v35;
      }

      goto LABEL_30;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  return v34;
}

void static GenerativeAssistantSettingsUserDefaults.updateLastDeclineDate(to:)()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C35B4();
    v2 = sub_2230C3D74();
    [v0 setObject:v1 forKey:v2];
  }
}

void static GenerativeAssistantSettingsUserDefaults.clearLastDeclineDate()()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    [v0 removeObjectForKey_];
  }
}

void static GenerativeAssistantSettingsUserDefaults.setDisableConfirmRequestsConfirmationCount(_:)(uint64_t a1)
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v2 = qword_280D39238;
  if (qword_280D39238)
  {
    v3 = sub_2230C3D74();
    [v2 setInteger:a1 forKey:v3];
  }
}

void static GenerativeAssistantSettingsUserDefaults.setNextDisableConfirmRequestsConfirmationDate(to:)()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C35B4();
    v2 = sub_2230C3D74();
    [v0 setObject:v1 forKey:v2];
  }
}

void static GenerativeAssistantSettingsUserDefaults.updateNextDisableConfirmRequestsConfirmationDate()()
{
  v64 = sub_2230C3674();
  v0 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v2 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2230C3684();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v60 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v60 - v13;
  v67 = sub_2230C3604();
  v65 = *(v67 - 8);
  v15 = MEMORY[0x28223BE20](v67);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v60 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v61 = &v60 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v60 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v60 - v26;
  v28 = _s27GenerativeAssistantSettings0abC12UserDefaultsC39disableConfirmRequestsConfirmationCountSiyFZ_0();
  v66 = v28;
  switch(v28)
  {
    case 2:
      v61 = v20;
      sub_2230C3664();
      v37 = v64;
      (*(v0 + 104))(v2, *MEMORY[0x277CC9998], v64);
      sub_2230C35F4();
      sub_2230C3654();
      v38 = v65;
      v39 = *(v65 + 8);
      v40 = v67;
      v39(v25, v67);
      (*(v0 + 8))(v2, v37);
      (*(v62 + 8))(v5, v63);
      if ((*(v38 + 48))(v9, 1, v40) == 1)
      {
        v32 = v9;
        goto LABEL_10;
      }

      v50 = v61;
      (*(v38 + 32))(v61, v9, v40);
      v42 = 0x280D38000uLL;
      v41 = &unk_280D39000;
      if (qword_280D38F68 == -1)
      {
        v51 = qword_280D39238;
        if (!qword_280D39238)
        {
LABEL_23:
          v39(v50, v40);
          goto LABEL_28;
        }
      }

      else
      {
        swift_once();
        v51 = qword_280D39238;
        if (!qword_280D39238)
        {
          goto LABEL_23;
        }
      }

      v52 = sub_2230C35B4();
      v53 = sub_2230C3D74();
      [v51 setObject:v52 forKey:v53];

      v40 = v67;
      goto LABEL_23;
    case 1:
      sub_2230C3664();
      v33 = v64;
      (*(v0 + 104))(v2, *MEMORY[0x277CC9998], v64);
      sub_2230C35F4();
      sub_2230C3654();
      v34 = v65;
      v35 = *(v65 + 8);
      v36 = v67;
      v35(v25, v67);
      (*(v0 + 8))(v2, v33);
      (*(v62 + 8))(v5, v63);
      if ((*(v34 + 48))(v12, 1, v36) == 1)
      {
        v32 = v12;
        goto LABEL_10;
      }

      v46 = v61;
      (*(v34 + 32))(v61, v12, v36);
      v42 = 0x280D38000uLL;
      v41 = &unk_280D39000;
      if (qword_280D38F68 == -1)
      {
        v47 = qword_280D39238;
        if (!qword_280D39238)
        {
LABEL_19:
          v35(v46, v36);
          goto LABEL_28;
        }
      }

      else
      {
        swift_once();
        v47 = qword_280D39238;
        if (!qword_280D39238)
        {
          goto LABEL_19;
        }
      }

      v48 = sub_2230C35B4();
      v49 = sub_2230C3D74();
      [v47 setObject:v48 forKey:v49];

      v36 = v67;
      goto LABEL_19;
    case 0:
      sub_2230C3664();
      v29 = v64;
      (*(v0 + 104))(v2, *MEMORY[0x277CC9940], v64);
      sub_2230C35F4();
      sub_2230C3654();
      v30 = v65;
      v31 = v67;
      v61 = *(v65 + 8);
      (v61)(v25, v67);
      (*(v0 + 8))(v2, v29);
      (*(v62 + 8))(v5, v63);
      if ((*(v30 + 48))(v14, 1, v31) == 1)
      {
        v32 = v14;
LABEL_10:
        sub_2230A2EE8(v32, &qword_27D055340, &qword_2230C58A0);
        v41 = &unk_280D39000;
        v42 = 0x280D38000;
        goto LABEL_28;
      }

      (*(v30 + 32))(v27, v14, v31);
      v42 = 0x280D38000uLL;
      v41 = &unk_280D39000;
      if (qword_280D38F68 == -1)
      {
        v54 = qword_280D39238;
        if (!qword_280D39238)
        {
LABEL_27:
          (v61)(v27, v31);
          goto LABEL_28;
        }
      }

      else
      {
        swift_once();
        v54 = qword_280D39238;
        if (!qword_280D39238)
        {
          goto LABEL_27;
        }
      }

      v55 = sub_2230C35B4();
      v56 = sub_2230C3D74();
      [v54 setObject:v55 forKey:v56];

      v31 = v67;
      goto LABEL_27;
  }

  sub_2230C35A4();
  v42 = 0x280D38000uLL;
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v41 = &unk_280D39000;
  v43 = qword_280D39238;
  if (qword_280D39238)
  {
    v44 = sub_2230C35B4();
    v45 = sub_2230C3D74();
    [v43 setObject:v44 forKey:v45];
  }

  (*(v65 + 8))(v17, v67);
LABEL_28:
  v57 = v66 + 1;
  if (__OFADD__(v66, 1))
  {
    __break(1u);
  }

  else if (*(v42 + 3944) == -1)
  {
    v58 = v41[71];
    if (!v58)
    {
      return;
    }

    goto LABEL_31;
  }

  swift_once();
  v58 = v41[71];
  if (v58)
  {
LABEL_31:
    v59 = sub_2230C3D74();
    [v58 setInteger:v57 forKey:v59];
  }
}

void static GenerativeAssistantSettingsUserDefaults.clearNextDisableConfirmRequestsConfirmation()()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    [v0 setInteger:0 forKey:v1];

    v2 = sub_2230C3D74();
    [v0 removeObjectForKey_];
  }
}

uint64_t static GenerativeAssistantSettingsUserDefaults.confirmationPromptCancelled()()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (!qword_280D39238)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    sub_2230A2EE8(&v6, &qword_27D0553D0, &qword_2230C4D28);
    return 2;
  }

  v1 = sub_2230C3D74();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_2230C3EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

void static GenerativeAssistantSettingsUserDefaults.setConfirmationPromptCancelled(_:)(char a1)
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v2 = qword_280D39238;
  if (qword_280D39238)
  {
    v3 = sub_2230C3D74();
    [v2 setBool:a1 & 1 forKey:v3];
  }
}

void static GenerativeAssistantSettingsUserDefaults.clearConfirmationPromptCancelled()()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    [v0 removeObjectForKey_];
  }
}

void static GenerativeAssistantSettingsUserDefaults.recordDeclineConfirmationRequest()()
{
  v0 = sub_2230C3604();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2230C35F4();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v4 = qword_280D39238;
  if (qword_280D39238)
  {
    v5 = sub_2230C35B4();
    v6 = sub_2230C3D74();
    [v4 setObject:v5 forKey:v6];

    (*(v1 + 8))(v3, v0);
    v7 = sub_2230C3DF4();
    v8 = sub_2230C3D74();
    [v4 setObject:v7 forKey:v8];
  }

  else
  {
    (*(v1 + 8))(v3, v0);
  }
}

id static GenerativeAssistantSettingsUserDefaults.isRegionUnavailablityDialogShown()()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    v0 = [v0 BOOLForKey_];
  }

  return v0;
}

void static GenerativeAssistantSettingsUserDefaults.setRegionUnavailablityDialogShown(_:)(char a1)
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v2 = qword_280D39238;
  if (qword_280D39238)
  {
    v3 = sub_2230C3D74();
    [v2 setBool:a1 & 1 forKey:v3];
  }
}

id GenerativeAssistantSettingsUserDefaults.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativeAssistantSettingsUserDefaults.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id GenerativeAssistantSettingsUserDefaults.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static GATSettings.getGenAIAgent()(uint64_t a1, uint64_t a2)
{
  v2 = sub_2230C3724();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3754();

  if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D0D670])
  {
    return 1;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

GATSettings __swiftcall GATSettings.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

char *sub_2230BA7FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055700, &qword_2230C6138);
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

void *sub_2230BA908(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0556E8, &qword_2230C6110);
  v10 = *(sub_2230C3604() - 8);
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
  v15 = *(sub_2230C3604() - 8);
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

char *sub_2230BAAE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2230BAB20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2230BAB00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2230BAC2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2230BAB20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055700, &qword_2230C6138);
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

void *sub_2230BAC2C(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0556E8, &qword_2230C6110);
  v10 = *(sub_2230C3604() - 8);
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
  v15 = *(sub_2230C3604() - 8);
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

void *sub_2230BAE04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v64 = a2;
  v76 = sub_2230C3604();
  v68 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v9 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v58 - v15;
  result = MEMORY[0x28223BE20](v14);
  v19 = v58 - v18;
  v20 = a4 >> 1;
  v65 = a3;
  v21 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v22 = *v4;
  v23 = *(*v4 + 16);
  v24 = v23 + v21;
  if (__OFADD__(v23, v21))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v70 = v20;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v22;
  if (result)
  {
    v25 = *(v22 + 24) >> 1;
    if (v25 >= v24)
    {
      goto LABEL_12;
    }

    if (v23 <= v24)
    {
      v26 = v23 + v21;
    }

    else
    {
      v26 = v23;
    }
  }

  else if (v23 <= v24)
  {
    v26 = v23 + v21;
  }

  else
  {
    v26 = v23;
  }

  result = sub_2230BAB00(result, v26, 1);
  v22 = *v4;
  v25 = *(*v4 + 24) >> 1;
LABEL_12:
  v61 = v16;
  v27 = v25 - *(v22 + 16);
  if (v70 == v65)
  {
    if (v21 <= 0)
    {
      v28 = v65;
      if (v27)
      {
        goto LABEL_40;
      }

LABEL_20:
      v58[1] = a1;
      v32 = v22;
      v33 = *(v22 + 16);
      v34 = v68;
      v35 = v76;
      v66 = *(v68 + 56);
      v67 = v68 + 56;
      v66(v19, 1, 1, v76);
      v36 = v61;
      sub_2230A2E80(v19, v61, &qword_27D055340, &qword_2230C58A0);
      v74 = *(v34 + 48);
      v75 = v34 + 48;
      if (v74(v36, 1, v35) != 1)
      {
        v69 = v9;
        v72 = (v34 + 32);
        v63 = (v34 + 16);
        v59 = (v34 + 8);
        v60 = v4;
        v37 = &qword_27D055340;
        v77 = v19;
        do
        {
          v41 = v37;
          sub_2230A2EE8(v36, v37, &qword_2230C58A0);
          v42 = *(v32 + 24);
          if (v33 + 1 > (v42 >> 1))
          {
            sub_2230BAB00((v42 > 1), v33 + 1, 1);
          }

          v43 = *v4;
          v44 = *(*v4 + 24);
          v45 = *(v34 + 80);
          v46 = v41;
          sub_2230A2E80(v77, v13, v41, &qword_2230C58A0);
          v47 = v74(v13, 1, v76);
          v62 = v43;
          if (v47 != 1)
          {
            v71 = v43 + ((v45 + 32) & ~v45);
            v48 = v44 >> 1;
            v49 = *v72;
            if (v33 > (v44 >> 1))
            {
              v48 = v33;
            }

            v73 = v48;
            v50 = v76;
            do
            {
              v54 = v13;
              v55 = v69;
              v56 = v54;
              v49(v69);
              if (v73 == v33)
              {
                (*v59)(v55, v50);
                v38 = v73;
                v33 = v73;
                v13 = v56;
                goto LABEL_24;
              }

              sub_2230A2EE8(v77, v46, &qword_2230C58A0);
              v57 = *(v34 + 72);
              result = (v49)(v71 + v57 * v33, v55, v50);
              if (v28 == v70)
              {
                v51 = 1;
                v28 = v70;
                v13 = v56;
                v50 = v76;
                v52 = v77;
              }

              else
              {
                if (v28 < v65 || v28 >= v70)
                {
                  __break(1u);
                  goto LABEL_43;
                }

                v13 = v56;
                v50 = v76;
                v52 = v77;
                (*v63)(v77, v64 + v57 * v28, v76);
                v51 = 0;
                ++v28;
              }

              v66(v52, v51, 1, v50);
              sub_2230A2E80(v52, v13, v46, &qword_2230C58A0);
              v53 = v74(v13, 1, v50);
              ++v33;
              v34 = v68;
            }

            while (v53 != 1);
          }

          sub_2230A2EE8(v13, v46, &qword_2230C58A0);
          v38 = v33;
LABEL_24:
          v39 = v61;
          v32 = v62;
          *(v62 + 16) = v38;
          v19 = v77;
          sub_2230A2E80(v77, v39, v46, &qword_2230C58A0);
          v40 = v74(v39, 1, v76);
          v4 = v60;
          v37 = v46;
          v36 = v39;
        }

        while (v40 != 1);
      }

      sub_2230A2EE8(v19, &qword_27D055340, &qword_2230C58A0);
      swift_unknownObjectRelease();
      result = sub_2230A2EE8(v36, &qword_27D055340, &qword_2230C58A0);
      goto LABEL_41;
    }

    goto LABEL_45;
  }

  if (v27 < v21)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  result = swift_arrayInitWithCopy();
  if (v21 <= 0)
  {
    v28 = v70;
    if (v21 == v27)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

  v29 = *(v22 + 16);
  v30 = __OFADD__(v29, v21);
  v31 = v29 + v21;
  v28 = v70;
  if (!v30)
  {
    *(v22 + 16) = v31;
    if (v21 == v27)
    {
      goto LABEL_20;
    }

LABEL_40:
    result = swift_unknownObjectRelease();
    v32 = v22;
LABEL_41:
    *v4 = v32;
    return result;
  }

LABEL_47:
  __break(1u);
  return result;
}

uint64_t _s27GenerativeAssistantSettings0abC12UserDefaultsC18resetDeclineCountsyyFZ_0()
{
  v0 = sub_2230C3604();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v10 = qword_280D39238;
  if (qword_280D39238)
  {
    v11 = sub_2230C3D74();
    [v10 setInteger:0 forKey:v11];

    v12 = sub_2230C3D74();
    [v10 setInteger:0 forKey:v12];

    v13 = sub_2230C3D74();
    [v10 setInteger:0 forKey:v13];

    sub_2230C35A4();
    v14 = sub_2230C35B4();
    v15 = sub_2230C3D74();
    [v10 setObject:v14 forKey:v15];
  }

  else
  {
    sub_2230C35A4();
  }

  v16 = *(v1 + 8);
  v16(v9, v0);
  sub_2230C35A4();
  if (v10)
  {
    v17 = sub_2230C35B4();
    v18 = sub_2230C3D74();
    [v10 setObject:v17 forKey:v18];

    v16(v7, v0);
    sub_2230C35A4();
    v19 = sub_2230C35B4();
    v20 = sub_2230C3D74();
    [v10 setObject:v19 forKey:v20];
  }

  else
  {
    v16(v7, v0);
    sub_2230C35A4();
  }

  return (v16)(v4, v0);
}

void sub_2230BB728()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    v2 = [v0 BOOLForKey_];

    if (v2)
    {
      v3 = sub_2230C3D74();
      [v0 removeObjectForKey_];

      _s27GenerativeAssistantSettings0abC12UserDefaultsC18resetDeclineCountsyyFZ_0();
      v4 = sub_2230C3D74();
      [v0 removeObjectForKey_];
    }

    v5 = sub_2230C3D74();
    v6 = [v0 BOOLForKey_];

    if (v6)
    {
      sub_2230C3604();
      v7 = sub_2230C3DF4();
      v8 = sub_2230C3D74();
      [v0 setObject:v7 forKey:v8];

      v9 = sub_2230C3D74();
      [v0 removeObjectForKey_];
    }
  }
}

unint64_t sub_2230BB934()
{
  result = qword_280D38F30;
  if (!qword_280D38F30)
  {
    sub_2230C3604();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D38F30);
  }

  return result;
}

uint64_t _s27GenerativeAssistantSettings0abC12UserDefaultsC23taperConfirmationDialogSbyFZ_0()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (!qword_280D39238)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_2230A2EE8(&v6, &qword_27D0553D0, &qword_2230C4D28);
    return 0;
  }

  v1 = sub_2230C3D74();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_2230C3EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return v4;
  }

  return result;
}

uint64_t _s27GenerativeAssistantSettings0abC12UserDefaultsC17confirmationCountSiyFZ_0()
{
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (!qword_280D39238)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_2230A2EE8(&v6, &qword_27D0553D0, &qword_2230C4D28);
    return 0;
  }

  v1 = sub_2230C3D74();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_2230C3EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

uint64_t _s27GenerativeAssistantSettings0abC12UserDefaultsC31consecutiveLLMConfirmationDatesSay10Foundation4DateVGyFZ_0()
{
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (!qword_280D39238)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_2230A2EE8(&v6, &qword_27D0553D0, &qword_2230C4D28);
    return MEMORY[0x277D84F90];
  }

  v1 = sub_2230C3D74();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_2230C3EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0556F0, &qword_2230C6118);
  if (swift_dynamicCast())
  {
    return v4;
  }

  return MEMORY[0x277D84F90];
}

uint64_t _s27GenerativeAssistantSettings0abC12UserDefaultsC20forcedRateLimitStateSbSgyFZ_0()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (!qword_280D39238)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_12:
    sub_2230A2EE8(&v6, &qword_27D0553D0, &qword_2230C4D28);
    return 2;
  }

  v1 = sub_2230C3D74();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_2230C3EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_12;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

void _s27GenerativeAssistantSettings0abC12UserDefaultsC28incrementDeclineMediaQACountyyFZ_0()
{
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    v2 = [v0 integerForKey_];

    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      v3 = sub_2230C3D74();
      [v0 setInteger:v2 + 1 forKey:v3];
    }
  }
}

void _s27GenerativeAssistantSettings0abC12UserDefaultsC31incrementKnowledgeFallbackCountyyFZ_0()
{
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    v2 = [v0 integerForKey_];

    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      v3 = sub_2230C3D74();
      [v0 setInteger:v2 + 1 forKey:v3];
    }
  }
}

void _s27GenerativeAssistantSettings0abC12UserDefaultsC35incrementDeclineComposeViaSiriCountyyFZ_0()
{
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    v2 = [v0 integerForKey_];

    if (__OFADD__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      v3 = sub_2230C3D74();
      [v0 setInteger:v2 + 1 forKey:v3];
    }
  }
}

void _s27GenerativeAssistantSettings0abC12UserDefaultsC16incrementDecline3foryAA11RequestTypeO_tFZ_0(unsigned __int8 *a1)
{
  v2 = sub_2230C3674();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2230C3684();
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055340, &qword_2230C58A0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v54 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v54 - v15;
  v17 = sub_2230C3604();
  v60 = *(v17 - 8);
  v61 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v54 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v54 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v54 - v27;
  v29 = *a1;
  sub_2230BB728();
  if (v29 <= 2)
  {
    if (v29)
    {
      if (v29 == 1)
      {
        _s27GenerativeAssistantSettings0abC12UserDefaultsC31incrementKnowledgeFallbackCountyyFZ_0();
        sub_2230C3664();
        v30 = v58;
        v31 = v59;
        (*(v58 + 104))(v4, *MEMORY[0x277CC9998], v59);
        sub_2230C35E4();
        sub_2230C3654();
        v32 = v60;
        v33 = v61;
        v55 = *(v60 + 8);
        v55(v26, v61);
        (*(v30 + 8))(v4, v31);
        (*(v56 + 8))(v7, v57);
        if ((*(v32 + 48))(v14, 1, v33) == 1)
        {
          sub_2230A2EE8(v14, &qword_27D055340, &qword_2230C58A0);
        }

        else
        {
          (*(v32 + 32))(v23, v14, v33);
          if (qword_280D38F68 != -1)
          {
            swift_once();
          }

          v47 = qword_280D39238;
          if (qword_280D39238)
          {
            v48 = sub_2230C35B4();
            v49 = sub_2230C3D74();
            [v47 setObject:v48 forKey:v49];
          }

          v55(v23, v33);
        }
      }

      else
      {
        _s27GenerativeAssistantSettings0abC12UserDefaultsC35incrementDeclineComposeViaSiriCountyyFZ_0();
        sub_2230C3664();
        v39 = v58;
        v38 = v59;
        (*(v58 + 104))(v4, *MEMORY[0x277CC9998], v59);
        sub_2230C35E4();
        sub_2230C3654();
        v40 = v60;
        v41 = *(v60 + 8);
        v42 = v26;
        v43 = v61;
        v41(v42, v61);
        (*(v39 + 8))(v4, v38);
        (*(v56 + 8))(v7, v57);
        if ((*(v40 + 48))(v11, 1, v43) == 1)
        {
          sub_2230A2EE8(v11, &qword_27D055340, &qword_2230C58A0);
        }

        else
        {
          (*(v40 + 32))(v20, v11, v43);
          v50 = v43;
          if (qword_280D38F68 != -1)
          {
            swift_once();
          }

          v51 = qword_280D39238;
          if (qword_280D39238)
          {
            v52 = sub_2230C35B4();
            v53 = sub_2230C3D74();
            [v51 setObject:v52 forKey:v53];
          }

          v41(v20, v50);
        }
      }
    }

    else
    {
      _s27GenerativeAssistantSettings0abC12UserDefaultsC28incrementDeclineMediaQACountyyFZ_0();
      sub_2230C3664();
      v34 = v58;
      v35 = v59;
      (*(v58 + 104))(v4, *MEMORY[0x277CC9998], v59);
      sub_2230C35E4();
      sub_2230C3654();
      v36 = v60;
      v37 = v61;
      v55 = *(v60 + 8);
      v55(v26, v61);
      (*(v34 + 8))(v4, v35);
      (*(v56 + 8))(v7, v57);
      if ((*(v36 + 48))(v16, 1, v37) == 1)
      {
        sub_2230A2EE8(v16, &qword_27D055340, &qword_2230C58A0);
      }

      else
      {
        (*(v36 + 32))(v28, v16, v37);
        if (qword_280D38F68 != -1)
        {
          swift_once();
        }

        v44 = qword_280D39238;
        if (qword_280D39238)
        {
          v45 = sub_2230C35B4();
          v46 = sub_2230C3D74();
          [v44 setObject:v45 forKey:v46];
        }

        v55(v28, v37);
      }
    }
  }
}

void _s27GenerativeAssistantSettings0abC12UserDefaultsC28decrementDeclineMediaQACountyyFZ_0()
{
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    v2 = [v0 integerForKey_];

    if (v2 <= 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = v2 - 1;
    }

    v4 = sub_2230C3D74();
    [v0 setInteger:v3 forKey:v4];
  }
}

void _s27GenerativeAssistantSettings0abC12UserDefaultsC31decrementKnowledgeFallbackCountyyFZ_0()
{
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    v2 = [v0 integerForKey_];

    if (v2 <= 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = v2 - 1;
    }

    v4 = sub_2230C3D74();
    [v0 setInteger:v3 forKey:v4];
  }
}

void _s27GenerativeAssistantSettings0abC12UserDefaultsC35decrementDeclineComposeViaSiriCountyyFZ_0()
{
  sub_2230BB728();
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    v2 = [v0 integerForKey_];

    if (v2 <= 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = v2 - 1;
    }

    v4 = sub_2230C3D74();
    [v0 setInteger:v3 forKey:v4];
  }
}

uint64_t _s27GenerativeAssistantSettings0abC12UserDefaultsC39disableConfirmRequestsConfirmationCountSiyFZ_0()
{
  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (!qword_280D39238)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_2230A2EE8(&v6, &qword_27D0553D0, &qword_2230C4D28);
    return 0;
  }

  v1 = sub_2230C3D74();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_2230C3EE4();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  return 0;
}

id _sSo11GATSettingsC27GenerativeAssistantSettingsE22useConfirmationPromptsSbyFZ_0()
{
  if (qword_280D39240)
  {

    sub_22309F000();
  }

  if (qword_280D38F68 != -1)
  {
    swift_once();
  }

  v0 = qword_280D39238;
  if (qword_280D39238)
  {
    v1 = sub_2230C3D74();
    v0 = [v0 BOOLForKey_];
  }

  return v0;
}

uint64_t _sSo11GATSettingsC27GenerativeAssistantSettingsE11accountTypeSo010GATAccountF0VyFZ_0()
{
  v0 = sub_2230C38D4();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x28223BE20](v0);
  v23 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_2230C38F4();
  v22 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A8, &qword_2230C4C00);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553A0, &qword_2230C4BC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_2230C3914();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2230C3774();
  sub_2230C3764();
  sub_2230C3744();

  v15 = sub_2230C3984();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {
    sub_2230A2EE8(v7, &qword_27D0553A8, &qword_2230C4C00);
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_4:
    sub_2230A2EE8(v10, &qword_27D0553A0, &qword_2230C4BC0);
    return 1;
  }

  sub_2230C3944();
  (*(v16 + 8))(v7, v15);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_4;
  }

  (*(v12 + 32))(v14, v10, v11);
  sub_2230C3904();
  v18 = v23;
  sub_2230C38E4();
  (*(v22 + 8))(v4, v2);
  (*(v12 + 8))(v14, v11);
  v20 = v24;
  v19 = v25;
  v21 = (*(v24 + 88))(v18, v25);
  if (v21 == *MEMORY[0x277CEAC20])
  {
    return 2;
  }

  if (v21 == *MEMORY[0x277CEAC28])
  {
    return 3;
  }

  (*(v20 + 8))(v18, v19);
  return 0;
}

unint64_t sub_2230BD2C4()
{
  result = qword_27D0556C8;
  if (!qword_27D0556C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0556C8);
  }

  return result;
}

unint64_t sub_2230BD31C()
{
  result = qword_27D0556D0;
  if (!qword_27D0556D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0556D0);
  }

  return result;
}

unint64_t sub_2230BD374()
{
  result = qword_27D0556D8;
  if (!qword_27D0556D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0556D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RequestType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeAssistantSettingsUserDefaults.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenerativeAssistantSettingsUserDefaults.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t type metadata accessor for GATSettings()
{
  result = qword_27D0556E0;
  if (!qword_27D0556E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0556E0);
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

uint64_t sub_2230BD768(uint64_t a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 96) = a6;
  *(v7 + 104) = a7;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 169) = a3;
  *(v7 + 168) = a2;
  *(v7 + 72) = a1;
  *(v7 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90);
  *(v7 + 120) = swift_task_alloc();
  *(v7 + 128) = swift_task_alloc();
  *(v7 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230BD830, 0, 0);
}

uint64_t sub_2230BD830()
{
  v1 = *(v0 + 88);
  v2 = sub_2230BDCC0(*(v0 + 96), *(v0 + 104), *(v0 + 168));
  v3 = [v1 URLForKey_];
  *(v0 + 144) = v3;

  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *(v4 + 16) = v3;
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_2230BD95C;
  v6 = *(v0 + 136);
  v7 = *(v0 + 112);

  return MEMORY[0x2822007B8](v6, 0, 0, 0xD00000000000003ELL, 0x80000002230C7590, sub_2230BE46C, v4, v7);
}

uint64_t sub_2230BD95C()
{

  return MEMORY[0x2822009F8](sub_2230BDA74, 0, 0);
}

uint64_t sub_2230BDA74()
{
  v1 = *(v0 + 128);
  v2 = (v0 + 128);
  sub_2230AC4E8(*(v0 + 136), v1);
  v3 = sub_2230C3594();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  if (v5(v1, 1, v3) == 1)
  {
    v6 = *(v0 + 169);
    sub_2230AC558(*(v0 + 128));
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    if (!*(*(v0 + 80) + 16))
    {
      goto LABEL_8;
    }

    v7 = sub_2230A51D4(*(v0 + 168));
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }

    sub_2230AD43C(*(*(v0 + 80) + 56) + 40 * v7, v0 + 16);
    if (!swift_dynamicCast())
    {
      goto LABEL_8;
    }

    v2 = (v0 + 120);
    v9 = *(v0 + 120);
    sub_2230C3574();

    if (v5(v9, 1, v3) == 1)
    {
      sub_2230AC558(*v2);
LABEL_8:
      v10 = *(v0 + 136);
      v11 = *(v0 + 144);
      sub_2230AD3E8();
      swift_allocError();
      *v12 = 0;
      swift_willThrow();

      sub_2230AC558(v10);

      v13 = *(v0 + 8);
      goto LABEL_10;
    }
  }

  v14 = *(v0 + 136);
  v15 = *v2;
  v16 = *(v0 + 72);

  sub_2230AC558(v14);
  (*(v4 + 32))(v16, v15, v3);

  v13 = *(v0 + 8);
LABEL_10:

  return v13();
}

uint64_t sub_2230BDCC0(unint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a2)
  {

    MEMORY[0x223DD4D40](47, 0xE100000000000000);
    v4 = 0x80000002230C6A10;
    v5 = 0xD000000000000017;
    v6 = 0xD000000000000013;
    v7 = 0x80000002230C6A30;
    if (a3 != 3)
    {
      v6 = 0xD00000000000001ALL;
      v7 = 0x80000002230C6A50;
    }

    if (a3 != 2)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x6C646E7542707061;
    v9 = 0xEB00000000444965;
    if (!a3)
    {
      v8 = 0x496D616441707061;
      v9 = 0xE900000000000044;
    }

    if (a3 <= 1u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    if (a3 <= 1u)
    {
      v11 = v9;
    }

    else
    {
      v11 = v4;
    }

    MEMORY[0x223DD4D40](v10, v11);
  }

  v12 = sub_2230C3D74();

  return v12;
}

uint64_t sub_2230BDE98()
{
  sub_2230C4014();
  sub_2230C3DC4();

  return sub_2230C4034();
}

uint64_t sub_2230BDF94(uint64_t a1)
{
  sub_2230C3DC4();
}

uint64_t sub_2230BE07C(uint64_t a1)
{
  sub_2230C4014();
  sub_2230C3DC4();

  return sub_2230C4034();
}

unint64_t sub_2230BE174@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230BEA18(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2230BE1A4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0x496D616441707061;
  v5 = 0x80000002230C6A10;
  v6 = 0xD000000000000017;
  v7 = 0xD000000000000013;
  v8 = 0x80000002230C6A30;
  if (v2 != 3)
  {
    v7 = 0xD00000000000001ALL;
    v8 = 0x80000002230C6A50;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x6C646E7542707061;
    v3 = 0xEB00000000444965;
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

unint64_t sub_2230BE294()
{
  result = sub_2230C3150(MEMORY[0x277D84F90]);
  qword_27D055708 = result;
  return result;
}

void sub_2230BE2BC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055710, &qword_2230C61B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_2230BE620;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2230BE58C;
  aBlock[3] = &block_descriptor_2;
  v10 = _Block_copy(aBlock);

  [a2 valueWithCompletion_];
  _Block_release(v10);
}

uint64_t sub_2230BE474(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90);
  v2 = MEMORY[0x28223BE20](a1);
  v4 = &v8 - v3;
  if (v2)
  {
    sub_2230C3564();
    v5 = sub_2230C3594();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  }

  else
  {
    v6 = sub_2230C3594();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055710, &qword_2230C61B8);
  return sub_2230C3E44();
}

void sub_2230BE58C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_2230BE620(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055710, &qword_2230C61B8);

  return sub_2230BE474(a1);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2230BE6E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2230BE728(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BagProvider.BagError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for BagProvider.BagError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2230BE904()
{
  result = qword_27D055718;
  if (!qword_27D055718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D055720, qword_2230C6218);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055718);
  }

  return result;
}

unint64_t sub_2230BE96C()
{
  result = qword_27D055728;
  if (!qword_27D055728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055728);
  }

  return result;
}

unint64_t sub_2230BE9C4()
{
  result = qword_27D055730;
  if (!qword_27D055730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055730);
  }

  return result;
}

unint64_t sub_2230BEA18(uint64_t a1, uint64_t a2)
{
  v2 = sub_2230C3F74();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2230BEA64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2230BFEC0(a3, v25 - v10);
  v12 = sub_2230C3E84();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2230BFF30(v11);
  }

  else
  {
    sub_2230C3E74();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2230C3E34();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2230C3DB4() + 32;
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

      sub_2230BFF30(a3);

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

  sub_2230BFF30(a3);
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

uint64_t sub_2230BED24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2230BFEC0(a3, v25 - v10);
  v12 = sub_2230C3E84();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2230BFF30(v11);
  }

  else
  {
    sub_2230C3E74();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2230C3E34();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2230C3DB4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0557D8, &qword_2230C64C0);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_2230BFF30(a3);

      return v22;
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

  sub_2230BFF30(a3);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0557D8, &qword_2230C64C0);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2230BEFF8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  return v1;
}

uint64_t sub_2230BF1A4()
{
  sub_2230C3E64();
  *(v0 + 24) = sub_2230C3E54();
  v2 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230BF238, v2, v1);
}

uint64_t sub_2230BF238()
{
  v1 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 1;
  v2 = v1;
  sub_2230C39C4();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2230BF40C()
{
  sub_2230C3E64();
  *(v0 + 24) = sub_2230C3E54();
  v2 = sub_2230C3E34();

  return MEMORY[0x2822009F8](sub_2230BF4A0, v2, v1);
}

uint64_t sub_2230BF4A0()
{
  v1 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 32) = 0;
  v2 = v1;
  sub_2230C39C4();
  v3 = *(v0 + 8);

  return v3();
}

id sub_2230BF5A8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LockupViewDelegate(uint64_t a1)
{
  result = qword_27D0557B0;
  if (!qword_27D0557B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2230BF6AC(uint64_t a1)
{
  sub_2230BF73C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2230BF73C()
{
  if (!qword_27D0557C0)
  {
    v0 = sub_2230C39D4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D0557C0);
    }
  }
}

uint64_t sub_2230BF78C@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_2230C3994();
  *a2 = result;
  return result;
}

uint64_t sub_2230BF7CC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  *a2 = v4;
  return result;
}

uint64_t sub_2230BF84C(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_2230C39C4();
}

uint64_t sub_2230BF8BC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2230BF9B4;

  return v6(a1);
}

uint64_t sub_2230BF9B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2230BFAAC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2230BFBA0;

  return v5(v2 + 32);
}

uint64_t sub_2230BFBA0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2230BFCB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8[-v2];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2230C39B4();

  if (v8[15] == 1)
  {
    v5 = sub_2230C3E84();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v0;
    v7 = v0;
    sub_2230BEA64(0, 0, v3, &unk_2230C6478, v6);
  }

  return result;
}

uint64_t sub_2230BFE0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230AD85C;

  return sub_2230BF3EC(a1, v4, v5, v6);
}

uint64_t sub_2230BFEC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230BFF30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0553D8, &qword_2230C4D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2230BFF98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2230AD85C;

  return sub_2230BF8BC(a1, v4);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2230C0090(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2230A4F64;

  return sub_2230BF184(a1, v4, v5, v6);
}

uint64_t sub_2230C0144(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2230AD85C;

  return sub_2230BFAAC(a1, v4);
}

uint64_t sub_2230C01FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2230A4F64;

  return sub_2230BFAAC(a1, v4);
}

uint64_t sub_2230C02D8()
{
  v0 = sub_2230C3524();
  __swift_allocate_value_buffer(v0, qword_27D057290);
  v1 = __swift_project_value_buffer(v0, qword_27D057290);
  *v1 = type metadata accessor for ResourceBundleHelper();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
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

uint64_t static SettingsRemoteLocalization.upgradeIAPString()()
{
  v1 = sub_2230C3C84();
  v0[7] = v1;
  v0[8] = *(v1 - 8);
  v0[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230C0494, 0, 0);
}

uint64_t sub_2230C0494()
{
  sub_2230C3C74();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_2230C0540;

  return sub_2230C09B8(v0 + 16);
}

uint64_t sub_2230C0540()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_2230C073C;
  }

  else
  {
    v2 = sub_2230C0654;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2230C0654()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v4 = sub_2230C3D14();
  v6 = v5;
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v7 = v0[1];

  return v7(v4, v6);
}

uint64_t sub_2230C073C()
{
  v1 = v0[11];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v2 = v0[1];

  return v2(0xD000000000000017, 0x80000002230C76F0);
}

uint64_t sub_2230C07D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2230C0864;

  return sub_2230C27F8();
}

uint64_t sub_2230C0864(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_2230C0964(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x28211DC90](a1, a2);
}

uint64_t sub_2230C09B8(uint64_t a1)
{
  v1[33] = a1;
  sub_2230C36A4();
  v1[34] = swift_task_alloc();
  v2 = sub_2230C36C4();
  v1[35] = v2;
  v1[36] = *(v2 - 8);
  v1[37] = swift_task_alloc();
  v3 = sub_2230C3CC4();
  v1[38] = v3;
  v1[39] = *(v3 - 8);
  v1[40] = swift_task_alloc();
  v4 = sub_2230C3B54();
  v1[41] = v4;
  v1[42] = *(v4 - 8);
  v1[43] = swift_task_alloc();
  v5 = sub_2230C3BB4();
  v1[44] = v5;
  v1[45] = *(v5 - 8);
  v1[46] = swift_task_alloc();
  v6 = sub_2230C3B44();
  v1[47] = v6;
  v1[48] = *(v6 - 8);
  v1[49] = swift_task_alloc();
  v7 = sub_2230C3C04();
  v1[50] = v7;
  v1[51] = *(v7 - 8);
  v1[52] = swift_task_alloc();
  v8 = sub_2230C3D04();
  v1[53] = v8;
  v1[54] = *(v8 - 8);
  v1[55] = swift_task_alloc();
  v9 = sub_2230C3C44();
  v1[56] = v9;
  v1[57] = *(v9 - 8);
  v1[58] = swift_task_alloc();
  v10 = sub_2230C3CE4();
  v1[59] = v10;
  v1[60] = *(v10 - 8);
  v1[61] = swift_task_alloc();
  sub_2230C3B84();
  v1[62] = swift_task_alloc();
  v11 = sub_2230C3C14();
  v1[63] = v11;
  v1[64] = *(v11 - 8);
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055410, &qword_2230C4D90);
  v1[67] = swift_task_alloc();
  v12 = sub_2230C3594();
  v1[68] = v12;
  v1[69] = *(v12 - 8);
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230C0EB8, 0, 0);
}

uint64_t sub_2230C0EB8()
{
  if (qword_27D055320 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  *(v0 + 16) = 0xD000000000000011;
  *(v0 + 24) = 0x80000002230C6F30;
  *(v0 + 32) = xmmword_2230C54B0;
  *(v0 + 48) = 49;
  *(v0 + 56) = 0xE100000000000000;

  sub_2230B2D98(v4, (v0 + 16));
  v6 = v5;

  *(v0 + 576) = v6;

  sub_2230C3574();
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v8 = *(v0 + 288);
    v7 = *(v0 + 296);
    v9 = *(v0 + 280);
    sub_2230AC558(*(v0 + 536));
    sub_2230C3694();
    sub_2230C25CC(MEMORY[0x277D84F90]);
    sub_2230C26DC(&qword_27D055840, MEMORY[0x277CC9AE8], MEMORY[0x277CC9AE0]);
    sub_2230C3504();
    sub_2230C36B4();
    (*(v8 + 8))(v7, v9);
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    (*(*(v0 + 552) + 32))(*(v0 + 568), *(v0 + 536), *(v0 + 544));
    sub_2230C3C24();
    sub_2230C3C64();
    *(v0 + 584) = sub_2230C3C54();
    sub_2230C3BD4();
    *(v0 + 592) = sub_2230C3BC4();
    v10 = *(v0 + 568);
    v13 = *(v0 + 560);
    v14 = *(v0 + 552);
    v28 = *(v0 + 544);
    v16 = *(v0 + 408);
    v15 = *(v0 + 416);
    v29 = *(v0 + 400);

    sub_2230C3B74();
    sub_2230C3BA4();
    swift_allocObject();
    *(v0 + 600) = sub_2230C3B94();
    v17 = objc_opt_self();
    v18 = objc_opt_self();
    v19 = v6;
    v20 = [v18 currentProcess];
    v21 = [v17 ams:v20 configurationWithProcessInfo:v19 bag:?];

    sub_2230C3CD4();
    (*(v14 + 16))(v13, v10, v28);
    (*(v16 + 104))(v15, *MEMORY[0x277D21A78], v29);
    sub_2230C3CF4();
    v22 = swift_task_alloc();
    *(v0 + 608) = v22;
    v23 = sub_2230C26DC(&qword_27D055848, MEMORY[0x277D221A0], MEMORY[0x277D22198]);
    *v22 = v0;
    v22[1] = sub_2230C1470;
    v24 = *(v0 + 488);
    v25 = *(v0 + 464);
    v26 = *(v0 + 472);
    v27 = *(v0 + 440);

    return MEMORY[0x28217E7A8](v25, v27, v24, v26, v23);
  }
}

uint64_t sub_2230C1470()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  (*(v2[54] + 8))(v2[55], v2[53]);
  if (v0)
  {
    v3 = sub_2230C1F58;
  }

  else
  {
    v3 = sub_2230C15D8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2230C15D8()
{
  (*(v0[45] + 104))(v0[46], *MEMORY[0x277D21A38], v0[44]);
  v1 = sub_2230C3BF4();
  v2 = MEMORY[0x277D21A60];
  v0[11] = v1;
  v0[12] = v2;
  __swift_allocate_boxed_opaque_existential_0(v0 + 8);
  sub_2230C3BE4();
  sub_2230C3B24();
  sub_2230C3C34();
  v3 = swift_task_alloc();
  v0[78] = v3;
  *v3 = v0;
  v3[1] = sub_2230C16EC;
  v4 = v0[43];

  return MEMORY[0x28217E6F8](v4, v0 + 13);
}

uint64_t sub_2230C16EC()
{
  v2 = *v1;
  *(v2 + 632) = v0;

  __swift_destroy_boxed_opaque_existential_0((v2 + 104));
  if (v0)
  {
    v3 = sub_2230C2130;
  }

  else
  {
    v3 = sub_2230C1808;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2230C1808()
{
  v1 = v0[79];
  v2 = v0[66];
  v3 = v0[65];
  v4 = v0[63];
  v5 = v0[64];
  v7 = v0[42];
  v6 = v0[43];
  v8 = v0[41];
  v9 = MEMORY[0x277D21998];
  v0[21] = v8;
  v0[22] = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 18);
  (*(v7 + 16))(boxed_opaque_existential_0, v6, v8);
  (*(v5 + 16))(v3, v2, v4);
  sub_2230C3CB4();
  if (v1)
  {
    v28 = v0[72];
    v11 = v0[69];
    v37 = v0[68];
    v38 = v0[71];
    v12 = v0[64];
    v35 = v0[63];
    v36 = v0[66];
    v13 = v0[60];
    v33 = v0[59];
    v34 = v0[61];
    v14 = v0[57];
    v31 = v0[56];
    v32 = v0[58];
    v15 = v0[48];
    v29 = v0[47];
    v30 = v0[49];
    v17 = v0[42];
    v16 = v0[43];
    v18 = v0[41];

    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v30, v29);
    (*(v14 + 8))(v32, v31);
    (*(v13 + 8))(v34, v33);
    (*(v12 + 8))(v36, v35);
    (*(v11 + 8))(v38, v37);

    v19 = v0[1];

    return v19();
  }

  else
  {
    v22 = v0[39];
    v21 = v0[40];
    v23 = v0[38];
    v0[80] = sub_2230C3CA4();
    v24 = MEMORY[0x277D22178];
    v0[26] = v23;
    v0[27] = v24;
    v25 = __swift_allocate_boxed_opaque_existential_0(v0 + 23);
    (*(v22 + 16))(v25, v21, v23);
    v0[31] = &type metadata for SettingsRemoteLocalization.SiriLanguageSource;
    v0[32] = sub_2230C2724();
    v26 = swift_task_alloc();
    v0[81] = v26;
    *v26 = v0;
    v26[1] = sub_2230C1B98;
    v27 = v0[73];

    return MEMORY[0x28217FC00](v0 + 23, v0 + 28, v27);
  }
}

uint64_t sub_2230C1B98(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 656) = v1;

  if (v1)
  {
    v5 = sub_2230C2348;
  }

  else
  {
    v4[83] = a1;
    __swift_destroy_boxed_opaque_existential_0(v4 + 28);
    __swift_destroy_boxed_opaque_existential_0(v4 + 23);
    v5 = sub_2230C1CD0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2230C1CD0()
{
  v18 = v0[83];
  v15 = v0[72];
  v27 = v0[71];
  v25 = v0[69];
  v26 = v0[68];
  v24 = v0[66];
  v1 = v0[64];
  v23 = v0[63];
  v2 = v0[60];
  v21 = v0[59];
  v22 = v0[61];
  v3 = v0[57];
  v19 = v0[56];
  v20 = v0[58];
  v4 = v0[48];
  v16 = v0[47];
  v17 = v0[49];
  v5 = v0[42];
  v6 = v0[40];
  v13 = v0[41];
  v14 = v0[43];
  v8 = v0[38];
  v7 = v0[39];
  v9 = v0[33];
  v10 = MEMORY[0x277D22148];
  v9[3] = v0[80];
  v9[4] = v10;

  *v9 = v18;
  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v14, v13);
  (*(v4 + 8))(v17, v16);
  (*(v3 + 8))(v20, v19);
  (*(v2 + 8))(v22, v21);
  (*(v1 + 8))(v24, v23);
  (*(v25 + 8))(v27, v26);

  v11 = v0[1];

  return v11();
}

uint64_t sub_2230C1F58()
{
  v1 = v0[72];
  v2 = v0[69];
  v11 = v0[68];
  v12 = v0[71];
  v10 = v0[66];
  v4 = v0[63];
  v3 = v0[64];
  v5 = v0[60];
  v6 = v0[61];
  v7 = v0[59];

  (*(v5 + 8))(v6, v7);
  (*(v3 + 8))(v10, v4);
  (*(v2 + 8))(v12, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2230C2130()
{
  v1 = v0[72];
  v2 = v0[69];
  v17 = v0[68];
  v18 = v0[71];
  v3 = v0[64];
  v15 = v0[63];
  v16 = v0[66];
  v4 = v0[60];
  v13 = v0[59];
  v14 = v0[61];
  v12 = v0[58];
  v5 = v0[57];
  v11 = v0[56];
  v7 = v0[48];
  v6 = v0[49];
  v8 = v0[47];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v12, v11);
  (*(v4 + 8))(v14, v13);
  (*(v3 + 8))(v16, v15);
  (*(v2 + 8))(v18, v17);

  v9 = v0[1];

  return v9();
}

uint64_t sub_2230C2348()
{
  v13 = v0[72];
  v24 = v0[71];
  v22 = v0[69];
  v23 = v0[68];
  v1 = v0[64];
  v20 = v0[63];
  v21 = v0[66];
  v2 = v0[60];
  v18 = v0[59];
  v19 = v0[61];
  v3 = v0[57];
  v16 = v0[56];
  v17 = v0[58];
  v4 = v0[48];
  v14 = v0[47];
  v15 = v0[49];
  v5 = v0[42];
  v6 = v0[40];
  v11 = v0[41];
  v12 = v0[43];
  v8 = v0[38];
  v7 = v0[39];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v12, v11);
  (*(v4 + 8))(v15, v14);
  (*(v3 + 8))(v17, v16);
  (*(v2 + 8))(v19, v18);
  (*(v1 + 8))(v21, v20);
  (*(v22 + 8))(v24, v23);
  __swift_destroy_boxed_opaque_existential_0(v0 + 28);
  __swift_destroy_boxed_opaque_existential_0(v0 + 23);

  v9 = v0[1];

  return v9();
}

unint64_t sub_2230C25CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055858, &qword_2230C6568);
    v3 = sub_2230C3F64();
    v4 = a1 + 32;

    while (1)
    {
      sub_2230C2778(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_2230A515C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2230A4CE0(&v15, (v3[7] + 32 * result));
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

uint64_t sub_2230C26DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2230C2724()
{
  result = qword_27D055850;
  if (!qword_27D055850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D055850);
  }

  return result;
}

uint64_t sub_2230C2778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055400, &qword_2230C4D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2230C27F8()
{
  v1 = sub_2230C3644();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2230C28B4, 0, 0);
}

uint64_t sub_2230C28B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055700, &qword_2230C6138);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2230C4D80;
  v2 = [objc_opt_self() sharedPreferences];
  v3 = [v2 languageCode];

  if (v3)
  {
    v4 = sub_2230C3D84();
    v6 = v5;
  }

  else
  {
    v8 = v0[3];
    v7 = v0[4];
    v9 = v0[2];
    sub_2230C3634();
    v4 = sub_2230C3624();
    v6 = v10;
    (*(v8 + 8))(v7, v9);
  }

  *(v1 + 32) = v4;
  *(v1 + 40) = v6;

  v11 = v0[1];

  return v11(v1);
}

uint64_t sub_2230C29F4(uint64_t a1, void *a2, unsigned __int8 a3, char a4)
{
  sub_2230C3864();
  sub_2230C3854();
  sub_2230C3844();

  v7 = v15;
  sub_2230C2B24(v14);
  if (v7)
  {
    v8 = a2[3];
    v9 = a2[4];
    __swift_project_boxed_opaque_existential_0Tm(a2, v8);
    v14[0] = 3;
    v13 = a3;
    return (*(v9 + 8))(v14, &v13, v8, v9);
  }

  else
  {
    if ((sub_2230C37B4() & 1) != 0 && a3 != 6 && (a4 & 1) == 0)
    {
      v14[0] = a3;
      _s27GenerativeAssistantSettings0abC12UserDefaultsC16incrementDecline3foryAA11RequestTypeO_tFZ_0(v14);
    }

    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_0Tm(a2, v11);
    v14[0] = (sub_2230C37B4() & 1) == 0;
    v13 = a3;
    return (*(v12 + 8))(v14, &v13, v11, v12);
  }
}

uint64_t sub_2230C2B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0556B8, &qword_2230C5E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2230C2B8C()
{
  v0 = sub_2230C38A4();
  __swift_allocate_value_buffer(v0, qword_280D39220);
  __swift_project_value_buffer(v0, qword_280D39220);
  return sub_2230C3894();
}

uint64_t sub_2230C2C64(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2230C38A4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2230C3894();
}

uint64_t GenerativeAssistantSettingsView.body.getter()
{
  if (qword_27D0572D8)
  {
    v0 = qword_27D0572D8;
  }

  else
  {
    v0 = sub_2230C3288(MEMORY[0x277D84F90]);
  }

  return MEMORY[0x282166FA0](v0);
}

uint64_t GenerativeAssistantSettingsView.init()@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GenerativeAssistantSettingsViewModel(0);
  swift_allocObject();
  sub_2230ADFB4();
  sub_2230C3458(&qword_27D055860, type metadata accessor for GenerativeAssistantSettingsViewModel, &protocol conformance descriptor for GenerativeAssistantSettingsViewModel);
  result = sub_2230C3A04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t GenerativeAssistantSettingsView.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for GenerativeAssistantSettingsViewModel(0);
  swift_allocObject();
  sub_2230ADFB4();
  sub_2230C3458(&qword_27D055860, type metadata accessor for GenerativeAssistantSettingsViewModel, &protocol conformance descriptor for GenerativeAssistantSettingsViewModel);
  *a2 = sub_2230C3A04();
  a2[1] = v4;
  qword_27D0572D8 = a1;
}

uint64_t static GenerativeAssistantSettingsView.available()()
{
  v0 = sub_2230C3714();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  sub_2230C3704();
  v7 = sub_2230C36E4();
  v8 = *(v1 + 8);
  v8(v6, v0);
  if (v7)
  {
    sub_2230C3704();
    v9 = sub_2230C36D4();
    v8(v4, v0);
    v10 = v9 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_2230C2FBC()
{
  if (qword_27D0572D8)
  {
    v0 = qword_27D0572D8;
  }

  else
  {
    v0 = sub_2230C3288(MEMORY[0x277D84F90]);
  }

  return MEMORY[0x282166FA0](v0);
}

unint64_t sub_2230C3020(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055858, &qword_2230C6568);
    v3 = sub_2230C3F64();
    v4 = a1 + 32;

    while (1)
    {
      sub_2230A2E80(v4, &v13, &qword_27D055400, &qword_2230C4D70);
      v5 = v13;
      v6 = v14;
      result = sub_2230A515C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2230A4CE0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_2230C3150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D055870, &qword_2230C6690);
    v3 = sub_2230C3F64();
    v4 = a1 + 32;

    while (1)
    {
      sub_2230A2E80(v4, v14, &qword_27D055878, &qword_2230C6698);
      v5 = v14[0];
      result = sub_2230A51D4(v14[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v8 = v3[7] + 40 * result;
      v9 = v15;
      v10 = v16;
      *(v8 + 32) = v17;
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2230C3288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D055880, qword_2230C66A0);
    v3 = sub_2230C3F64();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_2230A515C(v5, v6);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2230C33C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2230C340C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2230C3458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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