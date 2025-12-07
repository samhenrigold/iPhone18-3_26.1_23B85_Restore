uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C17_CyclingPowerZoneV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (&v40 - v11);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR);
  MEMORY[0x28223BE20](v47, v13);
  v48 = &v40 - v14;
  v49 = type metadata accessor for Apple_Workout_Core_CyclingPowerZone(0);
  v16 = MEMORY[0x28223BE20](v49, v15);
  v18 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16, v19);
  v22 = (&v40 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_27:
    v36 = 0;
    return v36 & 1;
  }

  if (v23 && a1 != a2)
  {
    v44 = v18;
    v45 = v4;
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = a1 + v24;
    v26 = a2 + v24;
    v41 = *(v20 + 72);
    v42 = (v5 + 48);
    v43 = (&v40 - v21);
    v40 = v8;
    while (1)
    {
      outlined init with copy of Apple_Workout_Core_DateInterval(v25, v22, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
      outlined init with copy of Apple_Workout_Core_DateInterval(v26, v18, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
      if (*v22 != *v18 || v22[1] != v18[1])
      {
        break;
      }

      v46 = v25;
      v27 = v48;
      v28 = *(v49 + 28);
      v29 = v22;
      v30 = *(v47 + 48);
      outlined init with copy of Apple_Workout_Core_Zone?(v29 + v28, v48, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      outlined init with copy of Apple_Workout_Core_Zone?(v18 + v28, v27 + v30, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      v31 = *v42;
      v32 = v45;
      if ((*v42)(v27, 1, v45) == 1)
      {
        v33 = v31(v27 + v30, 1, v32);
        v22 = v43;
        v18 = v44;
        if (v33 != 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        outlined init with copy of Apple_Workout_Core_Zone?(v27, v12, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
        if (v31(v27 + v30, 1, v32) == 1)
        {
          outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_Zone);
          v22 = v43;
          v18 = v44;
LABEL_24:
          v37 = &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd;
          v38 = &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR;
          goto LABEL_25;
        }

        v34 = v40;
        outlined init with take of Apple_Workout_Core_Zone(v27 + v30, v40, type metadata accessor for Apple_Workout_Core_Zone);
        if (*v12 != *v34 || v12[1] != *(v34 + 8) || *(v12 + 4) != *(v34 + 16) || *(v12 + 5) != *(v34 + 20))
        {
          outlined destroy of Apple_Workout_Core_DateInterval(v34, type metadata accessor for Apple_Workout_Core_Zone);
          v22 = v43;
          v18 = v44;
LABEL_22:
          outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_Zone);
          v37 = &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd;
          v38 = &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR;
LABEL_25:
          outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v27, v37, v38);
          break;
        }

        type metadata accessor for UnknownStorage();
        lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
        v27 = v48;
        v35 = dispatch thunk of static Equatable.== infix(_:_:)();
        outlined destroy of Apple_Workout_Core_DateInterval(v34, type metadata accessor for Apple_Workout_Core_Zone);
        v22 = v43;
        v18 = v44;
        if ((v35 & 1) == 0)
        {
          goto LABEL_22;
        }

        outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_Zone);
      }

      outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v27, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v36 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_Core_DateInterval(v18, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
      outlined destroy of Apple_Workout_Core_DateInterval(v22, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
      if (v36)
      {
        v26 += v41;
        v25 = v46 + v41;
        if (--v23)
        {
          continue;
        }
      }

      return v36 & 1;
    }

    outlined destroy of Apple_Workout_Core_DateInterval(v18, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
    outlined destroy of Apple_Workout_Core_DateInterval(v22, type metadata accessor for Apple_Workout_Core_CyclingPowerZone);
    goto LABEL_27;
  }

  v36 = 1;
  return v36 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C14_MetricPlatterV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v12 = &v28 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_51:
    v27 = 0;
    return v27 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v27 = 1;
    return v27 & 1;
  }

  v14 = 0;
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(v10 + 72);
  while (1)
  {
    result = outlined init with copy of Apple_Workout_Core_DateInterval(v16 + v18 * v14, v12, type metadata accessor for Apple_Workout_Core_MetricPlatter);
    if (v14 == v13)
    {
      break;
    }

    outlined init with copy of Apple_Workout_Core_DateInterval(v17 + v18 * v14, v8, type metadata accessor for Apple_Workout_Core_MetricPlatter);
    v20 = *v12;
    v21 = *v8;
    if (v8[8] == 1)
    {
      switch(v21)
      {
        case 1:
          if (v20 != 1)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 2:
          if (v20 != 2)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 3:
          if (v20 != 3)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 4:
          if (v20 != 4)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 5:
          if (v20 != 5)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 6:
          if (v20 != 6)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 7:
          if (v20 != 7)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 8:
          if (v20 != 8)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 9:
          if (v20 != 9)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 10:
          if (v20 != 10)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 11:
          if (v20 != 11)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 12:
          if (v20 != 12)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 13:
          if (v20 != 13)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 14:
          if (v20 != 14)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        case 15:
          if (v20 != 15)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
        default:
          if (v20)
          {
            goto LABEL_50;
          }

          goto LABEL_11;
      }
    }

    if (v20 != v21)
    {
      goto LABEL_50;
    }

LABEL_11:
    if (v12[9] != v8[9])
    {
      goto LABEL_50;
    }

    v22 = *(v12 + 2);
    v23 = *(v8 + 2);
    v24 = *(v22 + 16);
    if (v24 != *(v23 + 16))
    {
      goto LABEL_50;
    }

    if (v24 && v22 != v23)
    {
      v25 = (v22 + 32);
      v26 = (v23 + 32);
      while (*v25 == *v26)
      {
        ++v25;
        ++v26;
        if (!--v24)
        {
          goto LABEL_18;
        }
      }

LABEL_50:
      outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_MetricPlatter);
      outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_MetricPlatter);
      goto LABEL_51;
    }

LABEL_18:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v27 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_MetricPlatter);
    outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_MetricPlatter);
    if ((v27 & 1) != 0 && ++v14 != v13)
    {
      continue;
    }

    return v27 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_c1_B16NotificationUnitV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit(0) - 8;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v9);
  v12 = (&v20 - v11);
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        outlined init with copy of Apple_Workout_Core_DateInterval(v15, v12, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);
        outlined init with copy of Apple_Workout_Core_DateInterval(v16, v8, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);
        v18 = specialized static Apple_Workout_Core_WorkoutNotificationUnit.== infix(_:_:)(v12, v8);
        outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);
        outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_WorkoutNotificationUnit);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C18_PublisherSequenceV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_PublisherSequence(0);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v12 = &v22 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v20 = 1;
      return v20 & 1;
    }

    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v10 + 72);
    while (1)
    {
      outlined init with copy of Apple_Workout_Core_DateInterval(v15, v12, type metadata accessor for Apple_Workout_Core_PublisherSequence);
      outlined init with copy of Apple_Workout_Core_DateInterval(v16, v8, type metadata accessor for Apple_Workout_Core_PublisherSequence);
      v18 = *v12;
      v19 = *v8;
      if (v8[8] == 1)
      {
        switch(v19)
        {
          case 1:
            if (v18 != 1)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 2:
            if (v18 != 2)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 3:
            if (v18 != 3)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 4:
            if (v18 != 4)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 5:
            if (v18 != 5)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 6:
            if (v18 != 6)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 7:
            if (v18 != 7)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 8:
            if (v18 != 8)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 9:
            if (v18 != 9)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 10:
            if (v18 != 10)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 11:
            if (v18 != 11)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 12:
            if (v18 != 12)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 13:
            if (v18 != 13)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 14:
            if (v18 != 14)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 15:
            if (v18 != 15)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 16:
            if (v18 != 16)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 17:
            if (v18 != 17)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          case 18:
            if (v18 != 18)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
          default:
            if (v18)
            {
              goto LABEL_49;
            }

            goto LABEL_10;
        }
      }

      if (v18 != v19)
      {
        break;
      }

LABEL_10:
      if (*(v12 + 3) != *(v8 + 3))
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_PublisherSequence);
      outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_PublisherSequence);
      if (v20)
      {
        v16 += v17;
        v15 += v17;
        if (--v13)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_49:
    outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_PublisherSequence);
    outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_PublisherSequence);
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C9_LiveZoneV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_Zone(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = (&v39 - v11);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR);
  MEMORY[0x28223BE20](v46, v13);
  v15 = &v39 - v14;
  v48 = type metadata accessor for Apple_Workout_Core_LiveZone(0);
  v17 = MEMORY[0x28223BE20](v48, v16);
  v19 = (&v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17, v20);
  v23 = (&v39 - v22);
  v24 = *(a1 + 16);
  if (v24 != *(a2 + 16))
  {
    goto LABEL_24;
  }

  if (!v24 || a1 == a2)
  {
    v35 = 1;
    return v35 & 1;
  }

  v44 = (&v39 - v22);
  v45 = v4;
  v25 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v42 = v19;
  v43 = (v5 + 48);
  v40 = *(v21 + 72);
  v41 = v15;
  v39 = v8;
  while (1)
  {
    outlined init with copy of Apple_Workout_Core_DateInterval(v26, v23, type metadata accessor for Apple_Workout_Core_LiveZone);
    outlined init with copy of Apple_Workout_Core_DateInterval(v27, v19, type metadata accessor for Apple_Workout_Core_LiveZone);
    if (*v23 != *v19)
    {
      goto LABEL_20;
    }

    v47 = v26;
    v28 = *(v48 + 24);
    v29 = *(v46 + 48);
    v30 = v41;
    outlined init with copy of Apple_Workout_Core_Zone?(v23 + v28, v41, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    outlined init with copy of Apple_Workout_Core_Zone?(v19 + v28, v30 + v29, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    v31 = *v43;
    v32 = v45;
    if ((*v43)(v30, 1, v45) == 1)
    {
      break;
    }

    outlined init with copy of Apple_Workout_Core_Zone?(v30, v12, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    if (v31(v30 + v29, 1, v32) == 1)
    {
      outlined destroy of Apple_Workout_Core_DateInterval(v42, type metadata accessor for Apple_Workout_Core_LiveZone);
      outlined destroy of Apple_Workout_Core_DateInterval(v44, type metadata accessor for Apple_Workout_Core_LiveZone);
      v36 = type metadata accessor for Apple_Workout_Core_Zone;
      v37 = v12;
      goto LABEL_23;
    }

    v33 = v39;
    outlined init with take of Apple_Workout_Core_Zone(v30 + v29, v39, type metadata accessor for Apple_Workout_Core_Zone);
    v19 = v42;
    if (*v12 != *v33 || v12[1] != *(v33 + 8) || *(v12 + 4) != *(v33 + 16) || *(v12 + 5) != *(v33 + 20))
    {
      outlined destroy of Apple_Workout_Core_DateInterval(v33, type metadata accessor for Apple_Workout_Core_Zone);
      outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_Zone);
      outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v30, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
      v23 = v44;
LABEL_20:
      outlined destroy of Apple_Workout_Core_DateInterval(v19, type metadata accessor for Apple_Workout_Core_LiveZone);
      outlined destroy of Apple_Workout_Core_DateInterval(v23, type metadata accessor for Apple_Workout_Core_LiveZone);
      goto LABEL_24;
    }

    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v34 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_DateInterval(v33, type metadata accessor for Apple_Workout_Core_Zone);
    outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_Zone);
    outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v30, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    v23 = v44;
    if ((v34 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_15:
    type metadata accessor for UnknownStorage();
    lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v35 = dispatch thunk of static Equatable.== infix(_:_:)();
    outlined destroy of Apple_Workout_Core_DateInterval(v19, type metadata accessor for Apple_Workout_Core_LiveZone);
    outlined destroy of Apple_Workout_Core_DateInterval(v23, type metadata accessor for Apple_Workout_Core_LiveZone);
    if (v35)
    {
      v27 += v40;
      v26 = v47 + v40;
      if (--v24)
      {
        continue;
      }
    }

    return v35 & 1;
  }

  if (v31(v30 + v29, 1, v32) == 1)
  {
    outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v30, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSgMR);
    v23 = v44;
    v19 = v42;
    goto LABEL_15;
  }

  outlined destroy of Apple_Workout_Core_DateInterval(v42, type metadata accessor for Apple_Workout_Core_LiveZone);
  v37 = v44;
  v36 = type metadata accessor for Apple_Workout_Core_LiveZone;
LABEL_23:
  outlined destroy of Apple_Workout_Core_DateInterval(v37, v36);
  outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(v30, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMd, &_s11WorkoutCore06Apple_a1_B5_ZoneVSg_ADtMR);
LABEL_24:
  v35 = 0;
  return v35 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore0B16NotificationUnitC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x20F2E7A20](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = MEMORY[0x20F2E7A20](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = specialized static WorkoutNotificationUnit.== infix(_:_:)(v4, v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore0B6DeviceV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    if (a1 != a2)
    {
      v4 = 0;
      v19 = a1;
      while (1)
      {
        v5 = *(a1 + v4 + 48);
        v6 = *(a1 + v4 + 56);
        v28 = *(a1 + v4 + 64);
        v7 = *(a1 + v4 + 72);
        v27 = *(a1 + v4 + 80);
        v22 = *(a1 + v4 + 96);
        v23 = *(a1 + v4 + 104);
        v8 = v3 + v4;
        v9 = *(v3 + v4 + 32);
        v10 = *(v3 + v4 + 40);
        v11 = *(v3 + v4 + 48);
        v12 = *(v8 + 56);
        v13 = *(v8 + 64);
        v14 = *(v8 + 72);
        v15 = *(v8 + 80);
        v25 = *(v8 + 88);
        v26 = *(a1 + v4 + 88);
        v21 = *(v8 + 96);
        v24 = *(v8 + 104);
        if ((*(a1 + v4 + 32) != v9 || *(a1 + v4 + 40) != v10) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        if (v5 == v11 && v6 == v12)
        {
          if (v28 != v13)
          {
            return 0;
          }
        }

        else
        {
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = 0;
          if ((v16 & 1) == 0 || v28 != v13)
          {
            return result;
          }
        }

        if (v7 == v14 && v27 == v15)
        {
          if (v26 != v25)
          {
            return 0;
          }
        }

        else
        {
          v18 = _stringCompareWithSmolCheck(_:_:expecting:)();
          result = 0;
          if (v18 & 1) == 0 || ((v26 ^ v25))
          {
            return result;
          }
        }

        if (v23)
        {
          v3 = a2;
          if (!v24 || (v22 != v21 || v23 != v24) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v3 = a2;
          if (v24)
          {
            return 0;
          }
        }

        v4 += 80;
        --v2;
        a1 = v19;
        if (!v2)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C11_TargetZoneV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_TargetZone(0);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = (&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v9);
  v12 = (&v22 - v11);
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v20 = 1;
      return v20 & 1;
    }

    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v10 + 72);
    while (1)
    {
      outlined init with copy of Apple_Workout_Core_DateInterval(v15, v12, type metadata accessor for Apple_Workout_Core_TargetZone);
      outlined init with copy of Apple_Workout_Core_DateInterval(v16, v8, type metadata accessor for Apple_Workout_Core_TargetZone);
      v18 = *v12;
      v19 = *v8;
      if (*(v8 + 8) == 1)
      {
        if (v19 > 3)
        {
          if (v19 > 5)
          {
            if (v19 == 6)
            {
              if (v18 != 6)
              {
                break;
              }
            }

            else if (v18 != 7)
            {
              break;
            }
          }

          else if (v19 == 4)
          {
            if (v18 != 4)
            {
              break;
            }
          }

          else if (v18 != 5)
          {
            break;
          }
        }

        else if (v19 > 1)
        {
          if (v19 == 2)
          {
            if (v18 != 2)
            {
              break;
            }
          }

          else if (v18 != 3)
          {
            break;
          }
        }

        else if (v19)
        {
          if (v18 != 1)
          {
            break;
          }
        }

        else if (v18)
        {
          break;
        }
      }

      else if (v18 != v19)
      {
        break;
      }

      if (v12[2] != v8[2] || v12[3] != v8[3] || *(v12 + 32) != *(v8 + 32))
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_TargetZone);
      outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_TargetZone);
      if (v20)
      {
        v16 += v17;
        v15 += v17;
        if (--v13)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_TargetZone);
    outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_TargetZone);
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore0B13ConfigurationC_Tt1g5Tm(unint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x20F2E7A20](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x20F2E7A20](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = static NSObject.== infix(_:_:)();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = __CocoaSet.count.getter();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = __CocoaSet.count.getter();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C13_DateIntervalV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_DateInterval(0);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v9);
  v12 = (&v20 - v11);
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_12:
    v18 = 0;
    return v18 & 1;
  }

  if (v13 && a1 != a2)
  {
    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v10 + 72);
    while (1)
    {
      outlined init with copy of Apple_Workout_Core_DateInterval(v15, v12, type metadata accessor for Apple_Workout_Core_DateInterval);
      outlined init with copy of Apple_Workout_Core_DateInterval(v16, v8, type metadata accessor for Apple_Workout_Core_DateInterval);
      if (*v12 != *v8 || v12[1] != v8[1])
      {
        break;
      }

      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_DateInterval);
      outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_DateInterval);
      if (v18)
      {
        v16 += v17;
        v15 += v17;
        if (--v13)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    outlined destroy of Apple_Workout_Core_DateInterval(v8, type metadata accessor for Apple_Workout_Core_DateInterval);
    outlined destroy of Apple_Workout_Core_DateInterval(v12, type metadata accessor for Apple_Workout_Core_DateInterval);
    goto LABEL_12;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_c1_B14StatePublisherV0B12PausedReasonO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7)
        {
          if (v7 == 1)
          {
            if (v5 != 1)
            {
              return 0;
            }
          }

          else if (v5 != 2)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

unint64_t Apple_Workout_Core_MetricPlatterType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x10;
  *(a2 + 9) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Apple_Workout_Core_MetricPlatterType@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Workout_Core_MetricPlatterType.rawValue.getter();
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_MetricPlatterType(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MetricPlatterType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType();

  return MEMORY[0x28217E238](a1, a2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_MetricPlatterType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void Apple_Workout_Core_MetricPlatter.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Workout_Core_MetricPlatter.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Apple_Workout_Core_MetricPlatter.metrics.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Apple_Workout_Core_MetricPlatter.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_MetricPlatter(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_MetricPlatter.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_MetricPlatter(0) + 28);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_MetricPlatter.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
  return UnknownStorage.init()();
}

uint64_t Apple_Workout_Core_PlatterPublisher.metricPlatters.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Apple_Workout_Core_PlatterPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_PlatterPublisher(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Apple_Workout_Core_MetricPlatter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_PlatterPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_PlatterPublisher(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_PlatterPublisher.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];
  type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  return UnknownStorage.init()();
}

uint64_t one-time initialization function for _protobuf_nameMap()
{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MetricPlatterType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MetricPlatterType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20B426280;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 0;
  *v5 = "STANDARD";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "STANDARD_SECOND";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "INTERVAL";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "PACER";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "RACE";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "SEGMENT";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ACTIVITY_RINGS";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "VIDEO";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "SPLIT";
  *(v22 + 8) = 5;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "HEART_RATE_ZONES";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "MULTISPORT";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "POWER";
  *(v28 + 1) = 5;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "POWER_ZONES";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "ELEVATION";
  *(v32 + 1) = 9;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SPEEDOMETER";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "INTERVAL_SECOND";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MetricPlatter._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MetricPlatter._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "include";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "metrics";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PlatterPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PlatterPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20B423A90;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "metricPlatters";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WaterTemperatureMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WaterTemperatureMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "currentWaterTemperature";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currentWaterTemperatureStale";
  *(v10 + 1) = 28;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "averageWaterTemperature";
  *(v11 + 8) = 23;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_TrackRunningMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_TrackRunningMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "trackInfo";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "trackRunningCoordinator";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_HKQuantity._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_HKQuantity._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "unit";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutChartDataElement._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutChartDataElement._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "dateSinceReference_deprecated";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value_deprecated";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "i_secondsSinceReference";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "i_value";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RaceFilter._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RaceFilter._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LAST";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BEST";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RaceInformationPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RaceInformationPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 3;
  *v6 = "routePoints";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 9;
  *v10 = "raceFilter";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 10;
  *v12 = "lastWorkoutDuration";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 11;
  *v14 = "bestWorkoutDuration";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RaceChartPoint._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RaceChartPoint._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "odometer_m_deprecated";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "altitude_m_deprecated";
  *(v10 + 8) = 21;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "odometer_m";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "altitude_cm";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_Activity._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_Activity._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423940;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "auxiliaryIdentifier";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "isIndoor";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "isPartOfMultisport";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "metadata";
  *(v15 + 8) = 8;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_ActivityMetadataValue._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_ActivityMetadataValue._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "stringValue";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "quantityValue";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "doubleValue";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dateValue";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_GoalType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_GoalType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "OPEN";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TIME";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DISTANCE";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "ENERGY";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_Goal._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_Goal._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "requiredDistance";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_GoalPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_GoalPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "goal";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "progress";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RacePositionState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RacePositionState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20B423920;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 0;
  *v4 = "NOT_YET_ON_ROUTE";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 1;
  *v8 = "ON_ROUTE_AHEAD";
  *(v8 + 8) = 14;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "ON_ROUTE_BEHIND";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "OFF_ROUTE";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "COMPLETED";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "UNKNOWN";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "EXPIRED";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RacePositionStatePublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RacePositionStatePublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_20B423920;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "racePositionState";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "racePosition";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "positionOnRoute";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "ghostPositionOnRoute";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "secondsAheadOfGhost";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 7;
  *v16 = "remainingRouteDistance";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "raceFinishTime";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RacePosition._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RacePosition._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20B423930;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "notYetOnRoute";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "onRoute";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "offRoute";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "completed";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "unknown";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "expired";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RacePositionOnRoute._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RacePositionOnRoute._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "timeAhead";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "distanceAhead";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredHostStartSource._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredHostStartSource._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MIRRORED_HOST_START_SOURCE_HEAD_UP_DISPLAY";
  *(v6 + 8) = 42;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MIRRORED_HOST_START_SOURCE_MIRRORED_START";
  *(v10 + 1) = 41;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredBlobContentType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredBlobContentType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MIRRORED_BLOB_CONTENT_TYPE_PROTOBUF";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MIRRORED_BLOB_CONTENT_TYPE_NSKEYEDARCHIVER";
  *(v10 + 8) = 42;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MIRRORED_BLOB_CONTENT_TYPE_RACE_CODABLE";
  *(v12 + 1) = 39;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MIRRORED_BLOB_CONTENT_TYPE_INTERVAL_CODABLE";
  *(v14 + 1) = 43;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredHostCommand._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredHostCommand._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MIRRORED_HOST_DELEGATE_READY";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MIRRORED_HOST_SAFETY_CHECK_IN_REQUEST";
  *(v10 + 1) = 37;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 100;
  *v11 = "PING_REQUEST";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredClientCommand._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredClientCommand._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MIRRORED_CLIENT_DELEGATE_READY";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MIRRORED_CLIENT_SAFETY_CHECK_IN_RESPONSE";
  *(v10 + 1) = 40;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 100;
  *v11 = "PING_RESPONSE";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredHostMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredHostMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mirroredHostCommand";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mirroredHostStartConfiguration";
  *(v10 + 8) = 30;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "mirroredHostMachTimestampRequest";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "mirroredHostCountdownStart";
  *(v14 + 1) = 26;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "mirroredHostAlertStackRequest";
  *(v16 + 1) = 29;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "mirroredHostSummaryUpdate";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredClientMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredClientMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "mirroredClientCommand";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "mirroredClientMachTimestampResponse";
  *(v10 + 8) = 35;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "mirroredClientPrecisionStart";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "mirroredClientAlertStackResponse";
  *(v14 + 1) = 32;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredClientMachTimestampResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredClientMachTimestampResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "hostMachTimestamp";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientMachTimestamp";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredHostCountdownStart._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredHostCountdownStart._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "hostMachDelay";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "clientMachTimestamp";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredBlob._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredBlob._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contentType";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "data";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredHostStartConfiguration._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredHostStartConfiguration._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "startSource";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "usePrecisionStart";
  *(v10 + 8) = 17;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "workoutConfigurationBlob";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "protocolVersion";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredHostAlertStackRequest._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredHostAlertStackRequest._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "alertTitle";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "alertMessage";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "continueOptionTitles";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MirroredClientAlertStackResponse._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MirroredClientAlertStackResponse._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "continueExecution";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "continueOption";
  *(v11 + 8) = 14;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_LiveZones._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_LiveZones._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zones";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currentZoneIndex";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "isStale";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_LiveZone._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_LiveZone._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "elapsedTimeInZone";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zone";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_DataLinkMessageBatch._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_DataLinkMessageBatch._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20B423A90;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "entries";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_DataLinkMessageEntry._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_DataLinkMessageEntry._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "message";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ts";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_HeartRateCurrentValueType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_HeartRateCurrentValueType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MOST_RECENT";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AVERAGE";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_HeartRateMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_HeartRateMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20B423930;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "currentHeartRate";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "currentHeartRateValueType";
  *(v8 + 8) = 25;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "averageHeartRate";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "maximumHeartRate";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "isStaleHeartRate";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "liveHeartRateZones";
  *(v16 + 1) = 18;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RunningTrackProximity._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RunningTrackProximity._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "ON";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "POSSIBLY_ON";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NEAR";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NOT_ON";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_RunningTrackInfo._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_RunningTrackInfo._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "location";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "proximity";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "laneNumber";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "lapNumber";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "laneCount";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "trackId";
  *(v18 + 1) = 7;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_Command._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_Command._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20B43DE00;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "RESUME";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v24 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "PAUSE";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v24 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "END";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v24 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "MARK_SEGMENT";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v24 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "END_MIRRORING";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v24 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "NEXT_INTERVAL";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v24 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "NEXT_LEG";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v24 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "MUTE";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v24 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "UNMUTE";
  *(v22 + 8) = 6;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PublisherKey._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PublisherKey._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_20B43DE10;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 0;
  *v5 = "INVALID";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v43 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "TOP_LEVEL_PUBLISHER";
  *(v9 + 8) = 19;
  *(v9 + 16) = 2;
  v8();
  v10 = (v43 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "ACTIVITY_SUMMARY_PUBLISHER";
  *(v11 + 1) = 26;
  v11[16] = 2;
  v8();
  v12 = (v43 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "ELAPSED_TIME_PUBLISHER";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v8();
  v14 = (v43 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "ENERGY_PUBLISHER";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v43 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "HEART_RATE_PUBLISHER";
  *(v17 + 1) = 20;
  v17[16] = 2;
  v8();
  v18 = (v43 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "INTERVALS_PUBLISHER";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v43 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "LAPS_PUBLISHER";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v43 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "MULTISPORT_PUBLISHER";
  *(v22 + 8) = 20;
  *(v22 + 16) = 2;
  v8();
  v23 = (v43 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "PLATTER_PUBLISHER";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v8();
  v25 = (v43 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "POWER_PUBLISHER";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v8();
  v27 = (v43 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "RACE_PUBLISHER";
  *(v28 + 1) = 14;
  v28[16] = 2;
  v8();
  v29 = (v43 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "RACE_POSITION_PUBLISHER";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v8();
  v31 = (v43 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "TRACK_RUNNING_PUBLISHER";
  *(v32 + 1) = 23;
  v32[16] = 2;
  v8();
  v33 = (v43 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "WORKOUT_STATE_PUBLISHER";
  *(v34 + 1) = 23;
  v34[16] = 2;
  v8();
  v35 = (v43 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "GOAL_PUBLISHER";
  *(v36 + 1) = 14;
  v36[16] = 2;
  v8();
  v37 = v43 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "LOCATION_POSITION_PUBLISHER";
  *(v37 + 8) = 27;
  *(v37 + 16) = 2;
  v8();
  v38 = (v43 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "WATER_TEMPERATURE_PUBLISHER";
  *(v39 + 1) = 27;
  v39[16] = 2;
  v8();
  v40 = (v43 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "WORKOUT_BUDDY_STATE_PUBLISHER";
  *(v41 + 1) = 29;
  v41[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_NotificationType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_NotificationType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4238A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NOTIFICATION_INTERVAL";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "NOTIFICATION_INTERVAL_WITH_RESULT";
  *(v10 + 8) = 33;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "NOTIFICATION_MILESTONE";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NOTIFICATION_PACER_COMPLETE";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "NOTIFICATION_RACE_COMPLETE";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "NOTIFICATION_STANDARD";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "NOTIFICATION_ZONE";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "NOTIFICATION_TRANSCRIPT";
  *(v22 + 1) = 23;
  v22[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_NotificationUnitType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_NotificationUnitType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_20B43DE20;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 0;
  *v5 = "UNIT_TYPE_CADENCE";
  *(v5 + 8) = 17;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "UNIT_TYPE_DISTANCE";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "UNIT_TYPE_ENERGY";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "UNIT_TYPE_HEADING";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "UNIT_TYPE_HEART_RATE";
  *(v15 + 1) = 20;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "UNIT_TYPE_IMAGE";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "UNIT_TYPE_PACE";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "UNIT_TYPE_PACE_WITHOUT_GPS";
  *(v21 + 1) = 26;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "UNIT_TYPE_POWER";
  *(v22 + 8) = 15;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "UNIT_TYPE_RACE_TIME";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "UNIT_TYPE_SPLIT";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "UNIT_TYPE_STRING";
  *(v28 + 1) = 16;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "UNIT_TYPE_TIME";
  *(v30 + 1) = 14;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "UNIT_TYPE_AVERAGE_CADENCE";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "UNIT_TYPE_AVERAGE_PACE";
  *(v34 + 1) = 22;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "UNIT_TYPE_AVERAGE_POWER";
  *(v36 + 1) = 23;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "UNIT_TYPE_ROLLING_PACE";
  *(v37 + 8) = 22;
  *(v37 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_DataLinkMessage._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_DataLinkMessage._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423920;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "publisherUpdate";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "notificationUpdate";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "command";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deltaUpdate";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "sequenceReset";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "mirroredHostMessage";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "mirroredClientMessage";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MetricsDelta._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MetricsDelta._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "sequences";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deltaPublisher";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PublisherSequence._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PublisherSequence._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sequence";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_SequenceReset._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_SequenceReset._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20B423A90;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "sequences";
  *(v4 + 8) = 9;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_NotificationUpdate._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_NotificationUpdate._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "notification";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "publisherUpdate";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutNotification._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutNotification._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "notificationType";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "units";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayDuration";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "createdAtSinceReferenceDate";
  *(v14 + 1) = 27;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutNotificationUnit._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutNotificationUnit._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_20B423940;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "key";
  *(v9 + 8) = 3;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "value";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "activityType";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "stringLiteral";
  *(v14 + 8) = 13;
  *(v14 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_StepType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_StepType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "WARM_UP";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "COOL_DOWN";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "WORK";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "REST";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_ZoneType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_ZoneType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_20B4238A0;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "ROLLING_PACE";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "AVERAGE_PACE";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "INSTANTANEOUS_PACE";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "INSTANTANEOUS_CADENCE";
  *(v13 + 1) = 21;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "AVERAGE_CADENCE";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "INSTANTANEOUS_POWER";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "AVERAGE_POWER";
  *(v19 + 1) = 13;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "NONE";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_HeartRateZoneType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_HeartRateZoneType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AUTOMATIC";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CUSTOM";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "OFF";
  *(v11 + 8) = 3;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_IntervalsMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_IntervalsMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_20B426280;
  v4 = v38 + v3;
  v5 = v38 + v3 + v1[14];
  *(v38 + v3) = 1;
  *v5 = "progress";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "thisStep";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "nextStep";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "distance";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "averagePace";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "currentPace";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "averagePower";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "currentPower";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "averageCadence";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "currentCadence";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "totalTime";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "startDateSinceReferenceDate";
  *(v28 + 1) = 27;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "activeEnergy";
  *(v30 + 1) = 12;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "currentStepIndex";
  *(v32 + 1) = 16;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "totalStepCount";
  *(v34 + 1) = 14;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "distanceGoalAchievedDuration";
  *(v36 + 1) = 28;
  v36[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutStep._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutStep._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20B43F110;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "type";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "goal";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "targetZones";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "activity";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "uuid";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "hrTargetZone";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "powerTargetZone";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "displayName";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "version";
  *(v22 + 8) = 7;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "optionalHrTargetZone";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "optionalPowerTargetZone";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_TargetZone._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_TargetZone._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "min";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "max";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "enabled";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_HeartRateTargetZone._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_HeartRateTargetZone._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "lowerBound";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "upperBound";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "defaultZoneIndex";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PowerZonesAlertTargetZone._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PowerZonesAlertTargetZone._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "target";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "automatic";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "custom";
  *(v11 + 8) = 6;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PowerZoneTarget._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PowerZoneTarget._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PowerZoneAutomatic._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PowerZoneAutomatic._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "zoneIndex";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zones";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_CyclingPowerZone._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_CyclingPowerZone._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "percentageZoneLower";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "percentageZoneUpper";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "zone";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PowerZoneCustom._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PowerZoneCustom._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rangeLower";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rangeUpper";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "type";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_TrackRunningCoordinator._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_TrackRunningCoordinator._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20B423A90;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 3;
  *v4 = "trackModeEnabledMirrored";
  *(v4 + 8) = 24;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_PowerMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_PowerMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_20B423920;
  v4 = v21 + v3;
  v5 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v5 = "isFaked";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "currentPower";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "averagePower";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "thirtySecondAveragePower";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "powerMeanDistributionByTime";
  *(v15 + 1) = 27;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "powerChartData";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "livePowerZones";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_ElapsedTimeMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_ElapsedTimeMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20B423A90;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "elapsedTime";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_LapsMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_LapsMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20B423A90;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "laps";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_LocationPositionPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_LocationPositionPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "locations";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "routePoints";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "routePosition";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutBuddyStatePublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutBuddyStatePublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "supportsWorkoutBuddy";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "state";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutBuddyStatePublisher.WorkoutBuddyState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_20B423930;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 0;
  *v4 = "LOADING";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21870];
  v6 = type metadata accessor for _NameMap.NameDescription();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 1;
  *v8 = "TALKING";
  *(v8 + 8) = 7;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "CONNECTED";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "DISCONNECTED";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "MUTED";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "NOT_AVAILABLE";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v7();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_ConfigurationType._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_ConfigurationType._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423940;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "GOAL_CONFIG";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INTERVAL_CONFIG";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RACE_CONFIG";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PACER_CONFIG";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 4;
  *v15 = "MULTISPORT_CONFIG";
  *(v15 + 8) = 17;
  *(v15 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_20B449A90;
  v4 = v126 + v3;
  v5 = v126 + v3 + v1[14];
  *(v126 + v3) = 1;
  *v5 = "isFaked";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v126 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "workoutIdentifier_deprecated";
  *(v9 + 8) = 28;
  *(v9 + 16) = 2;
  v8();
  v10 = (v126 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "workoutConfigurationType";
  *(v11 + 1) = 24;
  v11[16] = 2;
  v8();
  v12 = (v126 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "multisportWorkoutInAutoMode";
  *(v13 + 1) = 27;
  v13[16] = 2;
  v8();
  v14 = (v126 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "elapsedTimeMetricsPublisher";
  *(v15 + 1) = 27;
  v15[16] = 2;
  v8();
  v16 = (v126 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "activitySummaryMetricsPublisher";
  *(v17 + 1) = 31;
  v17[16] = 2;
  v8();
  v18 = (v126 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "heartRateMetricsPublisher";
  *(v19 + 1) = 25;
  v19[16] = 2;
  v8();
  v20 = (v126 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "energyMetricsPublisher";
  *(v21 + 1) = 22;
  v21[16] = 2;
  v8();
  v22 = v126 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "distance";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v126 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "secondsAheadOfPacer";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v126 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "currentPace";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v126 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 13;
  *v28 = "averagePace";
  *(v28 + 1) = 11;
  v28[16] = 2;
  v8();
  v29 = (v126 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 14;
  *v30 = "rollingPace";
  *(v30 + 1) = 11;
  v30[16] = 2;
  v8();
  v31 = (v126 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 15;
  *v32 = "requiredPace";
  *(v32 + 1) = 12;
  v32[16] = 2;
  v8();
  v33 = (v126 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 16;
  *v34 = "fastestPace";
  *(v34 + 1) = 11;
  v34[16] = 2;
  v8();
  v35 = (v126 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 17;
  *v36 = "lapsMetricsPublisher";
  *(v36 + 1) = 20;
  v36[16] = 2;
  v8();
  v37 = v126 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 18;
  *v37 = "elevationGain";
  *(v37 + 8) = 13;
  *(v37 + 16) = 2;
  v8();
  v38 = (v126 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 19;
  *v39 = "currentElevation";
  *(v39 + 1) = 16;
  v39[16] = 2;
  v8();
  v40 = (v126 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 20;
  *v41 = "elevationChartData";
  *(v41 + 1) = 18;
  v41[16] = 2;
  v8();
  v42 = (v126 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 21;
  *v43 = "elevationChartUnit";
  *(v43 + 1) = 18;
  v43[16] = 2;
  v8();
  v44 = (v126 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 22;
  *v45 = "currentCadence";
  *(v45 + 1) = 14;
  v45[16] = 2;
  v8();
  v46 = (v126 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 23;
  *v47 = "averageCadence";
  *(v47 + 1) = 14;
  v47[16] = 2;
  v8();
  v48 = (v126 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 24;
  *v49 = "powerMetricsPublisher";
  *(v49 + 1) = 21;
  v49[16] = 2;
  v8();
  v50 = (v126 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 25;
  *v51 = "flightsClimbed";
  *(v51 + 1) = 14;
  v51[16] = 2;
  v8();
  v52 = (v126 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 26;
  *v53 = "workoutStatePublisher";
  *(v53 + 1) = 21;
  v53[16] = 2;
  v8();
  v54 = (v126 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 27;
  *v55 = "intervalsMetricsPublisher";
  *(v55 + 1) = 25;
  v55[16] = 2;
  v8();
  v56 = (v126 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 28;
  *v57 = "multisportMetricsPublisher";
  *(v57 + 1) = 26;
  v57[16] = 2;
  v8();
  v58 = (v126 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 30;
  *v59 = "distanceGoalFinishTime";
  *(v59 + 1) = 22;
  v59[16] = 2;
  v8();
  v60 = (v126 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 31;
  *v61 = "segmentIndex";
  *(v61 + 1) = 12;
  v61[16] = 2;
  v8();
  v62 = (v126 + v3 + 29 * v2);
  v63 = v62 + v1[14];
  *v62 = 32;
  *v63 = "segmentDuration";
  *(v63 + 1) = 15;
  v63[16] = 2;
  v8();
  v64 = (v126 + v3 + 30 * v2);
  v65 = v64 + v1[14];
  *v64 = 33;
  *v65 = "segmentDistance";
  *(v65 + 1) = 15;
  v65[16] = 2;
  v8();
  v66 = (v126 + v3 + 31 * v2);
  v67 = v66 + v1[14];
  *v66 = 34;
  *v67 = "segmentPace";
  *(v67 + 1) = 11;
  v67[16] = 2;
  v8();
  v68 = v126 + v3 + 32 * v2 + v1[14];
  *(v4 + 32 * v2) = 35;
  *v68 = "segmentActiveEnergy";
  *(v68 + 8) = 19;
  *(v68 + 16) = 2;
  v8();
  v69 = (v126 + v3 + 33 * v2);
  v70 = v69 + v1[14];
  *v69 = 36;
  *v70 = "segmentTotalEnergy";
  *(v70 + 1) = 18;
  v70[16] = 2;
  v8();
  v71 = (v126 + v3 + 34 * v2);
  v72 = v71 + v1[14];
  *v71 = 37;
  *v72 = "segmentAveragePower";
  *(v72 + 1) = 19;
  v72[16] = 2;
  v8();
  v73 = (v126 + v3 + 35 * v2);
  v74 = v73 + v1[14];
  *v73 = 38;
  *v74 = "splitIndex";
  *(v74 + 1) = 10;
  v74[16] = 2;
  v8();
  v75 = (v126 + v3 + 36 * v2);
  v76 = v75 + v1[14];
  *v75 = 39;
  *v76 = "splitStartDate";
  *(v76 + 1) = 14;
  v76[16] = 2;
  v8();
  v77 = (v126 + v3 + 37 * v2);
  v78 = v77 + v1[14];
  *v77 = 40;
  *v78 = "splitDuration";
  *(v78 + 1) = 13;
  v78[16] = 2;
  v8();
  v79 = (v126 + v3 + 38 * v2);
  v80 = v79 + v1[14];
  *v79 = 41;
  *v80 = "splitDistance";
  *(v80 + 1) = 13;
  v80[16] = 2;
  v8();
  v81 = (v126 + v3 + 39 * v2);
  v82 = v81 + v1[14];
  *v81 = 42;
  *v82 = "splitPace";
  *(v82 + 1) = 9;
  v82[16] = 2;
  v8();
  v83 = (v126 + v3 + 40 * v2);
  v84 = v83 + v1[14];
  *v83 = 43;
  *v84 = "splitAveragePower";
  *(v84 + 1) = 17;
  v84[16] = 2;
  v8();
  v85 = (v126 + v3 + 41 * v2);
  v86 = v85 + v1[14];
  *v85 = 44;
  *v86 = "timerRemainingTime";
  *(v86 + 1) = 18;
  v86[16] = 2;
  v8();
  v87 = (v126 + v3 + 42 * v2);
  v88 = v87 + v1[14];
  *v87 = 45;
  *v88 = "timerRemainingTimeWithOffset";
  *(v88 + 1) = 28;
  v88[16] = 2;
  v8();
  v89 = (v126 + v3 + 43 * v2);
  v90 = v89 + v1[14];
  *v89 = 46;
  *v90 = "timerDuration";
  *(v90 + 1) = 13;
  v90[16] = 2;
  v8();
  v91 = (v126 + v3 + 44 * v2);
  v92 = v91 + v1[14];
  *v91 = 47;
  *v92 = "currentStrideLength";
  *(v92 + 1) = 19;
  v92[16] = 2;
  v8();
  v93 = (v126 + v3 + 45 * v2);
  v94 = v93 + v1[14];
  *v93 = 48;
  *v94 = "averageStrideLength";
  *(v94 + 1) = 19;
  v94[16] = 2;
  v8();
  v95 = (v126 + v3 + 46 * v2);
  v96 = v95 + v1[14];
  *v95 = 49;
  *v96 = "currentVerticalOscillation";
  *(v96 + 1) = 26;
  v96[16] = 2;
  v8();
  v97 = (v126 + v3 + 47 * v2);
  v98 = v97 + v1[14];
  *v97 = 50;
  *v98 = "averageVerticalOscillation";
  *(v98 + 1) = 26;
  v98[16] = 2;
  v8();
  v99 = (v126 + v3 + 48 * v2);
  v100 = v99 + v1[14];
  *v99 = 51;
  *v100 = "currentGroundContactTime";
  *(v100 + 1) = 24;
  v100[16] = 2;
  v8();
  v101 = (v126 + v3 + 49 * v2);
  v102 = v101 + v1[14];
  *v101 = 52;
  *v102 = "averageGroundContactTime";
  *(v102 + 1) = 24;
  v102[16] = 2;
  v8();
  v103 = (v126 + v3 + 50 * v2);
  v104 = v103 + v1[14];
  *v103 = 53;
  *v104 = "platterPublisher";
  *(v104 + 1) = 16;
  v104[16] = 2;
  v8();
  v105 = (v126 + v3 + 51 * v2);
  v106 = v105 + v1[14];
  *v105 = 54;
  *v106 = "goalPublisher";
  *(v106 + 1) = 13;
  v106[16] = 2;
  v8();
  v107 = (v126 + v3 + 52 * v2);
  v108 = v107 + v1[14];
  *v107 = 55;
  *v108 = "workoutIdentifierBytes";
  *(v108 + 1) = 22;
  v108[16] = 2;
  v8();
  v109 = (v126 + v3 + 53 * v2);
  v110 = v109 + v1[14];
  *v109 = 56;
  *v110 = "raceInformationPublisher";
  *(v110 + 1) = 24;
  v110[16] = 2;
  v8();
  v111 = (v126 + v3 + 54 * v2);
  v112 = v111 + v1[14];
  *v111 = 57;
  *v112 = "racePositionStatePublisher";
  *(v112 + 1) = 26;
  v112[16] = 2;
  v8();
  v113 = (v126 + v3 + 55 * v2);
  v114 = v113 + v1[14];
  *v113 = 58;
  *v114 = "locationPositionPublisher";
  *(v114 + 1) = 25;
  v114[16] = 2;
  v8();
  v115 = (v126 + v3 + 56 * v2);
  v116 = v115 + v1[14];
  *v115 = 59;
  *v116 = "waterTemperatureMetricsPublisher";
  *(v116 + 1) = 32;
  v116[16] = 2;
  v8();
  v117 = (v126 + v3 + 57 * v2);
  v118 = v117 + v1[14];
  *v117 = 60;
  *v118 = "descent";
  *(v118 + 1) = 7;
  v118[16] = 2;
  v8();
  v119 = (v126 + v3 + 58 * v2);
  v120 = v119 + v1[14];
  *v119 = 61;
  *v120 = "downhillRunCount";
  *(v120 + 1) = 16;
  v120[16] = 2;
  v8();
  v121 = (v126 + v3 + 59 * v2);
  v122 = v121 + v1[14];
  *v121 = 62;
  *v122 = "trackRunningMetricsPublisher";
  *(v122 + 1) = 28;
  v122[16] = 2;
  v8();
  v123 = (v126 + v3 + 60 * v2);
  v124 = v123 + v1[14];
  *v123 = 63;
  *v124 = "workoutBuddyStatePublisher";
  *(v124 + 1) = 26;
  v124[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_EnergyMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_EnergyMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "activeEnergy";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "totalEnergy";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_ActivityMoveMode._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_ActivityMoveMode._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "ACTIVE_ENERGY";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "APPLE_MOVE_TIME";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_ActivitySummaryMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_ActivitySummaryMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "activitySummary";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "isWheelchairUser";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_HKActivitySummary._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_HKActivitySummary._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20B43DE00;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "moveMode";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "activeEnergyBurned";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "appleMoveTime";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "appleExerciseTime";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "appleStandHours";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "activeEnergyBurnedGoal";
  *(v17 + 1) = 22;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "appleMoveTimeGoal";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "exerciseTimeGoal";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "standHoursGoal";
  *(v22 + 8) = 14;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MultisportTransitionState._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MultisportTransitionState._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "NOT_IN_TRANSITION";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IN_AUTOMATIC_TRANSITION";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "IN_MANUAL_TRANSITION";
  *(v11 + 8) = 20;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_MultiSportMetricsPublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_MultiSportMetricsPublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_20B43DE00;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "currentActivityStartSinceReference";
  *(v5 + 8) = 34;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "currentActivity";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "lastLegTime";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "lastLegDistance";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "lastLegAveragePace";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "transitionState";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "remainingLegCount";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "lastEffectiveTransitionDateSinceReference";
  *(v21 + 1) = 41;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "nextMultisportActivity";
  *(v22 + 8) = 22;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_Zone._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_Zone._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4290B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "displaySpanBottom";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "displaySpanTop";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "configurationIndex";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "configurationCount";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_CLLocation._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_CLLocation._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "latitude";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "longitude";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "altitude";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "horizontalAccuracy";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "verticalAccuracy";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "timestampSinceReference";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutStatePublisher._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutStatePublisher._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_20B432BD0;
  v4 = v45 + v3;
  v5 = v45 + v3 + v1[14];
  *(v45 + v3) = 1;
  *v5 = "workoutStarted";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "workoutStartDateReferenceTime";
  *(v9 + 8) = 29;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "workoutActive";
  *(v11 + 1) = 13;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "pauseTimes";
  *(v13 + 1) = 10;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "lastUnbalancedPauseStartReferenceTime";
  *(v15 + 1) = 37;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "gpsLock";
  *(v17 + 1) = 7;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "gpsUnavailable";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "showGymKitConnectionStatus";
  *(v21 + 1) = 26;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "lowPowerModeAnimationSuspended";
  *(v22 + 8) = 30;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "activityType";
  *(v24 + 1) = 12;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "mirroringToCompanion";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "mirrorModeEnabled";
  *(v28 + 1) = 17;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "isGymKit";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "multisportWorkoutInAutoMode";
  *(v32 + 1) = 27;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "segmentIndex";
  *(v34 + 1) = 12;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "speedSensor";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "cadenceSensor";
  *(v37 + 8) = 13;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "powerSensor";
  *(v39 + 1) = 11;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "checkingGpsLock";
  *(v41 + 1) = 15;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "pausedReasons";
  *(v43 + 1) = 13;
  v43[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_WorkoutStatePublisher.WorkoutPausedReason._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B423A20;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "USER";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MOTION";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "HEART_RATE";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

{
  v0 = type metadata accessor for _NameMap();
  __swift_allocate_value_buffer(v0, static Apple_Workout_Core_DateInterval._protobuf_nameMap);
  __swift_project_value_buffer(v0, static Apple_Workout_Core_DateInterval._protobuf_nameMap);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMd, &_ss23_ContiguousArrayStorageCySi_21InternalSwiftProtobuf8_NameMapV0G11DescriptionOtGMR);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMd, _sSi_21InternalSwiftProtobuf8_NameMapV0D11DescriptionOtMR) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20B4282E0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startReferenceTime";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endReferenceTime";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Apple_Workout_Core_MetricPlatter.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          dispatch thunk of Decoder.decodeRepeatedUInt32Field(value:)();
          break;
        case 2:
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          break;
        case 1:
          lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_MetricPlatter.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v4))
  {
    if (*(v3 + 9) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v4))
    {
      if (!*(*(v3 + 16) + 16) || (result = dispatch thunk of Visitor.visitPackedUInt32Field(value:fieldNumber:)(), !v4))
      {
        type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType()
{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType;
  if (!lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatterType and conformance Apple_Workout_Core_MetricPlatterType);
  }

  return result;
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_MetricPlatter@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x277D84F90];
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_MetricPlatter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_MetricPlatter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_MetricPlatter(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter, type metadata accessor for Apple_Workout_Core_MetricPlatter, &protocol conformance descriptor for Apple_Workout_Core_MetricPlatter);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_MetricPlatter(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter, type metadata accessor for Apple_Workout_Core_MetricPlatter, &protocol conformance descriptor for Apple_Workout_Core_MetricPlatter);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_MetricPlatter(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter, type metadata accessor for Apple_Workout_Core_MetricPlatter, &protocol conformance descriptor for Apple_Workout_Core_MetricPlatter);

  return Message.hash(into:)();
}

uint64_t static Apple_Workout_Core_MetricPlatterType._protobuf_nameMap.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Apple_Workout_Core_PlatterPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
        lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter, type metadata accessor for Apple_Workout_Core_MetricPlatter, &protocol conformance descriptor for Apple_Workout_Core_MetricPlatter);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Apple_Workout_Core_PlatterPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Apple_Workout_Core_MetricPlatter(0), lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter, type metadata accessor for Apple_Workout_Core_MetricPlatter, &protocol conformance descriptor for Apple_Workout_Core_MetricPlatter), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v4))
  {
    type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static Apple_Workout_Core_PlatterPublisher.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C14_MetricPlatterV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Workout_Core_PlatterPublisher(0);
  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Apple_Workout_Core_MetricPlatter.hashValue.getter(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  Hasher.init(_seed:)();
  a1(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(a2, a3, a4);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_PlatterPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_PlatterPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_PlatterPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher, type metadata accessor for Apple_Workout_Core_PlatterPublisher, &protocol conformance descriptor for Apple_Workout_Core_PlatterPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_MetricPlatterType@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for _NameMap();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_PlatterPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher, type metadata accessor for Apple_Workout_Core_PlatterPublisher, &protocol conformance descriptor for Apple_Workout_Core_PlatterPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_MetricPlatter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_PlatterPublisher(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type Apple_Workout_Core_PlatterPublisher and conformance Apple_Workout_Core_PlatterPublisher, type metadata accessor for Apple_Workout_Core_PlatterPublisher, &protocol conformance descriptor for Apple_Workout_Core_PlatterPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_MetricPlatter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_PlatterPublisher(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore06Apple_b1_C14_MetricPlatterV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x20F2E42A0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x20F2E42A0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized static Apple_Workout_Core_MetricPlatter.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    switch(v3)
    {
      case 1:
        if (v2 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v2 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v2 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v2 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v2 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v2 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v2 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v2 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v2 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      case 10:
        if (v2 != 10)
        {
          return 0;
        }

        goto LABEL_6;
      case 11:
        if (v2 != 11)
        {
          return 0;
        }

        goto LABEL_6;
      case 12:
        if (v2 != 12)
        {
          return 0;
        }

        goto LABEL_6;
      case 13:
        if (v2 != 13)
        {
          return 0;
        }

        goto LABEL_6;
      case 14:
        if (v2 != 14)
        {
          return 0;
        }

        goto LABEL_6;
      case 15:
        if (v2 != 15)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v2)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v2 == v3)
  {
LABEL_6:
    if (*(a1 + 9) == *(a2 + 9) && (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(a1[2], a2[2]) & 1) != 0)
    {
      type metadata accessor for Apple_Workout_Core_MetricPlatter(0);
      type metadata accessor for UnknownStorage();
      lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }
  }

  return 0;
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_MetricPlatter and conformance Apple_Workout_Core_MetricPlatter(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [Apple_Workout_Core_MetricPlatterType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Apple_Workout_Core_MetricPlatterType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Apple_Workout_Core_MetricPlatterType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore06Apple_a1_B18_MetricPlatterTypeOGMd, &_sSay11WorkoutCore06Apple_a1_B18_MetricPlatterTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Apple_Workout_Core_MetricPlatterType] and conformance [A]);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Apple_Workout_Core_MetricPlatterType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Apple_Workout_Core_MetricPlatterType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for Apple_Workout_Core_MetricPlatterType(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for Apple_Workout_Core_MetricPlatterType(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void type metadata completion function for Apple_Workout_Core_MetricPlatter(uint64_t a1)
{
  type metadata accessor for [UInt32]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [UInt32]()
{
  if (!lazy cache variable for type metadata for [UInt32])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [UInt32]);
    }
  }
}

void type metadata completion function for Apple_Workout_Core_PlatterPublisher(uint64_t a1)
{
  type metadata accessor for [Apple_Workout_Core_MetricPlatter](319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [Apple_Workout_Core_MetricPlatter](uint64_t a1)
{
  if (!lazy cache variable for type metadata for [Apple_Workout_Core_MetricPlatter])
  {
    type metadata accessor for Apple_Workout_Core_MetricPlatter(255);
    v1 = type metadata accessor for Array();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [Apple_Workout_Core_MetricPlatter]);
    }
  }
}

uint64_t outlined init with copy of Apple_Workout_Core_DateInterval(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Apple_Workout_Core_DateInterval(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Apple_Workout_Core_Zone?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of (Apple_Workout_Core_Zone?, Apple_Workout_Core_Zone?)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of Apple_Workout_Core_Zone(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for NSString(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t ReducedActivityTypesProvider.reducedActivityTypes.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes;
  result = swift_beginAccess();
  v5 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (a1)
  {
    if (v5)
    {

      v7 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo23FIUIWorkoutActivityTypeC_Tt1g5(v6, v5);

      if (v7)
      {
      }
    }
  }

  else if (!v5)
  {
    return result;
  }

  v8 = [*(v1 + OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_observers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30WOReducedActivityTypesObserver_pMd, &_sSo30WOReducedActivityTypesObserver_pMR);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v9 >> 62)
  {
    goto LABEL_20;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v10)
  {
LABEL_8:
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x20F2E7A20](v11, v9);
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v13 = *(v9 + 8 * v11 + 32);
        swift_unknownObjectRetain();
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v10 = __CocoaSet.count.getter();
          if (!v10)
          {
            break;
          }

          goto LABEL_8;
        }
      }

      if (*(v1 + v3))
      {
        type metadata accessor for FIUIWorkoutActivityType();

        isa = Array._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        isa = 0;
      }

      [v13 reducedActivityTypesDidChange_];
      swift_unknownObjectRelease();

      ++v11;
    }

    while (v14 != v10);
  }
}

unint64_t type metadata accessor for FIUIWorkoutActivityType()
{
  result = lazy cache variable for type metadata for FIUIWorkoutActivityType;
  if (!lazy cache variable for type metadata for FIUIWorkoutActivityType)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for FIUIWorkoutActivityType);
  }

  return result;
}

void (*ReducedActivityTypesProvider.reducedActivityTypes.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);

  return ReducedActivityTypesProvider.reducedActivityTypes.modify;
}

void ReducedActivityTypesProvider.reducedActivityTypes.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {

    ReducedActivityTypesProvider.reducedActivityTypes.setter(v4);
  }

  else
  {
    ReducedActivityTypesProvider.reducedActivityTypes.setter(v3);
  }

  free(v2);
}

id ReducedActivityTypesProvider.__allocating_init(reducedActivityTypes:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes;
  *&v3[OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes] = 0;
  v5 = [objc_opt_self() weakObjectsHashTable];
  *&v3[OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_observers] = v5;
  swift_beginAccess();
  *&v3[v4] = a1;

  v7.receiver = v3;
  v7.super_class = v1;
  return objc_msgSendSuper2(&v7, sel_init);
}

id ReducedActivityTypesProvider.init(reducedActivityTypes:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes;
  *&v1[OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_reducedActivityTypes] = 0;
  v4 = [objc_opt_self() weakObjectsHashTable];
  *&v1[OBJC_IVAR____TtC11WorkoutCore28ReducedActivityTypesProvider_observers] = v4;
  swift_beginAccess();
  *&v1[v3] = a1;

  v6.receiver = v1;
  v6.super_class = type metadata accessor for ReducedActivityTypesProvider();
  return objc_msgSendSuper2(&v6, sel_init);
}

id ReducedActivityTypesProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ReducedActivityTypesProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ReducedActivityTypesProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double MetricsPublisher.doubleValue(for:)(uint64_t a1)
{
  result = 0.0;
  switch(a1)
  {
    case 1:
    case 2:
    case 4:
    case 7:
    case 8:
    case 13:
    case 14:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 34:
    case 35:
    case 36:
    case 41:
    case 44:
    case 45:
    case 48:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v6);

      result = v6;
      break;
    case 5:
    case 10:
    case 11:
    case 12:
    case 15:
    case 16:
    case 17:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 37:
    case 40:
    case 49:
    case 53:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v6);

      result = v6;
      v2 = v7;
      goto LABEL_8;
    case 9:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v6);

      result = *&v6;
      break;
    case 39:
    case 43:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v6);

      if (v6 == 0.0)
      {
        result = 0.0;
      }

      else
      {
        v3 = COERCE_DOUBLE(specialized LiveZones.elapsedTimeInCurrentZone.getter());
        v5 = v4;

        result = 0.0;
        if ((v5 & 1) == 0)
        {
          result = v3;
        }
      }

      break;
    case 54:
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter(&v6);

      v2 = v7;
      result = *&v6;
LABEL_8:
      if (v2)
      {
        result = 0.0;
      }

      break;
    default:
      return result;
  }

  return result;
}

unint64_t specialized LiveZones.elapsedTimeInCurrentZone.getter()
{
  swift_beginAccess();
  if (*(v0 + 32))
  {
    return 0;
  }

  v1 = *(v0 + 24);
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 >= result)
  {
    return 0;
  }

  v0 = *(v0 + 16);
  if ((v0 & 0xC000000000000001) != 0)
  {
LABEL_13:

    v4 = MEMORY[0x20F2E7A20](v1, v0);

    goto LABEL_8;
  }

  if (v1 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v0 + 8 * v1 + 32);

LABEL_8:
    swift_beginAccess();
    v5 = *(v4 + 48);

    return v5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall MetricsPublisher.workout(_:didBeginNewActivity:)(NLWorkout *_, HKWorkoutActivity didBeginNewActivity)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v32 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for multisport != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static WOLog.multisport);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_20AEA4000, v18, v19, "Publisher has noticed that NLWorkout has begun a new activity", v20, 2u);
    MEMORY[0x20F2E9420](v20, -1, -1);
  }

  v21 = [(objc_class *)didBeginNewActivity.super.isa startDate];
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v13 + 16))(v11, v16, v12);
  v33 = *(v13 + 56);
  v33(v11, 0, 1, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v11, v8);

  static Published.subscript.setter();
  outlined destroy of Date?(v11);
  v22 = [(NLWorkout *)_ sessionActivity];
  v23 = [(NLSessionActivity *)v22 configuration];

  v24 = LiveWorkoutConfiguration.currentActivityType.getter();
  LODWORD(v23) = [v24 supportsDistanceSplits];

  if (v23)
  {
    v32 = v16;
    v25 = [(NLWorkout *)_ sessionActivity];
    v26 = [(NLSessionActivity *)v25 dataProvider];

    v27 = [(NLSessionDataProvider *)v26 splitProvider];
    swift_unknownObjectRelease();
    if (v27)
    {
      v28 = [v27 splitStartDate];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v33(v11, 0, 1, v12);
      swift_getKeyPath();
      swift_getKeyPath();
      outlined init with copy of Date?(v11, v8);
      v29 = v34;
      static Published.subscript.setter();
      outlined destroy of Date?(v11);
      v30 = [v27 splitIndex];
      swift_getKeyPath();
      swift_getKeyPath();
      v35 = v30;
      v31 = v29;
      static Published.subscript.setter();
      swift_unknownObjectRelease();
    }

    (*(v13 + 8))(v32, v12);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
  }
}

uint64_t key path getter for MultisportMetricsPublisher.currentActivityStart : MultisportMetricsPublisher@<X0>(void *a4@<X8>)
{
  return key path getter for MultisportMetricsPublisher.currentActivityStart : MultisportMetricsPublisher(a4);
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(a4);
}

uint64_t key path setter for MultisportMetricsPublisher.currentActivityStart : MultisportMetricsPublisher(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v12 - v9;
  outlined init with copy of Date?(a1, &v12 - v9);
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v10, v7);

  static Published.subscript.setter();
  return outlined destroy of Date?(v10);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t key path getter for MetricsPublisher.splitIndex : MetricsPublisher@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter(&v4);

  *a2 = v4;
  return result;
}

uint64_t key path setter for MetricsPublisher.splitIndex : MetricsPublisher(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return static Published.subscript.setter();
}

uint64_t key path setter for MetricsPublisher.splitStartDate : MetricsPublisher(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v15 - v10;
  outlined init with copy of Date?(a1, &v15 - v10);
  v12 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  outlined init with copy of Date?(v11, v8);
  v13 = v12;
  static Published.subscript.setter();
  return outlined destroy of Date?(v11);
}

Swift::Bool __swiftcall occurrences_debug_enabled(userDefaults:)(NSUserDefaults userDefaults)
{
  isa = userDefaults.super.isa;
  v2 = MEMORY[0x20F2E6C00](0xD000000000000024, 0x800000020B455FD0, userDefaults._identifier_, userDefaults._container_);
  LOBYTE(isa) = [(objc_class *)isa BOOLForKey:v2];

  return isa;
}

uint64_t Occurrence.count.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Occurrence.count.setter(int a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t key path getter for Occurrence.countModificationDate : Occurrence@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = type metadata accessor for Date();
  return (*(*(v6 - 8) + 16))(a3, v4 + v5, v6);
}

uint64_t key path setter for Occurrence.countModificationDate : Occurrence(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *a2;
  v14 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v13 + v14, v12, v8);
  return swift_endAccess();
}

uint64_t Occurrence.countModificationDate.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t Occurrence.countModificationDate.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Occurrence.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Occurrence.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Occurrence.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Occurrence.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Occurrence.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Occurrence.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x746E756F63;
  v4 = 0xEC00000065746144;
  v5 = 0x6E6F697461657263;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x800000020B454000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000015;
    v2 = 0x800000020B453FE0;
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

unint64_t protocol witness for CodingKey.stringValue.getter in conformance Occurrence.CodingKeys()
{
  v1 = 0x746E756F63;
  v2 = 0x6E6F697461657263;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance Occurrence.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized Occurrence.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Occurrence.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Occurrence.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

id Occurrence.__allocating_init(count:countModificationDate:creationDate:modificationDate:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR____TtC11WorkoutCore10Occurrence_count] = a1;
  v11 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(&v10[v11], a2, v12);
  v14(&v10[OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate], a3, v12);
  v14(&v10[OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate], a4, v12);
  v18.receiver = v10;
  v18.super_class = v5;
  v15 = objc_msgSendSuper2(&v18, sel_init);
  v16 = *(v13 + 8);
  v16(a4, v12);
  v16(a3, v12);
  v16(a2, v12);
  return v15;
}

id Occurrence.init(count:countModificationDate:creationDate:modificationDate:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC11WorkoutCore10Occurrence_count] = a1;
  v8 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 16);
  v11(&v4[v8], a2, v9);
  v11(&v4[OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate], a3, v9);
  v11(&v4[OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate], a4, v9);
  v15.receiver = v4;
  v15.super_class = type metadata accessor for Occurrence(0);
  v12 = objc_msgSendSuper2(&v15, sel_init);
  v13 = *(v10 + 8);
  v13(a4, v9);
  v13(a3, v9);
  v13(a2, v9);
  return v12;
}

uint64_t Occurrence.encode(to:)(void *a1)
{
  v2 = v1;
  v40 = type metadata accessor for Date();
  v42 = *(v40 - 8);
  v5 = MEMORY[0x28223BE20](v40, v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v35 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v39 = &v35 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore10OccurrenceC10CodingKeys33_C92B60A0D8B8B40FD3BB79DBEB79A6BELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore10OccurrenceC10CodingKeys33_C92B60A0D8B8B40FD3BB79DBEB79A6BELLOGMR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v35 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  swift_beginAccess();
  v45 = 0;
  v19 = v14;
  v20 = v41;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v20)
  {
    return (*(v15 + 8))(v18, v14);
  }

  v36 = v7;
  v37 = v11;
  v41 = v15;
  v22 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v23 = *(v42 + 16);
  v24 = v39;
  v23(v39, v2 + v22, v40);
  v44 = 1;
  v38 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9580]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v25 = *(v42 + 8);
  v26 = v24;
  v27 = v40;
  v42 += 8;
  v39 = v25;
  (v25)(v26, v40);
  v28 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v29 = v37;
  v23(v37, v2 + v28, v27);
  v43 = 2;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v30 = v41;
  v31 = v29;
  v32 = v40;
  (v39)(v31, v40);
  v33 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  swift_beginAccess();
  v34 = v36;
  v23(v36, v2 + v33, v32);
  v46 = 3;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (v39)(v34, v40);
  return (*(v30 + 8))(v18, v19);
}

void *Occurrence.init(from:)(void *a1)
{
  v2 = type metadata accessor for Date();
  v37 = *(v2 - 1);
  v4 = MEMORY[0x28223BE20](v2, v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v32 - v12;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore10OccurrenceC10CodingKeys33_C92B60A0D8B8B40FD3BB79DBEB79A6BELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore10OccurrenceC10CodingKeys33_C92B60A0D8B8B40FD3BB79DBEB79A6BELLOGMR);
  v14 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v15);
  v17 = &v32 - v16;
  v18 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys();
  v19 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
    type metadata accessor for Occurrence(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v35 = v6;
    v36 = v10;
    v20 = v14;
    v39 = v2;
    v43 = 0;
    v21 = v38;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v41;
    *&v41[OBJC_IVAR____TtC11WorkoutCore10Occurrence_count] = v22;
    v43 = 1;
    v25 = lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC95A0]);
    v26 = v39;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v33 = *(v37 + 32);
    v33(&v24[OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate], v13, v26);
    v43 = 2;
    v27 = v36;
    v34 = v25;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v28 = v27;
    v29 = v33;
    v33(&v41[OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate], v28, v26);
    v43 = 3;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v17, v21);
    v30 = v41;
    v29(&v41[OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate], v35, v26);
    v31 = type metadata accessor for Occurrence(0);
    v42.receiver = v30;
    v42.super_class = v31;
    v2 = objc_msgSendSuper2(&v42, sel_init);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  return v2;
}

Swift::Int Occurrence.hash.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  v7 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  Hasher._combine(_:)(*(v1 + v7));
  v8 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v9 = *(v3 + 16);
  v9(v6, v1 + v8, v2);
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9588]);
  dispatch thunk of Hashable.hash(into:)();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v11 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v9(v6, v1 + v11, v2);
  dispatch thunk of Hashable.hash(into:)();
  v10(v6, v2);
  v12 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  swift_beginAccess();
  v9(v6, v1 + v12, v2);
  dispatch thunk of Hashable.hash(into:)();
  v10(v6, v2);
  return Hasher.finalize()();
}

uint64_t Occurrence.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(76);
  v38 = v36;
  v39 = v37;
  MEMORY[0x20F2E6D80](0x203A746E756F63, 0xE700000000000000);
  v7 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  v35[0] = *(v1 + v7);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x20F2E6D80](v8);

  MEMORY[0x20F2E6D80](0xD000000000000019, 0x800000020B456000);
  if (one-time initialization token for logDateFormatter != -1)
  {
    swift_once();
  }

  v9 = static WOLog.logDateFormatter;
  v34 = static WOLog.logDateFormatter;
  v10 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate;
  swift_beginAccess();
  v11 = *(v3 + 16);
  v11(v6, v1 + v10, v2);
  v32 = v11;
  isa = Date._bridgeToObjectiveC()().super.isa;
  v33 = *(v3 + 8);
  v33(v6, v2);
  v13 = [v9 stringFromDate_];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  MEMORY[0x20F2E6D80](v14, v16);

  MEMORY[0x20F2E6D80](0xD000000000000010, 0x800000020B456020);
  v17 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate;
  swift_beginAccess();
  v11(v6, v1 + v17, v2);
  v18 = Date._bridgeToObjectiveC()().super.isa;
  v19 = v33;
  v33(v6, v2);
  v20 = [v34 stringFromDate_];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  MEMORY[0x20F2E6D80](v21, v23);

  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B456040);
  v24 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
  swift_beginAccess();
  v32(v6, v1 + v24, v2);
  v25 = Date._bridgeToObjectiveC()().super.isa;
  v19(v6, v2);
  v26 = [v34 stringFromDate_];

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  MEMORY[0x20F2E6D80](v27, v29);

  return v38;
}

id Occurrence.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Occurrence.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Occurrence(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *protocol witness for Decodable.init(from:) in conformance Occurrence@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Occurrence(0));
  result = Occurrence.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys;
  if (!lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys;
  if (!lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys;
  if (!lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys;
  if (!lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Occurrence.CodingKeys and conformance Occurrence.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t specialized Occurrence.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Occurrence.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized static Occurrence.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v25 - v11;
  v13 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  LODWORD(v13) = *(a1 + v13);
  v14 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_count;
  swift_beginAccess();
  if (v13 == *(a2 + v14) && (v15 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate, swift_beginAccess(), v16 = *(v5 + 16), v16(v12, a1 + v15, v4), v17 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_countModificationDate, swift_beginAccess(), v16(v9, a2 + v17, v4), LOBYTE(v17) = static Date.== infix(_:_:)(), v18 = *(v5 + 8), v18(v9, v4), v18(v12, v4), (v17 & 1) != 0) && (v19 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate, swift_beginAccess(), v16(v12, a1 + v19, v4), v20 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_creationDate, swift_beginAccess(), v16(v9, a2 + v20, v4), LOBYTE(v20) = static Date.== infix(_:_:)(), v18(v9, v4), v18(v12, v4), (v20 & 1) != 0))
  {
    v21 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
    swift_beginAccess();
    v16(v12, a1 + v21, v4);
    v22 = OBJC_IVAR____TtC11WorkoutCore10Occurrence_modificationDate;
    swift_beginAccess();
    v16(v9, a2 + v22, v4);
    v23 = static Date.== infix(_:_:)();
    v18(v9, v4);
    v18(v12, v4);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

uint64_t type metadata completion function for Occurrence(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t getEnumTagSinglePayload for Occurrence.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Occurrence.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t closure #1 in CoreAnalyticsReporter.send(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = a5;
  return MEMORY[0x2822009F8](closure #1 in CoreAnalyticsReporter.send(_:), 0, 0);
}

uint64_t closure #1 in CoreAnalyticsReporter.send(_:)()
{
  v27 = v0;
  if (one-time initialization token for analytics != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.analytics);
  outlined init with copy of CoreAnalyticsEvent(v1, (v0 + 2));

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26 = v6;
    *v5 = 136315394;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v26);

    *(v5 + 4) = v12;
    *(v5 + 12) = 2080;
    type metadata accessor for NSObject();
    v13 = Dictionary.description.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v26);

    *(v5 + 14) = v15;
    _os_log_impl(&dword_20AEA4000, v3, v4, "Preparing to send analytics. eventName=%s event=%s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x20F2E9420](v6, -1, -1);
    MEMORY[0x20F2E9420](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  v16 = v0[8];
  v17 = v0[9];
  v18 = v16[3];
  v19 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v18);
  v20 = (*(v19 + 8))(v18, v19);
  v21 = MEMORY[0x20F2E6C00](v20);

  v22 = swift_allocObject();
  *(v22 + 16) = v17;
  v0[6] = partial apply for closure #1 in closure #1 in CoreAnalyticsReporter.send(_:);
  v0[7] = v22;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v0[5] = &block_descriptor_0;
  v23 = _Block_copy(v0 + 2);

  AnalyticsSendEventLazy();
  _Block_release(v23);

  v24 = v0[1];

  return v24();
}

void specialized CoreAnalyticsReporter.send(_:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  v6 = [objc_opt_self() sharedConnection];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 isHealthDataSubmissionAllowed];

    if (v8)
    {
      v9 = a1[3];
      v10 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v9);
      v11 = (*(v10 + 16))(v9, v10);
      static TaskPriority.low.getter();
      v12 = type metadata accessor for TaskPriority();
      (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
      outlined init with copy of CoreAnalyticsEvent(a1, v19);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      outlined init with take of CoreAnalyticsEvent(v19, (v13 + 4));
      v13[9] = v11;
      _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in CoreAnalyticsReporter.send(_:), v13);

      outlined destroy of TaskPriority?(v5);
    }

    else
    {
      if (one-time initialization token for analytics != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static WOLog.analytics);
      v18 = Logger.logObject.getter();
      v15 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_20AEA4000, v18, v15, "Health data submission not allowed. Not sending analytics.", v16, 2u);
        MEMORY[0x20F2E9420](v16, -1, -1);
      }

      v17 = v18;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t outlined init with copy of CoreAnalyticsEvent(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of CoreAnalyticsEvent(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t partial apply for closure #1 in CoreAnalyticsReporter.send(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in CoreAnalyticsReporter.send(_:);

  return closure #1 in CoreAnalyticsReporter.send(_:)(a1, v4, v5, (v1 + 4), v6);
}

uint64_t partial apply for closure #1 in CoreAnalyticsReporter.send(_:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for NSObject()
{
  result = lazy cache variable for type metadata for NSObject;
  if (!lazy cache variable for type metadata for NSObject)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSObject);
  }

  return result;
}

double Apple_Workout_Core_WaterTemperatureMetricsPublisher.currentWaterTemperature.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0) + 24);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(uint64_t a1)
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_WaterTemperatureMetricsPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_WaterTemperatureMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.currentWaterTemperature.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_WaterTemperatureMetricsPublisher.currentWaterTemperature.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_WaterTemperatureMetricsPublisher.currentWaterTemperature.modify;
}

Swift::Void __swiftcall Apple_Workout_Core_WaterTemperatureMetricsPublisher.clearCurrentWaterTemperature()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Apple_Workout_Core_WaterTemperatureMetricsPublisher.averageWaterTemperature.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0) + 28);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.averageWaterTemperature.setter(double a1)
{
  result = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  v4 = v1 + *(result + 28);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Apple_Workout_Core_WaterTemperatureMetricsPublisher.averageWaterTemperature.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0) + 28);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return Apple_Workout_Core_WaterTemperatureMetricsPublisher.averageWaterTemperature.modify;
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.averageWaterTemperature.modify(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Workout_Core_WaterTemperatureMetricsPublisher.clearAverageWaterTemperature()()
{
  v1 = v0 + *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0) + 28);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0) + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  result = UnknownStorage.init()();
  v4 = &a1[*(v2 + 24)];
  *v4 = 0;
  v4[8] = 1;
  v5 = &a1[*(v2 + 28)];
  *v5 = 0;
  v5[8] = 1;
  return result;
}

uint64_t static Apple_Workout_Core_WaterTemperatureMetricsPublisher._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_WaterTemperatureMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
        break;
      case 1:
LABEL_8:
        type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
        dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
        break;
    }
  }
}

uint64_t Apple_Workout_Core_WaterTemperatureMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = closure #1 in Apple_Workout_Core_WaterTemperatureMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)();
    }

    closure #2 in Apple_Workout_Core_WaterTemperatureMetricsPublisher.traverse<A>(visitor:)(v3, a1, a2, a3);
    type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t closure #1 in Apple_Workout_Core_WaterTemperatureMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

uint64_t closure #2 in Apple_Workout_Core_WaterTemperatureMetricsPublisher.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  if ((*(a1 + *(result + 28) + 8) & 1) == 0)
  {
    return dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)();
  }

  return result;
}

Swift::Int Apple_Workout_Core_WaterTemperatureMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  result = UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = &a2[*(a1 + 24)];
  *v6 = 0;
  v6[8] = 1;
  v7 = &a2[v5];
  *v7 = 0;
  v7[8] = 1;
  return result;
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_WaterTemperatureMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(uint64_t a1, uint64_t a2)
{
  lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(&lazy protocol witness table cache variable for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher, type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher, &protocol conformance descriptor for Apple_Workout_Core_WaterTemperatureMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t specialized static Apple_Workout_Core_WaterTemperatureMetricsPublisher.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_WaterTemperatureMetricsPublisher(0);
  v5 = *(v4 + 24);
  v6 = &a1[v5];
  v7 = a1[v5 + 8];
  v8 = &a2[v5];
  v9 = a2[v5 + 8];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v11 = *(v4 + 28);
  v12 = &a1[v11];
  v13 = a1[v11 + 8];
  v14 = &a2[v11];
  v15 = a2[v11 + 8];
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  type metadata accessor for UnknownStorage();
  lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

void type metadata completion function for Apple_Workout_Core_WaterTemperatureMetricsPublisher(uint64_t a1)
{
  type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Double?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for Double?()
{
  if (!lazy cache variable for type metadata for Double?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Double?);
    }
  }
}

uint64_t lazy protocol witness table accessor for type Apple_Workout_Core_WaterTemperatureMetricsPublisher and conformance Apple_Workout_Core_WaterTemperatureMetricsPublisher(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id TrainerTimerStartEventAlert.init(startTime:duration:)(double a1, double a2)
{
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v2[OBJC_IVAR____TtC11WorkoutCore27TrainerTimerStartEventAlert_startTime] = a1;
  *&v2[OBJC_IVAR____TtC11WorkoutCore27TrainerTimerStartEventAlert_duration] = a2;
  started = type metadata accessor for TrainerTimerStartEventAlert();
  v14.receiver = v2;
  v14.super_class = started;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  [v11 setType_];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v9, v5);
  [v11 setEventDate_];

  return v11;
}

id TrainerTimerStartEventAlert.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TrainerTimerStartEventAlert.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TrainerTimerStartEventAlert();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for LastWorkoutQueryError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LastWorkoutQueryError(_WORD *result, int a2, int a3)
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

unint64_t lazy protocol witness table accessor for type LastWorkoutQueryError and conformance LastWorkoutQueryError()
{
  result = lazy protocol witness table cache variable for type LastWorkoutQueryError and conformance LastWorkoutQueryError;
  if (!lazy protocol witness table cache variable for type LastWorkoutQueryError and conformance LastWorkoutQueryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LastWorkoutQueryError and conformance LastWorkoutQueryError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LastWorkoutQueryError and conformance LastWorkoutQueryError;
  if (!lazy protocol witness table cache variable for type LastWorkoutQueryError and conformance LastWorkoutQueryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LastWorkoutQueryError and conformance LastWorkoutQueryError);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance LastWorkoutQueryError()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LastWorkoutQueryError(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HeartRateTargetZone.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HeartRateTargetZone.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HeartRateTargetZone.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HeartRateTargetZone.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized HeartRateTargetZone.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance HeartRateTargetZone.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0x756F427265707075;
  v5 = 0xEA0000000000646ELL;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000010;
    v5 = 0x800000020B454030;
  }

  if (*v1)
  {
    v3 = 0x756F427265776F6CLL;
    v2 = 0xEA0000000000646ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance HeartRateTargetZone.CodingKeys()
{
  v1 = 1701869940;
  v2 = 0x756F427265707075;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x756F427265776F6CLL;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance HeartRateTargetZone.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized HeartRateTargetZone.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance HeartRateTargetZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance HeartRateTargetZone.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int HeartRateTargetZone.hash.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  Hasher.init()();
  String.hash(into:)();

  v4 = v2 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
  swift_beginAccess();
  if (*(v4 + 16) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = *v4;
    v5 = *(v4 + 8);
    Hasher._combine(_:)(1u);
    if (v6 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v6;
    }

    MEMORY[0x20F2E8020](*&v7);
    if (v5 == 0.0)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = v5;
    }

    MEMORY[0x20F2E8020](*&v8);
  }

  v9 = (v3 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex);
  swift_beginAccess();
  if (*(v9 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v10 = *v9;
    Hasher._combine(_:)(1u);
    MEMORY[0x20F2E7FF0](v10);
  }

  return Hasher.finalize()();
}

uint64_t HeartRateTargetZone.customRange.getter()
{
  v1 = v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
  swift_beginAccess();
  return *v1;
}

uint64_t HeartRateTargetZone.customRange.setter(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

uint64_t HeartRateTargetZone.defaultZoneIndex.getter()
{
  v1 = v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex;
  swift_beginAccess();
  return *v1;
}

uint64_t HeartRateTargetZone.defaultZoneIndex.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t key path setter for HeartRateTargetZone.defaultZones : HeartRateTargetZone(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t HeartRateTargetZone.defaultZones.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t key path getter for HeartRateTargetZone.defaultZonesDidLoad : HeartRateTargetZone@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_20AEC6CF0(v4, v5);
}

uint64_t key path setter for HeartRateTargetZone.defaultZonesDidLoad : HeartRateTargetZone(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_20AEC6CF0(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v8, v9);
}

uint64_t HeartRateTargetZone.defaultZonesDidLoad.getter()
{
  v1 = (v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v2 = *v1;
  sub_20AEC6CF0(*v1, v1[1]);
  return v2;
}

uint64_t HeartRateTargetZone.defaultZonesDidLoad.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v6, v7);
}

uint64_t HeartRateTargetZone.restingHeartRateUsesDefault.getter()
{
  v1 = OBJC_IVAR___WOCoreHeartRateTargetZone_restingHeartRateUsesDefault;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HeartRateTargetZone.restingHeartRateUsesDefault.setter(char a1)
{
  v3 = OBJC_IVAR___WOCoreHeartRateTargetZone_restingHeartRateUsesDefault;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HeartRateTargetZone.applicableRange.getter()
{
  if (*(v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    if (*(v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
    {
      v1 = (v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange);
      swift_beginAccess();
      if (v1[16] != 1)
      {
        return *v1;
      }

      result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000004ELL, 0x800000020B456260, "WorkoutCore/HeartRateTargetZone.swift", 37, 2, 49, 0);
      goto LABEL_46;
    }

    return 0;
  }

  v3 = OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones;
  swift_beginAccess();
  v4 = *(v0 + v3);
  if (!v4)
  {
    if (one-time initialization token for alerts == -1)
    {
LABEL_13:
      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static WOLog.alerts);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_20AEA4000, v12, v13, "HeartRateZoneType is .default and defaultZones is nil. Setting applicableRange to empty.", v14, 2u);
        MEMORY[0x20F2E9420](v14, -1, -1);
      }

      return 0;
    }

LABEL_43:
    swift_once();
    goto LABEL_13;
  }

  v5 = (v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex);
  swift_beginAccess();
  if ((v5[1] & 1) == 0)
  {
    v6 = *v5;
    v7 = v4 + 8 * v6;
    if ((v4 & 0xC000000000000001) != 0)
    {

      v8 = MEMORY[0x20F2E7A20](v6, v4);
      v9 = *(v8 + 32);
      if (v9)
      {
LABEL_11:
        v10 = *(v8 + 16);
        goto LABEL_19;
      }
    }

    else
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v8 = *(v7 + 32);

      v9 = *(v8 + 32);
      if (v9)
      {
        goto LABEL_11;
      }
    }

    v10 = 0.0;
LABEL_19:
    v15 = *(v8 + 40);
    v16 = __OFSUB__(v15, 1);
    v17 = v15 - 1;
    if (!v16)
    {
      if (v9 == v17)
      {
        v18 = INFINITY;
      }

      else
      {
        v18 = *(v8 + 24);
      }

      if (v10 <= v18)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x20F2E7A20](v6, v4);
        }

        else
        {
          v19 = *(v7 + 32);
        }

        v20 = *(v19 + 32);
        if (v20)
        {
          v21 = *(v19 + 16);
        }

        else
        {
          v21 = 0.0;
        }

        v22 = *(v19 + 40);
        v16 = __OFSUB__(v22, 1);
        v23 = v22 - 1;
        if (!v16)
        {
          if (v20 == v23)
          {
            v24 = INFINITY;
          }

          else
          {
            v24 = *(v19 + 24);
          }

          if (v21 <= v24 && v10 <= v24)
          {
            return *&v10;
          }

          goto LABEL_42;
        }

LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    goto LABEL_38;
  }

  result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000037, 0x800000020B4562B0, "WorkoutCore/HeartRateTargetZone.swift", 37, 2, 44, 0);
LABEL_46:
  __break(1u);
  return result;
}

BOOL HeartRateTargetZone.isEffectivelyCustomSingleThreshold.getter()
{
  if (*(v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1 && (v1 = v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange, swift_beginAccess(), (*(v1 + 16) & 1) == 0))
  {
    return *(v1 + 8) - *v1 <= 1.0;
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7)
{
  v46 = a3;
  v47 = a5;
  v45 = a2;
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v22 = &v7[OBJC_IVAR___WOCoreHeartRateTargetZone_customRange];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = &v7[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex];
  *v23 = 0;
  v23[8] = 1;
  *&v7[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones] = 0;
  v24 = &v7[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad];
  *v24 = 0;
  v24[1] = 0;
  v7[OBJC_IVAR___WOCoreHeartRateTargetZone_restingHeartRateUsesDefault] = 0;
  v43 = v13;
  v44 = v12;
  v42 = v18;
  v40 = v25;
  v39 = v20;
  if (v21 == 1)
  {

    if ((a4 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000038, 0x800000020B456330, "WorkoutCore/HeartRateTargetZone.swift", 37, 2, 75, 0);
    goto LABEL_16;
  }

  v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v26 & 1) != 0 && (a4)
  {
    goto LABEL_15;
  }

  if (!v21)
  {

    if ((a6 & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

LABEL_7:
  v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v27 & 1) != 0 && (a6)
  {
LABEL_14:
    result = _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD00000000000003CLL, 0x800000020B4562F0, "WorkoutCore/HeartRateTargetZone.swift", 37, 2, 77, 0);
LABEL_16:
    __break(1u);
    return result;
  }

LABEL_9:
  v7[OBJC_IVAR___WOCoreHeartRateTargetZone_type] = v21;
  swift_beginAccess();
  v28 = v46;
  *v22 = v45;
  *(v22 + 1) = v28;
  v22[16] = a4 & 1;
  swift_beginAccess();
  *v23 = v47;
  v23[8] = a6 & 1;
  v29 = type metadata accessor for HeartRateTargetZone();
  v49.receiver = v7;
  v49.super_class = v29;
  v30 = objc_msgSendSuper2(&v49, sel_init);
  if (a7)
  {
    v31 = OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones;
    swift_beginAccess();
    *&v30[v31] = a7;
  }

  else
  {
    type metadata accessor for OS_dispatch_queue();
    v32 = static OS_dispatch_queue.main.getter();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #1 in HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:);
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    aBlock[3] = &block_descriptor_1;
    v34 = _Block_copy(aBlock);

    v35 = v39;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    v36 = v41;
    v37 = v44;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v35, v36, v34);
    _Block_release(v34);

    (*(v43 + 8))(v36, v37);
    (*(v40 + 8))(v35, v42);
  }

  return v30;
}

void *closure #1 in HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    type metadata accessor for HeartRateConfigurationRequest();
    v3 = swift_allocObject();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for HeartRateConfiguration();
    v5 = swift_allocObject();
    v5[2] = v3;
    v5[3] = closure #1 in HeartRateTargetZone.loadHeartRateZones()partial apply;
    v5[4] = v4;
    swift_retain_n();

    static HeartRateConfiguration.fetchConfigurationType(completion:)(closure #1 in HeartRateConfigurationRequest.fetchActiveHeartRateConfiguration(completion:)partial apply, v5);
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

{
  return (*(a1 + 32))();
}

uint64_t closure #1 in HeartRateTargetZone.loadHeartRateZones()(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &aBlock[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in HeartRateTargetZone.loadHeartRateZones();
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_31;
  v17 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x20F2E7580](0, v12, v7, v17);
  _Block_release(v17);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

void closure #1 in closure #1 in HeartRateTargetZone.loadHeartRateZones()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    HeartRateTargetZone._mainThread_handleConfigurationLoad(_:)(a2);
  }
}

uint64_t HeartRateTargetZone._mainThread_handleConfigurationLoad(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for OS_dispatch_queue();
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (a1)
    {
      v11 = *(a1 + 40);
      v12 = OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones;
      swift_beginAccess();
      *(v2 + v12) = v11;

      if (*(a1 + 16))
      {
      }

      else
      {
        v13 = *(a1 + 49);

        v14 = OBJC_IVAR___WOCoreHeartRateTargetZone_restingHeartRateUsesDefault;
        swift_beginAccess();
        *(v2 + v14) = v13;
      }
    }

    v15 = v2 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad;
    result = swift_beginAccess();
    v16 = *v15;
    if (*v15)
    {
      v17 = *(v15 + 8);

      v16(v18);
      return outlined consume of (@escaping @callee_guaranteed () -> ())?(v16, v17);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

_BYTE *HeartRateTargetZone.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore19HeartRateTargetZoneC10CodingKeys33_1113D039332984EA8E51073321743006LLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore19HeartRateTargetZoneC10CodingKeys33_1113D039332984EA8E51073321743006LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v33 - v8;
  v10 = &v3[OBJC_IVAR___WOCoreHeartRateTargetZone_customRange];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = &v3[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex];
  *v11 = 0;
  v11[8] = 1;
  *&v3[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZones] = 0;
  v12 = &v3[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad];
  *v12 = 0;
  v12[1] = 0;
  v3[OBJC_IVAR___WOCoreHeartRateTargetZone_restingHeartRateUsesDefault] = 0;
  v13 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v38);

    outlined consume of (@escaping @callee_guaranteed () -> ())?(*&v3[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad], *&v3[OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZonesDidLoad + 8]);
    type metadata accessor for HeartRateTargetZone();
    swift_deallocPartialClassInstance();
    return v3;
  }

  v14 = v6;
  v35 = 0;
  lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v36;
  v3[OBJC_IVAR___WOCoreHeartRateTargetZone_type] = v36;
  v34 = v5;
  if (v15 == 1)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      v21 = &unk_27C726000;
      goto LABEL_11;
    }
  }

  v36 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  v36 = 2;
  result = KeyedDecodingContainer.decode(_:forKey:)();
  if (v18 <= v20)
  {
    v22 = v20;
    swift_beginAccess();
    *v10 = v18;
    *(v10 + 1) = v22;
    v10[16] = 0;
    v21 = &unk_27C726000;
LABEL_11:
    v23 = type metadata accessor for HeartRateTargetZone();
    v37.receiver = v3;
    v37.super_class = v23;
    v3 = objc_msgSendSuper2(&v37, sel_init);
    if (v3[OBJC_IVAR___WOCoreHeartRateTargetZone_type])
    {
      v24 = v34;
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        (*(v14 + 8))(v9, v24);
        goto LABEL_17;
      }
    }

    else
    {

      v24 = v34;
    }

    v36 = 3;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = &v3[v21[380]];
    swift_beginAccess();
    *v27 = v26;
    v27[8] = 0;
    type metadata accessor for HeartRateConfigurationRequest();
    v28 = swift_allocObject();
    v29 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for HeartRateConfiguration();
    v30 = v9;
    v31 = v14;
    v32 = swift_allocObject();
    v32[2] = v28;
    v32[3] = partial apply for closure #1 in HeartRateTargetZone.loadHeartRateZones();
    v32[4] = v29;
    swift_retain_n();

    static HeartRateConfiguration.fetchConfigurationType(completion:)(partial apply for closure #1 in HeartRateConfigurationRequest.fetchActiveHeartRateConfiguration(completion:), v32);

    (*(v31 + 8))(v30, v24);

LABEL_17:
    __swift_destroy_boxed_opaque_existential_1(v38);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t HeartRateTargetZone.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore19HeartRateTargetZoneC10CodingKeys33_1113D039332984EA8E51073321743006LLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore19HeartRateTargetZoneC10CodingKeys33_1113D039332984EA8E51073321743006LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[24] = *(v3 + OBJC_IVAR___WOCoreHeartRateTargetZone_type);
  v13[0] = 0;
  lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = v3 + OBJC_IVAR___WOCoreHeartRateTargetZone_customRange;
    swift_beginAccess();
    if ((*(v11 + 16) & 1) == 0)
    {
      v13[0] = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      v13[0] = 2;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    v12 = v3 + OBJC_IVAR___WOCoreHeartRateTargetZone_defaultZoneIndex;
    swift_beginAccess();
    if (*(v12 + 8) != 1)
    {
      v13[63] = 3;
      KeyedEncodingContainer.encode(_:forKey:)();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

WorkoutCore::TargetZone::State __swiftcall HeartRateTargetZone.state(currentValue:)(Swift::Double currentValue)
{
  v3 = v1;
  v4 = COERCE_DOUBLE(HeartRateTargetZone.applicableRange.getter());
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    if (v4 > currentValue)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    if (v5 > currentValue)
    {
      v7 = v8;
    }

    else
    {
      v7 = 3;
    }

    if (currentValue <= 2.22044605e-16)
    {
      v7 = 0;
    }
  }

  *v3 = v7;
  return LOBYTE(v4);
}

id HeartRateTargetZone.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HeartRateTargetZone.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for HeartRateTargetZone();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

_BYTE *protocol witness for Decodable.init(from:) in conformance HeartRateTargetZone@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
  result = HeartRateTargetZone.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t HeartRateTargetZone.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v5);
  if (!v6)
  {
    outlined destroy of Any?(v5);
    goto LABEL_5;
  }

  type metadata accessor for HeartRateTargetZone();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v2 = 0;
    return v2 & 1;
  }

  v2 = specialized static HeartRateTargetZone.== infix(_:_:)(v1, v4);

  return v2 & 1;
}

uint64_t HeartRateTargetZone.description.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v1 = Optional.description.getter();
  v3 = v2;
  v4 = Optional.description.getter();
  v6 = v5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
  v7 = Optional.description.getter();
  v9 = v8;
  _StringGuts.grow(_:)(34);

  if (*(v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_type))
  {
    if (*(v0 + OBJC_IVAR___WOCoreHeartRateTargetZone_type) == 1)
    {
      v10 = 0xE600000000000000;
      v11 = 0x6D6F74737563;
    }

    else
    {
      v10 = 0xE300000000000000;
      v11 = 6710895;
    }
  }

  else
  {
    v10 = 0xE900000000000063;
    v11 = 0x6974616D6F747561;
  }

  MEMORY[0x20F2E6D80](v11, v10);

  MEMORY[0x20F2E6D80](5972026, 0xE300000000000000);
  MEMORY[0x20F2E6D80](v1, v3);

  MEMORY[0x20F2E6D80](58, 0xE100000000000000);
  MEMORY[0x20F2E6D80](v4, v6);

  MEMORY[0x20F2E6D80](0xD000000000000014, 0x800000020B4563A0);
  MEMORY[0x20F2E6D80](v7, v9);

  MEMORY[0x20F2E6D80](62, 0xE100000000000000);
  return 60;
}

uint64_t static HeartRateTargetZone.canonical()(uint64_t a1)
{
  v3 = 1;
  v1 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
  HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(&v3, 0x4061800000000000, 0x4063600000000000, 0, 0, 1, 0);

  return swift_dynamicCastClassUnconditional();
}

uint64_t protocol witness for static Canonical.canonical() in conformance HeartRateTargetZone@<X0>(uint64_t *a2@<X8>)
{
  v5 = 1;
  v3 = objc_allocWithZone(type metadata accessor for HeartRateTargetZone());
  HeartRateTargetZone.init(type:customRange:defaultZoneIndex:defaultZones:)(&v5, 0x4061800000000000, 0x4063600000000000, 0, 0, 1, 0);
  result = swift_dynamicCastClassUnconditional();
  *a2 = result;
  return result;
}

uint64_t specialized Range<>.hash(into:)(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x20F2E8020](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x20F2E8020](*&v3);
}

uint64_t outlined consume of (@escaping @callee_guaranteed () -> ())?(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys()
{
  result = lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys;
  if (!lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateTargetZone.CodingKeys and conformance HeartRateTargetZone.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HeartRateZoneType and conformance HeartRateZoneType()
{
  result = lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType;
  if (!lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HeartRateZoneType and conformance HeartRateZoneType);
  }

  return result;
}

unint64_t specialized HeartRateTargetZone.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HeartRateTargetZone.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}