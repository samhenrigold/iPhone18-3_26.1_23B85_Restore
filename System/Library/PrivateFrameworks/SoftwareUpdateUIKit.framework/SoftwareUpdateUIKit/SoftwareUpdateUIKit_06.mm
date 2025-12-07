_OWORD *sub_26AF6DDA0(_OWORD *a1, _OWORD *a2)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD180, &qword_26B08BF38);
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(a1, 1))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1E0, &qword_26B08BF98);
    memcpy(a2, a1, *(*(v19 - 8) + 64));
  }

  else
  {
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
    v49 = *(v48 - 8);
    if ((*(v49 + 48))(a1, 1))
    {
      memcpy(a2, a1, *(v53 + 64));
    }

    else
    {
      *a2 = *a1;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48);
      v46 = a2 + *(v2 + 44);
      v47 = a1 + *(v2 + 44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
        v38 = *(v37 - 8);
        if ((*(v38 + 48))(v47, 1))
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D8, &qword_26B08BF90);
          memcpy(v46, v47, *(*(v18 - 8) + 64));
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
            (*(*(v13 - 8) + 16))(v46, v47);
            v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
            *&v46[*(v14 + 36)] = *&v47[*(v14 + 36)];
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
            v24 = &v46[*(v15 + 36)];
            v22 = &v47[*(v15 + 36)];
            v21 = *v22;

            *v24 = v21;
            v23 = *(v22 + 1);
            v25 = *(v22 + 2);

            *(v24 + 1) = v23;
            *(v24 + 2) = v25;
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            v27 = &v46[*(v16 + 36)];
            v26 = &v47[*(v16 + 36)];
            v17 = sub_26B079100();
            (*(*(v17 - 8) + 16))(v27, v26);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            v36 = *(v35 - 8);
            if ((*(v36 + 48))(v47, 1))
            {
              v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
              memcpy(v46, v47, *(*(v12 - 8) + 64));
            }

            else
            {
              v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
              (*(*(v8 - 8) + 16))(v46, v47);
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
              *&v46[*(v9 + 36)] = *&v47[*(v9 + 36)];
              v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
              v31 = &v46[*(v10 + 36)];
              v29 = &v47[*(v10 + 36)];
              v28 = *v29;

              *v31 = v28;
              v30 = *(v29 + 1);
              v32 = *(v29 + 2);

              *(v31 + 1) = v30;
              *(v31 + 2) = v32;
              v34 = &v46[*(v35 + 36)];
              v33 = &v47[*(v35 + 36)];
              v11 = sub_26B079100();
              (*(*(v11 - 8) + 16))(v34, v33);
              (*(v36 + 56))(v46, 0, 1, v35);
            }

            swift_storeEnumTagMultiPayload();
          }

          (*(v38 + 56))(v46, 0, 1, v37);
        }

        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v3 - 8) + 16))(v46, v47);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
        *&v46[*(v4 + 36)] = *&v47[*(v4 + 36)];
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
        v42 = &v46[*(v5 + 36)];
        v40 = &v47[*(v5 + 36)];
        v39 = *v40;

        *v42 = v39;
        v41 = *(v40 + 1);
        v43 = *(v40 + 2);

        *(v42 + 1) = v41;
        *(v42 + 2) = v43;
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
        v45 = &v46[*(v6 + 36)];
        v44 = &v47[*(v6 + 36)];
        v7 = sub_26B079100();
        (*(*(v7 - 8) + 16))(v45, v44);
        swift_storeEnumTagMultiPayload();
      }

      (*(v49 + 56))(a2, 0, 1, v48);
    }

    (*(v53 + 56))(a2, 0, 1, v52);
  }

  return a2;
}

unint64_t sub_26AF6E628()
{
  v2 = qword_2803DD200;
  if (!qword_2803DD200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD1E0, &qword_26B08BF98);
    sub_26AF6D040();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD200);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF6E6C0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v14 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48) + 44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
      if (!(*(*(v4 - 8) + 48))(v14, 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
          (*(*(v7 - 8) + 8))(v14);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

          v10 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
          v8 = sub_26B079100();
          (*(*(v8 - 8) + 8))(v10);
        }

        else
        {
          v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
          if (!(*(*(v12 - 8) + 48))(v14, 1))
          {
            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
            (*(*(v5 - 8) + 8))(v14);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

            v11 = v14 + *(v12 + 36);
            v6 = sub_26B079100();
            (*(*(v6 - 8) + 8))(v11);
          }
        }
      }
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
      (*(*(v2 - 8) + 8))(v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

      v13 = v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
      v3 = sub_26B079100();
      (*(*(v3 - 8) + 8))(v13);
    }
  }

  return a1;
}

_OWORD *sub_26AF6EAE8(_OWORD *a1, _OWORD *a2)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(a1, 1))
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD180, &qword_26B08BF38);
    memcpy(a2, a1, *(*(v25 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48);
    v37 = a2 + *(v2 + 44);
    v38 = a1 + *(v2 + 44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
      v34 = *(v33 - 8);
      if ((*(v34 + 48))(v38, 1))
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D8, &qword_26B08BF90);
        memcpy(v37, v38, *(*(v24 - 8) + 64));
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
          (*(*(v17 - 8) + 32))(v37, v38);
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
          *&v37[*(v18 + 36)] = *&v38[*(v18 + 36)];
          v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
          v20 = &v37[*(v19 + 36)];
          v21 = &v38[*(v19 + 36)];
          *v20 = *v21;
          *(v20 + 2) = *(v21 + 2);
          v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
          v28 = &v37[*(v22 + 36)];
          v27 = &v38[*(v22 + 36)];
          v23 = sub_26B079100();
          (*(*(v23 - 8) + 32))(v28, v27);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
          v32 = *(v31 - 8);
          if ((*(v32 + 48))(v38, 1))
          {
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
            memcpy(v37, v38, *(*(v16 - 8) + 64));
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
            (*(*(v10 - 8) + 32))(v37, v38);
            v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
            *&v37[*(v11 + 36)] = *&v38[*(v11 + 36)];
            v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
            v13 = &v37[*(v12 + 36)];
            v14 = &v38[*(v12 + 36)];
            *v13 = *v14;
            *(v13 + 2) = *(v14 + 2);
            v30 = &v37[*(v31 + 36)];
            v29 = &v38[*(v31 + 36)];
            v15 = sub_26B079100();
            (*(*(v15 - 8) + 32))(v30, v29);
            (*(v32 + 56))(v37, 0, 1, v31);
          }

          swift_storeEnumTagMultiPayload();
        }

        (*(v34 + 56))(v37, 0, 1, v33);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
      (*(*(v3 - 8) + 32))(v37, v38);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
      *&v37[*(v4 + 36)] = *&v38[*(v4 + 36)];
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
      v6 = &v37[*(v5 + 36)];
      v7 = &v38[*(v5 + 36)];
      *v6 = *v7;
      *(v6 + 2) = *(v7 + 2);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
      v36 = &v37[*(v8 + 36)];
      v35 = &v38[*(v8 + 36)];
      v9 = sub_26B079100();
      (*(*(v9 - 8) + 32))(v36, v35);
      swift_storeEnumTagMultiPayload();
    }

    (*(v42 + 56))(a2, 0, 1, v41);
  }

  return a2;
}

_OWORD *sub_26AF6F1EC(_OWORD *a1, _OWORD *a2)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
  v51 = *(v50 - 8);
  if ((*(v51 + 48))(a1, 1))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD180, &qword_26B08BF38);
    memcpy(a2, a1, *(*(v19 - 8) + 64));
  }

  else
  {
    *a2 = *a1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48);
    v46 = a2 + *(v2 + 44);
    v47 = a1 + *(v2 + 44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
      v38 = *(v37 - 8);
      if ((*(v38 + 48))(v47, 1))
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D8, &qword_26B08BF90);
        memcpy(v46, v47, *(*(v18 - 8) + 64));
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
          (*(*(v13 - 8) + 16))(v46, v47);
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
          *&v46[*(v14 + 36)] = *&v47[*(v14 + 36)];
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
          v24 = &v46[*(v15 + 36)];
          v22 = &v47[*(v15 + 36)];
          v21 = *v22;

          *v24 = v21;
          v23 = *(v22 + 1);
          v25 = *(v22 + 2);

          *(v24 + 1) = v23;
          *(v24 + 2) = v25;
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
          v27 = &v46[*(v16 + 36)];
          v26 = &v47[*(v16 + 36)];
          v17 = sub_26B079100();
          (*(*(v17 - 8) + 16))(v27, v26);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
          v36 = *(v35 - 8);
          if ((*(v36 + 48))(v47, 1))
          {
            v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
            memcpy(v46, v47, *(*(v12 - 8) + 64));
          }

          else
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
            (*(*(v8 - 8) + 16))(v46, v47);
            v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
            *&v46[*(v9 + 36)] = *&v47[*(v9 + 36)];
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
            v31 = &v46[*(v10 + 36)];
            v29 = &v47[*(v10 + 36)];
            v28 = *v29;

            *v31 = v28;
            v30 = *(v29 + 1);
            v32 = *(v29 + 2);

            *(v31 + 1) = v30;
            *(v31 + 2) = v32;
            v34 = &v46[*(v35 + 36)];
            v33 = &v47[*(v35 + 36)];
            v11 = sub_26B079100();
            (*(*(v11 - 8) + 16))(v34, v33);
            (*(v36 + 56))(v46, 0, 1, v35);
          }

          swift_storeEnumTagMultiPayload();
        }

        (*(v38 + 56))(v46, 0, 1, v37);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
      (*(*(v3 - 8) + 16))(v46, v47);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
      *&v46[*(v4 + 36)] = *&v47[*(v4 + 36)];
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
      v42 = &v46[*(v5 + 36)];
      v40 = &v47[*(v5 + 36)];
      v39 = *v40;

      *v42 = v39;
      v41 = *(v40 + 1);
      v43 = *(v40 + 2);

      *(v42 + 1) = v41;
      *(v42 + 2) = v43;
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
      v45 = &v46[*(v6 + 36)];
      v44 = &v47[*(v6 + 36)];
      v7 = sub_26B079100();
      (*(*(v7 - 8) + 16))(v45, v44);
      swift_storeEnumTagMultiPayload();
    }

    (*(v51 + 56))(a2, 0, 1, v50);
  }

  return a2;
}

unint64_t sub_26AF6F9E0()
{
  v2 = qword_2803DD210;
  if (!qword_2803DD210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD208, qword_26B08BFA8);
    sub_26AF6FA88();
    sub_26AF6FD04();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD210);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF6FA88()
{
  v2 = qword_2803DD218;
  if (!qword_2803DD218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD1B0, &qword_26B08BF68);
    sub_26AF6FB30();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD218);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF6FB30()
{
  v2 = qword_2803DD220;
  if (!qword_2803DD220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD1A8, &qword_26B08BF60);
    sub_26AF6FBD8();
    sub_26AE9C354();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF6FBD8()
{
  v2 = qword_2803DD228;
  if (!qword_2803DD228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD1C8, &qword_26B08BF80);
    sub_26AF6FC7C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD228);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF6FC7C()
{
  v2 = qword_2803DD230;
  if (!qword_2803DD230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD1A0, &qword_26B08BF58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD230);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF6FD04()
{
  v2 = qword_2803DD248;
  if (!qword_2803DD248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD1D8, &qword_26B08BF90);
    sub_26AF6FD9C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF6FD9C()
{
  v2 = qword_2803DD250;
  if (!qword_2803DD250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD1B8, &qword_26B08BF70);
    sub_26AF6FE44();
    sub_26AF6FA88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD250);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF6FE44()
{
  v2 = qword_2803DD258;
  if (!qword_2803DD258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD1D0, &qword_26B08BF88);
    sub_26AF6FA88();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD258);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF6FEDC(uint64_t a1)
{
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
    if (!(*(*(v3 - 8) + 48))(a1 + v13, 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v6 - 8) + 8))();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

        v9 = a1 + v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
        v7 = sub_26B079100();
        (*(*(v7 - 8) + 8))(v9);
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
        if (!(*(*(v11 - 8) + 48))(a1 + v13, 1))
        {
          v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
          (*(*(v4 - 8) + 8))();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

          v10 = a1 + v13 + *(v11 + 36);
          v5 = sub_26B079100();
          (*(*(v5 - 8) + 8))(v10);
        }
      }
    }
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
    (*(*(v1 - 8) + 8))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

    v12 = a1 + v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 8))(v12);
  }

  return a1;
}

char *sub_26AF702EC(char *a1, char *a2)
{
  *a2 = *a1;
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48) + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(&a1[v45], 1))
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D8, &qword_26B08BF90);
      memcpy(&a2[v45], &a1[v45], *(*(v17 - 8) + 64));
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v12 - 8) + 16))();
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
        *&a2[v45 + *(v13 + 36)] = *&a1[v45 + *(v13 + 36)];
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
        v22 = &a2[v45 + *(v14 + 36)];
        v20 = &a1[v45 + *(v14 + 36)];
        v19 = *v20;

        *v22 = v19;
        v21 = *(v20 + 1);
        v23 = *(v20 + 2);

        *(v22 + 1) = v21;
        *(v22 + 2) = v23;
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
        v25 = &a2[v45 + *(v15 + 36)];
        v24 = &a1[v45 + *(v15 + 36)];
        v16 = sub_26B079100();
        (*(*(v16 - 8) + 16))(v25, v24);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(&a1[v45], 1))
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
          memcpy(&a2[v45], &a1[v45], *(*(v11 - 8) + 64));
        }

        else
        {
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
          (*(*(v7 - 8) + 16))();
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
          *&a2[v45 + *(v8 + 36)] = *&a1[v45 + *(v8 + 36)];
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
          v29 = &a2[v45 + *(v9 + 36)];
          v27 = &a1[v45 + *(v9 + 36)];
          v26 = *v27;

          *v29 = v26;
          v28 = *(v27 + 1);
          v30 = *(v27 + 2);

          *(v29 + 1) = v28;
          *(v29 + 2) = v30;
          v32 = &a2[v45 + *(v33 + 36)];
          v31 = &a1[v45 + *(v33 + 36)];
          v10 = sub_26B079100();
          (*(*(v10 - 8) + 16))(v32, v31);
          (*(v34 + 56))(&a2[v45], 0, 1, v33);
        }

        swift_storeEnumTagMultiPayload();
      }

      (*(v36 + 56))(&a2[v45], 0, 1, v35);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
    (*(*(v2 - 8) + 16))();
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
    *&a2[v45 + *(v3 + 36)] = *&a1[v45 + *(v3 + 36)];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
    v40 = &a2[v45 + *(v4 + 36)];
    v38 = &a1[v45 + *(v4 + 36)];
    v37 = *v38;

    *v40 = v37;
    v39 = *(v38 + 1);
    v41 = *(v38 + 2);

    *(v40 + 1) = v39;
    *(v40 + 2) = v41;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
    v43 = &a2[v45 + *(v5 + 36)];
    v42 = &a1[v45 + *(v5 + 36)];
    v6 = sub_26B079100();
    (*(*(v6 - 8) + 16))(v43, v42);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

unint64_t sub_26AF70A80()
{
  v2 = qword_2803DD278;
  if (!qword_2803DD278)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD270, &qword_26B08BFF8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD278);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF70B20(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_26AF70B68()
{
  v2 = qword_2803DD288;
  if (!qword_2803DD288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD280, &qword_26B08C000);
    sub_26AF70A80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD288);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF70C0C(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_26AF70C54()
{
  v2 = qword_2803DD298;
  if (!qword_2803DD298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD290, &qword_26B08C008);
    sub_26AF70B68();
    sub_26AF70CFC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD298);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF70CFC()
{
  v2 = qword_2803DD2A0;
  if (!qword_2803DD2A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD2A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF70D74(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

unint64_t sub_26AF70DBC()
{
  v2 = qword_2803DD2A8;
  if (!qword_2803DD2A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD268, &qword_26B08BFF0);
    sub_26AF70C54();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD2A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF70E64()
{
  v2 = qword_2803DD2B0;
  if (!qword_2803DD2B0)
  {
    type metadata accessor for SUUIStatefulUIState(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD2B0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF70EE4(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD268, &qword_26B08BFF0) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

unint64_t sub_26AF70F88()
{
  v2 = qword_2803DD2B8;
  if (!qword_2803DD2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0A8, &qword_26B08BE88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD2B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF71010(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD268, &qword_26B08BFF0) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_26AF710B4(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  sub_26AE95D28(*a1, v6, v7 & 1);
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  v8 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v8;
  memcpy((a2 + 32), (a1 + 32), 0x31uLL);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD268, &qword_26B08BFF0) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 16))(a2 + v9, a1 + v9);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0A8, &qword_26B08BE88);
  result = a2;
  *(a2 + *(v3 + 52)) = *(a1 + *(v3 + 52));
  return result;
}

unint64_t sub_26AF7122C()
{
  v2 = qword_2803DD2E8;
  if (!qword_2803DD2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD2E0, &qword_26B08C030);
    sub_26AF712D4();
    sub_26AF71990();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD2E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF712D4()
{
  v2 = qword_2803DD2F0;
  if (!qword_2803DD2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD2F8, &qword_26B08C038);
    sub_26AF7137C();
    sub_26AF71550();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD2F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF7137C()
{
  v2 = qword_2803DD300;
  if (!qword_2803DD300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD308, &qword_26B08C040);
    sub_26AF71420();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD300);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF71420()
{
  v2 = qword_2803DD310;
  if (!qword_2803DD310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD318, &qword_26B08C048);
    sub_26AF714C8();
    sub_26AF0633C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD310);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF714C8()
{
  v2 = qword_2803DD320;
  if (!qword_2803DD320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD328, &qword_26B08C050);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD320);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF71550()
{
  v2 = qword_2803DD330;
  if (!qword_2803DD330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD338, &qword_26B08C058);
    sub_26AF715F8();
    sub_26AF71860();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD330);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF715F8()
{
  v2 = qword_2803DD340;
  if (!qword_2803DD340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD348, &qword_26B08C060);
    sub_26AF716A0();
    sub_26AF0633C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD340);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF716A0()
{
  v2 = qword_2803DD350;
  if (!qword_2803DD350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD358, &qword_26B08C068);
    sub_26AF71748();
    sub_26AF717E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD350);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF71748()
{
  v2 = qword_2803DD360;
  if (!qword_2803DD360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD368, &qword_26B08C070);
    sub_26AF717E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF717E8()
{
  v2 = qword_2803DD370;
  if (!qword_2803DD370)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD370);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF71860()
{
  v2 = qword_2803DD378;
  if (!qword_2803DD378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD380, &qword_26B08C078);
    sub_26AF71908();
    sub_26AF0633C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD378);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF71908()
{
  v2 = qword_2803DD388;
  if (!qword_2803DD388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD390, &qword_26B08C080);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF71990()
{
  v2 = qword_2803DD398;
  if (!qword_2803DD398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD3A0, &qword_26B08C088);
    sub_26AF71A34();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD398);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF71A34()
{
  v2 = qword_2803DD3A8;
  if (!qword_2803DD3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD3B0, &qword_26B08C090);
    sub_26AF71ACC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD3A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF71ACC()
{
  v2 = qword_2803DD3B8;
  if (!qword_2803DD3B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD3C0, &qword_26B08C098);
    sub_26AF71B74();
    sub_26AF6B6FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD3B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF71B74()
{
  v2 = qword_2803DD3C8;
  if (!qword_2803DD3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD3D0, &qword_26B08C0A0);
    sub_26AF71C18();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD3C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF71C18()
{
  v2 = qword_2803DD3D8;
  if (!qword_2803DD3D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD3E0, &qword_26B08C0A8);
    sub_26AF71CC0();
    sub_26AF71D38();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD3D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF71CC0()
{
  v2 = qword_2803DD3E8;
  if (!qword_2803DD3E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD3E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF71D38()
{
  v2 = qword_2803DD3F0;
  if (!qword_2803DD3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD3F8, &qword_26B08C0B0);
    sub_26AF71908();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD3F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF71DDC()
{
  v2 = qword_2803DD400;
  if (!qword_2803DD400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD2C0, &qword_26B08C010);
    sub_26AF7122C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD400);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF71E74(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD408, &qword_26B08C0B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD470, &qword_26B08C120);
    if (!swift_getEnumCaseMultiPayload())
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
      if (!(*(*(v15 - 8) + 48))(a1, 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
          v12 = a1 + *(v13 + 52);
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
          (*(*(v7 - 8) + 8))(v12);
          v14 = a1 + *(v13 + 56);
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
          if (!(*(*(v8 - 8) + 48))(v14, 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            }

            else
            {
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            }

            (*(*(v9 - 8) + 8))(v14);
          }

          v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0) + 36));
          if (*v11)
          {
          }

          if (v11[2])
          {
          }
        }

        else
        {

          if (*(a1 + 40))
          {
          }

          if (*(a1 + 64))
          {
          }
        }
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD410, &qword_26B08C0C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD440, &unk_26B08C0F0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v16 = a1 + *(v17 + 52);
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v3 - 8) + 8))(v16);
        v18 = a1 + *(v17 + 56);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        if (!(*(*(v4 - 8) + 48))(v18, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            (*(*(v6 - 8) + 8))(v18);
          }

          else
          {
            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            (*(*(v5 - 8) + 8))(v18);
          }
        }
      }

      else
      {
        sub_26AF7266C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 33) & 1);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD418, &qword_26B08C0C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
          v2 = sub_26B079100();
          (*(*(v2 - 8) + 8))(v19);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
            v1 = sub_26B079100();
            (*(*(v1 - 8) + 8))(v20);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
          }

          else
          {
            sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
      }
    }
  }

  return a1;
}

uint64_t sub_26AF7266C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_26AF726DC(a1, a2, a3, a4);
  }

  return sub_26AEB3258(a3, a4);
}

unint64_t sub_26AF7273C()
{
  v2 = qword_2803DD480;
  if (!qword_2803DD480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD2C8, &qword_26B08C018);
    sub_26AF71DDC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD480);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF727E0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD408, &qword_26B08C0B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD470, &qword_26B08C120);
    if (!swift_getEnumCaseMultiPayload())
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
      if (!(*(*(v15 - 8) + 48))(a1, 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
          v12 = a1 + *(v13 + 52);
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
          (*(*(v7 - 8) + 8))(v12);
          v14 = a1 + *(v13 + 56);
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
          if (!(*(*(v8 - 8) + 48))(v14, 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            }

            else
            {
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            }

            (*(*(v9 - 8) + 8))(v14);
          }

          v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0) + 36));
          if (*v11)
          {
          }

          if (v11[2])
          {
          }
        }

        else
        {

          if (*(a1 + 40))
          {
          }

          if (*(a1 + 64))
          {
          }
        }
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD410, &qword_26B08C0C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD440, &unk_26B08C0F0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v16 = a1 + *(v17 + 52);
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v3 - 8) + 8))(v16);
        v18 = a1 + *(v17 + 56);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        if (!(*(*(v4 - 8) + 48))(v18, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            (*(*(v6 - 8) + 8))(v18);
          }

          else
          {
            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            (*(*(v5 - 8) + 8))(v18);
          }
        }
      }

      else
      {
        sub_26AF7266C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 33) & 1);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD418, &qword_26B08C0C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
          v2 = sub_26B079100();
          (*(*(v2 - 8) + 8))(v19);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
            v1 = sub_26B079100();
            (*(*(v1 - 8) + 8))(v20);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
          }

          else
          {
            sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
      }
    }
  }

  return a1;
}

