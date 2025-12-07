uint64_t sub_1D17E2D84(void *a1)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v53 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v60 = &v53 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v53 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v53 - v19;
  v21 = [a1 currentHome];
  v61 = v4;
  v58 = v10;
  if (v21)
  {
    v22 = v21;
    v23 = [v21 uniqueIdentifier];

    sub_1D1E66A5C();
    v24 = *(v4 + 32);
    v24(v18, v6, v3);
    v25 = *(v4 + 56);
    v25(v18, 0, 1, v3);
    v24(v20, v18, v3);
    v25(v20, 0, 1, v3);
    v26 = v60;
  }

  else
  {
    v54 = *(v4 + 56);
    v55 = v4 + 56;
    v54(v18, 1, 1, v3);
    v27 = [a1 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v28 = sub_1D1E67C1C();

    v59 = v20;
    v56 = v1;
    v57 = v13;
    if (v28 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
    {
      v30 = 0;
      while (1)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1D3891EF0](v30, v28);
        }

        else
        {
          if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if ([v31 isPrimary])
        {

          v34 = [v32 uniqueIdentifier];

          v20 = v59;
          sub_1D1E66A5C();

          v35 = 0;
          goto LABEL_19;
        }

        ++v30;
        if (v33 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    v35 = 1;
    v20 = v59;
LABEL_19:
    v54(v20, v35, 1, v3);
    v36 = (*(v61 + 48))(v18, 1, v3);
    v13 = v57;
    v26 = v60;
    if (v36 != 1)
    {
      sub_1D1741A30(v18, &qword_1EC642590, qword_1D1E71260);
    }
  }

  sub_1D17783E0(v20, v26);
  sub_1D17E1438(v26);
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v37 = sub_1D1E6709C();
  __swift_project_value_buffer(v37, qword_1EC64F3F8);
  sub_1D17783E0(v20, v13);
  v38 = v13;
  v39 = sub_1D1E6707C();
  v40 = sub_1D1E6835C();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v61;
  if (v41)
  {
    v59 = v20;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v62 = v44;
    *v43 = 136315394;
    *(v43 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9C00, &v62);
    *(v43 + 12) = 2080;
    v45 = v38;
    v46 = v58;
    sub_1D17783E0(v38, v58);
    if ((*(v42 + 48))(v46, 1, v3) == 1)
    {
      sub_1D1741A30(v46, &qword_1EC642590, qword_1D1E71260);
      v47 = 0xE300000000000000;
      v48 = 7104878;
    }

    else
    {
      v48 = sub_1D1E66A1C();
      v47 = v50;
      (*(v42 + 8))(v46, v3);
    }

    sub_1D1741A30(v45, &qword_1EC642590, qword_1D1E71260);
    v51 = sub_1D1B1312C(v48, v47, &v62);

    *(v43 + 14) = v51;
    _os_log_impl(&dword_1D16EC000, v39, v40, "%s current home ID: %s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v44, -1, -1);
    MEMORY[0x1D3893640](v43, -1, -1);

    v49 = v59;
  }

  else
  {

    sub_1D1741A30(v38, &qword_1EC642590, qword_1D1E71260);
    v49 = v20;
  }

  return sub_1D1741A30(v49, &qword_1EC642590, qword_1D1E71260);
}

uint64_t sub_1D17E3414(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v33 - v7;
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1D17E63D8(a1);
  v36 = a1;
  v13 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  swift_getKeyPath();
  v40 = v2;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
  sub_1D1E66CAC();

  v40 = v2;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v14 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(v2 + v14);
  *(v2 + v14) = 0x8000000000000000;
  sub_1D1753AF4(v38, v12, isUniquelyReferenced_nonNull_native);
  v34 = v10[1];
  v35 = v12;
  v34(v12, v9);
  *(v2 + v14) = v39;
  swift_endAccess();
  v40 = v2;
  swift_getKeyPath();
  sub_1D1E66CBC();

  swift_getKeyPath();
  v40 = v2;
  v16 = v9;
  sub_1D1E66CAC();

  v17 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__currentHomeIdentifier;
  swift_beginAccess();
  sub_1D17783E0(v2 + v17, v8);
  v38 = v10;
  LODWORD(v17) = (v10[6])(v8, 1, v9);
  result = sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);
  if (v17 == 1)
  {
    if (qword_1EC642458 != -1)
    {
      swift_once();
    }

    v19 = sub_1D1E6709C();
    __swift_project_value_buffer(v19, qword_1EC64F3F8);
    v20 = v36;
    v21 = sub_1D1E6707C();
    v22 = sub_1D1E6835C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v39 = v36;
      *v23 = 136315394;
      *(v23 + 4) = sub_1D1B1312C(0xD00000000000001ALL, 0x80000001D1EB9BE0, &v39);
      *(v23 + 12) = 2080;
      v24 = [v20 uniqueIdentifier];
      v25 = v35;
      sub_1D1E66A5C();

      sub_1D17E69E8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v26 = sub_1D1E68FAC();
      v28 = v27;
      v34(v25, v16);
      v29 = sub_1D1B1312C(v26, v28, &v39);

      *(v23 + 14) = v29;
      _os_log_impl(&dword_1D16EC000, v21, v22, "%s currentHomeIdentifier is nil, setting it to %s", v23, 0x16u);
      v30 = v36;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v30, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);
    }

    v31 = [v20 uniqueIdentifier];
    v32 = v37;
    sub_1D1E66A5C();

    (v38[7])(v32, 0, 1, v16);
    return sub_1D17E1438(v32);
  }

  return result;
}

uint64_t sub_1D17E39B0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  swift_getKeyPath();
  v10 = v2;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
  sub_1D1E66CAC();

  v10 = v2;
  swift_getKeyPath();
  sub_1D1E66CCC();

  swift_beginAccess();
  sub_1D1B0D564(0, v6);
  swift_endAccess();
  v10 = v2;
  swift_getKeyPath();
  sub_1D1E66CBC();
}

void sub_1D17E3B60(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v63 - v11;
  v13 = [a1 cameraProfiles];
  if (v13)
  {
    v14 = v13;
    sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
    v15 = sub_1D1E67C1C();

    if (v15 >> 62)
    {
      if (sub_1D1E6873C())
      {
LABEL_4:
        if ((v15 & 0xC000000000000001) != 0)
        {
          v16 = v7;
          v17 = MEMORY[0x1D3891EF0](0, v15);
        }

        else
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v16 = v7;
          v17 = *(v15 + 32);
        }

        v68 = v17;

        v69 = a2;
        v18 = [a2 uniqueIdentifier];
        sub_1D1E66A5C();

        swift_getKeyPath();
        v19 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel___observationRegistrar;
        v73 = v3;
        v20 = sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
        v67 = v19;
        sub_1D1E66CAC();

        v21 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
        swift_beginAccess();
        v22 = *(v3 + v21);
        if (*(v22 + 16))
        {

          v23 = sub_1D1742188();
          if (v24)
          {
            v25 = *(*(v22 + 56) + 8 * v23);
            v65 = v20;
            v26 = *(v16 + 8);

            v26(v12, v6);
            v66 = v26;

            v27 = v68;
            v28 = [v68 uniqueIdentifier];
            sub_1D1E66A5C();

            v71[0] = 0;
            v71[1] = 0;
            v72 = 2;
            type metadata accessor for CameraController(0);
            swift_allocObject();
            v68 = v27;
            v29 = sub_1D17CA954(v68, v71);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v71[0] = v25;
            sub_1D1753B34(v29, v10, isUniquelyReferenced_nonNull_native);
            v26(v10, v6);
            v64 = v71[0];
            v31 = [v69 uniqueIdentifier];
            sub_1D1E66A5C();

            swift_getKeyPath();
            v71[0] = v3;
            sub_1D1E66CAC();

            v71[0] = v3;
            swift_getKeyPath();
            sub_1D1E66CCC();

            swift_beginAccess();
            v32 = swift_isUniquelyReferenced_nonNull_native();
            v70 = *(v3 + v21);
            *(v3 + v21) = 0x8000000000000000;
            sub_1D1753AF4(v64, v10, v32);
            v64 = v16 + 8;
            v66(v10, v6);
            *(v3 + v21) = v70;
            swift_endAccess();
            v71[0] = v3;
            swift_getKeyPath();
            sub_1D1E66CBC();

            if (qword_1EC642458 != -1)
            {
              swift_once();
            }

            v33 = sub_1D1E6709C();
            __swift_project_value_buffer(v33, qword_1EC64F3F8);
            v34 = v68;
            v35 = v69;
            v36 = sub_1D1E6707C();
            v37 = sub_1D1E6835C();

            if (!os_log_type_enabled(v36, v37))
            {

              return;
            }

            v38 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v71[0] = v69;
            *v38 = 136315650;
            *(v38 + 4) = sub_1D1B1312C(0x656D616328646461, 0xEF293A6F743A6172, v71);
            *(v38 + 12) = 2080;
            v39 = [v34 uniqueIdentifier];
            LODWORD(v67) = v37;
            v40 = v39;
            sub_1D1E66A5C();

            sub_1D17E69E8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v41 = sub_1D1E68FAC();
            v43 = v42;
            v68 = v34;
            v44 = v66;
            v66(v10, v6);
            v45 = sub_1D1B1312C(v41, v43, v71);

            *(v38 + 14) = v45;
            *(v38 + 22) = 2080;
            v46 = [v35 uniqueIdentifier];
            sub_1D1E66A5C();

            v47 = sub_1D1E68FAC();
            v49 = v48;
            v44(v10, v6);
            v50 = sub_1D1B1312C(v47, v49, v71);

            *(v38 + 24) = v50;
            _os_log_impl(&dword_1D16EC000, v36, v67, "%s added camera profile %s to home %s", v38, 0x20u);
            v51 = v69;
            swift_arrayDestroy();
            MEMORY[0x1D3893640](v51, -1, -1);
            v52 = v38;
            goto LABEL_17;
          }
        }

        v14 = *(v16 + 8);
        (v14)(v12, v6);
        if (qword_1EC642458 == -1)
        {
LABEL_15:
          v53 = sub_1D1E6709C();
          __swift_project_value_buffer(v53, qword_1EC64F3F8);
          v54 = v69;
          v36 = sub_1D1E6707C();
          v55 = sub_1D1E6833C();

          if (!os_log_type_enabled(v36, v55))
          {
LABEL_18:

            return;
          }

          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v71[0] = v57;
          *v56 = 136315394;
          *(v56 + 4) = sub_1D1B1312C(0x656D616328646461, 0xEF293A6F743A6172, v71);
          *(v56 + 12) = 2080;
          v58 = [v54 uniqueIdentifier];
          sub_1D1E66A5C();

          sub_1D17E69E8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v59 = sub_1D1E68FAC();
          v61 = v60;
          (v14)(v10, v6);
          v62 = sub_1D1B1312C(v59, v61, v71);

          *(v56 + 14) = v62;
          _os_log_impl(&dword_1D16EC000, v36, v55, "%s failed to add camera, could not find home %s", v56, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v57, -1, -1);
          v52 = v56;
LABEL_17:
          MEMORY[0x1D3893640](v52, -1, -1);
          goto LABEL_18;
        }

LABEL_27:
        swift_once();
        goto LABEL_15;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }
}

void sub_1D17E44B4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v61 - v11;
  v13 = [a1 cameraProfiles];
  if (v13)
  {
    v14 = v13;
    sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
    v15 = sub_1D1E67C1C();

    if (v15 >> 62)
    {
      if (sub_1D1E6873C())
      {
LABEL_4:
        if ((v15 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x1D3891EF0](0, v15);
        }

        else
        {
          if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v16 = *(v15 + 32);
        }

        v66 = v16;

        v65 = a2;
        v17 = [a2 uniqueIdentifier];
        sub_1D1E66A5C();

        swift_getKeyPath();
        v18 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel___observationRegistrar;
        v68[3] = v3;
        sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
        sub_1D1E66CAC();

        v19 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
        swift_beginAccess();
        v20 = *(v3 + v19);
        if (*(v20 + 16))
        {

          v21 = sub_1D1742188();
          if (v22)
          {
            v23 = *(*(v20 + 56) + 8 * v21);
            v62 = v18;
            v63 = v6;
            v64 = *(v7 + 8);
            v24 = v64;

            v24(v12, v6);

            v69 = v23;
            v25 = [v66 uniqueIdentifier];
            sub_1D1E66A5C();

            sub_1D1B0D724(0, v10);
            v26 = [v65 uniqueIdentifier];
            sub_1D1E66A5C();

            v27 = v69;
            swift_getKeyPath();
            v68[0] = v3;
            sub_1D1E66CAC();

            v68[0] = v3;
            swift_getKeyPath();
            sub_1D1E66CCC();

            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v67 = *(v3 + v19);
            *(v3 + v19) = 0x8000000000000000;
            sub_1D1753AF4(v27, v10, isUniquelyReferenced_nonNull_native);
            v64(v10, v63);
            *(v3 + v19) = v67;
            swift_endAccess();
            v68[0] = v3;
            swift_getKeyPath();
            sub_1D1E66CBC();

            if (qword_1EC642458 != -1)
            {
              swift_once();
            }

            v29 = sub_1D1E6709C();
            __swift_project_value_buffer(v29, qword_1EC64F3F8);
            v30 = v66;
            v31 = v65;
            v32 = sub_1D1E6707C();
            v33 = sub_1D1E6835C();

            if (!os_log_type_enabled(v32, v33))
            {

              return;
            }

            v34 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v68[0] = v66;
            *v34 = 136315650;
            *(v34 + 4) = sub_1D1B1312C(0xD000000000000014, 0x80000001D1EB9BC0, v68);
            *(v34 + 12) = 2080;
            v35 = [v30 uniqueIdentifier];
            LODWORD(v62) = v33;
            v36 = v35;
            sub_1D1E66A5C();

            sub_1D17E69E8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v37 = v63;
            v38 = sub_1D1E68FAC();
            v40 = v39;
            v65 = v30;
            v41 = v64;
            v64(v10, v37);
            v42 = sub_1D1B1312C(v38, v40, v68);

            *(v34 + 14) = v42;
            *(v34 + 22) = 2080;
            v43 = [v31 uniqueIdentifier];
            sub_1D1E66A5C();

            v44 = sub_1D1E68FAC();
            v46 = v45;
            v41(v10, v37);
            v47 = sub_1D1B1312C(v44, v46, v68);

            *(v34 + 24) = v47;
            _os_log_impl(&dword_1D16EC000, v32, v62, "%s removed camera profile %s to home %s", v34, 0x20u);
            v48 = v66;
            swift_arrayDestroy();
            MEMORY[0x1D3893640](v48, -1, -1);
            MEMORY[0x1D3893640](v34, -1, -1);

            v49 = v65;
            goto LABEL_18;
          }
        }

        v14 = *(v7 + 8);
        (v14)(v12, v6);
        if (qword_1EC642458 == -1)
        {
LABEL_15:
          v50 = sub_1D1E6709C();
          __swift_project_value_buffer(v50, qword_1EC64F3F8);
          v51 = v65;
          v52 = sub_1D1E6707C();
          v53 = sub_1D1E6833C();

          if (os_log_type_enabled(v52, v53))
          {
            v54 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            v68[0] = v55;
            *v54 = 136315394;
            *(v54 + 4) = sub_1D1B1312C(0xD000000000000014, 0x80000001D1EB9BC0, v68);
            *(v54 + 12) = 2080;
            v56 = [v51 uniqueIdentifier];
            sub_1D1E66A5C();

            sub_1D17E69E8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
            v57 = sub_1D1E68FAC();
            v59 = v58;
            (v14)(v10, v6);
            v60 = sub_1D1B1312C(v57, v59, v68);

            *(v54 + 14) = v60;
            _os_log_impl(&dword_1D16EC000, v52, v53, "%s failed to add camera, could not find home %s", v54, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1D3893640](v55, -1, -1);
            MEMORY[0x1D3893640](v54, -1, -1);
          }

          v49 = v66;
LABEL_18:

          return;
        }

LABEL_27:
        swift_once();
        goto LABEL_15;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }
  }
}

uint64_t CamerasModel.tearDownForTesting()()
{
  v1[6] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644280, &qword_1D1E755F0);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v2 = sub_1D1E66A7C();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644288, &qword_1D1E755F8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_1D1E67E1C();
  v1[14] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();
  v1[15] = v4;
  v1[16] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D17E4F1C, v4, v3);
}

uint64_t sub_1D17E4F1C()
{
  v1 = *(v0 + 48);
  swift_getKeyPath();
  *(v0 + 40) = v1;
  sub_1D17E69E8(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 136) = v3;
  v4 = *(v3 + 32);
  *(v0 + 200) = v4;
  v5 = 1 << v4;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(v3 + 64);

  v11 = 0;
  if (v7)
  {
    while (1)
    {
      v12 = *(v0 + 136);
LABEL_14:
      v17 = *(v0 + 88);
      v18 = *(v0 + 96);
      v20 = *(v0 + 72);
      v19 = *(v0 + 80);
      v21 = (v7 - 1) & v7;
      v22 = __clz(__rbit64(v7)) | (v11 << 6);
      (*(v19 + 16))(v17, *(v12 + 48) + *(v19 + 72) * v22, v20);
      v23 = *(*(v12 + 56) + 8 * v22);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
      v25 = *(v24 + 48);
      (*(v19 + 32))(v18, v17, v20);
      *(v18 + v25) = v23;
      (*(*(v24 - 8) + 56))(v18, 0, 1, v24);

      v15 = v11;
LABEL_15:
      *(v0 + 144) = v21;
      *(v0 + 152) = v15;
      v26 = *(v0 + 104);
      sub_1D1741A90(*(v0 + 96), v26, &qword_1EC644288, &qword_1D1E755F8);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
      if ((*(*(v27 - 8) + 48))(v26, 1, v27) == 1)
      {
        break;
      }

      v28 = *(*(v0 + 104) + *(v27 + 48));
      *(v0 + 160) = v28;
      v29 = *(v28 + 32);
      *(v0 + 201) = v29;
      v30 = -1 << v29;
      if (-(-1 << v29) < 64)
      {
        v31 = ~(-1 << -(-1 << v29));
      }

      else
      {
        v31 = -1;
      }

      v32 = v31 & *(v28 + 64);
      if (v32)
      {
        v33 = 0;
LABEL_24:
        v36 = *(v0 + 80);
        v37 = *(v0 + 88);
        v38 = *(v0 + 72);
        v39 = *(v0 + 56);
        v40 = (v32 - 1) & v32;
        v41 = __clz(__rbit64(v32)) | (v33 << 6);
        (*(v36 + 16))(v37, *(v28 + 48) + *(v36 + 72) * v41, v38);
        v42 = *(*(v28 + 56) + 8 * v41);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
        v44 = *(v43 + 48);
        (*(v36 + 32))(v39, v37, v38);
        *(v39 + v44) = v42;
        (*(*(v43 - 8) + 56))(v39, 0, 1, v43);

        v35 = v33;
      }

      else
      {
        v34 = 0;
        v35 = ((63 - v30) >> 6) - 1;
        while (v35 != v34)
        {
          v33 = v34 + 1;
          v32 = *(v28 + 72 + 8 * v34++);
          if (v32)
          {
            goto LABEL_24;
          }
        }

        v52 = *(v0 + 56);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
        (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
        v40 = 0;
      }

      *(v0 + 168) = v40;
      *(v0 + 176) = v35;
      v45 = *(v0 + 64);
      sub_1D1741A90(*(v0 + 56), v45, &qword_1EC644280, &qword_1D1E755F0);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
      if ((*(*(v46 - 8) + 48))(v45, 1, v46) != 1)
      {
        v9 = *(*(v0 + 64) + *(v46 + 48));
        *(v0 + 184) = v9;
        v8 = sub_1D17E5564;
        v10 = 0;

        return MEMORY[0x1EEE6DFA0](v8, v9, v10);
      }

      v47 = *(v0 + 104);
      v49 = *(v0 + 72);
      v48 = *(v0 + 80);

      v8 = (*(v48 + 8))(v47, v49);
      v7 = *(v0 + 144);
      v11 = *(v0 + 152);
      if (!v7)
      {
        goto LABEL_6;
      }
    }

    v54 = sub_1D18D8B90(MEMORY[0x1E69E7CC0]);
    sub_1D17E183C(v54);

    v55 = *(v0 + 8);

    return v55();
  }

  else
  {
LABEL_6:
    v13 = ((1 << *(v0 + 200)) + 63) >> 6;
    if (v13 <= (v11 + 1))
    {
      v14 = v11 + 1;
    }

    else
    {
      v14 = ((1 << *(v0 + 200)) + 63) >> 6;
    }

    v15 = v14 - 1;
    while (1)
    {
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v50 = *(v0 + 96);
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
        (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
        v21 = 0;
        goto LABEL_15;
      }

      v12 = *(v0 + 136);
      v7 = *(v12 + 8 * v16 + 64);
      ++v11;
      if (v7)
      {
        v11 = v16;
        goto LABEL_14;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1D17E5564()
{
  v1 = *(v0 + 184);
  v2 = OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask;
  if (*(v1 + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManagerTask))
  {

    sub_1D1E67F5C();
  }

  v3 = *(v0 + 184);
  *(v1 + v2) = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
  sub_1D1E67EDC();
  if (*(v3 + OBJC_IVAR____TtC13HomeDataModel16CameraController_snapshotTimer))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    sub_1D1E67F5C();
  }

  v4 = *(v0 + 184);
  v5 = [*(v4 + 120) streamControl];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 streamState];

    if ((v7 - 1) <= 1)
    {
      v8 = [*(v4 + 120) streamControl];
      [v8 stopStream];
    }
  }

  v9 = *(*(v0 + 184) + OBJC_IVAR____TtC13HomeDataModel16CameraController_batchManager);
  *(v0 + 192) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D17E572C, v9, 0);
}

uint64_t sub_1D17E572C()
{
  v1 = *(v0 + 184);
  sub_1D17CDB9C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E5794, v1, 0);
}

