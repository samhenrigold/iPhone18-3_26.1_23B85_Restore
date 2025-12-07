uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D29EE3E8()
{
  result = qword_1EC7013E0;
  if (!qword_1EC7013E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7013E0);
  }

  return result;
}

uint64_t sub_1D29EE548(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_1D2A00448();
      if ((v1 & 1) == 0)
      {
        v2 = result;
        result = 15;
        v1 = v2;

        return MEMORY[0x1EEE68E00](result, v1);
      }
    }

    __break(1u);
    return MEMORY[0x1EEE68E00](result, v1);
  }

  return result;
}

id sub_1D29EE6B0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EXRemoteSceneDelegate();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D29EE718(uint64_t a1, void *a2)
{
  v57 = a1;
  v3 = sub_1D2A00008();
  v61 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v53 - v7;
  v62 = sub_1D29FFC48();
  v8 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701300, &qword_1D2A03830);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v53 - v14;
  v16 = [a2 persistentIdentifier];
  v17 = sub_1D2A003E8();
  v19 = v18;

  v65 = v17;
  v66 = v19;

  LOBYTE(v16) = sub_1D2A00478();

  if (v16)
  {
    v20 = sub_1D2A00438();
    sub_1D29EE548(v20);
    v17 = v65;
    v19 = v66;
  }

  sub_1D29FFC18();
  sub_1D29DF6A0(v15, v13);
  v21 = v62;
  if ((*(v8 + 48))(v13, 1, v62) != 1)
  {
    v28 = v60;
    (*(v8 + 32))(v60, v13, v21);
    v29 = [objc_opt_self() sharedInstance];
    v30 = sub_1D29FFC28();
    v31 = [v29 sessionForIdentifier_];

    v56 = v31;
    if (v31)
    {
      v32 = v31;
      if ([v32 scene])
      {
        v63 = &unk_1F4E0B7B0;
        v33 = swift_dynamicCastObjCProtocolConditional();
        if (v33)
        {
          v34 = [v33 viewController];
          swift_unknownObjectRelease();

          if (v34)
          {

LABEL_19:
            objc_opt_self();
            v47 = [objc_allocWithZone(MEMORY[0x1E69DD2E8]) initWithWindowScene_];
            v48 = OBJC_IVAR___EXRemoteSceneDelegate_window;
            v49 = v58;
            v50 = *(v58 + OBJC_IVAR___EXRemoteSceneDelegate_window);
            *(v58 + OBJC_IVAR___EXRemoteSceneDelegate_window) = v47;
            v51 = v47;

            [v51 setRootViewController_];
            [*(v49 + v48) makeKeyAndVisible];

            (*(v8 + 8))(v28, v62);
            return sub_1D29DB7F4(v15, &qword_1EC701300, &qword_1D2A03830);
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    v55 = v3;
    v35 = v59;
    sub_1D29FFFE8();
    v36 = v31;

    v37 = sub_1D29FFFF8();
    v38 = sub_1D2A005A8();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v54 = v8;
      v41 = v40;
      v42 = swift_slowAlloc();
      v64 = v42;
      *v39 = 138543618;
      *(v39 + 4) = v36;
      *v41 = v31;
      *(v39 + 12) = 2082;
      v43 = v36;
      v44 = sub_1D29F87C4(v17, v19, &v64);

      *(v39 + 14) = v44;
      _os_log_impl(&dword_1D29CC000, v37, v38, "Could not fetch view controller for session: %{public}@ scene id: %{public}s", v39, 0x16u);
      sub_1D29DB7F4(v41, qword_1EC700C18, qword_1D2A034B0);
      v45 = v41;
      v8 = v54;
      MEMORY[0x1D38A6000](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      v46 = v42;
      v28 = v60;
      MEMORY[0x1D38A6000](v46, -1, -1);
      MEMORY[0x1D38A6000](v39, -1, -1);

      (*(v61 + 8))(v59, v55);
    }

    else
    {

      (*(v61 + 8))(v35, v55);
    }

    v34 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
    goto LABEL_19;
  }

  sub_1D29DB7F4(v13, &qword_1EC701300, &qword_1D2A03830);
  sub_1D29FFFE8();

  v22 = sub_1D29FFFF8();
  v23 = sub_1D2A005A8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v64 = v25;
    *v24 = 136446210;
    v26 = v3;
    v27 = sub_1D29F87C4(v17, v19, &v64);

    *(v24 + 4) = v27;
    _os_log_impl(&dword_1D29CC000, v22, v23, "Session ID could not be found for scene id: %{public}s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1D38A6000](v25, -1, -1);
    MEMORY[0x1D38A6000](v24, -1, -1);

    (*(v61 + 8))(v6, v26);
  }

  else
  {

    (*(v61 + 8))(v6, v3);
  }

  return sub_1D29DB7F4(v15, &qword_1EC701300, &qword_1D2A03830);
}

uint64_t sub_1D29EEE70()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

id sub_1D29EEEA8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ExtensionHostingViewControllerRepresentable.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D29EEF18(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtCV12ExtensionKit43ExtensionHostingViewControllerRepresentable11Coordinator_parent;
  v4 = *(v3 + *(type metadata accessor for ExtensionHostingViewControllerRepresentable(0) + 28));
  v5 = *(v4 + 16);
  *(v4 + 16) = a1;

  v6 = a1;

  sub_1D2A00598();
  sub_1D29D9A60();
  v7 = sub_1D2A00608();
  sub_1D29FFFD8();
}

id sub_1D29EF078(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701580, &qword_1D2A04708);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v28 = v25 - v4;
  v5 = sub_1D29FFE08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for _EXHostViewController.Configuration(0);
  v26 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 16);
  v12(v8, v2, v5);
  v13 = sub_1D2A003E8();
  v15 = v14;
  v16 = v9[8];
  v12(v11, v8, v5);
  v17 = &v11[v9[7]];
  *v17 = v13;
  v17[1] = v15;
  *&v11[v16] = 0;
  LOBYTE(v13) = sub_1D29FFFC8();
  (*(v6 + 8))(v8, v5);
  v11[v9[5]] = v13 & 1;
  v11[v9[6]] = 0;
  v18 = (v25[1] + *(type metadata accessor for ExtensionHostingViewControllerRepresentable(0) + 20));
  v19 = v18[1];
  if (v19)
  {
    v20 = *v18;

    *v17 = v20;
    v17[1] = v19;
  }

  v21 = [objc_allocWithZone(_EXHostViewController) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701588, &unk_1D2A04710);
  sub_1D2A00208();
  v22 = v29;
  [v21 setDelegate_];

  v23 = v28;
  sub_1D29EFE50(v11, v28, type metadata accessor for _EXHostViewController.Configuration);
  (*(v26 + 56))(v23, 0, 1, v9);
  _EXHostViewController._configuration.setter(v23);
  sub_1D29EFEB8(v11, type metadata accessor for _EXHostViewController.Configuration);
  return v21;
}

id sub_1D29EF394()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(v0 + *(type metadata accessor for ExtensionHostingViewControllerRepresentable(0) + 28)) + 16);
  if (v2)
  {
    v8[0] = 0;
    v3 = v2;
    v4 = [v3 makeXPCConnectionWithError_];
    if (v4)
    {
      v1 = v4;
      v5 = v8[0];
    }

    else
    {
      v1 = v8[0];
      sub_1D29FFB98();

      swift_willThrow();
    }
  }

  else
  {
    sub_1D2A005A8();
    sub_1D29D9A60();
    v6 = sub_1D2A00608();
    sub_1D29FFFD8();

    [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E6966C98] code:6 userInfo:0];
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_1D29EF508@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29EFE50(v2, v5, type metadata accessor for ExtensionHostingViewControllerRepresentable);
  v6 = type metadata accessor for ExtensionHostingViewControllerRepresentable.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_1D29EFE50(v5, v7 + OBJC_IVAR____TtCV12ExtensionKit43ExtensionHostingViewControllerRepresentable11Coordinator_parent, type metadata accessor for ExtensionHostingViewControllerRepresentable);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_1D29EFEB8(v5, type metadata accessor for ExtensionHostingViewControllerRepresentable);
  *a2 = v8;
  return result;
}

uint64_t sub_1D29EF630(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29EFE0C(&qword_1EC701578, &unk_1D2A0463C);

  return MEMORY[0x1EEDDB780](a1, a2, a3, v6);
}

uint64_t sub_1D29EF6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D29EFE0C(&qword_1EC701578, &unk_1D2A0463C);

  return MEMORY[0x1EEDDB738](a1, a2, a3, v6);
}

void sub_1D29EF730(uint64_t a1)
{
  sub_1D29EFE0C(&qword_1EC701578, &unk_1D2A0463C);
  sub_1D2A001E8();
  __break(1u);
}

uint64_t _ExtensionHost.sceneName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t _ExtensionHost.init(extension:sceneName:initializationParameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    a2 = sub_1D2A003E8();
    v7 = v9;
  }

  a5[1] = a2;
  a5[2] = v7;
  a5[3] = a4;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v10 = a5 + *(type metadata accessor for _ExtensionHost(0) + 28);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  sub_1D29FFDA8();
  v11 = type metadata accessor for ExtensionHostingViewControllerRepresentable(0);
  v12 = &v10[v11[5]];
  *v12 = a2;
  *(v12 + 1) = v7;
  *&v10[v11[6]] = a4;
  v13 = v11[7];
  type metadata accessor for ExtensionHostingViewControllerRepresentable.MutableState();
  result = swift_allocObject();
  *(result + 16) = 0;
  *&v10[v13] = result;
  return result;
}

Swift::Void __swiftcall _ExtensionHost.invalidate()()
{
  v1 = v0 + *(type metadata accessor for _ExtensionHost(0) + 28);
  v2 = *(*(v1 + *(type metadata accessor for ExtensionHostingViewControllerRepresentable(0) + 28)) + 16);
  if (v2)
  {

    [v2 setConfiguration_];
  }
}

uint64_t sub_1D29EFA88(uint64_t a1)
{
  result = type metadata accessor for ExtensionHostingViewControllerRepresentable(319);
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

void sub_1D29EFB40(uint64_t a1)
{
  sub_1D29EFBE4();
  if (v1 <= 0x3F)
  {
    sub_1D29EFC48(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ExtensionHostingViewControllerRepresentable(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D29EFBE4()
{
  result = qword_1EC701548;
  if (!qword_1EC701548)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC701548);
  }

  return result;
}

void sub_1D29EFC48(uint64_t a1)
{
  if (!qword_1ED847630)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC701670, qword_1D2A045F8);
    v1 = sub_1D2A00618();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED847630);
    }
  }
}

