uint64_t sub_1D1A5CF70(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsThirdPartyMusic];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateSupportsThirdPartyMusic: | accessory={id: %{public}s, name: %s}, supportsThirdPartyMusic: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 312))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5D300(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsDoorbellChime];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateSupportsDoorbellChime: | accessory={id: %{public}s, name: %s}, supportsDoorbellChime: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 320))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5D690(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsUserMediaSettings];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateSupportsUserMediaSettings: | accessory={id: %{public}s, name: %s}, supportsUserMediaSettings: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 328))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5DA20(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "accessory:didUpdateLastKnownOperatingStateResponseFor: | accessory={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 336))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5DEA0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v31 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v32);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v32);

    *(v13 + 14) = v24;
    *(v13 + 22) = 2048;
    v25 = [v9 reachableTransports];

    *(v13 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateReachableTransports: | accessory={id: %{public}s, name: %s}, reachableTransports: %ld", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v26 = v13;
    v2 = v31;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  else
  {
  }

  v27 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    (*(v29 + 344))(v9, ObjectType, v29);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5E230(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136446466;
    v17 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v33 = v3;
    v20 = v19;
    (*(v7 + 8))(v9, v6);
    v21 = sub_1D1B1312C(v18, v20, &v35);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = [v11 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = sub_1D1B1312C(v23, v25, &v35);

    *(v15 + 14) = v26;
    v3 = v33;
    _os_log_impl(&dword_1D16EC000, v12, v13, "accessory:didUpdate:device: | accessory={id: %{public}s, name: %s}", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v16, -1, -1);
    v27 = v15;
    a2 = v34;
    MEMORY[0x1D3893640](v27, -1, -1);
  }

  v28 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = *(v28 + 8);
    ObjectType = swift_getObjectType();
    v35 = a2;
    (*(v30 + 352))(v11, &v35, ObjectType, v30);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5E5B0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdatePairingIdentity: | accessory={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 360))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5E908(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateAudioDestinationController: | accessory={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 368))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5EC60(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateAudioDestination: | accessory={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 376))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5EFB8(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateDiagnosticsTransferSupport: | accessory={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 384))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5F310(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidSetHasOnboardedForNaturalLighting: | accessory={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 392))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5F668(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsPreferredMediaUser];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateSupportsPreferredMediaUser: | accessory={id: %{public}s, name: %s}, supportsPreferredMediaUser: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 400))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5F9F8(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdatePreferredMediaUser: | accessory={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 408))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A5FD50(void *a1, int a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136446722;
    v15 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v31 = v3;
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = sub_1D1B1312C(v16, v18, &v33);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v10 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v33);

    *(v13 + 14) = v24;
    v3 = v31;
    *(v13 + 22) = 1024;
    v25 = v32;
    *(v13 + 24) = v32 & 1;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessory:didUpdateSupportsWalletKey: | accessory={id: %{public}s, name: %s}, supportsWalletKey: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  else
  {

    v25 = v32;
  }

  v26 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 416))(v10, v25 & 1, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A600D8(void *a1, int a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136446722;
    v15 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v31 = v3;
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = sub_1D1B1312C(v16, v18, &v33);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v10 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v33);

    *(v13 + 14) = v24;
    v3 = v31;
    *(v13 + 22) = 1024;
    v25 = v32;
    *(v13 + 24) = v32 & 1;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessory:didUpdateSupportsUWBUnlock: | accessory={id: %{public}s, name: %s}, supportsUWBUnlock: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  else
  {

    v25 = v32;
  }

  v26 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 424))(v10, v25 & 1, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A60460(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v34 = v2;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35 = v13;
    *v12 = 136446722;
    v14 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v15 = sub_1D1E68FAC();
    v17 = v16;
    (*(v5 + 8))(v7, v4);
    v18 = sub_1D1B1312C(v15, v17, &v35);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v19 = [v9 name];
    v20 = sub_1D1E6781C();
    v22 = v21;

    v23 = sub_1D1B1312C(v20, v22, &v35);

    *(v12 + 14) = v23;
    *(v12 + 22) = 2080;
    v24 = [v9 pendingConfigurationIdentifier];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1D1E6781C();
      v28 = v27;
    }

    else
    {
      v28 = 0xE300000000000000;
      v26 = 7104878;
    }

    v29 = sub_1D1B1312C(v26, v28, &v35);

    *(v12 + 24) = v29;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdatePendingConfigurationIdentifier: | accessory={id: %{public}s, name: %s}, pendingConfigurationIdentifier: %s", v12, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v13, -1, -1);
    MEMORY[0x1D3893640](v12, -1, -1);

    v2 = v34;
  }

  else
  {
  }

  v30 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v32 = *(v30 + 8);
    ObjectType = swift_getObjectType();
    (*(v32 + 432))(v9, ObjectType, v32);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A60824(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v37[0] = v16;
    *v15 = 136446466;
    v17 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v35 = v3;
    v20 = v19;
    (*(v7 + 8))(v9, v6);
    v21 = sub_1D1B1312C(v18, v20, v37);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = [v11 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = v23;
    v3 = v35;
    v27 = sub_1D1B1312C(v26, v25, v37);

    *(v15 + 14) = v27;
    _os_log_impl(&dword_1D16EC000, v12, v13, "accessory:didUpdateWifiNetworkInfo: | accessory={id: %{public}s, name: %s}", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v16, -1, -1);
    v28 = v15;
    a2 = v36;
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  v29 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v31 = *(v29 + 8);
    ObjectType = swift_getObjectType();
    v37[3] = sub_1D1741B10(0, &qword_1EC6496F0, 0x1E69A2A80);
    v37[0] = a2;
    v33 = *(v31 + 440);
    v34 = a2;
    v33(v11, v37, ObjectType, v31);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return result;
}

uint64_t sub_1D1A60BD0(void *a1, int a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136446722;
    v15 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v31 = v3;
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = sub_1D1B1312C(v16, v18, &v33);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v10 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v33);

    *(v13 + 14) = v24;
    v3 = v31;
    *(v13 + 22) = 1024;
    v25 = v32;
    *(v13 + 24) = v32 & 1;
    _os_log_impl(&dword_1D16EC000, v11, v12, "accessory:didUpdateHH1EOLEnabled: | accessory={id: %{public}s, name: %s}, enabled: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  else
  {

    v25 = v32;
  }

  v26 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 448))(v10, v25 & 1, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A60F58(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsRMVonAppleTV];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateSupportsRMVonAppleTV: | accessory={id: %{public}s, name: %s}, supportsRMVonAppleTV: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 456))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A612E8(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsJustSiri];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateSupportsJustSiri: | accessory={id: %{public}s, name: %s}, supportsJustSiri: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 464))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A61678(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446722;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    *(v13 + 22) = 1024;
    LODWORD(v24) = [v9 supportsMediaContentProfile];

    *(v13 + 24) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidUpdateSupportsMediaContentProfile: | accessory={id: %{public}s, name: %s}, supportsMediaContentProfile: %{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  else
  {
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 472))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A61A08(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidSetHasOnboardedForAdaptiveTemperatureAutomations: | accessory={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 480))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A61D60(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "accessoryDidSetHasOnboardedForCleanEnergyAutomation: | accessory={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 488))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A620B8(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = a2;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  v13 = os_log_type_enabled(v11, v12);
  v43 = v9;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v14 = 136446722;
    v15 = [v9 uniqueIdentifier];
    v41 = v12;
    v16 = v15;
    sub_1D1E66A5C();

    v40 = sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v18 = v10;
    v20 = v19;
    v39 = *(v5 + 8);
    v39(v7, v4);
    v21 = sub_1D1B1312C(v17, v20, &v45);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    v22 = [v9 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = v23;
    v10 = v18;
    v27 = sub_1D1B1312C(v26, v25, &v45);

    *(v14 + 14) = v27;
    *(v14 + 22) = 2082;
    v28 = [v18 uniqueIdentifier];
    sub_1D1E66A5C();

    v29 = sub_1D1E68FAC();
    v31 = v30;
    v39(v7, v4);
    v32 = sub_1D1B1312C(v29, v31, &v45);

    *(v14 + 24) = v32;
    _os_log_impl(&dword_1D16EC000, v11, v41, "accessory:didAdd:profile: | accessory={id: %{public}s, name: %s}, profile={id: %{public}s}", v14, 0x20u);
    v33 = v42;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v33, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  v34 = v44 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36 = *(v34 + 8);
    ObjectType = swift_getObjectType();
    v45 = v10;
    (*(v36 + 496))(v43, &v45, ObjectType, v36);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A624D8(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = a2;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  v13 = os_log_type_enabled(v11, v12);
  v43 = v9;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v14 = 136446722;
    v15 = [v9 uniqueIdentifier];
    v41 = v12;
    v16 = v15;
    sub_1D1E66A5C();

    v40 = sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v18 = v10;
    v20 = v19;
    v39 = *(v5 + 8);
    v39(v7, v4);
    v21 = sub_1D1B1312C(v17, v20, &v45);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    v22 = [v9 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = v23;
    v10 = v18;
    v27 = sub_1D1B1312C(v26, v25, &v45);

    *(v14 + 14) = v27;
    *(v14 + 22) = 2082;
    v28 = [v18 uniqueIdentifier];
    sub_1D1E66A5C();

    v29 = sub_1D1E68FAC();
    v31 = v30;
    v39(v7, v4);
    v32 = sub_1D1B1312C(v29, v31, &v45);

    *(v14 + 24) = v32;
    _os_log_impl(&dword_1D16EC000, v11, v41, "accessory:didRemove:profile: | accessory={id: %{public}s, name: %s}, profile={id: %{public}s}", v14, 0x20u);
    v33 = v42;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v33, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  v34 = v44 + OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36 = *(v34 + 8);
    ObjectType = swift_getObjectType();
    v45 = v10;
    (*(v36 + 504))(v43, &v45, ObjectType, v36);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D1A628F8()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void (*sub_1D1A62994(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = HMAccessory.accessoryDelegate.modify(v2);
  return sub_1D1861B38;
}

id HMAccessorySettingsDataSource.settingsDelegate.getter()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_0();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1D1A62AE8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 delegate];
  if (!result)
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_0();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  result = swift_unknownObjectRelease();
LABEL_6:
  *a2 = Strong;
  a2[1] = v7;
  return result;
}

uint64_t HMAccessorySettingsDataSource.settingsDelegate.setter(uint64_t a1, uint64_t a2)
{
  if (![v2 delegate])
  {
    goto LABEL_7;
  }

  _s15DelegateAdapterCMa_0();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v6 = _s15DelegateAdapterCMa_0();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = a2;
    swift_unknownObjectWeakAssign();
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    swift_beginAccess();
    v9 = v8;
    objc_setAssociatedObject(v2, &unk_1EC649710, v9, 1);
    swift_endAccess();

    v10 = v9;
    [v2 setDelegate_];

    return swift_unknownObjectRelease();
  }

  *(v4 + OBJC_IVAR____TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*HMAccessorySettingsDataSource.settingsDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (![v1 delegate])
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_0();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = Strong;
  a1[1] = v6;
  return sub_1D1A62DB8;
}

uint64_t sub_1D1A62DB8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return HMAccessorySettingsDataSource.settingsDelegate.setter(*a1, v2);
  }

  v3 = swift_unknownObjectRetain();
  HMAccessorySettingsDataSource.settingsDelegate.setter(v3, v2);

  return swift_unknownObjectRelease();
}

unint64_t sub_1D1A63030()
{
  result = qword_1EC649728;
  if (!qword_1EC649728)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC649728);
  }

  return result;
}