uint64_t sub_1D17E57C0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);

  v4 = (*(v2 + 8))(v3, v1);
  v7 = *(v0 + 168);
  v8 = *(v0 + 176);
  if (v7)
  {
    while (1)
    {
      v9 = *(v0 + 160);
LABEL_11:
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);
      v16 = *(v0 + 72);
      v17 = *(v0 + 56);
      v18 = (v7 - 1) & v7;
      v19 = __clz(__rbit64(v7)) | (v8 << 6);
      (*(v14 + 16))(v15, *(v9 + 48) + *(v14 + 72) * v19, v16);
      v20 = *(*(v9 + 56) + 8 * v19);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
      v22 = *(v21 + 48);
      (*(v14 + 32))(v17, v15, v16);
      *(v17 + v22) = v20;
      (*(*(v21 - 8) + 56))(v17, 0, 1, v21);

      v12 = v8;
LABEL_12:
      *(v0 + 168) = v18;
      *(v0 + 176) = v12;
      v23 = *(v0 + 64);
      sub_1D1741A90(*(v0 + 56), v23, &qword_1EC644280, &qword_1D1E755F0);
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
      if ((*(*(v24 - 8) + 48))(v23, 1, v24) != 1)
      {
        v5 = *(*(v0 + 64) + *(v24 + 48));
        *(v0 + 184) = v5;
        v4 = sub_1D17E5564;
        v6 = 0;

        return MEMORY[0x1EEE6DFA0](v4, v5, v6);
      }

      v25 = *(v0 + 104);
      v27 = *(v0 + 72);
      v26 = *(v0 + 80);

      v4 = (*(v26 + 8))(v25, v27);
      v28 = *(v0 + 144);
      v29 = *(v0 + 152);
      if (!v28)
      {
        break;
      }

      v30 = *(v0 + 136);
LABEL_23:
      v35 = *(v0 + 88);
      v36 = *(v0 + 96);
      v38 = *(v0 + 72);
      v37 = *(v0 + 80);
      v58 = (v28 - 1) & v28;
      v39 = __clz(__rbit64(v28)) | (v29 << 6);
      (*(v37 + 16))(v35, *(v30 + 48) + *(v37 + 72) * v39, v38);
      v40 = *(*(v30 + 56) + 8 * v39);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
      v42 = *(v41 + 48);
      (*(v37 + 32))(v36, v35, v38);
      *(v36 + v42) = v40;
      (*(*(v41 - 8) + 56))(v36, 0, 1, v41);

      v43 = v58;
      v33 = v29;
LABEL_24:
      *(v0 + 144) = v43;
      *(v0 + 152) = v33;
      v44 = *(v0 + 104);
      sub_1D1741A90(*(v0 + 96), v44, &qword_1EC644288, &qword_1D1E755F8);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
      v4 = (*(*(v45 - 8) + 48))(v44, 1, v45);
      if (v4 == 1)
      {

        v55 = sub_1D18D8B90(MEMORY[0x1E69E7CC0]);
        sub_1D17E183C(v55);

        v56 = *(v0 + 8);

        return v56();
      }

      v8 = 0;
      v46 = *(*(v0 + 104) + *(v45 + 48));
      *(v0 + 160) = v46;
      v47 = *(v46 + 32);
      *(v0 + 201) = v47;
      v48 = 1 << v47;
      v49 = *(v46 + 64);
      if (v48 < 64)
      {
        v50 = ~(-1 << v48);
      }

      else
      {
        v50 = -1;
      }

      v7 = v50 & v49;
      if (!v7)
      {
        goto LABEL_3;
      }
    }

    v31 = ((1 << *(v0 + 200)) + 63) >> 6;
    if (v31 <= (v29 + 1))
    {
      v32 = v29 + 1;
    }

    else
    {
      v32 = ((1 << *(v0 + 200)) + 63) >> 6;
    }

    v33 = v32 - 1;
    while (1)
    {
      v34 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v34 >= v31)
      {
        v53 = *(v0 + 96);
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644290, &unk_1D1E79BA0);
        (*(*(v54 - 8) + 56))(v53, 1, 1, v54);
        v43 = 0;
        goto LABEL_24;
      }

      v30 = *(v0 + 136);
      v28 = *(v30 + 8 * v34 + 64);
      ++v29;
      if (v28)
      {
        v29 = v34;
        goto LABEL_23;
      }
    }
  }

  else
  {
LABEL_3:
    v10 = ((1 << *(v0 + 201)) + 63) >> 6;
    if (v10 <= (v8 + 1))
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = ((1 << *(v0 + 201)) + 63) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        v51 = *(v0 + 56);
        v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644298, &qword_1D1E79BB0);
        (*(*(v52 - 8) + 56))(v51, 1, 1, v52);
        v18 = 0;
        goto LABEL_12;
      }

      v9 = *(v0 + 160);
      v7 = *(v9 + 8 * v13 + 64);
      ++v8;
      if (v7)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D17E5D98(uint64_t a1)
{
  v37 = sub_1D1E66A7C();
  v2 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v35 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442B0, &qword_1D1E7E9A0);
  result = sub_1D1E68BAC();
  v5 = result;
  v6 = 0;
  v38 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v32 = result + 64;
  v33 = v2 + 16;
  v36 = v2;
  v30 = v8;
  v31 = v2 + 32;
  v34 = result;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = v37;
      v19 = v38;
      v21 = v35;
      v20 = v36;
      v22 = *(v36 + 72) * v17;
      (*(v36 + 16))(v35, *(v38 + 48) + v22, v37);
      v23 = *(*(v19 + 56) + 8 * v17);
      swift_beginAccess();
      v24 = *(v23 + 112);
      *(v32 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v25 = v34;
      result = (*(v20 + 32))(*(v34 + 48) + v22, v21, v18);
      *(*(v25 + 56) + 8 * v17) = v24;
      v26 = *(v25 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        break;
      }

      v5 = v25;
      *(v25 + 16) = v28;

      v12 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return v5;
      }

      v16 = *(v30 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v39 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D17E6010(uint64_t a1)
{
  sub_1D177868C(319);
  if (v1 <= 0x3F)
  {
    sub_1D1E66CEC();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1D17E60E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D17783E0(a1, &v21 - v13);
  sub_1D17783E0(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D17783E0(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1D17E69E8(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v18 = sub_1D1E6775C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D1741A30(v14, &qword_1EC642980, &unk_1D1E6E6E0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
  v17 = 0;
  return v17 & 1;
}

void *sub_1D17E63D8(void *a1)
{
  v48 = sub_1D1E66A7C();
  v43 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v49 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v4 = sub_1D1E67C1C();

  v50[0] = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_29:
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v8 = v7;
    v9 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1D3891EF0](v9, v4);
      }

      else
      {
        if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_27;
        }

        v10 = *(v4 + 8 * v9 + 32);
      }

      v11 = v10;
      v6 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        v5 = sub_1D1E6873C();
        if (!v5)
        {
          goto LABEL_29;
        }

        goto LABEL_3;
      }

      v12 = [v10 cameraProfiles];
      if (v12)
      {
        break;
      }

LABEL_6:

      ++v9;
      if (v6 == v5)
      {
        v7 = v8;
LABEL_30:

        v18 = sub_1D18D8BB4(MEMORY[0x1E69E7CC0]);
        if (v7 >> 62)
        {
          goto LABEL_55;
        }

        v19 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v19)
        {
LABEL_56:

          return v18;
        }

LABEL_32:
        v20 = 0;
        v46 = v7 & 0xFFFFFFFFFFFFFF8;
        v47 = v7 & 0xC000000000000001;
        v42[1] = v43 + 16;
        v44 = v7;
        v45 = (v43 + 8);
        while (1)
        {
          if (v47)
          {
            v21 = MEMORY[0x1D3891EF0](v20, v7);
          }

          else
          {
            if (v20 >= *(v46 + 16))
            {
              goto LABEL_52;
            }

            v21 = *(v7 + 8 * v20 + 32);
          }

          v22 = v21;
          v23 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            v19 = sub_1D1E6873C();
            if (!v19)
            {
              goto LABEL_56;
            }

            goto LABEL_32;
          }

          v24 = [v21 uniqueIdentifier];
          sub_1D1E66A5C();

          v50[0] = 0;
          v50[1] = 0;
          v51 = 2;
          type metadata accessor for CameraController(0);
          swift_allocObject();
          v25 = v22;
          v26 = sub_1D17CA954(v25, v50);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v50[0] = v18;
          v7 = v18;
          v29 = sub_1D1742188();
          v30 = v18[2];
          v31 = (v28 & 1) == 0;
          v32 = v30 + v31;
          if (__OFADD__(v30, v31))
          {
            goto LABEL_53;
          }

          v33 = v28;
          if (v18[3] >= v32)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v18 = v50[0];
              if (v28)
              {
                goto LABEL_33;
              }
            }

            else
            {
              sub_1D1737C58();
              v18 = v50[0];
              if (v33)
              {
                goto LABEL_33;
              }
            }
          }

          else
          {
            sub_1D172655C(v32, isUniquelyReferenced_nonNull_native);
            v34 = sub_1D1742188();
            if ((v33 & 1) != (v35 & 1))
            {
              goto LABEL_58;
            }

            v29 = v34;
            v18 = v50[0];
            if (v33)
            {
LABEL_33:
              *(v18[7] + 8 * v29) = v26;

              (*v45)(v49, v48);
              goto LABEL_34;
            }
          }

          v18[(v29 >> 6) + 8] |= 1 << v29;
          v36 = v43;
          v7 = v48;
          v37 = v49;
          (*(v43 + 16))(v18[6] + *(v43 + 72) * v29, v49, v48);
          *(v18[7] + 8 * v29) = v26;

          (*(v36 + 8))(v37, v7);
          v38 = v18[2];
          v39 = __OFADD__(v38, 1);
          v40 = v38 + 1;
          if (v39)
          {
            goto LABEL_54;
          }

          v18[2] = v40;
LABEL_34:
          ++v20;
          v7 = v44;
          if (v23 == v19)
          {
            goto LABEL_56;
          }
        }
      }
    }

    v13 = v12;
    sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
    v14 = sub_1D1E67C1C();

    v15 = v14;
    if (!(v14 >> 62))
    {
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      goto LABEL_5;
    }

    v16 = sub_1D1E6873C();
    v15 = v14;
    if (!v16)
    {
LABEL_5:

      goto LABEL_6;
    }

LABEL_17:
    if ((v15 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1D3891EF0](0);
LABEL_20:

      MEMORY[0x1D3891220]();
      if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
      v7 = v50[0];
      if (v6 == v5)
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v15 + 32);
    goto LABEL_20;
  }

  __break(1u);
LABEL_58:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D17E695C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D17E69E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall CamerasModel.homeManagerDidUpdateHomes(_:)(HMHomeManager a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - v5;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v7 = sub_1D1E6709C();
  __swift_project_value_buffer(v7, qword_1EC64F3F8);
  v8 = a1.super.isa;
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();

  if (!os_log_type_enabled(v9, v10))
  {
    goto LABEL_13;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v29 = v12;
  *v11 = 136315394;
  *(v11 + 4) = sub_1D1B1312C(0xD00000000000001DLL, 0x80000001D1EB9C30, &v29);
  *(v11 + 12) = 2080;
  v13 = [(objc_class *)v8 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v14 = sub_1D1E67C1C();

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_11:

    v20 = 0xE400000000000000;
    v18 = 1701736302;
    goto LABEL_12;
  }

  if (!sub_1D1E6873C())
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1D3891EF0](0, v14);
    goto LABEL_9;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v14 + 32);
LABEL_9:
    v16 = v15;

    v17 = [v16 name];

    v18 = sub_1D1E6781C();
    v20 = v19;

LABEL_12:
    v21 = sub_1D1B1312C(v18, v20, &v29);

    *(v11 + 14) = v21;
    _os_log_impl(&dword_1D16EC000, v9, v10, "%s current is: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
LABEL_13:

    v22 = sub_1D1E67E7C();
    (*(*(v22 - 8) + 56))(v6, 1, 1, v22);
    sub_1D1E67E1C();
    v23 = v8;
    v24 = v2;
    v25 = sub_1D1E67E0C();
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E85E0];
    v26[2] = v25;
    v26[3] = v27;
    v26[4] = v24;
    v26[5] = v23;
    sub_1D17C6EF0(0, 0, v6, &unk_1D1E75650, v26);

    return;
  }

  __break(1u);
}

uint64_t sub_1D17E6DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D1E67E1C();
  v5[4] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E6E7C, v7, v6);
}

uint64_t sub_1D17E6E7C()
{
  v1 = *(v0 + 24);

  _s13HomeDataModel07CamerasC0C15setupForTesting4withySo13HMHomeManagerC_tF_0(v1);
  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall CamerasModel.homeManagerDidUpdatePrimaryHome(_:)(HMHomeManager a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v39 - v5);
  if (qword_1EC642458 != -1)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v7 = sub_1D1E6709C();
    __swift_project_value_buffer(v7, qword_1EC64F3F8);
    v8 = a1.super.isa;
    a1.super.isa = sub_1D1E6707C();
    v9 = sub_1D1E6835C();

    if (!os_log_type_enabled(a1.super.isa, v9))
    {
      break;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v44 = v11;
    *v10 = 136315650;
    *(v10 + 4) = sub_1D1B1312C(0xD000000000000023, 0x80000001D1EB9C50, &v44);
    *(v10 + 12) = 2080;
    v12 = [(objc_class *)v8 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v13 = sub_1D1E67C1C();

    v42 = v2;
    v43 = v6;
    isa = a1.super.isa;
    v40 = v9;
    v39 = v11;
    if (v13 >> 62)
    {
      v14 = sub_1D1E6873C();
      if (!v14)
      {
LABEL_19:

        v21 = 0xE400000000000000;
        v22 = 1701736302;
LABEL_20:
        v23 = sub_1D1B1312C(v22, v21, &v44);

        *(v10 + 14) = v23;
        *(v10 + 22) = 2080;
        v24 = [(objc_class *)v8 currentHome];
        v2 = v42;
        v6 = v43;
        a1.super.isa = isa;
        v25 = v40;
        v26 = 1701736302;
        if (v24)
        {
          v27 = v24;
          v28 = [v24 name];

          v26 = sub_1D1E6781C();
          v30 = v29;
        }

        else
        {
          v30 = 0xE400000000000000;
        }

        v31 = sub_1D1B1312C(v26, v30, &v44);

        *(v10 + 24) = v31;
        _os_log_impl(&dword_1D16EC000, a1.super.isa, v25, "%s primary: %s, current: %s", v10, 0x20u);
        v32 = v39;
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v32, -1, -1);
        MEMORY[0x1D3893640](v10, -1, -1);
        break;
      }
    }

    else
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
        goto LABEL_19;
      }
    }

    v15 = 0;
    v2 = (v13 & 0xFFFFFFFFFFFFFF8);
    v6 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1D3891EF0](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      a1.super.isa = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if ([v16 isPrimary])
      {

        v18 = [v17 name];

        v19 = sub_1D1E6781C();
        v21 = v20;

        v22 = v19;
        goto LABEL_20;
      }

      ++v15;
      if (a1.super.isa == v14)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    swift_once();
  }

  v33 = sub_1D1E67E7C();
  (*(*(v33 - 8) + 56))(v6, 1, 1, v33);
  sub_1D1E67E1C();
  v34 = v8;
  v35 = v2;
  v36 = sub_1D1E67E0C();
  v37 = swift_allocObject();
  v38 = MEMORY[0x1E69E85E0];
  v37[2] = v36;
  v37[3] = v38;
  v37[4] = v35;
  v37[5] = v34;
  sub_1D17C6EF0(0, 0, v6, &unk_1D1E75660, v37);
}

uint64_t sub_1D17E73D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D1E67E1C();
  v5[4] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17EABFC, v7, v6);
}

Swift::Void __swiftcall CamerasModel.homeManagerDidUpdateCurrentHome(_:)(HMHomeManager a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v7 = sub_1D1E6709C();
  __swift_project_value_buffer(v7, qword_1EC64F3F8);
  v8 = a1.super.isa;
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v27 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1D1B1312C(0xD000000000000023, 0x80000001D1EB9C80, &v27);
    *(v11 + 12) = 2080;
    v13 = [(objc_class *)v8 currentHome];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 name];

      v16 = sub_1D1E6781C();
      v18 = v17;
    }

    else
    {
      v18 = 0xE400000000000000;
      v16 = 1701736302;
    }

    v19 = sub_1D1B1312C(v16, v18, &v27);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_1D16EC000, v9, v10, "%s current: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  v20 = sub_1D1E67E7C();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  sub_1D1E67E1C();
  v21 = v8;
  v22 = v2;
  v23 = sub_1D1E67E0C();
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  v24[2] = v23;
  v24[3] = v25;
  v24[4] = v22;
  v24[5] = v21;
  sub_1D17C6EF0(0, 0, v6, &unk_1D1E75670, v24);
}

uint64_t sub_1D17E77D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D1E67E1C();
  v5[4] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E786C, v7, v6);
}

uint64_t sub_1D17E786C()
{
  v1 = *(v0 + 24);

  sub_1D17E2D84(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D17E78E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D1E67E1C();
  v5[4] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E7978, v7, v6);
}

uint64_t sub_1D17E7978()
{
  v1 = *(v0 + 24);

  sub_1D17E3414(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D17E7A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1D1E67E1C();
  v5[4] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E7AFC, v7, v6);
}

uint64_t sub_1D17E7AFC()
{
  v1 = *(v0 + 24);

  sub_1D17E39B0(v1);
  v2 = *(v0 + 8);

  return v2();
}

Swift::Void __swiftcall CamerasModel.home(_:didAdd:)(HMHome _, HMAccessory didAdd)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC64F3F8);
  v12 = didAdd.super.isa;
  v13 = _.super.isa;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6835C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v41 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_1D1B1312C(0x643A5F28656D6F68, 0xEF293A6464416469, &v41);
    *(v17 + 12) = 2080;
    v19 = [(objc_class *)v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D17EA9EC(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v20 = sub_1D1E68FAC();
    v21 = v8;
    v23 = v22;
    (*(v21 + 8))(v10, v7);
    v24 = sub_1D1B1312C(v20, v23, &v41);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2080;
    v25 = [(objc_class *)v13 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = sub_1D1B1312C(v26, v28, &v41);

    *(v17 + 24) = v29;
    _os_log_impl(&dword_1D16EC000, v14, v15, "%s adding camera %s to home %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v18, -1, -1);
    v30 = v17;
    v6 = v39;
    MEMORY[0x1D3893640](v30, -1, -1);
  }

  v31 = sub_1D1E67E7C();
  (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
  sub_1D1E67E1C();
  v32 = v12;
  v33 = v13;
  v34 = v40;
  v35 = sub_1D1E67E0C();
  v36 = swift_allocObject();
  v37 = MEMORY[0x1E69E85E0];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v34;
  v36[5] = v32;
  v36[6] = v33;
  sub_1D17C6EF0(0, 0, v6, &unk_1D1E75680, v36);
}

uint64_t sub_1D17E8014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D1E67E1C();
  v6[5] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E80B0, v8, v7);
}

uint64_t sub_1D17E80B0()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_1D17E3B60(v2, v1);
  v3 = v0[1];

  return v3();
}

Swift::Void __swiftcall CamerasModel.home(_:didRemove:)(HMHome _, HMAccessory didRemove)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC64F3F8);
  v12 = didRemove.super.isa;
  v13 = _.super.isa;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6835C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v41 = v18;
    *v17 = 136315650;
    *(v17 + 4) = sub_1D1B1312C(0xD000000000000012, 0x80000001D1EB9CB0, &v41);
    *(v17 + 12) = 2080;
    v19 = [(objc_class *)v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D17EA9EC(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v20 = sub_1D1E68FAC();
    v21 = v8;
    v23 = v22;
    (*(v21 + 8))(v10, v7);
    v24 = sub_1D1B1312C(v20, v23, &v41);

    *(v17 + 14) = v24;
    *(v17 + 22) = 2080;
    v25 = [(objc_class *)v13 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = sub_1D1B1312C(v26, v28, &v41);

    *(v17 + 24) = v29;
    _os_log_impl(&dword_1D16EC000, v14, v15, "%s removing camera %s from home %s", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v18, -1, -1);
    v30 = v17;
    v6 = v39;
    MEMORY[0x1D3893640](v30, -1, -1);
  }

  v31 = sub_1D1E67E7C();
  (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
  sub_1D1E67E1C();
  v32 = v12;
  v33 = v13;
  v34 = v40;
  v35 = sub_1D1E67E0C();
  v36 = swift_allocObject();
  v37 = MEMORY[0x1E69E85E0];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = v34;
  v36[5] = v32;
  v36[6] = v33;
  sub_1D17C6EF0(0, 0, v6, &unk_1D1E75690, v36);
}

uint64_t sub_1D17E85C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_1D1E67E1C();
  v6[5] = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E8664, v8, v7);
}

uint64_t sub_1D17E8664()
{
  v1 = v0[4];
  v2 = v0[3];

  sub_1D17E44B4(v2, v1);
  v3 = v0[1];

  return v3();
}

Swift::Void __swiftcall CamerasModel.accessoryDidUpdateName(_:)(HMAccessory a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v83 - v3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v96 = &v83 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v83 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v95 = &v83 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v83 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v99 = &v83 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v83 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v83 - v24;
  v26 = [(objc_class *)a1.super.isa home];
  if (!v26)
  {
    return;
  }

  v90 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v4;
  v27 = v26;
  v28 = [v26 uniqueIdentifier];
  v97 = v6;
  v29 = v28;

  sub_1D1E66A5C();
  v30 = v97;
  v92 = *(v97 + 32);
  v93 = v97 + 32;
  v92(v25, v23, v5);
  v31 = [(objc_class *)a1.super.isa cameraProfiles];
  if (!v31)
  {
    (*(v30 + 8))(v25, v5);
    return;
  }

  v32 = v31;
  v98 = v25;
  sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
  v33 = sub_1D1E67C1C();

  if (v33 >> 62)
  {
    v82 = sub_1D1E6873C();
    v34 = v98;
    if (v82)
    {
      goto LABEL_5;
    }

LABEL_16:
    (*(v30 + 8))(v34, v5);

    return;
  }

  v34 = v98;
  if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v33 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x1D3891EF0](0, v33);
  }

  else
  {
    if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v35 = *(v33 + 32);
  }

  v36 = v35;
  v37 = v13;

  v38 = [v36 uniqueIdentifier];

  sub_1D1E66A5C();
  v39 = v99;
  v92(v99, v18, v5);
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v40 = sub_1D1E6709C();
  __swift_project_value_buffer(v40, qword_1EC64F3F8);
  v41 = *(v30 + 16);
  v42 = v95;
  v41(v95, v98, v5);
  v88 = v41;
  v41(v13, v39, v5);
  v43 = a1.super.isa;
  v44 = sub_1D1E6707C();
  v45 = sub_1D1E6835C();

  v46 = os_log_type_enabled(v44, v45);
  v89 = v30 + 16;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v85 = v45;
    v48 = v47;
    v86 = swift_slowAlloc();
    v100 = v86;
    *v48 = 136315906;
    *(v48 + 4) = sub_1D1B1312C(0xD00000000000001ALL, 0x80000001D1EB9CD0, &v100);
    *(v48 + 12) = 2080;
    sub_1D17EA9EC(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v84 = v44;
    v49 = sub_1D1E68FAC();
    v51 = v50;
    v52 = v43;
    v53 = *(v97 + 8);
    v87 = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v53(v42, v5);
    v54 = sub_1D1B1312C(v49, v51, &v100);
    v30 = v97;

    *(v48 + 14) = v54;
    *(v48 + 22) = 2080;
    v55 = sub_1D1E68FAC();
    v57 = v56;
    v95 = v53;
    v53(v37, v5);
    v58 = sub_1D1B1312C(v55, v57, &v100);

    *(v48 + 24) = v58;
    *(v48 + 32) = 2080;
    v59 = [(objc_class *)v52 name];
    v60 = sub_1D1E6781C();
    v62 = v61;

    v63 = sub_1D1B1312C(v60, v62, &v100);
    v39 = v99;

    *(v48 + 34) = v63;
    v64 = v84;
    _os_log_impl(&dword_1D16EC000, v84, v85, "%s home: %s camera: %s updated name to: %s", v48, 0x2Au);
    v65 = v86;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v65, -1, -1);
    MEMORY[0x1D3893640](v48, -1, -1);
  }

  else
  {

    v66 = *(v30 + 8);
    v87 = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v66(v13, v5);
    v95 = v66;
    v66(v42, v5);
  }

  v67 = v94;
  v68 = sub_1D1E67E7C();
  v69 = v91;
  (*(*(v68 - 8) + 56))(v91, 1, 1, v68);
  v70 = v96;
  v71 = v88;
  v88(v96, v98, v5);
  v72 = v90;
  v71(v90, v39, v5);
  sub_1D1E67E1C();
  v73 = v67;
  v74 = sub_1D1E67E0C();
  v75 = *(v30 + 80);
  v76 = (v75 + 40) & ~v75;
  v77 = (v7 + v75 + v76) & ~v75;
  v78 = swift_allocObject();
  v79 = MEMORY[0x1E69E85E0];
  *(v78 + 2) = v74;
  *(v78 + 3) = v79;
  *(v78 + 4) = v73;
  v80 = v92;
  v92(&v78[v76], v70, v5);
  v80(&v78[v77], v72, v5);
  sub_1D17C6EF0(0, 0, v69, &unk_1D1E756A0, v78);

  v81 = v95;
  (v95)(v99, v5);
  v81(v98, v5);
}

uint64_t sub_1D17E8FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  sub_1D1E67E1C();
  v6[16] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17E90B0, v9, v8);
}

uint64_t sub_1D17E90B0()
{
  v1 = *(v0 + 80);

  swift_getKeyPath();
  *(v0 + 72) = v1;
  sub_1D17EA9EC(&qword_1EC644268, type metadata accessor for CamerasModel, &protocol conformance descriptor for CamerasModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtC13HomeDataModel12CamerasModel__homesToCameraControllers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16))
  {

    v4 = sub_1D1742188();
    if (v5 & 1) != 0 && (v6 = *(*(v3 + 56) + 8 * v4), , , *(v6 + 16)) && (sub_1D1742188(), (v7))
    {
      v9 = *(v0 + 112);
      v8 = *(v0 + 120);
      v10 = *(v0 + 104);

      *(v0 + 24) = 0;
      *(v0 + 32) = 0;
      *(v0 + 16) = 0;
      *(v0 + 40) = -126;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644450, &qword_1D1EB1A20);
      sub_1D1E67ECC();

      (*(v9 + 8))(v8, v10);
    }

    else
    {
    }
  }

  v11 = *(v0 + 8);

  return v11();
}

