uint64_t sub_8B9B8(uint64_t a1)
{
  v66 = v1;
  v2 = *(v1 + 320);
  v3 = *(v1 + 176);
  v4 = *(v1 + 152);
  v5 = *(v1 + 136);
  sub_E6914();
  v2(v4, v3, v5);
  swift_errorRetain();
  v6 = sub_E6964();
  v7 = sub_E74B4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v1 + 320);
    v9 = *(v1 + 152);
    v10 = *(v1 + 160);
    v11 = *(v1 + 136);
    v56 = *(v1 + 144);
    v62 = *(v1 + 64);
    v64 = *(v1 + 176);
    v59 = *(v1 + 56);
    v61 = *(v1 + 48);
    v12 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v65 = v58;
    *v12 = 136315394;
    v8(v10, v9, v11);
    v13 = v11;
    v14 = sub_E7084();
    v16 = v15;
    v17 = *(v56 + 8);
    v17(v9, v13);
    v18 = sub_23E64(v14, v16, &v65);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v19;
    *v57 = v19;
    _os_log_impl(&dword_0, v6, v7, "Deleting PlayAudioIntent failed with identifier %s - %@", v12, 0x16u);
    sub_110AC(v57, &unk_12DB20, &unk_F0760);

    __swift_destroy_boxed_opaque_existential_1(v58);

    (*(v59 + 8))(v62, v61);
    v17(v64, v13);
  }

  else
  {
    v20 = *(v1 + 176);
    v22 = *(v1 + 144);
    v21 = *(v1 + 152);
    v23 = *(v1 + 136);
    v25 = *(v1 + 56);
    v24 = *(v1 + 64);
    v26 = *(v1 + 48);

    v27 = *(v22 + 8);
    v27(v21, v23);
    (*(v25 + 8))(v24, v26);
    v27(v20, v23);
  }

  v28 = *(v1 + 328) + 1;
  if (v28 == *(v1 + 304))
  {

    sub_E6884();
    v29 = sub_E6894();
    sub_E68D4();
    v30 = sub_E7664();
    if (sub_E77F4())
    {
      v32 = *(v1 + 32);
      v31 = *(v1 + 40);
      v33 = *(v1 + 24);

      sub_E6904();

      if ((*(v32 + 88))(v31, v33) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v34 = "[Error] Interval already ended";
      }

      else
      {
        (*(*(v1 + 32) + 8))(*(v1 + 40), *(v1 + 24));
        v34 = "";
      }

      v63 = *(v1 + 288);
      v48 = *(v1 + 272);
      v60 = *(v1 + 240);
      v49 = *(v1 + 224);
      v50 = *(v1 + 200);
      v51 = *(v1 + 184);
      v52 = swift_slowAlloc();
      *v52 = 0;
      v53 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v29, v30, v53, "PlayAudioIntent.deleteOldIntents", v34, v52, 2u);

      v48(v50, v51);
      v63(v60, v49);
    }

    else
    {
      v42 = *(v1 + 288);
      v43 = *(v1 + 272);
      v44 = *(v1 + 240);
      v45 = *(v1 + 224);
      v46 = *(v1 + 200);
      v47 = *(v1 + 184);

      v43(v46, v47);
      v42(v44, v45);
    }

    v54 = *(v1 + 8);

    return v54();
  }

  else
  {
    v35 = *(v1 + 320);
    v36 = *(v1 + 176);
    v37 = *(v1 + 136);
    v38 = *(v1 + 256) + ((*(v1 + 360) + 32) & ~*(v1 + 360)) + *(v1 + 312) * v28;
    v39 = (*(v1 + 144) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    *(v1 + 328) = v28;
    *(v1 + 336) = v39;
    v35(v36, v38, v37);
    sub_E56D4();
    sub_E5834();
    v40 = swift_task_alloc();
    *(v1 + 344) = v40;
    *v40 = v1;
    v40[1] = sub_8B1E8;
    v41 = *(v1 + 104);

    return IntentDonationManager.deleteDonations(matching:)(v41);
  }
}

uint64_t sub_8BFEC()
{
  v0 = sub_E68B4();
  v67 = *(v0 - 8);
  v68 = v0;
  __chkstk_darwin(v0);
  v2 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_E6874();
  v70 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = (&v58 - v8);
  __chkstk_darwin(v7);
  v11 = &v58 - v10;
  v12 = sub_E68A4();
  v69 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v58 - v16;
  v18 = sub_E6974();
  __chkstk_darwin(v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v71 + 128))
  {
    v61 = v19;
    v62 = v17;
    v63 = v9;
    v64 = v11;
    v58 = v2;
    v59 = v15;
    v65 = v12;
    v66 = v3;
    v60 = v6;
    sub_E6914();
    v22 = sub_E6964();
    v23 = sub_E74D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Fetching previous identifiers from UserDefaults", v24, 2u);
    }

    (*(v61 + 8))(v21, v18);
    v25 = v62;
    sub_E6884();
    v26 = v64;
    sub_E6864();
    v27 = sub_E6894();
    v28 = sub_E7674();
    v29 = sub_E77F4();
    v30 = v63;
    if (v29)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v27, v28, v32, "PlayAudioIntent.defaultsRead.identifiers", "", v31, 2u);
    }

    v33 = v70;
    v34 = v66;
    (*(v70 + 16))(v30, v26, v66);
    sub_E68F4();
    swift_allocObject();
    v35 = sub_E68E4();
    v36 = *(v33 + 8);
    v36(v26, v34);
    v37 = v25;
    v38 = v65;
    v70 = *(v69 + 8);
    (v70)(v37, v65);
    v39 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v40 = v71;
    v41 = sub_E7024();
    v42 = [v39 dataForKey:v41];

    if (!v42)
    {

      return 0;
    }

    v62 = v35;
    v43 = sub_E59F4();
    v45 = v44;

    sub_E5874();
    swift_allocObject();
    sub_E5864();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FC50, &qword_F0758);
    sub_8DFAC(&qword_12FC60, &qword_12FC68, &protocol conformance descriptor for IntentDonationIdentifier, &protocol conformance descriptor for <A> [A]);
    v69 = v43;
    v64 = v45;
    sub_E5854();
    v63 = v36;

    v47 = v59;
    *(v40 + 128) = v72;

    sub_E6884();
    v48 = sub_E6894();
    v49 = v60;
    sub_E68D4();
    v50 = sub_E7664();
    v51 = sub_E77F4();
    if (v51)
    {

      v52 = v58;
      sub_E6904();

      v54 = v67;
      v53 = v68;
      if ((*(v67 + 88))(v52, v68) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v55 = "[Error] Interval already ended";
      }

      else
      {
        (*(v54 + 8))(v52, v53);
        v55 = "";
      }

      v56 = swift_slowAlloc();
      *v56 = 0;
      v49 = v60;
      v57 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v48, v50, v57, "PlayAudioIntent.defaultsRead.identifiers", v55, v56, 2u);

      v38 = v65;
      v34 = v66;
      v47 = v59;
    }

    sub_4DCA0(v69, v64);

    v63(v49, v34);
    (v70)(v47, v38);
  }
}

uint64_t sub_8C720(unint64_t a1)
{
  v3 = sub_E68B4();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_E6874();
  v5 = *(v66 - 8);
  v6 = __chkstk_darwin(v66);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v63 = &v54 - v9;
  __chkstk_darwin(v8);
  v11 = &v54 - v10;
  v12 = sub_E68A4();
  v67 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v60 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = &v54 - v15;
  v16 = sub_E6974();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v1;
  *(v1 + 128) = a1;
  v64 = a1;

  sub_E6914();
  v20 = sub_E6964();
  v21 = sub_E74D4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Writing new identifiers to UserDefaults", v22, 2u);
  }

  v65 = v12;

  (*(v17 + 8))(v19, v16);
  v23 = v62;
  sub_E6884();
  sub_E6864();
  v24 = sub_E6894();
  v25 = sub_E7674();
  if (sub_E77F4())
  {
    v26 = v5;
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v24, v25, v28, "PlayAudioIntent.defaultsWrite.identifiers", "", v27, 2u);
    v5 = v26;
  }

  v29 = v66;
  (*(v5 + 16))(v63, v11, v66);
  sub_E68F4();
  swift_allocObject();
  sub_E68E4();
  v30 = *(v5 + 8);
  v30(v11, v29);
  v32 = v67 + 8;
  v31 = *(v67 + 8);
  v31(v23, v65);
  sub_E58A4();
  swift_allocObject();
  sub_E5894();
  v68 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FC38, &qword_F0750);
  sub_8DEF0();
  v33 = sub_E5884();
  v55 = v30;
  v62 = v31;
  v63 = (v5 + 8);
  v67 = v32;
  v34 = v33;
  v36 = v35;

  v37 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  isa = sub_E59E4().super.isa;
  v39 = sub_E7024();
  [v37 setObject:isa forKey:v39];

  v40 = v60;
  sub_E6884();
  v41 = sub_E6894();
  v42 = v61;
  sub_E68D4();
  v43 = sub_E7664();
  if (sub_E77F4())
  {
    v59 = v34;
    v64 = v36;

    v44 = v56;
    sub_E6904();

    v46 = v57;
    v45 = v58;
    v47 = (*(v57 + 88))(v44, v58);
    v48 = v55;
    v49 = v66;
    if (v47 == enum case for OSSignpostError.doubleEnd(_:))
    {
      v50 = "[Error] Interval already ended";
    }

    else
    {
      (*(v46 + 8))(v44, v45);
      v50 = "";
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v41, v43, v52, "PlayAudioIntent.defaultsWrite.identifiers", v50, v51, 2u);

    sub_4DCA0(v59, v64);

    v48(v42, v49);
  }

  else
  {
    sub_4DCA0(v34, v36);

    v55(v42, v66);
  }

  return (v62)(v40, v65);
}

uint64_t sub_8CE48()
{
  v0 = sub_E68B4();
  v67 = *(v0 - 8);
  v68 = v0;
  __chkstk_darwin(v0);
  v2 = &v58 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_E6874();
  v70 = *(v3 - 8);
  v4 = __chkstk_darwin(v3);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = (&v58 - v8);
  __chkstk_darwin(v7);
  v11 = &v58 - v10;
  v12 = sub_E68A4();
  v69 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v58 - v16;
  v18 = sub_E6974();
  __chkstk_darwin(v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(v71 + 152))
  {
    v61 = v19;
    v62 = v17;
    v63 = v9;
    v64 = v11;
    v58 = v2;
    v59 = v15;
    v65 = v12;
    v66 = v3;
    v60 = v6;
    sub_E6914();
    v22 = sub_E6964();
    v23 = sub_E74D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Fetching previous uuids from UserDefaults", v24, 2u);
    }

    (*(v61 + 8))(v21, v18);
    v25 = v62;
    sub_E6884();
    v26 = v64;
    sub_E6864();
    v27 = sub_E6894();
    v28 = sub_E7674();
    v29 = sub_E77F4();
    v30 = v63;
    if (v29)
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      v32 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v27, v28, v32, "PlayAudioIntent.defaultsRead.uuids", "", v31, 2u);
    }

    v33 = v70;
    v34 = v66;
    (*(v70 + 16))(v30, v26, v66);
    sub_E68F4();
    swift_allocObject();
    v35 = sub_E68E4();
    v36 = *(v33 + 8);
    v36(v26, v34);
    v37 = v25;
    v38 = v65;
    v70 = *(v69 + 8);
    (v70)(v37, v65);
    v39 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v40 = v71;
    v41 = sub_E7024();
    v42 = [v39 dataForKey:v41];

    if (!v42)
    {

      return 0;
    }

    v62 = v35;
    v43 = sub_E59F4();
    v45 = v44;

    sub_E5874();
    swift_allocObject();
    sub_E5864();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
    sub_8DE84(&qword_12FC30, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    v69 = v43;
    v64 = v45;
    sub_E5854();
    v63 = v36;

    v47 = v59;
    *(v40 + 152) = v72;

    sub_E6884();
    v48 = sub_E6894();
    v49 = v60;
    sub_E68D4();
    v50 = sub_E7664();
    v51 = sub_E77F4();
    if (v51)
    {

      v52 = v58;
      sub_E6904();

      v54 = v67;
      v53 = v68;
      if ((*(v67 + 88))(v52, v68) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v55 = "[Error] Interval already ended";
      }

      else
      {
        (*(v54 + 8))(v52, v53);
        v55 = "";
      }

      v56 = swift_slowAlloc();
      *v56 = 0;
      v49 = v60;
      v57 = sub_E6854();
      _os_signpost_emit_with_name_impl(&dword_0, v48, v50, v57, "PlayAudioIntent.defaultsRead.uuids", v55, v56, 2u);

      v38 = v65;
      v34 = v66;
      v47 = v59;
    }

    sub_4DCA0(v69, v64);

    v63(v49, v34);
    (v70)(v47, v38);
  }
}

uint64_t sub_8D568(unint64_t a1)
{
  v3 = sub_E68B4();
  v57 = *(v3 - 8);
  v58 = v3;
  __chkstk_darwin(v3);
  v56 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_E6874();
  v5 = *(v66 - 8);
  v6 = __chkstk_darwin(v66);
  v61 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v63 = &v54 - v9;
  __chkstk_darwin(v8);
  v11 = &v54 - v10;
  v12 = sub_E68A4();
  v67 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v60 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v62 = &v54 - v15;
  v16 = sub_E6974();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v1;
  *(v1 + 152) = a1;
  v64 = a1;

  sub_E6914();
  v20 = sub_E6964();
  v21 = sub_E74D4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_0, v20, v21, "Writing new uuids to UserDefaults", v22, 2u);
  }

  v65 = v12;

  (*(v17 + 8))(v19, v16);
  v23 = v62;
  sub_E6884();
  sub_E6864();
  v24 = sub_E6894();
  v25 = sub_E7674();
  if (sub_E77F4())
  {
    v26 = v5;
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v24, v25, v28, "PlayAudioIntent.defaultsWrite.uuids", "", v27, 2u);
    v5 = v26;
  }

  v29 = v66;
  (*(v5 + 16))(v63, v11, v66);
  sub_E68F4();
  swift_allocObject();
  sub_E68E4();
  v30 = *(v5 + 8);
  v30(v11, v29);
  v32 = v67 + 8;
  v31 = *(v67 + 8);
  v31(v23, v65);
  sub_E58A4();
  swift_allocObject();
  sub_E5894();
  v68 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FC18, &unk_F0740);
  sub_8DDDC();
  v33 = sub_E5884();
  v55 = v30;
  v62 = v31;
  v63 = (v5 + 8);
  v67 = v32;
  v34 = v33;
  v36 = v35;

  v37 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  isa = sub_E59E4().super.isa;
  v39 = sub_E7024();
  [v37 setObject:isa forKey:v39];

  v40 = v60;
  sub_E6884();
  v41 = sub_E6894();
  v42 = v61;
  sub_E68D4();
  v43 = sub_E7664();
  if (sub_E77F4())
  {
    v59 = v34;
    v64 = v36;

    v44 = v56;
    sub_E6904();

    v46 = v57;
    v45 = v58;
    v47 = (*(v57 + 88))(v44, v58);
    v48 = v55;
    v49 = v66;
    if (v47 == enum case for OSSignpostError.doubleEnd(_:))
    {
      v50 = "[Error] Interval already ended";
    }

    else
    {
      (*(v46 + 8))(v44, v45);
      v50 = "";
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    v52 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v41, v43, v52, "PlayAudioIntent.defaultsWrite.uuids", v50, v51, 2u);

    sub_4DCA0(v59, v64);

    v48(v42, v49);
  }

  else
  {
    sub_4DCA0(v34, v36);

    v55(v42, v66);
  }

  return (v62)(v40, v65);
}

uint64_t sub_8DC90@<X0>(uint64_t *a1@<X8>)
{
  sub_E6DF4();
  sub_E6DE4();
  a1[3] = sub_E5BA4();
  a1[4] = &protocol witness table for LibraryImageProvider;
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_8E674(&qword_12FC70, &type metadata accessor for LibraryImageProvider, &protocol conformance descriptor for LibraryImageProvider);
  sub_E6D84();
}

uint64_t sub_8DD4C()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_8DDCC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_8DDDC()
{
  result = qword_12FC20;
  if (!qword_12FC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12FC18, &unk_F0740);
    sub_8DE84(&qword_12FC28, &protocol witness table for String, &protocol conformance descriptor for <> Set<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FC20);
  }

  return result;
}

uint64_t sub_8DE84(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_12DF70, &qword_E9E80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_8DEF0()
{
  result = qword_12FC40;
  if (!qword_12FC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12FC38, &qword_F0750);
    sub_8DFAC(&qword_12FC48, &qword_12FC58, &protocol conformance descriptor for IntentDonationIdentifier, &protocol conformance descriptor for <A> [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FC40);
  }

  return result;
}

uint64_t sub_8DFAC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12FC50, &qword_F0758);
    sub_8E674(a2, &type metadata accessor for IntentDonationIdentifier, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_8E048(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_5E10;

  return v6();
}

uint64_t sub_8E130(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_588C;

  return v7();
}

uint64_t sub_8E218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_26324(a3, v23 - v10, &unk_131ED0, &qword_F5BC0);
  v12 = sub_E7324();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_110AC(v11, &unk_131ED0, &qword_F5BC0);
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

  sub_E7314();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_E7294();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_E70A4() + 32;
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

    sub_110AC(a3, &unk_131ED0, &qword_F5BC0);

    return v21;
  }

LABEL_8:
  sub_110AC(a3, &unk_131ED0, &qword_F5BC0);
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

uint64_t sub_8E514(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_35D78;

  return v6(a1);
}