unint64_t sub_26AF72FD8()
{
  v2 = qword_2803DD490;
  if (!qword_2803DD490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD2D0, &qword_26B08C020);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD490);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF73060(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD408, &qword_26B08C0B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD470, &qword_26B08C120);
    if (!swift_getEnumCaseMultiPayload())
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
      if (!(*(*(v15 - 8) + 48))(a1, 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
          v12 = a1 + *(v13 + 52);
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
          (*(*(v7 - 8) + 8))(v12);
          v14 = a1 + *(v13 + 56);
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
          if (!(*(*(v8 - 8) + 48))(v14, 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            }

            else
            {
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            }

            (*(*(v9 - 8) + 8))(v14);
          }

          v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0) + 36));
          if (*v11)
          {
          }

          if (v11[2])
          {
          }
        }

        else
        {

          if (*(a1 + 40))
          {
          }

          if (*(a1 + 64))
          {
          }
        }
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD410, &qword_26B08C0C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD440, &unk_26B08C0F0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v16 = a1 + *(v17 + 52);
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v3 - 8) + 8))(v16);
        v18 = a1 + *(v17 + 56);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        if (!(*(*(v4 - 8) + 48))(v18, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            (*(*(v6 - 8) + 8))(v18);
          }

          else
          {
            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            (*(*(v5 - 8) + 8))(v18);
          }
        }
      }

      else
      {
        sub_26AF7266C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 33) & 1);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD418, &qword_26B08C0C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
          v2 = sub_26B079100();
          (*(*(v2 - 8) + 8))(v19);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
            v1 = sub_26B079100();
            (*(*(v1 - 8) + 8))(v20);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
          }

          else
          {
            sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
      }
    }
  }

  return a1;
}

unint64_t sub_26AF73858()
{
  v2 = qword_2803DD498;
  if (!qword_2803DD498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD2D8, &qword_26B08C028);
    sub_26AF72FD8();
    sub_26AEF9014();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD498);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF73900(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD408, &qword_26B08C0B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD470, &qword_26B08C120);
    if (!swift_getEnumCaseMultiPayload())
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
      if (!(*(*(v15 - 8) + 48))(a1, 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
          v12 = a1 + *(v13 + 52);
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
          (*(*(v7 - 8) + 8))(v12);
          v14 = a1 + *(v13 + 56);
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
          if (!(*(*(v8 - 8) + 48))(v14, 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            }

            else
            {
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            }

            (*(*(v9 - 8) + 8))(v14);
          }

          v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0) + 36));
          if (*v11)
          {
          }

          if (v11[2])
          {
          }
        }

        else
        {

          if (*(a1 + 40))
          {
          }

          if (*(a1 + 64))
          {
          }
        }
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD410, &qword_26B08C0C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD440, &unk_26B08C0F0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v16 = a1 + *(v17 + 52);
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v3 - 8) + 8))(v16);
        v18 = a1 + *(v17 + 56);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        if (!(*(*(v4 - 8) + 48))(v18, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            (*(*(v6 - 8) + 8))(v18);
          }

          else
          {
            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            (*(*(v5 - 8) + 8))(v18);
          }
        }
      }

      else
      {
        sub_26AF7266C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 33) & 1);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD418, &qword_26B08C0C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
          v2 = sub_26B079100();
          (*(*(v2 - 8) + 8))(v19);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
            v1 = sub_26B079100();
            (*(*(v1 - 8) + 8))(v20);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
          }

          else
          {
            sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD2D8, &qword_26B08C028);

  return a1;
}

unint64_t sub_26AF7411C()
{
  v2 = qword_2803DD4A0;
  if (!qword_2803DD4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E0, &qword_26B08BEC0);
    sub_26AF73858();
    sub_26AF741C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD4A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF741C4()
{
  v2 = qword_2803DD4A8;
  if (!qword_2803DD4A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD4A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF7423C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD408, &qword_26B08C0B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD470, &qword_26B08C120);
    if (!swift_getEnumCaseMultiPayload())
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
      if (!(*(*(v15 - 8) + 48))(a1, 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
          v12 = a1 + *(v13 + 52);
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
          (*(*(v7 - 8) + 8))(v12);
          v14 = a1 + *(v13 + 56);
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
          if (!(*(*(v8 - 8) + 48))(v14, 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            }

            else
            {
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            }

            (*(*(v9 - 8) + 8))(v14);
          }

          v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0) + 36));
          if (*v11)
          {
          }

          if (v11[2])
          {
          }
        }

        else
        {

          if (*(a1 + 40))
          {
          }

          if (*(a1 + 64))
          {
          }
        }
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD410, &qword_26B08C0C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD440, &unk_26B08C0F0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v16 = a1 + *(v17 + 52);
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v3 - 8) + 8))(v16);
        v18 = a1 + *(v17 + 56);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        if (!(*(*(v4 - 8) + 48))(v18, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            (*(*(v6 - 8) + 8))(v18);
          }

          else
          {
            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            (*(*(v5 - 8) + 8))(v18);
          }
        }
      }

      else
      {
        sub_26AF7266C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 33) & 1);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD418, &qword_26B08C0C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
          v2 = sub_26B079100();
          (*(*(v2 - 8) + 8))(v19);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
            v1 = sub_26B079100();
            (*(*(v1 - 8) + 8))(v20);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
          }

          else
          {
            sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD2D8, &qword_26B08C028);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0E0, &qword_26B08BEC0);

  return a1;
}

uint64_t *sub_26AF74A7C(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD408, &qword_26B08C0B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD470, &qword_26B08C120);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v62 - 8) + 64));
      goto LABEL_48;
    }

    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
    v61 = *(v60 - 8);
    if ((*(v61 + 48))(a1, 1))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3B0, &qword_26B08C090);
      memcpy(a2, a1, *(*(v20 - 8) + 64));
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v42 = *a1;
        v43 = *(a1 + 8);

        *a2 = v42;
        *(a2 + 8) = v43 & 1;
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v45 = a2 + *(v46 + 52);
        v44 = a1 + *(v46 + 52);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v15 - 8) + 16))(v45, v44);
        v47 = a2 + *(v46 + 56);
        v48 = a1 + *(v46 + 56);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        v50 = *(v49 - 8);
        if ((*(v50 + 48))(v48, 1))
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
          memcpy(v47, v48, *(*(v17 - 8) + 64));
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
          }

          else
          {
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
          }

          (*(*(v16 - 8) + 16))(v47, v48);
          swift_storeEnumTagMultiPayload();
          (*(v50 + 56))(v47, 0, 1, v49);
        }

        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0);
        v40 = (a2 + *(v18 + 36));
        v41 = (a1 + *(v18 + 36));
        if (*v41)
        {
          v38 = *v41;
          v39 = v41[1];

          *v40 = v38;
          v40[1] = v39;
        }

        else
        {
          *v40 = *v41;
        }

        if (v41[2])
        {
          v36 = v41[2];
          v37 = v41[3];

          v40[2] = v36;
          v40[3] = v37;
        }

        else
        {
          *(v40 + 1) = *(v41 + 1);
        }

        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v55 = *a1;
        v56 = *(a1 + 8);

        *a2 = v55;
        *(a2 + 8) = v56 & 1;
        v57 = a1[2];
        v58 = *(a1 + 24);

        a2[2] = v57;
        *(a2 + 24) = v58 & 1;
        v59 = a1[4];

        a2[4] = v59;
        if (a1[5])
        {
          v53 = a1[5];
          v54 = a1[6];

          a2[5] = v53;
          a2[6] = v54;
        }

        else
        {
          *(a2 + 5) = *(a1 + 5);
        }

        if (a1[8])
        {
          v51 = a1[7];

          a2[7] = v51;
          v52 = a1[8];

          a2[8] = v52;
        }

        else
        {
          *(a2 + 7) = *(a1 + 7);
        }

        *(a2 + 72) = *(a1 + 72);
        swift_storeEnumTagMultiPayload();
      }

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3D0, &qword_26B08C0A0);
      *(a2 + *(v19 + 36)) = *(a1 + *(v19 + 36));
      v35 = a2 + *(v60 + 36);
      v34 = a1 + *(v60 + 36);
      v33 = *v34;

      *v35 = v33;
      v35[8] = v34[8];
      (*(v61 + 56))(a2, 0, 1, v60);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD410, &qword_26B08C0C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD440, &unk_26B08C0F0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v63 = *a1;
        v64 = *(a1 + 8);

        *a2 = v63;
        *(a2 + 8) = v64 & 1;
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v66 = a2 + *(v67 + 52);
        v65 = a1 + *(v67 + 52);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v12 - 8) + 16))(v66, v65);
        __dst = a2 + *(v67 + 56);
        __src = a1 + *(v67 + 56);
        v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        v71 = *(v70 - 8);
        if ((*(v71 + 48))(__src, 1))
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
          memcpy(__dst, __src, *(*(v14 - 8) + 64));
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
          }

          else
          {
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
          }

          (*(*(v13 - 8) + 16))(__dst, __src);
          swift_storeEnumTagMultiPayload();
          (*(v71 + 56))(__dst, 0, 1, v70);
        }

        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v72 = *a1;
        v73 = a1[1];
        v74 = a1[2];
        v75 = a1[3];
        v76 = *(a1 + 32);
        v77 = *(a1 + 33);
        sub_26AF75B54(*a1, v73, v74, v75, v76, v77 & 1);
        *a2 = v72;
        a2[1] = v73;
        a2[2] = v74;
        a2[3] = v75;
        *(a2 + 32) = v76;
        *(a2 + 33) = v77 & 1;
        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD418, &qword_26B08C0C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          *a2 = *a1;
          v80 = a1[1];
          sub_26B078640();
          a2[1] = v80;
          a2[2] = a1[2];
          v81 = a1[3];
          sub_26B078640();
          a2[3] = v81;
          a2[4] = a1[4];
          v82 = a1[5];

          a2[5] = v82;
          *(a2 + 48) = *(a1 + 48);
          v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
          v84 = a2 + *(v6 + 36);
          v83 = a1 + *(v6 + 36);
          v7 = sub_26B079100();
          (*(*(v7 - 8) + 16))(v84, v83);
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
          v85 = (a2 + *(v8 + 52));
          v9 = (a1 + *(v8 + 52));
          *v85 = *v9;
          v86 = v9[1];
          sub_26B078640();
          v85[1] = v86;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            *a2 = *a1;
            v87 = a1[1];
            sub_26B078640();
            a2[1] = v87;
            a2[2] = a1[2];
            v88 = a1[3];
            sub_26B078640();
            a2[3] = v88;
            a2[4] = a1[4];
            v89 = a1[5];

            a2[5] = v89;
            *(a2 + 48) = *(a1 + 48);
            v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
            v91 = a2 + *(v2 + 36);
            v90 = a1 + *(v2 + 36);
            v3 = sub_26B079100();
            (*(*(v3 - 8) + 16))(v91, v90);
            v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
            v92 = (a2 + *(v4 + 52));
            v5 = (a1 + *(v4 + 52));
            *v92 = *v5;
            v93 = v5[1];
            sub_26B078640();
            v92[1] = v93;
          }

          else
          {
            *a2 = *a1;
            *(a2 + 16) = *(a1 + 16);
            a2[3] = a1[3];
            *(a2 + 32) = *(a1 + 32);
            v94 = a1[5];
            v95 = a1[6];
            v96 = *(a1 + 56);
            sub_26AE95D28(v94, v95, v96 & 1);
            a2[5] = v94;
            a2[6] = v95;
            *(a2 + 56) = v96 & 1;
            v97 = a1[8];
            sub_26B078640();
            a2[8] = v97;
            v98 = a1[9];

            a2[9] = v98;
            *(a2 + 80) = *(a1 + 80);
          }

          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
        v78 = (a2 + *(v10 + 52));
        v11 = (a1 + *(v10 + 52));
        *v78 = *v11;
        v79 = v11[1];
        sub_26B078640();
        v78[1] = v79;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a2, a1, *(*(v99 - 8) + 64));
      }
    }
  }

  swift_storeEnumTagMultiPayload();
LABEL_48:
  swift_storeEnumTagMultiPayload();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD2C8, &qword_26B08C018);
  memcpy(a2 + *(v21 + 36), a1 + *(v21 + 36), 0x70uLL);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD2D0, &qword_26B08C020);
  *(a2 + *(v22 + 52)) = *(a1 + *(v22 + 52));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD2D8, &qword_26B08C028);
  v29 = a2 + *(v23 + 36);
  v28 = a1 + *(v23 + 36);
  v27 = *v28;

  *v29 = v27;
  v29[8] = v28[8];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0E0, &qword_26B08BEC0);
  v32 = a2 + *(v24 + 36);
  v25 = a1 + *(v24 + 36);
  v30 = *v25;
  v31 = v25[8];

  result = a2;
  *v32 = v30;
  v32[8] = v31 & 1;
  return result;
}

uint64_t sub_26AF75B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    return sub_26AF75BC4(a1, a2, a3, a4);
  }

  return sub_26AEB0BF0(a3, a4);
}