Swift::Void __swiftcall CamerasModel.accessoryDidUpdateReachability(_:)(HMAccessory a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v80 - v3;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v80 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v95 = &v80 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v94 = &v80 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v80 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v96 = &v80 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v80 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v80 - v24;
  v26 = [(objc_class *)a1.super.isa home];
  if (!v26)
  {
    return;
  }

  v88 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v11;
  v90 = v4;
  v27 = v26;
  v28 = [v26 uniqueIdentifier];

  sub_1D1E66A5C();
  v29 = (v6 + 32);
  v92 = *(v6 + 32);
  v92(v25, v23, v5);
  v30 = [(objc_class *)a1.super.isa cameraProfiles];
  v31 = v25;
  if (!v30)
  {
    (*(v6 + 8))(v25, v5);
    return;
  }

  v32 = v30;
  isa = a1.super.isa;
  v91 = v6;
  sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
  v33 = sub_1D1E67C1C();

  if (v33 >> 62)
  {
    v79 = sub_1D1E6873C();
    v34 = v94;
    v35 = v95;
    if (v79)
    {
      goto LABEL_5;
    }

LABEL_16:
    (*(v91 + 8))(v25, v5);

    return;
  }

  v34 = v94;
  v35 = v95;
  if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v33 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x1D3891EF0](0, v33);
  }

  else
  {
    if (!*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v36 = *(v33 + 32);
  }

  v37 = v36;

  v38 = [v37 uniqueIdentifier];

  sub_1D1E66A5C();
  v39 = v96;
  v92(v96, v18, v5);
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v95 = v29;
  v40 = sub_1D1E6709C();
  __swift_project_value_buffer(v40, qword_1EC64F3F8);
  v41 = v91;
  v42 = v91 + 16;
  v43 = *(v91 + 16);
  v43(v34, v31, v5);
  v84 = v43;
  v85 = v42;
  v43(v35, v39, v5);
  v83 = isa;
  v44 = v34;
  v45 = sub_1D1E6707C();
  v46 = sub_1D1E6835C();
  v47 = os_log_type_enabled(v45, v46);
  v87 = v31;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v97 = v82;
    *v48 = 136315906;
    *(v48 + 4) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EB9CF0, &v97);
    *(v48 + 12) = 2080;
    sub_1D17EA9EC(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v81 = v46;
    v49 = sub_1D1E68FAC();
    v80 = v45;
    v51 = v50;
    v52 = *(v91 + 8);
    isa = ((v91 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v52(v44, v5);
    v53 = sub_1D1B1312C(v49, v51, &v97);

    *(v48 + 14) = v53;
    *(v48 + 22) = 2080;
    v54 = sub_1D1E68FAC();
    v56 = v55;
    v94 = v52;
    v52(v35, v5);
    v41 = v91;
    v57 = sub_1D1B1312C(v54, v56, &v97);

    *(v48 + 24) = v57;
    *(v48 + 32) = 1024;
    v58 = v83;
    LODWORD(v57) = [v83 isReachable];

    *(v48 + 34) = v57;
    v59 = v80;
    _os_log_impl(&dword_1D16EC000, v80, v81, "%s home: %s camera: %s reachable: %{BOOL}d", v48, 0x26u);
    v60 = v82;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v60, -1, -1);
    v61 = v48;
    v39 = v96;
    MEMORY[0x1D3893640](v61, -1, -1);
  }

  else
  {

    v62 = v83;
    v63 = *(v41 + 8);
    isa = ((v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v63(v35, v5);
    v94 = v63;
    v63(v44, v5);
  }

  v64 = v93;
  v65 = sub_1D1E67E7C();
  v66 = v90;
  (*(*(v65 - 8) + 56))(v90, 1, 1, v65);
  v67 = v89;
  v68 = v84;
  v84(v89, v87, v5);
  v69 = v88;
  v68(v88, v39, v5);
  sub_1D1E67E1C();
  v70 = v64;
  v71 = sub_1D1E67E0C();
  v72 = *(v41 + 80);
  v73 = (v72 + 40) & ~v72;
  v74 = (v7 + v72 + v73) & ~v72;
  v75 = swift_allocObject();
  v76 = MEMORY[0x1E69E85E0];
  *(v75 + 2) = v71;
  *(v75 + 3) = v76;
  *(v75 + 4) = v70;
  v77 = v92;
  v92(&v75[v73], v67, v5);
  v77(&v75[v74], v69, v5);
  sub_1D17C6EF0(0, 0, v66, &unk_1D1E756B0, v75);

  v78 = v94;
  (v94)(v96, v5);
  v78(v87, v5);
}

uint64_t sub_1D17E9B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC643FF0, &qword_1D1E744A8);
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  sub_1D1E67E1C();
  v6[16] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17EAC00, v9, v8);
}

uint64_t sub_1D17E9CE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D17E6DE4(a1, v4, v5, v7, v6);
}

uint64_t sub_1D17E9DA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D17E73D4(a1, v4, v5, v7, v6);
}

uint64_t sub_1D17E9E68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D17E77D4(a1, v4, v5, v7, v6);
}

uint64_t sub_1D17E9F28(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v7 = sub_1D1E6709C();
  __swift_project_value_buffer(v7, qword_1EC64F3F8);
  v8 = a1;
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EB9D50, &v26);
    *(v11 + 12) = 2080;
    v13 = [v8 name];
    v14 = sub_1D1E6781C();
    v16 = v15;

    v17 = sub_1D1B1312C(v14, v16, &v26);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_1D16EC000, v9, v10, "%s adding home: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  v18 = sub_1D1E67E7C();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_1D1E67E1C();
  v19 = v8;
  v20 = v2;
  v21 = sub_1D1E67E0C();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v20;
  v22[5] = v19;
  sub_1D17C6EF0(0, 0, v6, &unk_1D1E756F8, v22);
}

uint64_t sub_1D17EA1F4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v25 - v5;
  if (qword_1EC642458 != -1)
  {
    swift_once();
  }

  v7 = sub_1D1E6709C();
  __swift_project_value_buffer(v7, qword_1EC64F3F8);
  v8 = a1;
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1D1B1312C(0xD000000000000019, 0x80000001D1EB9D30, &v26);
    *(v11 + 12) = 2080;
    v13 = [v8 name];
    v14 = sub_1D1E6781C();
    v16 = v15;

    v17 = sub_1D1B1312C(v14, v16, &v26);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_1D16EC000, v9, v10, "%s removing home: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  v18 = sub_1D1E67E7C();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  sub_1D1E67E1C();
  v19 = v8;
  v20 = v2;
  v21 = sub_1D1E67E0C();
  v22 = swift_allocObject();
  v23 = MEMORY[0x1E69E85E0];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v20;
  v22[5] = v19;
  sub_1D17C6EF0(0, 0, v6, &unk_1D1E756E8, v22);
}

uint64_t sub_1D17EA4C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D17E8014(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D17EA5D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D17E85C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D17EA6A0(uint64_t a1)
{
  v4 = *(sub_1D1E66A7C() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D17E8FAC(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

uint64_t objectdestroy_19Tm()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

uint64_t sub_1D17EA8C0(uint64_t a1)
{
  v4 = *(sub_1D1E66A7C() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D17E9B54(a1, v8, v9, v10, v1 + v6, v1 + v7);
}

uint64_t sub_1D17EA9EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D17EAA34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D17E7A64(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D17EAB3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D17E78E0(a1, v4, v5, v7, v6);
}

HomeDataModel::WaveformData::Source_optional __swiftcall WaveformData.Source.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t WaveformData.Source.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696F6774756FLL;
  }

  else
  {
    return 0x676E696D6F636E69;
  }
}

uint64_t sub_1D17EACB8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x676E696F6774756FLL;
  }

  else
  {
    v2 = 0x676E696D6F636E69;
  }

  if (*a2)
  {
    v3 = 0x676E696F6774756FLL;
  }

  else
  {
    v3 = 0x676E696D6F636E69;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D1E6904C();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D17EAD40()
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D17EADB8(uint64_t a1)
{
  sub_1D1E678EC();
}

uint64_t sub_1D17EAE14(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D17EAE88@<X0>(char *a2@<X8>)
{
  v3 = sub_1D1E68C2C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1D17EAEE8(uint64_t *a1@<X8>)
{
  v2 = 0x676E696D6F636E69;
  if (*v1)
  {
    v2 = 0x676E696F6774756FLL;
  }

  *a1 = v2;
  a1[1] = 0xE800000000000000;
}

uint64_t _s13HomeDataModel08WaveformB0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*a1)
  {
    v4 = 0x676E696F6774756FLL;
  }

  else
  {
    v4 = 0x676E696D6F636E69;
  }

  if (*a2)
  {
    v5 = 0x676E696F6774756FLL;
  }

  else
  {
    v5 = 0x676E696D6F636E69;
  }

  if (v4 == v5)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v6 = sub_1D1E6904C();
    swift_bridgeObjectRelease_n();
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_1D177BC00(v2, v3);
}

unint64_t sub_1D17EAFF0()
{
  result = qword_1EC644460[0];
  if (!qword_1EC644460[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC644460);
  }

  return result;
}

uint64_t sub_1D17EB068(uint64_t a1)
{
  result = sub_1D1E685AC();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *sub_1D17EB128(uint64_t a1)
{
  v2 = v1;
  v19 = *v1;
  v3 = *(v19 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v18 - v6;
  if (*&v2[v5[16]])
  {

    sub_1D1E67F5C();

    v5 = *v2;
  }

  v8 = &v2[v5[14]];
  v9 = *v8;
  LOBYTE(v8) = v8[8];
  v10 = &v2[v5[15]];
  v18 = *v10;
  v11 = v10[8];
  v12 = v5[13];
  v13 = (v4 + 48);
  v14 = (v4 + 16);
  v15 = (v4 + 8);
  if ((v8 & 1) != 0 || (*v13)(&v2[v12], 1, v3))
  {
    if (v11)
    {
      goto LABEL_9;
    }
  }

  else
  {
    (*v14)(v7, &v2[v12], v3);
    (*(*(v19 + 88) + 32))(v9, v3);
    (*v15)(v7, v3);
    if (v11)
    {
      goto LABEL_9;
    }
  }

  if (!(*v13)(&v2[v12], 1, v3))
  {
    (*v14)(v7, &v2[v12], v3);
    (*(*(v19 + 88) + 32))(v18, v3);
    (*v15)(v7, v3);
  }

LABEL_9:
  v16 = sub_1D1E685AC();
  (*(*(v16 - 8) + 8))(&v2[v12], v16);

  sub_1D17EC17C(*&v2[*(*v2 + 136)]);
  sub_1D17EC17C(*&v2[*(*v2 + 144)]);
  swift_defaultActor_destroy();
  return v2;
}

uint64_t sub_1D17EB460(uint64_t a1)
{
  sub_1D17EB128(a1);

  return MEMORY[0x1EEE6DEF0](v1);
}

id sub_1D17EB4C0()
{
  v1 = sub_1D1E6750C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter____lazy_storage___meter;
  v6 = *(v0 + OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter____lazy_storage___meter);
  if (v6)
  {
    v7 = *(v0 + OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter____lazy_storage___meter);
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_configuration);
    v9 = *(v0 + OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_configuration + 8);
    v10 = *(v0 + OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_configuration + 12);
    v11 = *(v0 + OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_configuration + 16);
    sub_1D1741B10(0, &qword_1EC642608, 0x1E69E9610);
    (*(v2 + 104))(v4, *MEMORY[0x1E69E7F98], v1);
    v12 = v0;
    v13 = sub_1D1E683CC();
    (*(v2 + 8))(v4, v1);
    v14 = objc_allocWithZone(MEMORY[0x1E6986560]);
    v20 = v8;
    v21 = v9;
    v22 = v10;
    v23 = v11;
    v15 = [v14 initWithConfig:&v20 delegate:v12 queue:v13];

    v16 = *(v12 + v5);
    *(v12 + v5) = v15;
    v7 = v15;

    v6 = 0;
  }

  v17 = v6;
  return v7;
}

id sub_1D17EB684(int a1, double a2)
{
  v21 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644618, &qword_1D1E759E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6445F0, &unk_1D1E759D0);
  v8 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6445C8, &qword_1D1E759C0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - v13;
  *&v2[OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter____lazy_storage___meter] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644540, &qword_1D1E75908);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8650], v4);
  sub_1D1E67E8C();
  (*(v5 + 8))(v7, v4);
  (*(v12 + 16))(&v2[OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_stream], v14, v11);
  v15 = v20;
  (*(v8 + 16))(&v2[OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_continuation], v10, v20);
  v16 = &v2[OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_configuration];
  *v16 = 0;
  *(v16 + 2) = 0;
  *(v16 + 6) = v21;
  *(v16 + 2) = a2;
  *&v2[OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_tokens] = MEMORY[0x1E69E7CD0];
  v17 = type metadata accessor for PowerSpectrumMeter(0);
  v22.receiver = v2;
  v22.super_class = v17;
  v18 = objc_msgSendSuper2(&v22, sel_init);
  (*(v8 + 8))(v10, v15);
  (*(v12 + 8))(v14, v11);
  return v18;
}

void sub_1D17EB9B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6445F0, &unk_1D1E759D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  (*(v3 + 16))(&v18 - v4, &v1[OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_continuation], v2);
  sub_1D1E67EDC();
  (*(v3 + 8))(v5, v2);
  v6 = OBJC_IVAR____TtC13HomeDataModel18PowerSpectrumMeter_tokens;
  swift_beginAccess();
  v7 = *&v1[v6];
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 56);
  v11 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(*(v7 + 48) + ((v13 << 9) | (8 * v14)));
    v16 = sub_1D17EB4C0();
    [v16 unregisterPowerSpectrumForStreamToken_];
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      v17 = type metadata accessor for PowerSpectrumMeter(0);
      v19.receiver = v1;
      v19.super_class = v17;
      objc_msgSendSuper2(&v19, sel_dealloc);
      return;
    }

    v10 = *(v7 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t type metadata accessor for PowerSpectrumMeter(uint64_t a1)
{
  result = qword_1EC644528;
  if (!qword_1EC644528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D17EBD54(uint64_t a1)
{
  sub_1D17EBE74(319, &qword_1EC644538, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    sub_1D17EBE74(319, &qword_1EC644548, MEMORY[0x1E69E8660]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D17EBE74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644540, &qword_1D1E75908);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D17EBEE0(uint64_t a1)
{
  v2 = sub_1D17EB4C0();
  [v2 unregisterPowerSpectrumForStreamToken_];

  swift_beginAccess();
  sub_1D1AE0748(a1);
  return swift_endAccess();
}

void sub_1D17EBF60()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6445C8, &qword_1D1E759C0);
  sub_1D1E67EFC();
}

unint64_t sub_1D17EC098()
{
  result = qword_1EC6445B0;
  if (!qword_1EC6445B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643F30, &qword_1D1E74588);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6445B0);
  }

  return result;
}

unint64_t sub_1D17EC0FC(uint64_t a1)
{
  result = sub_1D17EC124();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D17EC124()
{
  result = qword_1EC6445C0;
  if (!qword_1EC6445C0)
  {
    type metadata accessor for PowerSpectrumMeter(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6445C0);
  }

  return result;
}

uint64_t sub_1D17EC17C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v15 - v4;

  os_unfair_lock_lock((a1 + 48));
  v6 = *(a1 + 40);

  os_unfair_lock_unlock((a1 + 48));
  v15[1] = a1;

  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;

  for (i = 0; v9; result = (*(v3 + 8))(v5, v2))
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    (*(v3 + 16))(v5, *(v6 + 56) + *(v3 + 72) * (v14 | (v13 << 6)), v2);
    sub_1D1E67EDC();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
    }

    v9 = *(v6 + 64 + 8 * v13);
    ++i;
    if (v9)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1D17EC360(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6445E8, &qword_1D1E759C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v45 - v6;
  if (!a1)
  {
    v8 = sub_1D18D8BFC(MEMORY[0x1E69E7CC0]);
    if ((v8 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = -1 << *(v8 + 32);
    v10 = v8 + 64;
    v11 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v54 = v14 & *(v8 + 64);
    goto LABEL_9;
  }

  v8 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1D1E68ACC();
  v10 = 0;
  v11 = 0;
  v54 = 0;
  v8 = v9 | 0x8000000000000000;
LABEL_9:

  v15 = 0;
  v45[1] = v11;
  v46 = v7;
  v16 = (v11 + 64) >> 6;
  v49 = (v5 + 8);
  v50 = v16;
  v51 = v10;
  v52 = v8;
  v47 = v4;
  v48 = v2;
  while (1)
  {
    v18 = v54;
    if ((v8 & 0x8000000000000000) == 0)
    {
      break;
    }

    v27 = sub_1D1E68ADC();
    if (!v27 || (v29 = v28, v55 = v27, sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98), swift_dynamicCast(), v25 = v56, v55 = v29, sub_1D1741B10(0, &qword_1EC6445D8, 0x1E6986548), swift_dynamicCast(), v26 = v56, v21 = v18, !v25))
    {
LABEL_45:
      sub_1D1716918(v52);
      return;
    }

LABEL_22:
    v53 = v26;
    v30 = [v26 channels];
    v54 = v21;
    if (!v30)
    {
      goto LABEL_11;
    }

    v31 = v30;
    sub_1D1741B10(0, &qword_1EC6445F8, 0x1E6986558);
    v32 = sub_1D1E67C1C();

    if (v32 >> 62)
    {
      if (!sub_1D1E6873C())
      {
        goto LABEL_10;
      }
    }

    else if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

    if ((v32 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1D3891EF0](0, v32);
    }

    else
    {
      if (!*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v33 = *(v32 + 32);
    }

    v34 = v33;

    v35 = [v34 bins];

    if (!v35)
    {
      goto LABEL_49;
    }

    sub_1D1741B10(0, &unk_1EC644600, 0x1E6986550);
    v36 = sub_1D1E67C1C();

    if (v36 >> 62)
    {
      v37 = sub_1D1E6873C();
      if (!v37)
      {
LABEL_10:

LABEL_11:
        v17 = MEMORY[0x1E69E7CC0];
        goto LABEL_12;
      }
    }

    else
    {
      v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v37)
      {
        goto LABEL_10;
      }
    }

    v56 = MEMORY[0x1E69E7CC0];
    sub_1D178D0B4(0, v37 & ~(v37 >> 63), 0);
    if (v37 < 0)
    {
      goto LABEL_48;
    }

    v38 = 0;
    v17 = v56;
    do
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1D3891EF0](v38, v36);
      }

      else
      {
        v39 = *(v36 + 8 * v38 + 32);
      }

      v40 = v39;
      [v39 powerLevel];
      v42 = v41;

      v56 = v17;
      v44 = v17[2];
      v43 = v17[3];
      if (v44 >= v43 >> 1)
      {
        sub_1D178D0B4((v43 > 1), v44 + 1, 1);
        v17 = v56;
      }

      ++v38;
      v17[2] = v44 + 1;
      *(v17 + v44 + 8) = v42;
    }

    while (v37 != v38);

    v4 = v47;
    v7 = v46;
LABEL_12:
    v56 = [v25 integerValue];
    v57 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6445F0, &unk_1D1E759D0);
    sub_1D1E67ECC();

    (*v49)(v7, v4);
    v10 = v51;
    v8 = v52;
    v16 = v50;
  }

  v19 = v15;
  v20 = v54;
  if (v54)
  {
LABEL_18:
    v21 = (v20 - 1) & v20;
    v22 = (v15 << 9) | (8 * __clz(__rbit64(v20)));
    v23 = *(*(v8 + 48) + v22);
    v24 = *(*(v8 + 56) + v22);
    v25 = v23;
    v26 = v24;
    if (!v25)
    {
      goto LABEL_45;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= v16)
    {
      goto LABEL_45;
    }

    v20 = *(v10 + 8 * v15);
    ++v19;
    if (v20)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

unint64_t sub_1D17EC890()
{
  result = qword_1EC6445E0;
  if (!qword_1EC6445E0)
  {
    sub_1D1741B10(255, &qword_1EC6445D0, 0x1E696AD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6445E0);
  }

  return result;
}

uint64_t sub_1D17ECA38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17ECAEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t AccessoryDetails.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for AccessoryDetails(0);
  sub_1D17ECA38(v1 + *(v18 + 20), v17, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D17ECF60(v17, v8, type metadata accessor for StaticServiceGroup);
      v23 = sub_1D1E66A7C();
      (*(*(v23 - 8) + 16))(a1, v8, v23);
      v21 = type metadata accessor for StaticServiceGroup;
      v22 = v8;
    }

    else
    {
      sub_1D17ECF60(v17, v5, type metadata accessor for StaticEndpoint);
      v25 = sub_1D1E66A7C();
      (*(*(v25 - 8) + 16))(a1, v5, v25);
      v21 = type metadata accessor for StaticEndpoint;
      v22 = v5;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v17, v11, type metadata accessor for StaticService);
    v24 = sub_1D1E66A7C();
    (*(*(v24 - 8) + 16))(a1, v11, v24);
    v21 = type metadata accessor for StaticService;
    v22 = v11;
  }

  else
  {
    sub_1D17ECF60(v17, v14, type metadata accessor for StaticAccessory);
    v20 = sub_1D1E66A7C();
    (*(*(v20 - 8) + 16))(a1, v14, v20);
    v21 = type metadata accessor for StaticAccessory;
    v22 = v14;
  }

  return sub_1D17ECFC8(v22, v21);
}

uint64_t sub_1D17ECF60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17ECFC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall AccessoryDetails.commit()()
{
  v1 = type metadata accessor for AccessoryDetails(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1D1E67E7C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D17ECA38(v0, &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetails);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1D17ECF60(&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for AccessoryDetails);
  sub_1D17C6EF0(0, 0, v6, &unk_1D1E75A18, v9);
}

uint64_t sub_1D17ED250()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AccessoryDetails(0) + 20);
  v3 = swift_task_alloc();
  v0[3] = v3;
  *(v3 + 16) = v2;
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1D17ED344;
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v4, v5, v6, 0, 0, &unk_1D1E76530, v3, v7);
}

uint64_t sub_1D17ED344()
{

  return MEMORY[0x1EEE6DFA0](sub_1D17ED45C, 0, 0);
}