uint64_t sub_8E60C(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_8E644@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_8E674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_8E6BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_8E6F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_8E75C()
{
  v1 = (type metadata accessor for ContextualMetadata(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = v1[8];
  v6 = sub_E56B4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

void sub_8E880()
{
  v1 = *(type metadata accessor for ContextualMetadata(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_87998(*(v0 + 16), *(v0 + 24), v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_8E928(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_8E988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_8E9F0()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_8EA30()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_5E10;

  return sub_85E38(v2, v3);
}

uint64_t sub_8EAE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_5E10;

  return sub_8E048(v2, v3, v4);
}

uint64_t objectdestroy_31Tm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_8EBE8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_588C;

  return sub_8E130(a1, v4, v5, v6);
}

uint64_t sub_8ECB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_8ECEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5E10;

  return sub_8E514(a1, v4);
}

uint64_t sub_8EDA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_588C;

  return sub_8E514(a1, v4);
}

uint64_t sub_8EE68@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v60 = sub_E5F14();
  v54 = *(v60 - 8);
  v3 = __chkstk_darwin(v60);
  v53 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v55 = &v53 - v6;
  __chkstk_darwin(v5);
  v56 = &v53 - v7;
  v64 = sub_E5F34();
  v58 = *(v64 - 8);
  v8 = __chkstk_darwin(v64);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v59 = &v53 - v11;
  __chkstk_darwin(v10);
  v63 = &v53 - v12;
  v13 = sub_E5F24();
  v61 = *(v13 - 8);
  v14 = __chkstk_darwin(v13);
  v62 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = &v53 - v17;
  __chkstk_darwin(v16);
  v20 = &v53 - v19;
  v21 = sub_E5F04();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v53 - v27;
  __chkstk_darwin(v26);
  v30 = &v53 - v29;
  v66 = a1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
  if (swift_dynamicCast())
  {
    (*(v22 + 32))(v28, v30, v21);
    (*(v22 + 16))(v25, v28, v21);
    v31 = (*(v22 + 88))(v25, v21);
    if (v31 == enum case for PodcastsPlaybackError.ValidationError.notEntitledShowUpsell(_:) || v31 == enum case for PodcastsPlaybackError.ValidationError.noContent(_:) || v31 == enum case for PodcastsPlaybackError.ValidationError.restricted(_:))
    {
      sub_E5334();
      (*(v22 + 8))(v28, v21);
    }

    else
    {
      v47 = (v22 + 8);
      if (v31 == enum case for PodcastsPlaybackError.ValidationError.authenticationRequired(_:))
      {
        sub_E5334();
        (*v47)(v28, v21);
      }

      else
      {
        sub_E5334();
        v51 = *v47;
        (*v47)(v28, v21);
        v51(v25, v21);
      }
    }
  }

  v66 = a1;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v32 = v61;
    (*(v61 + 32))(v18, v20, v13);
    v33 = v62;
    (*(v32 + 16))(v62, v18, v13);
    v34 = *(v32 + 88);
    v35 = (v32 + 8);
    if (v34(v33, v13) == enum case for PodcastsPlaybackError.PlayerError.noInternet(_:))
    {
      sub_E5334();
      (*v35)(v18, v13);
    }

    sub_E5334();
    v42 = *v35;
    (*v35)(v18, v13);
    v43 = v33;
    v44 = v13;
LABEL_13:
    v42(v43, v44);
  }

  v66 = a1;
  swift_errorRetain();
  v36 = v63;
  v37 = v64;
  if (swift_dynamicCast())
  {
    v38 = v58;
    v39 = v59;
    (*(v58 + 32))(v59, v36, v37);
    v40 = v57;
    (*(v38 + 16))(v57, v39, v37);
    v41 = (*(v38 + 88))(v40, v37);
    if (v41 == enum case for PodcastsPlaybackError.FairPlayError.slotError(_:) || v41 == enum case for PodcastsPlaybackError.FairPlayError.notEntitled(_:))
    {
LABEL_36:
      sub_E5334();
      (*(v38 + 8))(v39, v37);
    }

    v50 = (v38 + 8);
    if (v41 == enum case for PodcastsPlaybackError.FairPlayError.deviceLimit(_:))
    {
LABEL_30:
      sub_E5334();
      (*v50)(v39, v37);
    }

LABEL_39:
    sub_E5334();
    v42 = *v50;
    (*v50)(v39, v37);
    v43 = v40;
    v44 = v37;
    goto LABEL_13;
  }

  v66 = a1;
  swift_errorRetain();
  v45 = v56;
  v37 = v60;
  if (swift_dynamicCast())
  {
    v38 = v54;
    v39 = v55;
    (*(v54 + 32))(v55, v45, v37);
    v40 = v53;
    (*(v38 + 16))(v53, v39, v37);
    v46 = (*(v38 + 88))(v40, v37);
    if (v46 == enum case for PodcastsPlaybackError.PlayChapterError.hasNoChapters(_:) || v46 == enum case for PodcastsPlaybackError.PlayChapterError.remotePlayback(_:) || v46 == enum case for PodcastsPlaybackError.PlayChapterError.lastChapterAlreadyPlaying(_:) || v46 == enum case for PodcastsPlaybackError.PlayChapterError.firstChapterAlreadyPlaying(_:))
    {
      goto LABEL_36;
    }

    v50 = (v38 + 8);
    if (v46 == enum case for PodcastsPlaybackError.PlayChapterError.noItemPlaying(_:))
    {
      goto LABEL_30;
    }

    goto LABEL_39;
  }

  v68 = a1;
  swift_errorRetain();
  if (!swift_dynamicCast())
  {

    return sub_E5334();
  }

  v48 = v66;
  v49 = v67;
  if (v67 == 2 && v66 <= 2)
  {
    sub_E5334();
  }

  else
  {
    sub_E5334();
    sub_8F8F0(v48, v49);
  }
}

uint64_t sub_8F8F0(uint64_t result, char a2)
{
  if (!a2)
  {
  }

  return v2;
}

uint64_t sub_8F900()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FC78);
  __swift_project_value_buffer(v0, qword_12FC78);
  return sub_E5914();
}

uint64_t static PlayNextChapterAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC30 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FC78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_8FA0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12FC90);
  v1 = __swift_project_value_buffer(v0, qword_12FC90);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static PlayNextChapterAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC38 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12FC90);

  return sub_69558(v3, a1);
}

uint64_t static PlayNextChapterAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FCA8, &unk_F07B8);
  __chkstk_darwin(v0 - 8);
  sub_8FC24();
  sub_E5754();
  return sub_E5714();
}

unint64_t sub_8FC24()
{
  result = qword_12FCB0;
  if (!qword_12FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FCB0);
  }

  return result;
}

void (*PlayNextChapterAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_1C5B0;
}

uint64_t PlayNextChapterAppIntent.perform()(uint64_t a1)
{
  v2[6] = a1;
  v3 = sub_E5354();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[9] = v4;
  v2[5] = *v1;
  v5 = swift_task_alloc();
  v2[10] = v5;
  *v5 = v2;
  v5[1] = sub_8FDF0;

  return sub_9000C(v4);
}

uint64_t sub_8FDF0()
{

  return _swift_task_switch(sub_8FEEC, 0, 0);
}

uint64_t sub_8FEEC()
{
  v10 = v0;
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  OpenAppLocationAppIntent.init()(v9);
  v4 = v9[0];
  v5 = v9[1];
  v6 = v9[2];
  *(v0 + 88) = 11;
  sub_E5514();
  *(v0 + 89) = 2;
  sub_E5514();
  *(v0 + 16) = v4;
  *(v0 + 24) = v5;
  *(v0 + 32) = v6;
  sub_6FB88();
  sub_E5364();
  (*(v2 + 8))(v1, v3);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_9000C(uint64_t a1)
{
  v2[2] = a1;
  sub_E7014();
  v2[3] = swift_task_alloc();
  v3 = *v1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_900E4;

  return sub_6C9F0(v3);
}

uint64_t sub_900E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v4 = sub_90348;
  }

  else
  {
    v4 = sub_901F8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_901F8()
{
  v1 = *(v0 + 40);
  sub_E7004();
  v12._countAndFlagsBits = 0x79616C7020776F4ELL;
  v12._object = 0xED00002720676E69;
  sub_E6FF4(v12);
  v2 = [v1 title];
  if (v2)
  {
    v3 = v2;
    v4 = sub_E7064();
    object = v5;

    v7._countAndFlagsBits = v4;
  }

  else
  {
    v13._object = 0x80000000000F7A50;
    v15._countAndFlagsBits = 0xD000000000000071;
    v15._object = 0x80000000000F7A70;
    v13._countAndFlagsBits = 0xD000000000000010;
    v7._countAndFlagsBits = sub_E63A4(v13, v15);
    object = v7._object;
  }

  v8 = *(v0 + 40);
  v7._object = object;
  sub_E6FD4(v7);

  v14._countAndFlagsBits = 39;
  v14._object = 0xE100000000000000;
  sub_E6FF4(v14);
  sub_E5344();

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_90348()
{
  sub_8EE68(v0[6], v0[2]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_903C4()
{
  result = qword_12FCB8;
  if (!qword_12FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FCB8);
  }

  return result;
}

unint64_t sub_9041C()
{
  result = qword_12FCC0;
  if (!qword_12FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FCC0);
  }

  return result;
}

uint64_t sub_904C0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FCA8, &unk_F07B8);
  __chkstk_darwin(v2 - 8);
  sub_E5754();
  return sub_E5714();
}

uint64_t sub_90584(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayNextChapterAppIntent.perform()(a1);
}

uint64_t sub_90620(uint64_t a1)
{
  v2 = sub_8FC24();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void *sub_9065C@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t sub_90778()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FCD8);
  __swift_project_value_buffer(v0, qword_12FCD8);
  return sub_E5914();
}

uint64_t static PlayPreviousChapterAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC40 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FCD8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_90884()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12FCF0);
  v1 = __swift_project_value_buffer(v0, qword_12FCF0);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static PlayPreviousChapterAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12FCF0);

  return sub_69558(v3, a1);
}

uint64_t static PlayPreviousChapterAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD08, &unk_F0968);
  __chkstk_darwin(v0 - 8);
  sub_90A9C();
  sub_E5754();
  return sub_E5714();
}

unint64_t sub_90A9C()
{
  result = qword_12FD10;
  if (!qword_12FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FD10);
  }

  return result;
}

void (*PlayPreviousChapterAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_1C5B0;
}

uint64_t PlayPreviousChapterAppIntent.perform()(uint64_t a1)
{
  v2[6] = a1;
  v3 = sub_E5354();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v4 = swift_task_alloc();
  v2[9] = v4;
  v2[5] = *v1;
  v5 = swift_task_alloc();
  v2[10] = v5;
  *v5 = v2;
  v5[1] = sub_8FDF0;

  return sub_90C68(v4);
}

uint64_t sub_90C68(uint64_t a1)
{
  v2[2] = a1;
  sub_E7014();
  v2[3] = swift_task_alloc();
  v3 = *v1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_900E4;

  return sub_6CF20(v3);
}

unint64_t sub_90D44()
{
  result = qword_12FD18;
  if (!qword_12FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FD18);
  }

  return result;
}

unint64_t sub_90D9C()
{
  result = qword_12FD20;
  if (!qword_12FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FD20);
  }

  return result;
}

uint64_t sub_90E40(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD08, &unk_F0968);
  __chkstk_darwin(v2 - 8);
  sub_E5754();
  return sub_E5714();
}

uint64_t sub_90F04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayPreviousChapterAppIntent.perform()(a1);
}

uint64_t sub_90FA0(uint64_t a1)
{
  v2 = sub_90A9C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void *sub_90FDC@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t sub_91070()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FD38);
  __swift_project_value_buffer(v0, qword_12FD38);
  return sub_E5914();
}

uint64_t static ViewTranscriptAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC50 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FD38);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_91188()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12FD50);
  v1 = __swift_project_value_buffer(v0, qword_12FD50);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static ViewTranscriptAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC58 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12FD50);

  return sub_69558(v3, a1);
}

uint64_t static ViewTranscriptAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD68, &qword_F0B18);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD70, &qword_F0B20);
  __chkstk_darwin(v1);
  sub_91478();
  sub_E5744();
  v3._countAndFlagsBits = 0x20776F6853;
  v3._object = 0xE500000000000000;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD80, &unk_F0B50);
  sub_E5724();

  v4._countAndFlagsBits = 0x7263736E61727420;
  v4._object = 0xEB00000000747069;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_91478()
{
  result = qword_12FD78;
  if (!qword_12FD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FD78);
  }

  return result;
}

uint64_t sub_914CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

void (*ViewTranscriptAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_9156C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_6FAC8(a1, &v10 - v7);
  sub_6FAC8(v8, v6);

  sub_E5514();
  sub_91F54(v8, type metadata accessor for EpisodeEntity);
}

uint64_t ViewTranscriptAppIntent.episode.setter(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_6FAC8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_91F54(a1, type metadata accessor for EpisodeEntity);
}

void (*ViewTranscriptAppIntent.episode.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t ViewTranscriptAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_E5944();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v26 = 0;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  sub_E5914();
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = type metadata accessor for EpisodeEntity(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v20(v9, 1, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_71064();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t ViewTranscriptAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  type metadata accessor for OpenTranscriptIntent(0);
  *(v2 + 24) = swift_task_alloc();
  *(v2 + 32) = *v1;
  sub_E72F4();
  *(v2 + 48) = sub_E72E4();
  v4 = sub_E7294();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return _swift_task_switch(sub_91C4C, v4, v3);
}

uint64_t sub_91C4C()
{
  sub_E5504();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_91D00;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return sub_6D364(sub_6D364, v4, v2, v3);
}

uint64_t sub_91D00()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  sub_91F54(v3, type metadata accessor for OpenTranscriptIntent);
  v4 = *(v2 + 64);
  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_91EE4;
  }

  else
  {
    v6 = sub_91E6C;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_91E6C()
{

  sub_E53A4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_91EE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_91F54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_91FB8()
{
  result = qword_12FD88;
  if (!qword_12FD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FD88);
  }

  return result;
}

unint64_t sub_92010()
{
  result = qword_12FD90;
  if (!qword_12FD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FD90);
  }

  return result;
}

uint64_t sub_9209C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD68, &qword_F0B18);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD70, &qword_F0B20);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 0x20776F6853;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FD80, &unk_F0B50);
  sub_E5724();

  v6._countAndFlagsBits = 0x7263736E61727420;
  v6._object = 0xEB00000000747069;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_92240(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return ViewTranscriptAppIntent.perform()(a1);
}

uint64_t sub_922E0(uint64_t a1)
{
  v2 = sub_91478();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void *sub_9231C@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t sub_9241C()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FDA8);
  __swift_project_value_buffer(v0, qword_12FDA8);
  return sub_E5914();
}

uint64_t static FetchShowLatestEpisodesAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC60 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FDA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_92534()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12FDC0);
  v1 = __swift_project_value_buffer(v0, qword_12FDC0);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static FetchShowLatestEpisodesAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC68 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12FDC0);

  return sub_69558(v3, a1);
}

uint64_t static FetchShowLatestEpisodesAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FDD8, &qword_F0D08);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FDE0, &qword_F0D10);
  __chkstk_darwin(v1);
  sub_92818();
  sub_E5744();
  v3._object = 0x80000000000F7CC0;
  v3._countAndFlagsBits = 0xD00000000000001ALL;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FDF0, &qword_F0D40);
  sub_E5724();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_92818()
{
  result = qword_12FDE8;
  if (!qword_12FDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FDE8);
  }

  return result;
}

uint64_t sub_9286C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

uint64_t sub_92898(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ShowEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_8262C(a1, &v10 - v7);
  sub_8262C(v8, v6);

  sub_E5514();
  sub_93A0C(v8, type metadata accessor for ShowEntity);
}

uint64_t FetchShowLatestEpisodesAppIntent.show.setter(uint64_t a1)
{
  v2 = type metadata accessor for ShowEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_8262C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_93A0C(a1, type metadata accessor for ShowEntity);
}

void (*FetchShowLatestEpisodesAppIntent.show.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t sub_92AC0(uint64_t *a1, uint64_t *a2)
{

  sub_E5514();
}

void (*FetchShowLatestEpisodesAppIntent.limit.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t sub_92BDC(uint64_t *a1, uint64_t *a2)
{

  sub_E51E4();
}

uint64_t FetchShowLatestEpisodesAppIntent.objectGraph.setter(uint64_t a1)
{

  sub_E51E4();
}

void (*FetchShowLatestEpisodesAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t FetchShowLatestEpisodesAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FDF8, &qword_F0D48);
  v37 = *(v1 - 8);
  v38 = v1;
  __chkstk_darwin(v1);
  v36 = v28 - v2;
  v3 = sub_E5774();
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  __chkstk_darwin(v3);
  v39 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  __chkstk_darwin(v12 - 8);
  v14 = v28 - v13;
  v28[1] = v28 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v15 - 8);
  v17 = v28 - v16;
  v18 = sub_E5944();
  v34 = v18;
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9C0, &qword_F1180);
  sub_E5914();
  sub_E5914();
  v20 = *(v19 + 56);
  v31 = v19 + 56;
  v33 = v20;
  v20(v17, 0, 1, v18);
  v21 = type metadata accessor for ShowEntity(0);
  (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
  v22 = sub_E5354();
  v23 = *(*(v22 - 8) + 56);
  v23(v11, 1, 1, v22);
  v23(v9, 1, 1, v22);
  v30 = enum case for InputConnectionBehavior.default(_:);
  v24 = *(v41 + 104);
  v41 += 104;
  v29 = v24;
  v24(v39);
  sub_94638(&qword_12DDF0, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
  v25 = sub_E5584();
  v26 = v35;
  *v35 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE00, &unk_F0D50);
  sub_E5914();
  sub_E5914();
  v33(v17, 0, 1, v34);
  v43 = 10;
  v44 = 0;
  v23(v11, 1, 1, v22);
  (*(v37 + 104))(v36, enum case for IntentParameter.IntControlStyle.stepper<A>(_:), v38);
  v29(v39, v30, v40);
  v26[1] = sub_E55C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v42 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5214();
  v26[2] = result;
  return result;
}

uint64_t FetchShowLatestEpisodesAppIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = type metadata accessor for FetchShowLatestEpisodesIntent(0);
  *(v2 + 56) = swift_task_alloc();
  *(v2 + 64) = *v1;
  *(v2 + 80) = *(v1 + 16);

  return _swift_task_switch(sub_933BC, 0, 0);
}

uint64_t sub_933BC()
{
  v2 = v0[6];
  v1 = v0[7];
  sub_E5504();
  sub_E5504();
  *(v1 + *(v2 + 20)) = v0[2];
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_9349C;
  v4 = v0[9];
  v5 = v0[10];
  v7 = v0[7];
  v6 = v0[8];

  return sub_6D6C8(v7, v6, v4, v5);
}

uint64_t sub_9349C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  sub_93A0C(v4, type metadata accessor for FetchShowLatestEpisodesIntent);
  if (v1)
  {
    v5 = sub_93930;
  }

  else
  {
    v5 = sub_935E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_935E4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v0[3] = v0[12];
  v4 = swift_allocObject();
  v0[14] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;

  v5 = swift_task_alloc();
  v0[15] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E010, qword_EA628);
  v0[16] = v6;
  v7 = sub_3C2A0(&qword_12FE08, &qword_12E010, qword_EA628, &protocol conformance descriptor for [A]);
  *v5 = v0;
  v5[1] = sub_93748;

  return Collection<>.concurrentMap(_:)(&unk_F0D70, v4, v6, v7);
}

uint64_t sub_93748(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v5 = sub_93994;
  }

  else
  {

    *(v4 + 144) = a1;
    v5 = sub_93884;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_93884()
{
  v0[4] = v0[18];
  sub_940D0();
  sub_E5394();

  v1 = v0[1];

  return v1();
}

uint64_t sub_93930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_93994()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_93A0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_93A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a1;
  *(v4 + 72) = a4;
  return _swift_task_switch(sub_93A8C, 0, 0);
}

uint64_t sub_93A8C()
{
  sub_E51D4();
  v0[10] = v0[7];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA70, &unk_E9C80);
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_93B58;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_93B58()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_93E74, 0, 0);
  }

  else
  {
    v3 = v2[8];
    v4 = type metadata accessor for EpisodeEntity(0);
    v2[13] = v4;
    v5 = *(v4 + 96);
    v6 = swift_task_alloc();
    v2[14] = v6;
    v7 = sub_94638(&qword_12E998, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
    *v6 = v2;
    v6[1] = sub_93D40;

    return Preparable.artworkData(for:imageProvider:)(v3 + v5, v2 + 2, v4, v7);
  }
}

uint64_t sub_93D40(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v7 = sub_93F6C;
  }

  else
  {
    *(v6 + 128) = a2;
    *(v6 + 136) = a1;
    v7 = sub_93ED8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_93E74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_93ED8()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[8];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v4 + *(v3 + 100);
  sub_4DC8C(*v5, *(v5 + 8));
  *v5 = v2;
  *(v5 + 8) = v1;
  v6 = v0[1];

  return v6();
}

uint64_t sub_93F6C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_93FD8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_94020(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_588C;

  return sub_93A6C(a1, v4, v5, v6);
}

unint64_t sub_940D0()
{
  result = qword_12FE10;
  if (!qword_12FE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E010, qword_EA628);
    sub_94638(&qword_12DD68, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FE10);
  }

  return result;
}

unint64_t sub_94188()
{
  result = qword_12FE18;
  if (!qword_12FE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FE18);
  }

  return result;
}

unint64_t sub_941E0()
{
  result = qword_12FE20;
  if (!qword_12FE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FE20);
  }

  return result;
}

uint64_t sub_94284(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FDD8, &qword_F0D08);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FDE0, &qword_F0D10);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._object = 0x80000000000F7CC0;
  v5._countAndFlagsBits = 0xD00000000000001ALL;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FDF0, &qword_F0D40);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_9441C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return FetchShowLatestEpisodesAppIntent.perform()(a1);
}

uint64_t sub_944BC(uint64_t a1)
{
  v2 = sub_92818();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void *sub_94520@<X0>(void *a1@<X8>)
{
  result = sub_E5504();
  *a1 = v3;
  return result;
}

void *sub_94560@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t sub_94638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_94680()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FE48);
  __swift_project_value_buffer(v0, qword_12FE48);
  return sub_E5914();
}

uint64_t sub_9471C()
{
  v0 = sub_E5604();
  __swift_allocate_value_buffer(v0, qword_12FE60);
  __swift_project_value_buffer(v0, qword_12FE60);
  return sub_E55F4();
}

uint64_t sub_947B8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t static FollowRSSFeedAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE78, &qword_F0F40);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE80, &qword_F0F48);
  __chkstk_darwin(v1);
  sub_94A04();
  sub_E5744();
  v3._countAndFlagsBits = 0x5020776F6C6C6F46;
  v3._object = 0xEF2074736163646FLL;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE90, &qword_F0F78);
  sub_E5724();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_94A04()
{
  result = qword_12FE88;
  if (!qword_12FE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FE88);
  }

  return result;
}

uint64_t sub_94A58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

void (*FollowRSSFeedAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_94AF8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_E59C4();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v12 - v8;
  v10 = *(v4 + 16);
  v10(&v12 - v8, a1, v3);
  v10(v7, v9, v3);

  sub_E5514();
  (*(v4 + 8))(v9, v3);
}

uint64_t FollowRSSFeedAppIntent.feedURL.setter(uint64_t a1)
{
  v2 = sub_E59C4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  (*(v3 + 16))(&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  sub_E5514();
  return (*(v3 + 8))(a1, v2);
}

void (*FollowRSSFeedAppIntent.feedURL.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t FollowRSSFeedAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v21 = sub_E5774();
  v1 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_E5944();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v22 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v15 = sub_E5214();
  v16 = v20;
  *v20 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE98, &qword_F0F80);
  sub_E5914();
  sub_E5914();
  (*(v14 + 56))(v12, 0, 1, v13);
  v17 = sub_E59C4();
  (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
  v18 = sub_E5354();
  (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
  (*(v1 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  result = sub_E55A4();
  v16[1] = result;
  return result;
}

uint64_t FollowRSSFeedAppIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  v3 = type metadata accessor for ShowEntity(0);
  *(v2 + 48) = v3;
  *(v2 + 56) = *(v3 - 8);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  v4 = sub_E59C4();
  *(v2 + 104) = v4;
  *(v2 + 112) = *(v4 - 8);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = type metadata accessor for FollowFeedIntent(0);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = *v1;

  return _swift_task_switch(sub_952E8, 0, 0);
}

uint64_t sub_952E8()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  sub_E5504();
  (*(v4 + 32))(v1, v3, v5);
  (*(v4 + 56))(v1, 0, 1, v5);
  v6 = v1 + v2[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = (v1 + v2[6]);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + v2[7]) = 0;
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_95428;
  v9 = v0[18];
  v10 = v0[19];
  v11 = v0[17];

  return sub_6DC3C(v11, v9, v10);
}

uint64_t sub_95428(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v4;
  v6 = *(*v4 + 136);
  *(v5 + 168) = a1;
  *(v5 + 176) = a2;
  *(v5 + 225) = a3;
  *(v5 + 184) = v3;

  sub_96068(v6, type metadata accessor for FollowFeedIntent);
  if (v3)
  {
    v7 = sub_95B18;
  }

  else
  {
    v7 = sub_95578;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_95578()
{
  v1 = *(v0 + 184);
  sub_E7384();
  v2 = *(v0 + 225);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  if (v1)
  {
    sub_95FBC(*(v0 + 168), *(v0 + 176), *(v0 + 225));

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAB0, &qword_E9DD0);
    v7 = swift_allocObject();
    *(v0 + 192) = v7;
    *(v7 + 16) = xmmword_E87F0;
    *(v7 + 32) = v4;
    *(v7 + 40) = v3;
    *(v7 + 48) = v2;
    sub_95FE0(v4, v3, v2);
    v8 = swift_task_alloc();
    *(v0 + 200) = v8;
    *v8 = v0;
    v8[1] = sub_95730;
    v9 = *(v0 + 144);
    v10 = *(v0 + 152);

    return sub_6E0C0(v7, v9, v10);
  }
}

uint64_t sub_95730(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_95BD4;
  }

  else
  {
    v4 = sub_95864;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_95864()
{
  v20 = v0;
  v1 = *(v0 + 208);
  if (*(v1 + 16))
  {
    v17 = *(v0 + 168);
    v18 = *(v0 + 176);
    v2 = *(v0 + 88);
    v3 = *(v0 + 96);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);
    v16 = *(v0 + 225);
    sub_8262C(v1 + ((*(*(v0 + 56) + 80) + 32) & ~*(*(v0 + 56) + 80)), v2);

    sub_96004(v2, v3);
    sub_8262C(v3, v5);
    OpenShowAppIntent.init()(v19);
    v7 = v19[0];
    v8 = v19[1];
    v9 = v19[2];
    sub_8262C(v5, v4);
    sub_8262C(v4, v6);
    sub_E5514();
    sub_96068(v4, type metadata accessor for ShowEntity);
    *(v0 + 224) = 2;
    sub_E5514();
    sub_96068(v5, type metadata accessor for ShowEntity);
    *(v0 + 16) = v7;
    *(v0 + 24) = v8;
    *(v0 + 32) = v9;
    sub_960C8();
    sub_823F8();
    sub_E5384();
    sub_95FBC(v17, v18, v16);
    sub_96068(v3, type metadata accessor for ShowEntity);
  }

  else
  {
    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    v13 = *(v0 + 225);

    sub_96120();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
    sub_95FBC(v11, v12, v13);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_95B18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_95BD4()
{
  sub_95FBC(*(v0 + 168), *(v0 + 176), *(v0 + 225));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_95C9C@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC70 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FE48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_95D44(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE78, &qword_F0F40);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE80, &qword_F0F48);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 0x5020776F6C6C6F46;
  v5._object = 0xEF2074736163646FLL;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FE90, &qword_F0F78);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_95EE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return FollowRSSFeedAppIntent.perform()(a1);
}

uint64_t sub_95F80(uint64_t a1)
{
  v2 = sub_94A04();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void sub_95FBC(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (a3 == 1)
  {
  }
}

id sub_95FE0(id result, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 == 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_96004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_96068(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_960C8()
{
  result = qword_12DE68;
  if (!qword_12DE68)
  {
    type metadata accessor for ShowEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DE68);
  }

  return result;
}

unint64_t sub_96120()
{
  result = qword_12FEA0;
  if (!qword_12FEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FEA0);
  }

  return result;
}

unint64_t sub_96178()
{
  result = qword_12FEA8;
  if (!qword_12FEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FEA8);
  }

  return result;
}

unint64_t sub_961D0()
{
  result = qword_12FEB0;
  if (!qword_12FEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FEB0);
  }

  return result;
}

void *sub_96278@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t sub_963BC()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FEE0);
  __swift_project_value_buffer(v0, qword_12FEE0);
  return sub_E5914();
}

uint64_t sub_96460()
{
  v0 = sub_E5604();
  __swift_allocate_value_buffer(v0, qword_12FEF8);
  __swift_project_value_buffer(v0, qword_12FEF8);
  return sub_E55F4();
}

uint64_t static FollowShowAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF10, &qword_F1140);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF18, &qword_F1148);
  __chkstk_darwin(v1);
  sub_96698();
  sub_E5744();
  v3._countAndFlagsBits = 0x20776F6C6C6F46;
  v3._object = 0xE700000000000000;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF28, &qword_F1178);
  sub_E5724();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_96698()
{
  result = qword_12FF20;
  if (!qword_12FF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FF20);
  }

  return result;
}

uint64_t sub_966EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

void (*FollowShowAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_9678C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ShowEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_8262C(a1, &v10 - v7);
  sub_8262C(v8, v6);

  sub_E5514();
  sub_97518(v8, type metadata accessor for ShowEntity);
}

uint64_t FollowShowAppIntent.show.setter(uint64_t a1)
{
  v2 = type metadata accessor for ShowEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_8262C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_97518(a1, type metadata accessor for ShowEntity);
}

void (*FollowShowAppIntent.show.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t FollowShowAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_E5944();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v26 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9C0, &qword_F1180);
  sub_E5914();
  sub_E5914();
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = type metadata accessor for ShowEntity(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v20(v9, 1, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_97578(&qword_12DDF0, &protocol conformance descriptor for ShowEntity);
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t FollowShowAppIntent.perform()(uint64_t a1)
{
  *(v2 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  *(v2 + 48) = swift_task_alloc();
  *(v2 + 56) = type metadata accessor for FollowFeedIntent(0);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = type metadata accessor for ShowEntity(0);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *v1;

  return _swift_task_switch(sub_96EF8, 0, 0);
}

uint64_t sub_96EF8()
{
  v22 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  v18 = *(v0 + 80);
  v19 = *(v0 + 56);
  v16 = *(v0 + 72);
  v17 = *(v0 + 48);
  sub_E5504();
  OpenShowAppIntent.init()(&v20);
  *(v0 + 144) = v20;
  *(v0 + 160) = v21;
  sub_8262C(v2, v1);
  sub_8262C(v1, v4);
  sub_E5514();
  sub_97518(v1, type metadata accessor for ShowEntity);
  *(v0 + 184) = 0;
  sub_E5514();
  sub_97518(v2, type metadata accessor for ShowEntity);
  sub_E5504();
  sub_CC80(v3 + *(v16 + 40), v17);
  sub_97518(v3, type metadata accessor for ShowEntity);
  sub_E5504();
  v7 = *(v5 + 56);
  sub_97518(v5, type metadata accessor for ShowEntity);
  sub_E5504();
  sub_E53E4();
  v8 = *(v0 + 185);
  sub_97518(v18, type metadata accessor for ShowEntity);
  sub_CF40(v17, v6);
  v9 = v6 + v19[5];
  *v9 = v7;
  *(v9 + 8) = 0;
  v10 = (v6 + v19[6]);
  *v10 = 0;
  v10[1] = 0;
  *(v6 + v19[7]) = (v8 == 2) | v8 & 1;
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_97124;
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 64);

  return sub_6E588(v14, v12, v13);
}

uint64_t sub_97124(void *a1, uint64_t a2, char a3)
{
  v8 = *v4;
  *(*v4 + 176) = v3;

  v9 = *(v8 + 64);
  if (v3)
  {
    sub_97518(v9, type metadata accessor for FollowFeedIntent);
    v10 = sub_97428;
  }

  else
  {
    sub_95FBC(a1, a2, a3);
    sub_97518(v9, type metadata accessor for FollowFeedIntent);
    v10 = sub_972B0;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_972B0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[15];
  sub_E5504();
  v0[2] = v3;
  v0[3] = v1;
  v0[4] = v2;
  sub_97578(&qword_12DE68, &protocol conformance descriptor for ShowEntity);
  sub_823F8();
  sub_E5384();
  sub_97518(v4, type metadata accessor for ShowEntity);

  v5 = v0[1];

  return v5();
}

uint64_t sub_97428()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_97518(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_97578(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShowEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_975C0()
{
  result = qword_12FF30;
  if (!qword_12FF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FF30);
  }

  return result;
}

unint64_t sub_97618()
{
  result = qword_12FF38;
  if (!qword_12FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FF38);
  }

  return result;
}

uint64_t sub_976BC@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC80 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FEE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_97764(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF10, &qword_F1140);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF18, &qword_F1148);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 0x20776F6C6C6F46;
  v5._object = 0xE700000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF28, &qword_F1178);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_978F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return FollowShowAppIntent.perform()(a1);
}

uint64_t sub_97998(uint64_t a1)
{
  v2 = sub_96698();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void *sub_979D4@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

unint64_t sub_97B1C()
{
  result = qword_12FF50;
  if (!qword_12FF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FF50);
  }

  return result;
}

unint64_t sub_97B74()
{
  result = qword_12FF58;
  if (!qword_12FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FF58);
  }

  return result;
}

uint64_t sub_97C18()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_145670);
  __swift_project_value_buffer(v0, qword_145670);
  return sub_E5914();
}

uint64_t sub_97CAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  type metadata accessor for ShowEntity(0);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return _swift_task_switch(sub_97D64, 0, 0);
}

uint64_t sub_97D64()
{
  v18 = v0;
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  sub_E5504();
  OpenShowAppIntent.init()(&v16);
  *(v0 + 176) = v16;
  *(v0 + 192) = v17;
  sub_8262C(v1, v2);
  sub_8262C(v2, v3);
  sub_E5514();
  sub_98B0C(v2);
  *(v0 + 97) = 1;
  sub_E5514();
  sub_98B0C(v1);
  sub_E51D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  sub_E6DA4();

  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
  sub_E5504();
  v7 = *(v4 + 48);
  v8 = *(v0 + 144);
  if (v7)
  {
    v9 = v8[5];
    v10 = 2;
  }

  else
  {
    v9 = v8[4];
    if (v9)
    {
      v11 = v9;
      v10 = 1;
    }

    else
    {
      v10 = 0;
      v9 = v8[7];
    }
  }

  sub_98B0C(v8);
  *(v0 + 80) = v9;
  *(v0 + 88) = v7;
  *(v0 + 96) = v10;
  sub_E51D4();
  v12 = *(v0 + 112);
  *(v0 + 200) = v12;
  v13 = swift_task_alloc();
  *(v0 + 208) = v13;
  v14 = sub_98B68();
  *v13 = v0;
  v13[1] = sub_97F88;

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v14, v0 + 80, v12, &type metadata for UnfollowShowIntent, v14, v5, v6);
}

