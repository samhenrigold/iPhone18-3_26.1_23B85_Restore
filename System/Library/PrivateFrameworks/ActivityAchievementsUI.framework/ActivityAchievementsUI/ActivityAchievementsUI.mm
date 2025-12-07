void sub_23E4A53F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_23E4A55E8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_23E4A56D8(uint64_t a1, uint64_t a2)
{
  sub_23E4A5744();
  v3 = sub_23E4DCE3C();
  (*(a2 + 16))(a2, v3);
}

unint64_t sub_23E4A5744()
{
  result = qword_28110A3F8;
  if (!qword_28110A3F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28110A3F8);
  }

  return result;
}

id AAUIAchievementInArrayWithUniqueName(void *a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __AAUIAchievementInArrayWithUniqueName_block_invoke;
  v7[3] = &unk_278C43870;
  v8 = v3;
  v4 = v3;
  v5 = [a1 hk_firstObjectPassingTest:v7];

  return v5;
}

uint64_t __AAUIAchievementInArrayWithUniqueName_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 template];
  v4 = [v3 uniqueName];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

uint64_t AAUIIsGoldAchievement(void *a1)
{
  v1 = a1;
  v2 = [v1 template];
  v3 = [v2 uniqueName];
  if ([v3 containsString:@"Best"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [v1 template];
    v6 = [v5 uniqueName];
    if ([v6 containsString:@"Longest"])
    {
      v4 = 1;
    }

    else
    {
      v7 = [v1 template];
      v8 = [v7 uniqueName];
      if ([v8 containsString:@"Fastest"])
      {
        v4 = 1;
      }

      else
      {
        v9 = [v1 template];
        v10 = [v9 uniqueName];
        v4 = [v10 isEqualToString:@"7WorkoutWeek"];
      }
    }
  }

  return v4;
}

id AAUISortSubAchievementsByActivityType(void *a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = v1;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        v10 = AAUILocalizedActivityTypeForAchievement(v9);
        v11 = [v3 objectForKeyedSubscript:v10];

        if (!v11)
        {
          v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v3 setObject:v12 forKeyedSubscript:v10];
        }

        v13 = [v3 objectForKeyedSubscript:v10];
        [v13 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v14 = [v3 allKeys];
  v15 = [v14 sortedArrayUsingSelector:sel_compare_];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [v3 objectForKeyedSubscript:{*(*(&v23 + 1) + 8 * j), v23}];
        [v21 sortUsingComparator:&__block_literal_global_736];
        [v2 addObjectsFromArray:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  return v2;
}

__CFString *AAUILocalizedActivityTypeForAchievement(void *a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 template];
  v3 = [v2 uniqueName];
  if ([v3 containsString:@"FiftyKilometersCyclingWorkout"])
  {
    goto LABEL_6;
  }

  v4 = [v1 template];
  v5 = [v4 uniqueName];
  if ([v5 containsString:@"FiftyMilesCyclingWorkout"])
  {
LABEL_5:

LABEL_6:
LABEL_7:
    v8 = FILocalizedNameForIndoorAgnosticActivityType();
    goto LABEL_8;
  }

  v6 = [v1 template];
  v7 = [v6 uniqueName];
  if ([v7 containsString:@"OneHundredKilometersCyclingWorkout"])
  {

    goto LABEL_5;
  }

  v10 = [v1 template];
  v11 = [v10 uniqueName];
  v12 = [v11 containsString:@"OneHundredMilesCyclingWorkout"];

  if (v12)
  {
    goto LABEL_7;
  }

  v13 = [v1 template];
  v14 = [v13 uniqueName];
  if ([v14 containsString:@"WheelchairMarathonWorkout"])
  {
LABEL_21:

    goto LABEL_7;
  }

  v15 = [v1 template];
  v16 = [v15 uniqueName];
  if ([v16 containsString:@"FastestWheelchairMarathonWorkout"])
  {
LABEL_20:

    goto LABEL_21;
  }

  v17 = [v1 template];
  v18 = [v17 uniqueName];
  if ([v18 containsString:@"WheelchairHalfMarathonWorkout"])
  {
LABEL_19:

    goto LABEL_20;
  }

  v19 = [v1 template];
  v20 = [v19 uniqueName];
  if ([v20 containsString:@"FastestWheelchairHalfMarathonWorkout"])
  {
LABEL_18:

    goto LABEL_19;
  }

  v72 = v19;
  v21 = [v1 template];
  v22 = [v21 uniqueName];
  if ([v22 containsString:@"BestWheelchair10KDuration"])
  {

    v19 = v72;
    goto LABEL_18;
  }

  v67 = v22;
  v69 = v21;
  v65 = [v1 template];
  v23 = [v65 uniqueName];
  if ([v23 containsString:@"TenKilometerWheelchairWorkout"])
  {
    v24 = 1;
  }

  else
  {
    v63 = [v1 template];
    v61 = [v63 uniqueName];
    if ([v61 containsString:@"BestWheelchair5KDuration"])
    {
      v24 = 1;
    }

    else
    {
      v59 = [v1 template];
      v57 = [v59 uniqueName];
      v24 = [v57 containsString:@"FiveKilometerWheelchairWorkout"];
    }
  }

  if (v24)
  {
    goto LABEL_7;
  }

  v25 = [v1 template];
  v26 = [v25 uniqueName];
  if ([v26 containsString:@"HalfMarathonWorkout"])
  {
LABEL_39:

    goto LABEL_7;
  }

  v27 = [v1 template];
  v28 = [v27 uniqueName];
  if ([v28 containsString:@"FastestHalfMarathonWorkout"])
  {
LABEL_38:

    goto LABEL_39;
  }

  v29 = [v1 template];
  v30 = [v29 uniqueName];
  if ([v30 containsString:@"MarathonWorkout"])
  {
LABEL_37:

    goto LABEL_38;
  }

  v31 = [v1 template];
  v32 = [v31 uniqueName];
  if ([v32 containsString:@"FastestMarathonWorkout"])
  {
LABEL_36:

    goto LABEL_37;
  }

  v73 = [v1 template];
  v33 = [v73 uniqueName];
  if ([v33 containsString:@"Best10KDuration"])
  {

    goto LABEL_36;
  }

  v70 = [v1 template];
  v68 = [v70 uniqueName];
  if ([v68 containsString:@"TenKilometerWorkout"])
  {
    v66 = 1;
  }

  else
  {
    v64 = [v1 template];
    v62 = [v64 uniqueName];
    if ([v62 containsString:@"Best5KDuration"])
    {
      v66 = 1;
    }

    else
    {
      v60 = [v1 template];
      v58 = [v60 uniqueName];
      v66 = [v58 containsString:@"FiveKilometerWorkout"];
    }
  }

  if (v66)
  {
    goto LABEL_7;
  }

  v34 = [v1 template];
  v35 = [v34 uniqueName];
  if ([v35 containsString:@"DuathlonWorkout"])
  {
    goto LABEL_55;
  }

  v36 = [v1 template];
  v37 = [v36 uniqueName];
  if ([v37 containsString:@"SprintTriathlonWorkout"])
  {
LABEL_54:

LABEL_55:
LABEL_56:
    v42 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v43 = [v42 localizedStringForKey:@"TRIATHLON_ACTIVITY_TYPE" value:&stru_2850CB9E8 table:@"Localizable"];
    goto LABEL_57;
  }

  v38 = [v1 template];
  v39 = [v38 uniqueName];
  if ([v39 containsString:@"FiftyKilometerTriathlonWorkout"])
  {
LABEL_53:

    goto LABEL_54;
  }

  v40 = [v1 template];
  v41 = [v40 uniqueName];
  if ([v41 containsString:@"HalfDistanceTriathlonWorkout"])
  {

    goto LABEL_53;
  }

  v71 = [v1 template];
  v44 = [v71 uniqueName];
  v74 = [v44 containsString:@"FullDistanceTriathlonWorkout"];

  if (v74)
  {
    goto LABEL_56;
  }

  v45 = [v1 template];
  v46 = [v45 uniqueName];
  v47 = [v46 isEqualToString:@"7WorkoutWeek"];

  if (v47)
  {
    v42 = [v1 template];
    v43 = [v42 uniqueName];
LABEL_57:
    v8 = v43;
LABEL_58:

    goto LABEL_8;
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v42 = *MEMORY[0x277CE8B78];
  v48 = [v42 countByEnumeratingWithState:&v75 objects:v79 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v76;
    while (2)
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v76 != v50)
        {
          objc_enumerationMutation(v42);
        }

        [*(*(&v75 + 1) + 8 * i) unsignedIntegerValue];
        v52 = _HKWorkoutActivityNameForActivityType();
        if (v52)
        {
          v53 = [v1 template];
          v54 = [v53 uniqueName];
          v55 = [v54 containsString:v52];

          if (v55)
          {
            v8 = FILocalizedNameForIndoorAgnosticActivityType();

            goto LABEL_58;
          }
        }
      }

      v49 = [v42 countByEnumeratingWithState:&v75 objects:v79 count:16];
      if (v49)
      {
        continue;
      }

      break;
    }
  }

  v56 = ACHLogDefault();
  if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
  {
    AAUILocalizedActivityTypeForAchievement_cold_1(v1);
  }

  v8 = &stru_2850CB9E8;
LABEL_8:

  return v8;
}

uint64_t __AAUISortAchievementsByDisplayOrder_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [a2 template];
  v7 = [v4 numberWithUnsignedInteger:{objc_msgSend(v6, "displayOrder")}];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v5 template];

  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v9, "displayOrder")}];
  v11 = [v7 compare:v10];

  return v11;
}