uint64_t sub_1D17ED470(uint64_t a1)
{
  v4 = *(type metadata accessor for AccessoryDetails(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D17ED230(a1, v6, v7, v1 + v5);
}

unint64_t sub_1D17ED568()
{
  v1 = 0x64616F6C796170;
  v2 = 0x654D656369766564;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x666E496369736162;
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

uint64_t sub_1D17ED5F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1808268(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D17ED620(uint64_t a1)
{
  v2 = sub_1D18073B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D17ED65C(uint64_t a1)
{
  v2 = sub_1D18073B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessoryDetails.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644628, &qword_1D1E75A20);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18073B4();
  sub_1D1E6930C();
  v11[15] = 0;
  type metadata accessor for AccessoryDetails.Payload(0);
  sub_1D1807408(&qword_1EC644638, type metadata accessor for AccessoryDetails.Payload, &protocol conformance descriptor for AccessoryDetails.Payload);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for AccessoryDetails(0);
    v11[14] = 1;
    type metadata accessor for AccessoryDetailsBasicInfo(0);
    sub_1D1807408(&qword_1EC644640, type metadata accessor for AccessoryDetailsBasicInfo, &protocol conformance descriptor for AccessoryDetailsBasicInfo);
    sub_1D1E68F1C();
    v11[13] = 2;
    type metadata accessor for StaticDeviceMetadata(0);
    sub_1D1807408(&qword_1EC644648, type metadata accessor for StaticDeviceMetadata, &protocol conformance descriptor for StaticDeviceMetadata);
    sub_1D1E68E5C();
    v11[12] = *(v3 + *(v9 + 28));
    v11[11] = 3;
    sub_1D1807450();
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AccessoryDetails.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for StaticDeviceMetadata(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  AccessoryDetails.Payload.hash(into:)(a1);
  v10 = type metadata accessor for AccessoryDetails(0);
  AccessoryDetailsBasicInfo.hash(into:)(a1);
  sub_1D1741C08(v1 + *(v10 + 24), v9, &qword_1EC644620, &unk_1D1E75A00);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D17ECF60(v9, v6, type metadata accessor for StaticDeviceMetadata);
    sub_1D1E6922C();
    StaticDeviceMetadata.hash(into:)(a1);
    sub_1D17ECFC8(v6, type metadata accessor for StaticDeviceMetadata);
  }

  v11 = *(v1 + *(v10 + 28));
  if (v11 == 8)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (v11 > 4)
  {
    switch(v11)
    {
      case 5:
        v13 = 3;
        return MEMORY[0x1D3892850](v13);
      case 6:
        v13 = 4;
        return MEMORY[0x1D3892850](v13);
      case 7:
        v13 = 6;
        return MEMORY[0x1D3892850](v13);
    }

LABEL_17:
    MEMORY[0x1D3892850](5);
    v13 = v11 & 1;
    return MEMORY[0x1D3892850](v13);
  }

  if (v11 == 2)
  {
    v13 = 0;
    return MEMORY[0x1D3892850](v13);
  }

  if (v11 == 3)
  {
    v13 = 1;
    return MEMORY[0x1D3892850](v13);
  }

  if (v11 != 4)
  {
    goto LABEL_17;
  }

  v13 = 2;
  return MEMORY[0x1D3892850](v13);
}

uint64_t AccessoryDetails.hashValue.getter()
{
  v1 = type metadata accessor for StaticDeviceMetadata(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13[-1] - v6;
  sub_1D1E6920C();
  AccessoryDetails.Payload.hash(into:)(v13);
  v8 = type metadata accessor for AccessoryDetails(0);
  AccessoryDetailsBasicInfo.hash(into:)(v13);
  sub_1D1741C08(v0 + *(v8 + 24), v7, &qword_1EC644620, &unk_1D1E75A00);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D17ECF60(v7, v4, type metadata accessor for StaticDeviceMetadata);
    sub_1D1E6922C();
    StaticDeviceMetadata.hash(into:)(v13);
    sub_1D17ECFC8(v4, type metadata accessor for StaticDeviceMetadata);
  }

  v9 = *(v0 + *(v8 + 28));
  if (v9 != 8)
  {
    sub_1D1E6922C();
    if (v9 > 4)
    {
      switch(v9)
      {
        case 5:
          v10 = 3;
          goto LABEL_20;
        case 6:
          v10 = 4;
          goto LABEL_20;
        case 7:
          v10 = 6;
          goto LABEL_20;
      }
    }

    else
    {
      switch(v9)
      {
        case 2:
          v10 = 0;
          goto LABEL_20;
        case 3:
          v10 = 1;
          goto LABEL_20;
        case 4:
          v10 = 2;
LABEL_20:
          MEMORY[0x1D3892850](v10);
          return sub_1D1E6926C();
      }
    }

    MEMORY[0x1D3892850](5);
    v10 = v9 & 1;
    goto LABEL_20;
  }

  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t AccessoryDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v22 = &v20 - v4;
  v24 = type metadata accessor for AccessoryDetailsBasicInfo(0);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v25);
  v26 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644658, &qword_1D1E75A28);
  v23 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v20 - v8;
  v10 = type metadata accessor for AccessoryDetails(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 28);
  v14[v13] = 8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18073B4();
  v28 = v9;
  v15 = v29;
  sub_1D1E692FC();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v6;
  v29 = v14;
  v17 = v23;
  v34 = 0;
  sub_1D1807408(&qword_1EC644660, type metadata accessor for AccessoryDetails.Payload, &protocol conformance descriptor for AccessoryDetails.Payload);
  sub_1D1E68D7C();
  sub_1D17ECF60(v26, v13, type metadata accessor for AccessoryDetails.Payload);
  v33 = 1;
  sub_1D1807408(&qword_1EC644668, type metadata accessor for AccessoryDetailsBasicInfo, &protocol conformance descriptor for AccessoryDetailsBasicInfo);
  sub_1D1E68D7C();
  sub_1D17ECF60(v16, v13 + *(v10 + 20), type metadata accessor for AccessoryDetailsBasicInfo);
  type metadata accessor for StaticDeviceMetadata(0);
  v32 = 2;
  sub_1D1807408(&qword_1EC644670, type metadata accessor for StaticDeviceMetadata, &protocol conformance descriptor for StaticDeviceMetadata);
  v18 = v22;
  sub_1D1E68CBC();
  sub_1D1741A90(v18, v13 + *(v10 + 24), &qword_1EC644620, &unk_1D1E75A00);
  v30 = 3;
  sub_1D18074A4();
  sub_1D1E68CBC();
  (*(v17 + 8))(v28, v27);
  *v29 = v31;
  sub_1D17ECA38(0, v21, type metadata accessor for AccessoryDetails);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D17ECFC8(0, type metadata accessor for AccessoryDetails);
}

uint64_t sub_1D17EE400(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticDeviceMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15[-1] - v9;
  sub_1D1E6920C();
  AccessoryDetails.Payload.hash(into:)(v15);
  AccessoryDetailsBasicInfo.hash(into:)(v15);
  sub_1D1741C08(v2 + *(a2 + 24), v10, &qword_1EC644620, &unk_1D1E75A00);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D17ECF60(v10, v7, type metadata accessor for StaticDeviceMetadata);
    sub_1D1E6922C();
    StaticDeviceMetadata.hash(into:)(v15);
    sub_1D17ECFC8(v7, type metadata accessor for StaticDeviceMetadata);
  }

  v11 = *(v2 + *(a2 + 28));
  if (v11 != 8)
  {
    sub_1D1E6922C();
    if (v11 > 4)
    {
      switch(v11)
      {
        case 5:
          v12 = 3;
          goto LABEL_20;
        case 6:
          v12 = 4;
          goto LABEL_20;
        case 7:
          v12 = 6;
          goto LABEL_20;
      }
    }

    else
    {
      switch(v11)
      {
        case 2:
          v12 = 0;
          goto LABEL_20;
        case 3:
          v12 = 1;
          goto LABEL_20;
        case 4:
          v12 = 2;
LABEL_20:
          MEMORY[0x1D3892850](v12);
          return sub_1D1E6926C();
      }
    }

    MEMORY[0x1D3892850](5);
    v12 = v11 & 1;
    goto LABEL_20;
  }

  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t AccessoryDetails.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticAccessory(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryDetails(0);
  *(a2 + v8[7]) = 8;
  sub_1D17ECA38(a1, a2, type metadata accessor for StaticAccessory);
  type metadata accessor for AccessoryDetails.Payload(0);
  swift_storeEnumTagMultiPayload();
  sub_1D17ECA38(a1, v7, type metadata accessor for StaticAccessory);
  v9 = a2 + v8[5];
  v10 = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v11 = (v9 + v10[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = v10[6];
  v13 = type metadata accessor for StaticRoom(0);
  (*(*(v13 - 8) + 56))(v9 + v12, 1, 1, v13);
  v14 = (v9 + v10[7]);
  *v14 = 0;
  v14[1] = 0;
  *(v9 + v10[8]) = 2;
  *(v9 + v10[9]) = 2;
  *(v9 + v10[10]) = 92;
  sub_1D17ECF60(v7, v9, type metadata accessor for StaticAccessory);
  swift_storeEnumTagMultiPayload();
  sub_1D1741C08(a1 + *(v5 + 44), a2 + v8[6], &qword_1EC644620, &unk_1D1E75A00);
  return sub_1D17ECFC8(a1, type metadata accessor for StaticAccessory);
}

{
  v4 = type metadata accessor for StaticService(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryDetails(0);
  *(a2 + v8[7]) = 8;
  sub_1D17ECA38(a1, a2, type metadata accessor for StaticService);
  type metadata accessor for AccessoryDetails.Payload(0);
  swift_storeEnumTagMultiPayload();
  sub_1D17ECA38(a1, v7, type metadata accessor for StaticService);
  v9 = a2 + v8[5];
  v10 = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v11 = (v9 + v10[5]);
  *v11 = 0;
  v11[1] = 0;
  v12 = v10[6];
  v13 = type metadata accessor for StaticRoom(0);
  (*(*(v13 - 8) + 56))(v9 + v12, 1, 1, v13);
  v14 = (v9 + v10[7]);
  *v14 = 0;
  v14[1] = 0;
  *(v9 + v10[8]) = 2;
  *(v9 + v10[9]) = 2;
  *(v9 + v10[10]) = 92;
  sub_1D17ECF60(v7, v9, type metadata accessor for StaticService);
  swift_storeEnumTagMultiPayload();
  sub_1D1741C08(a1 + *(v5 + 60), a2 + v8[6], &qword_1EC644620, &unk_1D1E75A00);
  return sub_1D17ECFC8(a1, type metadata accessor for StaticService);
}

{
  v4 = type metadata accessor for AccessoryDetails(0);
  *(a2 + v4[7]) = 8;
  sub_1D17ECA38(a1, a2, type metadata accessor for StaticServiceGroup);
  type metadata accessor for AccessoryDetails.Payload(0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + v4[5];
  v6 = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v7 = (v5 + v6[5]);
  *v7 = 0;
  v7[1] = 0;
  v8 = v6[6];
  v9 = type metadata accessor for StaticRoom(0);
  (*(*(v9 - 8) + 56))(v5 + v8, 1, 1, v9);
  v10 = (v5 + v6[7]);
  *v10 = 0;
  v10[1] = 0;
  *(v5 + v6[8]) = 2;
  *(v5 + v6[9]) = 2;
  *(v5 + v6[10]) = 92;
  sub_1D17ECF60(a1, v5, type metadata accessor for StaticServiceGroup);
  swift_storeEnumTagMultiPayload();
  v11 = v4[6];
  v12 = type metadata accessor for StaticDeviceMetadata(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2 + v11, 1, 1, v12);
}

uint64_t AccessoryDetails.Payload.basicInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17ECA38(v2, v6, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      a1[3] = type metadata accessor for StaticServiceGroup(0);
      v8 = sub_1D1807408(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
      v9 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      a1[3] = type metadata accessor for StaticEndpoint(0);
      v8 = sub_1D1807408(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
      v9 = type metadata accessor for StaticEndpoint;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    a1[3] = type metadata accessor for StaticService(0);
    v8 = sub_1D1807408(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    v9 = type metadata accessor for StaticService;
  }

  else
  {
    a1[3] = type metadata accessor for StaticAccessory(0);
    v8 = sub_1D1807408(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    v9 = type metadata accessor for StaticAccessory;
  }

  v10 = v9;
  a1[4] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1D17ECF60(v6, boxed_opaque_existential_1, v10);
}

unint64_t AccessoryDetails.Payload.description.getter()
{
  v1 = sub_1D17EEED0(v0);
  MEMORY[0x1D3890F70](v1);

  return 0xD000000000000019;
}

uint64_t sub_1D17EEED0(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17ECA38(a1, v10, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D17ECF60(v10, v4, type metadata accessor for StaticServiceGroup);
      v13 = StaticServiceGroup.description.getter();
      sub_1D17ECFC8(v4, type metadata accessor for StaticServiceGroup);
      return v13;
    }

    else
    {
      sub_1D17ECFC8(v10, type metadata accessor for AccessoryDetails.Payload);
      return 0x6E45636974617473;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v10, v7, type metadata accessor for StaticService);
    v14 = StaticService.description.getter();
    sub_1D17ECFC8(v7, type metadata accessor for StaticService);
    return v14;
  }

  else
  {
    sub_1D17ECFC8(v10, type metadata accessor for AccessoryDetails.Payload);
    return 0x6341636974617473;
  }
}

uint64_t AccessoryDetails.Payload.staticMatterDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v84 = &v77 - v3;
  v4 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v80 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v77 - v13;
  v14 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for StaticAccessory(0);
  v78 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AccessoryDetails.Payload(0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v77 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v81 = &v77 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v77 - v24;
  v82 = v1;
  sub_1D17ECA38(v1, &v77 - v24, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v31 = type metadata accessor for StaticMatterDevice(0);
      (*(*(v31 - 8) + 56))(v85, 1, 1, v31);
      return sub_1D17ECFC8(v25, type metadata accessor for AccessoryDetails.Payload);
    }

    sub_1D17ECF60(v25, v9, type metadata accessor for StaticEndpoint);
    sub_1D17ECA38(&v9[*(v7 + 20)], v6, type metadata accessor for EndpointPath);
    sub_1D17ECFC8(v9, type metadata accessor for StaticEndpoint);
    v28 = *&v6[*(v4 + 20)];
    sub_1D17ECFC8(v6, type metadata accessor for EndpointPath);
    v30 = v84;
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v25, v16, type metadata accessor for StaticService);
    v30 = v84;
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v33 = qword_1EE07DC60;
    swift_getKeyPath();
    v87 = v33;
    sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
    sub_1D1E66CAC();

    v34 = v33 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
    swift_beginAccess();
    v35 = *(v34 + *(type metadata accessor for StateSnapshot(0) + 32));
    if (*(v35 + 16))
    {

      v36 = sub_1D1742188();
      v38 = v78;
      v37 = v79;
      if (v39)
      {
        sub_1D17ECA38(*(v35 + 56) + *(v78 + 72) * v36, v79, type metadata accessor for StaticAccessory);
        sub_1D17ECFC8(v16, type metadata accessor for StaticService);

        v40 = 0;
      }

      else
      {

        sub_1D17ECFC8(v16, type metadata accessor for StaticService);
        v40 = 1;
      }

      v61 = v83;
    }

    else
    {
      sub_1D17ECFC8(v16, type metadata accessor for StaticService);
      v40 = 1;
      v61 = v83;
      v38 = v78;
      v37 = v79;
    }

    (*(v38 + 56))(v37, v40, 1, v61);
    v62 = v80;
    sub_1D1741A90(v37, v80, &qword_1EC6436C8, &unk_1D1E97C40);
    if ((*(v38 + 48))(v62, 1, v61) == 1)
    {
      sub_1D1741A30(v62, &qword_1EC6436C8, &unk_1D1E97C40);
    }

    else
    {
      v63 = v62 + *(v61 + 144);
      v28 = *v63;
      v64 = *(v63 + 8);
      sub_1D17ECFC8(v62, type metadata accessor for StaticAccessory);
      if ((v64 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_31:
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v65 = sub_1D1E6709C();
    __swift_project_value_buffer(v65, qword_1EC64F440);
    v66 = v81;
    sub_1D17ECA38(v82, v81, type metadata accessor for AccessoryDetails.Payload);
    v67 = sub_1D1E6707C();
    v68 = sub_1D1E6833C();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v86 = v70;
      *v69 = 136315394;
      *(v69 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v86);
      *(v69 + 12) = 2080;
      v71 = v77;
      sub_1D17ECA38(v66, v77, type metadata accessor for AccessoryDetails.Payload);
      v72 = sub_1D17EEED0(v71);
      v87 = 0xD000000000000019;
      v88 = 0x80000001D1EB9EC0;
      MEMORY[0x1D3890F70](v72);

      v73 = v87;
      v74 = v88;
      sub_1D17ECFC8(v71, type metadata accessor for AccessoryDetails.Payload);
      sub_1D17ECFC8(v66, type metadata accessor for AccessoryDetails.Payload);
      v75 = sub_1D1B1312C(v73, v74, &v86);

      *(v69 + 14) = v75;
      _os_log_impl(&dword_1D16EC000, v67, v68, "%s: Returning nil, because couldn't find matterNodeID for payload %s", v69, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v70, -1, -1);
      MEMORY[0x1D3893640](v69, -1, -1);
    }

    else
    {

      sub_1D17ECFC8(v66, type metadata accessor for AccessoryDetails.Payload);
    }

    v76 = type metadata accessor for StaticMatterDevice(0);
    return (*(*(v76 - 8) + 56))(v85, 1, 1, v76);
  }

  sub_1D17ECF60(v25, v18, type metadata accessor for StaticAccessory);
  v27 = &v18[*(v83 + 144)];
  v28 = *v27;
  v29 = v27[8];
  sub_1D17ECFC8(v18, type metadata accessor for StaticAccessory);
  v30 = v84;
  if (v29)
  {
    goto LABEL_31;
  }

LABEL_13:
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v41 = qword_1EE07DC60;
  swift_getKeyPath();
  v87 = v41;
  sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v42 = v41 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
  swift_beginAccess();
  v43 = *(v42 + *(type metadata accessor for MatterStateSnapshot(0) + 24));
  if (*(v43 + 16) && (v44 = sub_1D17420B0(v28), (v45 & 1) != 0))
  {
    v46 = v44;
    v47 = *(v43 + 56);
    v48 = type metadata accessor for StaticMatterDevice(0);
    v49 = *(v48 - 8);
    sub_1D17ECA38(v47 + *(v49 + 72) * v46, v30, type metadata accessor for StaticMatterDevice);
    (*(v49 + 56))(v30, 0, 1, v48);
  }

  else
  {
    v50 = type metadata accessor for StaticMatterDevice(0);
    (*(*(v50 - 8) + 56))(v30, 1, 1, v50);
    v51 = qword_1EC642470;

    if (v51 != -1)
    {
      swift_once();
    }

    v52 = sub_1D1E6709C();
    __swift_project_value_buffer(v52, qword_1EC64F440);

    v53 = sub_1D1E6707C();
    v54 = sub_1D1E6835C();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v86 = v56;
      *v55 = 136315650;
      *(v55 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v86);
      *(v55 + 12) = 2050;
      *(v55 + 14) = v28;
      *(v55 + 22) = 2082;
      v57 = sub_1D1E6762C();
      v59 = v58;

      v60 = sub_1D1B1312C(v57, v59, &v86);

      *(v55 + 24) = v60;
      _os_log_impl(&dword_1D16EC000, v53, v54, "%s: Returning nil, because staticDevice is not found for matterNodeID %{public}llu among staticDevices %{public}s.", v55, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v56, -1, -1);
      MEMORY[0x1D3893640](v55, -1, -1);
    }

    else
    {
    }
  }

  return sub_1D1741A90(v30, v85, &qword_1EC643650, &qword_1D1E71D40);
}

unint64_t sub_1D17EFE24()
{
  v1 = 0x6341636974617473;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6E45636974617473;
  }

  if (*v0)
  {
    v1 = 0x6553636974617473;
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

uint64_t sub_1D17EFEC8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D18083E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D17EFEF0(uint64_t a1)
{
  v2 = sub_1D18074F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D17EFF2C(uint64_t a1)
{
  v2 = sub_1D18074F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D17EFF74(uint64_t a1)
{
  v2 = sub_1D1807648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D17EFFB0(uint64_t a1)
{
  v2 = sub_1D1807648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D17EFFEC(uint64_t a1)
{
  v2 = sub_1D180754C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D17F0028(uint64_t a1)
{
  v2 = sub_1D180754C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D17F0064(uint64_t a1)
{
  v2 = sub_1D18075F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D17F00A0(uint64_t a1)
{
  v2 = sub_1D18075F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D17F00DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D1E6904C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D17F015C(uint64_t a1)
{
  v2 = sub_1D18075A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D17F0198(uint64_t a1)
{
  v2 = sub_1D18075A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessoryDetails.Payload.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6446A0, &qword_1D1E75A80);
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v36 - v3;
  v48 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6446A8, &qword_1D1E75A88);
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v36 - v6;
  v43 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6446B0, &qword_1D1E75A90);
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v36 - v9;
  v38 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6446B8, &qword_1D1E75A98);
  v36 = *(v11 - 8);
  v37 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6446C0, &qword_1D1E75AA0);
  v54 = *(v20 - 8);
  v55 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v36 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18074F8();
  sub_1D1E6930C();
  sub_1D17ECA38(v53, v19, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v27 = v44;
      sub_1D17ECF60(v19, v44, type metadata accessor for StaticServiceGroup);
      v58 = 2;
      sub_1D18075A0();
      v28 = v45;
      v29 = v55;
      sub_1D1E68DFC();
      sub_1D1807408(&qword_1EC6446E8, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
      v30 = v47;
      sub_1D1E68F1C();
      (*(v46 + 8))(v28, v30);
      v31 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      v27 = v49;
      sub_1D17ECF60(v19, v49, type metadata accessor for StaticEndpoint);
      v59 = 3;
      sub_1D180754C();
      v34 = v50;
      v29 = v55;
      sub_1D1E68DFC();
      sub_1D1807408(&qword_1EC6446D8, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
      v35 = v52;
      sub_1D1E68F1C();
      (*(v51 + 8))(v34, v35);
      v31 = type metadata accessor for StaticEndpoint;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D17ECF60(v19, v16, type metadata accessor for StaticAccessory);
      v56 = 0;
      sub_1D1807648();
      v24 = v55;
      sub_1D1E68DFC();
      sub_1D1807408(&qword_1EC644708, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v25 = v37;
      sub_1D1E68F1C();
      (*(v36 + 8))(v13, v25);
      sub_1D17ECFC8(v16, type metadata accessor for StaticAccessory);
      return (*(v54 + 8))(v22, v24);
    }

    v27 = v39;
    sub_1D17ECF60(v19, v39, type metadata accessor for StaticService);
    v57 = 1;
    sub_1D18075F4();
    v32 = v40;
    v29 = v55;
    sub_1D1E68DFC();
    sub_1D1807408(&qword_1EC6446F8, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    v33 = v42;
    sub_1D1E68F1C();
    (*(v41 + 8))(v32, v33);
    v31 = type metadata accessor for StaticService;
  }

  sub_1D17ECFC8(v27, v31);
  return (*(v54 + 8))(v22, v29);
}

uint64_t AccessoryDetails.Payload.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17ECA38(v2, v18, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D17ECF60(v18, v9, type metadata accessor for StaticServiceGroup);
      MEMORY[0x1D3892850](2);
      StaticServiceGroup.hash(into:)(a1);
      v20 = type metadata accessor for StaticServiceGroup;
      v21 = v9;
    }

    else
    {
      sub_1D17ECF60(v18, v6, type metadata accessor for StaticEndpoint);
      MEMORY[0x1D3892850](3);
      StaticEndpoint.hash(into:)(a1);
      v20 = type metadata accessor for StaticEndpoint;
      v21 = v6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v18, v12, type metadata accessor for StaticService);
    MEMORY[0x1D3892850](1);
    StaticService.hash(into:)(a1);
    v20 = type metadata accessor for StaticService;
    v21 = v12;
  }

  else
  {
    sub_1D17ECF60(v18, v15, type metadata accessor for StaticAccessory);
    MEMORY[0x1D3892850](0);
    StaticAccessory.hash(into:)(a1);
    v20 = type metadata accessor for StaticAccessory;
    v21 = v15;
  }

  return sub_1D17ECFC8(v21, v20);
}

uint64_t AccessoryDetails.Payload.hashValue.getter()
{
  sub_1D1E6920C();
  AccessoryDetails.Payload.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t AccessoryDetails.Payload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644710, &qword_1D1E75AA8);
  v69 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v75 = &v57 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644718, &qword_1D1E75AB0);
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v57 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644720, &qword_1D1E75AB8);
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644728, &qword_1D1E75AC0);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v70 = &v57 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644730, &qword_1D1E75AC8);
  v77 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v11 = &v57 - v10;
  v71 = type metadata accessor for AccessoryDetails.Payload(0);
  v12 = MEMORY[0x1EEE9AC00](v71);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v57 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v57 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v57 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v57 - v24;
  v26 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D18074F8();
  v27 = v78;
  sub_1D1E692FC();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v58 = v20;
  v59 = v17;
  v60 = v23;
  v61 = v14;
  v28 = v73;
  v29 = v74;
  v78 = v25;
  v30 = v75;
  v31 = v76;
  v32 = v72;
  v33 = sub_1D1E68DDC();
  v34 = v33;
  v35 = *(v33 + 16);
  if (!v35 || ((v36 = *(v33 + 32), v35 == 1) ? (v37 = v36 == 4) : (v37 = 1), v37))
  {
    v38 = sub_1D1E688EC();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
    *v40 = v71;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v77 + 8))(v11, v32);
LABEL_9:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  if (*(v33 + 32) <= 1u)
  {
    if (*(v33 + 32))
    {
      v81 = 1;
      sub_1D18075F4();
      sub_1D1E68C4C();
      type metadata accessor for StaticService(0);
      v50 = v28;
      v75 = v34;
      sub_1D1807408(&qword_1EC644750, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v51 = v58;
      v52 = v65;
      sub_1D1E68D7C();
      (*(v64 + 8))(v50, v52);
      (*(v77 + 8))(v11, v32);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v46 = v51;
      v43 = v78;
    }

    else
    {
      v80 = 0;
      sub_1D1807648();
      v42 = v70;
      sub_1D1E68C4C();
      v43 = v78;
      type metadata accessor for StaticAccessory(0);
      v75 = v34;
      sub_1D1807408(&qword_1EC644758, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v44 = v60;
      v45 = v63;
      sub_1D1E68D7C();
      (*(v62 + 8))(v42, v45);
      (*(v77 + 8))(v11, v32);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v46 = v44;
    }

    goto LABEL_20;
  }

  v73 = v11;
  v47 = v77;
  if (v36 != 2)
  {
    v83 = 3;
    sub_1D180754C();
    sub_1D1E68C4C();
    v53 = v31;
    type metadata accessor for StaticEndpoint(0);
    v74 = 0;
    sub_1D1807408(&qword_1EC644740, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
    v54 = v61;
    v55 = v66;
    v56 = v74;
    sub_1D1E68D7C();
    if (!v56)
    {
      (*(v69 + 8))(v30, v55);
      (*(v47 + 8))(v73, v32);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v46 = v54;
      v43 = v78;
      v31 = v53;
      goto LABEL_20;
    }

    (*(v69 + 8))(v30, v55);
    (*(v47 + 8))(v73, v32);
    goto LABEL_9;
  }

  v82 = 2;
  sub_1D18075A0();
  sub_1D1E68C4C();
  v75 = v34;
  type metadata accessor for StaticServiceGroup(0);
  sub_1D1807408(&qword_1EC644748, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
  v48 = v59;
  v49 = v68;
  sub_1D1E68D7C();
  (*(v67 + 8))(v29, v49);
  (*(v47 + 8))(v73, v32);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v46 = v48;
  v43 = v78;
LABEL_20:
  sub_1D17ECF60(v46, v43, type metadata accessor for AccessoryDetails.Payload);
  sub_1D17ECF60(v43, v31, type metadata accessor for AccessoryDetails.Payload);
  return __swift_destroy_boxed_opaque_existential_1(v79);
}

uint64_t sub_1D17F1830()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 24;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F1864()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 12;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F1898()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F18CC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F1900()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F1934()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F1968()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F199C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17F19D0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1D17F1A04()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1D17F1A34()
{
  sub_1D1E6920C();
  AccessoryDetails.Payload.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17F1A78(uint64_t a1)
{
  sub_1D1E6920C();
  AccessoryDetails.Payload.hash(into:)(v2);
  return sub_1D1E6926C();
}

unint64_t sub_1D17F1AE4()
{
  v1 = sub_1D17EEED0(v0);
  MEMORY[0x1D3890F70](v1);

  return 0xD000000000000019;
}

uint64_t AccessoryDetails.softwareUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17ECA38(v2, v12, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v16 = type metadata accessor for StaticSoftwareUpdate(0);
    (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
    v14 = type metadata accessor for AccessoryDetails.Payload;
    v15 = v12;
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v12, v6, type metadata accessor for StaticService);
    sub_1D1741C08(&v6[*(v4 + 136)], a1, &qword_1EC644760, &unk_1D1E9E530);
    v14 = type metadata accessor for StaticService;
    v15 = v6;
  }

  else
  {
    sub_1D17ECF60(v12, v9, type metadata accessor for StaticAccessory);
    sub_1D1741C08(&v9[*(v7 + 120)], a1, &qword_1EC644760, &unk_1D1E9E530);
    v14 = type metadata accessor for StaticAccessory;
    v15 = v9;
  }

  return sub_1D17ECFC8(v15, v14);
}

uint64_t AccessoryDetails.updateState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644768, &qword_1D1E75AE0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - v10;
  result = type metadata accessor for AccessoryDetails(0);
  v13 = *(v1 + *(result + 28));
  if (v13 == 8)
  {
    AccessoryDetails.softwareUpdate.getter(v5);
    v14 = type metadata accessor for StaticSoftwareUpdate(0);
    if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
    {
      sub_1D1741A30(v5, &qword_1EC644760, &unk_1D1E9E530);
      v15 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
      (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
    }

    else
    {
      sub_1D17ECA38(&v5[*(v14 + 20)], v11, type metadata accessor for StaticSoftwareUpdate.Kind);
      sub_1D17ECFC8(v5, type metadata accessor for StaticSoftwareUpdate);
      v16 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
      (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
      sub_1D1741C08(v11, v9, &qword_1EC644768, &qword_1D1E75AE0);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        *a1 = v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48)];
        sub_1D17ECFC8(v9, type metadata accessor for StaticSoftwareUpdateMetadata);
        return sub_1D1741A30(v11, &qword_1EC644768, &qword_1D1E75AE0);
      }

      sub_1D17ECFC8(v9, type metadata accessor for StaticSoftwareUpdate.Kind);
    }

    result = sub_1D1741A30(v11, &qword_1EC644768, &qword_1D1E75AE0);
    LOBYTE(v13) = 2;
  }

  *a1 = v13;
  return result;
}

uint64_t AccessoryDetails.updateState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AccessoryDetails(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

void (*AccessoryDetails.updateState.modify(void *a1))(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = v4 + 36;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530) - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644768, &qword_1D1E75AE0) - 8) + 64);
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
    v5[2] = v11;
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
    v5[2] = v11;
    v12 = malloc(v10);
  }

  v13 = v12;
  v5[3] = v12;
  v14 = *(type metadata accessor for AccessoryDetails(0) + 28);
  *(v5 + 8) = v14;
  v15 = *(v1 + v14);
  if (v15 != 8)
  {
    goto LABEL_17;
  }

  AccessoryDetails.softwareUpdate.getter(v9);
  v16 = type metadata accessor for StaticSoftwareUpdate(0);
  if ((*(*(v16 - 8) + 48))(v9, 1, v16) == 1)
  {
    sub_1D1741A30(v9, &qword_1EC644760, &unk_1D1E9E530);
    v17 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
    (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
    sub_1D1741A30(v13, &qword_1EC644768, &qword_1D1E75AE0);
LABEL_16:
    LOBYTE(v15) = 2;
LABEL_17:
    *v6 = v15;
    return sub_1D17F2410;
  }

  sub_1D17ECA38(v9 + *(v16 + 20), v13, type metadata accessor for StaticSoftwareUpdate.Kind);
  sub_1D17ECFC8(v9, type metadata accessor for StaticSoftwareUpdate);
  v18 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  (*(*(v18 - 8) + 56))(v13, 0, 1, v18);
  sub_1D1741A90(v13, v11, &qword_1EC644768, &qword_1D1E75AE0);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D17ECFC8(v11, type metadata accessor for StaticSoftwareUpdate.Kind);
    goto LABEL_16;
  }

  *v6 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48));
  sub_1D17ECFC8(v11, type metadata accessor for StaticSoftwareUpdateMetadata);
  return sub_1D17F2410;
}

void sub_1D17F2410(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  v5 = v1[1];
  *(*v1 + v2) = *(v1 + 36);
  free(v3);
  free(v4);
  free(v5);

  free(v1);
}

uint64_t AccessoryDetails.performSoftwareUpdate()()
{
  v1[26] = v0;
  v1[27] = type metadata accessor for StateSnapshot(0);
  v1[28] = swift_task_alloc();
  v1[29] = type metadata accessor for StaticService(0);
  v1[30] = swift_task_alloc();
  v1[31] = *(type metadata accessor for StaticAccessory(0) - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = type metadata accessor for AccessoryDetails.Payload(0);
  v1[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17F25CC, 0, 0);
}

uint64_t sub_1D17F25CC()
{
  sub_1D17ECA38(v0[26], v0[35], type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[35];
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D17ECF60(v2, v0[30], type metadata accessor for StaticService);
      v0[37] = sub_1D1E67E1C();
      v0[38] = sub_1D1E67E0C();
      v7 = sub_1D1E67D4C();

      return MEMORY[0x1EEE6DFA0](sub_1D17F2C28, v7, v6);
    }

    else
    {
      sub_1D17ECF60(v2, v0[33], type metadata accessor for StaticAccessory);
      v5 = swift_task_alloc();
      v0[36] = v5;
      *v5 = v0;
      v5[1] = sub_1D17F27DC;

      return StaticAccessory.accessory.getter();
    }
  }

  else
  {
    sub_1D17ECFC8(v2, type metadata accessor for AccessoryDetails.Payload);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1D17F27DC(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 168) = v1;
  *(v2 + 176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17F28DC, 0, 0);
}

uint64_t sub_1D17F28DC()
{
  v16 = v0;
  sub_1D17ECFC8(v0[33], type metadata accessor for StaticAccessory);
  v1 = v0[22];
  v0[43] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 softwareUpdateController];
    v0[44] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = [v3 availableUpdate];
      v0[45] = v5;
      if (v5)
      {
        v6 = v5;
        v0[2] = v0;
        v0[3] = sub_1D17F36F0;
        v7 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_1D17B04C8;
        v0[13] = &block_descriptor_3;
        v0[14] = v7;
        [v4 startUpdate:v6 completionHandler:v0 + 10];

        return MEMORY[0x1EEE6DEC8](v0 + 2);
      }
    }
  }

  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC64F440);
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v15);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EB9F40, &v15);
    _os_log_impl(&dword_1D16EC000, v9, v10, "%s - %s: Unable to perform Software Update because there is none available.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D17F2C28()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D17F2CC0, 0, 0);
}