uint64_t sub_97F88()
{
  v2 = *v1;
  *(v2 + 216) = v0;

  sub_95FBC(*(v2 + 80), *(v2 + 88), *(v2 + 96));

  if (v0)
  {
    v3 = sub_981C4;
  }

  else
  {
    v3 = sub_980CC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_980CC()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v0[7] = v3;
  v0[8] = v1;
  v0[9] = v2;
  sub_823F8();
  sub_E5374();

  v4 = v0[1];

  return v4();
}

uint64_t sub_981C4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9827C@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC90 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_145670);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_98324(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF80, &qword_F1480);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF88, &qword_F1488);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 0x776F6C6C6F666E55;
  v5._object = 0xE900000000000020;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FF90, &unk_F14B8);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_984BC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_588C;

  return sub_97CAC(a1, v5, v4);
}

uint64_t sub_98568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_986B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_98590(uint64_t a1)
{
  v2 = sub_98664();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_98664()
{
  result = qword_12FF70;
  if (!qword_12FF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FF70);
  }

  return result;
}

uint64_t sub_986B8()
{
  v0 = sub_E5774();
  v23 = *(v0 - 8);
  v24 = v0;
  __chkstk_darwin(v0);
  v22 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v14 = sub_E5944();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v25 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v16 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F9C0, &qword_F1180);
  sub_E5914();
  sub_E5914();
  (*(v15 + 56))(v13, 0, 1, v14);
  v17 = type metadata accessor for ShowEntity(0);
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = sub_E5354();
  v19 = *(*(v18 - 8) + 56);
  v19(v7, 1, 1, v18);
  v19(v5, 1, 1, v18);
  (*(v23 + 104))(v22, enum case for InputConnectionBehavior.default(_:), v24);
  sub_98AB4();
  sub_E5584();
  return v16;
}

unint64_t sub_98AB4()
{
  result = qword_12DDF0;
  if (!qword_12DDF0)
  {
    type metadata accessor for ShowEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DDF0);
  }

  return result;
}

uint64_t sub_98B0C(uint64_t a1)
{
  v2 = type metadata accessor for ShowEntity(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_98B68()
{
  result = qword_12FF78;
  if (!qword_12FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FF78);
  }

  return result;
}

uint64_t sub_98BBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

uint64_t sub_98BE8()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_12FF98);
  __swift_project_value_buffer(v0, qword_12FF98);
  return sub_E5914();
}

uint64_t static PlayPauseStationAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CC98 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_12FF98);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_98CF4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_12FFB0);
  v1 = __swift_project_value_buffer(v0, qword_12FFB0);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static PlayPauseStationAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CCA0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_12FFB0);
  return sub_26324(v3, a1, &qword_12F340, &qword_EEDB0);
}

uint64_t static PlayPauseStationAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FFC8, &qword_F14C8);
  __chkstk_darwin(v0 - 8);
  sub_98F18();
  sub_E5754();
  return sub_E5714();
}

unint64_t sub_98F18()
{
  result = qword_12FFD0;
  if (!qword_12FFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FFD0);
  }

  return result;
}

void (*PlayPauseStationAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_98FE0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for StationEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_9AF44(a1, &v10 - v7, type metadata accessor for StationEntity);
  sub_9AF44(v8, v6, type metadata accessor for StationEntity);

  sub_E5514();
  sub_9AFAC(v8, type metadata accessor for StationEntity);
}

uint64_t PlayPauseStationAppIntent.station.setter(uint64_t a1)
{
  v2 = type metadata accessor for StationEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_9AF44(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StationEntity);
  sub_E5514();
  return sub_9AFAC(a1, type metadata accessor for StationEntity);
}

void (*PlayPauseStationAppIntent.station.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t sub_99238(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_26324(a1, &v10 - v7, &qword_12F4E0, &unk_EEE00);
  sub_26324(v8, v6, &qword_12F4E0, &unk_EEE00);

  sub_E5514();
  sub_99410(v8);
}

uint64_t PlayPauseStationAppIntent.firstEpisode.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  __chkstk_darwin(v2 - 8);
  sub_26324(a1, &v5 - v3, &qword_12F4E0, &unk_EEE00);
  sub_E5514();
  return sub_99410(a1);
}

uint64_t sub_99410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*PlayPauseStationAppIntent.firstEpisode.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t PlayPauseStationAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  __chkstk_darwin(v2 - 8);
  v38 = &v30 - v3;
  v4 = sub_E5774();
  v5 = *(v4 - 8);
  v40 = v4;
  v41 = v5;
  __chkstk_darwin(v4);
  v37 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v16 - 8);
  v18 = &v30 - v17;
  v19 = sub_E5944();
  v35 = v19;
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v42 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FFD8, &qword_F14D8);
  sub_E5914();
  sub_E5914();
  v21 = *(v20 + 56);
  v34 = v20 + 56;
  v36 = v21;
  v21(v18, 0, 1, v19);
  v22 = type metadata accessor for StationEntity(0);
  (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  v23 = sub_E5354();
  v24 = *(*(v23 - 8) + 56);
  v24(v12, 1, 1, v23);
  v25 = v10;
  v24(v10, 1, 1, v23);
  v32 = enum case for InputConnectionBehavior.default(_:);
  v26 = *(v41 + 104);
  v41 += 104;
  v31 = v26;
  v27 = v37;
  v26(v37);
  sub_99B14(&qword_12DC58, type metadata accessor for StationEntity, &protocol conformance descriptor for StationEntity);
  v39[1] = sub_E5584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FFE0, &qword_F14E0);
  sub_E5914();
  sub_E5914();
  v36(v18, 0, 1, v35);
  v28 = type metadata accessor for EpisodeEntity(0);
  (*(*(v28 - 8) + 56))(v38, 1, 1, v28);
  v24(v12, 1, 1, v23);
  v24(v25, 1, 1, v23);
  v31(v27, v32, v40);
  sub_99B14(&qword_12E000, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
  result = sub_E5584();
  v39[2] = result;
  return result;
}

uint64_t sub_99B14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t PlayPauseStationAppIntent.init(station:firstEpisode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v55 = a1;
  v56 = a2;
  v57 = a3;
  v47 = type metadata accessor for StationEntity(0);
  v4 = *(v47 - 8);
  v5 = __chkstk_darwin(v47);
  v54 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v52 = v39 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  v9 = __chkstk_darwin(v8 - 8);
  v53 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = v39 - v11;
  v42 = sub_E5774();
  v58 = *(v42 - 8);
  __chkstk_darwin(v42);
  v50 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v14 = __chkstk_darwin(v13 - 8);
  v49 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = v39 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  __chkstk_darwin(v17 - 8);
  v19 = v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v20 - 8);
  v22 = v39 - v21;
  v23 = sub_E5944();
  v45 = v23;
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v39[1] = v39 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v59 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a3 = sub_E5214();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FFD8, &qword_F14D8);
  sub_E5914();
  sub_E5914();
  v26 = *(v24 + 56);
  v44 = v24 + 56;
  v46 = v26;
  v26(v22, 0, 1, v23);
  (*(v4 + 56))(v19, 1, 1, v47);
  v27 = sub_E5354();
  v28 = *(*(v27 - 8) + 56);
  v29 = v48;
  v28(v48, 1, 1, v27);
  v30 = v49;
  v28(v49, 1, 1, v27);
  v41 = enum case for InputConnectionBehavior.default(_:);
  v31 = *(v58 + 104);
  v58 += 104;
  v43 = v31;
  v32 = v50;
  v31(v50);
  sub_99B14(&qword_12DC58, type metadata accessor for StationEntity, &protocol conformance descriptor for StationEntity);
  v47 = sub_E5584();
  v57[1] = v47;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FFE0, &qword_F14E0);
  sub_E5914();
  sub_E5914();
  v46(v22, 0, 1, v45);
  v33 = type metadata accessor for EpisodeEntity(0);
  v34 = v51;
  (*(*(v33 - 8) + 56))(v51, 1, 1, v33);
  v28(v29, 1, 1, v27);
  v28(v30, 1, 1, v27);
  v43(v32, v41, v42);
  sub_99B14(&qword_12E000, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
  v57[2] = sub_E5584();
  v35 = v55;
  v36 = v52;
  sub_9AF44(v55, v52, type metadata accessor for StationEntity);
  sub_9AF44(v36, v54, type metadata accessor for StationEntity);
  sub_E5514();
  sub_9AFAC(v36, type metadata accessor for StationEntity);
  v37 = v56;
  sub_26324(v56, v34, &qword_12F4E0, &unk_EEE00);
  sub_26324(v34, v53, &qword_12F4E0, &unk_EEE00);
  sub_E5514();
  sub_99410(v37);
  sub_9AFAC(v35, type metadata accessor for StationEntity);
  return sub_99410(v34);
}

uint64_t PlayPauseStationAppIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = type metadata accessor for PlayStationIntent(0);
  *(v2 + 48) = swift_task_alloc();
  v3 = type metadata accessor for EpisodeEntity(0);
  *(v2 + 56) = v3;
  *(v2 + 64) = *(v3 - 8);
  *(v2 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = *v1;
  *(v2 + 104) = *(v1 + 16);

  return _swift_task_switch(sub_9A498, 0, 0);
}

uint64_t sub_9A498()
{
  sub_E51D4();
  v0[14] = v0[3];
  v1 = sub_E5D94();
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_9A558;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_9A558()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_9AC08;
  }

  else
  {

    v2 = sub_9A674;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_9A674()
{
  v0[17] = v0[2];
  if ((sub_E5D84() & 1) == 0)
  {
LABEL_8:
    sub_E5504();
    sub_E5504();
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_9AAC4;
    v12 = v0[12];
    v13 = v0[13];
    v14 = v0[11];
    v15 = v0[6];

    return sub_6EAFC(sub_6EAFC, v15, v14, v12, v13);
  }

  v1 = sub_E5D64();
  if (v1)
  {
    v2 = v1;
    v3 = sub_E7474();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v0[10];
  v7 = v0[7];
  v8 = v0[8];
  sub_E5504();
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = v0[10];
  if (v9)
  {
    sub_99410(v10);
    if (v5)
    {
LABEL_7:

      goto LABEL_8;
    }
  }

  else
  {
    v17 = v0[9];
    v18 = v0[10];
    sub_9AF44(v10, v17, type metadata accessor for EpisodeEntity);
    sub_99410(v18);
    v20 = *(v17 + 72);
    v19 = *(v17 + 80);

    sub_9AFAC(v17, type metadata accessor for EpisodeEntity);
    if (v5)
    {
      if (!v19)
      {
        goto LABEL_7;
      }

      if (v3 == v20 && v5 == v19)
      {
      }

      else
      {
        v21 = sub_E7BD4();

        if ((v21 & 1) == 0)
        {
          goto LABEL_8;
        }
      }
    }

    else if (v19)
    {
      goto LABEL_7;
    }
  }

  v22 = swift_task_alloc();
  v0[18] = v22;
  *v22 = v0;
  v22[1] = sub_9A918;

  return PlaybackController.pause()();
}

uint64_t sub_9A918()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_9AC90;
  }

  else
  {
    v2 = sub_9AA2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_9AA2C(uint64_t a1)
{
  sub_E53A4();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_9AAC4()
{
  v2 = *(*v1 + 48);
  *(*v1 + 168) = v0;

  sub_9AFAC(v2, type metadata accessor for PlayStationIntent);
  if (v0)
  {
    v3 = sub_9AD18;
  }

  else
  {
    v3 = sub_9B238;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_9AC08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9AC90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9AD18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9ADA0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FFC8, &qword_F14C8);
  __chkstk_darwin(v2 - 8);
  sub_E5754();
  return sub_E5714();
}

uint64_t sub_9AE6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayPauseStationAppIntent.perform()(a1);
}

uint64_t sub_9AF08(uint64_t a1)
{
  v2 = sub_98F18();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_9AF44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_9AFAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_9B010()
{
  result = qword_12FFE8;
  if (!qword_12FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FFE8);
  }

  return result;
}

unint64_t sub_9B070()
{
  result = qword_12FFF0;
  if (!qword_12FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FFF0);
  }

  return result;
}

unint64_t sub_9B0C8()
{
  result = qword_12FFF8;
  if (!qword_12FFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12FFF8);
  }

  return result;
}

void *sub_9B154@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t sub_9B23C()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_130010);
  __swift_project_value_buffer(v0, qword_130010);
  return sub_E5914();
}

uint64_t static PlayStationAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CCA8 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_130010);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_9B350()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  __swift_allocate_value_buffer(v0, qword_130028);
  v1 = __swift_project_value_buffer(v0, qword_130028);
  sub_E55F4();
  v2 = sub_E5604();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 0, 1, v2);
}

uint64_t static PlayStationAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CCB0 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F340, &qword_EEDB0);
  v3 = __swift_project_value_buffer(v2, qword_130028);

  return sub_69558(v3, a1);
}

uint64_t static PlayStationAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130040, &qword_F16E8);
  __chkstk_darwin(v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130048, &qword_F16F0);
  __chkstk_darwin(v1);
  sub_9B62C();
  sub_E5744();
  v3._countAndFlagsBits = 0x2079616C50;
  v3._object = 0xE500000000000000;
  sub_E5734(v3);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130058, &unk_F1720);
  sub_E5724();

  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  sub_E5734(v4);
  sub_E5764();
  return sub_E5714();
}

unint64_t sub_9B62C()
{
  result = qword_130050;
  if (!qword_130050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130050);
  }

  return result;
}

uint64_t sub_9B680@<X0>(uint64_t *a1@<X8>)
{
  result = sub_E5524();
  *a1 = result;
  return result;
}

void (*PlayStationAppIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_9B720(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for StationEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_25FC4(a1, &v10 - v7);
  sub_25FC4(v8, v6);

  sub_E5514();
  sub_9C3FC(v8, type metadata accessor for StationEntity);
}

uint64_t PlayStationAppIntent.station.setter(uint64_t a1)
{
  v2 = type metadata accessor for StationEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_25FC4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_9C3FC(a1, type metadata accessor for StationEntity);
}

void (*PlayStationAppIntent.station.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t PlayStationAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_E5774();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v23 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  __chkstk_darwin(v10 - 8);
  v12 = &v22 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v13 - 8);
  v15 = &v22 - v14;
  v16 = sub_E5944();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v26 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *a1 = sub_E5214();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12FFD8, &qword_F14D8);
  sub_E5914();
  sub_E5914();
  (*(v17 + 56))(v15, 0, 1, v16);
  v18 = type metadata accessor for StationEntity(0);
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = sub_E5354();
  v20 = *(*(v19 - 8) + 56);
  v20(v9, 1, 1, v19);
  v20(v7, 1, 1, v19);
  (*(v24 + 104))(v23, enum case for InputConnectionBehavior.default(_:), v25);
  sub_25F6C();
  result = sub_E5584();
  a1[1] = result;
  return result;
}

uint64_t PlayStationAppIntent.perform()(uint64_t a1)
{
  *(v2 + 80) = a1;
  v3 = sub_E5354();
  *(v2 + 88) = v3;
  *(v2 + 96) = *(v3 - 8);
  *(v2 + 104) = swift_task_alloc();
  type metadata accessor for StationEntity(0);
  *(v2 + 112) = swift_task_alloc();
  sub_E7014();
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = type metadata accessor for PlayStationIntent(0);
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = *v1;

  return _swift_task_switch(sub_9BE88, 0, 0);
}

uint64_t sub_9BE88()
{
  v12 = v0;
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  OpenAppLocationAppIntent.init()(v11);
  v3 = v11[1];
  *(v0 + 160) = v11[0];
  *(v0 + 168) = v3;
  *(v0 + 176) = v11[2];
  *(v0 + 200) = 11;
  sub_E5514();
  *(v0 + 201) = 2;
  sub_E5514();
  sub_E5504();
  v4 = *(v2 + 20);
  v5 = type metadata accessor for EpisodeEntity(0);
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  v6 = swift_task_alloc();
  *(v0 + 184) = v6;
  *v6 = v0;
  v6[1] = sub_9BFD4;
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *(v0 + 136);

  return sub_6EF80(sub_6EF80, v9, v7, v8);
}

uint64_t sub_9BFD4()
{
  v2 = *(*v1 + 136);
  *(*v1 + 192) = v0;

  sub_9C3FC(v2, type metadata accessor for PlayStationIntent);
  if (v0)
  {
    v3 = sub_9C2D4;
  }

  else
  {
    v3 = sub_9C118;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_9C118()
{
  v1 = v0[21];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[13];
  v9 = v0[11];
  v10 = v0[22];
  v0[5] = v0[20];
  v0[6] = v1;
  v0[7] = v10;
  sub_E7004();
  v12._countAndFlagsBits = 0x79616C7020776F4ELL;
  v12._object = 0xED00002720676E69;
  sub_E6FF4(v12);
  sub_E5504();
  sub_E53E4();
  v5 = v0[8];
  v6 = v0[9];
  sub_9C3FC(v2, type metadata accessor for StationEntity);
  v13._countAndFlagsBits = v5;
  v13._object = v6;
  sub_E6FD4(v13);

  v14._countAndFlagsBits = 39;
  v14._object = 0xE100000000000000;
  sub_E6FF4(v14);
  sub_E5344();
  sub_6FB88();
  sub_E5364();
  (*(v3 + 8))(v4, v9);

  v7 = v0[1];

  return v7();
}

uint64_t sub_9C2D4()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v0[2] = v0[20];
  v0[3] = v3;
  v0[4] = v2;
  sub_8EE68(v1, v4);
  sub_6FB88();
  sub_E5364();

  (*(v5 + 8))(v4, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_9C3FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_9C460()
{
  result = qword_130060;
  if (!qword_130060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130060);
  }

  return result;
}

unint64_t sub_9C4C0()
{
  result = qword_130068;
  if (!qword_130068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130068);
  }

  return result;
}

unint64_t sub_9C518()
{
  result = qword_130070;
  if (!qword_130070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130070);
  }

  return result;
}