unint64_t sub_26AF75C4C()
{
  v2 = qword_2803DD4C8;
  if (!qword_2803DD4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD4C0, &qword_26B08C140);
    sub_26AF75CF4();
    sub_26AF75E24();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD4C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF75CF4()
{
  v2 = qword_2803DD4D0;
  if (!qword_2803DD4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD4D8, &qword_26B08C148);
    sub_26AF75D9C();
    sub_26AF75E24();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD4D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF75D9C()
{
  v2 = qword_2803DD4E0;
  if (!qword_2803DD4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD4E8, &qword_26B08C150);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD4E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF75E24()
{
  v2 = qword_2803DD4F0;
  if (!qword_2803DD4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD438, &qword_26B08C0E8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD4F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF75EAC()
{
  v2 = qword_2803DD4F8;
  if (!qword_2803DD4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD4B8, &qword_26B08C138);
    sub_26AF75C4C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD4F8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF75F44(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 8))(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
      v1 = sub_26B079100();
      (*(*(v1 - 8) + 8))(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
    }

    else
    {
      sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);
    }
  }

  return a1;
}

uint64_t sub_26AF76150(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 8))(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
      v1 = sub_26B079100();
      (*(*(v1 - 8) + 8))(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
    }

    else
    {
      sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);

  return a1;
}

uint64_t sub_26AF76384(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v15 = *(a1 + 8);
    sub_26B078640();
    *(a2 + 8) = v15;
    *(a2 + 16) = *(a1 + 16);
    v16 = *(a1 + 24);
    sub_26B078640();
    *(a2 + 24) = v16;
    *(a2 + 32) = *(a1 + 32);
    v17 = *(a1 + 40);

    *(a2 + 40) = v17;
    *(a2 + 48) = *(a1 + 48);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
    v19 = a2 + *(v6 + 36);
    v18 = a1 + *(v6 + 36);
    v7 = sub_26B079100();
    (*(*(v7 - 8) + 16))(v19, v18);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
    v20 = (a2 + *(v8 + 52));
    v9 = (a1 + *(v8 + 52));
    *v20 = *v9;
    v21 = v9[1];
    sub_26B078640();
    v20[1] = v21;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      v22 = *(a1 + 8);
      sub_26B078640();
      *(a2 + 8) = v22;
      *(a2 + 16) = *(a1 + 16);
      v23 = *(a1 + 24);
      sub_26B078640();
      *(a2 + 24) = v23;
      *(a2 + 32) = *(a1 + 32);
      v24 = *(a1 + 40);

      *(a2 + 40) = v24;
      *(a2 + 48) = *(a1 + 48);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
      v26 = a2 + *(v2 + 36);
      v25 = a1 + *(v2 + 36);
      v3 = sub_26B079100();
      (*(*(v3 - 8) + 16))(v26, v25);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
      v27 = (a2 + *(v4 + 52));
      v5 = (a1 + *(v4 + 52));
      *v27 = *v5;
      v28 = v5[1];
      sub_26B078640();
      v27[1] = v28;
    }

    else
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
      *(a2 + 24) = *(a1 + 24);
      *(a2 + 32) = *(a1 + 32);
      v29 = *(a1 + 40);
      v30 = *(a1 + 48);
      v31 = *(a1 + 56);
      sub_26AE95D28(v29, v30, v31 & 1);
      *(a2 + 40) = v29;
      *(a2 + 48) = v30;
      *(a2 + 56) = v31 & 1;
      v32 = *(a1 + 64);
      sub_26B078640();
      *(a2 + 64) = v32;
      v33 = *(a1 + 72);

      *(a2 + 72) = v33;
      *(a2 + 80) = *(a1 + 80);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
  v13 = (a2 + *(v10 + 52));
  v11 = (a1 + *(v10 + 52));
  *v13 = *v11;
  v14 = v11[1];
  sub_26B078640();
  result = a2;
  v13[1] = v14;
  return result;
}

uint64_t sub_26AF767D0()
{
  v16 = v0[2];
  v15 = v0[3];
  v1 = v0[4];
  v2 = v0[5];
  v14[0] = v16;
  v14[1] = v15;
  v14[2] = v1;
  v14[3] = v2;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v14);
  v3 = *(*(updated - 1) + 80);
  v11 = (v3 + 48) & ~v3;

  v13 = updated[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B0789F0();
    (*(*(v4 - 8) + 8))(v10 + v11 + v13);
  }

  else
  {
  }

  v9 = v10 + v11 + updated[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B078B00();
    (*(*(v5 - 8) + 8))(v9);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(v10 + v11 + updated[18]), *(v10 + v11 + updated[18] + 8), *(v10 + v11 + updated[18] + 16) & 1);
  v8 = v10 + v11 + updated[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B079C30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF76B78()
{
  v7 = v0[2];
  v8[5] = v7;
  v4 = v0[3];
  v8[4] = v4;
  v5 = v0[4];
  v6 = v0[5];
  v8[0] = v7;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v8);
  v2 = (v0 + ((*(*(updated - 8) + 80) + 48) & ~*(*(updated - 8) + 80)));

  return sub_26AF57D74(v2, v7, v4, v5, v6);
}

uint64_t sub_26AF76CBC()
{
  v16 = v0[2];
  v15 = v0[3];
  v1 = v0[4];
  v2 = v0[5];
  v14[0] = v16;
  v14[1] = v15;
  v14[2] = v1;
  v14[3] = v2;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v14);
  v3 = *(*(updated - 1) + 80);
  v11 = (v3 + 48) & ~v3;

  v13 = updated[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B0789F0();
    (*(*(v4 - 8) + 8))(v10 + v11 + v13);
  }

  else
  {
  }

  v9 = v10 + v11 + updated[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B078B00();
    (*(*(v5 - 8) + 8))(v9);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(v10 + v11 + updated[18]), *(v10 + v11 + updated[18] + 8), *(v10 + v11 + updated[18] + 16) & 1);
  v8 = v10 + v11 + updated[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B079C30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF77064@<X0>(uint64_t *a1@<X8>)
{
  v9 = v1[2];
  v10[5] = v9;
  v6 = v1[3];
  v10[4] = v6;
  v7 = v1[4];
  v8 = v1[5];
  v10[0] = v9;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v10);
  v3 = v1 + ((*(*(updated - 8) + 80) + 48) & ~*(*(updated - 8) + 80));

  return sub_26AF58E20(v3, v9, v6, v7, v8, a1);
}

unint64_t sub_26AF7714C()
{
  v2 = qword_2803DD500;
  if (!qword_2803DD500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD4B0, &qword_26B08C130);
    sub_26AF771E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD500);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF771E4()
{
  v2 = qword_2803DD508;
  if (!qword_2803DD508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD450, &qword_26B08C100);
    sub_26AF7728C();
    sub_26AF77314();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD508);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF7728C()
{
  v2 = qword_2803DD510;
  if (!qword_2803DD510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD460, &qword_26B08C110);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD510);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF77314()
{
  v2 = qword_2803DD518;
  if (!qword_2803DD518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD468, &qword_26B08C118);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD518);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF7739C(uint64_t a1)
{

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
  v5 = *(v6 + 52);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
  (*(*(v1 - 8) + 8))(a1 + v5);
  v7 = *(v6 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
  if (!(*(*(v2 - 8) + 48))(a1 + v7, 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
    }

    else
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
    }

    (*(*(v3 - 8) + 8))(a1 + v7);
  }

  return a1;
}

uint64_t sub_26AF77570(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *(a1 + 8);

  *a2 = v6;
  *(a2 + 8) = v7 & 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
  v9 = *(v10 + 52);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
  (*(*(v2 - 8) + 16))(a2 + v9, a1 + v9);
  v11 = *(v10 + 56);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1 + v11, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
    memcpy((a2 + v11), a1 + v11, *(*(v4 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
    }

    else
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
    }

    (*(*(v3 - 8) + 16))();
    swift_storeEnumTagMultiPayload();
    (*(v14 + 56))(a2 + v11, 0, 1, v13);
  }

  return a2;
}

uint64_t sub_26AF77874()
{
  v16 = v0[2];
  v15 = v0[3];
  v1 = v0[4];
  v2 = v0[5];
  v14[0] = v16;
  v14[1] = v15;
  v14[2] = v1;
  v14[3] = v2;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v14);
  v3 = *(*(updated - 1) + 80);
  v11 = (v3 + 48) & ~v3;

  v13 = updated[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B0789F0();
    (*(*(v4 - 8) + 8))(v10 + v11 + v13);
  }

  else
  {
  }

  v9 = v10 + v11 + updated[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B078B00();
    (*(*(v5 - 8) + 8))(v9);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(v10 + v11 + updated[18]), *(v10 + v11 + updated[18] + 8), *(v10 + v11 + updated[18] + 16) & 1);
  v8 = v10 + v11 + updated[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B079C30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF77C1C()
{
  v7 = v0[2];
  v8[5] = v7;
  v4 = v0[3];
  v8[4] = v4;
  v5 = v0[4];
  v6 = v0[5];
  v8[0] = v7;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v8);
  v2 = v0 + ((*(*(updated - 8) + 80) + 48) & ~*(*(updated - 8) + 80));

  return sub_26AF5B1DC(v2, v7, v4, v5, v6);
}

uint64_t sub_26AF77CD4(uint64_t a1)
{

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
  v6 = *(v7 + 52);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
  (*(*(v1 - 8) + 8))(a1 + v6);
  v8 = *(v7 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
  if (!(*(*(v2 - 8) + 48))(a1 + v8, 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
    }

    else
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
    }

    (*(*(v3 - 8) + 8))(a1 + v8);
  }

  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0) + 36));
  if (*v5)
  {
  }

  if (v5[2])
  {
  }

  return a1;
}

uint64_t sub_26AF77F08(uint64_t *a1, uint64_t a2)
{
  v13 = *a1;
  v14 = *(a1 + 8);

  *a2 = v13;
  *(a2 + 8) = v14 & 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
  v16 = *(v17 + 52);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
  (*(*(v2 - 8) + 16))(a2 + v16, a1 + v16);
  v18 = *(v17 + 56);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(a1 + v18, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
    memcpy((a2 + v18), a1 + v18, *(*(v4 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
    }

    else
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
    }

    (*(*(v3 - 8) + 16))();
    swift_storeEnumTagMultiPayload();
    (*(v21 + 56))(a2 + v18, 0, 1, v20);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0);
  v11 = (a2 + *(v5 + 36));
  v12 = (a1 + *(v5 + 36));
  if (*v12)
  {
    v9 = *v12;
    v10 = v12[1];

    *v11 = v9;
    v11[1] = v10;
  }

  else
  {
    *v11 = *v12;
  }

  if (v12[2])
  {
    v7 = v12[2];
    v8 = v12[3];

    v11[2] = v7;
    v11[3] = v8;
  }

  else
  {
    *(v11 + 1) = *(v12 + 1);
  }

  return a2;
}

char *sub_26AF782E4(char *a1, char *a2)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    a2[8] = a1[8];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
    v10 = &a2[*(v11 + 52)];
    v9 = &a1[*(v11 + 52)];
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
    (*(*(v2 - 8) + 32))(v10, v9);
    __dst = &a2[*(v11 + 56)];
    __src = &a1[*(v11 + 56)];
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(__src, 1))
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
      }

      else
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
      }

      (*(*(v3 - 8) + 32))(__dst, __src);
      swift_storeEnumTagMultiPayload();
      (*(v15 + 56))(__dst, 0, 1, v14);
    }

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0);
    v6 = &a2[*(v5 + 36)];
    v7 = &a1[*(v5 + 36)];
    *v6 = *v7;
    *(v6 + 1) = *(v7 + 1);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v18 - 8) + 64));
  }

  return a2;
}

uint64_t sub_26AF78638(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *a1;
    v14 = *(a1 + 8);

    *a2 = v13;
    *(a2 + 8) = v14 & 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
    v16 = a2 + *(v17 + 52);
    v15 = a1 + *(v17 + 52);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
    (*(*(v2 - 8) + 16))(v16, v15);
    __dst = (a2 + *(v17 + 56));
    __src = a1 + *(v17 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(__src, 1))
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
      }

      else
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
      }

      (*(*(v3 - 8) + 16))(__dst, __src);
      swift_storeEnumTagMultiPayload();
      (*(v21 + 56))(__dst, 0, 1, v20);
    }

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0);
    v11 = (a2 + *(v5 + 36));
    v12 = (a1 + *(v5 + 36));
    if (*v12)
    {
      v9 = *v12;
      v10 = v12[1];

      *v11 = v9;
      v11[1] = v10;
    }

    else
    {
      *v11 = *v12;
    }

    if (v12[2])
    {
      v7 = v12[2];
      v8 = v12[3];

      v11[2] = v7;
      v11[3] = v8;
    }

    else
    {
      *(v11 + 1) = *(v12 + 1);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v26 = *a1;
    v27 = *(a1 + 8);

    *a2 = v26;
    *(a2 + 8) = v27 & 1;
    v28 = a1[2];
    v29 = *(a1 + 24);

    *(a2 + 16) = v28;
    *(a2 + 24) = v29 & 1;
    v30 = a1[4];

    *(a2 + 32) = v30;
    if (a1[5])
    {
      v24 = a1[5];
      v25 = a1[6];

      *(a2 + 40) = v24;
      *(a2 + 48) = v25;
    }

    else
    {
      *(a2 + 40) = *(a1 + 5);
    }

    if (a1[8])
    {
      v22 = a1[7];

      *(a2 + 56) = v22;
      v23 = a1[8];

      *(a2 + 64) = v23;
    }

    else
    {
      *(a2 + 56) = *(a1 + 7);
    }

    *(a2 + 72) = *(a1 + 72);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26AF78B90(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
    v6 = a1 + *(v7 + 52);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
    (*(*(v1 - 8) + 8))(v6);
    v8 = a1 + *(v7 + 56);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
    if (!(*(*(v2 - 8) + 48))(v8, 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
      }

      else
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
      }

      (*(*(v3 - 8) + 8))(v8);
    }

    v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0) + 36));
    if (*v5)
    {
    }

    if (v5[2])
    {
    }
  }

  else
  {

    if (*(a1 + 40))
    {
    }

    if (*(a1 + 64))
    {
    }
  }

  return a1;
}

uint64_t sub_26AF78E54(uint64_t a1)
{

  if (*(a1 + 40))
  {
  }

  if (*(a1 + 64))
  {
  }

  return a1;
}

uint64_t sub_26AF78EE4(uint64_t *a1, uint64_t a2)
{
  v7 = *a1;
  v8 = *(a1 + 8);

  *a2 = v7;
  *(a2 + 8) = v8 & 1;
  v9 = a1[2];
  v10 = *(a1 + 24);

  *(a2 + 16) = v9;
  *(a2 + 24) = v10 & 1;
  v13 = a1[4];

  *(a2 + 32) = v13;
  if (a1[5])
  {
    v5 = a1[5];
    v6 = a1[6];

    *(a2 + 40) = v5;
    *(a2 + 48) = v6;
  }

  else
  {
    *(a2 + 40) = *(a1 + 5);
  }

  if (a1[8])
  {
    v3 = a1[7];

    *(a2 + 56) = v3;
    v4 = a1[8];

    *(a2 + 64) = v4;
  }

  else
  {
    *(a2 + 56) = *(a1 + 7);
  }

  *(a2 + 72) = *(a1 + 72);
  return a2;
}

unint64_t sub_26AF79090()
{
  v2 = qword_2803DD528;
  if (!qword_2803DD528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD520, &qword_26B08C158);
    sub_26AF79144();
    sub_26AF6B948();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD528);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF79144()
{
  v2 = qword_2803DD530;
  if (!qword_2803DD530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD538, &qword_26B08C160);
    sub_26AF791EC();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD530);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF791EC()
{
  v2 = qword_2803DD540;
  if (!qword_2803DD540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD548, &qword_26B08C168);
    sub_26AF79290();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD540);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF79290()
{
  v2 = qword_2803DD550;
  if (!qword_2803DD550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD558, &qword_26B08C170);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD550);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF79318(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_26AF79380(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

  return a1;
}

uint64_t sub_26AF79424(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
  *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60) + 36);
  v7 = *(a1 + v6);

  v10 = a2 + v6;
  *(a2 + v6) = v7;
  v9 = *(a1 + v6 + 8);
  v11 = *(a1 + v6 + 16);

  result = a2;
  *(v10 + 8) = v9;
  *(v10 + 16) = v11;
  return result;
}

uint64_t sub_26AF79570(uint64_t a1)
{
  v3 = sub_26B078300();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_26AF7963C()
{
  v2 = qword_2803DD578;
  if (!qword_2803DD578)
  {
    type metadata accessor for ComparisonResult(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD578);
    return WitnessTable;
  }

  return v2;
}

__n128 sub_26AF796BC(uint64_t a1, uint64_t a2, int *a3)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v30 = a3[13];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26B0789F0();
    (*(*(v3 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v30), (a1 + v30), *(*(v32 - 8) + 64));
  }

  __dst = (a2 + a3[14]);
  __src = (a1 + a3[14]);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B078B00();
    (*(*(v4 - 8) + 32))(__dst, __src);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(__dst, __src, *(*(v27 - 8) + 64));
  }

  v5 = a2 + a3[15];
  v6 = a1 + a3[15];
  *v5 = *v6;
  *(v5 + 8) = *(v6 + 8);
  v7 = a2 + a3[16];
  v8 = a1 + a3[16];
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  v9 = a2 + a3[17];
  v10 = a1 + a3[17];
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  v11 = a2 + a3[18];
  v12 = a3[18];
  *v11 = *(a1 + v12);
  *(v11 + 16) = *(a1 + v12 + 16);
  v22 = (a2 + a3[19]);
  v23 = (a1 + a3[19]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26B079C30();
    (*(*(v13 - 8) + 32))(v22, v23);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v22, v23, *(*(v24 - 8) + 64));
  }

  *(a2 + a3[20]) = *(a1 + a3[20]);
  *(a2 + a3[21]) = *(a1 + a3[21]);
  result = *(a1 + a3[22]);
  *(a2 + a3[22]) = result;
  v15 = (a2 + a3[23]);
  v16 = (a1 + a3[23]);
  v17 = *v16;
  v18 = v16[1];
  *v15 = v17;
  v15[1] = v18;
  v19 = a3[24];
  v20 = (a2 + v19);
  v21 = *(a1 + v19 + 8);
  *v20 = *(a1 + v19);
  v20[1] = v21;
  return result;
}

uint64_t sub_26AF79AA4(uint64_t *a1, uint64_t a2, int *a3)
{
  v48 = *a1;
  v49 = *(a1 + 8);

  *a2 = v48;
  *(a2 + 8) = v49 & 1;
  v52 = a3[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26B0789F0();
    (*(*(v3 - 8) + 16))();
  }

  else
  {
    v47 = *(a1 + v52);

    *(a2 + v52) = v47;
  }

  swift_storeEnumTagMultiPayload();
  v45 = (a2 + a3[14]);
  v46 = (a1 + a3[14]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B078B00();
    (*(*(v4 - 8) + 16))(v45, v46);
  }

  else
  {
    v44 = *v46;

    *v45 = v44;
  }

  swift_storeEnumTagMultiPayload();
  v31 = a2 + a3[15];
  v5 = a1 + a3[15];
  v29 = *v5;
  v30 = v5[8];

  *v31 = v29;
  *(v31 + 8) = v30 & 1;
  v34 = a2 + a3[16];
  v6 = a1 + a3[16];
  v32 = *v6;
  v33 = v6[8];

  *v34 = v32;
  *(v34 + 8) = v33 & 1;
  v37 = a2 + a3[17];
  v7 = a1 + a3[17];
  v35 = *v7;
  v36 = v7[8];
  sub_26AEF6B08();
  *v37 = v35;
  *(v37 + 8) = v36 & 1;
  v41 = a2 + a3[18];
  v8 = a1 + a3[18];
  v38 = *v8;
  v39 = *(v8 + 1);
  v40 = v8[16];
  sub_26AEF6B48(*v8, v39, v40 & 1);
  *v41 = v38;
  *(v41 + 8) = v39;
  *(v41 + 16) = v40 & 1;
  v42 = (a2 + a3[19]);
  v43 = (a1 + a3[19]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26B079C30();
    (*(*(v9 - 8) + 16))(v42, v43);
  }

  else
  {
    v28 = *v43;

    *v42 = v28;
  }

  swift_storeEnumTagMultiPayload();
  v10 = a3[20];
  v16 = a2 + v10;
  *(a2 + v10) = *(a1 + v10);
  v17 = *(a1 + v10 + 8);

  *(v16 + 8) = v17;
  v11 = a3[21];
  v18 = a2 + v11;
  *(a2 + v11) = *(a1 + v11);
  v19 = *(a1 + v11 + 8);

  *(v18 + 8) = v19;
  v12 = a3[22];
  v20 = a2 + v12;
  *(a2 + v12) = *(a1 + v12);
  v21 = *(a1 + v12 + 8);

  *(v20 + 8) = v21;
  v13 = a3[23];
  v23 = (a2 + v13);
  v22 = *(a1 + v13);
  v24 = *(a1 + v13 + 8);

  *v23 = v22;
  v23[1] = v24;
  v14 = a3[24];
  v26 = (a2 + v14);
  v25 = *(a1 + v14);
  v27 = *(a1 + v14 + 8);

  result = a2;
  *v26 = v25;
  v26[1] = v27;
  return result;
}

uint64_t sub_26AF7A054(uint64_t a1, int *a2)
{

  v9 = a2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B0789F0();
    (*(*(v2 - 8) + 8))(a1 + v9);
  }

  else
  {
  }

  v7 = a1 + a2[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26B078B00();
    (*(*(v3 - 8) + 8))(v7);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(a1 + a2[18]), *(a1 + a2[18] + 8), *(a1 + a2[18] + 16) & 1);
  v6 = a1 + a2[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B079C30();
    (*(*(v4 - 8) + 8))(v6);
  }

  else
  {
  }

  return a1;
}