uint64_t sub_1D17F2CC0(uint64_t a1)
{
  *(v1 + 312) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17F2D4C, v3, v2);
}

uint64_t sub_1D17F2D4C()
{

  *(v0 + 320) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D17F2DC0, 0, 0);
}

uint64_t sub_1D17F2DC0(uint64_t a1)
{
  *(v1 + 328) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17F2E4C, v3, v2);
}

uint64_t sub_1D17F2E4C()
{
  v1 = v0[40];
  v2 = v0[28];

  swift_getKeyPath();
  v0[25] = v1;
  sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  sub_1D17ECA38(v1 + v3, v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D17F2F74, 0, 0);
}

uint64_t sub_1D17F2F74()
{
  v15 = v0;
  v1 = v0[28];
  v2 = *(v1 + *(v0[27] + 32));

  sub_1D17ECFC8(v1, type metadata accessor for StateSnapshot);
  if (*(v2 + 16) && (v3 = sub_1D1742188(), (v4 & 1) != 0))
  {
    sub_1D17ECA38(*(v2 + 56) + *(v0[31] + 72) * v3, v0[32], type metadata accessor for StaticAccessory);

    v5 = swift_task_alloc();
    v0[42] = v5;
    *v5 = v0;
    v5[1] = sub_1D17F3274;

    return StaticAccessory.accessory.getter();
  }

  else
  {
    v7 = v0[30];

    sub_1D17ECFC8(v7, type metadata accessor for StaticService);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v8 = sub_1D1E6709C();
    __swift_project_value_buffer(v8, qword_1EC64F440);
    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6835C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v14);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EB9F40, &v14);
      _os_log_impl(&dword_1D16EC000, v9, v10, "%s - %s: Unable to perform Software Update because there is none available.", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v12, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1D17F3274(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 184) = v1;
  *(v3 + 192) = a1;
  v4 = *(v2 + 256);

  sub_1D17ECFC8(v4, type metadata accessor for StaticAccessory);

  return MEMORY[0x1EEE6DFA0](sub_1D17F33A4, 0, 0);
}

uint64_t sub_1D17F33A4()
{
  v16 = v0;
  sub_1D17ECFC8(v0[30], type metadata accessor for StaticService);
  v1 = v0[24];
  v0[43] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = [v2 softwareUpdateController];
    v0[44] = v3;
    if (v3)
    {
      v4 = v3;
      v5 = [v3 availableUpdate];
      v0[45] = v5;
      if (v5)
      {
        v6 = v5;
        v0[2] = v0;
        v0[3] = sub_1D17F36F0;
        v7 = swift_continuation_init();
        v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
        v0[10] = MEMORY[0x1E69E9820];
        v0[11] = 1107296256;
        v0[12] = sub_1D17B04C8;
        v0[13] = &block_descriptor_3;
        v0[14] = v7;
        [v4 startUpdate:v6 completionHandler:v0 + 10];

        return MEMORY[0x1EEE6DEC8](v0 + 2);
      }
    }
  }

  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC64F440);
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v15);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EB9F40, &v15);
    _os_log_impl(&dword_1D16EC000, v9, v10, "%s - %s: Unable to perform Software Update because there is none available.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D17F36F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 368) = v1;
  if (v1)
  {
    v2 = sub_1D17F38AC;
  }

  else
  {
    v2 = sub_1D17F3800;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D17F3800()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D17F38AC(uint64_t a1)
{
  v20 = v1;
  swift_willThrow();
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v2 = v1[46];
  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F440);
  v4 = v2;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v1[45];
  v8 = v1[46];
  v10 = v1[43];
  v11 = v1[44];
  if (v7)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19[0] = v14;
    *v12 = 136315650;
    *(v12 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v19);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EB9F40, v19);
    *(v12 + 22) = 2112;
    v15 = v8;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v16;
    *v13 = v16;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%s - %s: Update failed: %@", v12, 0x20u);
    sub_1D1741A30(v13, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);
  }

  else
  {
  }

  v17 = v1[1];

  return v17();
}

uint64_t AccessoryDetails.staticUser.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE07DC60;
  swift_getKeyPath();
  sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v3 = v2 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  v4 = *(type metadata accessor for StateSnapshot(0) + 20);
  v5 = type metadata accessor for StaticHome(0);
  return sub_1D17ECA38(v3 + v4 + *(v5 + 32), a1, type metadata accessor for StaticUser);
}

BOOL AccessoryDetails.userCanEdit.getter()
{
  v0 = type metadata accessor for StaticUser(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE07DC60;
  swift_getKeyPath();
  v9[1] = v3;
  sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v4 = v3 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  v5 = *(type metadata accessor for StateSnapshot(0) + 20);
  v6 = type metadata accessor for StaticHome(0);
  sub_1D17ECA38(v4 + v5 + *(v6 + 32), v2, type metadata accessor for StaticUser);
  v7 = v2[*(v0 + 28)] < 2u;
  sub_1D17ECFC8(v2, type metadata accessor for StaticUser);
  return v7;
}

id AccessoryDetails.shouldShowLogging.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v34 - v5;
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v34 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v12 = type metadata accessor for StaticUser(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE07DC60;
  v16 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  result = *(v15 + v16);
  if (result)
  {
    result = [result hasOptedToHH2];
    if (result)
    {
      v36 = v3;
      v37 = v0;
      swift_getKeyPath();
      v38[1] = v15;
      sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
      sub_1D1E66CAC();

      v18 = v15 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
      swift_beginAccess();
      v19 = *(type metadata accessor for StateSnapshot(0) + 20);
      v20 = type metadata accessor for StaticHome(0);
      sub_1D17ECA38(v18 + v19 + *(v20 + 32), v14, type metadata accessor for StaticUser);
      v21 = v14[*(v12 + 28)];
      sub_1D17ECFC8(v14, type metadata accessor for StaticUser);
      AccessoryDetails.Payload.staticMatterDevice.getter(v11);
      sub_1D1741C08(v11, v9, &qword_1EC643650, &qword_1D1E71D40);
      v22 = type metadata accessor for StaticMatterDevice(0);
      if ((*(*(v22 - 8) + 48))(v9, 1, v22) == 1)
      {
        sub_1D1741A30(v9, &qword_1EC643650, &qword_1D1E71D40);
        v23 = 0;
      }

      else
      {
        v23 = v9[*(v22 + 64)];
        sub_1D17ECFC8(v9, type metadata accessor for StaticMatterDevice);
      }

      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v24 = sub_1D1E6709C();
      __swift_project_value_buffer(v24, qword_1EC64F440);
      sub_1D1741C08(v11, v6, &qword_1EC643650, &qword_1D1E71D40);
      v25 = sub_1D1E6707C();
      v26 = sub_1D1E6835C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v38[0] = v28;
        *v27 = 136316418;
        *(v27 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v38);
        v34 = v21;
        *(v27 + 12) = 2080;
        *(v27 + 14) = sub_1D1B1312C(0xD000000000000011, 0x80000001D1EB9F60, v38);
        *(v27 + 22) = 1024;
        *(v27 + 24) = 1;
        *(v27 + 28) = 1024;
        *(v27 + 30) = v21 < 2;
        *(v27 + 34) = 1024;
        *(v27 + 36) = v23;
        *(v27 + 40) = 2080;
        v35 = v23;
        sub_1D1741C08(v6, v36, &qword_1EC643650, &qword_1D1E71D40);
        v29 = sub_1D1E6789C();
        v31 = v30;
        sub_1D1741A30(v6, &qword_1EC643650, &qword_1D1E71D40);
        v32 = sub_1D1B1312C(v29, v31, v38);
        v21 = v34;

        *(v27 + 42) = v32;
        _os_log_impl(&dword_1D16EC000, v25, v26, "%s - %s: isHH2: %{BOOL}d, isAdmin: %{BOOL}d, hasLoggingCluster: %{BOOL}d, staticMatterDevice: %s", v27, 0x32u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v28, -1, -1);
        MEMORY[0x1D3893640](v27, -1, -1);

        v33 = v11;
        LOBYTE(v23) = v35;
      }

      else
      {

        sub_1D1741A30(v6, &qword_1EC643650, &qword_1D1E71D40);
        v33 = v11;
      }

      sub_1D1741A30(v33, &qword_1EC643650, &qword_1D1E71D40);
      return ((v21 < 2) & v23);
    }
  }

  return result;
}

uint64_t AccessoryDetails.getDoorLockCluster()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryDetails.Payload(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for AccessoryDetails(0) + 20);
  sub_1D17ECA38(v1 + v15, v11, type metadata accessor for AccessoryDetails.Payload);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D17ECFC8(v11, type metadata accessor for AccessoryDetails.Payload);
    sub_1D17ECA38(v1 + v15, v9, type metadata accessor for AccessoryDetails.Payload);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D17ECF60(v9, v5, type metadata accessor for StaticService);
      sub_1D17F4A04(v5, a1);
      return sub_1D17ECFC8(v5, type metadata accessor for StaticService);
    }

    else
    {
      sub_1D17ECFC8(v9, type metadata accessor for AccessoryDetails.Payload);
      v17 = type metadata accessor for StaticDoorLockCluster(0);
      return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
    }
  }

  else
  {
    sub_1D17ECF60(v11, v14, type metadata accessor for StaticAccessory);
    sub_1D17F46A8(a1);
    return sub_1D17ECFC8(v14, type metadata accessor for StaticAccessory);
  }
}

uint64_t sub_1D17F46A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for StaticService(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  StaticAccessory.primaryStaticService.getter(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D1741A30(v4, &qword_1EC6436F0, &qword_1D1E99BC0);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EC64F440);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6835C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315650;
      *(v12 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v17);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1D1B1312C(0xD000000000000028, 0x80000001D1EBA100, &v17);
      *(v12 + 22) = 2080;
      *(v12 + 24) = sub_1D1B1312C(0x6341636974617473, 0xEF79726F73736563, &v17);
      _os_log_impl(&dword_1D16EC000, v10, v11, "%s - %s: Unable to get doorLockCluster for %s because primaryStaticService does NOT exist.", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    v14 = type metadata accessor for StaticDoorLockCluster(0);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  else
  {
    sub_1D17ECF60(v4, v8, type metadata accessor for StaticService);
    sub_1D17F4A04(v8, a1);
    return sub_1D17ECFC8(v8, type metadata accessor for StaticService);
  }
}

uint64_t sub_1D17F4A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v83 = type metadata accessor for StaticEndpoint(0);
  v80 = *(v83 - 8);
  v3 = MEMORY[0x1EEE9AC00](v83);
  v81 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v80 - v5;
  v88 = type metadata accessor for StaticMatterDevice(0);
  v86 = *(v88 - 8);
  v6 = MEMORY[0x1EEE9AC00](v88);
  v85 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v80 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v87 = &v80 - v11;
  v12 = type metadata accessor for MatterStateSnapshot(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v89 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v90 = &v80 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v80 - v17;
  v19 = type metadata accessor for EndpointPath(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v80 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v84 = &v80 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v80 - v26;
  v28 = type metadata accessor for StaticService(0);
  sub_1D1741C08(a1 + *(v28 + 156), v18, &qword_1EC644870, &unk_1D1EABA00);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1D1741A30(v18, &qword_1EC644870, &unk_1D1EABA00);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v29 = sub_1D1E6709C();
    __swift_project_value_buffer(v29, qword_1EC64F440);
    v30 = sub_1D1E6707C();
    v31 = sub_1D1E6835C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v93[0] = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v93);
      _os_log_impl(&dword_1D16EC000, v30, v31, "%s: Returning nil, because matterEndpointPath is nil.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1D3893640](v33, -1, -1);
      MEMORY[0x1D3893640](v32, -1, -1);
    }
  }

  else
  {
    sub_1D17ECF60(v18, v27, type metadata accessor for EndpointPath);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v34 = qword_1EE07DC60;
    swift_getKeyPath();
    v93[0] = v34;
    sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
    sub_1D1E66CAC();

    v35 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
    swift_beginAccess();
    v36 = v34 + v35;
    v37 = v90;
    sub_1D17ECA38(v36, v90, type metadata accessor for MatterStateSnapshot);
    v38 = *(v37 + *(v12 + 24));
    v39 = v89;
    if (*(v38 + 16) && (v40 = sub_1D17420B0(*&v27[*(v19 + 20)]), (v41 & 1) != 0))
    {
      sub_1D17ECA38(*(v38 + 56) + *(v86 + 72) * v40, v10, type metadata accessor for StaticMatterDevice);
      v42 = v87;
      sub_1D17ECF60(v10, v87, type metadata accessor for StaticMatterDevice);
      v43 = *(v42 + *(v88 + 56));
      if (*(v43 + 16))
      {
        v44 = sub_1D171D15C(*&v27[*(v19 + 24)]);
        if (v45)
        {
          v46 = v81;
          sub_1D17ECA38(*(v43 + 56) + *(v80 + 72) * v44, v81, type metadata accessor for StaticEndpoint);
          v47 = v82;
          sub_1D17ECF60(v46, v82, type metadata accessor for StaticEndpoint);
          sub_1D17F566C(v91);
          sub_1D17ECFC8(v47, type metadata accessor for StaticEndpoint);
          sub_1D17ECFC8(v27, type metadata accessor for EndpointPath);
          sub_1D17ECFC8(v42, type metadata accessor for StaticMatterDevice);
          return sub_1D17ECFC8(v37, type metadata accessor for MatterStateSnapshot);
        }
      }

      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v63 = sub_1D1E6709C();
      __swift_project_value_buffer(v63, qword_1EC64F440);
      v64 = v84;
      sub_1D17ECA38(v27, v84, type metadata accessor for EndpointPath);
      v65 = v85;
      sub_1D17ECA38(v42, v85, type metadata accessor for StaticMatterDevice);
      v66 = sub_1D1E6707C();
      v67 = sub_1D1E6833C();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = v64;
        v70 = v65;
        v71 = swift_slowAlloc();
        v92 = v71;
        *v68 = 136315650;
        *(v68 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v92);
        *(v68 + 12) = 514;
        v72 = *(v69 + *(v19 + 24));
        sub_1D17ECFC8(v69, type metadata accessor for EndpointPath);
        *(v68 + 14) = v72;
        *(v68 + 16) = 2082;

        v73 = sub_1D1E6762C();
        v75 = v74;

        sub_1D17ECFC8(v70, type metadata accessor for StaticMatterDevice);
        v76 = sub_1D1B1312C(v73, v75, &v92);

        *(v68 + 18) = v76;
        v37 = v90;
        _os_log_impl(&dword_1D16EC000, v66, v67, "%s: Returning nil, because endpoint is not found for endpointID %{public}hu among endpoints %{public}s.", v68, 0x1Au);
        swift_arrayDestroy();
        v42 = v87;
        MEMORY[0x1D3893640](v71, -1, -1);
        MEMORY[0x1D3893640](v68, -1, -1);

        v77 = v27;
        v78 = type metadata accessor for EndpointPath;
      }

      else
      {
        sub_1D17ECFC8(v64, type metadata accessor for EndpointPath);

        sub_1D17ECFC8(v27, type metadata accessor for EndpointPath);
        v78 = type metadata accessor for StaticMatterDevice;
        v77 = v65;
      }

      sub_1D17ECFC8(v77, v78);
      v62 = type metadata accessor for StaticMatterDevice;
      v61 = v42;
    }

    else
    {
      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v49 = sub_1D1E6709C();
      __swift_project_value_buffer(v49, qword_1EC64F440);
      sub_1D17ECA38(v27, v23, type metadata accessor for EndpointPath);
      sub_1D17ECA38(v37, v39, type metadata accessor for MatterStateSnapshot);
      v50 = sub_1D1E6707C();
      v51 = sub_1D1E6833C();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v87 = v27;
        v54 = v53;
        v92 = v53;
        *v52 = 136315650;
        *(v52 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v92);
        *(v52 + 12) = 2050;
        v55 = *&v23[*(v19 + 20)];
        sub_1D17ECFC8(v23, type metadata accessor for EndpointPath);
        *(v52 + 14) = v55;
        *(v52 + 22) = 2082;

        v56 = sub_1D1E6762C();
        v58 = v57;

        sub_1D17ECFC8(v39, type metadata accessor for MatterStateSnapshot);
        v59 = v56;
        v37 = v90;
        v60 = sub_1D1B1312C(v59, v58, &v92);

        *(v52 + 24) = v60;
        _os_log_impl(&dword_1D16EC000, v50, v51, "%s: Returning nil, because staticDevice is not found for matterNodeID %{public}llu among staticDevices %{public}s.", v52, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v54, -1, -1);
        MEMORY[0x1D3893640](v52, -1, -1);

        v61 = v87;
        v62 = type metadata accessor for EndpointPath;
      }

      else
      {
        sub_1D17ECFC8(v23, type metadata accessor for EndpointPath);

        sub_1D17ECFC8(v27, type metadata accessor for EndpointPath);
        v62 = type metadata accessor for MatterStateSnapshot;
        v61 = v39;
      }
    }

    sub_1D17ECFC8(v61, v62);
    sub_1D17ECFC8(v37, type metadata accessor for MatterStateSnapshot);
  }

  v79 = type metadata accessor for StaticDoorLockCluster(0);
  return (*(*(v79 - 8) + 56))(v91, 1, 1, v79);
}