id sub_1D1A6307C()
{
  result = [*v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_0();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void (*sub_1D1A63138(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = HMAccessorySettingsDataSource.settingsDelegate.modify(v2);
  return sub_1D1861B38;
}

uint64_t sub_1D1A631AC()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC649730);
  __swift_project_value_buffer(v0, qword_1EC649730);
  return sub_1D1E6708C();
}

uint64_t static Logger.homeKitDelegates.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  v3 = __swift_project_value_buffer(v2, qword_1EC649730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id HMHome.homeDelegate.getter()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_1();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1D1A633D8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 delegate];
  if (!result)
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_1();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  result = swift_unknownObjectRelease();
LABEL_6:
  *a2 = Strong;
  a2[1] = v7;
  return result;
}

uint64_t HMHome.homeDelegate.setter(uint64_t a1, uint64_t a2)
{
  if (![v2 delegate])
  {
    goto LABEL_7;
  }

  _s15DelegateAdapterCMa_1();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v6 = _s15DelegateAdapterCMa_1();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = a2;
    swift_unknownObjectWeakAssign();
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    swift_beginAccess();
    v9 = v8;
    objc_setAssociatedObject(v2, &unk_1EC649750, v9, 1);
    swift_endAccess();

    v10 = v9;
    [v2 setDelegate_];

    return swift_unknownObjectRelease();
  }

  *(v4 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*HMHome.homeDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (![v1 delegate])
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_1();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = Strong;
  a1[1] = v6;
  return sub_1D1A636A8;
}

uint64_t sub_1D1A636A8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return HMHome.homeDelegate.setter(*a1, v2);
  }

  v3 = swift_unknownObjectRetain();
  HMHome.homeDelegate.setter(v3, v2);

  return swift_unknownObjectRelease();
}

uint64_t dispatch thunk of HomeDelegate.home(_:didAdd:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 40))(a1, a2, a3);
}

{
  return (*(a4 + 56))(a1, a2, a3);
}

{
  return (*(a4 + 80))(a1, a2, a3);
}

{
  return (*(a4 + 104))(a1, a2, a3);
}

{
  return (*(a4 + 144))(a1, a2, a3);
}

{
  return (*(a4 + 184))(a1, a2, a3);
}

{
  return (*(a4 + 216))(a1, a2, a3);
}

{
  return (*(a4 + 280))(a1, a2, a3);
}

uint64_t dispatch thunk of HomeDelegate.home(_:didRemove:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 48))(a1, a2, a3);
}

{
  return (*(a4 + 64))(a1, a2, a3);
}

{
  return (*(a4 + 88))(a1, a2, a3);
}

{
  return (*(a4 + 112))(a1, a2, a3);
}

{
  return (*(a4 + 152))(a1, a2, a3);
}

{
  return (*(a4 + 192))(a1, a2, a3);
}

{
  return (*(a4 + 224))(a1, a2, a3);
}

{
  return (*(a4 + 288))(a1, a2, a3);
}

uint64_t dispatch thunk of HomeDelegate.home(_:didUpdateNameFor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 96))(a1, a2, a3);
}

{
  return (*(a4 + 120))(a1, a2, a3);
}

{
  return (*(a4 + 160))(a1, a2, a3);
}

{
  return (*(a4 + 200))(a1, a2, a3);
}

{
  return (*(a4 + 232))(a1, a2, a3);
}

uint64_t dispatch thunk of HomeDelegate.home(_:didAdd:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 128))(a1, a2, a3, a4);
}

{
  return (*(a5 + 168))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeDelegate.home(_:didRemove:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 136))(a1, a2, a3, a4);
}

{
  return (*(a5 + 176))(a1, a2, a3, a4);
}

uint64_t dispatch thunk of HomeDelegate.home(_:didUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 240))(a1, a2, a3);
}

{
  return (*(a4 + 264))(a1, a2, a3);
}

uint64_t dispatch thunk of HomeDelegate.home(_:didUpdateApplicationDataFor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 312))(a1, a2, a3);
}

{
  return (*(a4 + 320))(a1, a2, a3);
}

{
  return (*(a4 + 328))(a1, a2, a3);
}