uint64_t sub_9C5BC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130040, &qword_F16E8);
  __chkstk_darwin(v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130048, &qword_F16F0);
  __chkstk_darwin(v3);
  sub_E5744();
  v5._countAndFlagsBits = 0x2079616C50;
  v5._object = 0xE500000000000000;
  sub_E5734(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130058, &unk_F1720);
  sub_E5724();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  sub_E5734(v6);
  sub_E5764();
  return sub_E5714();
}

uint64_t sub_9C74C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayStationAppIntent.perform()(a1);
}

uint64_t sub_9C7E8(uint64_t a1)
{
  v2 = sub_9B62C();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

void *sub_9C824@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t sub_9C8E0()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_130088);
  __swift_project_value_buffer(v0, qword_130088);
  return sub_E57B4();
}

uint64_t sub_9C97C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130168, &qword_F1E10);
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130810, &unk_F1E18) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_EC520;
  v4 = (v3 + v2);
  *v4 = 0;
  sub_E5644();
  v4[v1] = 1;
  sub_E5644();
  v4[2 * v1] = 2;
  sub_E5644();
  v4[3 * v1] = 3;
  sub_E5644();
  v5 = sub_B0E34(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1300A0 = v5;
  return result;
}

uint64_t static WidgetEpisodePlayList.caseDisplayRepresentations.getter()
{
  if (qword_12CCC0 != -1)
  {
    swift_once();
  }
}

PodcastsActions::WidgetEpisodePlayList_optional __swiftcall WidgetEpisodePlayList.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_1201A8;
  v8._object = object;
  v5 = sub_E7B34(v4, v8);

  v7 = 4;
  if (v5 < 4)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t WidgetEpisodePlayList.rawValue.getter()
{
  v1 = 0x6F4E6E657473696CLL;
  v2 = 0x64616F6C6E776F64;
  if (*v0 != 2)
  {
    v2 = 0x704574736574616CLL;
  }

  if (*v0)
  {
    v1 = 0x6465766173;
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

Swift::Int sub_9CCAC()
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_9CD80(uint64_t a1)
{
  sub_E7124();
}

Swift::Int sub_9CE40(uint64_t a1)
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

void sub_9CF1C(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000077;
  v3 = 0x6F4E6E657473696CLL;
  v4 = 0xEA00000000006465;
  v5 = 0x64616F6C6E776F64;
  if (*v1 != 2)
  {
    v5 = 0x704574736574616CLL;
    v4 = 0xEE007365646F7369;
  }

  if (*v1)
  {
    v3 = 0x6465766173;
    v2 = 0xE500000000000000;
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

uint64_t sub_9CFE4(uint64_t a1)
{
  v2 = sub_9DB68();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

uint64_t sub_9D030(uint64_t a1)
{
  v2 = sub_A0124();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_9D08C(uint64_t *a1, uint64_t *a2)
{

  sub_E51E4();
}

void (*PlayPauseWidgetIntent.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t sub_9D1A0()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_1300A8);
  __swift_project_value_buffer(v0, qword_1300A8);
  return sub_E5914();
}

uint64_t sub_9D23C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_9D2E0(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for EpisodeEntity(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_6FAC8(a1, &v10 - v7);
  sub_6FAC8(v8, v6);

  sub_E5514();
  sub_74E00(v8, type metadata accessor for EpisodeEntity);
}

uint64_t PlayPauseWidgetIntent.episode.setter(uint64_t a1)
{
  v2 = type metadata accessor for EpisodeEntity(0);
  __chkstk_darwin(v2 - 8);
  sub_6FAC8(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_E5514();
  return sub_74E00(a1, type metadata accessor for EpisodeEntity);
}

void (*PlayPauseWidgetIntent.episode.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_3CA68;
}

uint64_t PlayPauseWidgetIntent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1300C0, &unk_F1920);
  __chkstk_darwin(v2 - 8);
  v42 = v37 - v3;
  v4 = sub_E5774();
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  __chkstk_darwin(v4);
  v48 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v37 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  __chkstk_darwin(v13 - 8);
  v15 = v37 - v14;
  v37[1] = v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v16 - 8);
  v18 = v37 - v17;
  v19 = sub_E5944();
  v46 = v19;
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v51 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v23 = sub_E5214();
  v47 = a1;
  *a1 = v23;
  *(a1 + 8) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  v41 = *(v20 + 56);
  v45 = v20 + 56;
  v41(v18, 1, 1, v19);
  v24 = type metadata accessor for EpisodeEntity(0);
  (*(*(v24 - 8) + 56))(v15, 1, 1, v24);
  v25 = sub_E5354();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v28 = v26 + 56;
  v27(v12, 1, 1, v25);
  v27(v10, 1, 1, v25);
  v43 = enum case for InputConnectionBehavior.default(_:);
  v29 = v49;
  v30 = *(v50 + 104);
  v50 += 104;
  v44 = v30;
  v30(v48);
  sub_71064();
  v37[0] = v22;
  *(v47 + 16) = sub_E5584();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1300C8, &qword_F1930);
  sub_E5914();
  v31 = v41;
  v41(v18, 1, 1, v46);
  LOBYTE(v52) = 4;
  v38 = v27;
  v39 = v28;
  v27(v12, 1, 1, v25);
  v27(v10, 1, 1, v25);
  v32 = v48;
  v44(v48, v43, v29);
  sub_9DB68();
  v33 = sub_E5554();
  v34 = v47;
  *(v47 + 24) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1300D8, &qword_F1938);
  sub_E5914();
  v31(v18, 1, 1, v46);
  v35 = sub_E6FC4();
  v52 = 0;
  v53 = 0;
  (*(*(v35 - 8) + 56))(v42, 1, 1, v35);
  v38(v12, 1, 1, v25);
  v44(v32, v43, v49);
  result = sub_E55B4();
  *(v34 + 32) = result;
  return result;
}

unint64_t sub_9DB68()
{
  result = qword_1300D0;
  if (!qword_1300D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1300D0);
  }

  return result;
}

uint64_t PlayPauseWidgetIntent.init(episode:episodePlaylist:playbackAccountDSID:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a3;
  v60 = a4;
  v58 = a1;
  v7 = type metadata accessor for EpisodeEntity(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v57 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v56 = v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1300C0, &unk_F1920);
  __chkstk_darwin(v12 - 8);
  v55 = v44 - v13;
  v14 = sub_E5774();
  v66 = *(v14 - 8);
  v67 = v14;
  __chkstk_darwin(v14);
  v65 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v17 = __chkstk_darwin(v16 - 8);
  v53 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v51 = v44 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  __chkstk_darwin(v20 - 8);
  v22 = v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v23 - 8);
  v25 = v44 - v24;
  v26 = sub_E5944();
  v64 = v26;
  v27 = *(v26 - 8);
  __chkstk_darwin(v26);
  v46 = v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v68 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  v29 = sub_E5214();
  v62 = a5;
  *a5 = v29;
  *(a5 + 8) = 0;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E8, &qword_EEA10);
  sub_E5914();
  v50 = *(v27 + 56);
  v63 = v27 + 56;
  v50(v25, 1, 1, v26);
  (*(v8 + 56))(v22, 1, 1, v7);
  v30 = sub_E5354();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v33 = v31 + 56;
  v34 = v51;
  v32(v51, 1, 1, v30);
  v35 = v53;
  v32(v53, 1, 1, v30);
  v61 = enum case for InputConnectionBehavior.default(_:);
  v45 = *(v66 + 104);
  v66 += 104;
  v45(v65);
  sub_71064();
  v52 = sub_E5584();
  v36 = v62;
  *(v62 + 16) = v52;
  v44[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1300C8, &qword_F1930);
  sub_E5914();
  v37 = v50;
  v50(v25, 1, 1, v64);
  LOBYTE(v69) = 4;
  v47 = v30;
  v48 = v32;
  v49 = v33;
  v32(v34, 1, 1, v30);
  v32(v35, 1, 1, v30);
  v38 = v65;
  v39 = v45;
  (v45)(v65, v61, v67);
  sub_9DB68();
  v53 = sub_E5554();
  *(v36 + 24) = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1300D8, &qword_F1938);
  sub_E5914();
  v37(v25, 1, 1, v64);
  v40 = sub_E6FC4();
  v69 = 0;
  v70 = 0;
  (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
  v48(v34, 1, 1, v47);
  (v39)(v38, v61, v67);
  *(v62 + 32) = sub_E55B4();
  v41 = v58;
  v42 = v56;
  sub_6FAC8(v58, v56);
  sub_6FAC8(v42, v57);
  sub_E5514();
  sub_74E00(v42, type metadata accessor for EpisodeEntity);
  LOBYTE(v69) = v54;
  sub_E5514();
  v69 = v59;
  v70 = v60;
  sub_E5514();
  return sub_74E00(v41, type metadata accessor for EpisodeEntity);
}

uint64_t PlayPauseWidgetIntent.perform()(uint64_t a1)
{
  *(v2 + 424) = a1;
  v3 = sub_E5D44();
  *(v2 + 432) = v3;
  *(v2 + 440) = *(v3 - 8);
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = type metadata accessor for PlayEpisodeIntent(0);
  *(v2 + 464) = swift_task_alloc();
  v4 = type metadata accessor for EpisodeEntity(0);
  *(v2 + 472) = v4;
  *(v2 + 480) = *(v4 - 8);
  *(v2 + 488) = swift_task_alloc();
  v5 = sub_E6974();
  *(v2 + 496) = v5;
  *(v2 + 504) = *(v5 - 8);
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = swift_task_alloc();
  *(v2 + 528) = swift_task_alloc();
  *(v2 + 536) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  *(v2 + 544) = swift_task_alloc();
  v6 = *(v1 + 16);
  *(v2 + 88) = *v1;
  *(v2 + 104) = v6;
  *(v2 + 120) = *(v1 + 32);
  sub_E72F4();
  *(v2 + 552) = sub_E72E4();
  v8 = sub_E7294();
  *(v2 + 560) = v8;
  *(v2 + 568) = v7;

  return _swift_task_switch(sub_9E5D4, v8, v7);
}

uint64_t sub_9E5D4()
{
  sub_E51D4();
  v0[72] = v0[47];
  v1 = sub_E5D94();
  v2 = swift_task_alloc();
  v0[73] = v2;
  *v2 = v0;
  v2[1] = sub_9E694;

  return BaseObjectGraph.inject<A>(_:)(v0 + 46, v1, v1);
}

uint64_t sub_9E694()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = *(v2 + 568);
    v4 = *(v2 + 560);
    v5 = sub_9F484;
  }

  else
  {

    v3 = *(v2 + 568);
    v4 = *(v2 + 560);
    v5 = sub_9E7B8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_9E7B8()
{
  v57 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 472);
  v3 = *(v0 + 480);
  *(v0 + 600) = *(v0 + 368);
  *(v0 + 608) = *(v0 + 104);
  sub_E5504();
  (*(v3 + 56))(v1, 0, 1, v2);
  v4 = sub_9FA60(v1);
  sub_99410(v1);
  if (v4)
  {
    sub_E6914();
    sub_9FE50(v0 + 88, v0 + 248);
    v5 = sub_E6964();
    v6 = sub_E74D4();
    sub_9FE88(v0 + 88);
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 536);
    v9 = *(v0 + 496);
    v10 = *(v0 + 504);
    if (v7)
    {
      v54 = *(v0 + 496);
      v11 = *(v0 + 488);
      v12 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v12 = 136380931;
      v53 = v8;
      sub_E5504();
      v13 = *(v11 + 88);
      sub_74E00(v11, type metadata accessor for EpisodeEntity);
      *(v0 + 416) = v13;
      sub_57150();
      v14 = sub_E7BB4();
      v16 = sub_23E64(v14, v15, &v56);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2081;
      sub_E5504();
      v17 = *(v0 + 360);
      if (v17)
      {
        v18 = *(v0 + 352);
      }

      else
      {
        v18 = 7104878;
      }

      if (v17)
      {
        v19 = *(v0 + 360);
      }

      else
      {
        v19 = 0xE300000000000000;
      }

      v20 = sub_23E64(v18, v19, &v56);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_0, v5, v6, "Requesting Pause for episode %{private}s (account: %{private}s)", v12, 0x16u);
      swift_arrayDestroy();

      (*(v10 + 8))(v53, v54);
    }

    else
    {

      (*(v10 + 8))(v8, v9);
    }

    v38 = swift_task_alloc();
    *(v0 + 616) = v38;
    *v38 = v0;
    v38[1] = sub_9EE0C;

    return PlaybackController.pause()();
  }

  else
  {
    sub_E6914();
    sub_9FE50(v0 + 88, v0 + 128);
    v21 = sub_E6964();
    v22 = sub_E74D4();
    sub_9FE88(v0 + 88);
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 528);
    v26 = *(v0 + 496);
    v25 = *(v0 + 504);
    if (v23)
    {
      v27 = *(v0 + 488);
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 136380931;
      v55 = v24;
      v56 = v29;
      sub_E5504();
      v30 = *(v27 + 88);
      sub_74E00(v27, type metadata accessor for EpisodeEntity);
      *(v0 + 408) = v30;
      sub_57150();
      v31 = sub_E7BB4();
      v33 = sub_23E64(v31, v32, &v56);

      *(v28 + 4) = v33;
      *(v28 + 12) = 2081;
      sub_E5504();
      v34 = *(v0 + 344);
      if (v34)
      {
        v35 = *(v0 + 336);
      }

      else
      {
        v35 = 7104878;
      }

      if (v34)
      {
        v36 = *(v0 + 344);
      }

      else
      {
        v36 = 0xE300000000000000;
      }

      v37 = sub_23E64(v35, v36, &v56);

      *(v28 + 14) = v37;
      _os_log_impl(&dword_0, v21, v22, "Requesting Play for episode %{private}s (account: %{private}s)", v28, 0x16u);
      swift_arrayDestroy();

      (*(v25 + 8))(v55, v26);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }

    sub_E5504();
    sub_E5504();
    v39 = 0xA0A0A06u >> (8 * *(v0 + 81));
    v41 = *(v0 + 456);
    v40 = *(v0 + 464);
    *(v0 + 16) = qword_F1E28[*(v0 + 81)];
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0;
    *(v0 + 80) = v39;
    v42 = v41[5];
    sub_E6244();
    sub_E6254();
    sub_E63D4();
    v43 = sub_E63C4();
    (*(*(v43 - 8) + 56))(v40 + v42, 0, 1, v43);
    *(v0 + 632) = *(v0 + 120);
    sub_E5504();
    v44 = *(v0 + 288);
    v45 = *(v0 + 296);
    v46 = v41[7];
    v47 = enum case for PlaybackIntent.Source.widget(_:);
    v48 = sub_E6204();
    (*(*(v48 - 8) + 104))(v40 + v46, v47, v48);
    v49 = (v40 + v41[6]);
    *v49 = v44;
    v49[1] = v45;
    v50 = swift_task_alloc();
    *(v0 + 640) = v50;
    *v50 = v0;
    v50[1] = sub_9F040;
    v51 = *(v0 + 464);

    return sub_6F2E4(sub_6F2E4, v51);
  }
}

uint64_t sub_9EE0C()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 568);
  v4 = *(v2 + 560);
  if (v0)
  {
    v5 = sub_9F568;
  }

  else
  {
    v5 = sub_9EF48;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_9EF48()
{

  sub_E53A4();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9F040()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  v3 = *(v2 + 568);
  v4 = *(v2 + 560);
  if (v0)
  {
    v5 = sub_9F64C;
  }

  else
  {
    v5 = sub_9F17C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_9F17C()
{
  v25 = v0;

  sub_E6914();
  sub_9FE50((v0 + 11), (v0 + 26));
  v1 = sub_E6964();
  v2 = sub_E74D4();
  sub_9FE88((v0 + 11));
  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[62];
    v3 = v0[63];
    v5 = v0[61];
    v22 = v0[65];
    v23 = v0[58];
    v6 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v6 = 136380931;
    sub_E5504();
    v7 = *(v5 + 88);
    sub_74E00(v5, type metadata accessor for EpisodeEntity);
    v0[50] = v7;
    sub_57150();
    v8 = sub_E7BB4();
    v10 = sub_23E64(v8, v9, &v24);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2081;
    sub_E5504();
    v11 = v0[41];
    if (v11)
    {
      v12 = v0[40];
    }

    else
    {
      v12 = 7104878;
    }

    if (v11)
    {
      v13 = v0[41];
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_23E64(v12, v13, &v24);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_0, v1, v2, "%{private}s started playing (account: %{private}s)", v6, 0x16u);
    swift_arrayDestroy();

    (*(v3 + 8))(v22, v4);
    v15 = v23;
  }

  else
  {
    v16 = v0[65];
    v17 = v0[62];
    v18 = v0[63];
    v19 = v0[58];

    (*(v18 + 8))(v16, v17);
    v15 = v19;
  }

  sub_74E00(v15, type metadata accessor for PlayEpisodeIntent);
  sub_E53A4();

  v20 = v0[1];

  return v20();
}

uint64_t sub_9F484()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9F568()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_9F64C()
{
  v27 = v0;
  v1 = v0[81];
  v2 = v0[58];

  sub_74E00(v2, type metadata accessor for PlayEpisodeIntent);
  v0[48] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
  if (!swift_dynamicCast())
  {

LABEL_13:

    v20 = v0[1];
    goto LABEL_16;
  }

  if ((*(v0[55] + 88))(v0[56], v0[54]) != enum case for PlaybackController.ResponseError.timeout(_:))
  {
    v18 = v0[55];
    v17 = v0[56];
    v19 = v0[54];

    (*(v18 + 8))(v17, v19);
    goto LABEL_13;
  }

  sub_E6914();
  sub_9FE50((v0 + 11), (v0 + 21));
  v3 = sub_E6964();
  v4 = sub_E74D4();
  sub_9FE88((v0 + 11));
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[63];
    v25 = v0[64];
    v7 = v0[61];
    v6 = v0[62];
    v8 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v8 = 136380931;
    sub_E5504();
    v9 = *(v7 + 88);
    sub_74E00(v7, type metadata accessor for EpisodeEntity);
    v0[49] = v9;
    sub_57150();
    v10 = sub_E7BB4();
    v12 = sub_23E64(v10, v11, &v26);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2081;
    sub_E5504();
    v13 = v0[39];
    if (v13)
    {
      v14 = v0[38];
    }

    else
    {
      v14 = 7104878;
    }

    if (v13)
    {
      v15 = v0[39];
    }

    else
    {
      v15 = 0xE300000000000000;
    }

    v16 = sub_23E64(v14, v15, &v26);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_0, v3, v4, "Timed out waiting for %{private}s to start playing (account: %{private}s)", v8, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v25, v6);
  }

  else
  {
    v22 = v0[63];
    v21 = v0[64];
    v23 = v0[62];

    (*(v22 + 8))(v21, v23);
  }

  sub_E53A4();

  v20 = v0[1];
LABEL_16:

  return v20();
}