uint64_t sub_1D17F566C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticCluster(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(type metadata accessor for StaticEndpoint(0) + 36));
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  v8 = sub_1D171D278(22);
  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1D17ECA38(*(v7 + 56) + *(v4 + 72) * v8, v6, type metadata accessor for StaticCluster);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D17ECFC8(v6, type metadata accessor for StaticCluster);
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  sub_1D17ECF60(v6, a1, type metadata accessor for StaticDoorLockCluster);
  v10 = 0;
LABEL_7:
  v11 = type metadata accessor for StaticDoorLockCluster(0);
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}

Swift::Bool __swiftcall AccessoryDetails.supportsUWBUnlock()()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetails(0);
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v67 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v67 - v8;
  v9 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v68 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v67 - v18;
  AccessoryDetailsBasicInfo.primaryStaticService.getter(&v67 - v18);
  v20 = *(v5 + 48);
  if (v20(v19, 1, v4) == 1)
  {
    sub_1D1741A30(v19, &qword_1EC6436F0, &qword_1D1E99BC0);
    v21 = 0;
  }

  else
  {
    v21 = v19[*(v4 + 104)];
    sub_1D17ECFC8(v19, type metadata accessor for StaticService);
  }

  LOBYTE(v72) = v21;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3250 == v22)
  {
  }

  else
  {
    v23 = sub_1D1E6904C();

    if ((v23 & 1) == 0)
    {
      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v36 = sub_1D1E6709C();
      __swift_project_value_buffer(v36, qword_1EC64F440);
      v37 = v1;
      v38 = v70;
      sub_1D17ECA38(v37, v70, type metadata accessor for AccessoryDetails);
      v26 = sub_1D1E6707C();
      v39 = sub_1D1E6835C();
      if (!os_log_type_enabled(v26, v39))
      {

        sub_1D17ECFC8(v38, type metadata accessor for AccessoryDetails);
LABEL_45:
        LOBYTE(v35) = 0;
        return v35;
      }

      v40 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v72 = v69;
      *v40 = 136315650;
      *(v40 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v72);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EB9F80, &v72);
      *(v40 + 22) = 2080;
      AccessoryDetailsBasicInfo.primaryStaticService.getter(v17);
      if (v20(v17, 1, v4) == 1)
      {
        sub_1D1741A30(v17, &qword_1EC6436F0, &qword_1D1E99BC0);
        v41 = 0;
      }

      else
      {
        v41 = v17[*(v4 + 104)];
        sub_1D17ECFC8(v17, type metadata accessor for StaticService);
      }

      v71 = v41;
      v61 = ServiceKind.localizedDescription.getter();
      v63 = v62;
      sub_1D17ECFC8(v38, type metadata accessor for AccessoryDetails);
      v64 = sub_1D1B1312C(v61, v63, &v72);

      *(v40 + 24) = v64;
      _os_log_impl(&dword_1D16EC000, v26, v39, "%s - %s: Returning false since our primaryServiceKind is not lockMechanism, it is: %s", v40, 0x20u);
      v65 = v69;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v65, -1, -1);
      v30 = v40;
      goto LABEL_43;
    }
  }

  sub_1D17ECA38(v1, v13, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_1D17ECFC8(v13, type metadata accessor for AccessoryDetails.Payload);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v25 = sub_1D1E6709C();
    __swift_project_value_buffer(v25, qword_1EC64F440);
    v26 = sub_1D1E6707C();
    v27 = sub_1D1E6835C();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_44;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v72 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v72);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EB9F80, &v72);
    _os_log_impl(&dword_1D16EC000, v26, v27, "%s - %s: Returning false since payload type is staticServiceGroup / staticEndpoint", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v29, -1, -1);
    v30 = v28;
LABEL_43:
    MEMORY[0x1D3893640](v30, -1, -1);
LABEL_44:

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload)
  {
    v42 = v69;
    sub_1D17ECF60(v13, v69, type metadata accessor for StaticService);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v43 = qword_1EE07DC60;
    v44 = sub_1D1E66A2C();
    v45 = [v43 accessoryFor_];

    v46 = v67;
    if (v45)
    {
      v35 = [v45 supportsUWBUnlock];
    }

    else
    {
      v35 = 0;
    }

    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v52 = sub_1D1E6709C();
    __swift_project_value_buffer(v52, qword_1EC64F440);
    sub_1D17ECA38(v42, v46, type metadata accessor for StaticService);
    v53 = sub_1D1E6707C();
    v54 = sub_1D1E6835C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v72 = v56;
      *v55 = 136315906;
      *(v55 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v72);
      *(v55 + 12) = 2080;
      *(v55 + 14) = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EB9F80, &v72);
      *(v55 + 22) = 1024;
      *(v55 + 24) = v35;
      *(v55 + 28) = 2080;
      v57 = StaticService.description.getter();
      v59 = v58;
      sub_1D17ECFC8(v46, type metadata accessor for StaticService);
      v60 = sub_1D1B1312C(v57, v59, &v72);

      *(v55 + 30) = v60;
      _os_log_impl(&dword_1D16EC000, v53, v54, "%s - %s: staticServiceSupportsUWBUnlock is %{BOOL}d for static service: %s", v55, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v56, -1, -1);
      MEMORY[0x1D3893640](v55, -1, -1);
    }

    else
    {

      sub_1D17ECFC8(v46, type metadata accessor for StaticService);
    }

    sub_1D17ECFC8(v42, type metadata accessor for StaticService);
  }

  else
  {
    v31 = v68;
    sub_1D17ECF60(v13, v68, type metadata accessor for StaticAccessory);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v32 = qword_1EE07DC60;
    v33 = sub_1D1E66A2C();
    v34 = [v32 accessoryFor_];

    if (v34)
    {
      v35 = [v34 supportsUWBUnlock];
    }

    else
    {
      v35 = 0;
    }

    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v47 = sub_1D1E6709C();
    __swift_project_value_buffer(v47, qword_1EC64F440);
    v48 = sub_1D1E6707C();
    v49 = sub_1D1E6835C();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v72 = v51;
      *v50 = 136315906;
      *(v50 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v72);
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EB9F80, &v72);
      *(v50 + 22) = 1024;
      *(v50 + 24) = v35;
      *(v50 + 28) = 2080;
      *(v50 + 30) = sub_1D1B1312C(0x6341636974617473, 0xEF79726F73736563, &v72);
      _os_log_impl(&dword_1D16EC000, v48, v49, "%s - %s: staticAccessorySupportsUWBUnlock is %{BOOL}d for static accessory: %s.", v50, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v51, -1, -1);
      MEMORY[0x1D3893640](v50, -1, -1);
    }

    sub_1D17ECFC8(v31, type metadata accessor for StaticAccessory);
  }

  return v35;
}

Swift::Bool __swiftcall AccessoryDetails.supportsAccessCodes()()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetails(0);
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v68 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v68 - v8;
  v9 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v69 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v68 - v18;
  AccessoryDetailsBasicInfo.primaryStaticService.getter(&v68 - v18);
  v20 = *(v5 + 48);
  if (v20(v19, 1, v4) == 1)
  {
    sub_1D1741A30(v19, &qword_1EC6436F0, &qword_1D1E99BC0);
    v21 = 0;
  }

  else
  {
    v21 = v19[*(v4 + 104)];
    sub_1D17ECFC8(v19, type metadata accessor for StaticService);
  }

  LOBYTE(v73) = v21;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3250 == v22)
  {
  }

  else
  {
    v23 = sub_1D1E6904C();

    if ((v23 & 1) == 0)
    {
      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v36 = sub_1D1E6709C();
      __swift_project_value_buffer(v36, qword_1EC64F440);
      v37 = v1;
      v38 = v71;
      sub_1D17ECA38(v37, v71, type metadata accessor for AccessoryDetails);
      v26 = sub_1D1E6707C();
      v39 = sub_1D1E6835C();
      if (!os_log_type_enabled(v26, v39))
      {

        sub_1D17ECFC8(v38, type metadata accessor for AccessoryDetails);
        return 0;
      }

      v40 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v73 = v70;
      *v40 = 136315650;
      *(v40 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v73);
      *(v40 + 12) = 2080;
      *(v40 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EB9FA0, &v73);
      *(v40 + 22) = 2080;
      AccessoryDetailsBasicInfo.primaryStaticService.getter(v17);
      if (v20(v17, 1, v4) == 1)
      {
        sub_1D1741A30(v17, &qword_1EC6436F0, &qword_1D1E99BC0);
        v41 = 0;
      }

      else
      {
        v41 = v17[*(v4 + 104)];
        sub_1D17ECFC8(v17, type metadata accessor for StaticService);
      }

      v72 = v41;
      v63 = ServiceKind.localizedDescription.getter();
      v65 = v64;
      sub_1D17ECFC8(v38, type metadata accessor for AccessoryDetails);
      v66 = sub_1D1B1312C(v63, v65, &v73);

      *(v40 + 24) = v66;
      _os_log_impl(&dword_1D16EC000, v26, v39, "%s - %s: Returning false since our primaryServiceKind is not lockMechanism, it is: %s", v40, 0x20u);
      v67 = v70;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v67, -1, -1);
      v30 = v40;
      goto LABEL_43;
    }
  }

  sub_1D17ECA38(v1, v13, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    sub_1D17ECFC8(v13, type metadata accessor for AccessoryDetails.Payload);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v25 = sub_1D1E6709C();
    __swift_project_value_buffer(v25, qword_1EC64F440);
    v26 = sub_1D1E6707C();
    v27 = sub_1D1E6835C();
    if (!os_log_type_enabled(v26, v27))
    {
      goto LABEL_44;
    }

    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v73 = v29;
    *v28 = 136315394;
    *(v28 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v73);
    *(v28 + 12) = 2080;
    *(v28 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EB9FA0, &v73);
    _os_log_impl(&dword_1D16EC000, v26, v27, "%s - %s: Returning false since payload type is staticServiceGroup / staticEndpoint", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v29, -1, -1);
    v30 = v28;
LABEL_43:
    MEMORY[0x1D3893640](v30, -1, -1);
LABEL_44:

    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    v42 = v70;
    sub_1D17ECF60(v13, v70, type metadata accessor for StaticService);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v43 = qword_1EE07DC60;
    v44 = sub_1D1E66A2C();
    v45 = [v43 accessoryFor_];

    v46 = v68;
    if (v45)
    {
      v47 = [v45 supportsAccessCodes];
    }

    else
    {
      v47 = 0;
    }

    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v54 = sub_1D1E6709C();
    __swift_project_value_buffer(v54, qword_1EC64F440);
    sub_1D17ECA38(v42, v46, type metadata accessor for StaticService);
    v55 = sub_1D1E6707C();
    v56 = sub_1D1E6835C();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v73 = v58;
      *v57 = 136315650;
      *(v57 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v73);
      *(v57 + 12) = 2080;
      *(v57 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EB9FA0, &v73);
      *(v57 + 22) = 2080;
      v59 = StaticService.description.getter();
      v61 = v60;
      sub_1D17ECFC8(v46, type metadata accessor for StaticService);
      v62 = sub_1D1B1312C(v59, v61, &v73);

      *(v57 + 24) = v62;
      _os_log_impl(&dword_1D16EC000, v55, v56, "%s - %s: static service: %s", v57, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v58, -1, -1);
      MEMORY[0x1D3893640](v57, -1, -1);
    }

    else
    {

      sub_1D17ECFC8(v46, type metadata accessor for StaticService);
    }

    sub_1D17ECFC8(v42, type metadata accessor for StaticService);
    return v47;
  }

  else
  {
    v31 = v69;
    sub_1D17ECF60(v13, v69, type metadata accessor for StaticAccessory);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v32 = qword_1EE07DC60;
    v33 = sub_1D1E66A2C();
    v34 = [v32 accessoryFor_];

    if (v34)
    {
      v35 = [v34 supportsAccessCodes];
    }

    else
    {
      v35 = 0;
    }

    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v48 = sub_1D1E6709C();
    __swift_project_value_buffer(v48, qword_1EC64F440);
    v49 = sub_1D1E6707C();
    v50 = sub_1D1E6835C();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v73 = v52;
      *v51 = 136315650;
      *(v51 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v73);
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EB9FA0, &v73);
      *(v51 + 22) = 2080;
      *(v51 + 24) = sub_1D1B1312C(0x6341636974617473, 0xEF79726F73736563, &v73);
      _os_log_impl(&dword_1D16EC000, v49, v50, "%s - %s: static accessory: %s", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v52, -1, -1);
      MEMORY[0x1D3893640](v51, -1, -1);
    }

    sub_1D17ECFC8(v31, type metadata accessor for StaticAccessory);
    return v35;
  }
}

Swift::Bool __swiftcall AccessoryDetails.accessorySupportsWalletKey()()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetails(0);
  MEMORY[0x1EEE9AC00](v2);
  v131 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for StaticServiceGroup(0);
  v4 = MEMORY[0x1EEE9AC00](v124);
  v125 = &v121 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v129 = (&v121 - v6);
  v7 = type metadata accessor for StaticService(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v122 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v121 = &v121 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v123 = &v121 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v126 = &v121 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v128 = &v121 - v17;
  v18 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v127 = &v121 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v121 - v27;
  AccessoryDetailsBasicInfo.primaryStaticService.getter(&v121 - v27);
  v130 = v8;
  v29 = *(v8 + 48);
  v30 = v29(v28, 1, v7);
  v132 = v7;
  if (v30 == 1)
  {
    sub_1D1741A30(v28, &qword_1EC6436F0, &qword_1D1E99BC0);
    v31 = 0;
  }

  else
  {
    v31 = v28[*(v7 + 104)];
    sub_1D17ECFC8(v28, type metadata accessor for StaticService);
  }

  LOBYTE(v133[0]) = v31;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3250 == v32)
  {
  }

  else
  {
    v33 = sub_1D1E6904C();

    if ((v33 & 1) == 0)
    {
LABEL_18:
      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v45 = sub_1D1E6709C();
      __swift_project_value_buffer(v45, qword_1EC64F440);
      v46 = v131;
      sub_1D17ECA38(v1, v131, type metadata accessor for AccessoryDetails);
      v47 = sub_1D1E6707C();
      v48 = sub_1D1E6835C();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v132;
      if (v49)
      {
        v51 = swift_slowAlloc();
        v130 = swift_slowAlloc();
        v133[0] = v130;
        *v51 = 136315650;
        *(v51 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v133);
        *(v51 + 12) = 2080;
        *(v51 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v133);
        *(v51 + 22) = 2080;
        AccessoryDetailsBasicInfo.primaryStaticService.getter(v26);
        if (v29(v26, 1, v50) == 1)
        {
          sub_1D1741A30(v26, &qword_1EC6436F0, &qword_1D1E99BC0);
          v52 = 0;
        }

        else
        {
          v52 = v26[*(v50 + 104)];
          sub_1D17ECFC8(v26, type metadata accessor for StaticService);
        }

        v134 = v52;
        v110 = ServiceKind.localizedDescription.getter();
        v112 = v111;
        sub_1D17ECFC8(v131, type metadata accessor for AccessoryDetails);
        v113 = sub_1D1B1312C(v110, v112, v133);

        *(v51 + 24) = v113;
        _os_log_impl(&dword_1D16EC000, v47, v48, "%s - %s: Returning false since our primaryServiceKind is not lockMechanism, it is: %s", v51, 0x20u);
        v114 = v130;
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v114, -1, -1);
        MEMORY[0x1D3893640](v51, -1, -1);

        return 0;
      }

      v74 = type metadata accessor for AccessoryDetails;
      v75 = v46;
LABEL_71:
      sub_1D17ECFC8(v75, v74);
      return 0;
    }
  }

  sub_1D17ECA38(v1, v22, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1D17ECFC8(v22, type metadata accessor for AccessoryDetails.Payload);
      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v69 = sub_1D1E6709C();
      __swift_project_value_buffer(v69, qword_1EC64F440);
      v70 = sub_1D1E6707C();
      v71 = sub_1D1E6835C();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v133[0] = v73;
        *v72 = 136315650;
        *(v72 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v133);
        *(v72 + 12) = 2080;
        *(v72 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v133);
        *(v72 + 22) = 2080;
        *(v72 + 24) = sub_1D1B1312C(0x6E45636974617473, 0xEE00746E696F7064, v133);
        _os_log_impl(&dword_1D16EC000, v70, v71, "%s - %s: Returning false since payload type is staticEndpoint %s", v72, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v73, -1, -1);
        MEMORY[0x1D3893640](v72, -1, -1);
      }

      return 0;
    }

    v29 = v129;
    sub_1D17ECF60(v22, v129, type metadata accessor for StaticServiceGroup);
    v41 = v125;
    sub_1D17ECA38(v29, v125, type metadata accessor for StaticServiceGroup);
    v1 = *(v41 + *(v124 + 56));
    v42 = v1[2];
    if (v42)
    {
      v43 = sub_1D180453C(v1[2], 0, &qword_1EC643258, &qword_1D1E716B0, type metadata accessor for StaticService);
      v131 = sub_1D1806314(v133, v43 + ((*(v130 + 80) + 32) & ~*(v130 + 80)), v42, v1, type metadata accessor for StaticService, type metadata accessor for StaticService, type metadata accessor for StaticService);
      v44 = v133[0];
      v26 = v133[1];

      sub_1D1716918(v44);
      if (v131 != v42)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC0];
    }

    v83 = v122;
    v84 = v123;
    sub_1D17ECFC8(v41, type metadata accessor for StaticServiceGroup);
    if (v43[2])
    {
      v85 = v121;
      sub_1D17ECA38(v43 + ((*(v130 + 80) + 32) & ~*(v130 + 80)), v121, type metadata accessor for StaticService);

      sub_1D17ECF60(v85, v84, type metadata accessor for StaticService);
      if (qword_1EE07DC58 != -1)
      {
        swift_once();
      }

      v86 = qword_1EE07DC60;
      v87 = sub_1D1E66A2C();
      v88 = [v86 accessoryFor_];

      if (v88)
      {
        v40 = [v88 supportsWalletKey];
        if (qword_1EC642470 != -1)
        {
          swift_once();
        }

        v89 = sub_1D1E6709C();
        __swift_project_value_buffer(v89, qword_1EC64F440);
        sub_1D17ECA38(v84, v83, type metadata accessor for StaticService);
        v90 = sub_1D1E6707C();
        v91 = sub_1D1E6835C();
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          v93 = swift_slowAlloc();
          v133[0] = v93;
          *v92 = 136315650;
          *(v92 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v133);
          *(v92 + 12) = 2080;
          *(v92 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v133);
          *(v92 + 22) = 2080;
          v94 = StaticService.description.getter();
          v95 = v83;
          v96 = v94;
          v98 = v97;
          sub_1D17ECFC8(v95, type metadata accessor for StaticService);
          v99 = sub_1D1B1312C(v96, v98, v133);

          *(v92 + 24) = v99;
          _os_log_impl(&dword_1D16EC000, v90, v91, "%s - %s: static service: %s", v92, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v93, -1, -1);
          MEMORY[0x1D3893640](v92, -1, -1);

          sub_1D17ECFC8(v84, type metadata accessor for StaticService);
          v81 = type metadata accessor for StaticServiceGroup;
          v82 = v129;
        }

        else
        {

          sub_1D17ECFC8(v83, type metadata accessor for StaticService);
          sub_1D17ECFC8(v84, type metadata accessor for StaticService);
          v81 = type metadata accessor for StaticServiceGroup;
          v82 = v29;
        }

        goto LABEL_74;
      }

      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v115 = sub_1D1E6709C();
      __swift_project_value_buffer(v115, qword_1EC64F440);
      v116 = sub_1D1E6707C();
      v117 = sub_1D1E6835C();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v133[0] = v119;
        *v118 = 136315394;
        *(v118 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v133);
        *(v118 + 12) = 2080;
        *(v118 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v133);
        _os_log_impl(&dword_1D16EC000, v116, v117, "%s - %s: Returning false since accessory is nil", v118, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v119, -1, -1);
        MEMORY[0x1D3893640](v118, -1, -1);
      }

      sub_1D17ECFC8(v84, type metadata accessor for StaticService);
    }

    else
    {

      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v105 = sub_1D1E6709C();
      __swift_project_value_buffer(v105, qword_1EC64F440);
      v106 = sub_1D1E6707C();
      v107 = sub_1D1E6835C();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v133[0] = v109;
        *v108 = 136315394;
        *(v108 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v133);
        *(v108 + 12) = 2080;
        *(v108 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v133);
        _os_log_impl(&dword_1D16EC000, v106, v107, "%s - %s: Returning false since staticServices.first is nil", v108, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v109, -1, -1);
        MEMORY[0x1D3893640](v108, -1, -1);
      }
    }

    v74 = type metadata accessor for StaticServiceGroup;
    v75 = v29;
    goto LABEL_71;
  }

  if (EnumCaseMultiPayload)
  {
    v53 = v128;
    sub_1D17ECF60(v22, v128, type metadata accessor for StaticService);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v54 = qword_1EE07DC60;
    v55 = sub_1D1E66A2C();
    v56 = [v54 accessoryFor_];

    v57 = v126;
    if (v56)
    {
      v40 = [v56 supportsWalletKey];
      if (qword_1EC642470 != -1)
      {
        swift_once();
      }

      v58 = sub_1D1E6709C();
      __swift_project_value_buffer(v58, qword_1EC64F440);
      sub_1D17ECA38(v53, v57, type metadata accessor for StaticService);
      v59 = sub_1D1E6707C();
      v60 = sub_1D1E6835C();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v133[0] = v62;
        *v61 = 136315650;
        *(v61 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v133);
        *(v61 + 12) = 2080;
        *(v61 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v133);
        *(v61 + 22) = 2080;
        v63 = StaticService.description.getter();
        v64 = v57;
        v65 = v63;
        v67 = v66;
        sub_1D17ECFC8(v64, type metadata accessor for StaticService);
        v68 = sub_1D1B1312C(v65, v67, v133);

        *(v61 + 24) = v68;
        _os_log_impl(&dword_1D16EC000, v59, v60, "%s - %s: static service: %s", v61, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v62, -1, -1);
        MEMORY[0x1D3893640](v61, -1, -1);
      }

      else
      {

        sub_1D17ECFC8(v57, type metadata accessor for StaticService);
      }

      v82 = v53;
      v81 = type metadata accessor for StaticService;
      goto LABEL_74;
    }

    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v100 = sub_1D1E6709C();
    __swift_project_value_buffer(v100, qword_1EC64F440);
    v101 = sub_1D1E6707C();
    v102 = sub_1D1E6835C();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v133[0] = v104;
      *v103 = 136315394;
      *(v103 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v133);
      *(v103 + 12) = 2080;
      *(v103 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v133);
      _os_log_impl(&dword_1D16EC000, v101, v102, "%s - %s: Returning false since accessory is nil", v103, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v104, -1, -1);
      MEMORY[0x1D3893640](v103, -1, -1);
    }

    v74 = type metadata accessor for StaticService;
    v75 = v53;
    goto LABEL_71;
  }

  v35 = v22;
  v36 = v127;
  sub_1D17ECF60(v35, v127, type metadata accessor for StaticAccessory);
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v37 = qword_1EE07DC60;
  v38 = sub_1D1E66A2C();
  v39 = [v37 accessoryFor_];

  if (v39)
  {
    v40 = [v39 supportsWalletKey];
  }

  else
  {
    v40 = 0;
  }

  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v76 = sub_1D1E6709C();
  __swift_project_value_buffer(v76, qword_1EC64F440);
  v77 = sub_1D1E6707C();
  v78 = sub_1D1E6835C();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    v133[0] = v80;
    *v79 = 136315650;
    *(v79 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v133);
    *(v79 + 12) = 2080;
    *(v79 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EB9FC0, v133);
    *(v79 + 22) = 2080;
    *(v79 + 24) = sub_1D1B1312C(0x6341636974617473, 0xEF79726F73736563, v133);
    _os_log_impl(&dword_1D16EC000, v77, v78, "%s - %s: static accessory: %s", v79, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v80, -1, -1);
    MEMORY[0x1D3893640](v79, -1, -1);
  }

  v81 = type metadata accessor for StaticAccessory;
  v82 = v36;