void sub_1D29EFCD4(uint64_t a1)
{
  sub_1D29FFE08();
  if (v1 <= 0x3F)
  {
    sub_1D29EFD88();
    if (v2 <= 0x3F)
    {
      sub_1D29EFC48(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ExtensionHostingViewControllerRepresentable.MutableState();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D29EFD88()
{
  if (!qword_1EC701570)
  {
    v0 = sub_1D2A00618();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC701570);
    }
  }
}

uint64_t sub_1D29EFE0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExtensionHostingViewControllerRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D29EFE50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D29EFEB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _AnySceneConfiguration.init<A>(erasing:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (**a4)()@<X8>)
{
  v16 = a1;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(v7 + 32);
  v12(v11 + v10, v9, a2);
  *a4 = sub_1D29F0B04;
  a4[1] = v11;
  v12(v9, v16, a2);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  result = (v12)(v13 + v10, v9, a2);
  a4[2] = sub_1D29F0B6C;
  a4[3] = v13;
  return result;
}

uint64_t _SceneConfiguration.role.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EC700920 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *algn_1EC701348;
  *a1 = qword_1EC701340;
  a1[1] = v2;
}

uint64_t static _SceneConfigurationBuilder.buildBlock<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701590, &qword_1D2A04720);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D2A03590;
  (*(v6 + 16))(v8, a1, a2);
  _AnySceneConfiguration.init<A>(erasing:)(v8, a2, a3, (v9 + 32));
  return v9;
}

uint64_t _SceneConfigurationGroup.init<A>(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  swift_getFunctionTypeMetadata0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701598, &unk_1D2A04728);
  if (swift_dynamicCast())
  {

    result = swift_allocObject();
    *(result + 16) = v12;
    v11 = sub_1D29EC33C;
  }

  else
  {
    result = swift_allocObject();
    *(result + 16) = a3;
    *(result + 24) = a4;
    *(result + 32) = a1;
    *(result + 40) = a2;
    v11 = sub_1D29F0BD4;
  }

  *a5 = v11;
  a5[1] = result;
  return result;
}

uint64_t sub_1D29F0474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v15 - v11;
  v10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701590, &qword_1D2A04720);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D2A03590;
  (*(v6 + 16))(v9, v12, a3);
  _AnySceneConfiguration.init<A>(erasing:)(v9, a3, a4, (v13 + 32));
  (*(v6 + 8))(v12, a3);
  return v13;
}

void sub_1D29F05C8(unint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v47 = *a1;
  v49 = a1[1];
  v4 = *v2;
  v5 = *(v2 + 8);
  memset(v54 + 8, 0, 32);

  v7 = v4(v6);
  v8 = sub_1D2A00598();
  v9 = sub_1D29D9A60();
  v10 = sub_1D2A00608();
  v45 = v7;
  v43 = a2;
  if (os_log_type_enabled(v10, v8))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *&v54[0] = v12;
    *v11 = 136315138;
    v13 = swift_allocObject();
    *(v13 + 16) = v4;
    *(v13 + 24) = v5;
    *&v51 = sub_1D29EC96C;
    *(&v51 + 1) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701598, &unk_1D2A04728);
    v14 = sub_1D2A003F8();
    v16 = sub_1D29F87C4(v14, v15, v54);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1D29CC000, v10, v8, "Content %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v17 = v12;
    v7 = v45;
    MEMORY[0x1D38A6000](v17, -1, -1);
    MEMORY[0x1D38A6000](v11, -1, -1);
  }

  else
  {
  }

  v18 = *(v7 + 16);
  v19 = v47;
  if (v18)
  {
    v20 = 0;
    v21 = (v7 + 56);
    v44 = *(v7 + 16);
    while (v20 < *(v7 + 16))
    {
      v50 = *(v21 - 3);
      v22 = *v21;
      v46 = *(v21 - 1);

      v48 = v22;

      v23 = sub_1D2A00598();
      v24 = sub_1D2A00608();
      if (os_log_type_enabled(v24, v23))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *&v54[0] = v26;
        *v25 = 136315394;
        v50(&v51);
        v27 = v9;
        v28 = sub_1D29F87C4(v51, *(&v51 + 1), v54);

        *(v25 + 4) = v28;
        v9 = v27;
        v7 = v45;
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_1D29F87C4(v47, v49, v54);
        _os_log_impl(&dword_1D29CC000, v24, v23, "Evaluating %s) for role %s", v25, 0x16u);
        swift_arrayDestroy();
        v29 = v26;
        v19 = v47;
        MEMORY[0x1D38A6000](v29, -1, -1);
        v30 = v25;
        v18 = v44;
        MEMORY[0x1D38A6000](v30, -1, -1);
      }

      v50(&v51);
      if (v51 == __PAIR128__(v49, v19))
      {

LABEL_14:
        sub_1D29F2118(*(&v54[0] + 1), *&v54[1], *(&v54[1] + 1), *&v54[2]);

        *(&v54[0] + 1) = v50;
        v54[1] = v46;
        *&v54[2] = v48;
        goto LABEL_15;
      }

      v31 = sub_1D2A00708();

      if (v31)
      {
        goto LABEL_14;
      }

      ++v20;

      v21 += 4;
      if (v18 == v20)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

LABEL_15:
    v32 = sub_1D2A00598();
    v33 = sub_1D2A00608();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = *(&v54[1] + 8);
      v35 = *(v54 + 8);
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53 = *(&v34 + 1);
      *&v54[0] = v37;
      *v36 = 136315138;
      v51 = v35;
      v52 = v34;
      sub_1D29F20D4(v35, *(&v35 + 1), v34, *(&v34 + 1));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC701600, qword_1D2A04930);
      v38 = sub_1D2A003F8();
      v40 = sub_1D29F87C4(v38, v39, v54);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_1D29CC000, v33, v32, "Made View configuration: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x1D38A6000](v37, -1, -1);
      MEMORY[0x1D38A6000](v36, -1, -1);
    }

    swift_beginAccess();
    v41 = *(v54 + 8);
    v42 = *(&v54[1] + 8);
    *v43 = *(v54 + 8);
    v43[1] = v42;
    sub_1D29F20D4(v41, *(&v41 + 1), v42, *(&v42 + 1));
    sub_1D29F2118(v41, *(&v41 + 1), v42, *(&v42 + 1));
  }
}

uint64_t sub_1D29F0F1C(uint64_t a1)
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v9 - v6, &v1[*((v4 & v3) + 0x60)], v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC700D80, "nX");
  if (swift_dynamicCast())
  {
    sub_1D29DAEB8(v9, v11);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v7 = sub_1D29FFFA8();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_1D29DB7F4(v9, &unk_1EC701610, &qword_1D2A03570);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D29F10A4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_1D29F0F1C(v4);

  return a1 & 1;
}

id sub_1D29F10F4(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x58);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  (*(v3 + 8))(&v37, v4, v3);
  v5 = v37;
  v6 = [a1 role];
  v7 = sub_1D2A003E8();
  v9 = v8;

  v36 = v5;
  v35[0] = v7;
  v35[1] = v9;
  sub_1D29F05C8(v35, &v37);
  v10 = v37;
  if (v37)
  {
    v11 = *(&v37 + 1);
    v34 = v38;
    v12 = v39;
    v13 = sub_1D2A00598();
    sub_1D29D9A60();
    v14 = sub_1D2A00608();
    v33 = v13;
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v36 = v31;
      *v15 = 136315394;
      *&v37 = v10;
      *(&v37 + 1) = v11;
      v38 = v34;
      v39 = v12;

      v16 = sub_1D2A003F8();
      v32 = v4;
      v18 = v3;
      v19 = v11;
      v20 = sub_1D29F87C4(v16, v17, &v36);

      *(v15 + 4) = v20;
      v11 = v19;
      v3 = v18;
      *(v15 + 12) = 2080;
      v21 = sub_1D29F87C4(v7, v9, &v36);

      *(v15 + 14) = v21;
      v4 = v32;
      _os_log_impl(&dword_1D29CC000, v14, v33, "Using %s for requested role %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A6000](v31, -1, -1);
      MEMORY[0x1D38A6000](v15, -1, -1);
    }

    else
    {
    }

    *&v37 = v4;
    *(&v37 + 1) = &type metadata for _AnySceneConfiguration;
    v38 = v3;
    v39 = &protocol witness table for _AnySceneConfiguration;
    type metadata accessor for _UIAppExtensionSceneConfigWrapper._Scene(0, &v37);
    *&v37 = v10;
    *(&v37 + 1) = v11;
    v38 = v34;
    v39 = v12;
  }

  else
  {
    v22 = sub_1D2A005A8();
    sub_1D29D9A60();
    v23 = sub_1D2A00608();
    if (os_log_type_enabled(v23, v22))
    {
      v24 = v4;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v37 = v26;
      *v25 = 136315138;
      v27 = sub_1D29F87C4(v7, v9, &v37);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_1D29CC000, v23, v22, "No configuration found for requested role %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x1D38A6000](v26, -1, -1);
      v28 = v25;
      v4 = v24;
      MEMORY[0x1D38A6000](v28, -1, -1);
    }

    else
    {
    }

    *&v37 = v4;
    *(&v37 + 1) = &type metadata for _AnySceneConfiguration;
    v38 = v3;
    v39 = &protocol witness table for _AnySceneConfiguration;
    type metadata accessor for _UIAppExtensionSceneConfigWrapper._Scene(0, &v37);
    *&v37 = sub_1D29F20D0;
    *(&v37 + 1) = 0;
    v38 = sub_1D29F0188;
    v39 = 0;
  }

  v29 = sub_1D29F2054(&v37);

  return v29;
}

id sub_1D29F1504(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  v6 = sub_1D29F10F4(v4);

  return v6;
}

id sub_1D29F1564(void *a1)
{
  v1 = a1;
  v2 = sub_1D29F15A8();

  return v2;
}