__n128 sub_26AF7A318(uint64_t a1, uint64_t a2, int *a3)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v30 = a3[13];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26B0789F0();
    (*(*(v3 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v30), (a1 + v30), *(*(v32 - 8) + 64));
  }

  __dst = (a2 + a3[14]);
  __src = (a1 + a3[14]);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B078B00();
    (*(*(v4 - 8) + 32))(__dst, __src);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(__dst, __src, *(*(v27 - 8) + 64));
  }

  v5 = a2 + a3[15];
  v6 = a1 + a3[15];
  *v5 = *v6;
  *(v5 + 8) = *(v6 + 8);
  v7 = a2 + a3[16];
  v8 = a1 + a3[16];
  *v7 = *v8;
  *(v7 + 8) = *(v8 + 8);
  v9 = a2 + a3[17];
  v10 = a1 + a3[17];
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  v11 = a2 + a3[18];
  v12 = a3[18];
  *v11 = *(a1 + v12);
  *(v11 + 16) = *(a1 + v12 + 16);
  v22 = (a2 + a3[19]);
  v23 = (a1 + a3[19]);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26B079C30();
    (*(*(v13 - 8) + 32))(v22, v23);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v22, v23, *(*(v24 - 8) + 64));
  }

  *(a2 + a3[20]) = *(a1 + a3[20]);
  *(a2 + a3[21]) = *(a1 + a3[21]);
  result = *(a1 + a3[22]);
  *(a2 + a3[22]) = result;
  v15 = (a2 + a3[23]);
  v16 = (a1 + a3[23]);
  v17 = *v16;
  v18 = v16[1];
  *v15 = v17;
  v15[1] = v18;
  v19 = a3[24];
  v20 = (a2 + v19);
  v21 = *(a1 + v19 + 8);
  *v20 = *(a1 + v19);
  v20[1] = v21;
  return result;
}

uint64_t sub_26AF7A700(uint64_t *a1, uint64_t a2, int *a3)
{
  v48 = *a1;
  v49 = *(a1 + 8);

  *a2 = v48;
  *(a2 + 8) = v49 & 1;
  v52 = a3[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26B0789F0();
    (*(*(v3 - 8) + 16))();
  }

  else
  {
    v47 = *(a1 + v52);

    *(a2 + v52) = v47;
  }

  swift_storeEnumTagMultiPayload();
  v45 = (a2 + a3[14]);
  v46 = (a1 + a3[14]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B078B00();
    (*(*(v4 - 8) + 16))(v45, v46);
  }

  else
  {
    v44 = *v46;

    *v45 = v44;
  }

  swift_storeEnumTagMultiPayload();
  v31 = a2 + a3[15];
  v5 = a1 + a3[15];
  v29 = *v5;
  v30 = v5[8];

  *v31 = v29;
  *(v31 + 8) = v30 & 1;
  v34 = a2 + a3[16];
  v6 = a1 + a3[16];
  v32 = *v6;
  v33 = v6[8];

  *v34 = v32;
  *(v34 + 8) = v33 & 1;
  v37 = a2 + a3[17];
  v7 = a1 + a3[17];
  v35 = *v7;
  v36 = v7[8];
  sub_26AEF6B08();
  *v37 = v35;
  *(v37 + 8) = v36 & 1;
  v41 = a2 + a3[18];
  v8 = a1 + a3[18];
  v38 = *v8;
  v39 = *(v8 + 1);
  v40 = v8[16];
  sub_26AEF6B48(*v8, v39, v40 & 1);
  *v41 = v38;
  *(v41 + 8) = v39;
  *(v41 + 16) = v40 & 1;
  v42 = (a2 + a3[19]);
  v43 = (a1 + a3[19]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_26B079C30();
    (*(*(v9 - 8) + 16))(v42, v43);
  }

  else
  {
    v28 = *v43;

    *v42 = v28;
  }

  swift_storeEnumTagMultiPayload();
  v10 = a3[20];
  v16 = a2 + v10;
  *(a2 + v10) = *(a1 + v10);
  v17 = *(a1 + v10 + 8);

  *(v16 + 8) = v17;
  v11 = a3[21];
  v18 = a2 + v11;
  *(a2 + v11) = *(a1 + v11);
  v19 = *(a1 + v11 + 8);

  *(v18 + 8) = v19;
  v12 = a3[22];
  v20 = a2 + v12;
  *(a2 + v12) = *(a1 + v12);
  v21 = *(a1 + v12 + 8);

  *(v20 + 8) = v21;
  v13 = a3[23];
  v23 = (a2 + v13);
  v22 = *(a1 + v13);
  v24 = *(a1 + v13 + 8);

  *v23 = v22;
  v23[1] = v24;
  v14 = a3[24];
  v26 = (a2 + v14);
  v25 = *(a1 + v14);
  v27 = *(a1 + v14 + 8);

  result = a2;
  *v26 = v25;
  v26[1] = v27;
  return result;
}

uint64_t sub_26AF7ACB0(uint64_t a1, int *a2)
{

  v9 = a2[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B0789F0();
    (*(*(v2 - 8) + 8))(a1 + v9);
  }

  else
  {
  }

  v7 = a1 + a2[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26B078B00();
    (*(*(v3 - 8) + 8))(v7);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(a1 + a2[18]), *(a1 + a2[18] + 8), *(a1 + a2[18] + 16) & 1);
  v6 = a1 + a2[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B079C30();
    (*(*(v4 - 8) + 8))(v6);
  }

  else
  {
  }

  return a1;
}

__n128 sub_26AF7AF74(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD580, &qword_26B08C200);
  v29 = v28[13];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = sub_26B0789F0();
    (*(*(v2 - 8) + 32))();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy((a2 + v29), (a1 + v29), *(*(v31 - 8) + 64));
  }

  __dst = (a2 + v28[14]);
  __src = (a1 + v28[14]);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_26B078B00();
    (*(*(v3 - 8) + 32))(__dst, __src);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(__dst, __src, *(*(v26 - 8) + 64));
  }

  v4 = a2 + v28[15];
  v5 = a1 + v28[15];
  *v4 = *v5;
  *(v4 + 8) = *(v5 + 8);
  v6 = a2 + v28[16];
  v7 = a1 + v28[16];
  *v6 = *v7;
  *(v6 + 8) = *(v7 + 8);
  v8 = a2 + v28[17];
  v9 = a1 + v28[17];
  *v8 = *v9;
  *(v8 + 8) = *(v9 + 8);
  v10 = a2 + v28[18];
  v11 = v28[18];
  *v10 = *(a1 + v11);
  *(v10 + 16) = *(a1 + v11 + 16);
  v21 = (a2 + v28[19]);
  v22 = (a1 + v28[19]);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_26B079C30();
    (*(*(v12 - 8) + 32))(v21, v22);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(v21, v22, *(*(v23 - 8) + 64));
  }

  *(a2 + v28[20]) = *(a1 + v28[20]);
  *(a2 + v28[21]) = *(a1 + v28[21]);
  result = *(a1 + v28[22]);
  *(a2 + v28[22]) = result;
  v14 = (a2 + v28[23]);
  v15 = (a1 + v28[23]);
  v16 = *v15;
  v17 = v15[1];
  *v14 = v16;
  v14[1] = v17;
  v18 = v28[24];
  v19 = (a2 + v18);
  v20 = *(a1 + v18 + 8);
  *v19 = *(a1 + v18);
  v19[1] = v20;
  return result;
}

unint64_t sub_26AF7B370()
{
  v2 = qword_2803DD588[0];
  if (!qword_2803DD588[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_2803DD588);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF7B490(uint64_t a1)
{
  v13 = sub_26AF7BC6C(319);
  if (v1 <= 0x3F)
  {
    v13 = sub_26AF7BD08(319);
    if (v2 <= 0x3F)
    {
      v13 = sub_26AED59A8(319);
      if (v3 <= 0x3F)
      {
        v13 = sub_26AE96B4C(319);
        if (v4 <= 0x3F)
        {
          v13 = sub_26AF7BDA4(319);
          if (v5 <= 0x3F)
          {
            v13 = sub_26AF7BE40(319);
            if (v6 <= 0x3F)
            {
              v13 = sub_26AF7BEE4(319);
              if (v7 <= 0x3F)
              {
                v13 = sub_26AF7BF88(319);
                if (v8 <= 0x3F)
                {
                  v13 = sub_26AE96C84(319);
                  if (v9 <= 0x3F)
                  {
                    v13 = sub_26AF7C024(319);
                    if (v10 <= 0x3F)
                    {
                      v13 = sub_26AE96D98();
                      if (v11 <= 0x3F)
                      {
                        swift_cvw_initStructMetadataWithLayoutString();
                        return 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v13;
}

uint64_t sub_26AF7B77C(uint64_t a1, unsigned int a2, int *a3)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD070, &unk_26B08BE50);
  if (a2 == *(*(v11 - 8) + 84))
  {
    return (*(*(v11 - 8) + 48))(a1 + a3[13], a2, v11);
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130, &unk_26B088940);
    if (a2 == *(*(v6 - 8) + 84))
    {
      return (*(*(v6 - 8) + 48))(a1 + a3[14], a2, v6);
    }

    else
    {
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD090, &unk_26B08BE70);
      if (a2 == *(*(v5 - 8) + 84))
      {
        return (*(*(v5 - 8) + 48))(a1 + a3[19], a2, v5);
      }

      else if (a2 == 0x7FFFFFFF)
      {
        v4 = -1;
        if (*(a1 + a3[23]) < 0x100000000uLL)
        {
          v4 = *(a1 + a3[23]);
        }

        return (v4 + 1);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return v7;
}

uint64_t sub_26AF7BA1C(uint64_t a1, unsigned int a2, int a3, int *a4)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD070, &unk_26B08BE50);
  if (a3 == *(*(v10 - 8) + 84))
  {
    return (*(*(v10 - 8) + 56))(a1 + a4[13], a2, a2, v10);
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DC130, &unk_26B088940);
  if (a3 == *(*(v5 - 8) + 84))
  {
    return (*(*(v5 - 8) + 56))(a1 + a4[14], a2, a2, v5);
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD090, &unk_26B08BE70);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1 + a4[19], a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[23]) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26AF7BC6C(uint64_t a1)
{
  v5 = qword_2803DD610;
  if (!qword_2803DD610)
  {
    sub_26B078530();
    v4 = sub_26B078A20();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DD610);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_26AF7BD08(uint64_t a1)
{
  v5 = qword_2803DD618;
  if (!qword_2803DD618)
  {
    sub_26B0789F0();
    v4 = sub_26B078A20();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DD618);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_26AF7BDA4(uint64_t a1)
{
  v5 = qword_2803DD630;
  if (!qword_2803DD630)
  {
    type metadata accessor for ReactiveAnalyticsReporter(255);
    v4 = sub_26B078A20();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DD630);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_26AF7BE40(uint64_t a1)
{
  v5 = qword_2803DD638;
  if (!qword_2803DD638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD640, qword_26B08C2A0);
    v4 = sub_26B078A20();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DD638);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_26AF7BEE4(uint64_t a1)
{
  v5 = qword_2803DD648;
  if (!qword_2803DD648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD650, &qword_26B08AC98);
    v4 = sub_26B078A20();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DD648);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_26AF7BF88(uint64_t a1)
{
  v5 = qword_2803DD658;
  if (!qword_2803DD658)
  {
    sub_26B079C30();
    v4 = sub_26B078A20();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DD658);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_26AF7C024(uint64_t a1)
{
  v5 = qword_2803DD668;
  if (!qword_2803DD668)
  {
    v4 = sub_26B0798E0();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_2803DD668);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_26AF7C0BC(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFD)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 2) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 253;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 3;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26AF7C224(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFD)
  {
    v5 = ((a3 + 2) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFD)
  {
    v4 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_26AF7C45C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0A8, &qword_26B08BE88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0B0, &unk_26B08BE90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCF10, qword_26B08BA48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0C0, &unk_26B08BEA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC50, &unk_26B087430);
  sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D0, &unk_26B08BEB0);
  sub_26B079AB0();
  swift_getTupleTypeMetadata2();
  sub_26B079BB0();
  swift_getWitnessTable();
  sub_26B079250();
  swift_getWitnessTable();
  sub_26B079990();
  sub_26B078BF0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D8, &qword_26B08D280);
  sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E0, &qword_26B08BEC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E8, &qword_26B08BEC8);
  swift_getTupleTypeMetadata2();
  sub_26B079BB0();
  sub_26B079810();
  sub_26B078BF0();
  sub_26B078BF0();
  swift_getTupleTypeMetadata3();
  sub_26B079BB0();
  swift_getWitnessTable();
  sub_26B079990();
  sub_26B078BF0();
  swift_getWitnessTable();
  sub_26AF0633C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_26B078BF0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_26AF6863C();
  swift_getOpaqueTypeConformance2();
  sub_26B078C20();
  sub_26AEDE278();
  swift_getWitnessTable();
  sub_26B078C20();
  swift_getTupleTypeMetadata2();
  v4 = sub_26B079BB0();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for AdaptiveScrollView(255, v4, WitnessTable, v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC720, &qword_26B089FD0);
  sub_26B078BF0();
  swift_getWitnessTable();
  sub_26AEF9014();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC5C8, &qword_26B089C58);
  swift_getOpaqueTypeConformance2();
  sub_26AEF4560();
  swift_getOpaqueTypeMetadata2();
  sub_26B078BF0();
  sub_26B078BF0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26B079960();
  return swift_getWitnessTable();
}

uint64_t sub_26AF7CC80(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0C0, &unk_26B08BEA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC50, &unk_26B087430);
  sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D0, &unk_26B08BEB0);
  sub_26B079AB0();
  swift_getTupleTypeMetadata2();
  sub_26B079BB0();
  swift_getWitnessTable();
  sub_26B079250();
  swift_getWitnessTable();
  sub_26B079990();
  sub_26B078BF0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D8, &qword_26B08D280);
  sub_26B078BF0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_26AF6B6FC();
  return swift_getWitnessTable();
}

uint64_t sub_26AF7CF30(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E8, &qword_26B08BEC8);
  swift_getTupleTypeMetadata2();
  sub_26B079BB0();
  sub_26B079810();
  sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D8, &qword_26B08D280);
  sub_26B078BF0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_26AF6B6FC();
  return swift_getWitnessTable();
}

uint64_t sub_26AF7D0C8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0A8, &qword_26B08BE88);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0B0, &unk_26B08BE90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DCF10, qword_26B08BA48);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0C0, &unk_26B08BEA0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DDC50, &unk_26B087430);
  sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D0, &unk_26B08BEB0);
  sub_26B079AB0();
  swift_getTupleTypeMetadata2();
  sub_26B079BB0();
  swift_getWitnessTable();
  sub_26B079250();
  swift_getWitnessTable();
  sub_26B079990();
  sub_26B078BF0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0D8, &qword_26B08D280);
  sub_26B078BF0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E0, &qword_26B08BEC0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E8, &qword_26B08BEC8);
  swift_getTupleTypeMetadata2();
  sub_26B079BB0();
  sub_26B079810();
  sub_26B078BF0();
  sub_26B078BF0();
  swift_getTupleTypeMetadata3();
  sub_26B079BB0();
  swift_getWitnessTable();
  sub_26B079990();
  sub_26B078BF0();
  swift_getWitnessTable();
  sub_26AF0633C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_26B078BF0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_26AF6863C();
  swift_getOpaqueTypeConformance2();
  sub_26B078C20();
  sub_26AEDE278();
  swift_getWitnessTable();
  sub_26B078C20();
  swift_getTupleTypeMetadata2();
  v4 = sub_26B079BB0();
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for AdaptiveScrollView(255, v4, WitnessTable, v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DC720, &qword_26B089FD0);
  sub_26B078BF0();
  swift_getWitnessTable();
  sub_26AEF9014();
  return swift_getWitnessTable();
}

unint64_t sub_26AF7D798()
{
  v2 = qword_2803DD678;
  if (!qword_2803DD678)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD678);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF7D868()
{
  v2 = qword_2803DD688;
  if (!qword_2803DD688)
  {
    type metadata accessor for AlternateUpdateContentView(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD688);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF7D8E8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DB520, &unk_26B086050);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = sub_26B078AD0();
    (*(*(v1 - 8) + 8))(a1);
  }

  else
  {
  }

  updated = type metadata accessor for AlternateUpdateContentView(0);

  v5 = a1 + *(updated + 28);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DDE20, &unk_26B08D230);
  (*(*(v2 - 8) + 8))(v5);
  return a1;
}

unint64_t sub_26AF7DA3C()
{
  v2 = qword_2803DD698;
  if (!qword_2803DD698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD690, &qword_26B08C950);
    sub_26AF7DAE4();
    sub_26AF7DB6C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF7DAE4()
{
  v2 = qword_2803DD6A0;
  if (!qword_2803DD6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD6A8, &qword_26B08C958);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD6A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF7DB6C()
{
  v2 = qword_2803DD6B0;
  if (!qword_2803DD6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD6B8, &qword_26B08C960);
    sub_26AF7DC04();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD6B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF7DC04()
{
  v2 = qword_2803DD6C0;
  if (!qword_2803DD6C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DEB50, &unk_26B090540);
    sub_26AEB349C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD6C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF7DC9C()
{
  v2 = qword_2803DD6E0;
  if (!qword_2803DD6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD680, &qword_26B08C948);
    sub_26AF7D868();
    sub_26AF070EC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD6E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF7DD44(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD558, &qword_26B08C170);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_26AF7DDAC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD558, &qword_26B08C170);
  (*(*(v1 - 8) + 8))(a1);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD538, &qword_26B08C160) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_26AF7DE70(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD558, &qword_26B08C170);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD548, &qword_26B08C168);
  memcpy((a2 + *(v3 + 36)), (a1 + *(v3 + 36)), 0x29uLL);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD538, &qword_26B08C160) + 36);
  v4 = sub_26B079100();
  (*(*(v4 - 8) + 16))(a2 + v6, a1 + v6);
  return a2;
}

unint64_t sub_26AF7E018()
{
  v2 = qword_2803DD700;
  if (!qword_2803DD700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD6F0, &qword_26B08C968);
    sub_26AEB349C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD700);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF7E0BC()
{
  v2 = qword_2803DD708;
  if (!qword_2803DD708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD6F8, &qword_26B08C970);
    sub_26AF7E154();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD708);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF7E154()
{
  v2 = qword_2803DD710;
  if (!qword_2803DD710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD718, qword_26B08C978);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD710);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF7E238()
{
  v2 = qword_2803DD720;
  if (!qword_2803DD720)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DD720);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_26AF7E2EC()
{
  v2 = qword_2803DD728;
  if (!qword_2803DD728)
  {
    type metadata accessor for SUUISoftwareUpdateVersionType(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD728);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF7E36C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_26AEB4364(a1, a2, a3, a4);
  }

  sub_26AE95D28(a1, a2, a3 & 1);
  return sub_26B078640();
}

uint64_t sub_26AF7E42C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    return sub_26AEB4498(a1, a2, a3, a4);
  }

  sub_26AE95AFC(a1, a2, a3 & 1);
}

uint64_t sub_26AF7E4A4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 254)
  {
    return sub_26AF7E500(result, a2, a3, a4, a5);
  }

  return result;
}

uint64_t sub_26AF7E500(uint64_t result, uint64_t a2, char a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 255)
  {
    return sub_26AEB4364(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_26AF7E560(uint64_t a1)
{
  if (*(a1 + 32) != 254 && *(a1 + 32) != 255)
  {
    sub_26AEB4498(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  }

  return a1;
}

uint64_t sub_26AF7E608(uint64_t a1)
{
  if (*(a1 + 32) != 255)
  {
    sub_26AEB4498(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  }

  return a1;
}

void *sub_26AF7E6B0(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_26AF7E6E8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
    }

    (*(*(v2 - 8) + 8))(a1);
  }

  return a1;
}

void *sub_26AF7E81C(const void *a1, void *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
    }

    (*(*(v2 - 8) + 32))(a2, a1);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

void *sub_26AF7EA04(const void *a1, void *a2)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
    }

    (*(*(v2 - 8) + 16))(a2, a1);
    swift_storeEnumTagMultiPayload();
    (*(v8 + 56))(a2, 0, 1, v7);
  }

  return a2;
}

unint64_t sub_26AF7EBF4(double a1)
{
  v3 = qword_2803DD738;
  if (!qword_2803DD738)
  {
    sub_26B078410();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD738);
    return WitnessTable;
  }

  return v3;
}