uint64_t sub_1D1A63B3C(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "homeDidUpdateName: | home={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 24))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A63E94(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "homeDidUpdateAccessControl:forCurrentUser: | home={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 32))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A641EC(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didAdd:accessory: | home={id: %{public}s, name: %s}, accessory={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    (*(v45 + 40))(v51, v12, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A64668(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didRemove:accessory: | home={id: %{public}s, name: %s}, accessory={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    (*(v45 + 48))(v51, v12, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A64AE4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v15 = 136446722;
    v16 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v38 = v3;
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = sub_1D1B1312C(v17, v19, &v39);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = [v11 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v39);

    *(v15 + 14) = v25;
    *(v15 + 22) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = sub_1D1B1312C(v27, v29, &v39);

    *(v15 + 24) = v30;
    v3 = v38;
    _os_log_impl(&dword_1D16EC000, v13, v14, "home:didAdd:user: | home={id: %{public}s, name: %s}, user={name: %s}", v15, 0x20u);
    v31 = v37;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v31, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  v32 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = *(v32 + 8);
    ObjectType = swift_getObjectType();
    v39 = v12;
    (*(v34 + 56))(v11, &v39, ObjectType, v34);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A64EB8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v15 = 136446722;
    v16 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v38 = v3;
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = sub_1D1B1312C(v17, v19, &v39);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = [v11 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v39);

    *(v15 + 14) = v25;
    *(v15 + 22) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = sub_1D1B1312C(v27, v29, &v39);

    *(v15 + 24) = v30;
    v3 = v38;
    _os_log_impl(&dword_1D16EC000, v13, v14, "home:didRemove:user: | home={id: %{public}s, name: %s}, user={name: %s}", v15, 0x20u);
    v31 = v37;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v31, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  v32 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = *(v32 + 8);
    ObjectType = swift_getObjectType();
    v39 = v12;
    (*(v34 + 64))(v11, &v39, ObjectType, v34);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6528C(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC649730);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = v14;
  v17 = v15;
  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6832C();

  v20 = os_log_type_enabled(v18, v19);
  v65 = v16;
  v66 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v67 = v62;
    *v21 = 136447490;
    v22 = [v13 uniqueIdentifier];
    v61 = v19;
    v23 = v16;
    v24 = v22;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v60 = v18;
    v25 = sub_1D1E68FAC();
    v63 = v17;
    v64 = v4;
    v27 = v26;
    v28 = *(v9 + 8);
    v28(v11, v8);
    v29 = sub_1D1B1312C(v25, v27, &v67);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    v30 = [v13 name];
    v31 = sub_1D1E6781C();
    v33 = v32;

    v34 = sub_1D1B1312C(v31, v33, &v67);

    *(v21 + 14) = v34;
    *(v21 + 22) = 2082;
    v35 = [v23 uniqueIdentifier];
    sub_1D1E66A5C();

    v36 = sub_1D1E68FAC();
    v38 = v37;
    v28(v11, v8);
    v39 = sub_1D1B1312C(v36, v38, &v67);

    *(v21 + 24) = v39;
    *(v21 + 32) = 2080;
    v40 = [v23 name];
    v41 = sub_1D1E6781C();
    v43 = v42;

    v44 = sub_1D1B1312C(v41, v43, &v67);
    v17 = v63;

    *(v21 + 34) = v44;
    *(v21 + 42) = 2082;
    v45 = [v17 uniqueIdentifier];
    sub_1D1E66A5C();

    v46 = sub_1D1E68FAC();
    v48 = v47;
    v28(v11, v8);
    v4 = v64;
    v49 = sub_1D1B1312C(v46, v48, &v67);

    *(v21 + 44) = v49;
    *(v21 + 52) = 2080;
    v50 = [v17 name];
    v51 = sub_1D1E6781C();
    v53 = v52;

    v54 = sub_1D1B1312C(v51, v53, &v67);

    *(v21 + 54) = v54;
    v18 = v60;
    _os_log_impl(&dword_1D16EC000, v60, v61, "home:didUpdate:room:for: | home={id: %{public}s, name: %s}, room={id: %{public}s, name: %s}, accessory={id: %{public}s, name: %s}", v21, 0x3Eu);
    v55 = v62;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v55, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);
  }

  v56 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v58 = *(v56 + 8);
    ObjectType = swift_getObjectType();
    v67 = v65;
    (*(v58 + 72))(v66, &v67, v17, ObjectType, v58);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A65808(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didAdd:room: | home={id: %{public}s, name: %s}, room={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 80))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A65C88(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didRemove:room: | home={id: %{public}s, name: %s}, room={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 88))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A66108(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didUpdateNameFor:room: | home={id: %{public}s, name: %s}, room={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 96))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A66588(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didAdd:zone: | home={id: %{public}s, name: %s}, zone={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 104))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A66A08(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didRemove:zone: | home={id: %{public}s, name: %s}, zone={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 112))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A66E88(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didUpdateNameFor:zone: | home={id: %{public}s, name: %s}, zone={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 120))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A67308(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC649730);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = v14;
  v17 = v15;
  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6832C();

  v20 = os_log_type_enabled(v18, v19);
  v66 = v16;
  v67 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v69 = v63;
    *v21 = 136447490;
    v22 = [v13 uniqueIdentifier];
    v62 = v19;
    v23 = v16;
    v24 = v22;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v61 = v18;
    v25 = sub_1D1E68FAC();
    v64 = v17;
    v65 = v4;
    v27 = v26;
    v28 = *(v9 + 8);
    v28(v11, v8);
    v29 = sub_1D1B1312C(v25, v27, &v69);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    v30 = [v13 name];
    v31 = sub_1D1E6781C();
    v33 = v32;

    v34 = sub_1D1B1312C(v31, v33, &v69);

    *(v21 + 14) = v34;
    *(v21 + 22) = 2082;
    v35 = [v23 uniqueIdentifier];
    sub_1D1E66A5C();

    v36 = sub_1D1E68FAC();
    v38 = v37;
    v28(v11, v8);
    v39 = sub_1D1B1312C(v36, v38, &v69);

    *(v21 + 24) = v39;
    *(v21 + 32) = 2080;
    v40 = [v23 name];
    v41 = sub_1D1E6781C();
    v43 = v42;

    v44 = sub_1D1B1312C(v41, v43, &v69);
    v17 = v64;

    *(v21 + 34) = v44;
    *(v21 + 42) = 2082;
    v45 = [v17 uniqueIdentifier];
    sub_1D1E66A5C();

    v46 = sub_1D1E68FAC();
    v48 = v47;
    v28(v11, v8);
    v4 = v65;
    v49 = sub_1D1B1312C(v46, v48, &v69);

    *(v21 + 44) = v49;
    *(v21 + 52) = 2080;
    v50 = [v17 name];
    v51 = sub_1D1E6781C();
    v53 = v52;

    v54 = sub_1D1B1312C(v51, v53, &v69);

    *(v21 + 54) = v54;
    v18 = v61;
    _os_log_impl(&dword_1D16EC000, v61, v62, "home:didAdd:room:to:zone: | home={id: %{public}s, name: %s}, room={id: %{public}s, name: %s}, zone={id: %{public}s, name: %s}", v21, 0x3Eu);
    v55 = v63;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v55, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);
  }

  v56 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v58 = *(v56 + 8);
    ObjectType = swift_getObjectType();
    v68 = v17;
    v69 = v66;
    (*(v58 + 128))(v67, &v69, &v68, ObjectType, v58);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A67884(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC649730);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = v14;
  v17 = v15;
  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6832C();

  v20 = os_log_type_enabled(v18, v19);
  v66 = v16;
  v67 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v69 = v63;
    *v21 = 136447490;
    v22 = [v13 uniqueIdentifier];
    v62 = v19;
    v23 = v16;
    v24 = v22;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v61 = v18;
    v25 = sub_1D1E68FAC();
    v64 = v17;
    v65 = v4;
    v27 = v26;
    v28 = *(v9 + 8);
    v28(v11, v8);
    v29 = sub_1D1B1312C(v25, v27, &v69);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    v30 = [v13 name];
    v31 = sub_1D1E6781C();
    v33 = v32;

    v34 = sub_1D1B1312C(v31, v33, &v69);

    *(v21 + 14) = v34;
    *(v21 + 22) = 2082;
    v35 = [v23 uniqueIdentifier];
    sub_1D1E66A5C();

    v36 = sub_1D1E68FAC();
    v38 = v37;
    v28(v11, v8);
    v39 = sub_1D1B1312C(v36, v38, &v69);

    *(v21 + 24) = v39;
    *(v21 + 32) = 2080;
    v40 = [v23 name];
    v41 = sub_1D1E6781C();
    v43 = v42;

    v44 = sub_1D1B1312C(v41, v43, &v69);
    v17 = v64;

    *(v21 + 34) = v44;
    *(v21 + 42) = 2082;
    v45 = [v17 uniqueIdentifier];
    sub_1D1E66A5C();

    v46 = sub_1D1E68FAC();
    v48 = v47;
    v28(v11, v8);
    v4 = v65;
    v49 = sub_1D1B1312C(v46, v48, &v69);

    *(v21 + 44) = v49;
    *(v21 + 52) = 2080;
    v50 = [v17 name];
    v51 = sub_1D1E6781C();
    v53 = v52;

    v54 = sub_1D1B1312C(v51, v53, &v69);

    *(v21 + 54) = v54;
    v18 = v61;
    _os_log_impl(&dword_1D16EC000, v61, v62, "home:didRemove:room:from:zone: | home={id: %{public}s, name: %s}, room={id: %{public}s, name: %s}, zone={id: %{public}s, name: %s}", v21, 0x3Eu);
    v55 = v63;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v55, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);
  }

  v56 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v58 = *(v56 + 8);
    ObjectType = swift_getObjectType();
    v68 = v17;
    v69 = v66;
    (*(v58 + 136))(v67, &v69, &v68, ObjectType, v58);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A67E00(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didAdd:serviceGroup: | home={id: %{public}s, name: %s}, serviceGroup={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 144))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A68280(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didRemove:serviceGroup: | home={id: %{public}s, name: %s}, serviceGroup={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 152))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A68700(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didUpdateNameFor:serviceGroup: | home={id: %{public}s, name: %s}, serviceGroup={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 160))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A68B80(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC649730);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = v14;
  v17 = v15;
  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6832C();

  v20 = os_log_type_enabled(v18, v19);
  v66 = v16;
  v67 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v69 = v63;
    *v21 = 136447490;
    v22 = [v13 uniqueIdentifier];
    v62 = v19;
    v23 = v16;
    v24 = v22;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v61 = v18;
    v25 = sub_1D1E68FAC();
    v64 = v17;
    v65 = v4;
    v27 = v26;
    v28 = *(v9 + 8);
    v28(v11, v8);
    v29 = sub_1D1B1312C(v25, v27, &v69);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    v30 = [v13 name];
    v31 = sub_1D1E6781C();
    v33 = v32;

    v34 = sub_1D1B1312C(v31, v33, &v69);

    *(v21 + 14) = v34;
    *(v21 + 22) = 2082;
    v35 = [v23 uniqueIdentifier];
    sub_1D1E66A5C();

    v36 = sub_1D1E68FAC();
    v38 = v37;
    v28(v11, v8);
    v39 = sub_1D1B1312C(v36, v38, &v69);

    *(v21 + 24) = v39;
    *(v21 + 32) = 2080;
    v40 = [v23 name];
    v41 = sub_1D1E6781C();
    v43 = v42;

    v44 = sub_1D1B1312C(v41, v43, &v69);
    v17 = v64;

    *(v21 + 34) = v44;
    *(v21 + 42) = 2082;
    v45 = [v17 uniqueIdentifier];
    sub_1D1E66A5C();

    v46 = sub_1D1E68FAC();
    v48 = v47;
    v28(v11, v8);
    v4 = v65;
    v49 = sub_1D1B1312C(v46, v48, &v69);

    *(v21 + 44) = v49;
    *(v21 + 52) = 2080;
    v50 = [v17 name];
    v51 = sub_1D1E6781C();
    v53 = v52;

    v54 = sub_1D1B1312C(v51, v53, &v69);

    *(v21 + 54) = v54;
    v18 = v61;
    _os_log_impl(&dword_1D16EC000, v61, v62, "home:didAdd:service:to:serviceGroup: | home={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}, serviceGroup={id: %{public}s, name: %s}", v21, 0x3Eu);
    v55 = v63;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v55, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);
  }

  v56 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v58 = *(v56 + 8);
    ObjectType = swift_getObjectType();
    v68 = v17;
    v69 = v66;
    (*(v58 + 168))(v67, &v69, &v68, ObjectType, v58);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A690FC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC649730);
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = v14;
  v17 = v15;
  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6832C();

  v20 = os_log_type_enabled(v18, v19);
  v66 = v16;
  v67 = v13;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v69 = v63;
    *v21 = 136447490;
    v22 = [v13 uniqueIdentifier];
    v62 = v19;
    v23 = v16;
    v24 = v22;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v61 = v18;
    v25 = sub_1D1E68FAC();
    v64 = v17;
    v65 = v4;
    v27 = v26;
    v28 = *(v9 + 8);
    v28(v11, v8);
    v29 = sub_1D1B1312C(v25, v27, &v69);

    *(v21 + 4) = v29;
    *(v21 + 12) = 2080;
    v30 = [v13 name];
    v31 = sub_1D1E6781C();
    v33 = v32;

    v34 = sub_1D1B1312C(v31, v33, &v69);

    *(v21 + 14) = v34;
    *(v21 + 22) = 2082;
    v35 = [v23 uniqueIdentifier];
    sub_1D1E66A5C();

    v36 = sub_1D1E68FAC();
    v38 = v37;
    v28(v11, v8);
    v39 = sub_1D1B1312C(v36, v38, &v69);

    *(v21 + 24) = v39;
    *(v21 + 32) = 2080;
    v40 = [v23 name];
    v41 = sub_1D1E6781C();
    v43 = v42;

    v44 = sub_1D1B1312C(v41, v43, &v69);
    v17 = v64;

    *(v21 + 34) = v44;
    *(v21 + 42) = 2082;
    v45 = [v17 uniqueIdentifier];
    sub_1D1E66A5C();

    v46 = sub_1D1E68FAC();
    v48 = v47;
    v28(v11, v8);
    v4 = v65;
    v49 = sub_1D1B1312C(v46, v48, &v69);

    *(v21 + 44) = v49;
    *(v21 + 52) = 2080;
    v50 = [v17 name];
    v51 = sub_1D1E6781C();
    v53 = v52;

    v54 = sub_1D1B1312C(v51, v53, &v69);

    *(v21 + 54) = v54;
    v18 = v61;
    _os_log_impl(&dword_1D16EC000, v61, v62, "home:didRemove:service:from:serviceGroup: | home={id: %{public}s, name: %s}, service={id: %{public}s, name: %s}, serviceGroup={id: %{public}s, name: %s}", v21, 0x3Eu);
    v55 = v63;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v55, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);
  }

  v56 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v58 = *(v56 + 8);
    ObjectType = swift_getObjectType();
    v68 = v17;
    v69 = v66;
    (*(v58 + 176))(v67, &v69, &v68, ObjectType, v58);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A69678(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didAdd:actionSet: | home={id: %{public}s, name: %s}, actionSet={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 184))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A69AF8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didRemove:actionSet: | home={id: %{public}s, name: %s}, actionSet={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 192))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A69F78(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didUpdateNameFor:actionSet: | home={id: %{public}s, name: %s}, actionSet={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 200))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6A3F8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didUpdateActionsFor:actionSet: | home={id: %{public}s, name: %s}, actionSet={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 208))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6A878(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didAdd:trigger: | home={id: %{public}s, name: %s}, trigger={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 216))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6ACF8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didRemove:trigger: | home={id: %{public}s, name: %s}, trigger={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 224))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6B178(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didUpdateNameFor:trigger: | home={id: %{public}s, name: %s}, trigger={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 232))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6B5F8(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didUpdate:trigger: | home={id: %{public}s, name: %s}, trigger={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 240))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6BA78(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didUnblockAccessory: | home={id: %{public}s, name: %s}, accessory={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    (*(v45 + 248))(v51, v12, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6BEF4(void *a1, void *a2, void *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a3;
  v13 = a2;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6832C();

  v16 = os_log_type_enabled(v14, v15);
  v58 = v11;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v60 = v57;
    *v17 = 136447234;
    v18 = [v11 uniqueIdentifier];
    v56 = v14;
    v19 = v18;
    sub_1D1E66A5C();

    v53 = sub_1D1886B8C();
    v20 = sub_1D1E68FAC();
    v55 = v15;
    v21 = a2;
    v22 = v12;
    v24 = v23;
    v52 = *(v7 + 8);
    v52(v9, v6);
    v25 = sub_1D1B1312C(v20, v24, &v60);

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v26 = [v11 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = v27;
    v12 = v22;
    a2 = v21;
    v31 = sub_1D1B1312C(v30, v29, &v60);

    *(v17 + 14) = v31;
    *(v17 + 22) = 2112;
    v32 = v21;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v33;
    v34 = v54;
    *v54 = v33;
    *(v17 + 32) = 2082;
    v35 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    v36 = sub_1D1E68FAC();
    v38 = v37;
    v52(v9, v6);
    v39 = sub_1D1B1312C(v36, v38, &v60);

    *(v17 + 34) = v39;
    *(v17 + 42) = 2080;
    v40 = [v12 name];
    v41 = sub_1D1E6781C();
    v43 = v42;

    v44 = sub_1D1B1312C(v41, v43, &v60);

    *(v17 + 44) = v44;
    v45 = v56;
    _os_log_impl(&dword_1D16EC000, v56, v55, "home:didEncounterError:for: | home={id: %{public}s, name: %s}, error=%@, accessory={id: %{public}s, name: %s}", v17, 0x34u);
    sub_1D179F28C(v34);
    MEMORY[0x1D3893640](v34, -1, -1);
    v46 = v57;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v46, -1, -1);
    MEMORY[0x1D3893640](v17, -1, -1);
  }

  else
  {
  }

  v47 = v59 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v49 = *(v47 + 8);
    ObjectType = swift_getObjectType();
    (*(v49 + 256))(v58, a2, v12, ObjectType, v49);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6C3EC(void *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136446722;
    v15 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v31 = v3;
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = sub_1D1B1312C(v16, v18, &v33);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v10 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v33);

    *(v13 + 14) = v24;
    v3 = v31;
    v25 = v32;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "home:didUpdate:homeHubState: | home={id: %{public}s, name: %s}, homeHubState=%lu", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  else
  {

    v25 = v32;
  }

  v26 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 264))(v10, v25, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6C76C(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "homeDidUpdateSupportedFeatures: | home={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 272))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6CAC4(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = a2;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  v13 = os_log_type_enabled(v11, v12);
  v43 = v9;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v14 = 136446722;
    v15 = [v9 uniqueIdentifier];
    v41 = v12;
    v16 = v15;
    sub_1D1E66A5C();

    v40 = sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v18 = v10;
    v20 = v19;
    v39 = *(v5 + 8);
    v39(v7, v4);
    v21 = sub_1D1B1312C(v17, v20, &v45);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    v22 = [v9 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = v23;
    v10 = v18;
    v27 = sub_1D1B1312C(v26, v25, &v45);

    *(v14 + 14) = v27;
    *(v14 + 22) = 2082;
    v28 = [v18 uniqueIdentifier];
    sub_1D1E66A5C();

    v29 = sub_1D1E68FAC();
    v31 = v30;
    v39(v7, v4);
    v32 = sub_1D1B1312C(v29, v31, &v45);

    *(v14 + 24) = v32;
    _os_log_impl(&dword_1D16EC000, v11, v41, "home:didAdd:mediaSystem: | home={id: %{public}s, name: %s}, mediaSystem={id: %{public}s}", v14, 0x20u);
    v33 = v42;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v33, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  v34 = v44 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36 = *(v34 + 8);
    ObjectType = swift_getObjectType();
    v45 = v10;
    (*(v36 + 280))(v43, &v45, ObjectType, v36);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6CEE4(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = a2;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  v13 = os_log_type_enabled(v11, v12);
  v43 = v9;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v14 = 136446722;
    v15 = [v9 uniqueIdentifier];
    v41 = v12;
    v16 = v15;
    sub_1D1E66A5C();

    v40 = sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v18 = v10;
    v20 = v19;
    v39 = *(v5 + 8);
    v39(v7, v4);
    v21 = sub_1D1B1312C(v17, v20, &v45);

    *(v14 + 4) = v21;
    *(v14 + 12) = 2080;
    v22 = [v9 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = v23;
    v10 = v18;
    v27 = sub_1D1B1312C(v26, v25, &v45);

    *(v14 + 14) = v27;
    *(v14 + 22) = 2082;
    v28 = [v18 uniqueIdentifier];
    sub_1D1E66A5C();

    v29 = sub_1D1E68FAC();
    v31 = v30;
    v39(v7, v4);
    v32 = sub_1D1B1312C(v29, v31, &v45);

    *(v14 + 24) = v32;
    _os_log_impl(&dword_1D16EC000, v11, v41, "home:didRemove:mediaSystem: | home={id: %{public}s, name: %s}, mediaSystem={id: %{public}s}", v14, 0x20u);
    v33 = v42;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v33, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  v34 = v44 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36 = *(v34 + 8);
    ObjectType = swift_getObjectType();
    v45 = v10;
    (*(v36 + 288))(v43, &v45, ObjectType, v36);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6D304(void *a1, int a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136446722;
    v15 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v31 = v3;
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = sub_1D1B1312C(v16, v18, &v33);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v10 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v33);

    *(v13 + 14) = v24;
    v3 = v31;
    *(v13 + 22) = 1024;
    v25 = v32;
    *(v13 + 24) = v32 & 1;
    _os_log_impl(&dword_1D16EC000, v11, v12, "home:didUpdateAutomaticSoftwareUpdateEnabled: | home={id: %{public}s, name: %s}, enabled=%{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  else
  {

    v25 = v32;
  }

  v26 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 296))(v10, v25 & 1, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6D68C(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "homeDidUpdateApplicationData: | home={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 304))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6D9E4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didUpdateApplicationDataFor:room: | home={id: %{public}s, name: %s}, room={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 312))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6DE64(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didUpdateApplicationDataFor:serviceGroup: | home={id: %{public}s, name: %s}, serviceGroup={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 320))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6E2E4(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didUpdateApplicationDataFor:actionSet: | home={id: %{public}s, name: %s}, actionSet={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    v52 = v12;
    (*(v45 + 328))(v51, &v52, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6E764(void *a1, void *a2, int a3)
{
  LODWORD(v3) = a3;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v48 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v50 = v46;
    *v16 = 136447234;
    v17 = [v11 uniqueIdentifier];
    v45 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v44 = v14;
    v19 = sub_1D1E68FAC();
    v21 = v20;
    v47 = v3;
    v43 = *(v7 + 8);
    v43(v9, v6);
    v22 = sub_1D1B1312C(v19, v21, &v50);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2080;
    v23 = [v11 name];
    v24 = sub_1D1E6781C();
    v3 = v25;

    v26 = sub_1D1B1312C(v24, v3, &v50);

    *(v16 + 14) = v26;
    *(v16 + 22) = 2082;
    v27 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    v28 = sub_1D1E68FAC();
    v30 = v29;
    v43(v9, v6);
    LOBYTE(v3) = v47;
    v31 = sub_1D1B1312C(v28, v30, &v50);

    *(v16 + 24) = v31;
    *(v16 + 32) = 2080;
    v32 = [v12 name];
    v33 = sub_1D1E6781C();
    v35 = v34;

    v36 = sub_1D1B1312C(v33, v35, &v50);

    *(v16 + 34) = v36;
    *(v16 + 42) = 1024;
    *(v16 + 44) = v3 & 1;
    v37 = v45;
    _os_log_impl(&dword_1D16EC000, v45, v44, "home:didUpdate:actionSet:isExecuting: | home={id: %{public}s, name: %s}, actionSet={id: %{public}s, name: %s}, isExecuting=%{BOOL}d", v16, 0x30u);
    v38 = v46;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v38, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v39 = v49 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v41 = *(v39 + 8);
    ObjectType = swift_getObjectType();
    v50 = v12;
    (*(v41 + 336))(v48, &v50, v3 & 1, ObjectType, v41);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6EC10(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "homeDidUpdateSupportsResidentSelection: | home={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 344))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6EF68(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "homeDidUpdateAutoSelectedPreferredResident: | home={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 352))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6F2C0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "homeDidUpdateUserSelectedPreferredResident: | home={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 360))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6F618(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "homeDidUpdateProtectionMode: | home={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 368))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6F970(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "homeDidUpdateNetworkRouterSupport: | home={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 376))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A6FCC8(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "homeDidAddWalletKey: | home={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 384))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A70020(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "homeDidRemoveWalletKey: | home={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 392))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A70378(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "homeDidUpdateToROAR: | home={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 400))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A706D0(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v30 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v31 = v14;
    *v13 = 136446466;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v31);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v9 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v31);

    *(v13 + 14) = v24;
    _os_log_impl(&dword_1D16EC000, v10, v11, "homeDidUpdateSoundCheck: | home={id: %{public}s, name: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    v25 = v13;
    v2 = v30;
    MEMORY[0x1D3893640](v25, -1, -1);
  }

  v26 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 408))(v9, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A70A28(void *a1, int a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136446722;
    v15 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v31 = v3;
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = sub_1D1B1312C(v16, v18, &v33);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v10 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v33);

    *(v13 + 14) = v24;
    v3 = v31;
    *(v13 + 22) = 1024;
    v25 = v32;
    *(v13 + 24) = v32 & 1;
    _os_log_impl(&dword_1D16EC000, v11, v12, "home:didUpdateAreBulletinNotificationsSupported: | home={id: %{public}s, name: %s}, bulletinNotificationsSupported=%{BOOL}d", v13, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  else
  {

    v25 = v32;
  }

  v26 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 416))(v10, v25 & 1, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A70DB0(void *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC649730);
  v10 = a1;
  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6832C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v33 = v14;
    *v13 = 136446722;
    v15 = [v10 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v31 = v3;
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    v19 = sub_1D1B1312C(v16, v18, &v33);

    *(v13 + 4) = v19;
    *(v13 + 12) = 2080;
    v20 = [v10 name];
    v21 = sub_1D1E6781C();
    v23 = v22;

    v24 = sub_1D1B1312C(v21, v23, &v33);

    *(v13 + 14) = v24;
    v3 = v31;
    v25 = v32;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v25;
    _os_log_impl(&dword_1D16EC000, v11, v12, "home:didUpdateSiriPhraseOptions: | home={id: %{public}s, name: %s}, siriPhraseOptions=%lu", v13, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  else
  {

    v25 = v32;
  }

  v26 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v28 = *(v26 + 8);
    ObjectType = swift_getObjectType();
    (*(v28 + 424))(v10, v25, ObjectType, v28);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A71130(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v15 = 136446722;
    v16 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v17 = sub_1D1E68FAC();
    v38 = v3;
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = sub_1D1B1312C(v17, v19, &v39);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2080;
    v21 = [v11 name];
    v22 = sub_1D1E6781C();
    v24 = v23;

    v25 = sub_1D1B1312C(v22, v24, &v39);

    *(v15 + 14) = v25;
    *(v15 + 22) = 2080;
    v26 = [v12 name];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30 = sub_1D1B1312C(v27, v29, &v39);

    *(v15 + 24) = v30;
    v3 = v38;
    _os_log_impl(&dword_1D16EC000, v13, v14, "home:didUpdateAccessControlFor:user: | home={id: %{public}s, name: %s}, user={name: %s}", v15, 0x20u);
    v31 = v37;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v31, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  v32 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v34 = *(v32 + 8);
    ObjectType = swift_getObjectType();
    v39 = v12;
    (*(v34 + 432))(v11, &v39, ObjectType, v34);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A71504(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6832C();

  v15 = os_log_type_enabled(v13, v14);
  v51 = v11;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v52 = v49;
    *v16 = 136446978;
    v17 = [v11 uniqueIdentifier];
    v48 = v13;
    v18 = v17;
    sub_1D1E66A5C();

    sub_1D1886B8C();
    HIDWORD(v47) = v14;
    v19 = sub_1D1E68FAC();
    v20 = v12;
    v22 = v21;
    v50 = v3;
    v23 = *(v7 + 8);
    v23(v9, v6);
    v24 = sub_1D1B1312C(v19, v22, &v52);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    v25 = [v11 name];
    v26 = sub_1D1E6781C();
    v28 = v27;

    v29 = v26;
    v12 = v20;
    v30 = sub_1D1B1312C(v29, v28, &v52);

    *(v16 + 14) = v30;
    *(v16 + 22) = 2082;
    v31 = [v20 uniqueIdentifier];
    sub_1D1E66A5C();

    v32 = sub_1D1E68FAC();
    v34 = v33;
    v23(v9, v6);
    v3 = v50;
    v35 = sub_1D1B1312C(v32, v34, &v52);

    *(v16 + 24) = v35;
    *(v16 + 32) = 2080;
    v36 = [v20 name];
    v37 = sub_1D1E6781C();
    v39 = v38;

    v40 = sub_1D1B1312C(v37, v39, &v52);

    *(v16 + 34) = v40;
    v41 = v48;
    _os_log_impl(&dword_1D16EC000, v48, BYTE4(v47), "home:didUpdateReprovisionStateForAccessory: | home={id: %{public}s, name: %s}, accessory={id: %{public}s, name: %s}", v16, 0x2Au);
    v42 = v49;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v16, -1, -1);
  }

  else
  {
  }

  v43 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v45 = *(v43 + 8);
    ObjectType = swift_getObjectType();
    (*(v45 + 440))(v51, v12, ObjectType, v45);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D1A71980()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_1();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void (*sub_1D1A71A1C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = HMHome.homeDelegate.modify(v2);
  return sub_1D1861B38;
}

id HMHomeManager.homeManagerDelegate.getter()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_2();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1D1A71B88@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 delegate];
  if (!result)
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_2();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  result = swift_unknownObjectRelease();
LABEL_6:
  *a2 = Strong;
  a2[1] = v7;
  return result;
}

uint64_t HMHomeManager.homeManagerDelegate.setter(uint64_t a1, uint64_t a2)
{
  if (![v2 delegate])
  {
    goto LABEL_7;
  }

  _s15DelegateAdapterCMa_2();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v6 = _s15DelegateAdapterCMa_2();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = a2;
    swift_unknownObjectWeakAssign();
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    swift_beginAccess();
    v9 = v8;
    objc_setAssociatedObject(v2, &unk_1EC649760, v9, 1);
    swift_endAccess();

    v10 = v9;
    [v2 setDelegate_];

    return swift_unknownObjectRelease();
  }

  *(v4 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*HMHomeManager.homeManagerDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (![v1 delegate])
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_2();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = Strong;
  a1[1] = v6;
  return sub_1D1A71E58;
}

uint64_t sub_1D1A71E58(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return HMHomeManager.homeManagerDelegate.setter(*a1, v2);
  }

  v3 = swift_unknownObjectRetain();
  HMHomeManager.homeManagerDelegate.setter(v3, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D1A71F90(void *a1)
{
  v2 = v1;
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EC649730);
  v5 = a1;
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6832C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = [v5 homes];
    sub_1D1821898();
    v10 = sub_1D1E67C1C();

    if (v10 >> 62)
    {
      v11 = sub_1D1E6873C();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v11;

    _os_log_impl(&dword_1D16EC000, v6, v7, "homeManagerDidUpdateHomes: | homesCount=%ld", v8, 0xCu);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {

    v6 = v5;
  }

  v12 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    (*(v14 + 24))(v5, ObjectType, v14);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A721E8(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 primaryHome];
  if (v8)
  {
    v9 = v8;
    if (qword_1EC6422F8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EC649730);
    v11 = v9;
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6832C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v40 = a1;
      v15 = v14;
      v16 = swift_slowAlloc();
      v39 = v2;
      v17 = v16;
      v41 = v16;
      *v15 = 136446466;
      v18 = [v11 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1886B8C();
      v19 = sub_1D1E68FAC();
      v21 = v20;
      (*(v5 + 8))(v7, v4);
      v22 = sub_1D1B1312C(v19, v21, &v41);

      *(v15 + 4) = v22;
      *(v15 + 12) = 2080;
      v23 = [v11 name];
      v24 = sub_1D1E6781C();
      v26 = v25;

      v27 = sub_1D1B1312C(v24, v26, &v41);

      *(v15 + 14) = v27;
      _os_log_impl(&dword_1D16EC000, v12, v13, "homeManagerDidUpdatePrimaryHome: | home={id: %{public}s, name: %s}", v15, 0x16u);
      swift_arrayDestroy();
      v28 = v17;
      v2 = v39;
      MEMORY[0x1D3893640](v28, -1, -1);
      v29 = v15;
      a1 = v40;
      MEMORY[0x1D3893640](v29, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EC6422F8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D1E6709C();
    __swift_project_value_buffer(v30, qword_1EC649730);
    v31 = sub_1D1E6707C();
    v32 = sub_1D1E6832C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D16EC000, v31, v32, "homeManagerDidUpdatePrimaryHome: | home=nil", v33, 2u);
      MEMORY[0x1D3893640](v33, -1, -1);
    }
  }

  v34 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v36 = *(v34 + 8);
    ObjectType = swift_getObjectType();
    (*(v36 + 32))(a1, ObjectType, v36);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A72628(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a2;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136446466;
    v17 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v33 = v3;
    v20 = v19;
    (*(v7 + 8))(v9, v6);
    v21 = sub_1D1B1312C(v18, v20, &v35);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = [v11 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = sub_1D1B1312C(v23, v25, &v35);

    *(v15 + 14) = v26;
    v3 = v33;
    _os_log_impl(&dword_1D16EC000, v12, v13, "homeManager:didAdd:home: | home={id: %{public}s, name: %s}", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v16, -1, -1);
    v27 = v15;
    a1 = v34;
    MEMORY[0x1D3893640](v27, -1, -1);
  }

  v28 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = *(v28 + 8);
    ObjectType = swift_getObjectType();
    (*(v30 + 40))(a1, v11, ObjectType, v30);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A729A4(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a2;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136446466;
    v17 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v33 = v3;
    v20 = v19;
    (*(v7 + 8))(v9, v6);
    v21 = sub_1D1B1312C(v18, v20, &v35);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = [v11 name];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = sub_1D1B1312C(v23, v25, &v35);

    *(v15 + 14) = v26;
    v3 = v33;
    _os_log_impl(&dword_1D16EC000, v12, v13, "homeManager:didRemove:home: | home={id: %{public}s, name: %s}", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v16, -1, -1);
    v27 = v15;
    a1 = v34;
    MEMORY[0x1D3893640](v27, -1, -1);
  }

  v28 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = *(v28 + 8);
    ObjectType = swift_getObjectType();
    (*(v30 + 48))(a1, v11, ObjectType, v30);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D1A72D20()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_2();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void (*sub_1D1A72DBC(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = HMHomeManager.homeManagerDelegate.modify(v2);
  return sub_1D1861B38;
}

id HMMediaSession.mediaSessionDelegate.getter()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_3();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1D1A72F28@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 delegate];
  if (!result)
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_3();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  result = swift_unknownObjectRelease();
LABEL_6:
  *a2 = Strong;
  a2[1] = v7;
  return result;
}

uint64_t HMMediaSession.mediaSessionDelegate.setter(uint64_t a1, uint64_t a2)
{
  if (![v2 delegate])
  {
    goto LABEL_7;
  }

  _s15DelegateAdapterCMa_3();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v6 = _s15DelegateAdapterCMa_3();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = a2;
    swift_unknownObjectWeakAssign();
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    swift_beginAccess();
    v9 = v8;
    objc_setAssociatedObject(v2, &unk_1EC649770, v9, 1);
    swift_endAccess();

    v10 = v9;
    [v2 setDelegate_];

    return swift_unknownObjectRelease();
  }

  *(v4 + OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*HMMediaSession.mediaSessionDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (![v1 delegate])
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_3();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = Strong;
  a1[1] = v6;
  return sub_1D1A731F8;
}

uint64_t sub_1D1A731F8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return HMMediaSession.mediaSessionDelegate.setter(*a1, v2);
  }

  v3 = swift_unknownObjectRetain();
  HMMediaSession.mediaSessionDelegate.setter(v3, v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D1A73290(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EC649730);
  v11 = a1;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6832C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v34 = a2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = v16;
    *v15 = 136446466;
    v17 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    v33 = v3;
    v20 = v19;
    (*(v7 + 8))(v9, v6);
    v21 = sub_1D1B1312C(v18, v20, &v35);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = [v11 playbackStateDescription];
    v23 = sub_1D1E6781C();
    v25 = v24;

    v26 = sub_1D1B1312C(v23, v25, &v35);

    *(v15 + 14) = v26;
    v3 = v33;
    _os_log_impl(&dword_1D16EC000, v12, v13, "mediaSession:didUpdate:state: | mediaSession={id: %{public}s}, state: %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v16, -1, -1);
    v27 = v15;
    a2 = v34;
    MEMORY[0x1D3893640](v27, -1, -1);
  }

  v28 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v30 = *(v28 + 8);
    ObjectType = swift_getObjectType();
    (*(v30 + 24))(v11, a2, ObjectType, v30);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1A73600(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D1E6709C();
  __swift_project_value_buffer(v8, qword_1EC649730);
  v9 = a1;
  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6832C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v2;
    v13 = v12;
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136446210;
    v15 = [v9 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1886B8C();
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v5 + 8))(v7, v4);
    v19 = sub_1D1B1312C(v16, v18, &v26);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_1D16EC000, v10, v11, "mediaSessionDidUpdate: | mediaSession={id: %{public}s}", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1D3893640](v14, -1, -1);
    v20 = v13;
    v2 = v25;
    MEMORY[0x1D3893640](v20, -1, -1);
  }

  v21 = v2 + OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v23 = *(v21 + 8);
    ObjectType = swift_getObjectType();
    (*(v23 + 32))(v9, ObjectType, v23);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1D1A738F4()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_3();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void (*sub_1D1A73990(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = HMMediaSession.mediaSessionDelegate.modify(v2);
  return sub_1D1861B38;
}

id HMUserActionPredictionController.predictionDelegate.getter()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_4();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

id sub_1D1A73ABC@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  result = [*a1 delegate];
  if (!result)
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_4();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    result = swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v7 = 0;
    goto LABEL_6;
  }

  v5 = v4 + OBJC_IVAR____TtCE13HomeDataModelCSo32HMUserActionPredictionController15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  result = swift_unknownObjectRelease();
LABEL_6:
  *a2 = Strong;
  a2[1] = v7;
  return result;
}

uint64_t HMUserActionPredictionController.predictionDelegate.setter(uint64_t a1, uint64_t a2)
{
  if (![v2 delegate])
  {
    goto LABEL_7;
  }

  _s15DelegateAdapterCMa_4();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_7:
    v6 = _s15DelegateAdapterCMa_4();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtCE13HomeDataModelCSo32HMUserActionPredictionController15DelegateAdapter_delegate + 8] = 0;
    *(swift_unknownObjectWeakInit() + 8) = a2;
    swift_unknownObjectWeakAssign();
    v11.receiver = v7;
    v11.super_class = v6;
    v8 = objc_msgSendSuper2(&v11, sel_init);
    swift_beginAccess();
    v9 = v8;
    objc_setAssociatedObject(v2, &unk_1EC649780, v9, 1);
    swift_endAccess();

    v10 = v9;
    [v2 setDelegate_];

    return swift_unknownObjectRelease();
  }

  *(v4 + OBJC_IVAR____TtCE13HomeDataModelCSo32HMUserActionPredictionController15DelegateAdapter_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t (*HMUserActionPredictionController.predictionDelegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  if (![v1 delegate])
  {
    goto LABEL_5;
  }

  _s15DelegateAdapterCMa_4();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_5:
    Strong = 0;
    v6 = 0;
    goto LABEL_6;
  }

  v4 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo32HMUserActionPredictionController15DelegateAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  swift_unknownObjectRelease();
LABEL_6:
  *a1 = Strong;
  a1[1] = v6;
  return sub_1D1A73D8C;
}

uint64_t sub_1D1A73D8C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return HMUserActionPredictionController.predictionDelegate.setter(*a1, v2);
  }

  v3 = swift_unknownObjectRetain();
  HMUserActionPredictionController.predictionDelegate.setter(v3, v2);

  return swift_unknownObjectRelease();
}

id sub_1D1A73E70()
{
  v2.receiver = v0;
  v2.super_class = _s15DelegateAdapterCMa_4();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D1A73EB4()
{
  result = [v0 delegate];
  if (result)
  {
    _s15DelegateAdapterCMa_4();
    if (swift_dynamicCastClass())
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectRelease();
      return Strong;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void (*sub_1D1A73F50(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = HMUserActionPredictionController.predictionDelegate.modify(v2);
  return sub_1D1861B38;
}

uint64_t sub_1D1A73FE0()
{
  v1 = v0[19];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1A740FC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6497B0, &qword_1D1E6F370);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D1E55558;
  v0[13] = &block_descriptor_36;
  v0[14] = v2;
  [v1 fetchPredictionsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A740FC()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1A741EC(uint64_t a1)
{
  result = sub_1D174A5B8(&qword_1EC6497A0, &qword_1EC6497A8, 0x1E696CCB0, MEMORY[0x1E69E81C0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1A74254(void *a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1EC6422F8 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EC649730);
  swift_bridgeObjectRetain_n();
  v7 = a1;
  v8 = sub_1D1E6707C();
  v9 = sub_1D1E6832C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v7;
    *v11 = v7;
    *(v10 + 12) = 2048;
    if (a2 >> 62)
    {
      v12 = sub_1D1E6873C();
    }

    else
    {
      v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v7;

    *(v10 + 14) = v12;

    _os_log_impl(&dword_1D16EC000, v8, v9, "userActionPredictionController:didUpdate: | controller={id: %@, predictions: %ld}", v10, 0x16u);
    sub_1D179F28C(v11);
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v14 = v3 + OBJC_IVAR____TtCE13HomeDataModelCSo32HMUserActionPredictionController15DelegateAdapter_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *(v14 + 8);
    ObjectType = swift_getObjectType();
    (*(v16 + 24))(v7, a2, ObjectType, v16);

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1D1A74518()
{
  result = qword_1EC6497C0;
  if (!qword_1EC6497C0)
  {
    sub_1D17DAA94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6497C0);
  }

  return result;
}

void sub_1D1A74570()
{
  v1 = [*v0 uniqueIdentifier];
  sub_1D1E66A5C();
}

uint64_t sub_1D1A745D0()
{
  v1 = [*v0 services];
  sub_1D17DAA94();
  v2 = sub_1D1E67C1C();

  return v2;
}

void sub_1D1A74844()
{
  v1 = [v0 uniqueIdentifier];
  sub_1D1E66A5C();
}

uint64_t sub_1D1A748A4()
{
  v1 = [v0 name];
  v2 = sub_1D1E6781C();

  return v2;
}

id sub_1D1A748FC()
{
  v1 = [v0 home];

  return v1;
}

id sub_1D1A74934@<X0>(void *a1@<X8>)
{
  result = [v1 room];
  *a1 = result;
  return result;
}

uint64_t sub_1D1A749DC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1D1E6781C();

  return v6;
}

uint64_t sub_1D1A74A78(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, void *a5)
{
  v8 = [v5 *a3];
  sub_1D1741B10(0, a4, a5);
  v9 = sub_1D1E67C1C();

  return v9;
}

uint64_t sub_1D1A74AE4()
{
  v1 = [v0 cameraProfiles];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D1741B10(0, &qword_1EE079CD8, 0x1E696CB08);
  v3 = sub_1D1E67C1C();

  return v3;
}

uint64_t sub_1D1A74B58()
{
  v1 = [v0 lightProfiles];
  sub_1D1741B10(0, &qword_1EE079CF0, 0x1E696CBB8);
  sub_1D174A5B8(&qword_1EE079CE8, &qword_1EE079CF0, 0x1E696CBB8, MEMORY[0x1E69E81B8]);
  v2 = sub_1D1E6816C();

  return v2;
}

id sub_1D1A74C00()
{
  v1 = [v0 category];

  return v1;
}

id sub_1D1A74C38@<X0>(void *a1@<X8>)
{
  result = [v1 mediaProfile];
  *a1 = result;
  return result;
}

id sub_1D1A74C74()
{
  v1 = [v0 softwareUpdateController];

  return v1;
}

uint64_t sub_1D1A74CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D1A74EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D1A10DD4;

  return sub_1D1A759B4(a1, a2, a3);
}

uint64_t sub_1D1A74FBC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    sub_1D1741B10(0, &qword_1EC649728, 0x1E696CBB0);
    **(*(v4 + 64) + 40) = sub_1D1E67C1C();

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

uint64_t sub_1D1A750AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D1A00CEC;

  return sub_1D1A75CD4(a1, a2, a3);
}

uint64_t sub_1D1A75174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1A75E4C(a1, a2, a3, a4);
}

uint64_t sub_1D1A75248(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1A7611C(a1, a2, a3);
}

uint64_t sub_1D1A75310(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_1D1E677EC();
  v5 = [v3 localizedTitleForKeyPath_];

  v6 = sub_1D1E6781C();
  return v6;
}

uint64_t sub_1D1A75380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = sub_1D1E66A2C();
  v6 = sub_1D1E66A2C();
  v7 = sub_1D1E67BFC();
  v8 = [v4 defaultSettingsWithHomeIdentifier:v5 accessoryIdentifier:v6 keyPaths:v7];

  sub_1D1741B10(0, &qword_1EC649728, 0x1E696CBB0);
  v9 = sub_1D1E67C1C();

  return v9;
}

uint64_t dispatch thunk of AccessorySettingsDataSourceProtocol.fetchAccessorySettings(withHomeIdentifier:accessoryIdentifier:keyPaths:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 48) + **(a5 + 48));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D1A0AFF8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AccessorySettingsDataSourceProtocol.fetchCachedAccessorySettings(withHomeIdentifier:accessoryIdentifier:keyPaths:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 56) + **(a5 + 56));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D1A0AB6C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of AccessorySettingsDataSourceProtocol.subscribeToAccessorySettings(withHomeIdentifier:accessoryIdentifier:keyPaths:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 64) + **(a6 + 64));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D17C4BFC;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AccessorySettingsDataSourceProtocol.unsubscribeToAccessorySettings(withHomeIdentifier:accessoryIdentifier:keyPaths:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 72) + **(a5 + 72));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1D1A759B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = sub_1D1E66A2C();
  v4[19] = v6;
  v7 = sub_1D1E66A2C();
  v4[20] = v7;
  v8 = sub_1D1E67BFC();
  v4[21] = v8;
  v4[2] = v4;
  v4[7] = v4 + 18;
  v4[3] = sub_1D1A75B2C;
  v9 = swift_continuation_init();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6497F8, &unk_1D1E952B0);
  v4[10] = MEMORY[0x1E69E9820];
  v4[11] = 1107296256;
  v4[12] = sub_1D1A74FBC;
  v4[13] = &block_descriptor_24_0;
  v4[14] = v9;
  [v5 fetchAccessorySettingsWithHomeIdentifier:v6 accessoryIdentifier:v7 keyPaths:v8 completionHandler:v4 + 10];

  return MEMORY[0x1EEE6DEC8](v4 + 2);
}