id sub_1D29F1690()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4[0] = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4[1] = v1;
  v2 = type metadata accessor for _UIAppExtensionSceneConfigWrapper._Scene(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id sub_1D29F17AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _UIAppExtensionSceneConfigWrapper(0, *((*MEMORY[0x1E69E7D40] & *v4) + 0x50), *((*MEMORY[0x1E69E7D40] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

id sub_1D29F1880(_BYTE *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v29 = *MEMORY[0x1E69E7D40] & *v1;
  v7 = *((v6 & v4) + 0x50);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27[-v12];
  v14 = sub_1D2A00598();
  sub_1D29D9A60();
  v15 = sub_1D2A00608();
  v16 = *(v8 + 16);
  v30 = a1;
  v31 = v16;
  v16(v13, a1, v7);
  v28 = v14;
  if (os_log_type_enabled(v15, v14))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v17 = 136315138;
    v31(v11, v13, v7);
    v19 = sub_1D2A003F8();
    v21 = v20;
    (*(v8 + 8))(v13, v7);
    v22 = sub_1D29F87C4(v19, v21, &v32);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1D29CC000, v15, v28, "Creating _UIAppExtensionSceneConfigWrapper with content %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v23 = v18;
    v5 = MEMORY[0x1E69E7D40];
    MEMORY[0x1D38A6000](v23, -1, -1);
    MEMORY[0x1D38A6000](v17, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v31(v2 + *((*v5 & *v2) + 0x60), v30, v7);
  v25 = type metadata accessor for _UIAppExtensionSceneConfigWrapper(0, v7, *(v29 + 88), v24);
  v33.receiver = v2;
  v33.super_class = v25;
  return objc_msgSendSuper2(&v33, sel_init);
}

uint64_t sub_1D29F1C10(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D29F1C58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D29F1CA8(uint64_t a1)
{
  result = swift_checkMetadataState();
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

id sub_1D29F1D54(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *v1;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40];
  v29 = *MEMORY[0x1E69E7D40] & *v1;
  v7 = *((v6 & v4) + 0x58);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = sub_1D2A00598();
  sub_1D29D9A60();
  v15 = sub_1D2A00608();
  v30 = *(v8 + 16);
  v30(v13, v3, v7);
  v28 = v14;
  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v27 = v3;
    v17 = v16;
    v18 = swift_slowAlloc();
    v31[0] = v18;
    *v17 = 136315138;
    v30(v11, v13, v7);
    v19 = sub_1D2A003F8();
    v21 = v20;
    (*(v8 + 8))(v13, v7);
    v22 = sub_1D29F87C4(v19, v21, v31);

    *(v17 + 4) = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v23 = v18;
    v5 = MEMORY[0x1E69E7D40];
    MEMORY[0x1D38A6000](v23, -1, -1);
    v24 = v17;
    v3 = v27;
    MEMORY[0x1D38A6000](v24, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v30(&v2[*((*v5 & *v2) + 0x70)], v3, v7);
  v31[0] = *(v29 + 80);
  v31[1] = v7;
  v32 = *(v29 + 96);
  v25 = type metadata accessor for _UIAppExtensionSceneConfigWrapper._Scene(0, v31);
  v33.receiver = v2;
  v33.super_class = v25;
  return objc_msgSendSuper2(&v33, sel_init);
}

id sub_1D29F2054(uint64_t a1)
{
  v3 = *(v1 + 96);
  v6[0] = *(v1 + 80);
  v6[1] = v3;
  v4 = objc_allocWithZone(type metadata accessor for _UIAppExtensionSceneConfigWrapper._Scene(0, v6));
  return sub_1D29F1D54(a1);
}

uint64_t sub_1D29F20D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D29F2118(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

Swift::Void __swiftcall _EXBootstrapExtensionKit()()
{
  v0 = sub_1D29FFF78();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29FFF68();
  sub_1D29FFF48();
  v4 = *(v1 + 104);
  v4(v3, *MEMORY[0x1E6966C78], v0);
  sub_1D29FFF58();

  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_1D29FFF48();
  v4(v3, *MEMORY[0x1E6966C80], v0);
  sub_1D29FFF58();

  v5(v3, v0);
  sub_1D29FFF48();
  v4(v3, *MEMORY[0x1E6966C70], v0);
  sub_1D29FFF58();

  v5(v3, v0);
}

id sub_1D29F23B0(uint64_t (*a1)(void))
{
  v1 = objc_allocWithZone(a1(0));

  return [v1 init];
}

uint64_t static AppExtension<>.main()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = sub_1D2A00598();
  sub_1D29D9A60();
  v8 = sub_1D2A00608();
  if (os_log_type_enabled(v8, v7))
  {
    v9 = swift_slowAlloc();
    v18 = v2;
    v10 = v9;
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    type metadata accessor for _EXRunningUIExtension(0);
    v12 = sub_1D29FFC98();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&dword_1D29CC000, v8, v7, "Launching UI AppExtension %@", v10, 0xCu);
    sub_1D29DB7F4(v11, qword_1EC700C18, qword_1D2A034B0);
    MEMORY[0x1D38A6000](v11, -1, -1);
    MEMORY[0x1D38A6000](v10, -1, -1);
  }

  sub_1D29FFD08();
  type metadata accessor for _EXRunningUIExtension(0);
  v13 = sub_1D29FFC98();
  sub_1D29FFCF8();
  v14 = objc_allocWithZone(type metadata accessor for AppExtensionWrapper());
  sub_1D29F261C(v17);
  sub_1D29FFC68();

  return (*(v4 + 8))(v6, a1);
}

id sub_1D29F261C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2A00598();
  sub_1D29D9A60();
  v5 = sub_1D2A00608();
  sub_1D29F37E8(a1, v18);
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    sub_1D29F37E8(v18, v15);
    v8 = sub_1D2A003F8();
    v10 = v9;
    sub_1D29F3794(v18);
    v11 = sub_1D29F87C4(v8, v10, &v16);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1D29CC000, v5, v4, "Creating AppExtensionWrapper with content %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1D38A6000](v7, -1, -1);
    MEMORY[0x1D38A6000](v6, -1, -1);
  }

  else
  {

    sub_1D29F3794(v18);
  }

  sub_1D29F37E8(a1, v2 + OBJC_IVAR____TtC12ExtensionKit19AppExtensionWrapper_configurationScene);
  v12 = type metadata accessor for AppExtensionWrapper();
  v17.receiver = v2;
  v17.super_class = v12;
  v13 = objc_msgSendSuper2(&v17, sel_init);
  sub_1D29F3794(a1);
  return v13;
}

uint64_t sub_1D29F288C(void *a1)
{
  v3 = [a1 role];
  v4 = sub_1D2A003E8();
  v6 = v5;

  v7 = [a1 parameters];
  v15 = 0;
  sub_1D2A00548();
  v10 = v1;
  v11 = v4;
  v12 = v6;
  v13 = &v15;
  v14 = v7;
  sub_1D29F2E8C(sub_1D29F33EC, &v9, "ExtensionKit/AppExtension.swift", 31, 2u, 70);

  return v15;
}

uint64_t sub_1D29F2970(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  (*(a1 + OBJC_IVAR____TtC12ExtensionKit19AppExtensionWrapper_configurationScene))(&v56);
  v6 = v56;
  v7 = v57;
  v39 = *(&v56 + 1);
  v40 = *(&v57 + 1);
  v8 = sub_1D2A00598();
  sub_1D29D9A60();
  v9 = sub_1D2A00608();
  if (os_log_type_enabled(v9, v8))
  {
    v10 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *&v55[0] = v37;
    *v10 = 136315394;
    *&v56 = v6;
    *(&v56 + 1) = v39;
    *&v57 = v7;
    *(&v57 + 1) = v40;

    v11 = sub_1D2A003F8();
    v13 = sub_1D29F87C4(v11, v12, v55);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1D29F87C4(a2, a3, v55);
    _os_log_impl(&dword_1D29CC000, v9, v8, "Root scene %s for requested role id %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A6000](v37, -1, -1);
    MEMORY[0x1D38A6000](v10, -1, -1);
  }

  v7(&v51, a2, a3);
  v55[0] = v51;
  v55[1] = v52;
  v55[2] = v53;
  v55[3] = v54;
  if (v51)
  {
    v56 = v51;
    v57 = v52;
    v58 = v53;
    v59 = v54;
    v14 = sub_1D2A00598();
    v15 = sub_1D2A00608();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v60 = v17;
      *v16 = 136315394;
      v42 = v56;
      v43 = v57;
      v44 = v58;
      v45 = v59;
      v49 = v53;
      v50 = v54;
      v47 = v51;
      v48 = v52;
      sub_1D29F3624(&v47, v41);
      v18 = sub_1D2A003F8();
      v20 = sub_1D29F87C4(v18, v19, &v60);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_1D29F87C4(a2, a3, &v60);
      _os_log_impl(&dword_1D29CC000, v15, v14, "Using %s for requested role id %s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38A6000](v17, -1, -1);
      MEMORY[0x1D38A6000](v16, -1, -1);
    }

    v21 = *&v55[0];
    if (!(*&v55[0])())
    {
      v47 = v56;
      v48 = v57;
      v49 = v58;
      v50 = v59;
      v36 = objc_allocWithZone(type metadata accessor for AppExtensionWrapper._Scene());
      v30 = sub_1D29F3438(&v47);

      goto LABEL_13;
    }

    swift_unknownObjectRelease();
    v22 = type metadata accessor for AppExtensionWrapper._ExtensionUIScene();
    v23 = objc_allocWithZone(v22);
    v24 = swift_allocObject();
    v25 = v57;
    *(v24 + 1) = v56;
    *(v24 + 2) = v25;
    v26 = v59;
    *(v24 + 3) = v58;
    *(v24 + 4) = v26;
    v27 = &v23[OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper17_ExtensionUIScene_connectionHandler];
    *v27 = sub_1D29F35F8;
    v27[1] = v24;
    v28 = sub_1D29F3624(v55, &v47);
    result = v21(v28);
    if (result)
    {
      *&v23[OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper17_ExtensionUIScene__sceneDelegate] = result;
      v46.receiver = v23;
      v46.super_class = v22;
      v30 = objc_msgSendSuper2(&v46, sel_init);

      sub_1D29DB7F4(&v51, &qword_1EC701690, &qword_1D2A049A0);
LABEL_13:
      *a4 = v30;
      return swift_unknownObjectRelease();
    }

    __break(1u);
  }

  else
  {
    v31 = a2;
    v32 = sub_1D2A005A8();
    v33 = sub_1D2A00608();
    if (os_log_type_enabled(v33, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v56 = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_1D29F87C4(v31, a3, &v56);
      _os_log_impl(&dword_1D29CC000, v33, v32, "No configuration found for requested role id %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1D38A6000](v35, -1, -1);
      MEMORY[0x1D38A6000](v34, -1, -1);
    }
  }

  return result;
}

uint64_t sub_1D29F2E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_1D2A00538();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_1D29F3410();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_1D2A00678();
    MEMORY[0x1D38A52F0](0xD00000000000003FLL, 0x80000001D2A08560);
    v12 = sub_1D2A00758();
    MEMORY[0x1D38A52F0](v12);

    MEMORY[0x1D38A52F0](46, 0xE100000000000000);
    result = sub_1D2A006A8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D29F321C(char *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *&a1[*a4];
  v6 = a3;
  v7 = a1;
  v8 = v5(v6);

  return v8 & 1;
}

id sub_1D29F335C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1D29F3438(_OWORD *a1)
{
  v2 = v1;
  v4 = a1[1];
  v25[0] = *a1;
  v25[1] = v4;
  v5 = a1[3];
  v26 = a1[2];
  v27 = v5;
  v6 = OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper6_Scene_viewController;
  *&v2[OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper6_Scene_viewController] = 0;
  v7 = swift_allocObject();
  v8 = a1[1];
  v7[1] = *a1;
  v7[2] = v8;
  v9 = a1[3];
  v7[3] = a1[2];
  v7[4] = v9;
  v10 = &v2[OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper6_Scene_connectionHandler];
  *v10 = sub_1D29F3844;
  *(v10 + 1) = v7;
  v11 = v26;
  v12 = sub_1D29F3624(v25, v23);
  v13 = v11(v12);
  *&v2[OBJC_IVAR____TtCC12ExtensionKit19AppExtensionWrapper6_Scene_innerView] = v13;

  v14 = sub_1D2A002E8();
  v15 = sub_1D2A00218();
  v23[0] = v13;
  v23[1] = v14;
  v24 = v15;
  v16 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC701660, &qword_1D2A049A8));

  v17 = sub_1D2A00158();
  result = [v17 view];
  if (result)
  {
    v19 = result;
    sub_1D29F36D0(v25);
    v20 = [objc_opt_self() clearColor];
    [v19 setBackgroundColor_];

    v21 = *&v2[v6];
    *&v2[v6] = v17;

    v22.receiver = v2;
    v22.super_class = type metadata accessor for AppExtensionWrapper._Scene();
    return objc_msgSendSuper2(&v22, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_19Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1D29F3724(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC701680, &qword_1D2A049B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D29F3848(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t _EXHostViewController.Configuration.init(appExtensionIdentity:sceneID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for _EXHostViewController.Configuration(0);
  v9 = v8[8];
  v10 = sub_1D29FFE08();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a4, a1, v10);
  v12 = (a4 + v8[7]);
  *v12 = a2;
  v12[1] = a3;
  *(a4 + v9) = 0;
  LOBYTE(a3) = sub_1D29FFFC8();
  result = (*(v11 + 8))(a1, v10);
  *(a4 + v8[5]) = a3 & 1;
  *(a4 + v8[6]) = 0;
  return result;
}

uint64_t type metadata accessor for _EXHostViewController.Configuration(uint64_t a1)
{
  result = qword_1ED847638;
  if (!qword_1ED847638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _EXHostViewController.Configuration.role.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for _EXHostViewController.Configuration(0) + 28));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t _EXHostViewController._configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701580, &qword_1D2A04708);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for _EXHostViewController.Configuration(0);
  v8 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D29F3CC4(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D29F3D34(v6);
    [v2 setConfiguration_];
    return sub_1D29F3D34(a1);
  }

  else
  {
    sub_1D29F3D9C(v6, v10);
    v12 = sub_1D29FFD48();
    v13 = *&v10[v7[8]];
    v14 = v10[v7[5]];
    v15 = [objc_allocWithZone(_EXHostViewControllerConfiguration) initWithExtensionIdentity_];
    v16 = v10[v7[6]];
    v17 = sub_1D2A003B8();
    [v15 setSceneIdentifier_];

    [v15 setInitializationParameters_];
    [v15 setBeginHostingImmediately_];
    [v15 setRetryOnHostingFailure_];
    [v2 setConfiguration_];

    sub_1D29F3D34(a1);
    return sub_1D29F4970(v10);
  }
}

uint64_t sub_1D29F3CC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701580, &qword_1D2A04708);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D29F3D34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701580, &qword_1D2A04708);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D29F3D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _EXHostViewController.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id _EXHostViewController.configuration.getter()
{
  v1 = [v0 configuration];

  return v1;
}

void _EXHostViewController.configuration.setter(void *a1)
{
  [v1 setConfiguration_];
}

void (*_EXHostViewController.configuration.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 configuration];
  return sub_1D29F3EDC;
}

void sub_1D29F3EDC(id *a1)
{
  v1 = *a1;
  [a1[1] setConfiguration_];
}

uint64_t _EXHostViewController.appExtensionProcess.getter@<X0>(uint64_t a1@<X8>)
{
  if ([v1 extensionProcess])
  {
    sub_1D29FFEE8();
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1D29FFF08();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t _EXHostViewController.Configuration.appExtensionIdentity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D29FFE08();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _EXHostViewController.Configuration.appExtensionIdentity.setter(uint64_t a1)
{
  v3 = sub_1D29FFE08();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t _EXHostViewController.Configuration.appExtension.getter()
{
  v1 = sub_1D29FFE08();
  MEMORY[0x1EEE9AC00](v1);
  (*(v3 + 16))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  return sub_1D29FFF38();
}

uint64_t sub_1D29F4178(uint64_t a1)
{
  v2 = sub_1D29FFE08();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1D29FFF38();
}

uint64_t sub_1D29F4244(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v3 = sub_1D29FFE08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D29FFF18();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  v14 = *(v8 + 16);
  v14(&v16 - v12, a1, v7);
  v14(v11, v13, v7);
  sub_1D29FFE28();
  (*(v8 + 8))(v13, v7);
  return (*(v4 + 40))(v17, v6, v3);
}

uint64_t _EXHostViewController.Configuration.appExtension.setter(uint64_t a1)
{
  v2 = sub_1D29FFE08();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D29FFF18();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  v13 = *(v7 + 16);
  v13(v16 - v11, a1, v6);
  v13(v10, v12, v6);
  sub_1D29FFE28();
  v14 = *(v7 + 8);
  v14(a1, v6);
  v14(v12, v6);
  return (*(v3 + 40))(v16[1], v5, v2);
}

void (*_EXHostViewController.Configuration.appExtension.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1D29FFE08();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  v5[3] = v9;
  v11 = sub_1D29FFF18();
  v5[4] = v11;
  v12 = *(v11 - 8);
  v5[5] = v12;
  v13 = *(v12 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v12 + 64));
    v5[7] = malloc(v13);
    v14 = malloc(v13);
  }

  v5[8] = v14;
  (*(v8 + 16))(v10, v1, v6);
  sub_1D29FFF38();
  return sub_1D29F47C0;
}

void sub_1D29F47C0(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[5] + 16);
  v4((*a1)[7], v3[8], v3[4]);
  v5 = v3[7];
  v7 = v3[5];
  v6 = v3[6];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[2];
  v14 = v3[1];
  v15 = v3[8];
  v13 = *v3;
  if (a2)
  {
    v4(v6, v5, v9);
    sub_1D29FFE28();
    v11 = *(v7 + 8);
    v11(v5, v9);
    (*(v10 + 40))(v13, v8, v14);
    v12 = v15;
    v11(v15, v9);
  }

  else
  {
    sub_1D29FFE28();
    v12 = v15;
    (*(v7 + 8))(v15, v9);
    (*(v10 + 40))(v13, v8, v14);
  }

  free(v12);
  free(v5);
  free(v6);
  free(v8);

  free(v3);
}

uint64_t _EXHostViewController.Configuration.role.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for _EXHostViewController.Configuration(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t sub_1D29F4970(uint64_t a1)
{
  v2 = type metadata accessor for _EXHostViewController.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D29F49CC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for _EXHostViewController.Configuration(0) + 28));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

void (*_EXHostViewController.Configuration.role.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for _EXHostViewController.Configuration(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v7;

  return sub_1D29F4AB8;
}

void sub_1D29F4AB8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

uint64_t _EXHostViewController.Configuration.beginHostingImmediately.setter(char a1)
{
  result = type metadata accessor for _EXHostViewController.Configuration(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t _EXHostViewController.Configuration.retryOnHostingFailure.setter(char a1)
{
  result = type metadata accessor for _EXHostViewController.Configuration(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t _EXHostViewController.Configuration.sceneID.getter()
{
  v1 = *(v0 + *(type metadata accessor for _EXHostViewController.Configuration(0) + 28));

  return v1;
}

uint64_t _EXHostViewController.Configuration.sceneID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for _EXHostViewController.Configuration(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t _EXHostViewController.Configuration._initializationParameters.getter()
{
  type metadata accessor for _EXHostViewController.Configuration(0);

  return swift_unknownObjectRetain();
}

uint64_t _EXHostViewController.Configuration._initializationParameters.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for _EXHostViewController.Configuration(0) + 32);
  result = swift_unknownObjectRelease();
  *(v1 + v3) = a1;
  return result;
}

uint64_t _EXHostViewController.Configuration.init(appExtension:sceneID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v7 = sub_1D29FFF18();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D29FFE08();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, v7);
  sub_1D29FFE28();
  v15 = type metadata accessor for _EXHostViewController.Configuration(0);
  v16 = v15[8];
  (*(v12 + 16))(a4, v14, v11);
  v17 = (a4 + v15[7]);
  v18 = v21;
  *v17 = a2;
  v17[1] = v18;
  *(a4 + v16) = 0;
  LOBYTE(v16) = sub_1D29FFFC8();
  (*(v8 + 8))(a1, v7);
  result = (*(v12 + 8))(v14, v11);
  *(a4 + v15[5]) = v16 & 1;
  *(a4 + v15[6]) = 0;
  return result;
}

uint64_t _EXHostViewController.Configuration.init(appExtension:role:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = sub_1D29FFE08();
  v27 = *(v30 - 8);
  v6 = v27;
  MEMORY[0x1EEE9AC00](v30);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D29FFF18();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v27 - v14;
  v16 = *a2;
  v28 = a2[1];
  v29 = v16;
  v17 = *(v10 + 16);
  v17(&v27 - v14, a1, v9);
  v17(v13, v15, v9);
  sub_1D29FFE28();
  v18 = type metadata accessor for _EXHostViewController.Configuration(0);
  v19 = v18[8];
  v20 = *(v6 + 16);
  v21 = v30;
  v20(a3, v8, v30);
  v22 = (a3 + v18[7]);
  v23 = v28;
  *v22 = v29;
  v22[1] = v23;
  *(a3 + v19) = 0;
  v24 = a3;
  LOBYTE(a3) = sub_1D29FFFC8();
  v25 = *(v10 + 8);
  v25(a1, v9);
  (*(v27 + 8))(v8, v21);
  result = (v25)(v15, v9);
  *(v24 + v18[5]) = a3 & 1;
  *(v24 + v18[6]) = 0;
  return result;
}

uint64_t _EXHostViewController._configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 configuration];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 extensionIdentity];
    sub_1D29FFDA8();
    v6 = [v4 role];
    v7 = sub_1D2A003E8();
    v9 = v8;

    v10 = [v4 initializationParameters];
    v11 = [v4 beginHostingImmediately];
    v12 = [v4 retryOnHostingFailure];

    v13 = type metadata accessor for _EXHostViewController.Configuration(0);
    v14 = v13[8];
    v15 = (a1 + v13[7]);
    *v15 = v7;
    v15[1] = v9;
    *(a1 + v14) = v10;
    *(a1 + v13[5]) = v11;
    *(a1 + v13[6]) = v12;
    v16 = *(*(v13 - 1) + 56);
    v17 = v13;
    v18 = a1;
    v19 = 0;
  }

  else
  {
    v20 = type metadata accessor for _EXHostViewController.Configuration(0);
    v16 = *(*(v20 - 8) + 56);
    v17 = v20;
    v18 = a1;
    v19 = 1;
  }

  return v16(v18, v19, 1, v17);
}

uint64_t sub_1D29F53E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701580, &qword_1D2A04708);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D29F3CC4(a1, &v6 - v3);
  return _EXHostViewController._configuration.setter(v4);
}

void (*_EXHostViewController._configuration.modify(void *a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701580, &qword_1D2A04708) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  _EXHostViewController._configuration.getter(v4);
  return sub_1D29F5538;
}

void sub_1D29F5538(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2)
  {
    sub_1D29F3CC4(v3, v2);
    _EXHostViewController._configuration.setter(v2);
    sub_1D29F3D34(v3);
  }

  else
  {
    _EXHostViewController._configuration.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t _EXHostViewController.Session.__allocating_init(processConfiguration:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v5 = sub_1D29FFEC8();
  *(v3 + 128) = v5;
  *(v3 + 136) = *(v5 - 8);
  *(v3 + 144) = swift_task_alloc();
  v6 = sub_1D29FFF08();
  *(v3 + 152) = v6;
  *(v3 + 160) = *(v6 - 8);
  *(v3 + 168) = swift_task_alloc();
  v7 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v7;
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = *(a2 + 80);
  v8 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D29F56E8, 0, 0);
}

uint64_t sub_1D29F56E8()
{
  (*(v0[17] + 16))(v0[18], v0[14], v0[16]);
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_1D29F57A0;
  v2 = v0[21];
  v3 = v0[18];

  return MEMORY[0x1EEDC0A48](v2, v3);
}

uint64_t sub_1D29F57A0()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    sub_1D29F5D0C(v2 + 16);
    v3 = sub_1D29F5BD0;
  }

  else
  {
    v3 = sub_1D29F58BC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D29F58BC()
{
  v1 = v0[21];
  v2 = swift_task_alloc();
  v0[24] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[25] = v3;
  v4 = sub_1D29E7AA4();
  *v3 = v0;
  v3[1] = sub_1D29F59BC;

  return MEMORY[0x1EEE6DE38](v0 + 13, 0, 0, 0xD000000000000029, 0x80000001D2A085D0, sub_1D29F6060, v2, v4);
}

uint64_t sub_1D29F59BC()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  sub_1D29F5D0C(v2 + 16);

  if (v0)
  {
    v3 = sub_1D29F5C64;
  }

  else
  {
    v3 = sub_1D29F5AFC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D29F5AFC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(v0[17] + 8))(v0[14], v0[16]);
  v4 = v0[13];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1D29F5BD0()
{
  (*(v0[17] + 8))(v0[14], v0[16]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D29F5C64()
{
  (*(v0[17] + 8))(v0[14], v0[16]);
  (*(v0[20] + 8))(v0[21], v0[19]);

  v1 = v0[1];

  return v1();
}

void sub_1D29F5D3C(uint64_t a1, double *a2)
{
  v20 = a1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC701200, &qword_1D2A03E68);
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = v18 - v4;
  v6 = objc_allocWithZone(_EXHostViewControllerSessionConfiguration);
  v7 = sub_1D2A003B8();
  v8 = [v6 initWithSceneIdentifier_];

  v9 = *(a2 + 7);
  v25 = *(a2 + 6);
  v26 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v18[1] = &v23;
  v23 = sub_1D29DE600;
  v24 = &block_descriptor_37;
  v10 = _Block_copy(&aBlock);
  v11 = v8;

  [v11 setInvalidationHandler_];
  _Block_release(v10);
  [v11 setInitialFrame_];
  [v11 setRetryOnHostingFailure_];
  [v11 set:*(a2 + 80) shouldHostRemoteTextEffectsWindow:?];
  v12 = objc_opt_self();
  sub_1D29FFEF8();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  v14 = v19;
  (*(v3 + 16))(v5, v20, v19);
  v15 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v16 = swift_allocObject();
  (*(v3 + 32))(v16 + v15, v5, v14);
  v25 = sub_1D29F6F24;
  v26 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1D29F3848;
  v24 = &block_descriptor_43;
  v17 = _Block_copy(&aBlock);

  [v12 sessionWithProcess:v13 configuration:v11 completion:v17];

  _Block_release(v17);
}

uint64_t _EXHostViewController.Session.__allocating_init(process:configuration:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  *(v3 + 96) = *(a2 + 80);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  return MEMORY[0x1EEE6DFA0](sub_1D29F60A8, 0, 0);
}

uint64_t sub_1D29F60A8()
{
  v1 = v0[14];
  v2 = swift_task_alloc();
  v0[16] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[17] = v3;
  v4 = sub_1D29E7AA4();
  *v3 = v0;
  v3[1] = sub_1D29F61A8;

  return MEMORY[0x1EEE6DE38](v0 + 13, 0, 0, 0xD00000000000001CLL, 0x80000001D2A07DF0, sub_1D29F6754, v2, v4);
}

uint64_t sub_1D29F61A8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_1D29F638C;
  }

  else
  {
    sub_1D29F5D0C(v2 + 16);

    v3 = sub_1D29F62D0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D29F62D0()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = sub_1D29FFF08();
  (*(*(v4 - 8) + 8))(v1, v4);
  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_1D29F638C()
{
  v1 = *(v0 + 112);
  sub_1D29F5D0C(v0 + 16);

  v2 = sub_1D29FFF08();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = *(v0 + 8);

  return v3();
}

void sub_1D29F6438(uint64_t a1, double *a2)
{
  v19 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC701200, &qword_1D2A03E68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = objc_allocWithZone(_EXHostViewControllerSessionConfiguration);
  v8 = sub_1D2A003B8();
  v9 = [v7 initWithSceneIdentifier_];

  v10 = *(a2 + 7);
  v24 = *(a2 + 6);
  v25 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v18 = &v22;
  v22 = sub_1D29DE600;
  v23 = &block_descriptor_3;
  v11 = _Block_copy(&aBlock);

  [v9 setInvalidationHandler_];
  _Block_release(v11);
  [v9 setInitialFrame_];
  [v9 setRetryOnHostingFailure_];
  [v9 set:*(a2 + 80) shouldHostRemoteTextEffectsWindow:?];
  v12 = objc_opt_self();
  sub_1D29FFEF8();
  objc_opt_self();
  v13 = swift_dynamicCastObjCClassUnconditional();
  v14 = v3;
  (*(v4 + 16))(v6, v19, v3);
  v15 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v16 = swift_allocObject();
  (*(v4 + 32))(v16 + v15, v6, v14);
  v24 = sub_1D29F6FB0;
  v25 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = sub_1D29F3848;
  v23 = &block_descriptor_34;
  v17 = _Block_copy(&aBlock);

  [v12 sessionWithProcess:v13 configuration:v9 completion:v17];
  _Block_release(v17);
}

NSXPCConnection __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> _EXHostViewController.Session.makeXPCConnection()()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  v6[0] = 0;
  v2 = [v1 _makeXPCConnectionWithError_];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1D29FFB98();

    swift_willThrow();
  }

  return v2;
}