LABEL_74:
  sub_1D17ECFC8(v82, v81);
  return v40;
}

id AccessoryDetails.hmHomeFromPayload.getter()
{
  v1 = v0;
  v2 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticServiceGroup(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v49 - v12;
  v13 = type metadata accessor for StaticService(0);
  v51 = *(v13 - 8);
  v52 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v49 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v50 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v49 - v18);
  v20 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = (&v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D17ECA38(v1, v25, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D17ECF60(v25, v22, type metadata accessor for StaticAccessory);
      if (qword_1EE07DC58 != -1)
      {
        swift_once();
      }

      v27 = qword_1EE07DC60;
      v28 = sub_1D1E66A2C();
      v29 = [v27 accessoryFor_];

      v30 = [v29 home];
      v31 = type metadata accessor for StaticAccessory;
      v32 = v22;
      goto LABEL_21;
    }

LABEL_10:
    sub_1D17ECF60(v25, v19, type metadata accessor for StaticService);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v37 = qword_1EE07DC60;
    v38 = sub_1D1E66A2C();
    v39 = [v37 accessoryFor_];

    v30 = [v39 home];
    v31 = type metadata accessor for StaticService;
    v32 = v19;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 2)
  {
    sub_1D17ECF60(v25, v7, type metadata accessor for StaticEndpoint);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v40 = qword_1EE07DC60;
    sub_1D17ECA38(&v7[*(v5 + 20)], v4, type metadata accessor for EndpointPath);
    v41 = sub_1D1E66A2C();
    v42 = sub_1D1E66A7C();
    (*(*(v42 - 8) + 8))(v4, v42);
    v30 = [v40 homeFor_];

    v31 = type metadata accessor for StaticEndpoint;
    v32 = v7;
    goto LABEL_21;
  }

  v33 = v53;
  sub_1D17ECF60(v25, v53, type metadata accessor for StaticServiceGroup);
  sub_1D17ECA38(v33, v11, type metadata accessor for StaticServiceGroup);
  v25 = *&v11[*(v8 + 56)];
  v34 = v25[2];
  if (v34)
  {
    v19 = sub_1D180453C(v25[2], 0, &qword_1EC643258, &qword_1D1E716B0, type metadata accessor for StaticService);
    v35 = sub_1D1806314(&v54, v19 + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v34, v25, type metadata accessor for StaticService, type metadata accessor for StaticService, type metadata accessor for StaticService);
    v36 = v54;

    sub_1D1716918(v36);
    if (v35 != v34)
    {
      __break(1u);
      goto LABEL_10;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  sub_1D17ECFC8(v11, type metadata accessor for StaticServiceGroup);
  if (!v19[2])
  {

    sub_1D17ECFC8(v53, type metadata accessor for StaticServiceGroup);
    return 0;
  }

  v43 = v49;
  sub_1D17ECA38(v19 + ((*(v51 + 80) + 32) & ~*(v51 + 80)), v49, type metadata accessor for StaticService);

  v44 = v50;
  sub_1D17ECF60(v43, v50, type metadata accessor for StaticService);
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v45 = qword_1EE07DC60;
  v46 = sub_1D1E66A2C();
  v47 = [v45 accessoryFor_];

  v30 = [v47 home];
  sub_1D17ECFC8(v44, type metadata accessor for StaticService);
  v31 = type metadata accessor for StaticServiceGroup;
  v32 = v53;
LABEL_21:
  sub_1D17ECFC8(v32, v31);
  return v30;
}

id AccessoryDetails.shouldShowManageAccessForLocks.getter()
{
  v1 = type metadata accessor for StaticUser(0);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v49 - v5;
  v6 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessoryDetails(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v49 - v16;
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v18 = sub_1D1E6709C();
  __swift_project_value_buffer(v18, qword_1EC64F440);
  sub_1D17ECA38(v0, v17, type metadata accessor for AccessoryDetails);
  sub_1D17ECA38(v0, v15, type metadata accessor for AccessoryDetails);
  sub_1D17ECA38(v0, v12, type metadata accessor for AccessoryDetails);
  v19 = sub_1D1E6707C();
  v20 = sub_1D1E6835C();
  if (os_log_type_enabled(v19, v20))
  {
    v50 = v20;
    v51 = v4;
    v52 = v1;
    v21 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57 = v49;
    *v21 = 136316418;
    *(v21 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v57);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EB9FE0, &v57);
    *(v21 + 22) = 1024;
    v22 = AccessoryDetails.supportsAccessCodes()();
    sub_1D17ECFC8(v17, type metadata accessor for AccessoryDetails);
    *(v21 + 24) = v22;
    *(v21 + 28) = 1024;
    v23 = AccessoryDetails.hmHomeFromPayload.getter();
    v26 = 0;
    if (v23)
    {
      v24 = v23;
      v25 = [v23 hasOnboardedForAccessCode];

      if (v25)
      {
        v26 = 1;
      }
    }

    sub_1D17ECFC8(v15, type metadata accessor for AccessoryDetails);
    *(v21 + 30) = v26;
    *(v21 + 34) = 1024;
    sub_1D17ECA38(v12, v8, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v1 = v52;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v55 = type metadata accessor for StaticServiceGroup(0);
        v28 = sub_1D1807408(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
        v29 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v55 = type metadata accessor for StaticEndpoint(0);
        v28 = sub_1D1807408(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
        v29 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v55 = type metadata accessor for StaticService(0);
      v28 = sub_1D1807408(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v29 = type metadata accessor for StaticService;
    }

    else
    {
      v55 = type metadata accessor for StaticAccessory(0);
      v28 = sub_1D1807408(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v29 = type metadata accessor for StaticAccessory;
    }

    v30 = v29;
    v56 = v28;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
    sub_1D17ECF60(v8, boxed_opaque_existential_1, v30);
    v32 = v55;
    v33 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    LOBYTE(v32) = (*(v33 + 48))(v32, v33);
    __swift_destroy_boxed_opaque_existential_1(v54);
    sub_1D17ECFC8(v12, type metadata accessor for AccessoryDetails);
    *(v21 + 36) = v32 & 1;
    *(v21 + 40) = 1024;
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v34 = qword_1EE07DC60;
    swift_getKeyPath();
    v54[0] = v34;
    sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
    sub_1D1E66CAC();

    v35 = v34 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
    swift_beginAccess();
    v36 = *(type metadata accessor for StateSnapshot(0) + 20);
    v37 = v35 + v36 + *(type metadata accessor for StaticHome(0) + 32);
    v38 = v53;
    sub_1D17ECA38(v37, v53, type metadata accessor for StaticUser);
    if (*(v38 + *(v1 + 28)))
    {
      v39 = *(v38 + *(v1 + 28)) == 1;
      sub_1D17ECFC8(v38, type metadata accessor for StaticUser);
    }

    else
    {
      sub_1D17ECFC8(v38, type metadata accessor for StaticUser);
      v39 = 1;
    }

    *(v21 + 42) = v39;
    _os_log_impl(&dword_1D16EC000, v19, v50, "%s - %s: supportsAccessCodes: %{BOOL}d hasOnboardedForAccessCode: %{BOOL}d, accessoryIsReachable: %{BOOL}d, userCanEdit: %{BOOL}d", v21, 0x2Eu);
    v40 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v40, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);

    v4 = v51;
  }

  else
  {
    sub_1D17ECFC8(v12, type metadata accessor for AccessoryDetails);
    sub_1D17ECFC8(v15, type metadata accessor for AccessoryDetails);
    sub_1D17ECFC8(v17, type metadata accessor for AccessoryDetails);
  }

  if (!AccessoryDetails.supportsAccessCodes()())
  {
    return 0;
  }

  result = AccessoryDetails.hmHomeFromPayload.getter();
  if (!result)
  {
    return result;
  }

  v42 = result;
  v43 = [result hasOnboardedForAccessCode];

  if (!v43)
  {
    return 0;
  }

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v44 = qword_1EE07DC60;
  swift_getKeyPath();
  v54[0] = v44;
  sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v45 = v44 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  v46 = *(type metadata accessor for StateSnapshot(0) + 20);
  v47 = type metadata accessor for StaticHome(0);
  sub_1D17ECA38(v45 + v46 + *(v47 + 32), v4, type metadata accessor for StaticUser);
  v48 = v4[*(v1 + 28)] < 2u;
  sub_1D17ECFC8(v4, type metadata accessor for StaticUser);
  return v48;
}

uint64_t AccessoryDetails.shouldEnableManageAccessForLocks.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetails.Payload(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - v6;
  v8 = type metadata accessor for AccessoryDetails(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  __swift_project_value_buffer(v11, qword_1EC64F440);
  sub_1D17ECA38(v0, v10, type metadata accessor for AccessoryDetails);
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6835C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 136315650;
    *(v14 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v33);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1D1B1312C(0xD000000000000020, 0x80000001D1EBA000, &v33);
    *(v14 + 22) = 1024;
    sub_1D17ECA38(v10, v7, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v32 = v0;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v35 = type metadata accessor for StaticServiceGroup(0);
        v17 = sub_1D1807408(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
        v18 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v35 = type metadata accessor for StaticEndpoint(0);
        v17 = sub_1D1807408(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
        v18 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v35 = type metadata accessor for StaticService(0);
      v17 = sub_1D1807408(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v18 = type metadata accessor for StaticService;
    }

    else
    {
      v35 = type metadata accessor for StaticAccessory(0);
      v17 = sub_1D1807408(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v18 = type metadata accessor for StaticAccessory;
    }

    v19 = v18;
    v36 = v17;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
    sub_1D17ECF60(v7, boxed_opaque_existential_1, v19);
    v22 = v35;
    v21 = v36;
    __swift_project_boxed_opaque_existential_1(v34, v35);
    LOBYTE(v19) = (*(v21 + 48))(v22, v21);
    __swift_destroy_boxed_opaque_existential_1(v34);
    sub_1D17ECFC8(v10, type metadata accessor for AccessoryDetails);
    *(v14 + 24) = v19 & 1;
    _os_log_impl(&dword_1D16EC000, v12, v13, "%s - %s: accessoryIsReachable: %{BOOL}d", v14, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v15, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);

    v1 = v32;
  }

  else
  {
    sub_1D17ECFC8(v10, type metadata accessor for AccessoryDetails);
  }

  sub_1D17ECA38(v1, v5, type metadata accessor for AccessoryDetails.Payload);
  v23 = swift_getEnumCaseMultiPayload();
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v35 = type metadata accessor for StaticServiceGroup(0);
      v24 = sub_1D1807408(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
      v25 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      v35 = type metadata accessor for StaticEndpoint(0);
      v24 = sub_1D1807408(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
      v25 = type metadata accessor for StaticEndpoint;
    }
  }

  else if (v23)
  {
    v35 = type metadata accessor for StaticService(0);
    v24 = sub_1D1807408(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    v25 = type metadata accessor for StaticService;
  }

  else
  {
    v35 = type metadata accessor for StaticAccessory(0);
    v24 = sub_1D1807408(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    v25 = type metadata accessor for StaticAccessory;
  }

  v26 = v25;
  v36 = v24;
  v27 = __swift_allocate_boxed_opaque_existential_1(v34);
  sub_1D17ECF60(v5, v27, v26);
  v28 = v35;
  v29 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  LOBYTE(v28) = (*(v29 + 48))(v28, v29);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v28 & 1;
}

id AccessoryDetails.shouldShowAddHomeKeyToWallet.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AccessoryDetails(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v26 - v6;
  v8 = sub_1D1E677EC();
  v9 = MGGetStringAnswer();

  if (v9)
  {
    v10 = v9;
    if (sub_1D1E6788C() == 0x656E6F685069 && v11 == 0xE600000000000000)
    {

      v12 = 1;
    }

    else
    {
      v12 = sub_1D1E6904C();
    }
  }

  else
  {
    v12 = 0;
  }

  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC64F440);
  sub_1D17ECA38(v1, v7, type metadata accessor for AccessoryDetails);
  sub_1D17ECA38(v1, v5, type metadata accessor for AccessoryDetails);
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6835C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v17;
    *v16 = 136316162;
    *(v16 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v27);
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EBA030, &v27);
    *(v16 + 22) = 1024;
    *(v16 + 24) = v12 & 1;
    *(v16 + 28) = 1024;
    v18 = AccessoryDetails.accessorySupportsWalletKey()();
    sub_1D17ECFC8(v7, type metadata accessor for AccessoryDetails);
    *(v16 + 30) = v18;
    *(v16 + 34) = 1024;
    v19 = AccessoryDetails.hmHomeFromPayload.getter();
    v22 = 0;
    if (v19)
    {
      v20 = v19;
      v21 = [v19 hasOnboardedForWalletKey];

      if (v21)
      {
        v22 = 1;
      }
    }

    sub_1D17ECFC8(v5, type metadata accessor for AccessoryDetails);
    *(v16 + 36) = v22;
    _os_log_impl(&dword_1D16EC000, v14, v15, "%s - %s: isIphone: %{BOOL}d accessorySupportsWalletKey: %{BOOL}d, _hasOnboardedForWalletKey: %{BOOL}d", v16, 0x28u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v17, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    sub_1D17ECFC8(v5, type metadata accessor for AccessoryDetails);
    sub_1D17ECFC8(v7, type metadata accessor for AccessoryDetails);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  if (!AccessoryDetails.accessorySupportsWalletKey()())
  {
    return 0;
  }

  result = AccessoryDetails.hmHomeFromPayload.getter();
  if (result)
  {
    v24 = result;
    v25 = [result hasOnboardedForWalletKey];

    return v25;
  }

  return result;
}

id AccessoryDetails.hmAccessoryFromPayload.getter()
{
  v1 = v0;
  v46 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v46);
  v3 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticServiceGroup(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v43 - v11;
  v12 = type metadata accessor for StaticService(0);
  v47 = *(v12 - 8);
  v48 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v44 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v45 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v43 - v17);
  v19 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17ECA38(v1, v24, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D17ECF60(v24, v21, type metadata accessor for StaticAccessory);
      if (qword_1EE07DC58 != -1)
      {
        swift_once();
      }

      v26 = qword_1EE07DC60;
      v27 = sub_1D1E66A2C();
      v28 = [v26 accessoryFor_];

      sub_1D17ECFC8(v21, type metadata accessor for StaticAccessory);
      return v28;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v29 = v49;
    sub_1D17ECF60(v24, v49, type metadata accessor for StaticServiceGroup);
    sub_1D17ECA38(v29, v10, type metadata accessor for StaticServiceGroup);
    v30 = *&v10[*(v7 + 56)];
    v31 = v30[2];
    if (v31)
    {
      v18 = sub_1D180453C(v30[2], 0, &qword_1EC643258, &qword_1D1E716B0, type metadata accessor for StaticService);
      v32 = sub_1D1806314(&v50, v18 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v31, v30, type metadata accessor for StaticService, type metadata accessor for StaticService, type metadata accessor for StaticService);
      v24 = v50;

      sub_1D1716918(v24);
      if (v32 != v31)
      {
        __break(1u);
LABEL_10:
        sub_1D17ECF60(v24, v18, type metadata accessor for StaticService);
        if (qword_1EE07DC58 != -1)
        {
          swift_once();
        }

        v33 = qword_1EE07DC60;
        v34 = sub_1D1E66A2C();
        v28 = [v33 accessoryFor_];

        sub_1D17ECFC8(v18, type metadata accessor for StaticService);
        return v28;
      }
    }

    else
    {
      v18 = MEMORY[0x1E69E7CC0];
    }

    sub_1D17ECFC8(v10, type metadata accessor for StaticServiceGroup);
    if (v18[2])
    {
      v38 = v44;
      sub_1D17ECA38(v18 + ((*(v47 + 80) + 32) & ~*(v47 + 80)), v44, type metadata accessor for StaticService);

      v39 = v45;
      sub_1D17ECF60(v38, v45, type metadata accessor for StaticService);
      if (qword_1EE07DC58 != -1)
      {
        swift_once();
      }

      v40 = qword_1EE07DC60;
      v41 = sub_1D1E66A2C();
      v28 = [v40 accessoryFor_];

      sub_1D17ECFC8(v39, type metadata accessor for StaticService);
      sub_1D17ECFC8(v49, type metadata accessor for StaticServiceGroup);
    }

    else
    {

      sub_1D17ECFC8(v49, type metadata accessor for StaticServiceGroup);
      return 0;
    }
  }

  else
  {
    sub_1D17ECF60(v24, v6, type metadata accessor for StaticEndpoint);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v35 = &v6[*(v4 + 20)];
    v36 = *(v35 + *(v46 + 20));
    sub_1D17ECA38(v35, v3, type metadata accessor for EndpointPath);
    v28 = DataModel.accessory(with:inHomeWithID:)(v36);
    sub_1D17ECFC8(v6, type metadata accessor for StaticEndpoint);
    v37 = sub_1D1E66A7C();
    (*(*(v37 - 8) + 8))(v3, v37);
  }

  return v28;
}

uint64_t AccessoryDetails.accessoryAllowsIdentify.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v49 = &v45 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v45 - v4;
  v6 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v45 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v45 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v47 = &v45 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v45 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v48 = &v45 - v24;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v26 = result;
    internalBuild = MobileGestalt_get_internalBuild();

    if (internalBuild)
    {
      if (qword_1EC6422C8 != -1)
      {
        swift_once();
      }

      if (byte_1EC64919B)
      {
        return 1;
      }
    }

    sub_1D17ECA38(v0, v8, type metadata accessor for AccessoryDetails.Payload);
    if (swift_getEnumCaseMultiPayload() > 2)
    {
      sub_1D17ECF60(v8, v23, type metadata accessor for StaticEndpoint);
      v33 = type metadata accessor for StaticEndpoint(0);
      (*(*(v33 - 8) + 56))(v23, 0, 1, v33);
      goto LABEL_19;
    }

    sub_1D17ECFC8(v8, type metadata accessor for AccessoryDetails.Payload);
    AccessoryDetails.Payload.staticMatterDevice.getter(v5);
    v29 = type metadata accessor for StaticMatterDevice(0);
    v30 = (*(*(v29 - 8) + 48))(v5, 1, v29);
    if (v30 == 1)
    {
      sub_1D1741A30(v5, &qword_1EC643650, &qword_1D1E71D40);
      v31 = type metadata accessor for StaticEndpoint(0);
      (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
      v32 = v47;
    }

    else
    {
      v34 = *&v5[*(v29 + 56)];
      MEMORY[0x1EEE9AC00](v30);
      *(&v45 - 2) = v5;

      sub_1D1746B78(sub_1D18076C8, v34, v15);

      v31 = type metadata accessor for StaticEndpoint(0);
      v35 = *(v31 - 8);
      v46 = *(v35 + 48);
      v36 = v46(v15, 1, v31);
      v45 = v35;
      if (v36 == 1)
      {

        sub_1D1771D7C(v37, v18);

        v38 = v46;
        v39 = v46(v15, 1, v31);
        v32 = v47;
        if (v39 != 1)
        {
          sub_1D1741A30(v15, &qword_1EC644780, &qword_1D1E91AA0);
        }
      }

      else
      {
        sub_1D17ECF60(v15, v18, type metadata accessor for StaticEndpoint);
        (*(v35 + 56))(v18, 0, 1, v31);
        v38 = v46;
        v32 = v47;
      }

      sub_1D17ECFC8(v5, type metadata accessor for StaticMatterDevice);
      if (v38(v18, 1, v31) != 1)
      {
        sub_1D17ECF60(v18, v32, type metadata accessor for StaticEndpoint);
        (*(v45 + 56))(v32, 0, 1, v31);
        goto LABEL_18;
      }
    }

    sub_1D1741A30(v18, &qword_1EC644780, &qword_1D1E91AA0);
    type metadata accessor for StaticEndpoint(0);
    (*(*(v31 - 8) + 56))(v32, 1, 1, v31);
LABEL_18:
    sub_1D1741A90(v32, v23, &qword_1EC644780, &qword_1D1E91AA0);
LABEL_19:
    v40 = v48;
    sub_1D1741A90(v23, v48, &qword_1EC644780, &qword_1D1E91AA0);
    sub_1D1741A90(v40, v12, &qword_1EC644780, &qword_1D1E91AA0);
    v41 = type metadata accessor for StaticEndpoint(0);
    if ((*(*(v41 - 8) + 48))(v12, 1, v41) == 1)
    {
      sub_1D1741A30(v12, &qword_1EC644780, &qword_1D1E91AA0);
      v42 = type metadata accessor for StaticRVCClusterGroup(0);
      v43 = v49;
      (*(*(v42 - 8) + 56))(v49, 1, 1, v42);
    }

    else
    {
      v43 = v49;
      sub_1D1741C08(&v12[*(v41 + 40)], v49, &qword_1EC644778, &unk_1D1E75B10);
      sub_1D17ECFC8(v12, type metadata accessor for StaticEndpoint);
      v44 = type metadata accessor for StaticRVCClusterGroup(0);
      v28 = 1;
      if ((*(*(v44 - 8) + 48))(v43, 1, v44) != 1)
      {
LABEL_23:
        sub_1D1741A30(v43, &qword_1EC644778, &unk_1D1E75B10);
        return v28;
      }
    }

    v28 = 0;
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t AccessoryDetails.turnOnPairingMode()()
{
  v1[20] = v0;
  v2 = type metadata accessor for StaticEndpoint(0);
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();
  v1[24] = type metadata accessor for StaticService(0);
  v1[25] = swift_task_alloc();
  type metadata accessor for StaticAccessory(0);
  v1[26] = swift_task_alloc();
  v1[27] = type metadata accessor for AccessoryDetails.Payload(0);
  v1[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17FB30C, 0, 0);
}

uint64_t sub_1D17FB30C()
{
  v1 = v0[28];
  v2 = v0[20];
  v3 = *(v0[22] + 56);
  v3(v0[30], 1, 1, v0[21]);
  sub_1D17ECA38(v2, v1, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D17ECFC8(v0[28], type metadata accessor for AccessoryDetails.Payload);
    }

    else
    {
      v9 = v0[30];
      v10 = v0[28];
      v11 = v0[21];
      sub_1D1741A30(v9, &qword_1EC644780, &qword_1D1E91AA0);
      sub_1D17ECF60(v10, v9, type metadata accessor for StaticEndpoint);
      v3(v9, 0, 1, v11);
    }

    v12 = v0[29];
    v13 = v0[21];
    v14 = v0[22];
    sub_1D1741C08(v0[30], v12, &qword_1EC644780, &qword_1D1E91AA0);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      v15 = v0[29];
      sub_1D1741A30(v0[30], &qword_1EC644780, &qword_1D1E91AA0);
      sub_1D1741A30(v15, &qword_1EC644780, &qword_1D1E91AA0);

      v16 = v0[1];

      return v16(0, 0);
    }

    else
    {
      sub_1D17ECF60(v0[29], v0[23], type metadata accessor for StaticEndpoint);
      v17 = swift_task_alloc();
      v0[42] = v17;
      *v17 = v0;
      v17[1] = sub_1D17FC218;

      return StaticEndpoint.activateCHIPPairingModeAndCreateSetupPayloadString()();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v0[28], v0[25], type metadata accessor for StaticService);
    v0[33] = sub_1D1E67E1C();
    v0[34] = sub_1D1E67E0C();
    v8 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D17FBA9C, v8, v7);
  }

  else
  {
    sub_1D17ECF60(v0[28], v0[26], type metadata accessor for StaticAccessory);
    v5 = swift_task_alloc();
    v0[31] = v5;
    *v5 = v0;
    v5[1] = sub_1D17FB6D4;

    return StaticAccessory.accessory.getter();
  }
}

uint64_t sub_1D17FB6D4(uint64_t a1)
{
  *(*v1 + 256) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17FB7D4, 0, 0);
}

uint64_t sub_1D17FB7D4()
{
  sub_1D17ECFC8(v0[26], type metadata accessor for StaticAccessory);
  v1 = v0[32];
  v0[40] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D17FC02C;
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644788, &qword_1D1E75B28);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17FC60C;
    v0[13] = &block_descriptor_11;
    v0[14] = v2;
    [v1 activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v3 = v0[29];
    v4 = v0[21];
    v5 = v0[22];
    sub_1D1741C08(v0[30], v3, &qword_1EC644780, &qword_1D1E91AA0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      v6 = v0[29];
      sub_1D1741A30(v0[30], &qword_1EC644780, &qword_1D1E91AA0);
      sub_1D1741A30(v6, &qword_1EC644780, &qword_1D1E91AA0);

      v7 = v0[1];

      return v7(0, 0);
    }

    else
    {
      sub_1D17ECF60(v0[29], v0[23], type metadata accessor for StaticEndpoint);
      v8 = swift_task_alloc();
      v0[42] = v8;
      *v8 = v0;
      v8[1] = sub_1D17FC218;

      return StaticEndpoint.activateCHIPPairingModeAndCreateSetupPayloadString()();
    }
  }
}

uint64_t sub_1D17FBA9C()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D17FBB34, 0, 0);
}

uint64_t sub_1D17FBB34(uint64_t a1)
{
  *(v1 + 280) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17FBBC0, v3, v2);
}

uint64_t sub_1D17FBBC0()
{

  *(v0 + 288) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D17FBC34, 0, 0);
}

uint64_t sub_1D17FBC34(uint64_t a1)
{
  *(v1 + 296) = sub_1D1E66A2C();
  *(v1 + 304) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17FBCD4, v3, v2);
}