uint64_t sub_1D1A75B2C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 168);
  v6 = *(*v1 + 160);
  v7 = *(*v1 + 152);
  if (*(v2 + 48))
  {
    swift_willThrow();

    v8 = *(v4 + 8);

    return v8();
  }

  else
  {
    v10 = *(v3 + 144);

    v11 = *(v4 + 8);

    return v11(v10);
  }
}

uint64_t sub_1D1A75CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = sub_1D1E66A2C();
  v4[19] = v6;
  v7 = sub_1D1E66A2C();
  v4[20] = v7;
  v8 = sub_1D1E67BFC();
  v4[21] = v8;
  v4[2] = v4;
  v4[7] = v4 + 18;
  v4[3] = sub_1D1A762BC;
  v9 = swift_continuation_init();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6497F8, &unk_1D1E952B0);
  v4[10] = MEMORY[0x1E69E9820];
  v4[11] = 1107296256;
  v4[12] = sub_1D1A74FBC;
  v4[13] = &block_descriptor_18;
  v4[14] = v9;
  [v5 fetchCachedAccessorySettingsWithHomeIdentifier:v6 accessoryIdentifier:v7 keyPaths:v8 completionHandler:v4 + 10];

  return MEMORY[0x1EEE6DEC8](v4 + 2);
}