void *sub_9FA60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = type metadata accessor for EpisodeEntity(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_E5D84() & 1) == 0)
  {
    return 0;
  }

  result = sub_E5D64();
  if (!result)
  {
    return result;
  }

  v10 = result;
  sub_A06F0(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_A0760(v4, v8);
    v11 = v10;
    v12 = sub_E7474();
    v14 = v8[10];
    if (v13)
    {
      if (!v14)
      {

        goto LABEL_16;
      }

      if (v12 == v8[9] && v13 == v14)
      {

        goto LABEL_21;
      }

      v16 = sub_E7BD4();

      if ((v16 & 1) == 0)
      {
LABEL_16:
        v17 = sub_E7484();
        v19 = v18;

        v20 = v8[11];
        sub_74E00(v8, type metadata accessor for EpisodeEntity);
        if ((v19 & 1) == 0)
        {
          return (v17 == v20);
        }

        return 0;
      }
    }

    else if (v14)
    {
      goto LABEL_16;
    }

LABEL_21:
    sub_74E00(v8, type metadata accessor for EpisodeEntity);
    return &dword_0 + 1;
  }

  sub_99410(v4);
  return 0;
}

uint64_t sub_9FCD0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_9FD78(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return PlayPauseWidgetIntent.perform()(a1);
}

uint64_t sub_9FE14(uint64_t a1)
{
  v2 = sub_A0350();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_9FEBC()
{
  result = qword_1300E0;
  if (!qword_1300E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1300E0);
  }

  return result;
}

unint64_t sub_9FF14()
{
  result = qword_1300E8;
  if (!qword_1300E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1300E8);
  }

  return result;
}

unint64_t sub_9FF6C()
{
  result = qword_1300F0;
  if (!qword_1300F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1300F0);
  }

  return result;
}

unint64_t sub_9FFC4()
{
  result = qword_1300F8;
  if (!qword_1300F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1300F8);
  }

  return result;
}

unint64_t sub_A001C()
{
  result = qword_130100;
  if (!qword_130100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130100);
  }

  return result;
}

unint64_t sub_A0074()
{
  result = qword_130108;
  if (!qword_130108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130108);
  }

  return result;
}

unint64_t sub_A00CC()
{
  result = qword_130110;
  if (!qword_130110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130110);
  }

  return result;
}

unint64_t sub_A0124()
{
  result = qword_130118;
  if (!qword_130118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130118);
  }

  return result;
}

unint64_t sub_A01A8()
{
  result = qword_130120;
  if (!qword_130120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130120);
  }

  return result;
}

unint64_t sub_A0200()
{
  result = qword_130128;
  if (!qword_130128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130128);
  }

  return result;
}

unint64_t sub_A0258()
{
  result = qword_130130;
  if (!qword_130130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130130);
  }

  return result;
}

unint64_t sub_A02F8()
{
  result = qword_130148;
  if (!qword_130148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130148);
  }

  return result;
}

unint64_t sub_A0350()
{
  result = qword_130150;
  if (!qword_130150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130150);
  }

  return result;
}

unint64_t sub_A03A8()
{
  result = qword_130158;
  if (!qword_130158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130158);
  }

  return result;
}

unint64_t sub_A0400()
{
  result = qword_130160;
  if (!qword_130160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130160);
  }

  return result;
}

void *sub_A04E4@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for WidgetEpisodePlayList(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WidgetEpisodePlayList(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_A06F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F4E0, &unk_EEE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A0760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A07CC()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_130170);
  __swift_project_value_buffer(v0, qword_130170);
  return sub_E5914();
}

uint64_t (*static SelectLibraryListAppIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_12CCD0 != -1)
  {
    swift_once();
  }

  v1 = sub_E5944();
  __swift_project_value_buffer(v1, qword_130170);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_A0934()
{
  v0 = sub_E5604();
  __swift_allocate_value_buffer(v0, qword_130188);
  __swift_project_value_buffer(v0, qword_130188);
  return sub_E55F4();
}

uint64_t sub_A09D0@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_A0ABC(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (*a2 == -1)
  {
    v7 = a3(0);
  }

  else
  {
    swift_once();
    v7 = a3(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a4);
  swift_beginAccess();
  v10 = *(v8 - 8);
  (*(v10 + 24))(v9, a1, v8);
  swift_endAccess();
  return (*(v10 + 8))(a1, v8);
}

uint64_t (*static SelectLibraryListAppIntent.description.modify(uint64_t a1))(void)
{
  if (qword_12CCD8 != -1)
  {
    swift_once();
  }

  v1 = sub_E5604();
  __swift_project_value_buffer(v1, qword_130188);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_A0C3C@<X0>(void *a1@<X3>, uint64_t (*a2)(void)@<X4>, uint64_t a3@<X5>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  swift_beginAccess();
  return (*(*(v8 - 8) + 16))(a5, v9, v8);
}

uint64_t sub_A0CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t a8)
{
  if (*a5 == -1)
  {
    v10 = a6(0);
  }

  else
  {
    swift_once();
    v10 = a6(0);
  }

  v11 = v10;
  v12 = __swift_project_value_buffer(v10, a7);
  swift_beginAccess();
  (*(*(v11 - 8) + 24))(v12, a1, v11);
  return swift_endAccess();
}

uint64_t sub_A0DB4(uint64_t *a1, uint64_t a2)
{
  sub_A1B4C(*a1, a1[1]);

  sub_E5514();
}

void (*SelectLibraryListAppIntent.list.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_1C5B0;
}

uint64_t SelectLibraryListAppIntent.init()@<X0>(_BYTE *a1@<X8>)
{
  v19 = a1;
  v20 = sub_E5774();
  v2 = *(v20 - 8);
  __chkstk_darwin(v20);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_E5944();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  *a1 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1301A0, &qword_F1E50);
  sub_E5914();
  (*(v15 + 56))(v13, 1, 1, v14);
  v16 = sub_E5354();
  v21 = 0;
  v22 = 0;
  v17 = *(*(v16 - 8) + 56);
  v17(v10, 1, 1, v16);
  v17(v8, 1, 1, v16);
  (*(v2 + 104))(v4, enum case for InputConnectionBehavior.default(_:), v20);
  sub_26188();
  result = sub_E5584();
  *(v19 + 1) = result;
  return result;
}

uint64_t SelectLibraryListAppIntent.init(list:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v22 = a2;
  *&v23 = a1;
  v24 = sub_E5774();
  v3 = *(v24 - 8);
  __chkstk_darwin(v24);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_E5944();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  *a2 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1301A0, &qword_F1E50);
  sub_E5914();
  v17 = *(v16 + 56);
  v23 = *v23;
  v17(v14, 1, 1, v15);
  v18 = sub_E5354();
  v25 = 0uLL;
  v19 = *(*(v18 - 8) + 56);
  v19(v11, 1, 1, v18);
  v19(v9, 1, 1, v18);
  (*(v3 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v24);
  sub_26188();
  *(v22 + 1) = sub_E5584();
  v25 = v23;
  return sub_E5514();
}

unint64_t sub_A14E8()
{
  result = qword_1301A8;
  if (!qword_1301A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1301A8);
  }

  return result;
}

unint64_t sub_A1540()
{
  result = qword_1301B0;
  if (!qword_1301B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1301B0);
  }

  return result;
}

unint64_t sub_A1598()
{
  result = qword_1301B8;
  if (!qword_1301B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1301B8);
  }

  return result;
}

unint64_t sub_A15F0()
{
  result = qword_1301C0;
  if (!qword_1301C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1301C0);
  }

  return result;
}

uint64_t sub_A1694@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CCD0 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_130170);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_A1754(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_A1B8C();
  *v4 = v2;
  v4[1] = sub_A1800;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_A1800()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

uint64_t sub_A190C(uint64_t a1)
{
  v2 = sub_A14E8();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

double sub_A1A78@<D0>(_OWORD *a1@<X8>)
{
  sub_E5504();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_A1AB8(uint64_t a1, int a2)
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

uint64_t sub_A1B00(uint64_t result, int a2, int a3)
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

uint64_t sub_A1B4C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_A1B8C()
{
  result = qword_1301C8;
  if (!qword_1301C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1301C8);
  }

  return result;
}

uint64_t sub_A1BE0()
{
  v0 = sub_E5944();
  __swift_allocate_value_buffer(v0, qword_1301D0);
  __swift_project_value_buffer(v0, qword_1301D0);
  return sub_E5914();
}

uint64_t (*static SelectWidgetShowAppIntent.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_12CCE0 != -1)
  {
    swift_once();
  }

  v1 = sub_E5944();
  __swift_project_value_buffer(v1, qword_1301D0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_A1D48()
{
  v0 = sub_E5604();
  __swift_allocate_value_buffer(v0, qword_1301E8);
  __swift_project_value_buffer(v0, qword_1301E8);
  return sub_E55F4();
}

uint64_t (*static SelectWidgetShowAppIntent.description.modify(uint64_t a1))(void)
{
  if (qword_12CCE8 != -1)
  {
    swift_once();
  }

  v1 = sub_E5604();
  __swift_project_value_buffer(v1, qword_1301E8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_A1EB0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v10 - v7;
  sub_A2024(a1, &v10 - v7);
  sub_A2024(v8, v6);

  sub_E5514();
  sub_A2094(v8);
}

uint64_t SelectWidgetShowAppIntent.show.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  __chkstk_darwin(v2 - 8);
  sub_A2024(a1, &v5 - v3);
  sub_E5514();
  return sub_A2094(a1);
}

uint64_t sub_A2024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_A2094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*SelectWidgetShowAppIntent.show.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E54F4();
  return sub_1C5B0;
}

uint64_t SelectWidgetShowAppIntent.init(show:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a1;
  v27 = a2;
  v34 = sub_E5774();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0);
  __chkstk_darwin(v33);
  v30 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = __chkstk_darwin(v5 - 8);
  v28 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v11 = __chkstk_darwin(v10 - 8);
  v29 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v15 - 8);
  v17 = v26 - v16;
  v26[1] = v26 - v16;
  v18 = sub_E5944();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  *a2 = 0;
  v26[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130200, &qword_F1FD8);
  sub_E5914();
  (*(v19 + 56))(v17, 1, 1, v18);
  v20 = type metadata accessor for ShowEntity(0);
  v21 = *(*(v20 - 8) + 56);
  v21(v14, 1, 1, v20);
  v22 = sub_E5354();
  v23 = *(*(v22 - 8) + 56);
  v23(v9, 1, 1, v22);
  v23(v28, 1, 1, v22);
  ShowEntity.SingleShowWidgetShowQuery.init()(v30);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v34);
  sub_A2610();
  *(v27 + 1) = sub_E5574();
  v24 = v35;
  sub_8262C(v35, v14);
  v21(v14, 0, 1, v20);
  sub_A2024(v14, v29);
  sub_E5514();
  sub_98B0C(v24);
  return sub_A2094(v14);
}

unint64_t sub_A2610()
{
  result = qword_12DEA8;
  if (!qword_12DEA8)
  {
    type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DEA8);
  }

  return result;
}

uint64_t SelectWidgetShowAppIntent.init()@<X0>(_BYTE *a1@<X8>)
{
  v24 = a1;
  v28 = sub_E5774();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v25 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0);
  __chkstk_darwin(v27);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12F2F8, &qword_EE770);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  __chkstk_darwin(v11 - 8);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v14 - 8);
  v16 = &v23 - v15;
  v17 = sub_E5944();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  *a1 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130200, &qword_F1FD8);
  sub_E5914();
  (*(v18 + 56))(v16, 1, 1, v17);
  v19 = type metadata accessor for ShowEntity(0);
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = sub_E5354();
  v21 = *(*(v20 - 8) + 56);
  v21(v10, 1, 1, v20);
  v21(v8, 1, 1, v20);
  ShowEntity.SingleShowWidgetShowQuery.init()(v4);
  (*(v26 + 104))(v25, enum case for InputConnectionBehavior.default(_:), v28);
  sub_A2610();
  result = sub_E5574();
  *(v24 + 1) = result;
  return result;
}

unint64_t sub_A2A68()
{
  result = qword_130208;
  if (!qword_130208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130208);
  }

  return result;
}

unint64_t sub_A2AC0()
{
  result = qword_130210;
  if (!qword_130210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130210);
  }

  return result;
}

unint64_t sub_A2B18()
{
  result = qword_130218;
  if (!qword_130218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130218);
  }

  return result;
}

uint64_t sub_A2BBC@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CCE0 != -1)
  {
    swift_once();
  }

  v2 = sub_E5944();
  v3 = __swift_project_value_buffer(v2, qword_1301D0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_A2C7C(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_A2ED0();
  *v4 = v2;
  v4[1] = sub_A1800;

  return WidgetConfigurationIntent.perform()(a2, v5);
}

uint64_t sub_A2D2C(uint64_t a1)
{
  v2 = sub_A2A68();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_A2ED0()
{
  result = qword_130220;
  if (!qword_130220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130220);
  }

  return result;
}

uint64_t sub_A2F38(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000077;
  v3 = 0x6F4E6E657473696CLL;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x64616F6C6E776F64;
    }

    else
    {
      v5 = 0x704574736574616CLL;
    }

    if (v4 == 2)
    {
      v6 = 0xEA00000000006465;
    }

    else
    {
      v6 = 0xEE007365646F7369;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6465766173;
    }

    else
    {
      v5 = 0x6F4E6E657473696CLL;
    }

    if (v4)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE900000000000077;
    }
  }

  v7 = 0x64616F6C6E776F64;
  v8 = 0xEA00000000006465;
  if (a2 != 2)
  {
    v7 = 0x704574736574616CLL;
    v8 = 0xEE007365646F7369;
  }

  if (a2)
  {
    v3 = 0x6465766173;
    v2 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_E7BD4();
  }

  return v11 & 1;
}

uint64_t sub_A3094(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006575;
  v3 = 0x6575516F54646461;
  v4 = a1;
  v5 = 0x6E5573416B72616DLL;
  v6 = 0xEE00646579616C70;
  v7 = 0xE800000000000000;
  v8 = 0x7478654E79616C70;
  if (a1 != 4)
  {
    v8 = 0x616D6B6F6F626E75;
    v7 = 0xEA00000000006B72;
  }

  if (a1 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6B72616D6B6F6F62;
  if (a1 != 1)
  {
    v10 = 0x6C5073416B72616DLL;
    v9 = 0xEC00000064657961;
  }

  if (!a1)
  {
    v10 = 0x6575516F54646461;
    v9 = 0xEA00000000006575;
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

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEE00646579616C70;
      if (v11 != 0x6E5573416B72616DLL)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x7478654E79616C70)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xEA00000000006B72;
      if (v11 != 0x616D6B6F6F626E75)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x6B72616D6B6F6F62)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v3 = 0x6C5073416B72616DLL;
      v2 = 0xEC00000064657961;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_E7BD4();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

Swift::Int sub_A3294(unsigned __int8 a1)
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

Swift::Int sub_A33B4(uint64_t a1, unsigned __int8 a2)
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_A34D0()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_130228);
  __swift_project_value_buffer(v0, qword_130228);
  return sub_E57B4();
}