uint64_t sub_26AF7EC74(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
  }

  (*(*(v2 - 8) + 32))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AF7ED84(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
  }

  (*(*(v2 - 8) + 16))(a2, a1);
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AF7EE94(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
  }

  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_26AF7EF74()
{
  v2 = qword_2803DD740;
  if (!qword_2803DD740)
  {
    sub_26B078430();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD740);
    return WitnessTable;
  }

  return v2;
}

uint64_t dynamic_cast_existential_0_superclass_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_dynamicCastMetatype())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_26AF7F044()
{
  v2 = qword_2803DD7A8;
  if (!qword_2803DD7A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_2803DD7A8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_26AF7F0A8()
{
  v16 = v0[4];
  v15 = v0[5];
  v1 = v0[6];
  v2 = v0[7];
  v14[0] = v16;
  v14[1] = v15;
  v14[2] = v1;
  v14[3] = v2;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v14);
  v3 = *(*(updated - 1) + 80);
  v11 = (v3 + 64) & ~v3;
  swift_unknownObjectRelease();

  v13 = updated[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B0789F0();
    (*(*(v4 - 8) + 8))(v10 + v11 + v13);
  }

  else
  {
  }

  v9 = v10 + v11 + updated[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B078B00();
    (*(*(v5 - 8) + 8))(v9);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(v10 + v11 + updated[18]), *(v10 + v11 + updated[18] + 8), *(v10 + v11 + updated[18] + 16) & 1);
  v8 = v10 + v11 + updated[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B079C30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF7F45C(uint64_t a1)
{
  v2[6] = v2;
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v2[2] = v10;
  v2[3] = v11;
  v2[4] = v12;
  v2[5] = v13;
  v3 = *(type metadata accessor for SoftwareUpdateContentView(0, (v2 + 2)) - 8);
  v9 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v4 = swift_task_alloc();
  *(v6 + 56) = v4;
  *v4 = *(v6 + 48);
  v4[1] = sub_26AF7F5B0;

  return sub_26AF57FEC(a1, v7, v8, v1 + v9, v10, v11, v12, v13);
}

uint64_t sub_26AF7F5B0()
{
  v3 = *v0;
  *(v3 + 48) = *v0;

  v1 = *(*(v3 + 48) + 8);

  return v1();
}

uint64_t sub_26AF7F720(uint64_t a1, int *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AF7F834;

  return v6(a1);
}

uint64_t sub_26AF7F834()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF7F960@<X0>(uint64_t a1@<X0>, uint64_t *a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  if (!a1)
  {
    sub_26B07A650();
    __break(1u);
  }

  v8 = *a5;
  v9 = a5[1];

  v10 = swift_allocObject();
  v10[2] = a6;
  v10[3] = v8;
  v10[4] = v9;
  result = swift_task_create();
  *a7 = result;
  return result;
}

unint64_t sub_26AF7FD6C()
{
  v2 = qword_2803DD7C0;
  if (!qword_2803DD7C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD7B8, &qword_26B08CA58);
    sub_26AF7FE14();
    sub_26AF6B6FC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD7C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF7FE14()
{
  v2 = qword_2803DD7C8;
  if (!qword_2803DD7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD7D0, &qword_26B08CA60);
    sub_26AF445E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD7C8);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_26AF7FEB8(uint64_t a1)
{
}

unint64_t sub_26AF7FEFC()
{
  v2 = qword_2803DD7D8;
  if (!qword_2803DD7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD430, &qword_26B08C0E0);
    sub_26AF7FD6C();
    sub_26AE95850();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD7D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF7FFA4(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v3);
  return a1;
}

uint64_t sub_26AF80044(uint64_t a1)
{

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
  v1 = sub_26B079100();
  (*(*(v1 - 8) + 8))(a1 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);

  return a1;
}

uint64_t sub_26AF80110(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  v6 = *(a1 + 8);
  sub_26B078640();
  *(a2 + 8) = v6;
  *(a2 + 16) = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v7;
  *(a2 + 32) = *(a1 + 32);
  v8 = *(a1 + 40);

  *(a2 + 40) = v8;
  *(a2 + 48) = *(a1 + 48);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 16))(a2 + v9, a1 + v9);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
  v4 = (a1 + *(v3 + 52));
  v12 = (a2 + *(v3 + 52));
  *v12 = *v4;
  v13 = v4[1];
  sub_26B078640();
  result = a2;
  v12[1] = v13;
  return result;
}

char *sub_26AF80270(char *a1, char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(a2, a1, 0x31uLL);
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
    v10 = &a2[*(v5 + 36)];
    v9 = &a1[*(v5 + 36)];
    v6 = sub_26B079100();
    (*(*(v6 - 8) + 32))(v10, v9);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
    *&a2[*(v7 + 52)] = *&a1[*(v7 + 52)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      memcpy(a2, a1, 0x31uLL);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
      v12 = &a2[*(v2 + 36)];
      v11 = &a1[*(v2 + 36)];
      v3 = sub_26B079100();
      (*(*(v3 - 8) + 32))(v12, v11);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
      *&a2[*(v4 + 52)] = *&a1[*(v4 + 52)];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v13 - 8) + 64));
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26AF804C0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v11 = *(a1 + 8);
    sub_26B078640();
    *(a2 + 8) = v11;
    *(a2 + 16) = *(a1 + 16);
    v12 = *(a1 + 24);
    sub_26B078640();
    *(a2 + 24) = v12;
    *(a2 + 32) = *(a1 + 32);
    v13 = *(a1 + 40);

    *(a2 + 40) = v13;
    *(a2 + 48) = *(a1 + 48);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
    v15 = a2 + *(v6 + 36);
    v14 = a1 + *(v6 + 36);
    v7 = sub_26B079100();
    (*(*(v7 - 8) + 16))(v15, v14);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
    v16 = (a2 + *(v8 + 52));
    v9 = (a1 + *(v8 + 52));
    *v16 = *v9;
    v17 = v9[1];
    sub_26B078640();
    v16[1] = v17;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      v18 = *(a1 + 8);
      sub_26B078640();
      *(a2 + 8) = v18;
      *(a2 + 16) = *(a1 + 16);
      v19 = *(a1 + 24);
      sub_26B078640();
      *(a2 + 24) = v19;
      *(a2 + 32) = *(a1 + 32);
      v20 = *(a1 + 40);

      *(a2 + 40) = v20;
      *(a2 + 48) = *(a1 + 48);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
      v22 = a2 + *(v2 + 36);
      v21 = a1 + *(v2 + 36);
      v3 = sub_26B079100();
      (*(*(v3 - 8) + 16))(v22, v21);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
      v23 = (a2 + *(v4 + 52));
      v5 = (a1 + *(v4 + 52));
      *v23 = *v5;
      v24 = v5[1];
      sub_26B078640();
      v23[1] = v24;
    }

    else
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
      *(a2 + 24) = *(a1 + 24);
      *(a2 + 32) = *(a1 + 32);
      v25 = *(a1 + 40);
      v26 = *(a1 + 48);
      v27 = *(a1 + 56);
      sub_26AE95D28(v25, v26, v27 & 1);
      *(a2 + 40) = v25;
      *(a2 + 48) = v26;
      *(a2 + 56) = v27 & 1;
      v28 = *(a1 + 64);
      sub_26B078640();
      *(a2 + 64) = v28;
      v29 = *(a1 + 72);

      *(a2 + 72) = v29;
      *(a2 + 80) = *(a1 + 80);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26AF808BC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 8))(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
      v1 = sub_26B079100();
      (*(*(v1 - 8) + 8))(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
    }

    else
    {
      sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);
    }
  }

  return a1;
}

char *sub_26AF80AC8(char *a1, char *a2)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(a2, a1, 0x31uLL);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
    v7 = &a2[*(v2 + 36)];
    v6 = &a1[*(v2 + 36)];
    v3 = sub_26B079100();
    (*(*(v3 - 8) + 32))(v7, v6);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
    *&a2[*(v4 + 52)] = *&a1[*(v4 + 52)];
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    memcpy(a2, a1, *(*(v10 - 8) + 64));
  }

  return a2;
}

uint64_t sub_26AF80C10(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v7 = *(a1 + 8);
    sub_26B078640();
    *(a2 + 8) = v7;
    *(a2 + 16) = *(a1 + 16);
    v8 = *(a1 + 24);
    sub_26B078640();
    *(a2 + 24) = v8;
    *(a2 + 32) = *(a1 + 32);
    v9 = *(a1 + 40);

    *(a2 + 40) = v9;
    *(a2 + 48) = *(a1 + 48);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
    v11 = a2 + *(v2 + 36);
    v10 = a1 + *(v2 + 36);
    v3 = sub_26B079100();
    (*(*(v3 - 8) + 16))(v11, v10);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
    v12 = (a2 + *(v4 + 52));
    v5 = (a1 + *(v4 + 52));
    *v12 = *v5;
    v13 = v5[1];
    sub_26B078640();
    v12[1] = v13;
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
    *(a2 + 24) = *(a1 + 24);
    *(a2 + 32) = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v16 = *(a1 + 56);
    sub_26AE95D28(v14, v15, v16 & 1);
    *(a2 + 40) = v14;
    *(a2 + 48) = v15;
    *(a2 + 56) = v16 & 1;
    v17 = *(a1 + 64);
    sub_26B078640();
    *(a2 + 64) = v17;
    v18 = *(a1 + 72);

    *(a2 + 72) = v18;
    *(a2 + 80) = *(a1 + 80);
  }

  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AF80E78(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
    v1 = sub_26B079100();
    (*(*(v1 - 8) + 8))(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
  }

  else
  {
    sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);
  }

  return a1;
}

unint64_t sub_26AF80FA8()
{
  v2 = qword_2803DD7E8;
  if (!qword_2803DD7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD7E0, &qword_26B08CA68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD7E8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF81030(uint64_t a1)
{
  sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);

  return a1;
}

uint64_t sub_26AF81084(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  sub_26AE95D28(v3, v4, v5 & 1);
  *(a2 + 40) = v3;
  *(a2 + 48) = v4;
  *(a2 + 56) = v5 & 1;
  v6 = *(a1 + 64);
  sub_26B078640();
  *(a2 + 64) = v6;
  v8 = *(a1 + 72);

  result = a2;
  *(a2 + 72) = v8;
  *(a2 + 80) = *(a1 + 80);
  return result;
}

unint64_t sub_26AF81154()
{
  v2 = qword_2803DD7F8;
  if (!qword_2803DD7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD7F0, &qword_26B08CA70);
    sub_26AF811F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD7F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF811F8()
{
  v2 = qword_2803DD800;
  if (!qword_2803DD800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD808, qword_26B08CA78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD800);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF81280(uint64_t a1)
{
  sub_26AE95AFC(*a1, *(a1 + 8), *(a1 + 16) & 1);

  return a1;
}

uint64_t sub_26AF812D4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_26AE95D28(*a1, v4, v5 & 1);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  v6 = *(a1 + 24);
  sub_26B078640();
  *(a2 + 24) = v6;
  v8 = *(a1 + 32);

  result = a2;
  *(a2 + 32) = v8;
  *(a2 + 40) = *(a1 + 40);
  return result;
}

uint64_t sub_26AF81384(uint64_t a1)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
  if (!(*(*(v10 - 8) + 48))(a1, 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
      v6 = a1 + *(v7 + 52);
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
      (*(*(v1 - 8) + 8))(v6);
      v8 = a1 + *(v7 + 56);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
      if (!(*(*(v2 - 8) + 48))(v8, 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
        }

        else
        {
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
        }

        (*(*(v3 - 8) + 8))(v8);
      }

      v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0) + 36));
      if (*v5)
      {
      }

      if (v5[2])
      {
      }
    }

    else
    {

      if (*(a1 + 40))
      {
      }

      if (*(a1 + 64))
      {
      }
    }
  }

  return a1;
}

_BYTE *sub_26AF816B4(_BYTE *a1, _BYTE *a2)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(a1, 1))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3B0, &qword_26B08C090);
    memcpy(a2, a1, *(*(v11 - 8) + 64));
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      a2[8] = a1[8];
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
      v14 = &a2[*(v15 + 52)];
      v13 = &a1[*(v15 + 52)];
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
      (*(*(v2 - 8) + 32))(v14, v13);
      __dst = &a2[*(v15 + 56)];
      __src = &a1[*(v15 + 56)];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(__src, 1))
      {
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
        memcpy(__dst, __src, *(*(v4 - 8) + 64));
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
        }

        else
        {
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
        }

        (*(*(v3 - 8) + 32))(__dst, __src);
        swift_storeEnumTagMultiPayload();
        (*(v19 + 56))(__dst, 0, 1, v18);
      }

      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0);
      v6 = &a2[*(v5 + 36)];
      v7 = &a1[*(v5 + 36)];
      *v6 = *v7;
      v6[1] = v7[1];
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(a2, a1, *(*(v20 - 8) + 64));
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3D0, &qword_26B08C0A0);
    *&a2[*(v8 + 36)] = *&a1[*(v8 + 36)];
    v9 = &a2[*(v23 + 36)];
    v10 = &a1[*(v23 + 36)];
    *v9 = *v10;
    v9[8] = v10[8];
    (*(v24 + 56))();
  }

  return a2;
}

void *sub_26AF81B30(uint64_t *a1, void *a2)
{
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
  v39 = *(v38 - 8);
  if ((*(v39 + 48))(a1, 1))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3B0, &qword_26B08C090);
    memcpy(a2, a1, *(*(v7 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v18 = *a1;
      v19 = *(a1 + 8);

      *a2 = v18;
      *(a2 + 8) = v19 & 1;
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
      v21 = a2 + *(v22 + 52);
      v20 = a1 + *(v22 + 52);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
      (*(*(v2 - 8) + 16))(v21, v20);
      __dst = a2 + *(v22 + 56);
      __src = a1 + *(v22 + 56);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
      v26 = *(v25 - 8);
      if ((*(v26 + 48))(__src, 1))
      {
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
        memcpy(__dst, __src, *(*(v4 - 8) + 64));
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
        }

        else
        {
          v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
        }

        (*(*(v3 - 8) + 16))(__dst, __src);
        swift_storeEnumTagMultiPayload();
        (*(v26 + 56))(__dst, 0, 1, v25);
      }

      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0);
      v16 = (a2 + *(v5 + 36));
      v17 = (a1 + *(v5 + 36));
      if (*v17)
      {
        v14 = *v17;
        v15 = v17[1];

        *v16 = v14;
        v16[1] = v15;
      }

      else
      {
        *v16 = *v17;
      }

      if (v17[2])
      {
        v12 = v17[2];
        v13 = v17[3];

        v16[2] = v12;
        v16[3] = v13;
      }

      else
      {
        *(v16 + 1) = *(v17 + 1);
      }

      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v31 = *a1;
      v32 = *(a1 + 8);

      *a2 = v31;
      *(a2 + 8) = v32 & 1;
      v33 = a1[2];
      v34 = *(a1 + 24);

      a2[2] = v33;
      *(a2 + 24) = v34 & 1;
      v35 = a1[4];

      a2[4] = v35;
      if (a1[5])
      {
        v29 = a1[5];
        v30 = a1[6];

        a2[5] = v29;
        a2[6] = v30;
      }

      else
      {
        *(a2 + 5) = *(a1 + 5);
      }

      if (a1[8])
      {
        v27 = a1[7];

        a2[7] = v27;
        v28 = a1[8];

        a2[8] = v28;
      }

      else
      {
        *(a2 + 7) = *(a1 + 7);
      }

      *(a2 + 72) = *(a1 + 72);
      swift_storeEnumTagMultiPayload();
    }

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3D0, &qword_26B08C0A0);
    *(a2 + *(v6 + 36)) = *(a1 + *(v6 + 36));
    v11 = a2 + *(v38 + 36);
    v10 = a1 + *(v38 + 36);
    v9 = *v10;

    *v11 = v9;
    v11[8] = v10[8];
    (*(v39 + 56))(a2, 0, 1, v38);
  }

  return a2;
}

uint64_t sub_26AF821CC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD470, &qword_26B08C120);
  if (!swift_getEnumCaseMultiPayload())
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
    if (!(*(*(v9 - 8) + 48))(a1, 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v6 = a1 + *(v7 + 52);
        v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v1 - 8) + 8))(v6);
        v8 = a1 + *(v7 + 56);
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        if (!(*(*(v2 - 8) + 48))(v8, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
          }

          else
          {
            v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
          }

          (*(*(v3 - 8) + 8))(v8);
        }

        v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0) + 36));
        if (*v5)
        {
        }

        if (v5[2])
        {
        }
      }

      else
      {

        if (*(a1 + 40))
        {
        }

        if (*(a1 + 64))
        {
        }
      }
    }
  }

  return a1;
}

_BYTE *sub_26AF82528(_BYTE *a1, _BYTE *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD408, &qword_26B08C0B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD470, &qword_26B08C120);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v33 - 8) + 64));
      goto LABEL_36;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(a1, 1))
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3B0, &qword_26B08C090);
      memcpy(a2, a1, *(*(v21 - 8) + 64));
    }

    else
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *a2 = *a1;
        a2[8] = a1[8];
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v24 = &a2[*(v25 + 52)];
        v23 = &a1[*(v25 + 52)];
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v12 - 8) + 32))(v24, v23);
        v26 = &a2[*(v25 + 56)];
        __src = &a1[*(v25 + 56)];
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        v29 = *(v28 - 8);
        if ((*(v29 + 48))(__src, 1))
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
          memcpy(v26, __src, *(*(v14 - 8) + 64));
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
          }

          else
          {
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
          }

          (*(*(v13 - 8) + 32))(v26, __src);
          swift_storeEnumTagMultiPayload();
          (*(v29 + 56))(v26, 0, 1, v28);
        }

        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0);
        v16 = &a2[*(v15 + 36)];
        v17 = &a1[*(v15 + 36)];
        *v16 = *v17;
        v16[1] = v17[1];
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a2, a1, *(*(v30 - 8) + 64));
      }

      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3D0, &qword_26B08C0A0);
      *&a2[*(v18 + 36)] = *&a1[*(v18 + 36)];
      v19 = &a2[*(v31 + 36)];
      v20 = &a1[*(v31 + 36)];
      *v19 = *v20;
      v19[8] = v20[8];
      (*(v32 + 56))();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD410, &qword_26B08C0C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD440, &unk_26B08C0F0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        *a2 = *a1;
        a2[8] = a1[8];
        v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v35 = &a2[*(v36 + 52)];
        v34 = &a1[*(v36 + 52)];
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v9 - 8) + 32))(v35, v34);
        __dst = &a2[*(v36 + 56)];
        v38 = &a1[*(v36 + 56)];
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        v40 = *(v39 - 8);
        if ((*(v40 + 48))(v38, 1))
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
          memcpy(__dst, v38, *(*(v11 - 8) + 64));
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
          }

          else
          {
            v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
          }

          (*(*(v10 - 8) + 32))(__dst, v38);
          swift_storeEnumTagMultiPayload();
          (*(v40 + 56))(__dst, 0, 1, v39);
        }

        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a2, a1, *(*(v41 - 8) + 64));
      }
    }

    else
    {
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD418, &qword_26B08C0C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          memcpy(a2, a1, 0x31uLL);
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
          v43 = &a2[*(v5 + 36)];
          v42 = &a1[*(v5 + 36)];
          v6 = sub_26B079100();
          (*(*(v6 - 8) + 32))(v43, v42);
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
          *&a2[*(v7 + 52)] = *&a1[*(v7 + 52)];
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            memcpy(a2, a1, 0x31uLL);
            v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
            v45 = &a2[*(v2 + 36)];
            v44 = &a1[*(v2 + 36)];
            v3 = sub_26B079100();
            (*(*(v3 - 8) + 32))(v45, v44);
            v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
            *&a2[*(v4 + 52)] = *&a1[*(v4 + 52)];
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            memcpy(a2, a1, *(*(v46 - 8) + 64));
          }

          swift_storeEnumTagMultiPayload();
        }

        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
        *&a2[*(v8 + 52)] = *&a1[*(v8 + 52)];
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a2, a1, *(*(v47 - 8) + 64));
      }
    }
  }

  swift_storeEnumTagMultiPayload();