uint64_t sub_1D1A75E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v8 = sub_1D1E66A2C();
  v5[18] = v8;
  v9 = sub_1D1E66A2C();
  v5[19] = v9;
  v10 = sub_1D1E67BFC();
  v5[20] = v10;
  v5[2] = v5;
  v5[3] = sub_1D1A75FC4;
  v11 = swift_continuation_init();
  v5[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v5[10] = MEMORY[0x1E69E9820];
  v5[11] = 1107296256;
  v5[12] = sub_1D17B04C8;
  v5[13] = &block_descriptor_12_0;
  v5[14] = v11;
  [v6 subscribeToAccessorySettingsWithHomeIdentifier:v8 accessoryIdentifier:v9 keyPaths:v10 options:a4 completionHandler:v5 + 10];

  return MEMORY[0x1EEE6DEC8](v5 + 2);
}

uint64_t sub_1D1A75FC4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 144);
  if (*(v2 + 48))
  {
    swift_willThrow();
  }

  v7 = *(v3 + 8);

  return v7();
}

uint64_t sub_1D1A7611C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v6 = sub_1D1E66A2C();
  v4[18] = v6;
  v7 = sub_1D1E66A2C();
  v4[19] = v7;
  v8 = sub_1D1E67BFC();
  v4[20] = v8;
  v4[2] = v4;
  v4[3] = sub_1D1A762C0;
  v9 = swift_continuation_init();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v4[10] = MEMORY[0x1E69E9820];
  v4[11] = 1107296256;
  v4[12] = sub_1D17B04C8;
  v4[13] = &block_descriptor_37;
  v4[14] = v9;
  [v5 unsubscribeToAccessorySettingsWithHomeIdentifier:v6 accessoryIdentifier:v7 keyPaths:v8 completionHandler:v4 + 10];

  return MEMORY[0x1EEE6DEC8](v4 + 2);
}