uint64_t _EXHostViewController.Session.identity.getter()
{
  v1 = [*(v0 + 16) extensionProcess];
  v2 = [v1 extensionIdentity];

  return MEMORY[0x1EEDC0AB0](v2);
}

double _EXHostViewController.Session.Configuration.init(sceneID:onInvalidation:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 64) = 0;
  *(a5 + 72) = 0;
  *(a5 + 80) = 1;
  *a5 = a1;
  *(a5 + 8) = a2;
  result = 0.0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
  return result;
}

uint64_t _EXHostViewController.Session.Configuration.sceneID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t _EXHostViewController.Session.Configuration.sceneID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void _EXHostViewController.Session.Configuration.initialFrame.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

uint64_t sub_1D29F6980(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 48) = sub_1D29F6E28;
  *(a2 + 56) = v5;
  return result;
}

uint64_t _EXHostViewController.Session.Configuration.onInvalidation.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t _EXHostViewController.Session.Configuration.onInvalidation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t _EXHostViewController.Session.Configuration._initializationParameters.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *(v1 + 72) = a1;
  return result;
}

uint64_t _EXHostViewController.Session.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

void *_EXHostViewController.session.getter()
{
  result = [v0 session];
  if (result)
  {
    v2 = result;
    type metadata accessor for _EXHostViewController.Session();
    result = swift_allocObject();
    result[2] = v2;
  }

  return result;
}