LABEL_36:
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t *sub_26AF83078(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD408, &qword_26B08C0B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD470, &qword_26B08C120);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a2, a1, *(*(v51 - 8) + 64));
      goto LABEL_48;
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(a1, 1))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3B0, &qword_26B08C090);
      memcpy(a2, a1, *(*(v20 - 8) + 64));
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = *a1;
        v32 = *(a1 + 8);

        *a2 = v31;
        *(a2 + 8) = v32 & 1;
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v34 = a2 + *(v35 + 52);
        v33 = a1 + *(v35 + 52);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v15 - 8) + 16))(v34, v33);
        v36 = a2 + *(v35 + 56);
        v37 = a1 + *(v35 + 56);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        v39 = *(v38 - 8);
        if ((*(v39 + 48))(v37, 1))
        {
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
          memcpy(v36, v37, *(*(v17 - 8) + 64));
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
          }

          else
          {
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
          }

          (*(*(v16 - 8) + 16))(v36, v37);
          swift_storeEnumTagMultiPayload();
          (*(v39 + 56))(v36, 0, 1, v38);
        }

        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0);
        v29 = (a2 + *(v18 + 36));
        v30 = (a1 + *(v18 + 36));
        if (*v30)
        {
          v27 = *v30;
          v28 = v30[1];

          *v29 = v27;
          v29[1] = v28;
        }

        else
        {
          *v29 = *v30;
        }

        if (v30[2])
        {
          v25 = v30[2];
          v26 = v30[3];

          v29[2] = v25;
          v29[3] = v26;
        }

        else
        {
          *(v29 + 1) = *(v30 + 1);
        }

        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v44 = *a1;
        v45 = *(a1 + 8);

        *a2 = v44;
        *(a2 + 8) = v45 & 1;
        v46 = a1[2];
        v47 = *(a1 + 24);

        a2[2] = v46;
        *(a2 + 24) = v47 & 1;
        v48 = a1[4];

        a2[4] = v48;
        if (a1[5])
        {
          v42 = a1[5];
          v43 = a1[6];

          a2[5] = v42;
          a2[6] = v43;
        }

        else
        {
          *(a2 + 5) = *(a1 + 5);
        }

        if (a1[8])
        {
          v40 = a1[7];

          a2[7] = v40;
          v41 = a1[8];

          a2[8] = v41;
        }

        else
        {
          *(a2 + 7) = *(a1 + 7);
        }

        *(a2 + 72) = *(a1 + 72);
        swift_storeEnumTagMultiPayload();
      }

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3D0, &qword_26B08C0A0);
      *(a2 + *(v19 + 36)) = *(a1 + *(v19 + 36));
      v24 = a2 + *(v49 + 36);
      v23 = a1 + *(v49 + 36);
      v22 = *v23;

      *v24 = v22;
      v24[8] = v23[8];
      (*(v50 + 56))(a2, 0, 1, v49);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD410, &qword_26B08C0C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD440, &unk_26B08C0F0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v52 = *a1;
        v53 = *(a1 + 8);

        *a2 = v52;
        *(a2 + 8) = v53 & 1;
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v55 = a2 + *(v56 + 52);
        v54 = a1 + *(v56 + 52);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v12 - 8) + 16))(v55, v54);
        __dst = a2 + *(v56 + 56);
        __src = a1 + *(v56 + 56);
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        v60 = *(v59 - 8);
        if ((*(v60 + 48))(__src, 1))
        {
          v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
          memcpy(__dst, __src, *(*(v14 - 8) + 64));
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
          }

          else
          {
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
          }

          (*(*(v13 - 8) + 16))(__dst, __src);
          swift_storeEnumTagMultiPayload();
          (*(v60 + 56))(__dst, 0, 1, v59);
        }

        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v61 = *a1;
        v62 = a1[1];
        v63 = a1[2];
        v64 = a1[3];
        v65 = *(a1 + 32);
        v66 = *(a1 + 33);
        sub_26AF75B54(*a1, v62, v63, v64, v65, v66 & 1);
        *a2 = v61;
        a2[1] = v62;
        a2[2] = v63;
        a2[3] = v64;
        *(a2 + 32) = v65;
        *(a2 + 33) = v66 & 1;
        swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD418, &qword_26B08C0C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          *a2 = *a1;
          v69 = a1[1];
          sub_26B078640();
          a2[1] = v69;
          a2[2] = a1[2];
          v70 = a1[3];
          sub_26B078640();
          a2[3] = v70;
          a2[4] = a1[4];
          v71 = a1[5];

          a2[5] = v71;
          *(a2 + 48) = *(a1 + 48);
          v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
          v73 = a2 + *(v6 + 36);
          v72 = a1 + *(v6 + 36);
          v7 = sub_26B079100();
          (*(*(v7 - 8) + 16))(v73, v72);
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
          v74 = (a2 + *(v8 + 52));
          v9 = (a1 + *(v8 + 52));
          *v74 = *v9;
          v75 = v9[1];
          sub_26B078640();
          v74[1] = v75;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            *a2 = *a1;
            v76 = a1[1];
            sub_26B078640();
            a2[1] = v76;
            a2[2] = a1[2];
            v77 = a1[3];
            sub_26B078640();
            a2[3] = v77;
            a2[4] = a1[4];
            v78 = a1[5];

            a2[5] = v78;
            *(a2 + 48) = *(a1 + 48);
            v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
            v80 = a2 + *(v2 + 36);
            v79 = a1 + *(v2 + 36);
            v3 = sub_26B079100();
            (*(*(v3 - 8) + 16))(v80, v79);
            v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
            v81 = (a2 + *(v4 + 52));
            v5 = (a1 + *(v4 + 52));
            *v81 = *v5;
            v82 = v5[1];
            sub_26B078640();
            v81[1] = v82;
          }

          else
          {
            *a2 = *a1;
            *(a2 + 16) = *(a1 + 16);
            a2[3] = a1[3];
            *(a2 + 32) = *(a1 + 32);
            v83 = a1[5];
            v84 = a1[6];
            v85 = *(a1 + 56);
            sub_26AE95D28(v83, v84, v85 & 1);
            a2[5] = v83;
            a2[6] = v84;
            *(a2 + 56) = v85 & 1;
            v86 = a1[8];
            sub_26B078640();
            a2[8] = v86;
            v87 = a1[9];

            a2[9] = v87;
            *(a2 + 80) = *(a1 + 80);
          }

          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
        }

        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
        v67 = (a2 + *(v10 + 52));
        v11 = (a1 + *(v10 + 52));
        *v67 = *v11;
        v68 = v11[1];
        sub_26B078640();
        v67[1] = v68;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(a2, a1, *(*(v88 - 8) + 64));
      }
    }
  }

  swift_storeEnumTagMultiPayload();
LABEL_48:
  swift_storeEnumTagMultiPayload();
  return a2;
}

uint64_t sub_26AF84030(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD408, &qword_26B08C0B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD470, &qword_26B08C120);
    if (!swift_getEnumCaseMultiPayload())
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
      if (!(*(*(v15 - 8) + 48))(a1, 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
          v12 = a1 + *(v13 + 52);
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
          (*(*(v7 - 8) + 8))(v12);
          v14 = a1 + *(v13 + 56);
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
          if (!(*(*(v8 - 8) + 48))(v14, 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            }

            else
            {
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            }

            (*(*(v9 - 8) + 8))(v14);
          }

          v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0) + 36));
          if (*v11)
          {
          }

          if (v11[2])
          {
          }
        }

        else
        {

          if (*(a1 + 40))
          {
          }

          if (*(a1 + 64))
          {
          }
        }
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD410, &qword_26B08C0C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD440, &unk_26B08C0F0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v16 = a1 + *(v17 + 52);
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v3 - 8) + 8))(v16);
        v18 = a1 + *(v17 + 56);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        if (!(*(*(v4 - 8) + 48))(v18, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            (*(*(v6 - 8) + 8))(v18);
          }

          else
          {
            v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            (*(*(v5 - 8) + 8))(v18);
          }
        }
      }

      else
      {
        sub_26AF7266C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 33) & 1);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD418, &qword_26B08C0C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
          v2 = sub_26B079100();
          (*(*(v2 - 8) + 8))(v19);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v20 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
            v1 = sub_26B079100();
            (*(*(v1 - 8) + 8))(v20);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
          }

          else
          {
            sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
      }
    }
  }

  return a1;
}

uint64_t sub_26AF84828(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
    v6 = a1 + *(v7 + 52);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
    (*(*(v1 - 8) + 8))(v6);
    v8 = a1 + *(v7 + 56);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
    if (!(*(*(v2 - 8) + 48))(v8, 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
      }

      else
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
      }

      (*(*(v3 - 8) + 8))(v8);
    }

    v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0) + 36));
    if (*v5)
    {
    }

    if (v5[2])
    {
    }
  }

  else
  {

    if (*(a1 + 40))
    {
    }

    if (*(a1 + 64))
    {
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);

  return a1;
}

uint64_t sub_26AF84B10(uint64_t *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *a1;
    v19 = *(a1 + 8);

    *a2 = v18;
    *(a2 + 8) = v19 & 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
    v21 = a2 + *(v22 + 52);
    v20 = a1 + *(v22 + 52);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
    (*(*(v2 - 8) + 16))(v21, v20);
    __dst = (a2 + *(v22 + 56));
    __src = a1 + *(v22 + 56);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(__src, 1))
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
      memcpy(__dst, __src, *(*(v4 - 8) + 64));
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
      }

      else
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
      }

      (*(*(v3 - 8) + 16))(__dst, __src);
      swift_storeEnumTagMultiPayload();
      (*(v26 + 56))(__dst, 0, 1, v25);
    }

    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0);
    v16 = (a2 + *(v5 + 36));
    v17 = (a1 + *(v5 + 36));
    if (*v17)
    {
      v14 = *v17;
      v15 = v17[1];

      *v16 = v14;
      v16[1] = v15;
    }

    else
    {
      *v16 = *v17;
    }

    if (v17[2])
    {
      v12 = v17[2];
      v13 = v17[3];

      v16[2] = v12;
      v16[3] = v13;
    }

    else
    {
      *(v16 + 1) = *(v17 + 1);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v31 = *a1;
    v32 = *(a1 + 8);

    *a2 = v31;
    *(a2 + 8) = v32 & 1;
    v33 = a1[2];
    v34 = *(a1 + 24);

    *(a2 + 16) = v33;
    *(a2 + 24) = v34 & 1;
    v35 = a1[4];

    *(a2 + 32) = v35;
    if (a1[5])
    {
      v29 = a1[5];
      v30 = a1[6];

      *(a2 + 40) = v29;
      *(a2 + 48) = v30;
    }

    else
    {
      *(a2 + 40) = *(a1 + 5);
    }

    if (a1[8])
    {
      v27 = a1[7];

      *(a2 + 56) = v27;
      v28 = a1[8];

      *(a2 + 64) = v28;
    }

    else
    {
      *(a2 + 56) = *(a1 + 7);
    }

    *(a2 + 72) = *(a1 + 72);
    swift_storeEnumTagMultiPayload();
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3D0, &qword_26B08C0A0);
  *(a2 + *(v6 + 36)) = *(a1 + *(v6 + 36));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
  v11 = a2 + *(v7 + 36);
  v10 = a1 + *(v7 + 36);
  v9 = *v10;

  result = a2;
  *v11 = v9;
  *(v11 + 8) = v10[8];
  return result;
}

uint64_t sub_26AF850EC(uint64_t a1)
{

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
  v5 = *(v6 + 52);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
  (*(*(v1 - 8) + 8))(a1 + v5);
  v7 = *(v6 + 56);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
  if (!(*(*(v2 - 8) + 48))(a1 + v7, 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
    }

    else
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
    }

    (*(*(v3 - 8) + 8))(a1 + v7);
  }

  return a1;
}

uint64_t sub_26AF852C0(uint64_t *a1, uint64_t a2)
{
  v6 = *a1;
  v7 = *(a1 + 8);

  *a2 = v6;
  *(a2 + 8) = v7 & 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
  v9 = *(v10 + 52);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
  (*(*(v2 - 8) + 16))(a2 + v9, a1 + v9);
  v11 = *(v10 + 56);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(a1 + v11, 1))
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD4B0, &qword_26B08C130);
    memcpy((a2 + v11), a1 + v11, *(*(v4 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
    }

    else
    {
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
    }

    (*(*(v3 - 8) + 16))();
    swift_storeEnumTagMultiPayload();
    (*(v14 + 56))(a2 + v11, 0, 1, v13);
  }

  return a2;
}

uint64_t sub_26AF855C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD440, &unk_26B08C0F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
    v5 = a1 + *(v6 + 52);
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
    (*(*(v1 - 8) + 8))(v5);
    v7 = a1 + *(v6 + 56);
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
    if (!(*(*(v2 - 8) + 48))(v7, 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
      }

      else
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
      }

      (*(*(v3 - 8) + 8))(v7);
    }
  }

  else
  {
    sub_26AF7266C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 33) & 1);
  }

  return a1;
}

uint64_t sub_26AF857DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD410, &qword_26B08C0C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD440, &unk_26B08C0F0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
      v7 = a1 + *(v8 + 52);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
      (*(*(v3 - 8) + 8))(v7);
      v9 = a1 + *(v8 + 56);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
      if (!(*(*(v4 - 8) + 48))(v9, 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
        }

        else
        {
          v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
        }

        (*(*(v5 - 8) + 8))(v9);
      }
    }

    else
    {
      sub_26AF7266C(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 33) & 1);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD418, &qword_26B08C0C8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
        v2 = sub_26B079100();
        (*(*(v2 - 8) + 8))(v10);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
          v1 = sub_26B079100();
          (*(*(v1 - 8) + 8))(v11);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
        }

        else
        {
          sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
    }
  }

  return a1;
}

uint64_t sub_26AF85CB0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 8))(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
      v1 = sub_26B079100();
      (*(*(v1 - 8) + 8))(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
    }

    else
    {
      sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);

  return a1;
}

uint64_t sub_26AF85EE4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a2 = *a1;
    v15 = *(a1 + 8);
    sub_26B078640();
    *(a2 + 8) = v15;
    *(a2 + 16) = *(a1 + 16);
    v16 = *(a1 + 24);
    sub_26B078640();
    *(a2 + 24) = v16;
    *(a2 + 32) = *(a1 + 32);
    v17 = *(a1 + 40);

    *(a2 + 40) = v17;
    *(a2 + 48) = *(a1 + 48);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
    v19 = a2 + *(v6 + 36);
    v18 = a1 + *(v6 + 36);
    v7 = sub_26B079100();
    (*(*(v7 - 8) + 16))(v19, v18);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
    v20 = (a2 + *(v8 + 52));
    v9 = (a1 + *(v8 + 52));
    *v20 = *v9;
    v21 = v9[1];
    sub_26B078640();
    v20[1] = v21;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      *a2 = *a1;
      v22 = *(a1 + 8);
      sub_26B078640();
      *(a2 + 8) = v22;
      *(a2 + 16) = *(a1 + 16);
      v23 = *(a1 + 24);
      sub_26B078640();
      *(a2 + 24) = v23;
      *(a2 + 32) = *(a1 + 32);
      v24 = *(a1 + 40);

      *(a2 + 40) = v24;
      *(a2 + 48) = *(a1 + 48);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0);
      v26 = a2 + *(v2 + 36);
      v25 = a1 + *(v2 + 36);
      v3 = sub_26B079100();
      (*(*(v3 - 8) + 16))(v26, v25);
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
      v27 = (a2 + *(v4 + 52));
      v5 = (a1 + *(v4 + 52));
      *v27 = *v5;
      v28 = v5[1];
      sub_26B078640();
      v27[1] = v28;
    }

    else
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
      *(a2 + 24) = *(a1 + 24);
      *(a2 + 32) = *(a1 + 32);
      v29 = *(a1 + 40);
      v30 = *(a1 + 48);
      v31 = *(a1 + 56);
      sub_26AE95D28(v29, v30, v31 & 1);
      *(a2 + 40) = v29;
      *(a2 + 48) = v30;
      *(a2 + 56) = v31 & 1;
      v32 = *(a1 + 64);
      sub_26B078640();
      *(a2 + 64) = v32;
      v33 = *(a1 + 72);

      *(a2 + 72) = v33;
      *(a2 + 80) = *(a1 + 80);
    }

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
  v13 = (a2 + *(v10 + 52));
  v11 = (a1 + *(v10 + 52));
  *v13 = *v11;
  v14 = v11[1];
  sub_26B078640();
  result = a2;
  v13[1] = v14;
  return result;
}

uint64_t sub_26AF86330(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD418, &qword_26B08C0C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v4 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
      v2 = sub_26B079100();
      (*(*(v2 - 8) + 8))(v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
        v1 = sub_26B079100();
        (*(*(v1 - 8) + 8))(v5);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
      }

      else
      {
        sub_26AE95AFC(*(a1 + 40), *(a1 + 48), *(a1 + 56) & 1);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
  }

  return a1;
}

uint64_t sub_26AF86594(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
      (*(*(v4 - 8) + 8))(a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

      v7 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
      v5 = sub_26B079100();
      (*(*(v5 - 8) + 8))(v7);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
      if (!(*(*(v9 - 8) + 48))(a1, 1))
      {
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v2 - 8) + 8))(a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

        v8 = a1 + *(v9 + 36);
        v3 = sub_26B079100();
        (*(*(v3 - 8) + 8))(v8);
      }
    }
  }

  return a1;
}

char *sub_26AF86838(char *a1, char *a2)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(a1, 1))
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D8, &qword_26B08BF90);
    memcpy(a2, a1, *(*(v16 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
      (*(*(v9 - 8) + 32))(a2, a1);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
      *&a2[*(v10 + 36)] = *&a1[*(v10 + 36)];
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
      v12 = &a2[*(v11 + 36)];
      v13 = &a1[*(v11 + 36)];
      *v12 = *v13;
      *(v12 + 2) = *(v13 + 2);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
      v19 = &a2[*(v14 + 36)];
      v18 = &a1[*(v14 + 36)];
      v15 = sub_26B079100();
      (*(*(v15 - 8) + 32))(v19, v18);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(a1, 1))
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
        memcpy(a2, a1, *(*(v8 - 8) + 64));
      }

      else
      {
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v2 - 8) + 32))(a2, a1);
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
        *&a2[*(v3 + 36)] = *&a1[*(v3 + 36)];
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
        v5 = &a2[*(v4 + 36)];
        v6 = &a1[*(v4 + 36)];
        *v5 = *v6;
        *(v5 + 2) = *(v6 + 2);
        v21 = &a2[*(v22 + 36)];
        v20 = &a1[*(v22 + 36)];
        v7 = sub_26B079100();
        (*(*(v7 - 8) + 32))(v21, v20);
        (*(v23 + 56))(a2, 0, 1, v22);
      }

      swift_storeEnumTagMultiPayload();
    }

    (*(v27 + 56))(a2, 0, 1, v26);
  }

  return a2;
}