uint64_t sub_1D1A762DC(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_1D1E6781C();

  return v5;
}

uint64_t sub_1D1A76330()
{
  v1 = [*v0 actions];
  sub_1D1A7641C();
  sub_1D179E328();
  v2 = sub_1D1E6816C();

  return v2;
}

unint64_t sub_1D1A7641C()
{
  result = qword_1EE079BF0;
  if (!qword_1EE079BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079BF0);
  }

  return result;
}

id sub_1D1A76468()
{
  v1 = [*v0 streamControl];

  return v1;
}

id sub_1D1A764A0()
{
  v1 = [*v0 snapshotControl];

  return v1;
}

id sub_1D1A764D8()
{
  v1 = [*v0 speakerControl];

  return v1;
}

id sub_1D1A76510()
{
  v1 = [*v0 microphoneControl];

  return v1;
}

id sub_1D1A76548()
{
  v1 = [*v0 settingsControl];

  return v1;
}

unint64_t sub_1D1A76580(uint64_t a1)
{
  result = sub_1D1A765A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D1A765A8()
{
  result = qword_1EC649800;
  if (!qword_1EC649800)
  {
    sub_1D1A76600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649800);
  }

  return result;
}

unint64_t sub_1D1A76600()
{
  result = qword_1EE079CD8;
  if (!qword_1EE079CD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079CD8);
  }

  return result;
}