uint64_t static EpisodeNoticeType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CCF0 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_130228);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_A35DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  __chkstk_darwin(v0 - 8);
  v2 = v34 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v3 - 8);
  v5 = v34 - v4;
  v6 = sub_E5944();
  v43 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1302B0, &qword_F24A0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130800, &qword_F24A8);
  v41 = v10;
  v11 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v12 = *(*(v10 - 8) + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_F21B0;
  v14 = v13 + v11;
  v35 = *(v10 + 48);
  v36 = v13;
  *(v13 + v11) = 0;
  sub_E5914();
  v15 = *(v7 + 56);
  v44 = v7 + 56;
  v45 = v15;
  v15(v5, 1, 1, v6);
  sub_E5654();
  v16 = sub_E5684();
  v17 = *(v16 - 8);
  v39 = *(v17 + 56);
  v37 = v17 + 56;
  v42 = v16;
  v39(v2, 0, 1, v16);
  v18 = v14;
  v34[1] = v9;
  sub_E56A4();
  v38 = v12;
  v19 = v41;
  v35 = *(v41 + 48);
  *(v14 + v12) = 1;
  sub_E5914();
  v20 = v5;
  v21 = v43;
  v45(v5, 1, 1, v43);
  sub_E5654();
  v22 = v39;
  v39(v2, 0, 1, v16);
  sub_E56A4();
  v35 = 2 * v12;
  v40 = v14;
  v34[2] = *(v19 + 48);
  *(v14 + 2 * v12) = 2;
  sub_E5914();
  v23 = v45;
  v45(v5, 1, 1, v21);
  sub_E5654();
  v24 = v42;
  v22(v2, 0, 1, v42);
  sub_E56A4();
  v25 = v38;
  v26 = (v18 + v35 + v38);
  v27 = v41;
  v35 = *(v41 + 48);
  *v26 = 3;
  sub_E5914();
  v23(v20, 1, 1, v43);
  sub_E5654();
  v28 = v24;
  v29 = v39;
  v39(v2, 0, 1, v28);
  sub_E56A4();
  v30 = v40;
  v35 = *(v27 + 48);
  *(v40 + 4 * v25) = 4;
  sub_E5914();
  v31 = v43;
  v45(v20, 1, 1, v43);
  sub_E5654();
  v29(v2, 0, 1, v42);
  sub_E56A4();
  *(v30 + 4 * v25 + v38) = 5;
  sub_E5914();
  v45(v20, 1, 1, v31);
  sub_E5654();
  v29(v2, 0, 1, v42);
  sub_E56A4();
  v32 = sub_B101C(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_130240 = v32;
  return result;
}

uint64_t static EpisodeNoticeType.caseDisplayRepresentations.getter()
{
  if (qword_12CCF8 != -1)
  {
    swift_once();
  }
}

PodcastsActions::EpisodeNoticeType_optional __swiftcall EpisodeNoticeType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_1202C8;
  v8._object = object;
  v5 = sub_E7B34(v4, v8);

  v7 = 6;
  if (v5 < 6)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t EpisodeNoticeType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6575516F54646461;
  v3 = 0x6E5573416B72616DLL;
  v4 = 0x7478654E79616C70;
  if (v1 != 4)
  {
    v4 = 0x616D6B6F6F626E75;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6B72616D6B6F6F62;
  if (v1 != 1)
  {
    v5 = 0x6C5073416B72616DLL;
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

unint64_t sub_A3E80()
{
  result = qword_130248;
  if (!qword_130248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130248);
  }

  return result;
}

uint64_t sub_A3EDC(uint64_t a1)
{
  sub_E7124();
}

void sub_A3FF8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6575516F54646461;
  v4 = 0xEE00646579616C70;
  v5 = 0x6E5573416B72616DLL;
  v6 = 0xE800000000000000;
  v7 = 0x7478654E79616C70;
  if (v2 != 4)
  {
    v7 = 0x616D6B6F6F626E75;
    v6 = 0xEA00000000006B72;
  }

  if (v2 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6B72616D6B6F6F62;
  if (v2 != 1)
  {
    v9 = 0x6C5073416B72616DLL;
    v8 = 0xEC00000064657961;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xEA00000000006575;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

unint64_t sub_A40D4()
{
  result = qword_130250;
  if (!qword_130250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130250);
  }

  return result;
}

unint64_t sub_A412C()
{
  result = qword_130258;
  if (!qword_130258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130258);
  }

  return result;
}

unint64_t sub_A4184()
{
  result = qword_130260;
  if (!qword_130260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130260);
  }

  return result;
}

unint64_t sub_A41DC()
{
  result = qword_130268;
  if (!qword_130268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_130270, &qword_F22A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130268);
  }

  return result;
}

unint64_t sub_A4254()
{
  result = qword_130278;
  if (!qword_130278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130278);
  }

  return result;
}

unint64_t sub_A42AC()
{
  result = qword_130280;
  if (!qword_130280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130280);
  }

  return result;
}

unint64_t sub_A4304()
{
  result = qword_130288;
  if (!qword_130288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130288);
  }

  return result;
}

unint64_t sub_A435C()
{
  result = qword_130290;
  if (!qword_130290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130290);
  }

  return result;
}

uint64_t sub_A4400(uint64_t a1)
{
  v2 = sub_81808();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_A4450()
{
  result = qword_130298;
  if (!qword_130298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130298);
  }

  return result;
}

unint64_t sub_A44A8()
{
  result = qword_1302A0;
  if (!qword_1302A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1302A0);
  }

  return result;
}

unint64_t sub_A4500()
{
  result = qword_1302A8;
  if (!qword_1302A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1302A8);
  }

  return result;
}

uint64_t sub_A4554(uint64_t a1)
{
  v2 = sub_A435C();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for TipGroup(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TipGroup(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_A46F8()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_1302B8);
  __swift_project_value_buffer(v0, qword_1302B8);
  return sub_E57B4();
}

uint64_t static LocationNoticeType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CD00 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_1302B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_A4804()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  __chkstk_darwin(v0 - 8);
  v2 = v18 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_E5944();
  v19 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130340, &qword_F2780);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307F0, &qword_F2788);
  v9 = *(*(v8 - 8) + 72);
  v10 = (*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_E9EF0;
  v12 = (v11 + v10);
  v18[0] = *(v8 + 48);
  *v12 = 0;
  sub_E5914();
  v13 = *(v7 + 56);
  v18[1] = v7 + 56;
  v20 = v13;
  v13(v5, 1, 1, v6);
  sub_E5654();
  v14 = sub_E5684();
  v15 = *(*(v14 - 8) + 56);
  v15(v2, 0, 1, v14);
  sub_E56A4();
  v18[0] = *(v8 + 48);
  v12[v9] = 1;
  sub_E5914();
  v20(v5, 1, 1, v19);
  sub_E5654();
  v15(v2, 0, 1, v14);
  sub_E56A4();
  v16 = sub_B1204(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1302D0 = v16;
  return result;
}

uint64_t static LocationNoticeType.caseDisplayRepresentations.getter()
{
  if (qword_12CD08 != -1)
  {
    swift_once();
  }
}

PodcastsActions::LocationNoticeType_optional __swiftcall LocationNoticeType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_1203A0;
  v8._object = object;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t LocationNoticeType.rawValue.getter()
{
  if (*v0)
  {
    return 0x616D6B6F6F626E75;
  }

  else
  {
    return 0x6B72616D6B6F6F62;
  }
}

uint64_t sub_A4CC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x616D6B6F6F626E75;
  }

  else
  {
    v3 = 0x6B72616D6B6F6F62;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006B72;
  }

  if (*a2)
  {
    v5 = 0x616D6B6F6F626E75;
  }

  else
  {
    v5 = 0x6B72616D6B6F6F62;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006B72;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_E7BD4();
  }

  return v8 & 1;
}

unint64_t sub_A4D74()
{
  result = qword_1302D8;
  if (!qword_1302D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1302D8);
  }

  return result;
}

Swift::Int sub_A4DC8()
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_A4E50(uint64_t a1)
{
  sub_E7124();
}

Swift::Int sub_A4EC4(uint64_t a1)
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_A4F48@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1203A0;
  v8._object = v3;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_A4FA8(uint64_t *a1@<X8>)
{
  v2 = 0x6B72616D6B6F6F62;
  if (*v1)
  {
    v2 = 0x616D6B6F6F626E75;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006B72;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_A4FF0()
{
  result = qword_1302E0;
  if (!qword_1302E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1302E0);
  }

  return result;
}

unint64_t sub_A5048()
{
  result = qword_1302E8;
  if (!qword_1302E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1302E8);
  }

  return result;
}

unint64_t sub_A50A0()
{
  result = qword_1302F0;
  if (!qword_1302F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1302F0);
  }

  return result;
}

unint64_t sub_A50F8()
{
  result = qword_1302F8;
  if (!qword_1302F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_130300, &qword_F2590);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1302F8);
  }

  return result;
}

unint64_t sub_A5170()
{
  result = qword_130308;
  if (!qword_130308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130308);
  }

  return result;
}

unint64_t sub_A51C8()
{
  result = qword_130310;
  if (!qword_130310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130310);
  }

  return result;
}

unint64_t sub_A5220()
{
  result = qword_130318;
  if (!qword_130318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130318);
  }

  return result;
}

unint64_t sub_A5278()
{
  result = qword_130320;
  if (!qword_130320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130320);
  }

  return result;
}

uint64_t sub_A531C(uint64_t a1)
{
  v2 = sub_7D1D0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_A536C()
{
  result = qword_130328;
  if (!qword_130328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130328);
  }

  return result;
}

unint64_t sub_A53C4()
{
  result = qword_130330;
  if (!qword_130330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130330);
  }

  return result;
}

unint64_t sub_A541C()
{
  result = qword_130338;
  if (!qword_130338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130338);
  }

  return result;
}

uint64_t sub_A5470(uint64_t a1)
{
  v2 = sub_A5278();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_A54D4()
{
  v0 = sub_E57C4();
  __swift_allocate_value_buffer(v0, qword_130348);
  __swift_project_value_buffer(v0, qword_130348);
  return sub_E57B4();
}

uint64_t static ShowNoticeType.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_12CD10 != -1)
  {
    swift_once();
  }

  v2 = sub_E57C4();
  v3 = __swift_project_value_buffer(v2, qword_130348);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_A55E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E260, &unk_EC260);
  __chkstk_darwin(v0 - 8);
  v2 = v18 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E268, &unk_ECC90);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = sub_E5944();
  v19 = v6;
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1303D0, &qword_F2A58);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1307E0, &unk_F2A60);
  v9 = *(v8 - 8);
  v21 = *(v9 + 72);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_E9EF0;
  v18[1] = *(v8 + 48);
  *(v11 + v10) = 0;
  sub_E5914();
  v12 = *(v7 + 56);
  v18[2] = v7 + 56;
  v20 = v12;
  v12(v5, 1, 1, v6);
  sub_E5654();
  v13 = sub_E5684();
  v14 = *(*(v13 - 8) + 56);
  v14(v2, 0, 1, v13);
  sub_E56A4();
  v15 = (v11 + v10 + v21);
  v21 = *(v8 + 48);
  *v15 = 1;
  sub_E5914();
  v20(v5, 1, 1, v19);
  sub_E5654();
  v14(v2, 0, 1, v13);
  sub_E56A4();
  v16 = sub_B13EC(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_130360 = v16;
  return result;
}

uint64_t static ShowNoticeType.caseDisplayRepresentations.getter()
{
  if (qword_12CD18 != -1)
  {
    swift_once();
  }
}

PodcastsActions::ShowNoticeType_optional __swiftcall ShowNoticeType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_120440;
  v8._object = object;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v3 = v7;
  return result;
}

uint64_t ShowNoticeType.rawValue.getter()
{
  if (*v0)
  {
    return 0x776F6C6C6F666E75;
  }

  else
  {
    return 0x776F6C6C6F66;
  }
}

uint64_t sub_A5AB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x776F6C6C6F666E75;
  }

  else
  {
    v3 = 0x776F6C6C6F66;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x776F6C6C6F666E75;
  }

  else
  {
    v5 = 0x776F6C6C6F66;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_E7BD4();
  }

  return v8 & 1;
}

unint64_t sub_A5B60()
{
  result = qword_130368;
  if (!qword_130368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130368);
  }

  return result;
}

Swift::Int sub_A5BB4()
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_A5C34(uint64_t a1)
{
  sub_E7124();
}

Swift::Int sub_A5CA0(uint64_t a1)
{
  sub_E7CC4();
  sub_E7124();

  return sub_E7CF4();
}

uint64_t sub_A5D1C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_120440;
  v8._object = v3;
  v5 = sub_E7B34(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_A5D7C(uint64_t *a1@<X8>)
{
  v2 = 0x776F6C6C6F66;
  if (*v1)
  {
    v2 = 0x776F6C6C6F666E75;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_A5DBC()
{
  result = qword_130370;
  if (!qword_130370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130370);
  }

  return result;
}

unint64_t sub_A5E14()
{
  result = qword_130378;
  if (!qword_130378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130378);
  }

  return result;
}

unint64_t sub_A5E6C()
{
  result = qword_130380;
  if (!qword_130380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130380);
  }

  return result;
}

unint64_t sub_A5EC4()
{
  result = qword_130388;
  if (!qword_130388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_130390, &qword_F2870);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130388);
  }

  return result;
}

unint64_t sub_A5F3C()
{
  result = qword_130398;
  if (!qword_130398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130398);
  }

  return result;
}

unint64_t sub_A5F94()
{
  result = qword_1303A0;
  if (!qword_1303A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1303A0);
  }

  return result;
}

unint64_t sub_A5FEC()
{
  result = qword_1303A8;
  if (!qword_1303A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1303A8);
  }

  return result;
}

unint64_t sub_A6044()
{
  result = qword_1303B0;
  if (!qword_1303B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1303B0);
  }

  return result;
}

uint64_t sub_A60E8(uint64_t a1)
{
  v2 = sub_83BF0();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_A6138()
{
  result = qword_1303B8;
  if (!qword_1303B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1303B8);
  }

  return result;
}

unint64_t sub_A6190()
{
  result = qword_1303C0;
  if (!qword_1303C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1303C0);
  }

  return result;
}

unint64_t sub_A61E8()
{
  result = qword_1303C8;
  if (!qword_1303C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1303C8);
  }

  return result;
}

uint64_t sub_A623C(uint64_t a1)
{
  v2 = sub_A6044();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t DonationController.__allocating_init(objectGraph:)(uint64_t a1)
{
  v1 = sub_E6234();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DonationRepository();
  sub_E6DA4();
  v5 = v9[1];
  sub_E6DA4();
  sub_E6664();
  sub_E6DA4();

  v6 = v9[0];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = v5;
  (*(v2 + 32))(v7 + OBJC_IVAR____TtC15PodcastsActions18DonationController_donationService, v4, v1);
  *(v7 + OBJC_IVAR____TtC15PodcastsActions18DonationController_inMemoryStateRepository) = v6;
  return v7;
}

uint64_t DonationController.startLibraryDonations(with:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  v2[9] = swift_task_alloc();
  v3 = sub_E6274();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();

  return _swift_task_switch(sub_A64E8, 0, 0);
}

uint64_t sub_A64E8()
{
  sub_A6B7C();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1305D0, &qword_E9B10);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_A65AC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 16, v1, v1);
}

uint64_t sub_A65AC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_A6A94;
  }

  else
  {
    v2 = sub_A66C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A66C0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  v5 = sub_A6D10();
  *v3 = v0;
  v3[1] = sub_A6790;
  v6 = v0[12];
  v7 = v0[7];

  return dispatch thunk of IntentDispatcher.dispatch<A>(_:objectGraph:)(v6, v4, v7, &type metadata for LibrarySnapshotIntent, v5, v1, v2);
}

uint64_t sub_A6790()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_A6B04;
  }

  else
  {
    v2 = sub_A68A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_A68A4()
{
  v1 = v0[16];
  v2 = v0[8];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v3 = *(v2 + 24);
  v4 = sub_E6264();
  v5 = *(v3 + 16);
  *(swift_task_alloc() + 16) = v4;
  os_unfair_lock_lock((v5 + 24));
  sub_A78B0((v5 + 16));
  if (v1)
  {

    os_unfair_lock_unlock((v5 + 24));
  }

  else
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = v0[9];
    v9 = v0[10];
    v10 = v0[8];
    os_unfair_lock_unlock((v5 + 24));

    sub_E6634();
    v11 = sub_E7324();
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;

    sub_A75C0(0, 0, v8, &unk_F2A80, v12);

    (*(v7 + 8))(v6, v9);

    v13 = v0[1];

    v13();
  }
}

uint64_t sub_A6A94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A6B04()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_A6B7C()
{
  v1 = v0;
  v2 = sub_E63E4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, enum case for InMemoryStateDomain.followState(_:), v2);
  v6 = sub_E6654();
  (*(v3 + 8))(v5, v2);
  v9[1] = v6;
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1304B8, &qword_F2B10);
  sub_A7CD4();
  v7 = sub_E6B44();

  *(v1 + 16) = v7;
}

unint64_t sub_A6D10()
{
  result = qword_1303E8;
  if (!qword_1303E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1303E8);
  }

  return result;
}

uint64_t DonationController.deinit()
{

  v1 = OBJC_IVAR____TtC15PodcastsActions18DonationController_donationService;
  v2 = sub_E6234();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DonationController.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15PodcastsActions18DonationController_donationService;
  v2 = sub_E6234();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_A6EA0(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_E7324();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v6;
    sub_A75C0(0, 0, v4, &unk_F2B18, v8);
  }

  return result;
}

uint64_t sub_A6FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v5 = sub_E6974();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_A7080, 0, 0);
}

uint64_t sub_A7080()
{
  sub_E60B4();
  v1 = sub_E6644();
  *(v0 + 88) = v1;
  sub_A7C40(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_A7150;

  return sub_A7E34(v1);
}

uint64_t sub_A7150(uint64_t a1)
{
  v3 = *v1;
  v6 = *v1;
  *(v3 + 104) = a1;

  v4 = swift_task_alloc();
  *(v3 + 112) = v4;
  *v4 = v6;
  v4[1] = sub_A72D4;

  return DonationService.donate(podcasts:stations:)(a1, _swiftEmptyArrayStorage);
}

uint64_t sub_A72D4()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_A7438, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_A7438()
{
  sub_E6924();
  swift_errorRetain();
  v1 = sub_E6964();
  v2 = sub_E74C4();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_0, v1, v2, "Something went wrong while performing Cascade donations: %@", v3, 0xCu);
    sub_110AC(v4, &unk_12DB20, &unk_F0760);
  }

  else
  {
  }

  (*(v0[9] + 8))(v0[10], v0[8]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_A75C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_131ED0, &qword_F5BC0);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_8A08(a3, v25 - v10);
  v12 = sub_E7324();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_110AC(v11, &unk_131ED0, &qword_F5BC0);
  }

  else
  {
    sub_E7314();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_E7294();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_E70A4() + 32;
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

      sub_110AC(a3, &unk_131ED0, &qword_F5BC0);

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

  sub_110AC(a3, &unk_131ED0, &qword_F5BC0);
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

uint64_t sub_A78D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_5E10;

  return sub_A6FC0(a1, v4, v5, v6);
}