uint64_t sub_1D17FBCD4()
{
  v1 = v0[37];
  v2 = v0[36];

  v0[39] = [v2 accessoryFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D17FBD64, 0, 0);
}

uint64_t sub_1D17FBD64()
{
  sub_1D17ECFC8(v0[25], type metadata accessor for StaticService);
  v1 = v0[39];
  v0[40] = v1;
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D17FC02C;
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644788, &qword_1D1E75B28);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17FC60C;
    v0[13] = &block_descriptor_11;
    v0[14] = v2;
    [v1 activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v3 = v0[29];
    v4 = v0[21];
    v5 = v0[22];
    sub_1D1741C08(v0[30], v3, &qword_1EC644780, &qword_1D1E91AA0);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      v6 = v0[29];
      sub_1D1741A30(v0[30], &qword_1EC644780, &qword_1D1E91AA0);
      sub_1D1741A30(v6, &qword_1EC644780, &qword_1D1E91AA0);

      v7 = v0[1];

      return v7(0, 0);
    }

    else
    {
      sub_1D17ECF60(v0[29], v0[23], type metadata accessor for StaticEndpoint);
      v8 = swift_task_alloc();
      v0[42] = v8;
      *v8 = v0;
      v8[1] = sub_1D17FC218;

      return StaticEndpoint.activateCHIPPairingModeAndCreateSetupPayloadString()();
    }
  }
}

uint64_t sub_1D17FC02C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_1D17FC43C;
  }

  else
  {
    v2 = sub_1D17FC13C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D17FC13C()
{
  v1 = *(v0 + 240);

  sub_1D1741A30(v1, &qword_1EC644780, &qword_1D1E91AA0);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_1D17FC218(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 344) = v2;

  if (v2)
  {
    v7 = sub_1D17FC51C;
  }

  else
  {
    *(v6 + 352) = a2;
    *(v6 + 360) = a1;
    v7 = sub_1D17FC34C;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D17FC34C()
{
  v1 = v0[30];
  sub_1D17ECFC8(v0[23], type metadata accessor for StaticEndpoint);
  sub_1D1741A30(v1, &qword_1EC644780, &qword_1D1E91AA0);
  v2 = v0[44];
  v3 = v0[45];

  v4 = v0[1];

  return v4(v3, v2);
}

uint64_t sub_1D17FC43C(uint64_t a1)
{
  v3 = v1[40];
  v2 = v1[41];
  v4 = v1[30];
  swift_willThrow();

  sub_1D1741A30(v4, &qword_1EC644780, &qword_1D1E91AA0);

  v5 = v1[1];

  return v5(0, 0);
}

uint64_t sub_1D17FC51C()
{
  v1 = v0[43];
  v2 = v0[30];
  sub_1D17ECFC8(v0[23], type metadata accessor for StaticEndpoint);
  sub_1D1741A30(v2, &qword_1EC644780, &qword_1D1E91AA0);

  v3 = v0[1];

  return v3(0, 0);
}

uint64_t sub_1D17FC60C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = sub_1D1E6781C();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t AccessoryDetails.removeAccessoryFromAppleHome()()
{
  v1[50] = v0;
  type metadata accessor for StaticServiceGroup(0);
  v1[51] = swift_task_alloc();
  v1[52] = type metadata accessor for StaticService(0);
  v1[53] = swift_task_alloc();
  type metadata accessor for StaticAccessory(0);
  v1[54] = swift_task_alloc();
  v1[55] = type metadata accessor for AccessoryDetails.Payload(0);
  v1[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17FC7FC, 0, 0);
}

uint64_t sub_1D17FC7FC()
{
  sub_1D17ECA38(v0[50], v0[56], type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[56];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D17ECF60(v2, v0[51], type metadata accessor for StaticServiceGroup);
      v5 = swift_task_alloc();
      v0[70] = v5;
      *v5 = v0;
      v5[1] = sub_1D17FD5C8;

      return StaticServiceGroup.serviceGroup.getter();
    }

    else
    {
      sub_1D17ECFC8(v2, type metadata accessor for AccessoryDetails.Payload);

      v8 = v0[1];

      return v8();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v2, v0[53], type metadata accessor for StaticService);
    v0[61] = sub_1D1E67E1C();
    v0[62] = sub_1D1E67E0C();
    v7 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D17FCF44, v7, v6);
  }

  else
  {
    sub_1D17ECF60(v2, v0[54], type metadata accessor for StaticAccessory);
    v3 = swift_task_alloc();
    v0[57] = v3;
    *v3 = v0;
    v3[1] = sub_1D17FCA94;

    return StaticAccessory.accessory.getter();
  }
}

uint64_t sub_1D17FCA94(uint64_t a1)
{
  *(*v1 + 464) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17FCB94, 0, 0);
}

uint64_t sub_1D17FCB94()
{
  v1 = *(v0 + 464);
  if (v1)
  {
    v2 = [*(v0 + 464) home];
    *(v0 + 472) = v2;
    if (v2)
    {
      v3 = v2;
      *(v0 + 144) = v0;
      *(v0 + 152) = sub_1D17FCD7C;
      v4 = swift_continuation_init();
      *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 336) = MEMORY[0x1E69E9820];
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_1D17B04C8;
      *(v0 + 360) = &block_descriptor_24;
      *(v0 + 368) = v4;
      [v3 removeAccessory:v1 completionHandler:v0 + 336];

      return MEMORY[0x1EEE6DEC8](v0 + 144);
    }

    sub_1D17ECFC8(*(v0 + 432), type metadata accessor for StaticAccessory);
  }

  else
  {
    sub_1D17ECFC8(*(v0 + 432), type metadata accessor for StaticAccessory);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D17FCD7C()
{
  v1 = *(*v0 + 176);
  *(*v0 + 480) = v1;
  if (v1)
  {
    v2 = sub_1D17FDB7C;
  }

  else
  {
    v2 = sub_1D17FCE8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D17FCE8C()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 432);

  sub_1D17ECFC8(v2, type metadata accessor for StaticAccessory);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D17FCF44()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D17FCFDC, 0, 0);
}

uint64_t sub_1D17FCFDC(uint64_t a1)
{
  *(v1 + 504) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17FD068, v3, v2);
}

uint64_t sub_1D17FD068()
{

  *(v0 + 512) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D17FD0DC, 0, 0);
}

uint64_t sub_1D17FD0DC(uint64_t a1)
{
  *(v1 + 520) = sub_1D1E66A2C();
  *(v1 + 528) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17FD17C, v3, v2);
}

uint64_t sub_1D17FD17C()
{
  v1 = v0[65];
  v2 = v0[64];

  v0[67] = [v2 accessoryFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D17FD210, 0, 0);
}

uint64_t sub_1D17FD210()
{
  v1 = v0[67];
  if (v1)
  {
    v2 = [v1 home];
    v0[68] = v2;
    if (v2)
    {
      v3 = v2;
      v4 = v0[67];
      v0[10] = v0;
      v0[11] = sub_1D17FD3FC;
      v5 = swift_continuation_init();
      v0[41] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      v0[34] = MEMORY[0x1E69E9820];
      v0[35] = 1107296256;
      v0[36] = sub_1D17B04C8;
      v0[37] = &block_descriptor_20;
      v0[38] = v5;
      [v3 removeAccessory:v4 completionHandler:v0 + 34];

      return MEMORY[0x1EEE6DEC8](v0 + 10);
    }

    v6 = v0[67];
    sub_1D17ECFC8(v0[53], type metadata accessor for StaticService);
  }

  else
  {
    sub_1D17ECFC8(v0[53], type metadata accessor for StaticService);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D17FD3FC()
{
  v1 = *(*v0 + 112);
  *(*v0 + 552) = v1;
  if (v1)
  {
    v2 = sub_1D17FDC48;
  }

  else
  {
    v2 = sub_1D17FD50C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D17FD50C()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 424);

  sub_1D17ECFC8(v2, type metadata accessor for StaticService);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D17FD5C8(uint64_t a1)
{
  *(*v1 + 568) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17FD6C8, 0, 0);
}

uint64_t sub_1D17FD6C8()
{
  v1 = *(v0 + 568);
  if (!v1)
  {
    v10 = *(v0 + 408);
LABEL_16:
    sub_1D17ECFC8(v10, type metadata accessor for StaticServiceGroup);
    goto LABEL_17;
  }

  v2 = [*(v0 + 568) services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v3 = sub_1D1E67C1C();

  if (v3 >> 62)
  {
    v4 = sub_1D1E6873C();
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
LABEL_15:
    v11 = *(v0 + 408);

    v10 = v11;
    goto LABEL_16;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1D3891EF0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v4);
    }

    v5 = *(v3 + 32);
  }

  v6 = v5;

  v7 = [v6 accessory];

  if (v7)
  {
    v8 = [v7 home];
    *(v0 + 576) = v8;

    if (v8)
    {
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1D17FD9B0;
      v9 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 208) = MEMORY[0x1E69E9820];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_1D17B04C8;
      *(v0 + 232) = &block_descriptor_16;
      *(v0 + 240) = v9;
      [v8 removeServiceGroup:v1 completionHandler:v0 + 208];
      v4 = v0 + 16;

      return MEMORY[0x1EEE6DEC8](v4);
    }
  }

  sub_1D17ECFC8(*(v0 + 408), type metadata accessor for StaticServiceGroup);

LABEL_17:

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D17FD9B0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 584) = v1;
  if (v1)
  {
    v2 = sub_1D17FDD18;
  }

  else
  {
    v2 = sub_1D17FDAC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D17FDAC0()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 408);

  sub_1D17ECFC8(v2, type metadata accessor for StaticServiceGroup);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D17FDB7C(uint64_t a1)
{
  v2 = *(v1 + 464);
  v3 = *(v1 + 432);
  swift_willThrow();

  sub_1D17ECFC8(v3, type metadata accessor for StaticAccessory);

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1D17FDC48(uint64_t a1)
{
  v2 = *(v1 + 536);
  v3 = *(v1 + 424);
  swift_willThrow();

  sub_1D17ECFC8(v3, type metadata accessor for StaticService);

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1D17FDD18(uint64_t a1)
{
  v2 = *(v1 + 568);
  v3 = *(v1 + 408);
  swift_willThrow();

  sub_1D17ECFC8(v3, type metadata accessor for StaticServiceGroup);

  v4 = *(v1 + 8);

  return v4();
}

uint64_t AccessoryDetails.removeAccessoryFromAllEcosystems()()
{
  v1[34] = v0;
  v1[35] = type metadata accessor for StaticService(0);
  v1[36] = swift_task_alloc();
  type metadata accessor for StaticAccessory(0);
  v1[37] = swift_task_alloc();
  v1[38] = type metadata accessor for AccessoryDetails.Payload(0);
  v1[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17FDED8, 0, 0);
}

uint64_t sub_1D17FDED8()
{
  sub_1D17ECA38(v0[34], v0[39], type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[39];
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D17ECF60(v2, v0[36], type metadata accessor for StaticService);
      v0[44] = sub_1D1E67E1C();
      v0[45] = sub_1D1E67E0C();
      v7 = sub_1D1E67D4C();

      return MEMORY[0x1EEE6DFA0](sub_1D17FE554, v7, v6);
    }

    else
    {
      sub_1D17ECF60(v2, v0[37], type metadata accessor for StaticAccessory);
      v5 = swift_task_alloc();
      v0[40] = v5;
      *v5 = v0;
      v5[1] = sub_1D17FE0C4;

      return StaticAccessory.accessory.getter();
    }
  }

  else
  {
    sub_1D17ECFC8(v2, type metadata accessor for AccessoryDetails.Payload);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1D17FE0C4(uint64_t a1)
{
  *(*v1 + 328) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17FE1C4, 0, 0);
}

uint64_t sub_1D17FE1C4()
{
  v1 = *(v0 + 328);
  if (v1)
  {
    v2 = [*(v0 + 328) home];
    *(v0 + 336) = v2;
    if (v2)
    {
      v3 = v2;
      *(v0 + 80) = v0;
      *(v0 + 88) = sub_1D17FE3A0;
      v4 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 208) = MEMORY[0x1E69E9820];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_1D17B04C8;
      *(v0 + 232) = &block_descriptor_32;
      *(v0 + 240) = v4;
      [v3 resetAndRemoveAllCHIPPairingsFromAccessory:v1 completion:v0 + 208];

      return MEMORY[0x1EEE6DEC8](v0 + 80);
    }

    sub_1D17ECFC8(*(v0 + 296), type metadata accessor for StaticAccessory);
  }

  else
  {
    sub_1D17ECFC8(*(v0 + 296), type metadata accessor for StaticAccessory);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D17FE3A0()
{
  v1 = *(*v0 + 112);
  *(*v0 + 344) = v1;
  if (v1)
  {
    v2 = sub_1D17FEBB0;
  }

  else
  {
    v2 = sub_1D17FE4B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D17FE4B0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 296);

  sub_1D17ECFC8(v2, type metadata accessor for StaticAccessory);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D17FE554()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D17FE5EC, 0, 0);
}

uint64_t sub_1D17FE5EC(uint64_t a1)
{
  *(v1 + 368) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17FE678, v3, v2);
}

uint64_t sub_1D17FE678()
{

  *(v0 + 376) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D17FE6EC, 0, 0);
}

uint64_t sub_1D17FE6EC(uint64_t a1)
{
  *(v1 + 384) = sub_1D1E66A2C();
  *(v1 + 392) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17FE78C, v3, v2);
}

uint64_t sub_1D17FE78C()
{
  v1 = v0[48];
  v2 = v0[47];

  v0[50] = [v2 accessoryFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D17FE81C, 0, 0);
}

uint64_t sub_1D17FE81C()
{
  v1 = v0[50];
  if (v1)
  {
    v2 = [v1 home];
    v0[51] = v2;
    if (v2)
    {
      v3 = v2;
      v4 = v0[50];
      v0[2] = v0;
      v0[3] = sub_1D17FE9FC;
      v5 = swift_continuation_init();
      v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      v0[18] = MEMORY[0x1E69E9820];
      v0[19] = 1107296256;
      v0[20] = sub_1D17B04C8;
      v0[21] = &block_descriptor_27;
      v0[22] = v5;
      [v3 resetAndRemoveAllCHIPPairingsFromAccessory:v4 completion:v0 + 18];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    v6 = v0[50];
    sub_1D17ECFC8(v0[36], type metadata accessor for StaticService);
  }

  else
  {
    sub_1D17ECFC8(v0[36], type metadata accessor for StaticService);
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D17FE9FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = sub_1D17FEC70;
  }

  else
  {
    v2 = sub_1D17FEB0C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D17FEB0C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 288);

  sub_1D17ECFC8(v2, type metadata accessor for StaticService);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D17FEBB0(uint64_t a1)
{
  v2 = *(v1 + 328);
  v3 = *(v1 + 296);
  swift_willThrow();

  sub_1D17ECFC8(v3, type metadata accessor for StaticAccessory);

  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_1D17FEC70(uint64_t a1)
{
  v2 = *(v1 + 400);
  v3 = *(v1 + 288);
  swift_willThrow();

  sub_1D17ECFC8(v3, type metadata accessor for StaticService);

  v4 = *(v1 + 8);

  return v4();
}

uint64_t AccessoryDetails.identify()()
{
  v1[34] = v0;
  v1[35] = type metadata accessor for StaticService(0);
  v1[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v2 = type metadata accessor for StaticEndpoint(0);
  v1[43] = v2;
  v1[44] = *(v2 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  type metadata accessor for StaticAccessory(0);
  v1[48] = swift_task_alloc();
  v1[49] = type metadata accessor for AccessoryDetails.Payload(0);
  v1[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D17FEF34, 0, 0);
}

uint64_t sub_1D17FEF34()
{
  sub_1D17ECA38(v0[34], v0[50], type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[50];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D17ECFC8(v2, type metadata accessor for AccessoryDetails.Payload);

      v7 = v0[1];

      return v7();
    }

    else
    {
      sub_1D17ECF60(v2, v0[45], type metadata accessor for StaticEndpoint);
      v10 = swift_task_alloc();
      v0[68] = v10;
      *v10 = v0;
      v10[1] = sub_1D1800A50;

      return StaticEndpoint.identify()();
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1D17ECF60(v2, v0[36], type metadata accessor for StaticService);
      v0[57] = sub_1D1E67E1C();
      v0[58] = sub_1D1E67E0C();
      v3 = sub_1D1E67D4C();
      v5 = v9;
      v6 = sub_1D17FFD54;
    }

    else
    {
      sub_1D17ECF60(v2, v0[48], type metadata accessor for StaticAccessory);
      sub_1D1E67E1C();
      v0[51] = sub_1D1E67E0C();
      v3 = sub_1D1E67D4C();
      v5 = v4;
      v6 = sub_1D17FF220;
    }

    return MEMORY[0x1EEE6DFA0](v6, v3, v5);
  }
}

uint64_t sub_1D17FF220()
{
  v1 = *(v0 + 304);

  AccessoryDetails.Payload.staticMatterDevice.getter(v1);

  return MEMORY[0x1EEE6DFA0](sub_1D17FF298, 0, 0);
}

uint64_t sub_1D17FF298()
{
  v1 = v0[38];
  v2 = type metadata accessor for StaticMatterDevice(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[43];
  v5 = v0[44];
  if (v3 == 1)
  {
    v6 = v0[42];
    sub_1D1741A30(v1, &qword_1EC643650, &qword_1D1E71D40);
    (*(v5 + 56))(v6, 1, 1, v4);
LABEL_8:
    sub_1D1741A30(v0[42], &qword_1EC644780, &qword_1D1E91AA0);
    v19 = swift_task_alloc();
    v0[54] = v19;
    *v19 = v0;
    v19[1] = sub_1D17FF824;

    return StaticAccessory.accessory.getter();
  }

  v7 = v0[41];
  v8 = *(v1 + *(v2 + 56));
  *(swift_task_alloc() + 16) = v1;

  sub_1D1746B78(sub_1D18085E0, v8, v7);

  v9 = *(v5 + 48);
  if (v9(v7, 1, v4) == 1)
  {
    v11 = v0[42];
    v10 = v0[43];
    v12 = v0[41];

    sub_1D1771D7C(v13, v11);

    if (v9(v12, 1, v10) != 1)
    {
      sub_1D1741A30(v0[41], &qword_1EC644780, &qword_1D1E91AA0);
    }
  }

  else
  {
    v14 = v0[43];
    v15 = v0[44];
    v16 = v0[42];
    sub_1D17ECF60(v0[41], v16, type metadata accessor for StaticEndpoint);
    (*(v15 + 56))(v16, 0, 1, v14);
  }

  v17 = v0[42];
  v18 = v0[43];
  sub_1D17ECFC8(v0[38], type metadata accessor for StaticMatterDevice);
  if (v9(v17, 1, v18) == 1)
  {
    goto LABEL_8;
  }

  sub_1D17ECF60(v0[42], v0[47], type metadata accessor for StaticEndpoint);
  v21 = swift_task_alloc();
  v0[52] = v21;
  *v21 = v0;
  v21[1] = sub_1D17FF5E4;

  return StaticEndpoint.identify()();
}

uint64_t sub_1D17FF5E4()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_1D1800C74;
  }

  else
  {
    v2 = sub_1D17FF6F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D17FF6F8()
{
  v1 = v0[48];
  sub_1D17ECFC8(v0[47], type metadata accessor for StaticEndpoint);
  sub_1D17ECFC8(v1, type metadata accessor for StaticAccessory);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D17FF824(uint64_t a1)
{
  *(*v1 + 440) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17FF924, 0, 0);
}

uint64_t sub_1D17FF924()
{
  v1 = v0[55];
  if (v1)
  {
    v0[10] = v0;
    v0[11] = sub_1D17FFB28;
    v2 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1D17B04C8;
    v0[29] = &block_descriptor_42;
    v0[30] = v2;
    [v1 identifyWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 10);
  }

  else
  {
    sub_1D17ECFC8(v0[48], type metadata accessor for StaticAccessory);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1D17FFB28()
{
  v1 = *(*v0 + 112);
  *(*v0 + 448) = v1;
  if (v1)
  {
    v2 = sub_1D1800F6C;
  }

  else
  {
    v2 = sub_1D17FFC38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}