uint64_t sub_1D1A766F0(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(void *))
{
  v5 = (*(a2 + 120))(a1);
  v9[0] = sub_1D1E6781C();
  v9[1] = v6;
  v8[2] = v9;
  LOBYTE(a4) = sub_1D18B5EC8(a4, v8, v5);

  return a4 & 1;
}

uint64_t CharacteristicProtocol.isReadOnly.getter(uint64_t a1, uint64_t a2)
{
  if (CharacteristicProtocol.isReadable.getter(a1, a2))
  {
    v4 = CharacteristicProtocol.isWritable.getter(a1, a2) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t BatchCharacteristicRequest.Write.characteristicsValueSet.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

id BatchCharacteristicRequest.Response.result.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(v2 + *(a1 + 36));
  *a2 = v3;
  return v3;
}

void BatchCharacteristicRequest.Response.result.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 36);

  *(v2 + v4) = v3;
}

uint64_t sub_1D1A768EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t CharacteristicProtocol.fetchedValue()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v9 = (*(a3 + 144) + **(a3 + 144));
  v7 = swift_task_alloc();
  v4[6] = v7;
  *v7 = v4;
  v7[1] = sub_1D1A76A18;

  return v9(a2, a3);
}

uint64_t sub_1D1A76A18()
{

  if (v0)
  {

    v1 = sub_1D1A78B00;
  }

  else
  {
    v1 = sub_1D1A76B30;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D1A76B30()
{
  (*(v0[4] + 72))(v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t CharacteristicProtocol.BOOL.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 48) = v5;
  *v5 = v2;
  v5[1] = sub_1D18B8F54;

  return CharacteristicProtocol.fetchedValue()(v2 + 16, a1, a2);
}

uint64_t CharacteristicProtocol.cachedBool.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 72))(v4, a1);
  if (v4[3])
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 2;
  }
}

uint64_t CharacteristicProtocol.int.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1D18B9188;

  return CharacteristicProtocol.fetchedValue()(v2 + 16, a1, a2);
}

uint64_t CharacteristicProtocol.cachedInt.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 72))(v4, a1);
  if (v4[3])
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 0;
  }
}

uint64_t CharacteristicProtocol.float.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 56) = v5;
  *v5 = v2;
  v5[1] = sub_1D18B9E0C;

  return CharacteristicProtocol.fetchedValue()(v2 + 16, a1, a2);
}

uint64_t CharacteristicProtocol.cachedFloat.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 72))(v4, a1);
  if (v4[3])
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 0;
  }
}

uint64_t CharacteristicProtocol.data.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1D18BA104;

  return CharacteristicProtocol.fetchedValue()(v2 + 16, a1, a2);
}

uint64_t CharacteristicProtocol.tlv8.getter(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 64) = v5;
  *v5 = v2;
  v5[1] = sub_1D18BA344;

  return CharacteristicProtocol.fetchedValue()(v2 + 16, a1, a2);
}

uint64_t _s13HomeDataModel22CharacteristicProtocolPAAE06cachedB010Foundation0B0VSgvg_0(uint64_t a1, uint64_t a2)
{
  (*(a2 + 72))(v4, a1);
  if (v4[3])
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D18B9B30(v4);
    return 0;
  }
}

uint64_t HMCharacteristic.notifications(enabled:)(char a1)
{
  *(v2 + 144) = v1;
  *(v2 + 160) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A77154, 0, 0);
}