uint64_t type metadata accessor for DonationController(uint64_t a1)
{
  result = qword_130418;
  if (!qword_130418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_A79D8(uint64_t a1)
{
  result = sub_E6234();
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

uint64_t sub_A7A98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5E10;

  return sub_8E514(a1, v4);
}

uint64_t sub_A7B50()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_A7B88(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_588C;

  return sub_8E514(a1, v4);
}

uint64_t sub_A7C94()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_A7CD4()
{
  result = qword_1304C0;
  if (!qword_1304C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1304B8, &qword_F2B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1304C0);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_A7D78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_588C;

  return sub_A6FC0(a1, v4, v5, v6);
}

uint64_t sub_A7E34(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_E6974();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_A7F00, 0, 0);
}

uint64_t sub_A7F00()
{
  v26 = v0;
  v1 = v0[5];
  v2 = *(v0[6] + 16);
  v0[11] = v2;
  *(swift_task_alloc() + 16) = v1;
  os_unfair_lock_lock((v2 + 24));
  sub_A9088((v2 + 16), v25);
  os_unfair_lock_unlock((v2 + 24));
  v4 = v25[0];
  v3 = v25[1];
  v0[12] = v25[0];
  v0[13] = v3;

  v0[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130570, &unk_F2B60);
  sub_A90A4();
  if (sub_E7404())
  {
    sub_E6924();

    v5 = sub_E6964();
    v6 = sub_E7494();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[10];
    v10 = v0[7];
    v9 = v0[8];
    if (v7)
    {
      v24 = v0[10];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v25[0] = v12;
      *v11 = 136315138;
      v13 = sub_E7204();
      v15 = sub_23E64(v13, v14, v25);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_0, v5, v6, "Fetching from MAPI missing donation data for shows with IDs %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);

      v16 = *(v9 + 8);
      v16(v24, v10);
    }

    else
    {

      v16 = *(v9 + 8);
      v16(v8, v10);
    }

    v0[14] = v16;
    v19 = v0[6];
    v20 = v19[6];
    v21 = v19[7];
    __swift_project_boxed_opaque_existential_1(v19 + 3, v20);
    v0[4] = v3;

    v22 = swift_task_alloc();
    v0[15] = v22;
    v23 = sub_A9108();
    *v22 = v0;
    v22[1] = sub_A8220;

    return dispatch thunk of MediaRequestControllerProtocol.send<A>(_:)(v0 + 3, v0 + 4, &type metadata for PodcastDonationDataMediaAPIRequest, v23, v20, v21);
  }

  else
  {

    v17 = v0[1];

    return v17(v4);
  }
}

uint64_t sub_A8220()
{
  *(*v1 + 128) = v0;

  if (v0)
  {

    v2 = sub_A8434;
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v2 = sub_A8348;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_A8348()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[3];
  *(swift_task_alloc() + 16) = v3;
  os_unfair_lock_lock((v2 + 24));
  sub_A91C4((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));
  if (!v1)
  {

    v5 = v0[12];
    sub_22E7C(v3);

    v4 = v0[1];

    v4(v5);
  }
}

uint64_t sub_A8434()
{
  v22 = v0;
  sub_E6924();

  swift_errorRetain();
  v1 = sub_E6964();
  v2 = sub_E74C4();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[14];
  v5 = v0[9];
  v6 = v0[7];
  if (v3)
  {
    v20 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v7 = 136315394;
    v18 = v5;
    v19 = v4;
    v10 = sub_E7204();
    v12 = v11;

    v13 = sub_23E64(v10, v12, &v21);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_0, v1, v2, "Unable to fetch donation data for shows with AdamIDs %s. Error: %@", v7, 0x16u);
    sub_A915C(v8);

    __swift_destroy_boxed_opaque_existential_1(v9);

    v19(v18, v20);
  }

  else
  {

    v4(v5, v6);
  }

  v21 = v0[12];
  sub_22E7C(_swiftEmptyArrayStorage);
  v15 = v21;

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_A86A4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_A8708(void *a1, uint64_t a2)
{
  v37 = sub_E6774();
  v5 = *(v37 - 8);
  v6 = __chkstk_darwin(v37);
  v36 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v35 = v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70);
  v33 = *(v9 - 8);
  v34 = v9;
  __chkstk_darwin(v9);
  v11 = (v27 - v10);
  v12 = *(a2 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v27[1] = v2;
    v28 = a1;
    v40 = _swiftEmptyArrayStorage;
    sub_15EC8(0, v12, 0);
    v13 = v40;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v16 = (a2 + ((*(v14 + 64) + 32) & ~*(v14 + 64)));
    v30 = *(v14 + 56);
    v31 = v15;
    v29 = (v14 - 8);
    v32 = v14;
    do
    {
      v38 = v12;
      v39 = v13;
      v17 = v35;
      v18 = v37;
      v19 = v31;
      v31(v35, v16, v37);
      *v11 = sub_E6764();
      v20 = v36;
      v19(v36, v17, v18);
      sub_E6764();
      sub_E6754();
      sub_E6744();
      sub_E6494();
      v21 = *v29;
      (*v29)(v20, v18);
      v22 = v17;
      v13 = v39;
      v21(v22, v18);
      v40 = v13;
      v24 = v13[2];
      v23 = v13[3];
      if (v24 >= v23 >> 1)
      {
        sub_15EC8((v23 > 1), v24 + 1, 1);
        v13 = v40;
      }

      v13[2] = v24 + 1;
      sub_A9610(v11, v13 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24);
      v16 += v30;
      v12 = v38 - 1;
    }

    while (v38 != 1);
    a1 = v28;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *a1;
  sub_A91E0(v13, isUniquelyReferenced_nonNull_native, &v40);

  *a1 = v40;
  return result;
}

uint64_t sub_A8A4C(uint64_t *a1, uint64_t a2)
{
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70);
  v36 = *(v3 - 8);
  v37 = v3;
  v4 = __chkstk_darwin(v3);
  v35 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v4);
  v7 = &v30 - v6;
  v8 = sub_E64B4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v15 = *(v9 + 16);
    v13 = v9 + 16;
    v14 = v15;
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v38 = *(v13 + 56);
    v17 = (v13 - 8);
    v32 = (v13 + 16);
    v18 = _swiftEmptyArrayStorage;
    v33 = v13;
    v34 = v7;
    v15(v11, v16, v8);
    while (1)
    {
      v19 = sub_E64A4();
      if (v21)
      {
        sub_95FBC(v19, v20, v21);
        (*v17)(v11, v8);
      }

      else
      {
        v22 = *(v37 + 48);
        v23 = v35;
        *v35 = v19;
        (*v32)(v23 + v22, v11, v8);
        sub_A9610(v23, v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_236D0(0, v18[2] + 1, 1, v18);
        }

        v25 = v18[2];
        v24 = v18[3];
        if (v25 >= v24 >> 1)
        {
          v18 = sub_236D0((v24 > 1), v25 + 1, 1, v18);
        }

        v18[2] = v25 + 1;
        v26 = v18 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v25;
        v7 = v34;
        sub_A9610(v34, v26);
      }

      v16 += v38;
      if (!--v12)
      {
        break;
      }

      v14(v11, v16, v8);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v27 = v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v27;
  sub_A91E0(v18, isUniquelyReferenced_nonNull_native, &v39);

  *v27 = v39;
  return result;
}

uint64_t sub_A8D58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37[0] = a3;
  v45 = sub_E64B4();
  v5 = __chkstk_darwin(v45);
  v44 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v39 = v37 - v8;
  result = __chkstk_darwin(v7);
  v43 = v37 - v11;
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = *a1;
    v14 = (a2 + 32);
    v42 = v10 + 4;
    v37[2] = v10 + 1;
    v37[3] = v10 + 2;
    v15 = _swiftEmptyArrayStorage;
    v46 = _swiftEmptyArrayStorage;
    v16 = v10;
    v38 = v13;
    do
    {
      while (1)
      {
        v18 = *v14++;
        v17 = v18;
        if (!*(v13 + 16))
        {
          break;
        }

        v19 = sub_E0728(v17);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(v13 + 56);
        v41 = v16[9];
        v22 = v16[2];
        v23 = v39;
        v24 = v45;
        v22(v39, v21 + v41 * v19, v45);
        v25 = v43;
        v40 = v16[4];
        v40(v43, v23, v24);
        v22(v44, v25, v24);
        v26 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_234CC(0, v26[2] + 1, 1, v26);
        }

        v28 = v26[2];
        v27 = v26[3];
        if (v28 >= v27 >> 1)
        {
          v26 = sub_234CC((v27 > 1), v28 + 1, 1, v26);
        }

        v29 = v16[1];
        v30 = v16;
        v31 = v45;
        v29(v43, v45);
        v26[2] = v28 + 1;
        v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v46 = v26;
        v33 = v31;
        v16 = v30;
        result = (v40)(v26 + v32 + v28 * v41, v44, v33);
        v13 = v38;
        if (!--v12)
        {
          goto LABEL_17;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_238C0(0, *(v15 + 2) + 1, 1, v15);
        v15 = result;
      }

      v35 = *(v15 + 2);
      v34 = *(v15 + 3);
      if (v35 >= v34 >> 1)
      {
        result = sub_238C0((v34 > 1), v35 + 1, 1, v15);
        v15 = result;
      }

      *(v15 + 2) = v35 + 1;
      *&v15[8 * v35 + 32] = v17;
      --v12;
    }

    while (v12);
  }

  else
  {
    v15 = _swiftEmptyArrayStorage;
    v46 = _swiftEmptyArrayStorage;
  }

LABEL_17:
  v36 = v37[0];
  *v37[0] = v46;
  *(v36 + 8) = v15;
  return result;
}

unint64_t sub_A90A4()
{
  result = qword_130578;
  if (!qword_130578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_130570, &unk_F2B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130578);
  }

  return result;
}

unint64_t sub_A9108()
{
  result = qword_130580;
  if (!qword_130580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130580);
  }

  return result;
}

uint64_t sub_A915C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DB20, &unk_F0760);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A91E0(uint64_t a1, char a2, void *a3)
{
  v56 = a3;
  v6 = sub_E64B4();
  v54 = *(v6 - 8);
  __chkstk_darwin(v6);
  v55 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70);
  result = __chkstk_darwin(v8);
  v12 = (&v47 - v11);
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = *(result + 48);
    v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v52 = *(v10 + 72);
    v50 = a1;
    v48 = v15;
    sub_A9680(a1 + v15, &v47 - v11);
    v17 = (v54 + 32);
    v16 = *(v54 + 32);
    v18 = *v12;
    v51 = v14;
    v53 = v6;
    v49 = v16;
    v16(v55, v12 + v14, v6);
    v19 = *v56;
    v21 = sub_E0728(v18);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_23;
    }

    LOBYTE(v3) = v20;
    if (v19[3] >= v24)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_7;
    }

    sub_E2594(v24, a2 & 1);
    v25 = sub_E0728(v18);
    if ((v3 & 1) == (v26 & 1))
    {
      v21 = v25;
LABEL_7:
      v27 = v13;
      while (1)
      {
        v13 = (v17 + 1);
        v28 = *v56;
        if (v3)
        {
          v29 = v28[7] + *(v54 + 72) * v21;
          v21 = v53;
          result = (*(v54 + 40))(v29, v55, v53);
        }

        else
        {
          v28[(v21 >> 6) + 8] |= 1 << v21;
          *(v28[6] + 8 * v21) = v18;
          v30 = v28[7] + *(v54 + 72) * v21;
          v21 = v53;
          result = v49(v30, v55, v53);
          v31 = v28[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_24;
          }

          v28[2] = v33;
        }

        v34 = v27 - 1;
        if (v27 == (&dword_0 + 1))
        {
          return result;
        }

        v3 = v50 + v52 + v48;
        while (1)
        {
          sub_A9680(v3, v12);
          v18 = *v12;
          v35 = *v17;
          (*v17)(v55, v12 + v51, v21);
          v36 = *v56;
          v37 = sub_E0728(v18);
          v39 = v36[2];
          v40 = (v38 & 1) == 0;
          v32 = __OFADD__(v39, v40);
          v41 = v39 + v40;
          if (v32)
          {
            break;
          }

          v42 = v38;
          if (v36[3] < v41)
          {
            sub_E2594(v41, 1);
            v37 = sub_E0728(v18);
            if ((v42 & 1) != (v43 & 1))
            {
              goto LABEL_26;
            }
          }

          v44 = *v56;
          if (v42)
          {
            v21 = v53;
            result = (*(v54 + 40))(v44[7] + *(v54 + 72) * v37, v55, v53);
          }

          else
          {
            v44[(v37 >> 6) + 8] |= 1 << v37;
            *(v44[6] + 8 * v37) = v18;
            v21 = v53;
            result = v35((v44[7] + *(v54 + 72) * v37), v55, v53);
            v45 = v44[2];
            v32 = __OFADD__(v45, 1);
            v46 = v45 + 1;
            if (v32)
            {
              goto LABEL_24;
            }

            v44[2] = v46;
          }

          v3 += v52;
          if (!--v34)
          {
            return result;
          }
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v27 = v13;
        sub_E3334();
      }
    }

LABEL_26:
    result = sub_E7C54();
    __break(1u);
  }

  return result;
}

uint64_t sub_A9610(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_A9680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_A9704()
{
  result = qword_130588;
  if (!qword_130588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_130590, &qword_F2BD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_130588);
  }

  return result;
}

uint64_t sub_A9768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  __chkstk_darwin(v4 - 8);
  v58 = v56 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130620, &qword_E9EA8);
  __chkstk_darwin(v6 - 8);
  v57 = v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFB0, &qword_E9EB0);
  __chkstk_darwin(v8 - 8);
  v63 = v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130630, &qword_E9EB8);
  __chkstk_darwin(v10 - 8);
  v12 = v56 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFC0, &qword_E9EC0);
  __chkstk_darwin(v13 - 8);
  v62 = v56 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130640, &qword_E9EC8);
  __chkstk_darwin(v15 - 8);
  v61 = v56 - v16;
  v17 = sub_E5FE4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v60 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_E6974();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E6934();

  v24 = sub_E6964();
  v25 = sub_E74D4();
  v26 = os_log_type_enabled(v24, v25);
  v59 = a2;
  if (v26)
  {
    v27 = swift_slowAlloc();
    *v27 = 134217984;
    *(v27 + 4) = *(a1 + 16);

    _os_log_impl(&dword_0, v24, v25, "Fetching donation data for %ld podcasts", v27, 0xCu);
  }

  else
  {
  }

  (*(v21 + 8))(v23, v20);
  (*(v18 + 104))(v60, enum case for MediaRequest.RequestType.catalog(_:), v17);
  v28 = enum case for MediaRequest.ContentType.podcast(_:);
  v29 = sub_E6014();
  v30 = *(v29 - 8);
  v31 = v61;
  (*(v30 + 104))(v61, v28, v29);
  (*(v30 + 56))(v31, 0, 1, v29);
  v32 = sub_E60A4();
  (*(*(v32 - 8) + 56))(v62, 1, 1, v32);
  v33 = sub_E6034();
  v34 = *(*(v33 - 8) + 56);
  v56[4] = v12;
  v34(v12, 1, 1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_130598, &qword_F2C30);
  v35 = sub_E6054();
  v36 = *(v35 - 8);
  v37 = *(v36 + 72);
  v38 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_E9EF0;
  v56[3] = v39;
  v40 = v39 + v38;
  v41 = *(v36 + 104);
  v41(v40, enum case for MediaRequest.Field.name(_:), v35);
  v41(v40 + v37, enum case for MediaRequest.Field.artistName(_:), v35);
  v42 = *(a1 + 16);
  if (v42)
  {
    v65 = _swiftEmptyArrayStorage;
    sub_15D18(0, v42, 0);
    v43 = v65;
    v44 = (a1 + 32);
    sub_10D78();
    do
    {
      v45 = *v44++;
      v64 = v45;
      v46 = sub_E7854();
      v48 = v47;
      v65 = v43;
      v50 = v43[2];
      v49 = v43[3];
      if (v50 >= v49 >> 1)
      {
        sub_15D18((v49 > 1), v50 + 1, 1);
        v43 = v65;
      }

      v43[2] = v50 + 1;
      v51 = &v43[2 * v50];
      v51[4] = v46;
      v51[5] = v48;
      --v42;
    }

    while (v42);
  }

  v52 = sub_E6024();
  (*(*(v52 - 8) + 56))(v63, 1, 1, v52);
  v53 = sub_E6094();
  (*(*(v53 - 8) + 56))(v57, 1, 1, v53);
  v54 = sub_E59C4();
  (*(*(v54 - 8) + 56))(v58, 1, 1, v54);
  v56[2] = sub_AF0E8(_swiftEmptyArrayStorage);
  v56[1] = sub_AF0E8(_swiftEmptyArrayStorage);
  v56[0] = sub_AF2D0(_swiftEmptyArrayStorage);
  sub_AF4B8(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF7A4(_swiftEmptyArrayStorage);
  sub_AF98C(_swiftEmptyArrayStorage);
  sub_AFB74(_swiftEmptyArrayStorage);
  sub_AFD5C(_swiftEmptyArrayStorage);
  return sub_E6074();
}