void *sub_1D29F6BF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 session];
  if (result)
  {
    v4 = result;
    type metadata accessor for _EXHostViewController.Session();
    result = swift_allocObject();
    result[2] = v4;
  }

  *a2 = result;
  return result;
}

id _EXHostViewController.session.setter(uint64_t a1)
{
  if (a1)
  {
    [v1 setSession_];
  }

  else
  {

    return [v1 setSession_];
  }
}

id (*_EXHostViewController.session.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = [v1 session];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for _EXHostViewController.Session();
    v3 = swift_allocObject();
    v3[2] = v4;
  }

  *a1 = v3;
  return sub_1D29E8154;
}

void sub_1D29F6D68(uint64_t a1)
{
  sub_1D29FFE08();
  if (v1 <= 0x3F)
  {
    sub_1D29EFC48(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_30Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC701200, &qword_1D2A03E68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

double AppExtensionSceneConfiguration.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  *a5 = sub_1D29F7934;
  *(a5 + 8) = v10;
  result = 0.0;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0;
  return result;
}

uint64_t (*PrimitiveAppExtensionScene.init<A>(id:content:onConnection:)@<X0>(uint64_t (*a1)()@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)()@<X4>, uint64_t (*a6)()@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t (**a9)()@<X8>))()
{
  *a9 = sub_1D29F7B58;
  a9[1] = 0;
  a9[2] = a1;
  a9[3] = a2;
  result = swift_allocObject();
  *(result + 2) = a7;
  *(result + 3) = a8;
  *(result + 4) = a3;
  *(result + 5) = a4;
  a9[4] = sub_1D29F91A8;
  a9[5] = result;
  a9[6] = a5;
  a9[7] = a6;
  return result;
}

uint64_t sub_1D29F70CC@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = [objc_allocWithZone(type metadata accessor for ExtensionPickerView.Model(0)) init];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *&v12 = 0x746C7561666564;
  *(&v12 + 1) = 0xE700000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D29E3224;
  *(v9 + 24) = v7;
  *&v13 = sub_1D29E3288;
  *(&v13 + 1) = v9;
  *&v14 = sub_1D29E322C;
  *(&v14 + 1) = v8;
  v10 = v6;
  PrimitiveAppExtensionScene._makeScene(with:)(a1, a2, a3);
  v15[0] = sub_1D29F7B58;
  v15[1] = v12;
  v15[2] = v13;
  v15[3] = v14;
  return sub_1D29F36D0(v15);
}

uint64_t AppExtensionScene._makeScene(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v14 - v10;
  (*(a4 + 24))(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v9 + 8))(v11, AssociatedTypeWitness);
}