uint64_t sub_1D1A77154()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D1A77278;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17B04C8;
  *(v0 + 104) = &block_descriptor_38;
  *(v0 + 112) = v3;
  [v1 enableNotification:v2 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1A77278()
{
  v1 = *(*v0 + 48);
  *(*v0 + 152) = v1;
  if (v1)
  {
    v2 = sub_1D1A78AFC;
  }

  else
  {
    v2 = sub_1D1901068;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t HMCharacteristic.write(value:)(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A773A8, 0, 0);
}

uint64_t sub_1D1A773A8()
{
  sub_1D18CA7C0(v0[22], (v0 + 18));
  v1 = v0[21];
  if (v1)
  {
    v2 = __swift_project_boxed_opaque_existential_1(v0 + 18, v0[21]);
    v3 = *(v1 - 8);
    v4 = swift_task_alloc();
    (*(v3 + 16))(v4, v2, v1);
    v5 = sub_1D1E6903C();
    (*(v3 + 8))(v4, v1);

    __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  }

  else
  {
    v5 = 0;
  }

  v0[24] = v5;
  v6 = v0[23];
  v0[2] = v0;
  v0[3] = sub_1D1A7759C;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_11_0;
  v0[14] = v7;
  [v6 writeValue:v5 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A7759C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_1D1A77710;
  }

  else
  {
    v2 = sub_1D1A776AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A776AC()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1A77710(uint64_t a1)
{
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 8);

  return v2();
}

double sub_1D1A7779C@<D0>(_OWORD *a1@<X8>)
{
  if ([*v1 value])
  {
    sub_1D1E6866C();

    swift_unknownObjectRelease();
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

id sub_1D1A7782C@<X0>(void *a1@<X8>)
{
  result = [*v1 service];
  *a1 = result;
  return result;
}

void sub_1D1A77888(uint64_t a1, uint64_t a2, SEL *a3, void (*a4)(void))
{
  v6 = [*v4 *a3];
  a4();
}

id sub_1D1A77918()
{
  v1 = [*v0 metadata];

  return v1;
}

uint64_t sub_1D1A77950()
{
  v1 = [*v0 properties];
  v2 = sub_1D1E67C1C();

  return v2;
}

uint64_t sub_1D1A779C4()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1D1A77AD8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_50;
  v0[14] = v2;
  [v1 readValueWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A77AD8(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1D1A77BE0(char a1)
{
  *(v2 + 160) = a1;
  *(v2 + 144) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A77C08, 0, 0);
}

uint64_t sub_1D1A77C08()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1D1A77D2C;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1D17B04C8;
  *(v0 + 104) = &block_descriptor_46;
  *(v0 + 112) = v3;
  [v1 enableNotification:v2 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1D1A77D2C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 152) = v1;
  if (v1)
  {
    v2 = sub_1D1A77E3C;
  }

  else
  {
    v2 = sub_1D16FB500;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A77E3C(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1D1A77EA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D17C4BFC;

  return HMCharacteristic.write(value:)(a1);
}

uint64_t sub_1D1A77F5C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D1E6904C() & 1;
  }
}

uint64_t sub_1D1A77FD8(uint64_t a1)
{
  *(a1 + 8) = sub_1D174A5B8(qword_1EC649808, &qword_1EE079CD0, 0x1E696CB38, MEMORY[0x1E6969F88]);
  result = sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38, MEMORY[0x1E69E81B8]);
  *(a1 + 16) = result;
  return result;
}

uint64_t dispatch thunk of CharacteristicProtocol.currentValue<A>()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 136) + **(a4 + 136));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D17C4BFC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of CharacteristicProtocol.readValue()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 144) + **(a2 + 144));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4CF0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of CharacteristicProtocol.notifications(enabled:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 152) + **(a3 + 152));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4BFC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of CharacteristicProtocol.write(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 160) + **(a3 + 160));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return v9(a1, a2, a3);
}

uint64_t sub_1D1A785E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1A78638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1A7868C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for BatchCharacteristicRequest.Response.ResultType(319, result, *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1A7871C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1D1A78860(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1D1A78A54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1A78A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t HomeManagerProtocol.takeAssertion(reason:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (qword_1EE07A070 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EE081480);

  v11 = sub_1D1E6707C();
  v12 = sub_1D1E6835C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1D1B1312C(a1, a2, &v16);
    _os_log_impl(&dword_1D16EC000, v11, v12, "Taking assertion for reason %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  result = (*(a4 + 96))(a1, a2, a3, a4);
  *a5 = result;
  return result;
}

uint64_t HomeManagerProtocol.releaseAssertion(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  if (qword_1EE07A070 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EE081480);
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1D16EC000, v7, v8, "Releasing provided assertion.", v9, 2u);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  (*(a3 + 104))(v5, a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1D1A78DE8()
{
  v1 = [v0 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v2 = sub_1D1E67C1C();

  return v2;
}

id sub_1D1A78E50()
{
  v1 = [v0 currentHome];

  return v1;
}

id sub_1D1A78E88@<X0>(void *a1@<X8>)
{
  result = [v1 createAccessorySettingsDataSource];
  *a1 = result;
  return result;
}

void HMHome.perform(batchReadRequest:handlers:)(unint64_t *a1, __int128 *a2)
{
  v2 = *a1;
  v10 = a2[1];
  v11 = *a2;
  if (*a1 >> 62)
  {
    v3 = sub_1D1E6873C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    *&v13[0] = MEMORY[0x1E69E7CC0];
    sub_1D1E6899C();
    if (v3 < 0)
    {
      __break(1u);
      return;
    }

    v4 = objc_opt_self();
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D3891EF0](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v4 readRequestWithCharacteristic_];

      sub_1D1E6896C();
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
    }

    while (v3 != v5);
  }

  sub_1D1741B10(0, &qword_1EC649B20, 0x1E696CB50);
  v9 = sub_1D1E67BFC();

  v12 = [objc_opt_self() characteristicBatchRequestWithReadRequests_];

  v13[0] = v11;
  v13[1] = v10;
  sub_1D1A7918C(v12, v13);
}

id sub_1D1A7918C(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v7;
  v8[5] = v6;
  v17 = sub_1D1A7CB54;
  v18 = v8;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1D1C40BA8;
  v16 = &block_descriptor_83;
  v9 = _Block_copy(&v13);

  [a1 setCompletionHandler_];
  _Block_release(v9);
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = v7;
  v10[5] = v6;
  v17 = sub_1D1A7CBD4;
  v18 = v10;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1D1E0290C;
  v16 = &block_descriptor_89;
  v11 = _Block_copy(&v13);

  [a1 setProgressHandler_];
  _Block_release(v11);
  return [v2 performBatchCharacteristicRequest_];
}

void HMHome.perform(batchWriteRequest:handlers:)(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v24 = a2[1];
  v25 = *a2;
  *&v31 = *a1;
  BYTE8(v31) = v3;
  *&v32 = v4;

  v5 = CharacteristicValueSet.characteristicsAndValues(in:)(v2);

  v6 = *(v5 + 16);
  if (v6)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D1E6899C();
    v7 = v5 + 64;
    v8 = sub_1D1E6869C();
    v26 = *(v5 + 36);
    v27 = objc_opt_self();
    v9 = 0;
    v10 = *(v5 + 32);
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << v10)
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_20;
      }

      v13 = *(*(v5 + 48) + 8 * v8);
      sub_1D1741970(*(v5 + 56) + 32 * v8, &v31 + 8);
      v28 = v13;
      sub_1D1742194((&v31 + 8), &v29);
      __swift_project_boxed_opaque_existential_1(&v29, v30);
      v14 = [v27 writeRequestWithCharacteristic:v13 value:sub_1D1E6903C()];
      swift_unknownObjectRelease();
      sub_1D1A7B2E0(&v28);
      sub_1D1E6896C();
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
      v10 = *(v5 + 32);
      v11 = 1 << v10;
      if (v8 >= 1 << v10)
      {
        goto LABEL_21;
      }

      v15 = *(v7 + 8 * v12);
      if ((v15 & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      if (v26 != *(v5 + 36))
      {
        goto LABEL_23;
      }

      v16 = v15 & (-2 << (v8 & 0x3F));
      if (v16)
      {
        v11 = __clz(__rbit64(v16)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v17 = v12 << 6;
        v18 = v12 + 1;
        v19 = (v5 + 72 + 8 * v12);
        while (v18 < (v11 + 63) >> 6)
        {
          v21 = *v19++;
          v20 = v21;
          v17 += 64;
          ++v18;
          if (v21)
          {
            v11 = __clz(__rbit64(v20)) + v17;
            break;
          }
        }
      }

      ++v9;
      v8 = v11;
      if (v9 == v6)
      {

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {

LABEL_18:
    sub_1D1741B10(0, &qword_1EC649B28, 0x1E696CB70);
    v22 = sub_1D1E67BFC();

    v23 = [objc_opt_self() characteristicBatchRequestWithWriteRequests_];

    v31 = v25;
    v32 = v24;
    sub_1D1A7918C(v23, &v31);
  }
}

void *sub_1D1A7968C(unint64_t a1, void (*a2)(uint64_t))
{
  if (a1 >> 62)
  {
    v4 = sub_1D1E6873C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v16 = MEMORY[0x1E69E7CC0];
    result = sub_1D178D6E4(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = 0;
    v5 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3891EF0](v7, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = [v8 error];
      v11 = [v9 request];
      v12 = [v11 characteristic];

      v14 = *(v16 + 16);
      v13 = *(v16 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D178D6E4((v13 > 1), v14 + 1, 1);
      }

      ++v7;
      *(v16 + 16) = v14 + 1;
      v15 = v16 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v10;
    }

    while (v4 != v7);
  }

  a2(v5);
}

id sub_1D1A79898@<X0>(void *a1@<X8>)
{
  result = [v1 currentUser];
  *a1 = result;
  return result;
}

uint64_t sub_1D1A7997C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A799A0, 0, 0);
}

uint64_t sub_1D1A799A0()
{
  v1 = v0[20];
  v2 = sub_1D1E677EC();
  v0[21] = v2;
  v0[2] = v0;
  v0[3] = sub_1D1A79AD0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_79;
  v0[14] = v3;
  [v1 updateName:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A79AD0(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 168);
  if (*(v2 + 48))
  {
    swift_willThrow();
  }

  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1D1A79BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1A79C14, 0, 0);
}

uint64_t sub_1D1A79C14()
{
  v1 = v0[22];
  v2 = sub_1D1E677EC();
  v0[23] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1A7CC1C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649B68, qword_1D1E959C0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D19F40C0;
  v0[13] = &block_descriptor_75;
  v0[14] = v3;
  [v1 addRoomWithName:v2 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1A79D4C(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 144) = v1;
  *(v2 + 152) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1D1A79D70, 0, 0);
}