char *sub_26AF86CA0(char *a1, char *a2)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
  v33 = *(v32 - 8);
  if ((*(v33 + 48))(a1, 1))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D8, &qword_26B08BF90);
    memcpy(a2, a1, *(*(v12 - 8) + 64));
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
      (*(*(v7 - 8) + 16))(a2, a1);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
      *&a2[*(v8 + 36)] = *&a1[*(v8 + 36)];
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
      v17 = &a2[*(v9 + 36)];
      v15 = &a1[*(v9 + 36)];
      v14 = *v15;

      *v17 = v14;
      v16 = *(v15 + 1);
      v18 = *(v15 + 2);

      *(v17 + 1) = v16;
      *(v17 + 2) = v18;
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
      v20 = &a2[*(v10 + 36)];
      v19 = &a1[*(v10 + 36)];
      v11 = sub_26B079100();
      (*(*(v11 - 8) + 16))(v20, v19);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(a1, 1))
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
        memcpy(a2, a1, *(*(v6 - 8) + 64));
      }

      else
      {
        v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v2 - 8) + 16))(a2, a1);
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
        *&a2[*(v3 + 36)] = *&a1[*(v3 + 36)];
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
        v24 = &a2[*(v4 + 36)];
        v22 = &a1[*(v4 + 36)];
        v21 = *v22;

        *v24 = v21;
        v23 = *(v22 + 1);
        v25 = *(v22 + 2);

        *(v24 + 1) = v23;
        *(v24 + 2) = v25;
        v27 = &a2[*(v28 + 36)];
        v26 = &a1[*(v28 + 36)];
        v5 = sub_26B079100();
        (*(*(v5 - 8) + 16))(v27, v26);
        (*(v29 + 56))(a2, 0, 1, v28);
      }

      swift_storeEnumTagMultiPayload();
    }

    (*(v33 + 56))(a2, 0, 1, v32);
  }

  return a2;
}

char *sub_26AF87188(char *a1, char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(a1, 1))
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D8, &qword_26B08BF90);
      memcpy(a2, a1, *(*(v23 - 8) + 64));
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v16 - 8) + 32))(a2, a1);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
        *&a2[*(v17 + 36)] = *&a1[*(v17 + 36)];
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
        v19 = &a2[*(v18 + 36)];
        v20 = &a1[*(v18 + 36)];
        *v19 = *v20;
        *(v19 + 2) = *(v20 + 2);
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
        v26 = &a2[*(v21 + 36)];
        v25 = &a1[*(v21 + 36)];
        v22 = sub_26B079100();
        (*(*(v22 - 8) + 32))(v26, v25);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
        v30 = *(v29 - 8);
        if ((*(v30 + 48))(a1, 1))
        {
          v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
          memcpy(a2, a1, *(*(v15 - 8) + 64));
        }

        else
        {
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
          (*(*(v9 - 8) + 32))(a2, a1);
          v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
          *&a2[*(v10 + 36)] = *&a1[*(v10 + 36)];
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
          v12 = &a2[*(v11 + 36)];
          v13 = &a1[*(v11 + 36)];
          *v12 = *v13;
          *(v12 + 2) = *(v13 + 2);
          v28 = &a2[*(v29 + 36)];
          v27 = &a1[*(v29 + 36)];
          v14 = sub_26B079100();
          (*(*(v14 - 8) + 32))(v28, v27);
          (*(v30 + 56))(a2, 0, 1, v29);
        }

        swift_storeEnumTagMultiPayload();
      }

      (*(v32 + 56))(a2, 0, 1, v31);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
    *&a2[*(v3 + 36)] = *&a1[*(v3 + 36)];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
    v5 = &a2[*(v4 + 36)];
    v6 = &a1[*(v4 + 36)];
    *v5 = *v6;
    *(v5 + 2) = *(v6 + 2);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
    v34 = &a2[*(v7 + 36)];
    v33 = &a1[*(v7 + 36)];
    v8 = sub_26B079100();
    (*(*(v8 - 8) + 32))(v34, v33);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

char *sub_26AF87770(char *a1, char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
    v36 = *(v35 - 8);
    if ((*(v36 + 48))(a1, 1))
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D8, &qword_26B08BF90);
      memcpy(a2, a1, *(*(v17 - 8) + 64));
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v12 - 8) + 16))(a2, a1);
        v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
        *&a2[*(v13 + 36)] = *&a1[*(v13 + 36)];
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
        v22 = &a2[*(v14 + 36)];
        v20 = &a1[*(v14 + 36)];
        v19 = *v20;

        *v22 = v19;
        v21 = *(v20 + 1);
        v23 = *(v20 + 2);

        *(v22 + 1) = v21;
        *(v22 + 2) = v23;
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
        v25 = &a2[*(v15 + 36)];
        v24 = &a1[*(v15 + 36)];
        v16 = sub_26B079100();
        (*(*(v16 - 8) + 16))(v25, v24);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
        v34 = *(v33 - 8);
        if ((*(v34 + 48))(a1, 1))
        {
          v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
          memcpy(a2, a1, *(*(v11 - 8) + 64));
        }

        else
        {
          v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
          (*(*(v7 - 8) + 16))(a2, a1);
          v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
          *&a2[*(v8 + 36)] = *&a1[*(v8 + 36)];
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
          v29 = &a2[*(v9 + 36)];
          v27 = &a1[*(v9 + 36)];
          v26 = *v27;

          *v29 = v26;
          v28 = *(v27 + 1);
          v30 = *(v27 + 2);

          *(v29 + 1) = v28;
          *(v29 + 2) = v30;
          v32 = &a2[*(v33 + 36)];
          v31 = &a1[*(v33 + 36)];
          v10 = sub_26B079100();
          (*(*(v10 - 8) + 16))(v32, v31);
          (*(v34 + 56))(a2, 0, 1, v33);
        }

        swift_storeEnumTagMultiPayload();
      }

      (*(v36 + 56))(a2, 0, 1, v35);
    }

    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
    *&a2[*(v3 + 36)] = *&a1[*(v3 + 36)];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
    v40 = &a2[*(v4 + 36)];
    v38 = &a1[*(v4 + 36)];
    v37 = *v38;

    *v40 = v37;
    v39 = *(v38 + 1);
    v41 = *(v38 + 2);

    *(v40 + 1) = v39;
    *(v40 + 2) = v41;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
    v43 = &a2[*(v5 + 36)];
    v42 = &a1[*(v5 + 36)];
    v6 = sub_26B079100();
    (*(*(v6 - 8) + 16))(v43, v42);
    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26AF87E1C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
    if (!(*(*(v3 - 8) + 48))(a1, 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v6 - 8) + 8))(a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

        v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
        v7 = sub_26B079100();
        (*(*(v7 - 8) + 8))(v9);
      }

      else
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
        if (!(*(*(v11 - 8) + 48))(a1, 1))
        {
          v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
          (*(*(v4 - 8) + 8))(a1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

          v10 = a1 + *(v11 + 36);
          v5 = sub_26B079100();
          (*(*(v5 - 8) + 8))(v10);
        }
      }
    }
  }

  else
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
    (*(*(v1 - 8) + 8))(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

    v12 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 8))(v12);
  }

  return a1;
}

uint64_t sub_26AF881CC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
  v2 = sub_26B079100();
  (*(*(v2 - 8) + 8))(a1 + v4);
  return a1;
}

uint64_t sub_26AF882CC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
  *(a2 + *(v3 + 36)) = *(a1 + *(v3 + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60) + 36);
  v7 = *(a1 + v6);

  v9 = a2 + v6;
  *(a2 + v6) = v7;
  v8 = *(a1 + v6 + 8);
  v10 = *(a1 + v6 + 16);

  *(v9 + 8) = v8;
  *(v9 + 16) = v10;
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
  v4 = sub_26B079100();
  (*(*(v4 - 8) + 16))(a2 + v11, a1 + v11);
  return a2;
}

char *sub_26AF88464(char *a1, char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
    (*(*(v9 - 8) + 32))(a2, a1);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
    *&a2[*(v10 + 36)] = *&a1[*(v10 + 36)];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
    v12 = &a2[*(v11 + 36)];
    v13 = &a1[*(v11 + 36)];
    *v12 = *v13;
    *(v12 + 2) = *(v13 + 2);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
    v18 = &a2[*(v14 + 36)];
    v17 = &a1[*(v14 + 36)];
    v15 = sub_26B079100();
    (*(*(v15 - 8) + 32))(v18, v17);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(a1, 1))
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
      memcpy(a2, a1, *(*(v8 - 8) + 64));
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
      (*(*(v2 - 8) + 32))(a2, a1);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
      *&a2[*(v3 + 36)] = *&a1[*(v3 + 36)];
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
      v5 = &a2[*(v4 + 36)];
      v6 = &a1[*(v4 + 36)];
      *v5 = *v6;
      *(v5 + 2) = *(v6 + 2);
      v20 = &a2[*(v21 + 36)];
      v19 = &a1[*(v21 + 36)];
      v7 = sub_26B079100();
      (*(*(v7 - 8) + 32))(v20, v19);
      (*(v22 + 56))(a2, 0, 1, v21);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

char *sub_26AF887F4(char *a1, char *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
    (*(*(v7 - 8) + 16))(a2, a1);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
    *&a2[*(v8 + 36)] = *&a1[*(v8 + 36)];
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
    v16 = &a2[*(v9 + 36)];
    v14 = &a1[*(v9 + 36)];
    v13 = *v14;

    *v16 = v13;
    v15 = *(v14 + 1);
    v17 = *(v14 + 2);

    *(v16 + 1) = v15;
    *(v16 + 2) = v17;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
    v19 = &a2[*(v10 + 36)];
    v18 = &a1[*(v10 + 36)];
    v11 = sub_26B079100();
    (*(*(v11 - 8) + 16))(v19, v18);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
    v28 = *(v27 - 8);
    if ((*(v28 + 48))(a1, 1))
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
      memcpy(a2, a1, *(*(v6 - 8) + 64));
    }

    else
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
      (*(*(v2 - 8) + 16))(a2, a1);
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
      *&a2[*(v3 + 36)] = *&a1[*(v3 + 36)];
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
      v23 = &a2[*(v4 + 36)];
      v21 = &a1[*(v4 + 36)];
      v20 = *v21;

      *v23 = v20;
      v22 = *(v21 + 1);
      v24 = *(v21 + 2);

      *(v23 + 1) = v22;
      *(v23 + 2) = v24;
      v26 = &a2[*(v27 + 36)];
      v25 = &a1[*(v27 + 36)];
      v5 = sub_26B079100();
      (*(*(v5 - 8) + 16))(v26, v25);
      (*(v28 + 56))(a2, 0, 1, v27);
    }

    swift_storeEnumTagMultiPayload();
  }

  return a2;
}

uint64_t sub_26AF88C04(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
    (*(*(v3 - 8) + 8))(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

    v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
    v4 = sub_26B079100();
    (*(*(v4 - 8) + 8))(v6);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
    if (!(*(*(v8 - 8) + 48))(a1, 1))
    {
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
      (*(*(v1 - 8) + 8))(a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

      v7 = a1 + *(v8 + 36);
      v2 = sub_26B079100();
      (*(*(v2 - 8) + 8))(v7);
    }
  }

  return a1;
}

uint64_t sub_26AF88E78(uint64_t a1)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
  if (!(*(*(v6 - 8) + 48))(a1, 1))
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
    (*(*(v1 - 8) + 8))(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

    v4 = a1 + *(v6 + 36);
    v2 = sub_26B079100();
    (*(*(v2 - 8) + 8))(v4);
  }

  return a1;
}

char *sub_26AF88FBC(char *a1, char *a2)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(a1, 1))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
    memcpy(a2, a1, *(*(v8 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
    (*(*(v2 - 8) + 32))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
    *&a2[*(v3 + 36)] = *&a1[*(v3 + 36)];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
    v5 = &a2[*(v4 + 36)];
    v6 = &a1[*(v4 + 36)];
    *v5 = *v6;
    *(v5 + 2) = *(v6 + 2);
    v11 = &a2[*(v14 + 36)];
    v10 = &a1[*(v14 + 36)];
    v7 = sub_26B079100();
    (*(*(v7 - 8) + 32))(v11, v10);
    (*(v15 + 56))(a2, 0, 1, v14);
  }

  return a2;
}

char *sub_26AF891CC(char *a1, char *a2)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(a1, 1))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
    memcpy(a2, a1, *(*(v6 - 8) + 64));
  }

  else
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
    (*(*(v2 - 8) + 16))(a2, a1);
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
    *&a2[*(v3 + 36)] = *&a1[*(v3 + 36)];
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
    v11 = &a2[*(v4 + 36)];
    v9 = &a1[*(v4 + 36)];
    v8 = *v9;

    *v11 = v8;
    v10 = *(v9 + 1);
    v12 = *(v9 + 2);

    *(v11 + 1) = v10;
    *(v11 + 2) = v12;
    v14 = &a2[*(v17 + 36)];
    v13 = &a1[*(v17 + 36)];
    v5 = sub_26B079100();
    (*(*(v5 - 8) + 16))(v14, v13);
    (*(v18 + 56))(a2, 0, 1, v17);
  }

  return a2;
}

unint64_t sub_26AF89420()
{
  v2 = qword_2803DD810;
  if (!qword_2803DD810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD1E8, &qword_26B08BFA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD810);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF894A8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD180, &qword_26B08BF38);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
    if (!(*(*(v2 - 8) + 48))(a1, 1))
    {
      v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48) + 44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
        if (!(*(*(v5 - 8) + 48))(v15, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
            (*(*(v8 - 8) + 8))(v15);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

            v11 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
            v9 = sub_26B079100();
            (*(*(v9 - 8) + 8))(v11);
          }

          else
          {
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            if (!(*(*(v13 - 8) + 48))(v15, 1))
            {
              v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
              (*(*(v6 - 8) + 8))(v15);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

              v12 = v15 + *(v13 + 36);
              v7 = sub_26B079100();
              (*(*(v7 - 8) + 8))(v12);
            }
          }
        }
      }

      else
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v3 - 8) + 8))(v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

        v14 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
        v4 = sub_26B079100();
        (*(*(v4 - 8) + 8))(v14);
      }
    }
  }

  return a1;
}

unint64_t sub_26AF89924()
{
  v2 = qword_2803DD818;
  if (!qword_2803DD818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD0E8, &qword_26B08BEC8);
    sub_26AF89420();
    sub_26AF0633C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD818);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF899CC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD180, &qword_26B08BF38);
  if (!(*(*(v1 - 8) + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
    if (!(*(*(v2 - 8) + 48))(a1, 1))
    {
      v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48) + 44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
        if (!(*(*(v5 - 8) + 48))(v15, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
            (*(*(v8 - 8) + 8))(v15);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

            v11 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
            v9 = sub_26B079100();
            (*(*(v9 - 8) + 8))(v11);
          }

          else
          {
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            if (!(*(*(v13 - 8) + 48))(v15, 1))
            {
              v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
              (*(*(v6 - 8) + 8))(v15);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

              v12 = v15 + *(v13 + 36);
              v7 = sub_26B079100();
              (*(*(v7 - 8) + 8))(v12);
            }
          }
        }
      }

      else
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v3 - 8) + 8))(v15);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

        v14 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
        v4 = sub_26B079100();
        (*(*(v4 - 8) + 8))(v14);
      }
    }
  }

  return a1;
}

_OWORD *sub_26AF89E48(_OWORD *a1, _OWORD *a2)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD180, &qword_26B08BF38);
  v54 = *(v53 - 8);
  if ((*(v54 + 48))(a1, 1))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1E0, &qword_26B08BF98);
    memcpy(a2, a1, *(*(v19 - 8) + 64));
  }

  else
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
    v50 = *(v49 - 8);
    if ((*(v50 + 48))(a1, 1))
    {
      memcpy(a2, a1, *(v54 + 64));
    }

    else
    {
      *a2 = *a1;
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48);
      v47 = a2 + *(v2 + 44);
      v48 = a1 + *(v2 + 44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
        v39 = *(v38 - 8);
        if ((*(v39 + 48))(v48, 1))
        {
          v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D8, &qword_26B08BF90);
          memcpy(v47, v48, *(*(v18 - 8) + 64));
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
            (*(*(v13 - 8) + 16))(v47, v48);
            v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
            *&v47[*(v14 + 36)] = *&v48[*(v14 + 36)];
            v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
            v25 = &v47[*(v15 + 36)];
            v23 = &v48[*(v15 + 36)];
            v22 = *v23;

            *v25 = v22;
            v24 = *(v23 + 1);
            v26 = *(v23 + 2);

            *(v25 + 1) = v24;
            *(v25 + 2) = v26;
            v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            v28 = &v47[*(v16 + 36)];
            v27 = &v48[*(v16 + 36)];
            v17 = sub_26B079100();
            (*(*(v17 - 8) + 16))(v28, v27);
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            v37 = *(v36 - 8);
            if ((*(v37 + 48))(v48, 1))
            {
              v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1D0, &qword_26B08BF88);
              memcpy(v47, v48, *(*(v12 - 8) + 64));
            }

            else
            {
              v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
              (*(*(v8 - 8) + 16))(v47, v48);
              v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
              *&v47[*(v9 + 36)] = *&v48[*(v9 + 36)];
              v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
              v32 = &v47[*(v10 + 36)];
              v30 = &v48[*(v10 + 36)];
              v29 = *v30;

              *v32 = v29;
              v31 = *(v30 + 1);
              v33 = *(v30 + 2);

              *(v32 + 1) = v31;
              *(v32 + 2) = v33;
              v35 = &v47[*(v36 + 36)];
              v34 = &v48[*(v36 + 36)];
              v11 = sub_26B079100();
              (*(*(v11 - 8) + 16))(v35, v34);
              (*(v37 + 56))(v47, 0, 1, v36);
            }

            swift_storeEnumTagMultiPayload();
          }

          (*(v39 + 56))(v47, 0, 1, v38);
        }

        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v3 - 8) + 16))(v47, v48);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C8, &qword_26B08BF80);
        *&v47[*(v4 + 36)] = *&v48[*(v4 + 36)];
        v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);
        v43 = &v47[*(v5 + 36)];
        v41 = &v48[*(v5 + 36)];
        v40 = *v41;

        *v43 = v40;
        v42 = *(v41 + 1);
        v44 = *(v41 + 2);

        *(v43 + 1) = v42;
        *(v43 + 2) = v44;
        v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
        v46 = &v47[*(v6 + 36)];
        v45 = &v48[*(v6 + 36)];
        v7 = sub_26B079100();
        (*(*(v7 - 8) + 16))(v46, v45);
        swift_storeEnumTagMultiPayload();
      }

      (*(v50 + 56))(a2, 0, 1, v49);
    }

    (*(v54 + 56))(a2, 0, 1, v53);
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1E8, &qword_26B08BFA0);
  result = a2;
  *(a2 + *(v20 + 52)) = *(a1 + *(v20 + 52));
  return result;
}

unint64_t sub_26AF8A730()
{
  v2 = qword_2803DD830;
  if (!qword_2803DD830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD828, &qword_26B08CAC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD820, &qword_26B08CAB8);
    sub_26AF8A83C();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD830);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF8A83C()
{
  v2 = qword_2803DD838;
  if (!qword_2803DD838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD820, &qword_26B08CAB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD838);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF8A8C4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130, &unk_26B08BED0);
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

void *sub_26AF8A978(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130, &unk_26B08BED0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD0C0, &unk_26B08BEA0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

void *sub_26AF8AAFC(const void *a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD130, &unk_26B08BED0);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD0C0, &unk_26B08BEA0);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_26AF8AC30()
{
  v2 = qword_2803DD840;
  if (!qword_2803DD840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2803DD0C0, &unk_26B08BEA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD828, &qword_26B08CAC0);
    sub_26AF8A730();
    swift_getOpaqueTypeConformance2();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD840);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF8AD30(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD138, &unk_26B08D440);
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

uint64_t sub_26AF8AD98(uint64_t a1, uint64_t a2)
{
  (*(*(a2 - 8) + 8))();

  return a1;
}