Swift::Bool __swiftcall AppExtensionSceneConfiguration.accept(connection:)(NSXPCConnection connection)
{
  sub_1D29F3724(v1 + 16, v4);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = sub_1D29FFD18();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1D29DB7F4(v4, &unk_1EC701680, &qword_1D2A049B0);
    v2 = 0;
  }

  return v2 & 1;
}

double AppExtensionSceneConfiguration.init<A, B>(_:configuration:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a6;
  v15 = sub_1D2A00618();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v19 = swift_allocObject();
  v19[2] = a4;
  v19[3] = a5;
  v19[4] = v26;
  v19[5] = a7;
  v19[6] = a1;
  v19[7] = a2;
  *a8 = sub_1D29F7B60;
  *(a8 + 8) = v19;
  (*(v16 + 16))(v18, a3, v15);
  v20 = *(a5 - 8);
  if ((*(v20 + 48))(v18, 1, a5) == 1)
  {
    v21 = *(v16 + 8);
    v21(a3, v15);
    v21(v18, v15);
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
  }

  else
  {
    *(&v28 + 1) = a5;
    v29 = a7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
    (*(v20 + 32))(boxed_opaque_existential_1, v18, a5);
    (*(v16 + 8))(a3, v15);
  }

  result = *&v27;
  v24 = v28;
  *(a8 + 16) = v27;
  *(a8 + 32) = v24;
  *(a8 + 48) = v29;
  return result;
}

uint64_t sub_1D29F7630@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9();
  return _AnyAppExtensionScene.init<A>(erasing:)(v11, a3, a5, x8_0);
}

uint64_t _AnyAppExtensionScene.init<A>(erasing:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a1;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(v7 + 32);
  v12(v11 + v10, v9, a2);
  *a4 = sub_1D29F862C;
  a4[1] = v11;
  v12(v9, v16, a2);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  result = (v12)(v13 + v10, v9, a2);
  a4[2] = sub_1D29F8668;
  a4[3] = v13;
  return result;
}

void sub_1D29F7868(uint64_t (**a1)@<X0>(void (**a1)()@<X8>)@<X8>)
{
  *a1 = sub_1D29F917C;
  a1[1] = 0;
  a1[2] = sub_1D29F9180;
  a1[3] = 0;
}

uint64_t sub_1D29F7894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7();
  return _AnyAppExtensionScene.init<A>(erasing:)(v9, a2, a3, a4);
}

uint64_t sub_1D29F7940(uint64_t a1)
{
  sub_1D29F3724(v1 + 16, v4);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v2 = sub_1D29FFD18();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  else
  {
    sub_1D29DB7F4(v4, &unk_1EC701680, &qword_1D2A049B0);
    v2 = 0;
  }

  return v2 & 1;
}

void *PrimitiveAppExtensionScene.init<A>(id:sceneDelegate:content:onConnection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  a9[2] = a1;
  a9[3] = a2;
  result = swift_allocObject();
  result[2] = a10;
  result[3] = a11;
  result[4] = a5;
  result[5] = a6;
  a9[4] = sub_1D29F86D0;
  a9[5] = result;
  a9[6] = a7;
  a9[7] = a8;
  *a9 = a3;
  a9[1] = a4;
  return result;
}

uint64_t sub_1D29F7A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7();
  v10 = sub_1D29F90B4(v9, a3, a4);
  (*(v6 + 8))(v9, a3);
  return v10;
}

double PrimitiveAppExtensionScene._makeScene(with:)@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = v3[1];
  v25 = *v3;
  v26 = v8;
  v9 = v3[3];
  v27 = v3[2];
  v28 = v9;
  v10 = sub_1D2A00598();
  sub_1D29D9A60();
  v11 = sub_1D2A00608();
  if (os_log_type_enabled(v11, v10))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315394;
    v14 = v4[1];
    v24[0] = *v4;
    v24[1] = v14;
    v15 = v4[3];
    v24[2] = v4[2];
    v24[3] = v15;
    sub_1D29F3624(&v25, v22);
    v16 = sub_1D2A003F8();
    v18 = sub_1D29F87C4(v16, v17, &v23);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1D29F87C4(a1, a2, &v23);
    _os_log_impl(&dword_1D29CC000, v11, v10, "Evaluating %s for requested id %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A6000](v13, -1, -1);
    MEMORY[0x1D38A6000](v12, -1, -1);
  }

  if (v26 == __PAIR128__(a2, a1) || (sub_1D2A00708() & 1) != 0)
  {
    v19 = v26;
    *a3 = v25;
    a3[1] = v19;
    v20 = v28;
    a3[2] = v27;
    a3[3] = v20;
    sub_1D29F3624(&v25, v24);
  }

  else
  {
    result = 0.0;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t Array<A>._makeScene(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a1;
  v25 = a2;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memset(v39, 0, 64);
  result = sub_1D2A004E8();
  if (result)
  {
    v19 = v11;
    v20 = a6;
    v14 = 0;
    v22 = a5;
    v23 = (v10 + 16);
    v21 = a5 + 32;
    while (1)
    {
      v15 = sub_1D2A004D8();
      sub_1D2A004B8();
      if (v15)
      {
        result = (*(v10 + 16))(v12, a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v14, a4);
        a6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_1D2A00688();
        if (v19 != 8)
        {
          __break(1u);
          return result;
        }

        v26 = result;
        (*v23)(v12, &v26, a4);
        result = swift_unknownObjectRelease();
        a6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
LABEL_11:
          __break(1u);
          break;
        }
      }

      (*(v22 + 32))(&v26, v24, v25, a4);
      sub_1D29DB7F4(v39, &qword_1EC701690, &qword_1D2A049A0);
      result = (*(v10 + 8))(v12, a4);
      v16 = v26;
      v31 = v27;
      v32 = v28;
      v33 = v29;
      v34 = v30;
      if (v26)
      {
        v35 = v31;
        v36 = v32;
        v37 = v33;
        v38 = v34;
        a6 = v20;
        goto LABEL_15;
      }

      *&v39[0] = 0;
      *(v39 + 8) = v31;
      *(&v39[1] + 8) = v32;
      *(&v39[2] + 8) = v33;
      *(&v39[3] + 1) = v34;
      result = sub_1D2A004E8();
      ++v14;
      if (a6 == result)
      {
        v16 = *&v39[0];
        a6 = v20;
        goto LABEL_14;
      }
    }
  }

  v16 = 0;
LABEL_14:
  v35 = *(v39 + 8);
  v36 = *(&v39[1] + 8);
  v37 = *(&v39[2] + 8);
  v38 = *(&v39[3] + 1);
LABEL_15:
  *a6 = v16;
  v17 = v36;
  *(a6 + 8) = v35;
  *(a6 + 24) = v17;
  *(a6 + 40) = v37;
  *(a6 + 56) = v38;
  return result;
}

unint64_t PrimitiveAppExtensionScene.debugDescription.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];

  sub_1D2A00678();

  MEMORY[0x1D38A52F0](v1, v2);
  MEMORY[0x1D38A52F0](0x203A7765697620, 0xE700000000000000);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701698, &qword_1D2A04A80);
  v6 = sub_1D2A003F8();
  MEMORY[0x1D38A52F0](v6);

  return 0xD00000000000001BLL;
}

uint64_t sub_1D29F83B0@<X0>(void (**a1)()@<X8>)
{
  v2 = [objc_allocWithZone(type metadata accessor for ExtensionPickerView.Model(0)) init];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1D29E68EC;
  *(v5 + 24) = v3;
  *&v15 = sub_1D29F7B58;
  *(&v15 + 1) = 0;
  *&v16 = 0x746C7561666564;
  *(&v16 + 1) = 0xE700000000000000;
  *&v17 = sub_1D29E68E8;
  *(&v17 + 1) = v5;
  *&v18 = sub_1D29E68F0;
  *(&v18 + 1) = v4;
  v6 = swift_allocObject();
  v7 = v16;
  *(v6 + 16) = sub_1D29F7B58;
  *(v6 + 32) = v7;
  v8 = v18;
  *(v6 + 48) = v17;
  *(v6 + 64) = v8;
  *a1 = sub_1D29F7BBC;
  a1[1] = v6;
  v9 = swift_allocObject();
  v10 = v16;
  *(v9 + 16) = v15;
  *(v9 + 32) = v10;
  v11 = v18;
  *(v9 + 48) = v17;
  *(v9 + 64) = v11;
  a1[2] = sub_1D29F9184;
  a1[3] = v9;
  v12 = v2;
  return sub_1D29F3624(&v15, &v14);
}

uint64_t sub_1D29F8530@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(a2 + 24))(a1, a2);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return _AnyAppExtensionScene.init<A>(erasing:)(v8, AssociatedTypeWitness, AssociatedConformanceWitness, a3);
}