uint64_t AAUICompareAchievementsByMostRecentEarnedDate(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 relevantEarnedInstance];
  v5 = [v3 relevantEarnedInstance];

  if (!v4 || v5)
  {
    if (v4 || !v5)
    {
      v6 = [v4 compareEarnedDateWithEarnedInstance:v5];
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

uint64_t AAUICompareAchievements(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = AAUICompareAchievementsByMostRecentEarnedDate(v3, v4);
  if (!v5)
  {
    v6 = v3;
    v7 = v4;
    v8 = [v6 progress];
    if (v8 && (v9 = v8, [v7 progress], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      v11 = [v6 progress];
      v12 = [v7 progress];
      v5 = [v11 compare:v12];
    }

    else
    {
      v13 = [v6 progress];
      if (v13)
      {

        v5 = 0;
      }

      else
      {
        v14 = [v7 progress];

        if (v14)
        {
          v5 = -1;
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  return v5;
}

__n64 _matrix4x4_rotation(float a1, float32x4_t a2)
{
  v2 = vmulq_f32(a2, a2);
  *&v3 = v2.f32[2] + vaddv_f32(*v2.f32);
  *v2.f32 = vrsqrte_f32(v3);
  *v2.f32 = vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32)));
  v7 = vmulq_n_f32(a2, vmul_f32(*v2.f32, vrsqrts_f32(v3, vmul_f32(*v2.f32, *v2.f32))).f32[0]);
  v4 = __sincosf_stret(a1);
  v5 = v7;
  result.n64_f32[0] = v4.__cosval + (vmulq_f32(v5, v5).f32[0] * (1.0 - v4.__cosval));
  result.n64_f32[1] = vmuls_lane_f32(v4.__sinval, v7, 2) + (vmuls_lane_f32(v5.f32[0], *v5.f32, 1) * (1.0 - v4.__cosval));
  return result;
}

void sub_23E4A849C(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    sub_23E4DCD7C();

    sub_23E4A8580();
    sub_23E4A85D4();
    v5 = sub_23E4DCD3C();

    *a2 = v5 & 1;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_23E4A8580()
{
  result = qword_28110A418;
  if (!qword_28110A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110A418);
  }

  return result;
}

unint64_t sub_23E4A85D4()
{
  result = qword_28110A420;
  if (!qword_28110A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110A420);
  }

  return result;
}

void sub_23E4A8628()
{
  v1 = v0;
  v2 = 0;
  for (i = &unk_2850CB070; ; i += 2)
  {
    v4 = *(i - 1);
    v18 = v0;

    v4(&v17, &v18);

    if (v17)
    {
      break;
    }

    if (++v2 == 33)
    {
      v5 = sub_23E4DCEBC();
      v6 = *MEMORY[0x277CCC270];
      if (os_log_type_enabled(*MEMORY[0x277CCC270], v5))
      {
        v7 = v6;
        v8 = v1;
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v18 = v10;
        *v9 = 136315138;
        v11 = [v8 template];
        v12 = [v11 uniqueName];

        if (v12)
        {
          v13 = sub_23E4DCD7C();
          v15 = v14;

          v16 = sub_23E4B6768(v13, v15, &v18);

          *(v9 + 4) = v16;
          _os_log_impl(&dword_23E4A3000, v7, v5, "[AAUIAwardsDataProvider] Could not find unearned priority for template: %s", v9, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v10);
          MEMORY[0x23EF0BFA0](v10, -1, -1);
          MEMORY[0x23EF0BFA0](v9, -1, -1);
        }

        else
        {
          __break(1u);
        }
      }

      return;
    }
  }
}

uint64_t sub_23E4A87E8(void *a1, void *a2)
{
  v128 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345418, &unk_23E4E0060);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v122 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v123 = (&v118 - v6);
  v7 = sub_23E4DCB9C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v121 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v124 = &v118 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345420, &qword_23E4E0080);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v118 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v118 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v118 - v22;
  v24 = sub_23E4DCB1C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v125 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v127 = &v118 - v28;
  v29 = [a1 relevantEarnedInstance];
  if (!v29)
  {
    (*(v25 + 56))(v23, 1, 1, v24);
LABEL_7:
    v35 = &qword_27E345420;
    v36 = &qword_23E4E0080;
    v37 = v23;
LABEL_8:
    sub_23E4AC750(v37, v35, v36);
    v38 = v128;
LABEL_17:
    if ([a1 unearned] && !objc_msgSend(v38, sel_unearned))
    {
      return 1;
    }

    if ([a1 unearned] & 1) == 0 && (objc_msgSend(v38, sel_unearned))
    {
      return -1;
    }

    v45 = [a1 progress];
    v46 = 0.0;
    if (v45)
    {
      v47 = v45;
      v48 = [a1 goal];
      if (v48)
      {
        v49 = v48;
        [v47 _value];
        v51 = v50;
        [v49 _value];
        v53 = v52;

        v46 = v51 / v53;
      }

      else
      {
      }
    }

    v54 = [v38 progress];
    if (v54)
    {
      v55 = v54;
      v56 = [v38 goal];
      if (v56)
      {
        v57 = v56;
        [v55 _value];
        v59 = v58;
        [v57 _value];
        v61 = v60;

        if (v59 / v61 != v46)
        {
          if (v59 / v61 >= v46)
          {
            return 1;
          }

          return -1;
        }

        goto LABEL_32;
      }
    }

    if (v46 != 0.0)
    {
      if (v46 <= 0.0)
      {
        return 1;
      }

      return -1;
    }

LABEL_32:
    sub_23E4A8628();
    v63 = v62;
    sub_23E4A8628();
    if (v63 != v64)
    {
LABEL_40:
      sub_23E4A8628();
      v75 = v74;
      sub_23E4A8628();
      v77 = v75 < v76;
      goto LABEL_41;
    }

    v65 = [a1 section];
    v66 = sub_23E4DCD7C();
    v68 = v67;

    v69._countAndFlagsBits = v66;
    v69._object = v68;
    AAUIAwardsDataProviderSection.init(rawValue:)(v69);
    if (v129 != 2)
    {
      if (v129 != 3)
      {
        return -1;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345300, &qword_23E4DFCB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E4E0070;
      *(inited + 32) = a1;
      *(inited + 40) = v38;
      v71 = a1;
      v72 = v38;
      v73 = sub_23E4B0614(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      if (v73 >> 62)
      {
        if (sub_23E4DD07C())
        {
LABEL_37:
          if ((v73 & 0xC000000000000001) == 0)
          {
            if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_40;
            }

            goto LABEL_52;
          }

          goto LABEL_64;
        }
      }

      else if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

LABEL_68:

      return 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345300, &qword_23E4DFCB0);
    v85 = swift_initStackObject();
    *(v85 + 16) = xmmword_23E4E0070;
    *(v85 + 32) = a1;
    *(v85 + 40) = v38;
    v71 = a1;
    v86 = v38;
    v73 = sub_23E4B55A4(v85);
    swift_setDeallocating();
    swift_arrayDestroy();
    if (v73 >> 62)
    {
      result = sub_23E4DD07C();
      if (!result)
      {
        goto LABEL_68;
      }
    }

    else
    {
      result = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_68;
      }
    }

    if ((v73 & 0xC000000000000001) == 0)
    {
      if (!*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

LABEL_52:
      v87 = *(v73 + 32);
      goto LABEL_53;
    }

LABEL_64:
    v87 = MEMORY[0x23EF0AFF0](0, v73);
LABEL_53:
    v88 = v87;

    sub_23E4A5744();
    v89 = v71;
    v90 = sub_23E4DCF2C();

    if (v90)
    {
      return -1;
    }

    return 1;
  }

  v30 = v29;
  v126 = a1;
  v31 = [v29 earnedDateComponents];

  v119 = v7;
  v120 = v8;
  if (v31)
  {
    sub_23E4DCB0C();

    v32 = *(v25 + 56);
    v32(v21, 0, 1, v24);
  }

  else
  {
    v32 = *(v25 + 56);
    v32(v21, 1, 1, v24);
  }

  sub_23E4DB890(v21, v23);
  v33 = *(v25 + 48);
  v34 = v33(v23, 1, v24);
  a1 = v126;
  if (v34 == 1)
  {
    goto LABEL_7;
  }

  v39 = v127;
  v118 = *(v25 + 32);
  v118(v127, v23, v24);
  v38 = v128;
  v40 = [v128 relevantEarnedInstance];
  if (!v40)
  {
    (*(v25 + 8))(v39, v24);
    v32(v18, 1, 1, v24);
LABEL_16:
    a1 = v126;
    sub_23E4AC750(v18, &qword_27E345420, &qword_23E4E0080);
    goto LABEL_17;
  }

  v41 = v40;
  v42 = [v40 earnedDateComponents];

  if (v42)
  {
    sub_23E4DCB0C();

    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  v32(v15, v43, 1, v24);
  sub_23E4DB890(v15, v18);
  v44 = v33(v18, 1, v24);
  v38 = v128;
  if (v44 == 1)
  {
    (*(v25 + 8))(v127, v24);
    goto LABEL_16;
  }

  v79 = v125;
  v118(v125, v18, v24);
  v118 = OBJC_IVAR___AAUIAwardsDataProvider_calendar;
  v80 = v123;
  sub_23E4DCBDC();
  v81 = v120;
  v82 = *(v120 + 48);
  v83 = v119;
  if (v82(v80, 1, v119) == 1)
  {
    v84 = *(v25 + 8);
    v84(v79, v24);
    v84(v127, v24);
    sub_23E4AC750(v80, &qword_27E345418, &unk_23E4E0060);
    a1 = v126;
    goto LABEL_17;
  }

  v123 = *(v81 + 32);
  v123(v124, v80, v83);
  v91 = v122;
  sub_23E4DCBDC();
  v92 = v82(v91, 1, v83);
  a1 = v126;
  if (v92 == 1)
  {
    (*(v120 + 8))(v124, v83);
    v93 = *(v25 + 8);
    v93(v79, v24);
    v93(v127, v24);
    v35 = &qword_27E345418;
    v36 = &unk_23E4E0060;
    v37 = v91;
    goto LABEL_8;
  }

  v94 = v121;
  v123(v121, v91, v83);
  v95 = v124;
  v96 = sub_23E4DCB7C();
  if (v96)
  {
    v97 = *(v120 + 8);
    v98 = v96;
    v97(v94, v83);
    v97(v95, v83);
    v99 = *(v25 + 8);
    v99(v125, v24);
    v99(v127, v24);
    return v98;
  }

  sub_23E4D7188();
  v101 = v100;
  v102 = v128;
  sub_23E4D7188();
  if (v101 != v103)
  {
    sub_23E4D7188();
    v112 = v111;
    sub_23E4D7188();
    v114 = v113;
    v115 = *(v120 + 8);
    v116 = v119;
    v115(v94, v119);
    v115(v95, v116);
    v117 = *(v25 + 8);
    v117(v125, v24);
    v117(v127, v24);
    v77 = v112 < v114;
LABEL_41:
    if (v77)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  v104 = [a1 template];
  v105 = [v104 displayOrder];

  v106 = [v102 template];
  v107 = [v106 displayOrder];

  v108 = *(v120 + 8);
  v109 = v119;
  v108(v94, v119);
  v108(v95, v109);
  v110 = *(v25 + 8);
  v110(v125, v24);
  v110(v127, v24);
  if (v105 < v107)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_23E4A94CC(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    sub_23E4DCD7C();

    sub_23E4A8580();
    sub_23E4A85D4();
    v5 = sub_23E4DCD3C();

    *a2 = v5 & 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_23E4A95B4(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    sub_23E4DCD7C();

    sub_23E4A8580();
    sub_23E4A85D4();
    v5 = sub_23E4DCD3C();

    *a2 = v5 & 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_23E4A96AC(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    sub_23E4DCD7C();

    sub_23E4A8580();
    sub_23E4A85D4();
    v5 = sub_23E4DCD3C();

    *a2 = v5 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23E4A9790(uint64_t a1, uint64_t a2)
{
  v3 = sub_23E4DCAEC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_23E4DCADC();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_23E4A988C(uint64_t a1, const char *a2)
{
  v3 = sub_23E4DCCCC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_23E4A9B6C();
    (*(v4 + 16))(v6, v9, v3);
    v10 = sub_23E4DCCAC();
    v11 = sub_23E4DCECC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23E4A3000, v10, v11, a2, v12, 2u);
      MEMORY[0x23EF0BFA0](v12, -1, -1);
    }

    v13 = (*(v4 + 8))(v6, v3);
    (*((*MEMORY[0x277D85000] & *v8) + 0x2E8))(v13);
  }
}

void sub_23E4A9A88(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    sub_23E4DCD7C();

    sub_23E4A8580();
    sub_23E4A85D4();
    v5 = sub_23E4DCD3C();

    *a2 = v5 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23E4A9B90(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_23E4DCCCC();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23E4A9C4C(uint64_t a1, uint64_t a2)
{
  v5 = sub_23E4DCCDC();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_23E4DCCFC();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR___AAUIAwardsDataProvider_awardQueue);
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a1;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E4AADB0;
  aBlock[3] = a2;
  v12 = _Block_copy(aBlock);

  sub_23E4DCCEC();
  v17 = MEMORY[0x277D84F90];
  sub_23E4A9F7C(&qword_28110A428, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345358, &qword_23E4DFD70);
  sub_23E4AA98C(&qword_28110A408, &qword_27E345358, &qword_23E4DFD70, MEMORY[0x277D83970]);
  sub_23E4DCF6C();
  MEMORY[0x23EF0AF20](0, v10, v7, v12);
  _Block_release(v12);
  (*(v16 + 8))(v7, v5);
  (*(v8 + 8))(v10, v15);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E4A9F7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23E4A9FC8(id *a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t *a6, void *a7)
{
  v101 = a7;
  v13 = sub_23E4DCCCC();
  v98 = *(v13 - 8);
  v99 = v13;
  MEMORY[0x28223BE20](v13);
  v100 = &v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = [*a1 section];
  v17 = sub_23E4DCD7C();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  LOBYTE(v21) = AAUIAwardsDataProviderSection.init(rawValue:)(v20);
  v22 = v102[0];
  if (v102[0] == 7)
  {
    return;
  }

  v23 = *(a4 + OBJC_IVAR___AAUIAwardsDataProvider_visibilityEvaluator);
  v24 = MEMORY[0x277D85000];
  v25 = (*((*MEMORY[0x277D85000] & *a4) + 0x298))(v21);
  sub_23E4AADF4(a2, a3, v23, v25 & 1, a5 & 1);
  v27 = v26;
  if (v26)
  {
    if ((*((*v24 & *a4) + 0x2B0))())
    {
      v28 = [v15 isRingsBased] ^ 1;
    }

    else
    {
      v28 = 1;
    }

    v96 = v28;
  }

  else
  {
    v96 = 0;
  }

  v29 = *((*v24 & *a4) + 0x190);
  v30 = v29();
  if (*(v30 + 16))
  {
    v31 = v22;
    v32 = sub_23E4ABDC4(v22);
    if (v33)
    {
      v34 = *(*(v30 + 56) + 8 * v32);
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v34 = MEMORY[0x277D84F90];
    v31 = v22;
  }

  v104 = v34;
  v36 = (v29)(v35);
  v37 = *(v36 + 16);
  v97 = v31;
  if (v37 && (v38 = sub_23E4ABDC4(v31), (v39 & 1) != 0))
  {
    v40 = *(*(v36 + 56) + 8 * v38);

    v41 = [v15 template];
    v42 = [v41 uniqueName];

    if (!v42)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v43 = sub_23E4DCD7C();
    v45 = v44;

    v46 = sub_23E4AC968(0, &qword_28110A3F8, 0x277CE8CB0);
    v47 = sub_23E4AC68C(v43, v45, v40, v46);
    v49 = v48;

    if ((v49 & 1) == 0)
    {
    }
  }

  else
  {
  }

  v50 = *a6;

  v51 = [v15 template];
  v52 = [v51 uniqueName];

  if (!v52)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v53 = sub_23E4DCD7C();
  v55 = v54;

  v56 = sub_23E4AC968(0, &qword_28110A3F8, 0x277CE8CB0);
  v57 = sub_23E4AC68C(v53, v55, v50, v56);
  v59 = v58;

  if (v27)
  {
    v60 = v15;
    MEMORY[0x23EF0AE40]();
    if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23E4DCE6C();
    }

    sub_23E4DCE8C();
    v61 = v100;
    if (v96)
    {
      if (v59)
      {
        v62 = v60;
        MEMORY[0x23EF0AE40]();
        v63 = v97;
        if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23E4DCE6C();
        }

        sub_23E4DCE8C();
        v64 = *v101;
        sub_23E4DD17C();
        sub_23E4DCDAC();
        v65 = sub_23E4DD18C();
        v66 = -1 << *(v64 + 32);
        v67 = v65 & ~v66;
        if ((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
        {
          v68 = ~v66;
          while (*(*(v64 + 48) + v67) > 3u || *(*(v64 + 48) + v67))
          {
            v69 = sub_23E4DD12C();

            if (v69)
            {
              goto LABEL_50;
            }

            v67 = (v67 + 1) & v68;
            if (((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
LABEL_36:
          v70 = v101;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v102 = *v70;
          sub_23E4AD31C(0, v67, isUniquelyReferenced_nonNull_native);
          *v70 = *v102;
        }

        goto LABEL_50;
      }

      v85 = *a6;
      v86 = v60;
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *a6 = v85;
      v63 = v97;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v85 & 0x8000000000000000) != 0 || (v85 & 0x4000000000000000) != 0)
      {
        v85 = sub_23E4B6308(v85);
        *a6 = v85;
      }

      if ((v57 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v57 < *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v88 = *((v85 & 0xFFFFFFFFFFFFFF8) + 8 * v57 + 0x20);
        *((v85 & 0xFFFFFFFFFFFFFF8) + 8 * v57 + 0x20) = v86;

        goto LABEL_50;
      }

      __break(1u);
      goto LABEL_58;
    }

    v72 = sub_23E4A9B6C();
    v74 = v98;
    v73 = v99;
    (*(v98 + 16))(v61, v72, v99);
    v75 = v60;
    v76 = sub_23E4DCCAC();
    v96 = sub_23E4DCECC();
    if (!os_log_type_enabled(v76, v96))
    {

      (*(v74 + 8))(v61, v73);
      v63 = v97;
      if (v59)
      {
        goto LABEL_50;
      }

      goto LABEL_41;
    }

    v77 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *v102 = v95;
    *v77 = 136315138;
    v78 = [v75 &selRef_subarrayWithRange_ + 2];
    v79 = [v78 uniqueName];

    if (!v79)
    {
LABEL_60:
      __break(1u);
      return;
    }

    v80 = sub_23E4DCD7C();
    v82 = v81;

    v83 = sub_23E4B6768(v80, v82, v102);

    *(v77 + 4) = v83;
    _os_log_impl(&dword_23E4A3000, v76, v96, "[%s] we're currently paused, not showing in go for it", v77, 0xCu);
    v84 = v95;
    __swift_destroy_boxed_opaque_existential_0(v95);
    MEMORY[0x23EF0BFA0](v84, -1, -1);
    MEMORY[0x23EF0BFA0](v77, -1, -1);

    (*(v98 + 8))(v100, v99);
  }

  v63 = v97;
  if ((v59 & 1) == 0)
  {
LABEL_41:
  }

LABEL_50:
  v89 = v104;
  if (v104 >> 62)
  {
    if (sub_23E4DD07C())
    {
      goto LABEL_52;
    }
  }

  else if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_52:
    sub_23E4AC9B4(v102, v63);
    v90 = (*((*MEMORY[0x277D85000] & *a4) + 0x1A0))(v102);
    v92 = v91;
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v103 = *v92;
    *v92 = 0x8000000000000000;
    sub_23E4ACCCC(v89, v63, v93);
    *v92 = v103;
    v90(v102, 0);
    return;
  }
}

uint64_t sub_23E4AA98C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void *sub_23E4AA9D4(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v38 = a4;
  v9 = sub_23E4DCD0C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v5 + OBJC_IVAR___AAUIAwardsDataProvider_awardQueue);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  v15 = sub_23E4DCD1C();
  v17 = *(v10 + 8);
  v16 = (v10 + 8);
  v18 = v17(v12, v9);
  if ((v15 & 1) == 0)
  {
    goto LABEL_24;
  }

  v42 = MEMORY[0x277D84FA0];
  v16 = MEMORY[0x277D85000];
  v19 = (*((*MEMORY[0x277D85000] & *v5) + 0x190))(v18);
  if (*(v19 + 16) && (v20 = sub_23E4ABDC4(0), (v21 & 1) != 0))
  {
    v12 = *(*(v19 + 56) + 8 * v20);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v41 = v12;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23E4DD07C())
  {
    v23 = v5;
    if (!i)
    {
      break;
    }

    v37 = v5;
    v12 = 0;
    v16 = (a1 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x23EF0AFF0](v12, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v24 = *(a1 + 8 * v12 + 32);
      }

      v5 = v24;
      v25 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v39 = v24;
      sub_23E4A9FC8(&v39, a2, a3, v23, v38 & 1, &v41, &v42);

      ++v12;
      if (v25 == i)
      {
        v12 = v41;
        v16 = MEMORY[0x277D85000];
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_17:

  v26 = *((*v16 & *v23) + 0x1A0);

  v27 = v26(&v39);
  v29 = v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v29;
  *v29 = 0x8000000000000000;
  sub_23E4ACCCC(v12, 0, isUniquelyReferenced_nonNull_native);
  *v29 = v40;
  v27(&v39, 0);
  v31 = v42;
  v32 = *(v42 + 16);
  if (!v32)
  {

    return MEMORY[0x277D84F90];
  }

  v33 = sub_23E4ADA14(*(v42 + 16), 0, &qword_27E3452F8, &qword_23E4DFCA8);
  v34 = sub_23E4ADA90(&v39, v33 + 32, v32, v31);
  v35 = v39;

  result = sub_23E4ADB8C(v35);
  if (v34 == v32)
  {

    return v33;
  }

  __break(1u);
  return result;
}

uint64_t sub_23E4AADB0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_23E4AADF4(uint64_t a1, uint64_t a2, void *a3, int a4, int a5)
{
  v6 = v5;
  v86 = a5;
  v84 = a4;
  v85 = a3;
  v87 = a1;
  v8 = sub_23E4DCB9C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23E4DCCCC();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v82 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v82 - v20;
  if (([v6 hasClientRequiredURLs] & 1) == 0)
  {
    v42 = sub_23E4A9B6C();
    (*(v13 + 16))(v21, v42, v12);
    v43 = v6;
    v44 = sub_23E4DCCAC();
    v45 = sub_23E4DCECC();
    if (!os_log_type_enabled(v44, v45))
    {

      (*(v13 + 8))(v21, v12);
      return;
    }

    v46 = v12;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v90[0] = v48;
    *v47 = 136315138;
    v49 = [v43 template];
    v50 = [v49 uniqueName];

    if (v50)
    {
      v51 = sub_23E4DCD7C();
      v53 = v52;

      v54 = sub_23E4B6768(v51, v53, v90);

      *(v47 + 4) = v54;
      _os_log_impl(&dword_23E4A3000, v44, v45, "[%s] is missing client required URLs, not showing", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x23EF0BFA0](v48, -1, -1);
      MEMORY[0x23EF0BFA0](v47, -1, -1);

      (*(v13 + 8))(v21, v46);
      return;
    }

    goto LABEL_33;
  }

  v82 = a2;
  v83 = v12;
  v22 = [v6 template];
  v23 = [v22 uniqueName];

  if (!v23)
  {
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    return;
  }

  v24 = sub_23E4DCD7C();
  v26 = v25;

  v90[0] = v24;
  v90[1] = v26;
  v88 = 0xD000000000000010;
  v89 = 0x800000023E4E0F10;
  sub_23E4ABBE4();
  v27 = sub_23E4DCF5C();

  if (v27)
  {
    if ([v6 unearned])
    {
      sub_23E4DCB8C();
      v28 = sub_23E4DCB5C();
      (*(v9 + 8))(v11, v8);
      IsEarnable = AAUIMonthlyChallengeIsEarnable(v6, v28);

      if ((IsEarnable & 1) == 0)
      {
        v70 = sub_23E4A9B6C();
        v56 = v83;
        (*(v13 + 16))(v19, v70, v83);
        v71 = v6;
        v72 = sub_23E4DCCAC();
        v73 = sub_23E4DCECC();
        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v90[0] = v75;
          *v74 = 136315138;
          v76 = [v71 template];
          v77 = [v76 uniqueName];

          if (v77)
          {
            v78 = sub_23E4DCD7C();
            v80 = v79;

            v81 = sub_23E4B6768(v78, v80, v90);

            *(v74 + 4) = v81;
            _os_log_impl(&dword_23E4A3000, v72, v73, "[%s] is not earnable anymore, not showing", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v75);
            MEMORY[0x23EF0BFA0](v75, -1, -1);
            MEMORY[0x23EF0BFA0](v74, -1, -1);

            (*(v13 + 8))(v19, v83);
            return;
          }

          goto LABEL_35;
        }

        v68 = *(v13 + 8);
        v69 = v19;
        goto LABEL_31;
      }
    }
  }

  v30 = [v6 section];
  v31 = sub_23E4DCD7C();
  v33 = v32;

  v34 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v34 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
    v55 = sub_23E4A9B6C();
    v56 = v83;
    (*(v13 + 16))(v16, v55, v83);
    v57 = v6;
    v58 = sub_23E4DCCAC();
    v59 = sub_23E4DCECC();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v90[0] = v61;
      *v60 = 136315138;
      v62 = [v57 template];
      v63 = [v62 uniqueName];

      if (v63)
      {
        v64 = sub_23E4DCD7C();
        v66 = v65;

        v67 = sub_23E4B6768(v64, v66, v90);

        *(v60 + 4) = v67;
        _os_log_impl(&dword_23E4A3000, v58, v59, "[%s] has no section set, not showing", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v61);
        MEMORY[0x23EF0BFA0](v61, -1, -1);
        MEMORY[0x23EF0BFA0](v60, -1, -1);

        (*(v13 + 8))(v16, v83);
        return;
      }

      goto LABEL_34;
    }

    v68 = *(v13 + 8);
    v69 = v16;
LABEL_31:
    v68(v69, v56);
    return;
  }

  if ([v6 unearned])
  {
    v35 = [v6 template];
    v36 = sub_23E4ABC88();

    if (v36)
    {
      v37 = [v6 progress];
      v38 = v82;
      if (v37)
      {
        v39 = v37;
        [v37 _value];
      }

      v40 = [v6 goal];
      if (v40)
      {
        v41 = v40;
        [v40 _value];
      }
    }

    else
    {
      v38 = v82;
    }

    [v85 unearnedAchievementIsVisibleNow:v6 activityMoveMode:v87 experienceType:v38 isFitnessPlusSubscriber:v84 & 1 isWheelchairUser:v86 & 1];
  }
}

uint64_t sub_23E4AB64C()
{
  v1 = OBJC_IVAR___AAUIAwardsDataProvider_isFitnessPlusSubscriber;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_23E4AB6C4(uint64_t a1)
{
  v1 = sub_23E4DCCCC();
  MEMORY[0x28223BE20](v1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *Strong) + 0x168))(0);
    v5 = MEMORY[0x277D84F90];
    (*((*v4 & *v3) + 0x180))(MEMORY[0x277D84F90]);
    v6 = sub_23E4AC114(v5);
    (*((*v4 & *v3) + 0x198))(v6);
    v7 = sub_23E4AC114(v5);
    (*((*v4 & *v3) + 0x1B0))(v7);
    v8 = sub_23E4AC208(v5);
    (*((*v4 & *v3) + 0x1C8))(v8);
    (*((*v4 & *v3) + 0x1E0))(v5);
    v9 = sub_23E4DCD6C();
    v10 = [objc_opt_self() mainBundle];
    v11 = [v10 bundleIdentifier];

    if (v11)
    {
      AppIntegerValue = CFPreferencesGetAppIntegerValue(v9, v11, 0);
    }

    else
    {
      AppIntegerValue = 0;
    }

    *(v3 + OBJC_IVAR___AAUIAwardsDataProvider_overrideDisplayState) = AppIntegerValue;
    v13 = *((*v4 & *v3) + 0x268);
    v14 = v13();
    if (v14)
    {
      v15 = v14;
      (*((*v4 & *v14) + 0x68))();
    }

    v16 = v13();
    if (v16)
    {
      v17 = v16;
      (*((*v4 & *v16) + 0x60))();
    }
  }
}

unint64_t sub_23E4ABBE4()
{
  result = qword_28110A410;
  if (!qword_28110A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110A410);
  }

  return result;
}

uint64_t sub_23E4ABC38(char a1)
{
  v3 = OBJC_IVAR___AAUIAwardsDataProvider_initialAwardsBatchDelivered;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

BOOL sub_23E4ABC88()
{
  v1 = [v0 goalExpression];
  if (v1 || (v1 = [v0 graceGoalExpression]) != 0)
  {

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  v3 = [v0 progressExpression];
  if (v3 || (v3 = [v0 graceProgressExpression]) != 0)
  {

    return 1;
  }

  return v2 != 0;
}

ActivityAchievementsUI::AAUIAwardsDataProviderSection_optional __swiftcall AAUIAwardsDataProviderSection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E4DD0CC();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_23E4ABDC4(char a1)
{
  sub_23E4B50A8();
  v1 = sub_23E4DCD2C();
  return sub_23E4AC04C(a1, v1);
}

void sub_23E4ABE38(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    sub_23E4DCD7C();

    sub_23E4A8580();
    sub_23E4A85D4();
    v5 = sub_23E4DCD3C();

    *a2 = v5 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23E4ABF1C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

void sub_23E4ABF70(id *a1@<X0>, _BYTE *a4@<X8>)
{
  v5 = [*a1 template];
  v6 = [v5 uniqueName];

  if (v6)
  {
    sub_23E4DCD7C();

    sub_23E4A8580();
    sub_23E4A85D4();
    v7 = sub_23E4DCD3C();

    *a4 = v7 & 1;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_23E4AC04C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_23E4B5108();
    do
    {
      if (sub_23E4DCD5C())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23E4AC114(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3453E8, "@(");
    v3 = sub_23E4DD0BC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_23E4ABDC4(v5);
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

unint64_t sub_23E4AC208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3453F0, "\\(");
    v3 = sub_23E4DD0BC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23E4CED74(v5, v6);
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

void sub_23E4AC364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v17 = v6;
    while (1)
    {
      v10 = *v6;
      v11 = v8;
      v12 = v10;
      v13 = sub_23E4A87E8(v11, v12);

      if (v13 != -1)
      {
LABEL_4:
        ++v4;
        v6 = v17 + 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void *sub_23E4AC468()
{
  v1 = OBJC_IVAR___AAUIAwardsDataProvider_query;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_23E4AC4E0(id *a1@<X0>, uint64_t (*a2)(void)@<X1>, _BYTE *a3@<X8>)
{
  v5 = [*a1 template];
  LOBYTE(a2) = a2();

  *a3 = a2;
}

void sub_23E4AC568(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    sub_23E4DCD7C();

    sub_23E4A8580();
    sub_23E4A85D4();
    v5 = sub_23E4DCD3C();

    *a2 = v5 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23E4AC68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23E4DCE9C();
  swift_getWitnessTable();
  sub_23E4DCEAC();
  return v5;
}

uint64_t sub_23E4AC750(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23E4AC7B0(id *a1)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = [*a1 template];
  v5 = [v4 uniqueName];

  if (v5)
  {
    v6 = sub_23E4DCD7C();
    v8 = v7;

    if (v6 == v3 && v8 == v2)
    {
      v10 = 1;
    }

    else
    {
      v10 = sub_23E4DD12C();
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_23E4AC884(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    sub_23E4DCD7C();

    sub_23E4A8580();
    sub_23E4A85D4();
    v5 = sub_23E4DCD3C();

    *a2 = v5 & 1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_23E4AC968(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_23E4AC9B4(_BYTE *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = sub_23E4ACE84(*(*v2 + 40), a2);
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 <= 2)
      {
        if (*(*(v4 + 48) + v7))
        {
          if (v9 == 1)
          {
            v10 = 0x5954495649544341;
          }

          else
          {
            v10 = 0x5354554F4B524F57;
          }

          v11 = 0xE800000000000000;
        }

        else
        {
          v10 = 0x495F524F465F4F47;
          v11 = 0xE900000000000054;
        }
      }

      else if (*(*(v4 + 48) + v7) > 4u)
      {
        if (v9 == 5)
        {
          v10 = 0xD000000000000012;
          v11 = 0x800000023E4E09E0;
        }

        else
        {
          v10 = 0x54495445504D4F43;
          v11 = 0xEC000000534E4F49;
        }
      }

      else
      {
        if (v9 == 3)
        {
          v10 = 0x5F5353454E544946;
        }

        else
        {
          v10 = 0x5F444554494D494CLL;
        }

        if (v9 == 3)
        {
          v11 = 0xEC00000053554C50;
        }

        else
        {
          v11 = 0xEF4E4F4954494445;
        }
      }

      v12 = 0xD000000000000012;
      if (v3 != 5)
      {
        v12 = 0x54495445504D4F43;
      }

      v13 = 0xEC000000534E4F49;
      if (v3 == 5)
      {
        v13 = 0x800000023E4E09E0;
      }

      v14 = 0x5F5353454E544946;
      if (v3 != 3)
      {
        v14 = 0x5F444554494D494CLL;
      }

      v15 = 0xEF4E4F4954494445;
      if (v3 == 3)
      {
        v15 = 0xEC00000053554C50;
      }

      if (v3 <= 4u)
      {
        v12 = v14;
        v13 = v15;
      }

      v16 = 0x5954495649544341;
      if (v3 != 1)
      {
        v16 = 0x5354554F4B524F57;
      }

      v17 = 0xE800000000000000;
      if (!v3)
      {
        v16 = 0x495F524F465F4F47;
        v17 = 0xE900000000000054;
      }

      v18 = v3 <= 2u ? v16 : v12;
      v19 = v3 <= 2u ? v17 : v13;
      if (v10 == v18 && v11 == v19)
      {
        break;
      }

      v20 = sub_23E4DD12C();

      if (v20)
      {
        goto LABEL_46;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

LABEL_46:
    result = 0;
    LOBYTE(v3) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_44:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v23;
    sub_23E4AD31C(v3, v7, isUniquelyReferenced_nonNull_native);
    *v23 = v25;
    result = 1;
  }

  *a1 = v3;
  return result;
}

unint64_t sub_23E4ACCCC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23E4ABDC4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23E4AD684(v14, a3 & 1);
      result = sub_23E4ABDC4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_23E4DD15C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23E4B515C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_23E4ACE84(uint64_t a1, unsigned __int8 a2)
{
  sub_23E4DD17C();
  sub_23E4DCDAC();

  return sub_23E4DD18C();
}

uint64_t sub_23E4ACFD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345400, "|(");
  result = sub_23E4DCF9C();
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_23E4DD17C();
      sub_23E4DCDAC();

      result = sub_23E4DD18C();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
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

uint64_t sub_23E4AD31C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_51;
  }

  if (a3)
  {
    sub_23E4ACFD0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_23E4D3ADC();
      goto LABEL_51;
    }

    sub_23E4D3C1C(v6 + 1);
  }

  v8 = *v3;
  result = sub_23E4ACE84(*(*v3 + 40), v5);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v8 + 48) + a2);
      if (v11 <= 2)
      {
        if (*(*(v8 + 48) + a2))
        {
          if (v11 == 1)
          {
            v12 = 0x5954495649544341;
          }

          else
          {
            v12 = 0x5354554F4B524F57;
          }

          v13 = 0xE800000000000000;
        }

        else
        {
          v12 = 0x495F524F465F4F47;
          v13 = 0xE900000000000054;
        }
      }

      else if (*(*(v8 + 48) + a2) > 4u)
      {
        if (v11 == 5)
        {
          v12 = 0xD000000000000012;
          v13 = 0x800000023E4E09E0;
        }

        else
        {
          v12 = 0x54495445504D4F43;
          v13 = 0xEC000000534E4F49;
        }
      }

      else
      {
        if (v11 == 3)
        {
          v12 = 0x5F5353454E544946;
        }

        else
        {
          v12 = 0x5F444554494D494CLL;
        }

        if (v11 == 3)
        {
          v13 = 0xEC00000053554C50;
        }

        else
        {
          v13 = 0xEF4E4F4954494445;
        }
      }

      v14 = 0xD000000000000012;
      if (v5 != 5)
      {
        v14 = 0x54495445504D4F43;
      }

      v15 = 0xEC000000534E4F49;
      if (v5 == 5)
      {
        v15 = 0x800000023E4E09E0;
      }

      v16 = 0x5F5353454E544946;
      if (v5 != 3)
      {
        v16 = 0x5F444554494D494CLL;
      }

      v17 = 0xEF4E4F4954494445;
      if (v5 == 3)
      {
        v17 = 0xEC00000053554C50;
      }

      if (v5 <= 4u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0x5954495649544341;
      if (v5 != 1)
      {
        v18 = 0x5354554F4B524F57;
      }

      v19 = 0xE800000000000000;
      if (!v5)
      {
        v18 = 0x495F524F465F4F47;
        v19 = 0xE900000000000054;
      }

      v20 = v5 <= 2u ? v18 : v14;
      v21 = v5 <= 2u ? v19 : v15;
      if (v12 == v20 && v13 == v21)
      {
        goto LABEL_54;
      }

      v22 = sub_23E4DD12C();

      if (v22)
      {
        goto LABEL_55;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_51:
  v23 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + a2) = v5;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_54:

LABEL_55:
  result = sub_23E4DD14C();
  __break(1u);
  return result;
}

uint64_t sub_23E4AD684(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3453E8, "@(");
  v30 = v4;
  result = sub_23E4DD0AC();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = *(*(v5 + 56) + 8 * v22);
      if ((v30 & 1) == 0)
      {
      }

      sub_23E4DD17C();
      sub_23E4DCDAC();

      result = sub_23E4DD18C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      *(*(v7 + 56) + 8 * v18) = v24;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_16;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_23E4ADA14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

void *sub_23E4ADA90(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_23E4ADB98(uint64_t a1)
{
  v2 = v1;
  v32[1] = *MEMORY[0x277D85DE8];
  v4 = sub_23E4DCD0C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v30[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v2 + OBJC_IVAR___AAUIAwardsDataProvider_awardQueue);
  *v7 = v8;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v9 = v8;
  LOBYTE(v8) = sub_23E4DCD1C();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
  }

  v31 = MEMORY[0x277D84F90];
  v32[0] = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D85000];
  v11 = *((*MEMORY[0x277D85000] & *v2) + 0x320);
  v29 = a1;
  v12 = v11(a1);
  sub_23E4B4AF0(v12, &v31, v32);

  v13 = *(v2 + OBJC_IVAR___AAUIAwardsDataProvider_healthStore);
  v30[0] = 0;
  v14 = [v13 activityMoveModeWithError_];
  if (v14)
  {
    v15 = v30[0];
    v16 = [v14 activityMoveMode];
  }

  else
  {
    v17 = v30[0];
    v18 = sub_23E4DCB3C();

    swift_willThrow();
    v16 = 1;
  }

  v19 = FIExperienceTypeWithHealthStore();
  v30[0] = 0;
  v20 = [v13 wheelchairUseWithError_];
  if (v20)
  {
    v21 = v30[0];
    v22 = [v20 wheelchairUse] == 2;
  }

  else
  {
    v23 = v30[0];
    v24 = sub_23E4DCB3C();

    swift_willThrow();
    v22 = 0;
  }

  if (v19 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v19;
  }

  v30[0] = (*((*v10 & *v2) + 0x330))(v31, v16, v25, v22);
  v26 = (*((*v10 & *v2) + 0x338))(v32[0], v16, v25, v22);
  sub_23E4AFAF0(v26);
  sub_23E4AFBE4();
  v27 = sub_23E4B6D90();
  v28 = (*((*v10 & *v2) + 0x328))();
  (*((*v10 & *v2) + 0x2F0))();
  (*((*v10 & *v2) + 0x348))(v29, MEMORY[0x277D84F90], v30[0], MEMORY[0x277D84F90], v27 & 1, v28 & 1);
}

void sub_23E4AE028(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    sub_23E4DCD7C();

    sub_23E4A8580();
    sub_23E4A85D4();
    v5 = sub_23E4DCD3C();

    *a2 = v5 & 1;
  }

  else
  {
    __break(1u);
  }
}

void *sub_23E4AE110(unint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v183 = a2;
  v184 = a3;
  v8 = sub_23E4DCD0C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v5 + OBJC_IVAR___AAUIAwardsDataProvider_awardQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v13 = v12;
  LOBYTE(v12) = sub_23E4DCD1C();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    goto LABEL_186;
  }

  v188 = MEMORY[0x277D84FA0];
  if (a1 >> 62)
  {
    goto LABEL_187;
  }

  v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_188;
  }

LABEL_4:
  v15 = 0;
  v166 = 0;
  v16 = *((*MEMORY[0x277D85000] & *v5) + 0x298);
  v181 = (*MEMORY[0x277D85000] & *v5) + 664;
  v182 = v16;
  v179 = OBJC_IVAR___AAUIAwardsDataProvider_visibilityEvaluator;
  v168 = OBJC_IVAR___AAUIAwardsDataProvider_calendar;
  v180 = a1 & 0xC000000000000001;
  v172 = a1 & 0xFFFFFFFFFFFFFF8;
  v176 = a1;
  v171 = a1 + 32;
  v170 = 0x800000023E4E09E0;
  v167 = xmmword_23E4DFBA0;
  v169 = a4;
  v178 = v14;
  while (1)
  {
    if (v180)
    {
      v21 = MEMORY[0x23EF0AFF0](v15, v176);
    }

    else
    {
      if (v15 >= *(v172 + 16))
      {
        goto LABEL_182;
      }

      v21 = *(v171 + 8 * v15);
    }

    v22 = v21;
    v23 = __OFADD__(v15++, 1);
    if (v23)
    {
      goto LABEL_181;
    }

    v24 = *(v5 + v179);
    v25 = v182();
    sub_23E4AADF4(v183, v184, v24, v25 & 1, a4 & 1);
    v27 = v26;
    v28 = [v22 section];
    sub_23E4DCD7C();
    a1 = v29;

    v30 = sub_23E4DD0CC();

    if (v30 > 6 || (v27 & 1) == 0)
    {
      goto LABEL_7;
    }

    v31 = [v22 relevantEarnedInstance];
    v175 = v24;
    if (v31)
    {
      v32 = v31;
      v33 = [v31 externalIdentifier];

      if (v33)
      {
        break;
      }
    }

LABEL_34:
    v56 = *((*MEMORY[0x277D85000] & *v5) + 0x190);
    v173 = (*MEMORY[0x277D85000] & *v5) + 400;
    v57 = v56();
    v58 = *(v57 + 16);
    v174 = v56;
    if (v58 && (v59 = sub_23E4ABDC4(v30), (v60 & 1) != 0))
    {
      v61 = *(*(v57 + 56) + 8 * v59);

      v187 = v61;
    }

    else
    {

      v61 = MEMORY[0x277D84F90];
      v187 = MEMORY[0x277D84F90];
    }

    v63 = (*((*MEMORY[0x277D85000] & *v5) + 0x1A8))(v62);
    v64 = *(v63 + 16);
    v177 = v61;
    if (v64 && (v65 = sub_23E4ABDC4(v30), (v66 & 1) != 0))
    {
      v67 = *(*(v63 + 56) + 8 * v65);

      v185 = v67;

      v68 = [v22 template];
      v69 = [v68 uniqueName];

      if (!v69)
      {
        goto LABEL_200;
      }

      v70 = sub_23E4DCD7C();
      v72 = v71;

      v73 = sub_23E4AC968(0, &qword_28110A3F8, 0x277CE8CB0);
      a1 = sub_23E4AC68C(v70, v72, v67, v73);
      v75 = v74;

      v76 = v22;
      if (v75)
      {
        MEMORY[0x23EF0AE40]();
        if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23E4DCE6C();
        }

        sub_23E4DCE8C();
      }

      else
      {
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v67 < 0 || (v67 & 0x4000000000000000) != 0)
        {
          v67 = sub_23E4B6308(v67);
        }

        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_193;
        }

        if (a1 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_194;
        }

        v79 = *((v67 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
        *((v67 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20) = v76;
      }

      a1 = v5;

      v186[0] = sub_23E4B3800(v80);
      v81 = v166;
      sub_23E4B80C4(v186, a1);
      v166 = v81;
      if (v81)
      {
        goto LABEL_205;
      }

      v82 = v186[0];
      a4 = v186[0] < 0 || (v186[0] & 0x4000000000000000) != 0;
      if (a4)
      {
        v159 = sub_23E4DD07C();
        if (sub_23E4DD07C() < 0)
        {
          goto LABEL_202;
        }

        if (v159 >= 6)
        {
          v160 = 6;
        }

        else
        {
          v160 = v159;
        }

        if (v159 >= 0)
        {
          a1 = v160;
        }

        else
        {
          a1 = 6;
        }

        if (sub_23E4DD07C() < a1)
        {
          goto LABEL_185;
        }
      }

      else
      {
        v83 = v186[0][2];
        if (v83 >= 6)
        {
          a1 = 6;
        }

        else
        {
          a1 = v186[0][2];
        }

        if (v83 < a1)
        {
          goto LABEL_185;
        }
      }

      if ((v82 & 0xC000000000000001) != 0)
      {

        if (a1)
        {
          sub_23E4DCFCC();
          if (a1 != 1)
          {
            sub_23E4DCFCC();
            if (a1 != 2)
            {
              sub_23E4DCFCC();
              if (a1 != 3)
              {
                sub_23E4DCFCC();
                if (a1 != 4)
                {
                  sub_23E4DCFCC();
                  if (a1 != 5)
                  {
                    sub_23E4DCFCC();
                    if (a1 != 6)
                    {
                      sub_23E4DCFCC();
                    }
                  }
                }
              }
            }
          }
        }
      }

      else
      {
      }

      if (a4)
      {
        v84 = sub_23E4DD08C();
        v86 = v85;
        v88 = v87;
        a1 = v89;

        v82 = v84;
        if ((a1 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      else
      {
        v88 = 0;
        v86 = v82 + 32;
        a1 = (2 * a1) | 1;
        if ((a1 & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      sub_23E4DD13C();
      swift_unknownObjectRetain_n();
      v91 = swift_dynamicCastClass();
      if (!v91)
      {
        swift_unknownObjectRelease();
        v91 = MEMORY[0x277D84F90];
      }

      v92 = *(v91 + 16);

      if (__OFSUB__(a1 >> 1, v88))
      {
        goto LABEL_195;
      }

      if (v92 != (a1 >> 1) - v88)
      {
        swift_unknownObjectRelease_n();
LABEL_76:
        sub_23E4B8364(v82, v86, v88, a1);
        v77 = v90;
        a4 = v169;
LABEL_83:
        swift_unknownObjectRelease();
        goto LABEL_84;
      }

      v77 = swift_dynamicCastClass();
      swift_unknownObjectRelease_n();
      a4 = v169;
      if (!v77)
      {
        v77 = MEMORY[0x277D84F90];
        goto LABEL_83;
      }
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345300, &qword_23E4DFCB0);
      v77 = swift_allocObject();
      *(v77 + 16) = v167;
      *(v77 + 32) = v22;
      v78 = v22;
    }

LABEL_84:
    v93 = (*((*MEMORY[0x277D85000] & *v5) + 0x1B8))(&v185);
    a1 = v94;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v186[0] = *a1;
    *a1 = 0x8000000000000000;
    sub_23E4ACCCC(v77, v30, isUniquelyReferenced_nonNull_native);
    *a1 = v186[0];
    v93(&v185, 0);
    v96 = [v22 template];
    v97 = [v96 uniqueName];

    if (!v97)
    {
      goto LABEL_198;
    }

    v98 = sub_23E4DCD7C();
    a1 = v99;

    v100 = sub_23E4AC968(0, &qword_28110A3F8, 0x277CE8CB0);
    v101 = v98;
    v102 = v177;
    v103 = sub_23E4AC68C(v101, a1, v177, v100);
    v105 = v104;

    v22 = v22;
    if (v105)
    {
      MEMORY[0x23EF0AE40]();
      if (*((v187 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v187 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23E4DCE6C();
      }

      v106 = sub_23E4DCE8C();
      v102 = v187;
      v107 = v175;
    }

    else
    {
      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v102 & 0x8000000000000000) != 0 || (v102 & 0x4000000000000000) != 0)
      {
        v102 = sub_23E4B6308(v102);
      }

      v107 = v175;
      if ((v103 & 0x8000000000000000) != 0)
      {
        goto LABEL_183;
      }

      if (v103 >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        while (1)
        {
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          v14 = sub_23E4DD07C();
          if (v14)
          {
            goto LABEL_4;
          }

LABEL_188:
          v161 = MEMORY[0x277D84FA0];
          v5 = *(MEMORY[0x277D84FA0] + 16);
          if (!v5)
          {
            goto LABEL_189;
          }

LABEL_179:
          v162 = sub_23E4ADA14(v5, 0, &qword_27E3452F8, &qword_23E4DFCA8);
          v163 = sub_23E4ADA90(&v185, v162 + 32, v5, v161);
          sub_23E4ADB8C(v185);
          if (v163 == v5)
          {
            return v162;
          }

          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
        }
      }

      v108 = *((v102 & 0xFFFFFFFFFFFFFF8) + 8 * v103 + 0x20);
      *((v102 & 0xFFFFFFFFFFFFFF8) + 8 * v103 + 0x20) = v22;
    }

    v109 = (v174)(v106);
    v110 = *(v109 + 16);
    v177 = v102;
    if (v110 && (v111 = sub_23E4ABDC4(0), (v112 & 1) != 0))
    {
      v113 = *(*(v109 + 56) + 8 * v111);

      v114 = [v22 template];
      a1 = [v114 uniqueName];

      if (!a1)
      {
        goto LABEL_201;
      }

      v115 = sub_23E4DCD7C();
      v117 = v116;

      v118 = sub_23E4AC68C(v115, v117, v113, v100);
      LOBYTE(v115) = v119;

      if (v115)
      {
        a4 = v169;
      }

      else
      {
        v135 = (*((*MEMORY[0x277D85000] & *v5) + 0x1A0))(&v185);
        v136 = sub_23E4D2244(v186, 0);
        if (*v137)
        {
        }

        (v136)(v186, 0);
        v135(&v185, 0);
        v138 = v188;
        sub_23E4DD17C();
        sub_23E4DCDAC();
        v139 = sub_23E4DD18C();
        v140 = -1 << *(v138 + 32);
        a1 = v139 & ~v140;
        if ((*(v138 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a1))
        {
          v141 = ~v140;
          while (*(v138[6] + a1) > 3u || *(v138[6] + a1))
          {
            v142 = sub_23E4DD12C();

            if (v142)
            {
              goto LABEL_167;
            }

            a1 = (a1 + 1) & v141;
            if (((*(v138 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a1) & 1) == 0)
            {
              goto LABEL_133;
            }
          }

LABEL_167:
          a4 = v169;
          v107 = v175;
        }

        else
        {
LABEL_133:
          v143 = swift_isUniquelyReferenced_nonNull_native();
          v186[0] = v138;
          v144 = v138[2];
          if (v138[3] <= v144)
          {
            if (v143)
            {
              sub_23E4ACFD0(v144 + 1);
            }

            else
            {
              sub_23E4D3C1C(v144 + 1);
            }

            v138 = v186[0];
            sub_23E4DD17C();
            sub_23E4DCDAC();
            v150 = sub_23E4DD18C();
            v151 = -1 << *(v138 + 32);
            a1 = v150 & ~v151;
            if ((*(v138 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a1))
            {
              v152 = ~v151;
              do
              {
                v153 = *(v138[6] + a1);
                if (v153 <= 2 && v153 != 1 && v153 != 2)
                {
                  goto LABEL_203;
                }

                v154 = sub_23E4DD12C();

                if (v154)
                {
                  goto LABEL_204;
                }

                a1 = (a1 + 1) & v152;
              }

              while (((*(v138 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a1) & 1) != 0);
            }

            a4 = v169;
            v107 = v175;
          }

          else
          {
            a4 = v169;
            v107 = v175;
            if ((v143 & 1) == 0)
            {
              sub_23E4D3ADC();
              v138 = v186[0];
            }
          }

          *(v138 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << a1;
          *(v138[6] + a1) = 0;
          v155 = v138[2];
          v23 = __OFADD__(v155, 1);
          v156 = v155 + 1;
          if (v23)
          {
            goto LABEL_197;
          }

          v138[2] = v156;
          v188 = v138;
        }
      }
    }

    else
    {
    }

    v17 = [v22 shallowCopyWithRelevantEarnedInstance_];
    if ((sub_23E4D6718(v5 + v168) & 1) != 0 && (((*((*MEMORY[0x277D85000] & *v5) + 0x2B0))() & 1) == 0 || ([v22 isRingsBased] & 1) == 0))
    {
      v120 = v182();
      sub_23E4AADF4(v183, v184, v107, v120 & 1, a4 & 1);
      if (v121)
      {
        v122 = (*((*MEMORY[0x277D85000] & *v5) + 0x1A0))(&v185);
        v124 = sub_23E4D2244(v186, 0);
        v125 = *v123;
        v175 = v17;
        if (v125)
        {
          v126 = v123;
          v127 = v17;
          MEMORY[0x23EF0AE40]();
          if (*((*v126 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v126 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23E4DCE6C();
          }

          sub_23E4DCE8C();
        }

        (v124)(v186, 0);
        v122(&v185, 0);
        v128 = v188;
        sub_23E4DD17C();
        sub_23E4DCDAC();
        v129 = sub_23E4DD18C();
        v130 = -1 << *(v128 + 32);
        a1 = v129 & ~v130;
        if ((*(v128 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a1))
        {
          v131 = ~v130;
          while (*(v128[6] + a1) > 3u || *(v128[6] + a1))
          {
            v132 = sub_23E4DD12C();

            if (v132)
            {
              goto LABEL_5;
            }

            a1 = (a1 + 1) & v131;
            if (((*(v128 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a1) & 1) == 0)
            {
              goto LABEL_119;
            }
          }

LABEL_5:
          a4 = v169;
          v17 = v175;
        }

        else
        {
LABEL_119:
          v133 = swift_isUniquelyReferenced_nonNull_native();
          v186[0] = v128;
          v134 = v128[2];
          if (v128[3] <= v134)
          {
            v17 = v175;
            if (v133)
            {
              sub_23E4ACFD0(v134 + 1);
            }

            else
            {
              sub_23E4D3C1C(v134 + 1);
            }

            v128 = v186[0];
            sub_23E4DD17C();
            sub_23E4DCDAC();
            v145 = sub_23E4DD18C();
            v146 = -1 << *(v128 + 32);
            a1 = v145 & ~v146;
            if ((*(v128 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a1))
            {
              v147 = ~v146;
              while (1)
              {
                v148 = *(v128[6] + a1);
                if (v148 <= 2 && v148 != 1 && v148 != 2)
                {
                  goto LABEL_203;
                }

                v149 = sub_23E4DD12C();

                if (v149)
                {
                  goto LABEL_204;
                }

                a1 = (a1 + 1) & v147;
                if (((*(v128 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> a1) & 1) == 0)
                {
                  a4 = v169;
                  v17 = v175;
                  goto LABEL_165;
                }
              }
            }

            a4 = v169;
          }

          else
          {
            a4 = v169;
            v17 = v175;
            if ((v133 & 1) == 0)
            {
              sub_23E4D3ADC();
              v128 = v186[0];
            }
          }

LABEL_165:
          *(v128 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << a1;
          *(v128[6] + a1) = 0;
          v157 = v128[2];
          v23 = __OFADD__(v157, 1);
          v158 = v157 + 1;
          if (v23)
          {
            goto LABEL_196;
          }

          v128[2] = v158;
          v188 = v128;
        }
      }
    }

    v18 = (*((*MEMORY[0x277D85000] & *v5) + 0x1A0))(&v185);
    a1 = v19;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v186[0] = *a1;
    *a1 = 0x8000000000000000;
    sub_23E4ACCCC(v177, v30, v20);
    *a1 = v186[0];
    v18(&v185, 0);
    sub_23E4AC9B4(&v185, v30);

LABEL_7:
    if (v15 == v178)
    {
      v161 = v188;
      v5 = v188[2];
      if (v5)
      {
        goto LABEL_179;
      }

LABEL_189:

      return MEMORY[0x277D84F90];
    }
  }

  v34 = sub_23E4DCD7C();
  v36 = v35;

  v37 = (*((*MEMORY[0x277D85000] & *v5) + 0x1C0))();
  v38 = *(v37 + 16);
  v177 = v34;
  if (v38 && (v39 = sub_23E4CED74(v34, v36), (v40 & 1) != 0))
  {
    a1 = *(*(v37 + 56) + 8 * v39);

    v186[0] = a1;
  }

  else
  {

    a1 = MEMORY[0x277D84F90];
    v186[0] = MEMORY[0x277D84F90];
  }

  v41 = [v22 template];
  v42 = [v41 uniqueName];

  if (!v42)
  {
    goto LABEL_199;
  }

  v43 = sub_23E4DCD7C();
  v45 = v44;

  v46 = sub_23E4AC968(0, &qword_28110A3F8, 0x277CE8CB0);
  v47 = sub_23E4AC68C(v43, v45, a1, v46);
  v49 = v48;

  v50 = v22;
  if (v49)
  {
    MEMORY[0x23EF0AE40]();
    if (*((v186[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v186[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23E4DCE6C();
    }

    sub_23E4DCE8C();
    a1 = v186[0];
LABEL_33:
    v52 = (*((*MEMORY[0x277D85000] & *v5) + 0x1D0))(&v185);
    v54 = v53;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v187 = *v54;
    *v54 = 0x8000000000000000;
    sub_23E4D37F0(a1, v177, v36, v55);

    *v54 = v187;
    v52(&v185, 0);
    a4 = v169;
    goto LABEL_34;
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (a1 & 0x8000000000000000) != 0 || (a1 & 0x4000000000000000) != 0)
  {
    a1 = sub_23E4B6308(a1);
  }

  if ((v47 & 0x8000000000000000) == 0)
  {
    if (v47 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_192;
    }

    v51 = *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v47 + 0x20);
    *((a1 & 0xFFFFFFFFFFFFFF8) + 8 * v47 + 0x20) = v50;

    goto LABEL_33;
  }

  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:

LABEL_204:
  sub_23E4DD14C();
  __break(1u);
LABEL_205:

  __break(1u);
  return result;
}

uint64_t sub_23E4AFAF0(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23E4D30F8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23E4AFBE4()
{
  v2 = v0;
  v3 = sub_23E4DCD0C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v2 + OBJC_IVAR___AAUIAwardsDataProvider_awardQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277D85200], v3);
  v8 = v7;
  v9 = sub_23E4DCD1C();
  v10 = (*(v4 + 8))(v6, v3);
  if ((v9 & 1) == 0)
  {
    goto LABEL_95;
  }

  v11 = (*((*MEMORY[0x277D85000] & *v2) + 0x190))(v10);
  v12 = 0;
  v9 = 0;
  v14 = v11 + 64;
  v13 = *(v11 + 64);
  v90 = v11;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v19 = MEMORY[0x277D84F90];
  v93 = v2;
  v88 = v18;
  v89 = v11 + 64;
  if (!v17)
  {
    while (1)
    {
LABEL_6:
      v20 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_93;
      }

      if (v20 >= v18)
      {
      }

      v17 = *(v14 + 8 * v20);
      ++v12;
      if (v17)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
    v20 = v12;
LABEL_9:
    v96 = v17;
    v92 = v20;
    v21 = __clz(__rbit64(v17)) | (v20 << 6);
    v22 = *(*(v90 + 48) + v21);
    v23 = *(*(v90 + 56) + 8 * v21);
    v98[0] = v19;
    v24 = v23 >> 62 ? sub_23E4DD07C() : *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v94 = v22;

    if (v24)
    {
      break;
    }

    v29 = v19;
LABEL_24:
    switch(v94)
    {
      case 1:

        v98[0] = sub_23E4B27D4(v36);
        sub_23E4B5C2C(v98);

        break;
      case 2:
        v30 = sub_23E4B5A08(v29);
LABEL_29:
        v31 = v30;

        v97 = v31;

        v98[0] = v19;
        if (v24)
        {
          goto LABEL_30;
        }

        goto LABEL_44;
      case 3:
        v30 = sub_23E4B0614(v29);
        goto LABEL_29;
      default:

        v37 = v2;
        v98[0] = sub_23E4B27D4(v29);
        sub_23E4B5504(v98, v37);

        break;
    }

    v97 = v98[0];

    v98[0] = v19;
    if (v24)
    {
LABEL_30:
      v32 = 0;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x23EF0AFF0](v32, v23);
        }

        else
        {
          if (v32 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_90;
          }

          v33 = *(v23 + 8 * v32 + 32);
        }

        v34 = v33;
        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_89;
        }

        if ([v33 unearned])
        {
          sub_23E4DD00C();
          v1 = *(v98[0] + 16);
          sub_23E4DD03C();
          sub_23E4DD04C();
          sub_23E4DD01C();
        }

        else
        {
        }

        ++v32;
        if (v35 == v24)
        {
          v2 = v93;
          v19 = MEMORY[0x277D84F90];
          break;
        }
      }
    }

LABEL_44:

    v1 = v2;

    v98[0] = sub_23E4B27D4(v38);
    sub_23E4B5504(v98, v1);

    v39 = v97;
    v95 = v98[0];
    if (v97 >> 62)
    {
      v56 = v97;
      v40 = sub_23E4DD07C();
      v39 = v56;
      v91 = v1;
      if (!v40)
      {
LABEL_60:

        v55 = v19;
        goto LABEL_61;
      }
    }

    else
    {
      v40 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v91 = v1;
      if (!v40)
      {
        goto LABEL_60;
      }
    }

    v41 = v39;
    v98[0] = v19;
    sub_23E4DB570(0, v40 & ~(v40 >> 63), 0);
    if (v40 < 0)
    {
      goto LABEL_94;
    }

    v42 = 0;
    v19 = v98[0];
    v43 = v41;
    v44 = v41 & 0xC000000000000001;
    do
    {
      if (v44)
      {
        v45 = MEMORY[0x23EF0AFF0](v42, v43);
      }

      else
      {
        v45 = *(v43 + 8 * v42 + 32);
      }

      v46 = v45;
      v47 = [v45 template];
      v48 = [v47 uniqueName];

      if (v48)
      {
        v49 = sub_23E4DCD7C();
        v51 = v50;
      }

      else
      {

        v49 = 0;
        v51 = 0;
      }

      v98[0] = v19;
      v53 = *(v19 + 16);
      v52 = *(v19 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_23E4DB570((v52 > 1), v53 + 1, 1);
        v19 = v98[0];
      }

      ++v42;
      *(v19 + 16) = v53 + 1;
      v54 = v19 + 16 * v53;
      *(v54 + 32) = v49;
      *(v54 + 40) = v51;
      v43 = v97;
    }

    while (v40 != v42);

    v55 = MEMORY[0x277D84F90];
LABEL_61:
    v1 = v95;
    v57 = v96;
    v99 = v55;
    if (v95 < 0 || (v95 & 0x4000000000000000) != 0)
    {
      v71 = sub_23E4DD07C();
      v57 = v96;
      v58 = v71;
      if (v71)
      {
LABEL_64:
        v59 = 0;
        v60 = v1 & 0xC000000000000001;
        do
        {
          if (v60)
          {
            v61 = MEMORY[0x23EF0AFF0](v59, v1);
          }

          else
          {
            if (v59 >= *(v1 + 16))
            {
              goto LABEL_92;
            }

            v61 = *(v1 + 8 * v59 + 32);
          }

          v62 = v61;
          v63 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_91;
          }

          v64 = [v61 template];
          v65 = [v64 uniqueName];

          if (v65)
          {
            v67 = sub_23E4DCD7C();
            v69 = v68;
          }

          else
          {
            v67 = 0;
            v69 = 0;
          }

          v98[0] = v67;
          v98[1] = v69;
          MEMORY[0x28223BE20](v66);
          *(&v88 - 2) = v98;
          v70 = sub_23E4B4CAC(sub_23E4DB900, (&v88 - 4), v19);

          if (v70)
          {
          }

          else
          {
            sub_23E4DD00C();
            sub_23E4DD03C();
            sub_23E4DD04C();
            sub_23E4DD01C();
          }

          v1 = v95;
          v57 = v96;
          ++v59;
        }

        while (v63 != v58);
      }
    }

    else
    {
      v58 = *(v95 + 16);
      if (v58)
      {
        goto LABEL_64;
      }
    }

    v17 = (v57 - 1) & v57;

    v72 = v99;
    v73 = v94;
    v2 = v93;
    v19 = MEMORY[0x277D84F90];
    v74 = v91;
    if (((1 << v94) & 0x4E) != 0)
    {

      v98[0] = v97;
      sub_23E4B4D5C(v72);
      v75 = v98[0];
      v76 = (*((*MEMORY[0x277D85000] & *v74) + 0x1A0))(v98);
      v1 = v77;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = *v1;
      *v1 = 0x8000000000000000;
      v79 = v75;
      v80 = v73;
    }

    else
    {
      if (((1 << v94) & 0x30) == 0)
      {

        v83 = (*((*MEMORY[0x277D85000] & *v74) + 0x1A0))(v98);
        v85 = v84;
        v86 = swift_isUniquelyReferenced_nonNull_native();
        v99 = *v85;
        *v85 = 0x8000000000000000;
        sub_23E4ACCCC(v1, 0, v86);
        *v85 = v99;
        v83(v98, 0);
        goto LABEL_83;
      }

      v98[0] = v1;
      sub_23E4B4D5C(v97);
      v81 = v98[0];
      v76 = (*((*MEMORY[0x277D85000] & *v74) + 0x1A0))(v98);
      v1 = v82;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v99 = *v1;
      *v1 = 0x8000000000000000;
      v79 = v81;
      v80 = v94;
    }

    sub_23E4ACCCC(v79, v80, isUniquelyReferenced_nonNull_native);
    *v1 = v99;
    v76(v98, 0);
LABEL_83:
    v12 = v92;
    v18 = v88;
    v14 = v89;
    if (!v17)
    {
      goto LABEL_6;
    }
  }

  v25 = 0;
  while (1)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x23EF0AFF0](v25, v23);
    }

    else
    {
      if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

      v26 = *(v23 + 8 * v25 + 32);
    }

    v27 = v26;
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if ([v26 unearned])
    {
    }

    else
    {
      sub_23E4DD00C();
      v1 = *(v98[0] + 16);
      sub_23E4DD03C();
      sub_23E4DD04C();
      sub_23E4DD01C();
    }

    ++v25;
    if (v28 == v24)
    {
      v29 = v98[0];
      v2 = v93;
      v19 = MEMORY[0x277D84F90];
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
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

  __break(1u);
  return result;
}

uint64_t sub_23E4B0614(unint64_t a1)
{
  v28 = MEMORY[0x277D84F90];
  v27 = sub_23E4B20DC(MEMORY[0x277D84F90]);
  sub_23E4B0C14(a1, &v27);
  v2 = v27;
  v3 = v27[2];
  v24 = v27;
  if (v3)
  {
    v4 = sub_23E4B2650(v3, 0);
    v5 = sub_23E4B26D4(&v26, v4 + 4, v3, v2);
    v6 = v26;
    swift_bridgeObjectRetain_n();
    sub_23E4ADB8C(v6);
    if (v5 != v3)
    {
      goto LABEL_34;
    }

    v2 = v24;
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v26 = v4;
  sub_23E4B0904(&v26);

  v7 = v26;
  v8 = *(v26 + 16);
  if (!v8)
  {

    return MEMORY[0x277D84F90];
  }

  v9 = 0;
  v10 = (v26 + 32);
  v11 = MEMORY[0x277D84F90];
  v22 = *(v26 + 16);
  v23 = v26;
  v25 = (v26 + 32);
  while (1)
  {
    if (v9 >= *(v7 + 16))
    {
      goto LABEL_33;
    }

    if (!*(v2 + 16))
    {
      goto LABEL_8;
    }

    v12 = sub_23E4B21E4(*&v10[8 * v9]);
    if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }

    v14 = *(*(v2 + 56) + 8 * v12);
    swift_bridgeObjectRetain_n();
    v26 = sub_23E4B27D4(v14);
    sub_23E4B0FF4(&v26);

    v15 = v26;
    if ((v26 & 0x8000000000000000) == 0 && (v26 & 0x4000000000000000) == 0)
    {
      v16 = *(v26 + 16);
      if (v16)
      {
        break;
      }

      goto LABEL_7;
    }

    v16 = sub_23E4DD07C();
    if (v16)
    {
      break;
    }

LABEL_7:

    v10 = v25;
LABEL_8:
    if (++v9 == v8)
    {

      return v11;
    }
  }

  v17 = 0;
  while ((v15 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x23EF0AFF0](v17, v15);
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_31;
    }

LABEL_19:
    v20 = v18;
    MEMORY[0x23EF0AE40]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23E4DCE6C();
    }

    sub_23E4DCE8C();
    v11 = v28;

    ++v17;
    if (v19 == v16)
    {
      v7 = v23;
      v2 = v24;
      v8 = v22;
      goto LABEL_7;
    }
  }

  if (v17 >= *(v15 + 16))
  {
    goto LABEL_32;
  }

  v18 = *(v15 + 8 * v17 + 32);
  v19 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    goto LABEL_19;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_23E4B0904(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23E4B08F0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_23E4DD0EC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_23E4DCE7C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_23E4D8880(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_23E4B0A38(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD00000000000001ELL && 0x800000023E4E1280 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

char *sub_23E4B0B10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345440, &qword_23E4E00A0);
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

void sub_23E4B0C14(unint64_t a1, void *a2)
{
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23E4DD07C())
  {
    v5 = 0;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    v24 = v3 & 0xC000000000000001;
    v6 = &selRef_animationWithEndingFloatValue_duration_customTimingFunction_completion_;
    v22 = v3;
    while (1)
    {
      if (v24)
      {
        v7 = MEMORY[0x23EF0AFF0](v5, v3);
      }

      else
      {
        if (v5 >= *(v23 + 16))
        {
          goto LABEL_20;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = i;
      v11 = [v7 v6[429]];
      v12 = [v11 displayOrder];

      v13 = *a2;
      if (*(*a2 + 16) && (v14 = sub_23E4B21E4(v12), (v15 & 1) != 0))
      {
        v27 = *(*(v13 + 56) + 8 * v14);
      }

      else
      {
        v27 = MEMORY[0x277D84F90];
      }

      v16 = v8;
      MEMORY[0x23EF0AE40]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23E4DCE6C();
      }

      sub_23E4DCE8C();
      v17 = v6;
      v18 = [v16 v6[429]];
      v19 = [v18 displayOrder];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = *a2;
      *a2 = 0x8000000000000000;
      sub_23E4B2228(v27, v19, isUniquelyReferenced_nonNull_native);
      *a2 = v26;

      if (!v25)
      {
        ++v5;
        i = v10;
        v21 = v9 == v10;
        v6 = v17;
        v3 = v22;
        if (!v21)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }
}

void sub_23E4B0E44(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000019 && 0x800000023E4E0EF0 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4B0F1C(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000012 && 0x800000023E4E10C0 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

__CFString *sub_23E4B0FF4(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345438, &qword_23E4E0098);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v33 - v4;
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_23E4B27D8(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v35 = v6 + 32;
  v41[0] = v6 + 32;
  v41[1] = v8;
  v9 = sub_23E4DD0EC();
  if (v9 < v8)
  {
    v10 = v9;
    v11 = v8 >> 1;
    if (v8 >= 2)
    {
      sub_23E4A5744();
      v12 = sub_23E4DCE7C();
      *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v39 = ((v12 & 0xFFFFFFFFFFFFFF8) + 32);
    v40 = v11;
    sub_23E4D8DCC(&v39, v38, v41, v10);
    *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return sub_23E4DD01C();
  }

  if (v8 < 2)
  {
    return sub_23E4DD01C();
  }

  v33[0] = a1;
  v33[1] = v1;
  v13 = -1;
  v14 = 1;
  v15 = v35;
  v34 = v8;
LABEL_9:
  v36 = v15;
  v37 = v14;
  v16 = *(v35 + 8 * v14);
  v42 = v13;
  while (1)
  {
    v17 = *v15;
    v18 = v16;
    v19 = v17;
    result = AAUILocalizedModalityForAchievement(v18);
    if (!result)
    {
      break;
    }

    v21 = result;
    v22 = sub_23E4DCD7C();
    v24 = v23;

    v39 = v22;
    v40 = v24;
    result = AAUILocalizedModalityForAchievement(v19);
    if (!result)
    {
      goto LABEL_20;
    }

    v25 = result;
    v26 = sub_23E4DCD7C();
    v28 = v27;

    v38[0] = v26;
    v38[1] = v28;
    v29 = sub_23E4DCBAC();
    (*(*(v29 - 8) + 56))(v5, 1, 1, v29);
    sub_23E4ABBE4();
    v30 = sub_23E4DCF4C();
    sub_23E4AC750(v5, &qword_27E345438, &qword_23E4E0098);

    if (v30 == -1)
    {
      v31 = *v15;
      v16 = *(v15 + 8);
      *v15 = v16;
      *(v15 + 8) = v31;
      v15 -= 8;
      if (!__CFADD__(v13++, 1))
      {
        continue;
      }
    }

    v14 = v37 + 1;
    v15 = v36 + 8;
    v13 = v42 - 1;
    if (v37 + 1 == v34)
    {
      return sub_23E4DD01C();
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_23E4B12E0(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000012 && 0x800000023E4E10A0 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

__CFString *AAUILocalizedModalityForAchievement(void *a1)
{
  v1 = a1;
  v2 = [v1 template];
  v3 = [v2 uniqueName];
  v4 = [v3 componentsSeparatedByString:@"-"];

  if ([v4 count] < 2)
  {
    v8 = ACHLogDefault();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      AAUILocalizedModalityForAchievement_cold_1(v1);
    }

    v7 = &stru_2850CB9E8;
  }

  else
  {
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v4 objectAtIndexedSubscript:1];
    v7 = [v5 localizedStringForKey:v6 value:&stru_2850CB9E8 table:@"Localizable"];
  }

  return v7;
}

void sub_23E4B14EC(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000010 && 0x800000023E4E0F90 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4B15C4(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000013 && 0x800000023E4E1060 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4B169C(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0x5774636566726550 && v7 == 0xEF65766F4D6B6565)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_23E4DD12C();
    }
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9 & 1;
}

void sub_23E4B178C(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0x5774636566726550 && v7 == 0xEE006C6C416B6565)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_23E4DD12C();
    }
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9 & 1;
}

void sub_23E4B187C(id *a1@<X0>, _BYTE *a4@<X8>)
{
  v5 = [*a1 template];
  v6 = [v5 uniqueName];

  if (v6)
  {
    sub_23E4DCD7C();

    v7 = sub_23E4DCDEC();

    *a4 = v7 & 1;
  }

  else
  {
    __break(1u);
  }
}

void sub_23E4B1930(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000023 && 0x800000023E4E1030 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4B1A08(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000012 && 0x800000023E4E1010 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4B1AE0(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000014 && 0x800000023E4E12A0 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4B1BB8(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0x74756F6B726F5737 && v7 == 0xEC0000006B656557)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_23E4DD12C();
    }
  }

  else
  {
    v9 = 0;
  }

  *a2 = v9 & 1;
}

void sub_23E4B1CA4(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD00000000000001DLL && 0x800000023E4E1240 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4B1D7C(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000017 && 0x800000023E4E0FD0 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4B1E54(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000013 && 0x800000023E4E0FF0 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4B1F2C(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000018 && 0x800000023E4E0F30 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void sub_23E4B2004(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 template];
  v4 = [v3 uniqueName];

  if (v4)
  {
    v5 = sub_23E4DCD7C();
    v7 = v6;

    if (v5 == 0xD000000000000013 && 0x800000023E4E1260 == v7)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      LOBYTE(v4) = sub_23E4DD12C();
    }
  }

  *a2 = v4 & 1;
}

void *sub_23E4B20DC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345448, &qword_23E4E00A8);
  v3 = sub_23E4DD0BC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_23E4B21E4(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
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

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_23E4B21E4(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_23E4B21E4(uint64_t a1)
{
  v2 = sub_23E4DD16C();

  return sub_23E4B25E4(a1, v2);
}

unint64_t sub_23E4B2228(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_23E4B21E4(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_23E4B2374(v14, a3 & 1);
      result = sub_23E4B21E4(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_23E4DD15C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_23E4DB414();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_23E4B2374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345448, &qword_23E4E00A8);
  result = sub_23E4DD0AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_23E4DD16C();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_23E4B25E4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_23E4B2650(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345440, &qword_23E4E00A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_23E4B26D4(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_23E4B27EC()
{
  v2 = sub_23E4DCD0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___AAUIAwardsDataProvider_awardQueue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  v8 = sub_23E4DCD1C();
  v10 = *(v3 + 8);
  v9 = v3 + 8;
  v11 = v10(v5, v2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_62;
  }

  v12 = MEMORY[0x277D85000];
  v13 = *((*MEMORY[0x277D85000] & *v0) + 0x178);
  v120[1] = (*MEMORY[0x277D85000] & *v0) + 376;
  v121 = v13;
  v14 = v13(v11);
  v120[0] = sub_23E4B3800(v14);
  v15 = *((*v12 & *v0) + 0x190);
  v122 = v0;
  v16 = v15();
  if (*(v16 + 16) && (v17 = sub_23E4ABDC4(0), (v18 & 1) != 0))
  {
    v126 = *(*(v16 + 56) + 8 * v17);
  }

  else
  {
    v126 = MEMORY[0x277D84F90];
  }

  v20 = (v15)(v19);
  v21 = v20;
  v22 = *(v20 + 16);
  if (!v22)
  {
    goto LABEL_9;
  }

  v127 = sub_23E4B7EEC(*(v20 + 16), 0);
  v23 = sub_23E4B7F70(v132, v127 + 4, v22, v21);
  sub_23E4ADB8C(v132[0]);
  if (v23 != v22)
  {
    __break(1u);
LABEL_9:

    v127 = MEMORY[0x277D84F90];
  }

  v8 = MEMORY[0x277D84F90];
  v125 = v127[2];
  if (!v125)
  {
    goto LABEL_43;
  }

  v1 = 0;
  v124 = v127 + 4;
  v24 = &qword_27E345360;
  while (1)
  {
    if (v1 >= v127[2])
    {
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v9 = v124[v1];
    v25 = v9 >> 62;
    v26 = v9 >> 62 ? sub_23E4DD07C() : *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v27 = v8 >> 62;
    if (v8 >> 62)
    {
      break;
    }

    v28 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v28 + v26;
    if (__OFADD__(v28, v26))
    {
      goto LABEL_42;
    }

LABEL_19:

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v27)
      {
        v30 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v29 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_24:
      sub_23E4DD07C();
      goto LABEL_25;
    }

    if (v27)
    {
      goto LABEL_24;
    }

LABEL_25:
    v8 = sub_23E4DCFEC();
    v30 = v8 & 0xFFFFFFFFFFFFFF8;
LABEL_26:
    v31 = *(v30 + 16);
    v32 = *(v30 + 24);
    if (v25)
    {
      v34 = v30;
      v35 = sub_23E4DD07C();
      v30 = v34;
      v33 = v35;
      if (!v35)
      {
LABEL_12:

        if (v26 > 0)
        {
          goto LABEL_56;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v33 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        goto LABEL_12;
      }
    }

    if (((v32 >> 1) - v31) < v26)
    {
      goto LABEL_59;
    }

    v129 = v1;
    v130 = v8;
    v1 = v30 + 8 * v31 + 32;
    v128 = v26;
    v123 = v30;
    if (v25)
    {
      if (v33 < 1)
      {
        goto LABEL_61;
      }

      sub_23E4AA98C(&qword_27E345368, v24, &unk_23E4DFD78, MEMORY[0x277D83988]);
      v36 = v24;
      for (i = 0; i != v33; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v24, &unk_23E4DFD78);
        v38 = sub_23E4D4844(v132, i, v9);
        v40 = *v39;
        (v38)(v132, 0);
        *(v1 + 8 * i) = v40;
      }
    }

    else
    {
      sub_23E4AC968(0, &qword_28110A3F8, 0x277CE8CB0);
      swift_arrayInitWithCopy();
      v36 = v24;
    }

    v1 = v129;
    v24 = v36;
    v8 = v130;
    if (v128 > 0)
    {
      v41 = *(v123 + 16);
      v42 = __OFADD__(v41, v128);
      v43 = v41 + v128;
      if (v42)
      {
        goto LABEL_60;
      }

      *(v123 + 16) = v43;
    }

LABEL_13:
    if (++v1 == v125)
    {
      goto LABEL_43;
    }
  }

  v44 = sub_23E4DD07C();
  v29 = v44 + v26;
  if (!__OFADD__(v44, v26))
  {
    goto LABEL_19;
  }

LABEL_42:
  __break(1u);
LABEL_43:

  v132[0] = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_63;
  }

  for (j = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_23E4DD07C())
  {
    v9 = 0;
    v1 = v8 & 0xC000000000000001;
    while (1)
    {
      if (v1)
      {
        v46 = MEMORY[0x23EF0AFF0](v9, v8);
      }

      else
      {
        if (v9 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        v46 = *(v8 + 8 * v9 + 32);
      }

      v47 = v46;
      v48 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ([v46 unearned])
      {
      }

      else
      {
        sub_23E4DD00C();
        sub_23E4DD03C();
        sub_23E4DD04C();
        sub_23E4DD01C();
      }

      ++v9;
      if (v48 == j)
      {
        goto LABEL_64;
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    ;
  }

LABEL_64:

  v49 = v122;

  v132[0] = sub_23E4B3800(v50);
  v51 = 0;
  sub_23E4B80C4(v132, v49);

  v52 = v132[0];
  v53 = v132[0] < 0 || (v132[0] & 0x4000000000000000) != 0;
  if (!v53)
  {
    v54 = *(v132[0] + 16);
    if (v54)
    {
      if (v54 >= 3)
      {
        v55 = 3;
      }

      else
      {
        v55 = *(v132[0] + 16);
      }

      if (v54 >= v55)
      {
        goto LABEL_73;
      }

LABEL_99:
      __break(1u);
    }

LABEL_100:

LABEL_101:
    v62 = MEMORY[0x277D84F90];
    goto LABEL_102;
  }

  if (!sub_23E4DD07C())
  {
    goto LABEL_100;
  }

  v66 = sub_23E4DD07C();
  if (sub_23E4DD07C() < 0)
  {
LABEL_216:
    __break(1u);
LABEL_217:
    __break(1u);
LABEL_218:
    __break(1u);

    __break(1u);
LABEL_219:
    if (v51 >= 3)
    {
      v119 = 3;
    }

    else
    {
      v119 = v51;
    }

    if (v51 >= 0)
    {
      v103 = v119;
    }

    else
    {
      v103 = 3;
    }

    result = sub_23E4DD07C();
    if (result >= v103)
    {
      goto LABEL_173;
    }

    goto LABEL_226;
  }

  if (v66 >= 3)
  {
    v67 = 3;
  }

  else
  {
    v67 = v66;
  }

  if (v66 >= 0)
  {
    v55 = v67;
  }

  else
  {
    v55 = 3;
  }

  if (sub_23E4DD07C() < v55)
  {
    goto LABEL_99;
  }

LABEL_73:
  if ((v52 & 0xC000000000000001) != 0 && v55)
  {
    sub_23E4AC968(0, &qword_28110A3F8, 0x277CE8CB0);

    sub_23E4DCFCC();
    if (v55 != 1)
    {
      sub_23E4DCFCC();
      if (v55 != 2)
      {
        sub_23E4DCFCC();
      }
    }
  }

  else
  {
  }

  if (!v53)
  {
    v9 = 0;
    v1 = v52 + 32;
    v60 = (2 * v55) | 1;
    if (v60)
    {
      goto LABEL_84;
    }

LABEL_83:
    sub_23E4B8364(v52, v1, v9, v60);
    v62 = v61;
    v63 = swift_unknownObjectRelease();
    goto LABEL_102;
  }

  v56 = sub_23E4DD08C();
  v1 = v57;
  v9 = v58;
  v60 = v59;

  v52 = v56;
  if ((v60 & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_84:
  sub_23E4DD13C();
  swift_unknownObjectRetain_n();
  v64 = swift_dynamicCastClass();
  if (!v64)
  {
    swift_unknownObjectRelease();
    v64 = MEMORY[0x277D84F90];
  }

  v65 = *(v64 + 16);

  if (__OFSUB__(v60 >> 1, v9))
  {
    __break(1u);
    goto LABEL_213;
  }

  if (v65 != (v60 >> 1) - v9)
  {
LABEL_213:
    swift_unknownObjectRelease_n();
    v51 = 0;
    goto LABEL_83;
  }

  v62 = swift_dynamicCastClass();
  v63 = swift_unknownObjectRelease_n();
  v51 = 0;
  if (!v62)
  {
    v63 = swift_unknownObjectRelease();
    goto LABEL_101;
  }

LABEL_102:
  v130 = v62;
  if (v62 >> 62)
  {
    goto LABEL_140;
  }

  v66 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v68 = 3 - v66;
    if (__OFSUB__(3, v66))
    {
      __break(1u);
    }

    else
    {
      if (v68 <= 1)
      {
        v68 = 1;
      }

      v69 = MEMORY[0x277D84F90];
      v125 = v49;
      v127 = v68;
      if (v66)
      {
        v132[0] = MEMORY[0x277D84F90];
        v70 = v132;
        sub_23E4D3274(0, v66 & ~(v66 >> 63), 0);
        if (v66 < 0)
        {
          goto LABEL_207;
        }

        v128 = v51;
        v9 = 0;
        v49 = v132[0];
        v51 = v130 & 0xC000000000000001;
        v129 = v130 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v9 >= v66)
          {
            __break(1u);
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          v1 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_136;
          }

          if (v51)
          {
            v71 = MEMORY[0x23EF0AFF0](v9, v130);
          }

          else
          {
            if (v9 >= *(v129 + 16))
            {
              goto LABEL_139;
            }

            v71 = *(v130 + 8 * v9 + 32);
          }

          v72 = v71;
          v73 = [v71 template];
          v74 = [v73 uniqueName];

          if (!v74)
          {
            break;
          }

          v75 = sub_23E4DCD7C();
          v77 = v76;

          v132[0] = v49;
          v79 = v49[2];
          v78 = v49[3];
          if (v79 >= v78 >> 1)
          {
            sub_23E4D3274((v78 > 1), v79 + 1, 1);
            v49 = v132[0];
          }

          v49[2] = v79 + 1;
          v80 = &v49[2 * v79];
          v80[4] = v75;
          v80[5] = v77;
          ++v9;
          if (v1 == v66)
          {
            v51 = v128;
            v69 = MEMORY[0x277D84F90];
            goto LABEL_122;
          }
        }

        __break(1u);
LABEL_215:
        __break(1u);
        goto LABEL_216;
      }

      v49 = MEMORY[0x277D84F90];
LABEL_122:
      v131 = v69;
      v63 = v126;
      if (!(v126 >> 62))
      {
        v1 = *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v1)
        {
          break;
        }

        goto LABEL_124;
      }
    }

    v66 = v63;
    v1 = sub_23E4DD07C();
    v63 = v66;
    if (v1)
    {
LABEL_124:
      v9 = 0;
      v128 = v63 & 0xFFFFFFFFFFFFFF8;
      v129 = v63 & 0xC000000000000001;
      while (1)
      {
        if (v129)
        {
          v81 = MEMORY[0x23EF0AFF0](v9, v63);
        }

        else
        {
          if (v9 >= *(v128 + 16))
          {
            goto LABEL_138;
          }

          v81 = *(v63 + 8 * v9 + 32);
        }

        v82 = v81;
        v83 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        v84 = [v81 template];
        v85 = [v84 uniqueName];

        if (!v85)
        {
          goto LABEL_215;
        }

        v86 = sub_23E4DCD7C();
        v88 = v87;

        v66 = v120;
        v132[0] = v86;
        v132[1] = v88;
        MEMORY[0x28223BE20](v89);
        v120[-2] = v132;
        v90 = sub_23E4B82B8(sub_23E4CF440, &v120[-4], v49);

        if (v90)
        {
        }

        else
        {
          sub_23E4DD00C();
          sub_23E4DD03C();
          sub_23E4DD04C();
          sub_23E4DD01C();
        }

        v63 = v126;
        ++v9;
        if (v83 == v1)
        {
          goto LABEL_143;
        }
      }

LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      v63 = sub_23E4DD07C();
      v66 = v63;
      continue;
    }

    break;
  }

LABEL_143:

  v66 = v131;
  if (v131 < 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = (v131 >> 62) & 1;
  }

  if (v9)
  {
    v117 = sub_23E4DD07C();
    if (v117 >= v127)
    {
      v118 = v127;
    }

    else
    {
      v118 = v117;
    }

    if (v117 >= 0)
    {
      v51 = v118;
    }

    else
    {
      v51 = v127;
    }

    if (v51 < 0)
    {
      goto LABEL_217;
    }

    if (sub_23E4DD07C() < 0)
    {
      goto LABEL_218;
    }

    if (sub_23E4DD07C() < v51)
    {
      __break(1u);
      goto LABEL_202;
    }
  }

  else if (*(v131 + 16) >= v127)
  {
    v51 = v127;
  }

  else
  {
    v51 = *(v131 + 16);
  }

  v1 = v125;
  if ((v66 & 0xC000000000000001) != 0 && v51)
  {
    sub_23E4AC968(0, &qword_28110A3F8, 0x277CE8CB0);

    v91 = 0;
    do
    {
      v92 = v91 + 1;
      sub_23E4DCFCC();
      v91 = v92;
    }

    while (v51 != v92);
  }

  else
  {
  }

  if (v9)
  {
    v93 = sub_23E4DD08C();
    v9 = v94;
    v70 = v95;
    v51 = v96;

    v66 = v93;
    if ((v51 & 1) == 0)
    {
      goto LABEL_160;
    }
  }

  else
  {
    v70 = 0;
    v9 = v66 + 32;
    v51 = (2 * v51) | 1;
    if ((v51 & 1) == 0)
    {
      goto LABEL_160;
    }
  }

  sub_23E4DD13C();
  swift_unknownObjectRetain_n();
  v99 = swift_dynamicCastClass();
  if (!v99)
  {
    swift_unknownObjectRelease();
    v99 = MEMORY[0x277D84F90];
  }

  v100 = *(v99 + 16);

  if (__OFSUB__(v51 >> 1, v70))
  {
    goto LABEL_208;
  }

  if (v100 != (v51 >> 1) - v70)
  {
    goto LABEL_209;
  }

  k = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (k)
  {
    goto LABEL_168;
  }

  for (k = MEMORY[0x277D84F90]; ; k = v97)
  {
    swift_unknownObjectRelease();
LABEL_168:
    v132[0] = k;
    sub_23E4B4D5C(v130);
    v66 = v132[0];
    v101 = v132[0] & 0xFFFFFFFFFFFFFF8;
    v9 = v132[0] >> 62;
    if (!(v132[0] >> 62))
    {
      break;
    }

LABEL_202:
    if (v66 < 0)
    {
      v70 = v66;
    }

    else
    {
      v70 = v101;
    }

    v51 = sub_23E4DD07C();
    if ((sub_23E4DD07C() & 0x8000000000000000) == 0)
    {
      goto LABEL_219;
    }

    __break(1u);
LABEL_207:
    __break(1u);
LABEL_208:
    __break(1u);
LABEL_209:
    swift_unknownObjectRelease_n();
LABEL_160:
    sub_23E4B8364(v66, v9, v70, v51);
  }

  result = *((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 3)
  {
    v103 = 3;
  }

  else
  {
    v103 = *((v132[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < v103)
  {
LABEL_226:
    __break(1u);
    return result;
  }

LABEL_173:
  if ((v66 & 0xC000000000000001) != 0 && v103)
  {
    sub_23E4AC968(0, &qword_28110A3F8, 0x277CE8CB0);

    sub_23E4DCFCC();
    if (v103 != 1)
    {
      sub_23E4DCFCC();
      if (v103 != 2)
      {
        sub_23E4DCFCC();
      }
    }
  }

  else
  {
  }

  if (v9)
  {
    v104 = sub_23E4DD08C();
    v105 = v107;
    v9 = v108;
    v106 = v109;

    if (v106)
    {
      goto LABEL_184;
    }

    goto LABEL_183;
  }

  v104 = v66 & 0xFFFFFFFFFFFFFF8;
  v105 = (v66 & 0xFFFFFFFFFFFFFF8) + 32;
  v106 = (2 * v103) | 1;
  if ((v106 & 1) == 0)
  {
LABEL_183:
    sub_23E4B8364(v104, v105, v9, v106);
    v111 = v110;
    goto LABEL_190;
  }

LABEL_184:
  sub_23E4DD13C();
  swift_unknownObjectRetain_n();
  v112 = swift_dynamicCastClass();
  if (!v112)
  {
    swift_unknownObjectRelease();
    v112 = MEMORY[0x277D84F90];
  }

  v113 = *(v112 + 16);

  if (__OFSUB__(v106 >> 1, v9))
  {
    __break(1u);
    goto LABEL_211;
  }

  if (v113 != (v106 >> 1) - v9)
  {
LABEL_211:
    swift_unknownObjectRelease_n();
    goto LABEL_183;
  }

  v111 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!v111)
  {
    v111 = MEMORY[0x277D84F90];
LABEL_190:
    swift_unknownObjectRelease();
  }

  v114 = (*((*MEMORY[0x277D85000] & *v1) + 0x180))(v111);
  v115 = v121(v114);
  v116 = sub_23E4B8448(v120[0], v115);

  return (v116 & 1) == 0;
}

void *sub_23E4B3800(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_23E4DD07C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_23E4D31EC(v3, 0);
  sub_23E4B4EEC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_23E4B3894(unint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v30 = a4;
  v28 = a2;
  v7 = sub_23E4DCCDC();
  v33 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23E4DCCFC();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_23E4DCCCC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_23E4A9B6C();
  (*(v14 + 16))(v16, v17, v13);

  v18 = sub_23E4DCCAC();
  v19 = sub_23E4DCECC();
  if (os_log_type_enabled(v18, v19))
  {
    v27 = a5;
    v20 = swift_slowAlloc();
    *v20 = 134217984;
    if (a1 >> 62)
    {
      v21 = sub_23E4DD07C();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 4) = v21;

    _os_log_impl(&dword_23E4A3000, v18, v19, v28, v20, 0xCu);
    MEMORY[0x23EF0BFA0](v20, -1, -1);

    a5 = v27;
  }

  else
  {
  }

  (*(v14 + 8))(v16, v13);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = a1;
  aBlock[4] = v30;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E4AADB0;
  aBlock[3] = a5;
  v24 = _Block_copy(aBlock);

  sub_23E4DCCEC();
  v34 = MEMORY[0x277D84F90];
  sub_23E4A9F7C(&qword_28110A428, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345358, &qword_23E4DFD70);
  sub_23E4AA98C(&qword_28110A408, &qword_27E345358, &qword_23E4DFD70, MEMORY[0x277D83970]);
  sub_23E4DCF6C();
  MEMORY[0x23EF0AF20](0, v12, v9, v24);
  _Block_release(v24);
  (*(v33 + 8))(v9, v7);
  (*(v31 + 8))(v12, v32);
}

void sub_23E4B3D44(void (*a1)(uint64_t))
{
  v3 = *(v1 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if ((*((*MEMORY[0x277D85000] & *Strong) + 0x160))())
    {
      a1(v3);
    }
  }
}

uint64_t sub_23E4B3E3C()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  v4 = *MEMORY[0x277D766F0];
  v5 = objc_opt_self();
  v6 = [v5 mainQueue];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = sub_23E4D4980;
  v55 = v7;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_23E4A9790;
  v53 = &block_descriptor_0;
  v8 = _Block_copy(&aBlock);

  v49 = [v3 addObserverForName:v4 object:0 queue:v6 usingBlock:v8];
  _Block_release(v8);

  v9 = [v2 defaultCenter];
  v10 = *MEMORY[0x277D76758];
  v11 = [v5 mainQueue];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = sub_23E4A9A60;
  v55 = v12;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_23E4A9790;
  v53 = &block_descriptor_27;
  v13 = _Block_copy(&aBlock);

  v48 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
  _Block_release(v13);

  v14 = [v2 defaultCenter];
  v15 = *MEMORY[0x277D76660];
  v16 = [v5 mainQueue];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = sub_23E4D49A4;
  v55 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_23E4A9790;
  v53 = &block_descriptor_31;
  v18 = _Block_copy(&aBlock);

  v47 = [v14 addObserverForName:v15 object:0 queue:v16 usingBlock:v18];
  _Block_release(v18);

  v19 = [v2 defaultCenter];
  v20 = objc_opt_self();
  v21 = [v20 didUpdatePauseStateNotification];
  v22 = [v5 mainQueue];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = sub_23E4D49AC;
  v55 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_23E4A9790;
  v53 = &block_descriptor_35;
  v24 = _Block_copy(&aBlock);

  v46 = [v19 addObserverForName:v21 object:0 queue:v22 usingBlock:v24];
  _Block_release(v24);

  v25 = [v2 defaultCenter];
  v26 = [v20 initialPauseStateLoadedNotification];
  v27 = [v5 mainQueue];
  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = sub_23E4D49D0;
  v55 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_23E4A9790;
  v53 = &block_descriptor_39;
  v29 = _Block_copy(&aBlock);

  v45 = [v25 addObserverForName:v26 object:0 queue:v27 usingBlock:v29];
  _Block_release(v29);

  v30 = [v2 defaultCenter];
  v31 = *MEMORY[0x277CE8B30];
  v32 = *(v1 + OBJC_IVAR___AAUIAwardsDataProvider_cloudSyncStatusProvider);
  v33 = [v5 mainQueue];
  v34 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = sub_23E4D49F4;
  v55 = v34;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_23E4A9790;
  v53 = &block_descriptor_43;
  v35 = _Block_copy(&aBlock);

  v36 = [v30 addObserverForName:v31 object:v32 queue:v33 usingBlock:v35];
  _Block_release(v35);

  v37 = *MEMORY[0x277CE8BB8];
  sub_23E4AC968(0, &qword_28110A3E0, 0x277D85C78);
  v38 = sub_23E4DCEFC();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v54 = sub_23E4D4A18;
  v55 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v51 = 1107296256;
  v52 = sub_23E4D1878;
  v53 = &block_descriptor_47;
  v40 = _Block_copy(&aBlock);

  v41 = OBJC_IVAR___AAUIAwardsDataProvider_firstHistoricalRunChangedNotifyToken;
  swift_beginAccess();
  notify_register_dispatch(v37, (v1 + v41), v38, v40);
  swift_endAccess();
  _Block_release(v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345350, &qword_23E4DFD68);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_23E4DFD20;
  *(v42 + 56) = swift_getObjectType();
  *(v42 + 32) = v49;
  *(v42 + 88) = swift_getObjectType();
  *(v42 + 64) = v48;
  *(v42 + 120) = swift_getObjectType();
  *(v42 + 96) = v47;
  *(v42 + 152) = swift_getObjectType();
  *(v42 + 128) = v46;
  *(v42 + 184) = swift_getObjectType();
  *(v42 + 160) = v45;
  *(v42 + 216) = swift_getObjectType();
  *(v42 + 192) = v36;
  v43 = *((*MEMORY[0x277D85000] & *v1) + 0x2C8);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v43(v42);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_23E4B475C()
{
  MEMORY[0x23EF0BFF0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E4B4794()
{
  v1 = OBJC_IVAR___AAUIAwardsDataProvider_initialAwardsBatchDelivered;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_23E4B47D8()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x168))(1);
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    sub_23E4ADB98(v1);
  }
}

unint64_t sub_23E4B48A0(unint64_t a1)
{
  v2 = a1;
  v3 = *(v1 + OBJC_IVAR___AAUIAwardsDataProvider_overrideDisplayState);
  if (v3 != 2)
  {
    if (v3 != 1)
    {

      return v2;
    }

    if (a1 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23E4DD07C())
    {
      v5 = MEMORY[0x277D84F90];
      if (!i)
      {
        break;
      }

      v18 = MEMORY[0x277D84F90];
      result = sub_23E4DD02C();
      if (i < 0)
      {
        __break(1u);
        goto LABEL_32;
      }

      for (j = 0; ; ++j)
      {
        v10 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        if ((v2 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x23EF0AFF0](j, v2);
        }

        else
        {
          if (j >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v8 = *(v2 + 8 * j + 32);
        }

        v9 = v8;
        v16 = v8;
        sub_23E4D1EA8(&v16, &v17);

        sub_23E4DD00C();
        sub_23E4DD03C();
        sub_23E4DD04C();
        sub_23E4DD01C();
        if (v10 == i)
        {
          return v18;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

    return v5;
  }

  if (a1 >> 62)
  {
    v11 = sub_23E4DD07C();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v11)
  {
    return v5;
  }

  v18 = MEMORY[0x277D84F90];
  result = sub_23E4DD02C();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x23EF0AFF0](v12, v2);
      }

      else
      {
        v13 = *(v2 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      v15 = [v13 shallowCopyWithRelevantEarnedInstance_];

      sub_23E4DD00C();
      sub_23E4DD03C();
      sub_23E4DD04C();
      sub_23E4DD01C();
    }

    while (v11 != v12);
    return v18;
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_23E4B4AF0(unint64_t a1, void *a2, void *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23E4DD07C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EF0AFF0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v8 = *(a1 + 8 * j + 32);
      }

      v9 = v8;
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v11 = [v8 unearned];
      v12 = v9;
      if (v11)
      {
        MEMORY[0x23EF0AE40]();
        if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23E4DCE6C();
        }
      }

      else
      {
        MEMORY[0x23EF0AE40]();
        if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_23E4DCE6C();
        }
      }

      sub_23E4DCE8C();

      if (v10 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

uint64_t sub_23E4B4CAC(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_23E4B4D5C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_23E4DD07C();
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

  v13 = sub_23E4DD07C();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_23E4B4E4C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_23E4B4EEC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_23E4B4E4C(uint64_t a1, char a2)
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

  sub_23E4DD07C();
LABEL_9:
  result = sub_23E4DCFEC();
  *v2 = result;
  return result;
}

uint64_t sub_23E4B4EEC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23E4DD07C();
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
      result = sub_23E4DD07C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23E4AA98C(&qword_27E345368, &qword_27E345360, &unk_23E4DFD78, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345360, &unk_23E4DFD78);
            v9 = sub_23E4D4844(v13, i, a3);
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
        sub_23E4AC968(0, &qword_28110A3F8, 0x277CE8CB0);
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

unint64_t sub_23E4B50A8()
{
  result = qword_28110A440;
  if (!qword_28110A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110A440);
  }

  return result;
}

unint64_t sub_23E4B5108()
{
  result = qword_28110A438;
  if (!qword_28110A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28110A438);
  }

  return result;
}

void *sub_23E4B515C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3453E8, "@(");
  v2 = *v0;
  v3 = sub_23E4DD09C();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

uint64_t sub_23E4B52B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000054;
  v3 = 0x495F524F465F4F47;
  v4 = a1;
  v5 = 0xD000000000000012;
  v6 = 0x800000023E4E09E0;
  if (a1 != 5)
  {
    v5 = 0x54495445504D4F43;
    v6 = 0xEC000000534E4F49;
  }

  v7 = 0x5F5353454E544946;
  v8 = 0xEC00000053554C50;
  if (a1 != 3)
  {
    v7 = 0x5F444554494D494CLL;
    v8 = 0xEF4E4F4954494445;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x5954495649544341;
  if (a1 != 1)
  {
    v10 = 0x5354554F4B524F57;
    v9 = 0xE800000000000000;
  }

  if (!a1)
  {
    v10 = 0x495F524F465F4F47;
    v9 = 0xE900000000000054;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v2 = 0xE800000000000000;
      if (a2 == 1)
      {
        if (v11 != 0x5954495649544341)
        {
          goto LABEL_37;
        }
      }

      else if (v11 != 0x5354554F4B524F57)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

LABEL_31:
    if (v11 != v3)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0x800000023E4E09E0;
      if (v11 != 0xD000000000000012)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v13 = 0x54495445504D4F43;
    v14 = 1397641033;
    goto LABEL_34;
  }

  if (a2 != 3)
  {
    v3 = 0x5F444554494D494CLL;
    v2 = 0xEF4E4F4954494445;
    goto LABEL_31;
  }

  v13 = 0x5F5353454E544946;
  v14 = 1398099024;
LABEL_34:
  v2 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
  if (v11 != v13)
  {
LABEL_37:
    v15 = sub_23E4DD12C();
    goto LABEL_38;
  }

LABEL_35:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v15 = 1;
LABEL_38:

  return v15 & 1;
}

void sub_23E4B5504(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_23E4B27D8(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_23E4B58C4(v8, v7);

  sub_23E4DD01C();
}

uint64_t sub_23E4B55A4(unint64_t a1)
{
  v31 = MEMORY[0x277D84F90];
  v30 = sub_23E4AC208(MEMORY[0x277D84F90]);
  sub_23E4B5F38(a1, &v30);
  v2 = v30;
  v3 = *(v30 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_23E4D85F8(*(v30 + 16), 0);
  v5 = sub_23E4DB6C4(&v29, v4 + 4, v3, v2);
  v6 = v29;
  swift_bridgeObjectRetain_n();
  sub_23E4ADB8C(v6);
  if (v5 != v3)
  {
    __break(1u);
LABEL_4:

    v4 = MEMORY[0x277D84F90];
  }

  v29 = v4;
  sub_23E4B5DC0(&v29);

  v7 = v29;
  v8 = *(v29 + 16);
  if (!v8)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v9 = 0;
  v10 = (v29 + 40);
  v11 = MEMORY[0x277D84F90];
  v27 = (v29 + 40);
  while (2)
  {
    v12 = &v10[16 * v9];
    v13 = v9;
    while (1)
    {
      if (v13 >= v8)
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);

        __break(1u);
        return result;
      }

      v9 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_35;
      }

      if (*(v2 + 16))
      {
        break;
      }

LABEL_8:
      ++v13;
      v12 += 2;
      if (v9 == v8)
      {
        goto LABEL_33;
      }
    }

    v14 = *(v12 - 1);
    v15 = *v12;

    v16 = sub_23E4CED74(v14, v15);
    if ((v17 & 1) == 0)
    {

      goto LABEL_8;
    }

    v18 = *(*(v2 + 56) + 8 * v16);
    swift_bridgeObjectRetain_n();
    v29 = sub_23E4B27D4(v18);
    sub_23E4B5C2C(&v29);

    v19 = v29;
    if (v29 < 0 || (v29 & 0x4000000000000000) != 0)
    {
      v20 = sub_23E4DD07C();
      if (v20)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v20 = *(v29 + 16);
      if (v20)
      {
LABEL_17:
        v26 = v7;
        v21 = 0;
        v28 = v8;
        do
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = MEMORY[0x23EF0AFF0](v21, v19);
            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_36;
            }
          }

          else
          {
            if (v21 >= *(v19 + 16))
            {
              goto LABEL_37;
            }

            v22 = *(v19 + 8 * v21 + 32);
            v23 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_36;
            }
          }

          v24 = v22;
          MEMORY[0x23EF0AE40]();
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23E4DCE6C();
          }

          sub_23E4DCE8C();
          v11 = v31;

          ++v21;
          v8 = v28;
        }

        while (v23 != v20);
        v7 = v26;
      }
    }

    v10 = v27;
    if (v9 != v8)
    {
      continue;
    }

    break;
  }

LABEL_33:

  return v11;
}

void sub_23E4B58C4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_23E4DD0EC();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23E4A5744();
        v8 = sub_23E4DCE7C();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_23E4D4FB0(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_23E4AC364(0, v3, 1, a1);
  }
}

uint64_t sub_23E4B5A08(unint64_t a1)
{
  v16 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23E4DD07C())
  {
    v3 = MEMORY[0x277D84F90];
    if (i)
    {
      v4 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x23EF0AFF0](v4, a1);
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v5 = *(a1 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (AAUIIsGoldAchievement(v5))
        {
          sub_23E4DD00C();
          sub_23E4DD03C();
          sub_23E4DD04C();
          sub_23E4DD01C();
        }

        else
        {
        }

        ++v4;
        if (v7 == i)
        {
          v8 = v16;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v8 = MEMORY[0x277D84F90];
LABEL_16:
    v9 = sub_23E4B55A4(v8);

    v16 = v3;
    if (!i)
    {
      break;
    }

    v10 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x23EF0AFF0](v10, a1);
      }

      else
      {
        if (v10 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (AAUIIsGoldAchievement(v11))
      {
      }

      else
      {
        sub_23E4DD00C();
        sub_23E4DD03C();
        sub_23E4DD04C();
        sub_23E4DD01C();
      }

      ++v10;
      if (v13 == i)
      {
        v3 = v16;
        goto LABEL_28;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_28:
  v14 = sub_23E4B55A4(v3);

  sub_23E4B4D5C(v14);
  return v9;
}

uint64_t sub_23E4B5C2C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_23E4B27D8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_23E4B5CA8(v6);
  return sub_23E4DD01C();
}

void sub_23E4B5CA8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23E4DD0EC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_23E4A5744();
        v6 = sub_23E4DCE7C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_23E4D9740(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_23E4D867C(0, v2, 1, a1);
  }
}

uint64_t sub_23E4B5DC0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23E4B5DAC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_23E4B613C(v5);
  *a1 = v2;
  return result;
}

char *sub_23E4B5E2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345308, &qword_23E4DFCB8);
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

void sub_23E4B5F38(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v17)
  {
    v4 = 0;
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v20 = a1 & 0xC000000000000001;
    v18 = a1;
    while (1)
    {
      if (v20)
      {
        a1 = MEMORY[0x23EF0AFF0](v4, a1);
      }

      else
      {
        if (v4 >= *(v19 + 16))
        {
          goto LABEL_22;
        }

        a1 = *(a1 + 8 * v4 + 32);
      }

      v5 = a1;
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v7 = AAUILocalizedActivityTypeForAchievement(a1);
      if (v7)
      {
        v8 = v7;
        v9 = sub_23E4DCD7C();
        v11 = v10;
      }

      else
      {
        v9 = 0;
        v11 = 0xE000000000000000;
      }

      v12 = *a2;
      if (*(*a2 + 16) && (v13 = sub_23E4CED74(v9, v11), (v14 & 1) != 0))
      {
        v23 = *(*(v12 + 56) + 8 * v13);
      }

      else
      {
        v23 = MEMORY[0x277D84F90];
      }

      v15 = v5;
      MEMORY[0x23EF0AE40]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23E4DCE6C();
      }

      sub_23E4DCE8C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *a2;
      *a2 = 0x8000000000000000;
      sub_23E4D37F0(v23, v9, v11, isUniquelyReferenced_nonNull_native);

      *a2 = v22;

      if (!v21)
      {
        ++v4;
        a1 = v18;
        if (v6 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v17 = a1;
    i = sub_23E4DD07C();
  }
}

uint64_t sub_23E4B613C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_23E4DD0EC();
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
        v5 = sub_23E4DCE7C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_23E4D9E5C(v7, v8, a1, v4);
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
    return sub_23E4D87B0(0, v2, 1, a1);
  }

  return result;
}

unint64_t sub_23E4B6234(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_23E4B6308(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_23E4B6308(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23E4DD07C();
  }

  return sub_23E4DCFEC();
}

uint64_t sub_23E4B6384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  LODWORD(v7) = a7;
  LODWORD(v8) = a6;
  v44 = a2;
  v45 = a3;
  v40 = sub_23E4DCCCC();
  v11 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v35 = result;
    v15 = *(result + OBJC_IVAR___AAUIAwardsDataProvider_protectedObservers);
    os_unfair_lock_lock((v15 + 24));
    v16 = [*(v15 + 16) allObjects];
    v17 = sub_23E4DCE4C();

    os_unfair_lock_unlock((v15 + 24));
    v19 = v17;
    if (v17 >> 62)
    {
      result = sub_23E4DD07C();
      v19 = v17;
      v20 = v40;
      if (result)
      {
        goto LABEL_4;
      }
    }

    else
    {
      result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v20 = v40;
      if (result)
      {
LABEL_4:
        if (result < 1)
        {
          __break(1u);
          return result;
        }

        v21 = 0;
        v46 = v19 & 0xC000000000000001;
        v42 = (v11 + 8);
        v43 = (v11 + 16);
        *&v18 = 136315138;
        v36 = v18;
        v47 = result;
        v48 = v19;
        v39 = v7;
        v38 = a5;
        v37 = v8;
        v41 = v13;
        do
        {
          if (v46)
          {
            v22 = MEMORY[0x23EF0AFF0](v21);
          }

          else
          {
            v22 = *(v19 + 8 * v21 + 32);
            swift_unknownObjectRetain();
          }

          swift_unknownObjectRetain();
          swift_getObjectType();
          v23 = swift_conformsToProtocol2();
          if (v23 && v22)
          {
            v24 = v23;
            v25 = sub_23E4A9B6C();
            (*v43)(v13, v25, v20);
            swift_unknownObjectRetain();
            v26 = sub_23E4DCCAC();
            v27 = sub_23E4DCECC();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v26, v27))
            {
              v7 = swift_slowAlloc();
              v8 = swift_slowAlloc();
              v49 = v22;
              v50 = v8;
              *v7 = v36;
              v28 = sub_23E4DCD8C();
              v30 = sub_23E4B6768(v28, v29, &v50);

              *(v7 + 4) = v30;
              v20 = v40;
              _os_log_impl(&dword_23E4A3000, v26, v27, "[AAUIAwardsDataProvider] Notifying observer of update: %s", v7, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v8);
              v31 = v8;
              LOBYTE(v8) = v37;
              a5 = v38;
              MEMORY[0x23EF0BFA0](v31, -1, -1);
              v32 = v7;
              LOBYTE(v7) = v39;
              MEMORY[0x23EF0BFA0](v32, -1, -1);
            }

            else
            {

              swift_unknownObjectRelease();
            }

            v13 = v41;
            (*v42)(v41, v20);
            ObjectType = swift_getObjectType();
            (*(v24 + 8))(v44, v45, a4, a5, v8 & 1, v7 & 1, ObjectType, v24);
            swift_unknownObjectRelease();
          }

          else
          {
            swift_unknownObjectRelease_n();
          }

          ++v21;
          v19 = v48;
        }

        while (v47 != v21);
      }
    }
  }

  return result;
}

unint64_t sub_23E4B6768(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23E4B6834(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23E4B6940(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23E4B6834(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23E4CFB54(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_23E4DCFFC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_23E4B6940(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
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

uint64_t sub_23E4B69E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  v23 = a6;
  v12 = sub_23E4DCCDC();
  v27 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_23E4DCCFC();
  v25 = *(v15 - 8);
  v26 = v15;
  MEMORY[0x28223BE20](v15);
  v17 = &v22[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = *(v6 + OBJC_IVAR___AAUIAwardsDataProvider_notifyQueue);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a1;
  *(v19 + 32) = a2;
  *(v19 + 40) = a3;
  *(v19 + 48) = a4;
  *(v19 + 56) = a5;
  *(v19 + 57) = v23;
  aBlock[4] = sub_23E4B636C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E4AADB0;
  aBlock[3] = &block_descriptor_69;
  v20 = _Block_copy(aBlock);

  sub_23E4DCCEC();
  v28 = MEMORY[0x277D84F90];
  sub_23E4A9F7C(&qword_28110A428, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E345358, &qword_23E4DFD70);
  sub_23E4AA98C(&qword_28110A408, &qword_27E345358, &qword_23E4DFD70, MEMORY[0x277D83970]);
  sub_23E4DCF6C();
  MEMORY[0x23EF0AF20](0, v17, v14, v20);
  _Block_release(v20);
  (*(v27 + 8))(v14, v12);
  (*(v25 + 8))(v17, v26);
}

uint64_t sub_23E4B6D38()
{

  return MEMORY[0x2821FE8E8](v0, 58, 7);
}

uint64_t sub_23E4B6D90()
{
  v2 = sub_23E4DCD0C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___AAUIAwardsDataProvider_awardQueue);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_23E4DCD1C();
  v8 = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v9 = MEMORY[0x277D85000];
    v10 = *((*MEMORY[0x277D85000] & *v0) + 0x1D8);
    v11 = v10(v8);
    v12 = sub_23E4DCD6C();
    v13 = [objc_opt_self() mainBundle];
    v14 = [v13 bundleIdentifier];

    if (v14)
    {
      AppBooleanValue = CFPreferencesGetAppBooleanValue(v12, v14, 0);

      LOBYTE(v14) = AppBooleanValue != 0;
    }

    v16 = (*((*v9 & *v0) + 0x190))();
    v17 = v16;
    v18 = *(v16 + 16);
    if (v18)
    {
      v19 = sub_23E4B70F0(*(v16 + 16), 0);
      v20 = sub_23E4B7164(&v27, v19 + 32, v18, v17);
      sub_23E4ADB8C(v27);
      if (v20 == v18)
      {
LABEL_8:
        v27 = v19;
        v21 = v0;

        sub_23E4B7260(&v27, v14, v21);

        v22 = (*((*v9 & *v21) + 0x1E0))(v27);
        v23 = v10(v22);
        v24 = sub_23E4B7E2C(v11, v23);

        return (v24 & 1) == 0;
      }

      __break(1u);
    }

    v19 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_23E4B70F0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3452F8, &qword_23E4DFCA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_23E4B7164(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_23E4B7260(char **a1, char a2, void *a3)
{
  v5 = a1;
  v6 = *a1;
  v7 = a3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_23E4B7560(v6);
  }

  v8 = *(v6 + 2);
  v9 = v6 + 32;
  v30[0] = (v6 + 32);
  v30[1] = v8;
  v10 = v7;
  v11 = sub_23E4DD0EC();
  if (v11 >= v8)
  {
    if (v8 >= 2)
    {
      v27 = v5;
      v25 = v10;
      v16 = v10;
      v26 = v6;
      v17 = v6 + 33;
      v18 = -1;
      v19 = 1;
      v28 = v9;
      while (2)
      {
        v20 = v9[v19];
        v21 = v18;
        v22 = v17;
        do
        {
          LOBYTE(v29[0]) = v20;
          v31[0] = *(v22 - 1);
          v23 = sub_23E4B7574(v29, v31, a2 & 1, v16);
          if (v3)
          {

            v6 = v26;
            v5 = v27;
            v10 = v25;
            goto LABEL_19;
          }

          if ((v23 & 1) == 0)
          {
            break;
          }

          v20 = *v22;
          *v22 = *(v22 - 1);
          *--v22 = v20;
        }

        while (!__CFADD__(v21++, 1));
        ++v19;
        ++v17;
        --v18;
        v9 = v28;
        if (v19 != v8)
        {
          continue;
        }

        break;
      }

      v6 = v26;
      v5 = v27;
      v10 = v25;
    }
  }

  else
  {
    v12 = v11;
    v13 = (v8 >> 1);
    if (v8 >= 2)
    {
      v14 = sub_23E4DCE7C();
      *(v14 + 16) = v13;
    }

    else
    {
      v14 = MEMORY[0x277D84F90];
    }

    v29[0] = (v14 + 32);
    v29[1] = v13;
    v15 = v10;
    sub_23E4DB920(v29, v31, v30, v12, a2 & 1, v15);

    *(v14 + 16) = 0;
  }

LABEL_19:
  *v5 = v6;
}

char *sub_23E4B746C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3452F8, &qword_23E4DFCA8);
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

uint64_t sub_23E4B7574(char *a1, char *a2, char a3, void *a4)
{
  v6 = *a1;
  v7 = *a2;
  sub_23E4B7C20();
  sub_23E4DCE1C();
  sub_23E4DCE1C();
  if (v53 == v51 && v54 == v52)
  {
    goto LABEL_9;
  }

  v9 = sub_23E4DD12C();

  if (v9)
  {
    return 1;
  }

  sub_23E4DCE1C();
  sub_23E4DCE1C();
  if (v53 == v51 && v54 == v52)
  {
    goto LABEL_8;
  }

  v11 = sub_23E4DD12C();

  if (v11)
  {
    return 0;
  }

  if (a3)
  {
    sub_23E4DCE1C();
    sub_23E4DCE1C();
    if (v53 != v51 || v54 != v52)
    {
      v13 = sub_23E4DD12C();

      if ((v13 & 1) == 0)
      {
        sub_23E4DCE1C();
        sub_23E4DCE1C();
        if (v53 == v51 && v54 == v52)
        {
LABEL_8:

          return 0;
        }

        v14 = sub_23E4DD12C();

        if (v14)
        {
          return 0;
        }

        goto LABEL_20;
      }

      return 1;
    }

LABEL_9:

    return 1;
  }

LABEL_20:
  v15 = MEMORY[0x277D85000];
  v16 = *((*MEMORY[0x277D85000] & *a4) + 0x1A8);
  v17 = v16(v12);
  if (!*(v17 + 16) || (v18 = sub_23E4ABDC4(v6), (v19 & 1) == 0))
  {
LABEL_27:

    v22 = (*((*v15 & *a4) + 0x190))(v21);
    if (*(v22 + 16))
    {
      v23 = sub_23E4ABDC4(v6);
      if (v24)
      {
        v20 = *(*(v22 + 56) + 8 * v23);

        if (v20 >> 62)
        {
          result = sub_23E4DD07C();
          if (result)
          {
LABEL_31:
            if ((v20 & 0xC000000000000001) == 0)
            {
              if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_81;
              }

              goto LABEL_33;
            }

LABEL_70:
            v25 = MEMORY[0x23EF0AFF0](0, v20);
            goto LABEL_34;
          }
        }

        else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }
      }
    }

    v26 = 0;
    goto LABEL_36;
  }

  v20 = *(*(v17 + 56) + 8 * v18);

  if (v20 >> 62)
  {
    if (!sub_23E4DD07C())
    {
      goto LABEL_27;
    }
  }

  else if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  if ((v20 & 0xC000000000000001) != 0)
  {
    goto LABEL_70;
  }

  if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_27;
  }

LABEL_33:
  v25 = *(v20 + 32);
LABEL_34:
  v26 = v25;

LABEL_36:
  v28 = v16(v27);
  if (*(v28 + 16))
  {
    v29 = sub_23E4ABDC4(v7);
    if (v30)
    {
      v31 = *(*(v28 + 56) + 8 * v29);

      if (v31 >> 62)
      {
        if (!sub_23E4DD07C())
        {
          goto LABEL_43;
        }
      }

      else if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      if ((v31 & 0xC000000000000001) != 0)
      {
        goto LABEL_71;
      }

      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_49:
        v36 = *(v31 + 32);
LABEL_50:
        v37 = v36;

        goto LABEL_52;
      }

      __break(1u);
    }
  }

LABEL_43:

  v33 = (*((*v15 & *a4) + 0x190))(v32);
  if (*(v33 + 16))
  {
    v34 = sub_23E4ABDC4(v7);
    if (v35)
    {
      v31 = *(*(v33 + 56) + 8 * v34);

      if (v31 >> 62)
      {
        result = sub_23E4DD07C();
        if (result)
        {
LABEL_47:
          if ((v31 & 0xC000000000000001) == 0)
          {
            if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_49;
            }

LABEL_81:
            __break(1u);
            return result;
          }

LABEL_71:
          v36 = MEMORY[0x23EF0AFF0](0, v31);
          goto LABEL_50;
        }
      }

      else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }
    }
  }

  v37 = 0;
LABEL_52:
  if (!v26)
  {
    if (v37)
    {

      return 0;
    }

    v38 = 0;
    goto LABEL_63;
  }

  if (!v37)
  {

    return 1;
  }

  v38 = v26;
  v37 = v37;
  if (([v38 unearned] & 1) == 0)
  {

    goto LABEL_61;
  }

  v39 = [v37 unearned];

  if ((v39 & 1) == 0)
  {
LABEL_61:
    v40 = sub_23E4A87E8(v38, v37);

    return v40 == -1;
  }

LABEL_63:
  v41 = static AAUIAwardsDataProviderSection.allCases.getter();
  v42 = sub_23E4B7D84(v6, v41);
  v44 = v43;

  if (v44)
  {
    v45 = 0;
  }

  else
  {
    v45 = v42;
  }

  v46 = static AAUIAwardsDataProviderSection.allCases.getter();
  v47 = sub_23E4B7D84(v7, v46);
  v49 = v48;

  if (v49)
  {
    v50 = 0;
  }

  else
  {
    v50 = v47;
  }

  return v45 < v50;
}