uint64_t sub_26AF8AE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(*(a3 - 8) + 16))();
  v7 = *(a4 + 36);
  v8 = *(a1 + v7);

  v11 = a2 + v7;
  *(a2 + v7) = v8;
  v10 = *(a1 + v7 + 8);
  v12 = *(a1 + v7 + 16);

  result = a2;
  *(v11 + 8) = v10;
  *(v11 + 16) = v12;
  return result;
}

uint64_t sub_26AF8B130(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AF8B224;

  return sub_26AF7F720(a1, v6);
}

uint64_t sub_26AF8B224()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF8B394(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 24);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_26AF8B488;

  return sub_26AF7F720(a1, v6);
}

uint64_t sub_26AF8B488()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_26AF8B5FC()
{
  v16 = v0[4];
  v15 = v0[5];
  v1 = v0[6];
  v2 = v0[7];
  v14[0] = v16;
  v14[1] = v15;
  v14[2] = v1;
  v14[3] = v2;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v14);
  v3 = *(*(updated - 1) + 80);
  v11 = (v3 + 64) & ~v3;
  swift_unknownObjectRelease();

  v13 = updated[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B0789F0();
    (*(*(v4 - 8) + 8))(v10 + v11 + v13);
  }

  else
  {
  }

  v9 = v10 + v11 + updated[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B078B00();
    (*(*(v5 - 8) + 8))(v9);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(v10 + v11 + updated[18]), *(v10 + v11 + updated[18] + 8), *(v10 + v11 + updated[18] + 16) & 1);
  v8 = v10 + v11 + updated[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B079C30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF8B9B0(uint64_t a1)
{
  v2[6] = v2;
  v10 = v1[4];
  v11 = v1[5];
  v12 = v1[6];
  v13 = v1[7];
  v2[2] = v10;
  v2[3] = v11;
  v2[4] = v12;
  v2[5] = v13;
  v3 = *(type metadata accessor for SoftwareUpdateContentView(0, (v2 + 2)) - 8);
  v9 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v4 = swift_task_alloc();
  *(v6 + 56) = v4;
  *v4 = *(v6 + 48);
  v4[1] = sub_26AF8BB04;

  return sub_26AF64090(a1, v7, v8, v1 + v9, v10, v11, v12, v13);
}

uint64_t sub_26AF8BB04()
{
  v3 = *v0;
  *(v3 + 48) = *v0;

  v1 = *(*(v3 + 48) + 8);

  return v1();
}

uint64_t sub_26AF8C40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v54 = *(a13 + 44);
  (*(*(a2 - 8) + 8))();

  v55 = *(a11 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD408, &qword_26B08C0B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD470, &qword_26B08C120);
    if (!swift_getEnumCaseMultiPayload())
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
      if (!(*(*(v44 - 8) + 48))(a1 + v54 + v55, 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v42 = a1 + v54 + v55;

          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
          v40 = v42 + *(v41 + 52);
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
          (*(*(v20 - 8) + 8))(v40);
          v43 = v42 + *(v41 + 56);
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
          if (!(*(*(v21 - 8) + 48))(v43, 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            }

            else
            {
              v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            }

            (*(*(v22 - 8) + 8))(v43);
          }

          v39 = (a1 + v54 + v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0) + 36));
          if (*v39)
          {
          }

          if (v39[2])
          {
          }
        }

        else
        {

          if (*(a1 + v54 + v55 + 40))
          {
          }

          if (*(a1 + v54 + v55 + 64))
          {
          }
        }
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD410, &qword_26B08C0C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD440, &unk_26B08C0F0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v47 = a1 + v54 + v55;

        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v45 = v47 + *(v46 + 52);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v16 - 8) + 8))(v45);
        v48 = v47 + *(v46 + 56);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        if (!(*(*(v17 - 8) + 48))(v48, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            (*(*(v19 - 8) + 8))(v48);
          }

          else
          {
            v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            (*(*(v18 - 8) + 8))(v48);
          }
        }
      }

      else
      {
        v15 = a1 + v54 + v55;
        sub_26AF7266C(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 33) & 1);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD418, &qword_26B08C0C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v49 = a1 + v54 + v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
          v14 = sub_26B079100();
          (*(*(v14 - 8) + 8))(v49);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v50 = a1 + v54 + v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
            v13 = sub_26B079100();
            (*(*(v13 - 8) + 8))(v50);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
          }

          else
          {
            sub_26AE95AFC(*(a1 + v54 + v55 + 40), *(a1 + v54 + v55 + 48), *(a1 + v54 + v55 + 56) & 1);
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD2D8, &qword_26B08C028);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0E0, &qword_26B08BEC0);

  v38 = a1 + v54 + *(a11 + 64);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD180, &qword_26B08BF38);
  if (!(*(*(v23 - 8) + 48))(v38, 1))
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
    if (!(*(*(v24 - 8) + 48))(v38, 1))
    {
      v37 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48) + 44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
        if (!(*(*(v27 - 8) + 48))(v37, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
            (*(*(v30 - 8) + 8))(v37);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

            v33 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
            v31 = sub_26B079100();
            (*(*(v31 - 8) + 8))(v33);
          }

          else
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            if (!(*(*(v35 - 8) + 48))(v37, 1))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
              (*(*(v28 - 8) + 8))(v37);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

              v34 = v37 + *(v35 + 36);
              v29 = sub_26B079100();
              (*(*(v29 - 8) + 8))(v34);
            }
          }
        }
      }

      else
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v25 - 8) + 8))(v37);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

        v36 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
        v26 = sub_26B079100();
        (*(*(v26 - 8) + 8))(v36);
      }
    }
  }

  (*(*(a5 - 8) + 8))(v38 + *(a6 + 48));

  return a1;
}

uint64_t sub_26AF8D318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v54 = *(a13 + 44);
  (*(*(a2 - 8) + 8))();

  v55 = *(a11 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD408, &qword_26B08C0B8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD470, &qword_26B08C120);
    if (!swift_getEnumCaseMultiPayload())
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3C0, &qword_26B08C098);
      if (!(*(*(v44 - 8) + 48))(a1 + v54 + v55, 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD478, &qword_26B08C128);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v42 = a1 + v54 + v55;

          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
          v40 = v42 + *(v41 + 52);
          v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
          (*(*(v20 - 8) + 8))(v40);
          v43 = v42 + *(v41 + 56);
          v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
          if (!(*(*(v21 - 8) + 48))(v43, 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            }

            else
            {
              v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            }

            (*(*(v22 - 8) + 8))(v43);
          }

          v39 = (a1 + v54 + v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD3F8, &qword_26B08C0B0) + 36));
          if (*v39)
          {
          }

          if (v39[2])
          {
          }
        }

        else
        {

          if (*(a1 + v54 + v55 + 40))
          {
          }

          if (*(a1 + v54 + v55 + 64))
          {
          }
        }
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD410, &qword_26B08C0C0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD440, &unk_26B08C0F0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v47 = a1 + v54 + v55;

        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD390, &qword_26B08C080);
        v45 = v47 + *(v46 + 52);
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DBFC8, &unk_26B088180);
        (*(*(v16 - 8) + 8))(v45);
        v48 = v47 + *(v46 + 56);
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD450, &qword_26B08C100);
        if (!(*(*(v17 - 8) + 48))(v48, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD458, &qword_26B08C108);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD468, &qword_26B08C118);
            (*(*(v19 - 8) + 8))(v48);
          }

          else
          {
            v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD460, &qword_26B08C110);
            (*(*(v18 - 8) + 8))(v48);
          }
        }
      }

      else
      {
        v15 = a1 + v54 + v55;
        sub_26AF7266C(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 33) & 1);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD418, &qword_26B08C0C8);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD420, &qword_26B08C0D0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v49 = a1 + v54 + v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
          v14 = sub_26B079100();
          (*(*(v14 - 8) + 8))(v49);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD428, &qword_26B08C0D8);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v50 = a1 + v54 + v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD430, &qword_26B08C0E0) + 36);
            v13 = sub_26B079100();
            (*(*(v13 - 8) + 8))(v50);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD438, &qword_26B08C0E8);
          }

          else
          {
            sub_26AE95AFC(*(a1 + v54 + v55 + 40), *(a1 + v54 + v55 + 48), *(a1 + v54 + v55 + 56) & 1);
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD328, &qword_26B08C050);
      }
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD2D8, &qword_26B08C028);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD0E0, &qword_26B08BEC0);

  v38 = a1 + v54 + *(a11 + 64);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD180, &qword_26B08BF38);
  if (!(*(*(v23 - 8) + 48))(v38, 1))
  {
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD188, &qword_26B08BF40);
    if (!(*(*(v24 - 8) + 48))(v38, 1))
    {
      v37 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD190, &qword_26B08BF48) + 44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD198, &qword_26B08BF50);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B8, &qword_26B08BF70);
        if (!(*(*(v27 - 8) + 48))(v37, 1))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1C0, &qword_26B08BF78);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
            (*(*(v30 - 8) + 8))(v37);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

            v33 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
            v31 = sub_26B079100();
            (*(*(v31 - 8) + 8))(v33);
          }

          else
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68);
            if (!(*(*(v35 - 8) + 48))(v37, 1))
            {
              v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
              (*(*(v28 - 8) + 8))(v37);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

              v34 = v37 + *(v35 + 36);
              v29 = sub_26B079100();
              (*(*(v29 - 8) + 8))(v34);
            }
          }
        }
      }

      else
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A0, &qword_26B08BF58);
        (*(*(v25 - 8) + 8))(v37);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1A8, &qword_26B08BF60);

        v36 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD1B0, &qword_26B08BF68) + 36);
        v26 = sub_26B079100();
        (*(*(v26 - 8) + 8))(v36);
      }
    }
  }

  (*(*(a5 - 8) + 8))(v38 + *(a6 + 48));

  return a1;
}

uint64_t sub_26AF8E270()
{
  v16 = v0[2];
  v15 = v0[3];
  v1 = v0[4];
  v2 = v0[5];
  v14[0] = v16;
  v14[1] = v15;
  v14[2] = v1;
  v14[3] = v2;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v14);
  v3 = *(*(updated - 1) + 80);
  v11 = (v3 + 48) & ~v3;

  v13 = updated[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B0789F0();
    (*(*(v4 - 8) + 8))(v10 + v11 + v13);
  }

  else
  {
  }

  v9 = v10 + v11 + updated[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B078B00();
    (*(*(v5 - 8) + 8))(v9);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(v10 + v11 + updated[18]), *(v10 + v11 + updated[18] + 8), *(v10 + v11 + updated[18] + 16) & 1);
  v8 = v10 + v11 + updated[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B079C30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF8E618(uint64_t a1)
{
  v5 = v1[2];
  v10[5] = v5;
  v6 = v1[3];
  v10[4] = v6;
  v7 = v1[4];
  v8 = v1[5];
  v10[0] = v5;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v10);
  v3 = (v1 + ((*(*(updated - 8) + 80) + 48) & ~*(*(updated - 8) + 80)));

  return sub_26AF52F20(a1, v3, v5, v6, v7, v8);
}

void sub_26AF8E6DC(uint64_t a1, uint64_t a2)
{
  (*(*(a2 - 8) + 8))();
}

void sub_26AF8E758(uint64_t a1, uint64_t a2)
{
  (*(*(a2 - 8) + 8))();
}

uint64_t sub_26AF8E804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(*(a3 - 8) + 16))();
  v8 = *(a4 + 52);
  v9 = *(a1 + v8);

  *(a2 + v8) = v9;
  v11 = *(a4 + 56);
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);

  v5 = (a2 + v11);
  *v5 = v12;
  v5[1] = v13;
  v15 = *(a5 + 52);
  v16 = *(a1 + v15);

  *(a2 + v15) = v16;
  v19 = *(a5 + 56);
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);

  result = a2;
  v7 = (a2 + v19);
  *v7 = v20;
  v7[1] = v21;
  return result;
}

uint64_t sub_26AF8E954()
{
  v16 = v0[2];
  v15 = v0[3];
  v1 = v0[4];
  v2 = v0[5];
  v14[0] = v16;
  v14[1] = v15;
  v14[2] = v1;
  v14[3] = v2;
  updated = type metadata accessor for SoftwareUpdateContentView(0, v14);
  v3 = *(*(updated - 1) + 80);
  v11 = (v3 + 48) & ~v3;

  v13 = updated[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD050, &unk_26B089E30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_26B0789F0();
    (*(*(v4 - 8) + 8))(v10 + v11 + v13);
  }

  else
  {
  }

  v9 = v10 + v11 + updated[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DDBB0, &unk_26B08D620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_26B078B00();
    (*(*(v5 - 8) + 8))(v9);
  }

  else
  {
  }

  sub_26AEF63EC();
  sub_26AEF642C(*(v10 + v11 + updated[18]), *(v10 + v11 + updated[18] + 8), *(v10 + v11 + updated[18] + 16) & 1);
  v8 = v10 + v11 + updated[19];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2803DD060, &qword_26B089E40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26B079C30();
    (*(*(v6 - 8) + 8))(v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_26AF8ECFC@<X0>(id *a1@<X8>)
{
  v7 = v1[2];
  v8[5] = v7;
  v4 = v1[3];
  v8[4] = v4;
  v5 = v1[4];
  v6 = v1[5];
  v8[0] = v7;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  type metadata accessor for SoftwareUpdateContentView(0, v8);

  return sub_26AF53B40(v7, v4, v5, v6, a1);
}

uint64_t sub_26AF8EDFC()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = type metadata accessor for SUUIStatefulUIState(0);
  v1 = sub_26AEB7134();

  return sub_26AEB6A60(v5, v3, v4, v1);
}

uint64_t sub_26AF8F158()
{
  if (*(v0 + 56) != 255)
  {
    sub_26AEA00D4(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));
  }

  return swift_deallocObject();
}

uint64_t sub_26AF8F1CC()
{
  if (*(v0 + 56) != 255)
  {
    sub_26AEA00D4(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));
  }

  return swift_deallocObject();
}

void *sub_26AF8F6D4(uint64_t *a1, void *a2)
{
  v4 = *a1;

  result = a2;
  *a2 = v4;
  return result;
}

void View.visibilityTransition(when:duration:)(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = a4;
  v15 = a1;
  v14 = a5;
  v11 = a2;
  v12 = a3;
  v13 = MEMORY[0x277CDFAD8];
  v24 = 0;
  v23 = 0.0;
  v22 = 0;
  v25 = a2;
  v16 = sub_26B078BF0();
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](v15);
  v18 = v8 - v17;
  v24 = v7 & 1;
  v23 = v6;
  v22 = v5;
  if (v7)
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  sub_26B079640();
  v8[1] = sub_26B079B70();
  v8[0] = &v21;
  v21 = v15;
  v19 = v12;
  v20 = MEMORY[0x277CDF900];
  swift_getWitnessTable();
  sub_26B0796E0();

  sub_26AF8F964(v18, v11);
}

uint64_t sub_26AF8FA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v12 = a1;
  v19 = MEMORY[0x277CDF380];
  v34 = 0;
  v33 = 0;
  v17 = sub_26B078D80();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v8 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v16 = &v7 - v8;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD8B0, &qword_26B08CB18);
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v9 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v24 = &v7 - v9;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD8B8, &qword_26B08CB20);
  v10 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v29 = &v7 - v10;
  v11 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v30 = &v7 - v11;
  v34 = &v7 - v11;
  v33 = v4;
  sub_26AF8FD28();
  v13 = sub_26B079B70();
  v18 = sub_26AF8FD40();
  sub_26B0789E0();

  (*(v14 + 8))(v16, v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD8C8, &qword_26B08CB28);
  v21 = sub_26AF8FEA8();
  v31 = v17;
  v32 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AF8FDC0(v24, v20, v25, v21, OpaqueTypeConformance2, v29);
  (*(v22 + 8))(v24, v25);
  v28 = sub_26AF8FF30();
  sub_26AE9463C(v29, v27, v30);
  sub_26AF90060(v29);
  sub_26AF900F0(v30, v29);
  sub_26AE94B4C(v29, v27, v26);
  sub_26AF90060(v29);
  return sub_26AF90060(v30);
}

unint64_t sub_26AF8FD40()
{
  v2 = qword_2803DD8C0;
  if (!qword_2803DD8C0)
  {
    sub_26B078D80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD8C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF8FDC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14 = a6;
  v8 = a1;
  v15 = a2;
  v11 = a3;
  v16 = a4;
  v12 = a5;
  v19 = a2;
  v18 = a3;
  v10 = *(a3 - 8);
  v9 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x28223BE20](a1);
  v13 = &v8 - v9;
  (*(v10 + 16))(v6);
  v17 = sub_26B078AB0();
  sub_26B0793F0();
}

unint64_t sub_26AF8FEA8()
{
  v2 = qword_2803DD8D0;
  if (!qword_2803DD8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD8C8, &qword_26B08CB28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD8D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF8FF30()
{
  v2 = qword_2803DD8D8;
  if (!qword_2803DD8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD8B8, &qword_26B08CB20);
    sub_26AF8FEA8();
    sub_26AF8FFD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD8D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF8FFD8()
{
  v2 = qword_2803DD8E0;
  if (!qword_2803DD8E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD8E8, &qword_26B08CB30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD8E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF90060(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD8C8, &qword_26B08CB28);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD8B8, &qword_26B08CB20);

  return a1;
}

uint64_t sub_26AF900F0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD8C8, &qword_26B08CB28);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD8B8, &qword_26B08CB20) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

uint64_t sub_26AF90204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v12 = a1;
  v19 = MEMORY[0x277CDF380];
  v34 = 0;
  v33 = 0;
  v17 = sub_26B078D80();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v7 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v17);
  v16 = &v7 - v7;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD8B0, &qword_26B08CB18);
  v22 = *(v25 - 8);
  v23 = v25 - 8;
  v8 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v25);
  v24 = &v7 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD8F0, &qword_26B08CB38);
  v9 = (*(*(v27 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v29 = &v7 - v9;
  v10 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v30 = &v7 - v10;
  v34 = &v7 - v10;
  v33 = v4;
  sub_26AF8FD28();
  v11 = sub_26B079B70();
  v13 = sub_26B079B60();

  v18 = sub_26AF8FD40();
  sub_26B0789E0();

  (*(v14 + 8))(v16, v17);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD8F8, &qword_26B08CB40);
  v21 = sub_26AF90534();
  v31 = v17;
  v32 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_26AF8FDC0(v24, v20, v25, v21, OpaqueTypeConformance2, v29);
  (*(v22 + 8))(v24, v25);
  v28 = sub_26AF905BC();
  sub_26AE9463C(v29, v27, v30);
  sub_26AF90664(v29);
  sub_26AF906F4(v30, v29);
  sub_26AE94B4C(v29, v27, v26);
  sub_26AF90664(v29);
  return sub_26AF90664(v30);
}

unint64_t sub_26AF90534()
{
  v2 = qword_2803DD900;
  if (!qword_2803DD900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD8F8, &qword_26B08CB40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD900);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_26AF905BC()
{
  v2 = qword_2803DD908;
  if (!qword_2803DD908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2803DD8F0, &qword_26B08CB38);
    sub_26AF90534();
    sub_26AF8FFD8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2803DD908);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_26AF90664(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD8F8, &qword_26B08CB40);
  (*(*(v1 - 8) + 8))(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD8F0, &qword_26B08CB38);

  return a1;
}

uint64_t sub_26AF906F4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD8F8, &qword_26B08CB40);
  (*(*(v2 - 8) + 16))(a2, a1);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803DD8F0, &qword_26B08CB38) + 36);
  v7 = *(a1 + v6);

  result = a2;
  *(a2 + v6) = v7;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimationDuration(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for AnimationDuration(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_26AF90B6C()
{
  sub_26B078BF0();
  sub_26AF0633C();
  return swift_getWitnessTable();
}

uint64_t sub_26AF90BEC()
{
  sub_26B078BF0();
  sub_26AF90C6C();
  return swift_getWitnessTable();
}