uint64_t sub_1D29F8768(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1D29F87C4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_1D29F87C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1D29F8890(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1D29F8F18(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_1D29F8890(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1D29F899C(a5, a6);
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
    result = sub_1D2A00698();
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

void *sub_1D29F899C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1D29F89E8(a1, a2);
  sub_1D29F8B18(&unk_1F4DED560);
  return v3;
}

void *sub_1D29F89E8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1D29F8C04(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1D2A00698();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1D2A00468();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1D29F8C04(v10, 0);
        result = sub_1D2A00668();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1D29F8B18(uint64_t result)
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

  result = sub_1D29F8C78(result, v11, 1, v3);
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

void *sub_1D29F8C04(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7016A8, "B]");
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1D29F8C78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7016A8, "B]");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t get_enum_tag_for_layout_string_19ExtensionFoundation03AppA13Configuration_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D29F8DC8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D29F8E10(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1D29F8EC4()
{
  result = qword_1EC7016A0;
  if (!qword_1EC7016A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7016A0);
  }

  return result;
}

uint64_t sub_1D29F8F18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D29F8F74@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = [objc_allocWithZone(type metadata accessor for ExtensionPickerView.Model(0)) init];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *&v12 = 0x746C7561666564;
  *(&v12 + 1) = 0xE700000000000000;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1D29E68EC;
  *(v9 + 24) = v7;
  *&v13 = sub_1D29E68E8;
  *(&v13 + 1) = v9;
  *&v14 = sub_1D29E68F0;
  *(&v14 + 1) = v8;
  v10 = v6;
  PrimitiveAppExtensionScene._makeScene(with:)(a1, a2, a3);
  v15[0] = sub_1D29F7B58;
  v15[1] = v12;
  v15[2] = v13;
  v15[3] = v14;
  return sub_1D29F36D0(v15);
}

uint64_t sub_1D29F90B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_1D2A00318();
}

uint64_t sub_1D29F91AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

char *sub_1D29F9204(void *a1)
{
  ObjCClassFromObject = swift_getObjCClassFromObject();
  v3 = a1;
  v4 = [v3 extensionPointIdentifiers];
  v5 = sub_1D2A004A8();

  LODWORD(v4) = [v3 showsContainingAppsOnly];
  v6 = [objc_allocWithZone(ObjCClassFromObject) init];

  v7 = &v6[OBJC_IVAR___EXAppExtensionBrowserViewController__configuration];
  *v7 = v5;
  v7[1] = v4;

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v6;
}

char *EXAppExtensionBrowserViewController.init(configuration:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = &v3[OBJC_IVAR___EXAppExtensionBrowserViewController__configuration];
  *v4 = v1;
  *(v4 + 1) = v2;

  return v3;
}

Swift::Void __swiftcall EXAppExtensionBrowserViewController.loadView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701090, &qword_1D2A03B68);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - v2;
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v5 = *&v0[OBJC_IVAR___EXAppExtensionBrowserViewController_hostViewController];
  v6 = [v5 view];
  if (v6)
  {
    v7 = v6;
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v0 addChildViewController_];
    [v4 addSubview_];
    v8 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7016D0, &qword_1D2A04CC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D2A04CB0;
    v10 = [v7 leftAnchor];
    v11 = [v4 leftAnchor];
    v12 = [v10 constraintEqualToAnchor_];

    *(v9 + 32) = v12;
    v13 = [v7 topAnchor];
    v14 = [v4 topAnchor];
    v15 = [v13 constraintEqualToAnchor_];

    *(v9 + 40) = v15;
    v16 = [v7 rightAnchor];
    v17 = [v4 rightAnchor];
    v18 = [v16 constraintEqualToAnchor_];

    *(v9 + 48) = v18;
    v19 = [v7 bottomAnchor];
    v20 = [v4 bottomAnchor];
    v21 = [v19 constraintEqualToAnchor_];

    *(v9 + 56) = v21;
    sub_1D29D95F8(0, &qword_1EC7016D8, 0x1E696ACD8);
    v22 = sub_1D2A00498();

    [v8 activateConstraints_];

    [v0 setView_];
    v23 = sub_1D2A00568();
    (*(*(v23 - 8) + 56))(v3, 1, 1, v23);
    sub_1D2A00548();
    v24 = v0;
    v25 = sub_1D2A00538();
    v26 = swift_allocObject();
    v27 = MEMORY[0x1E69E85E0];
    v26[2] = v25;
    v26[3] = v27;
    v26[4] = v24;
    sub_1D29FBBE0(0, 0, v3, &unk_1D2A04CD0, v26);
  }

  else
  {
    sub_1D2A006A8();
    __break(1u);
  }
}

uint64_t sub_1D29F9930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[61] = a4;
  v5 = sub_1D2A00008();
  v4[62] = v5;
  v4[63] = *(v5 - 8);
  v4[64] = swift_task_alloc();
  sub_1D29FFEC8();
  v4[65] = swift_task_alloc();
  v6 = sub_1D29FFF08();
  v4[66] = v6;
  v4[67] = *(v6 - 8);
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v7 = sub_1D29FFF18();
  v4[70] = v7;
  v4[71] = *(v7 - 8);
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v8 = sub_1D29FFE08();
  v4[74] = v8;
  v4[75] = *(v8 - 8);
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = sub_1D2A00548();
  v4[79] = sub_1D2A00538();
  v10 = sub_1D2A004F8();
  v4[80] = v10;
  v4[81] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D29F9B90, v10, v9);
}

uint64_t sub_1D29F9B90()
{
  v1 = objc_allocWithZone(MEMORY[0x1E69635D0]);
  v2 = sub_1D29FC974(0xD00000000000002DLL, 0x80000001D2A08830);
  v0[82] = v2;
  v3 = v2;
  sub_1D29FFDD8();
  sub_1D29D95F8(0, &qword_1EC701728, 0x1E696AD98);
  if (sub_1D29FFD58())
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      v5 = [v4 BOOLValue];
      swift_unknownObjectRelease();
      if (v5)
      {
        v6 = v0[73];
        v7 = v0[72];
        v8 = v0[71];
        v9 = v0[70];
        (*(v0[75] + 16))(v0[76], v0[77], v0[74]);
        sub_1D29FFF38();
        (*(v8 + 16))(v7, v6, v9);
        sub_1D29FFEB8();
        v10 = swift_task_alloc();
        v0[83] = v10;
        *v10 = v0;
        v10[1] = sub_1D29F9FCC;
        v11 = v0[69];
        v12 = v0[65];

        return MEMORY[0x1EEDC0A48](v11, v12);
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v13 = v0[77];
  v14 = v0[75];
  v15 = v0[74];
  sub_1D29D95F8(0, &qword_1EC701730, 0x1E696ABC0);
  v16 = sub_1D2A005F8();
  swift_willThrow();

  (*(v14 + 8))(v13, v15);
  sub_1D29FFFE8();
  v17 = v16;
  v18 = sub_1D29FFFF8();
  v19 = sub_1D2A00598();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    v22 = v16;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&dword_1D29CC000, v18, v19, "Failed to launch: %@", v20, 0xCu);
    sub_1D29DB7F4(v21, qword_1EC700C18, qword_1D2A034B0);
    MEMORY[0x1D38A6000](v21, -1, -1);
    MEMORY[0x1D38A6000](v20, -1, -1);
  }

  else
  {
  }

  (*(v0[63] + 8))(v0[64], v0[62]);

  v24 = v0[1];

  return v24();
}

uint64_t sub_1D29F9FCC()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 648);
  v4 = *(v2 + 640);
  if (v0)
  {
    v5 = sub_1D29FB160;
  }

  else
  {
    v5 = sub_1D29FA108;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D29FA108()
{
  v1 = [*(v0 + 488) view];
  if (v1)
  {
    v4 = v1;
    v5 = *(v0 + 552);
    v6 = *(v0 + 544);
    v7 = *(v0 + 536);
    v8 = *(v0 + 528);
    [v1 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;

    *(v0 + 680) = v10;
    *(v0 + 688) = v12;
    *(v0 + 696) = v14;
    *(v0 + 704) = v16;
    (*(v7 + 16))(v6, v5, v8);
    *(v0 + 16) = 0x746C7561666564;
    *(v0 + 24) = 0xE700000000000000;
    *(v0 + 32) = v10;
    *(v0 + 40) = v12;
    *(v0 + 48) = v14;
    *(v0 + 56) = v16;
    *(v0 + 64) = nullsub_3;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 88) = 0;
    *(v0 + 96) = 1;
    v1 = sub_1D29FA24C;
    v2 = 0;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D29FA24C()
{
  v1 = v0[68];
  v2 = swift_task_alloc();
  v0[89] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[90] = v3;
  v4 = sub_1D29D95F8(0, &qword_1EC7011D8, off_1E8401720);
  *v3 = v0;
  v3[1] = sub_1D29FA35C;

  return MEMORY[0x1EEE6DE38](v0 + 60, 0, 0, 0xD00000000000001CLL, 0x80000001D2A07DF0, sub_1D29F6754, v2, v4);
}

uint64_t sub_1D29FA35C()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_1D29FA984;
  }

  else
  {

    v2 = sub_1D29FA478;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D29FA478()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = v0[60];
  v0[92] = v4;
  type metadata accessor for _EXHostViewController.Session();
  inited = swift_initStackObject();
  v0[93] = inited;
  *(inited + 16) = v4;
  v6 = *(v2 + 8);
  v0[94] = v6;
  v0[95] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);
  v7 = v0[81];
  v8 = v0[80];

  return MEMORY[0x1EEE6DFA0](sub_1D29FA534, v8, v7);
}

uint64_t sub_1D29FA534()
{
  v1.super.isa = _EXHostViewController.Session.makeXPCConnection()().super.isa;
  *(v0 + 768) = v1;
  if (v2.super.isa)
  {
    v3 = *(v0 + 752);
    v4 = *(v0 + 736);
    v30 = *(v0 + 616);
    isa = v2.super.isa;
    v5 = *(v0 + 600);
    v28 = *(v0 + 592);
    v6 = *(v0 + 584);
    v7 = *(v0 + 568);
    v8 = *(v0 + 560);
    v9 = *(v0 + 552);
    v10 = *(v0 + 528);
    v31 = *(v0 + 680);
    v29 = *(v0 + 696);

    v3(v9, v10);
    (*(v7 + 8))(v6, v8);
    (*(v5 + 8))(v30, v28);
    *(v0 + 192) = 0x746C7561666564;
    *(v0 + 200) = 0xE700000000000000;
    *(v0 + 208) = v31;
    *(v0 + 224) = v29;
    *(v0 + 240) = nullsub_3;
    *(v0 + 248) = 0;
    *(v0 + 256) = 0;
    *(v0 + 257) = *(v0 + 97);
    *(v0 + 260) = *(v0 + 100);
    *(v0 + 264) = 0;
    *(v0 + 272) = 1;
    sub_1D29F5D0C(v0 + 192);
    sub_1D29FFFE8();
    v11 = isa;
    v12 = sub_1D29FFFF8();
    v13 = sub_1D2A00598();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = isa;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_1D29CC000, v12, v13, "Failed to launch: %@", v14, 0xCu);
      sub_1D29DB7F4(v15, qword_1EC700C18, qword_1D2A034B0);
      MEMORY[0x1D38A6000](v15, -1, -1);
      MEMORY[0x1D38A6000](v14, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v18 = v1.super.isa;
    v19 = *(v0 + 488);
    v20 = [objc_opt_self() interfaceWithProtocol_];
    [(objc_class *)v18 setRemoteObjectInterface:v20];

    [(objc_class *)v18 resume];
    v21 = sub_1D2A00538();
    *(v0 + 792) = v21;
    v22 = swift_task_alloc();
    *(v0 + 800) = v22;
    *(v22 + 16) = v18;
    *(v22 + 24) = v19;
    v23 = swift_task_alloc();
    *(v0 + 808) = v23;
    *v23 = v0;
    v23[1] = sub_1D29FACFC;
    v24 = MEMORY[0x1E69E85E0];
    v25 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v23, v21, v24, 0x736F486E69676562, 0xEE002928676E6974, sub_1D29FCDA0, v22, v25);
  }
}

uint64_t sub_1D29FA984()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  v4 = *(v2 + 8);
  v0[97] = v4;
  v0[98] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v3);
  v5 = v0[81];
  v6 = v0[80];

  return MEMORY[0x1EEE6DFA0](sub_1D29FAA10, v6, v5);
}

uint64_t sub_1D29FAA10()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 656);
  v21 = *(v0 + 616);
  v3 = *(v0 + 600);
  v19 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  v7 = *(v0 + 552);
  v8 = *(v0 + 528);
  v22 = *(v0 + 680);
  v20 = *(v0 + 696);

  v1(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v21, v19);
  *(v0 + 104) = 0x746C7561666564;
  *(v0 + 112) = 0xE700000000000000;
  *(v0 + 120) = v22;
  *(v0 + 136) = v20;
  *(v0 + 152) = nullsub_3;
  *(v0 + 160) = 0;
  *(v0 + 168) = 0;
  *(v0 + 169) = *(v0 + 97);
  *(v0 + 172) = *(v0 + 100);
  *(v0 + 176) = 0;
  *(v0 + 184) = 1;
  sub_1D29F5D0C(v0 + 104);

  v9 = *(v0 + 728);
  sub_1D29FFFE8();
  v10 = v9;
  v11 = sub_1D29FFFF8();
  v12 = sub_1D2A00598();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1D29CC000, v11, v12, "Failed to launch: %@", v13, 0xCu);
    sub_1D29DB7F4(v14, qword_1EC700C18, qword_1D2A034B0);
    MEMORY[0x1D38A6000](v14, -1, -1);
    MEMORY[0x1D38A6000](v13, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D29FACFC()
{
  v2 = *v1;
  *(*v1 + 816) = v0;

  v3 = *(v2 + 648);
  v4 = *(v2 + 640);
  if (v0)
  {
    v5 = sub_1D29FB398;
  }

  else
  {
    v5 = sub_1D29FAE3C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D29FAE58(uint64_t a1)
{
  *(v1 + 824) = sub_1D2A00538();
  v3 = sub_1D2A004F8();

  return MEMORY[0x1EEE6DFA0](sub_1D29FAEE4, v3, v2);
}

uint64_t sub_1D29FAEE4()
{
  v1 = v0[92];
  v2 = v0[61];

  [*(v2 + OBJC_IVAR___EXAppExtensionBrowserViewController_hostViewController) setSession_];
  v3 = v0[81];
  v4 = v0[80];

  return MEMORY[0x1EEE6DFA0](sub_1D29FAF70, v4, v3);
}

uint64_t sub_1D29FAF70()
{
  v1 = *(v0 + 768);
  v11 = *(v0 + 752);
  v2 = *(v0 + 736);
  v14 = *(v0 + 616);
  v3 = *(v0 + 600);
  v12 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  v7 = *(v0 + 552);
  v8 = *(v0 + 528);
  v15 = *(v0 + 680);
  v13 = *(v0 + 696);

  v11(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v14, v12);
  *(v0 + 368) = 0x746C7561666564;
  *(v0 + 376) = 0xE700000000000000;
  *(v0 + 384) = v15;
  *(v0 + 400) = v13;
  *(v0 + 416) = nullsub_3;
  *(v0 + 424) = 0;
  *(v0 + 432) = 0;
  *(v0 + 433) = *(v0 + 97);
  *(v0 + 436) = *(v0 + 100);
  *(v0 + 440) = 0;
  *(v0 + 448) = 1;
  sub_1D29F5D0C(v0 + 368);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1D29FB160()
{
  v1 = v0[82];
  v2 = v0[77];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[73];
  v6 = v0[71];
  v7 = v0[70];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = v0[84];
  sub_1D29FFFE8();
  v9 = v8;
  v10 = sub_1D29FFFF8();
  v11 = sub_1D2A00598();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1D29CC000, v10, v11, "Failed to launch: %@", v12, 0xCu);
    sub_1D29DB7F4(v13, qword_1EC700C18, qword_1D2A034B0);
    MEMORY[0x1D38A6000](v13, -1, -1);
    MEMORY[0x1D38A6000](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[63] + 8))(v0[64], v0[62]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D29FB398()
{
  v1 = *(v0 + 768);
  v20 = *(v0 + 752);
  v2 = *(v0 + 736);
  v3 = *(v0 + 656);
  v23 = *(v0 + 616);
  v4 = *(v0 + 600);
  v21 = *(v0 + 592);
  v19 = *(v0 + 584);
  v5 = *(v0 + 568);
  v6 = *(v0 + 560);
  v7 = *(v0 + 552);
  v8 = *(v0 + 528);
  v24 = *(v0 + 680);
  v22 = *(v0 + 696);

  v20(v7, v8);
  (*(v5 + 8))(v19, v6);
  (*(v4 + 8))(v23, v21);
  *(v0 + 280) = 0x746C7561666564;
  *(v0 + 288) = 0xE700000000000000;
  *(v0 + 296) = v24;
  *(v0 + 312) = v22;
  *(v0 + 328) = nullsub_3;
  *(v0 + 336) = 0;
  *(v0 + 344) = 0;
  *(v0 + 345) = *(v0 + 97);
  *(v0 + 348) = *(v0 + 100);
  *(v0 + 352) = 0;
  *(v0 + 360) = 1;
  sub_1D29F5D0C(v0 + 280);

  v9 = *(v0 + 816);
  sub_1D29FFFE8();
  v10 = v9;
  v11 = sub_1D29FFFF8();
  v12 = sub_1D2A00598();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v9;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_1D29CC000, v11, v12, "Failed to launch: %@", v13, 0xCu);
    sub_1D29DB7F4(v14, qword_1EC700C18, qword_1D2A034B0);
    MEMORY[0x1D38A6000](v14, -1, -1);
    MEMORY[0x1D38A6000](v13, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 504) + 8))(*(v0 + 512), *(v0 + 496));

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D29FB69C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D29E5CB4;

  return sub_1D29F9930(a1, v4, v5, v6);
}

uint64_t sub_1D29FB750(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701738, &unk_1D2A04EF0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v25 = *(v7 + 16);
  v26 = a1;
  v25(&v23 - v8, a1, v6);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  v24 = *(v7 + 32);
  v24(v11 + v10, v9, v6);
  v33 = sub_1D29FCDA8;
  v34 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1D29FBB78;
  v32 = &block_descriptor_4;
  v12 = _Block_copy(&aBlock);

  v13 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v12);
  sub_1D2A00638();
  swift_unknownObjectRelease();
  sub_1D29F8F18(v35, &aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701740, &unk_1D2A04F00);
  if (swift_dynamicCast())
  {
    v23 = v28;
    v14 = a3 + OBJC_IVAR___EXAppExtensionBrowserViewController__configuration;
    v15 = *(a3 + OBJC_IVAR___EXAppExtensionBrowserViewController__configuration);
    v16 = *(v14 + 8);
    v17 = type metadata accessor for _EXAppExtensionBrowserViewControllerConfiguration();
    v18 = objc_allocWithZone(v17);
    *&v18[OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_extensionPointIdentifiers] = v15;
    *&v18[OBJC_IVAR____TtC12ExtensionKit49_EXAppExtensionBrowserViewControllerConfiguration_options] = v16;
    v27.receiver = v18;
    v27.super_class = v17;

    v19 = objc_msgSendSuper2(&v27, sel_init);
    v25(v9, v26, v6);
    v20 = swift_allocObject();
    v24(v20 + v10, v9, v6);
    v33 = sub_1D29FCED0;
    v34 = v20;
    aBlock = MEMORY[0x1E69E9820];
    v30 = 1107296256;
    v31 = sub_1D29DE600;
    v32 = &block_descriptor_31;
    v21 = _Block_copy(&aBlock);

    [v23 prepareSceneWithConfig:v19 reply:v21];
    _Block_release(v21);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D29D95F8(0, &qword_1EC701730, 0x1E696ABC0);
    aBlock = sub_1D2A005F8();
    sub_1D2A00508();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v35);
}

uint64_t sub_1D29FBB28(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701738, &unk_1D2A04EF0);
  return sub_1D2A00508();
}

void sub_1D29FBB78(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D29FBBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701090, &qword_1D2A03B68);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D29FC904(a3, v25 - v10);
  v12 = sub_1D2A00568();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D29DB7F4(v11, &qword_1EC701090, &qword_1D2A03B68);
  }

  else
  {
    sub_1D2A00558();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D2A004F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D2A00408() + 32;
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

      sub_1D29DB7F4(a3, &qword_1EC701090, &qword_1D2A03B68);

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

  sub_1D29DB7F4(a3, &qword_1EC701090, &qword_1D2A03B68);
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

uint64_t static EXAppExtensionBrowserViewController._Configuration.default.getter@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EC700928 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_1EC7016B0;
}

void *sub_1D29FC030@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1D29FC05C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1D29FC10C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t EXAppExtensionBrowserViewController._Configuration.extensionPointIdentifiers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t EXAppExtensionBrowserViewController._Configuration.init(extensionPointIdentifiers:options:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  a3[1] = v3;
  return result;
}

id _sSo35EXAppExtensionBrowserViewControllerC0B3KitE5coderABSgSo7NSCoderC_tcfC_0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id _EXAppExtensionBrowserViewController.init(coder:)(void *a1)
{
  v4.super_class = _EXAppExtensionBrowserViewController;
  v2 = objc_msgSendSuper2(&v4, sel_initWithCoder_, a1);

  if (v2)
  {
  }

  return v2;
}

id _sSo35EXAppExtensionBrowserViewControllerC0B3KitE7nibName6bundleABSSSg_So8NSBundleCSgtcfC_0(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = sub_1D2A003B8();
  }

  else
  {
    v4 = 0;
  }

  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:a3];

  return v5;
}

id _EXAppExtensionBrowserViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1D2A003B8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = _EXAppExtensionBrowserViewController;
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id _EXAppExtensionBrowserViewController.init(configuration:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration_];

  return v2;
}

{
  v4.super_class = _EXAppExtensionBrowserViewController;
  v2 = objc_msgSendSuper2(&v4, sel_initWithConfiguration_, a1);

  return v2;
}

unint64_t sub_1D29FC540()
{
  result = qword_1EC7016E0;
  if (!qword_1EC7016E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7016E0);
  }

  return result;
}

unint64_t sub_1D29FC598()
{
  result = qword_1EC7016E8;
  if (!qword_1EC7016E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7016E8);
  }

  return result;
}

unint64_t sub_1D29FC5F0()
{
  result = qword_1EC7016F0;
  if (!qword_1EC7016F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7016F0);
  }

  return result;
}

unint64_t sub_1D29FC648()
{
  result = qword_1EC7016F8;
  if (!qword_1EC7016F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7016F8);
  }

  return result;
}

uint64_t sub_1D29FC6B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D29FC70C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2;
    }
  }

  return result;
}

uint64_t _s14_ConfigurationV7OptionsVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14_ConfigurationV7OptionsVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1D29FC904(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701090, &qword_1D2A03B68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D29FC974(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1D2A003B8();

  v8[0] = 0;
  v4 = [v2 initWithBundleIdentifier:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1D29FFB98();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1D29FCA40(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D29FCB38;

  return v6(a1);
}

uint64_t sub_1D29FCB38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D29FCC30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D29FCF48;

  return sub_1D29FCA40(a1, v4);
}

uint64_t sub_1D29FCCE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D29E5CB4;

  return sub_1D29FCA40(a1, v4);
}

uint64_t sub_1D29FCDA8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701738, &unk_1D2A04EF0);

  return sub_1D29FBB28(a1);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_24Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701738, &unk_1D2A04EF0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}