uint64_t sub_1D530C934(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a4;
  v42 = a3;
  v7 = type metadata accessor for MusicItemCache.Key(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v33 - v12);
  v43 = sub_1D560C368();
  v44 = *(v43 - 8);
  v14 = MEMORY[0x1EEE9AC00](v43);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = a2[3];
  v19 = a2[4];
  v35 = __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v20(v18, v19);
  v34 = a1;
  swift_beginAccess();
  v21 = *(a1 + 16);

  v22 = sub_1D4ED0594(v17, v21);

  v23 = *(v44 + 8);
  v44 += 8;
  v36 = v23;
  v23(v17, v43);
  v24 = MEMORY[0x1E69E7CD0];
  if (v22)
  {
    v24 = v22;
  }

  v51 = v24;
  v26 = *v42;
  v25 = v42[1];

  sub_1D560E358();
  *v13 = v26;
  v27 = v13;
  v28 = v38;
  *(v27 + 8) = v25;
  sub_1D531A3A8(v27, v39, type metadata accessor for MusicItemCache.Key);
  sub_1D52C7BE0();
  sub_1D50F3940(v28);
  v29 = v37;
  v20(v18, v19);
  v30 = v34;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v45 = *(v30 + 16);
  sub_1D4F13514();
  *(v30 + 16) = v45;
  v36(v29, v43);
  swift_endAccess();
  swift_beginAccess();

  sub_1D4ED05AC();

  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
    if (__OFADD__(*(&v47 + 1), 1))
    {
      __break(1u);
    }

    else
    {
      *(&v50 + 1) = *(&v47 + 1) + 1;
      sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
      sub_1D4ED16E4(&v48, &v45);
      swift_beginAccess();
      sub_1D4EC82C0(&v45, v28);
      swift_endAccess();
      sub_1D50F3A34(&v48);
      return sub_1D50F3940(v27);
    }
  }

  else
  {
    sub_1D4E7661C(&v45, &qword_1EC7EA3F0, &qword_1D5634C00);
    *(&v49 + 1) = type metadata accessor for SocialProfile(0);
    *&v50 = sub_1D4E74DDC(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    sub_1D531A3A8(v42, boxed_opaque_existential_0, type metadata accessor for SocialProfile);
    *(&v50 + 1) = 1;
    sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
    sub_1D4ED16E4(&v48, &v45);
    swift_beginAccess();
    sub_1D4EC82C0(&v45, v28);
    swift_endAccess();
    sub_1D50F3940(v27);
    return sub_1D50F3A34(&v48);
  }

  return result;
}

uint64_t sub_1D530CEA4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a4;
  v42 = a3;
  v7 = type metadata accessor for MusicItemCache.Key(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v33 - v12);
  v43 = sub_1D560C368();
  v44 = *(v43 - 8);
  v14 = MEMORY[0x1EEE9AC00](v43);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = a2[3];
  v19 = a2[4];
  v35 = __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v20(v18, v19);
  v34 = a1;
  swift_beginAccess();
  v21 = *(a1 + 16);

  v22 = sub_1D4ED0594(v17, v21);

  v23 = *(v44 + 8);
  v44 += 8;
  v36 = v23;
  v23(v17, v43);
  v24 = MEMORY[0x1E69E7CD0];
  if (v22)
  {
    v24 = v22;
  }

  v51 = v24;
  v26 = *v42;
  v25 = v42[1];

  sub_1D560E358();
  *v13 = v26;
  v27 = v13;
  v28 = v38;
  *(v27 + 8) = v25;
  sub_1D531A3A8(v27, v39, type metadata accessor for MusicItemCache.Key);
  sub_1D52C7BE0();
  sub_1D50F3940(v28);
  v29 = v37;
  v20(v18, v19);
  v30 = v34;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v45 = *(v30 + 16);
  sub_1D4F13514();
  *(v30 + 16) = v45;
  v36(v29, v43);
  swift_endAccess();
  swift_beginAccess();

  sub_1D4ED05AC();

  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
    if (__OFADD__(*(&v47 + 1), 1))
    {
      __break(1u);
    }

    else
    {
      *(&v50 + 1) = *(&v47 + 1) + 1;
      sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
      sub_1D4ED16E4(&v48, &v45);
      swift_beginAccess();
      sub_1D4EC82C0(&v45, v28);
      swift_endAccess();
      sub_1D50F3A34(&v48);
      return sub_1D50F3940(v27);
    }
  }

  else
  {
    sub_1D4E7661C(&v45, &qword_1EC7EA3F0, &qword_1D5634C00);
    *(&v49 + 1) = type metadata accessor for Playlist.Folder(0);
    *&v50 = sub_1D4E74DDC(&unk_1EDD52B98, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    sub_1D531A3A8(v42, boxed_opaque_existential_0, type metadata accessor for Playlist.Folder);
    *(&v50 + 1) = 1;
    sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
    sub_1D4ED16E4(&v48, &v45);
    swift_beginAccess();
    sub_1D4EC82C0(&v45, v28);
    swift_endAccess();
    sub_1D50F3940(v27);
    return sub_1D50F3A34(&v48);
  }

  return result;
}

uint64_t sub_1D530D414(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a4;
  v42 = a3;
  v7 = type metadata accessor for MusicItemCache.Key(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v33 - v12);
  v43 = sub_1D560C368();
  v44 = *(v43 - 8);
  v14 = MEMORY[0x1EEE9AC00](v43);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = a2[3];
  v19 = a2[4];
  v35 = __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v20(v18, v19);
  v34 = a1;
  swift_beginAccess();
  v21 = *(a1 + 16);

  v22 = sub_1D4ED0594(v17, v21);

  v23 = *(v44 + 8);
  v44 += 8;
  v36 = v23;
  v23(v17, v43);
  v24 = MEMORY[0x1E69E7CD0];
  if (v22)
  {
    v24 = v22;
  }

  v51 = v24;
  v26 = *v42;
  v25 = v42[1];

  sub_1D560E358();
  *v13 = v26;
  v27 = v13;
  v28 = v38;
  *(v27 + 8) = v25;
  sub_1D531A3A8(v27, v39, type metadata accessor for MusicItemCache.Key);
  sub_1D52C7BE0();
  sub_1D50F3940(v28);
  v29 = v37;
  v20(v18, v19);
  v30 = v34;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v45 = *(v30 + 16);
  sub_1D4F13514();
  *(v30 + 16) = v45;
  v36(v29, v43);
  swift_endAccess();
  swift_beginAccess();

  sub_1D4ED05AC();

  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
    if (__OFADD__(*(&v47 + 1), 1))
    {
      __break(1u);
    }

    else
    {
      *(&v50 + 1) = *(&v47 + 1) + 1;
      sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
      sub_1D4ED16E4(&v48, &v45);
      swift_beginAccess();
      sub_1D4EC82C0(&v45, v28);
      swift_endAccess();
      sub_1D50F3A34(&v48);
      return sub_1D50F3940(v27);
    }
  }

  else
  {
    sub_1D4E7661C(&v45, &qword_1EC7EA3F0, &qword_1D5634C00);
    *(&v49 + 1) = type metadata accessor for MusicMovie(0);
    *&v50 = sub_1D4E74DDC(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    sub_1D531A3A8(v42, boxed_opaque_existential_0, type metadata accessor for MusicMovie);
    *(&v50 + 1) = 1;
    sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
    sub_1D4ED16E4(&v48, &v45);
    swift_beginAccess();
    sub_1D4EC82C0(&v45, v28);
    swift_endAccess();
    sub_1D50F3940(v27);
    return sub_1D50F3A34(&v48);
  }

  return result;
}

uint64_t sub_1D530D984(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a4;
  v42 = a3;
  v7 = type metadata accessor for MusicItemCache.Key(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v33 - v12);
  v43 = sub_1D560C368();
  v44 = *(v43 - 8);
  v14 = MEMORY[0x1EEE9AC00](v43);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = a2[3];
  v19 = a2[4];
  v35 = __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v20(v18, v19);
  v34 = a1;
  swift_beginAccess();
  v21 = *(a1 + 16);

  v22 = sub_1D4ED0594(v17, v21);

  v23 = *(v44 + 8);
  v44 += 8;
  v36 = v23;
  v23(v17, v43);
  v24 = MEMORY[0x1E69E7CD0];
  if (v22)
  {
    v24 = v22;
  }

  v51 = v24;
  v26 = *v42;
  v25 = v42[1];

  sub_1D560E358();
  *v13 = v26;
  v27 = v13;
  v28 = v38;
  *(v27 + 8) = v25;
  sub_1D531A3A8(v27, v39, type metadata accessor for MusicItemCache.Key);
  sub_1D52C7BE0();
  sub_1D50F3940(v28);
  v29 = v37;
  v20(v18, v19);
  v30 = v34;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v45 = *(v30 + 16);
  sub_1D4F13514();
  *(v30 + 16) = v45;
  v36(v29, v43);
  swift_endAccess();
  swift_beginAccess();

  sub_1D4ED05AC();

  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
    if (__OFADD__(*(&v47 + 1), 1))
    {
      __break(1u);
    }

    else
    {
      *(&v50 + 1) = *(&v47 + 1) + 1;
      sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
      sub_1D4ED16E4(&v48, &v45);
      swift_beginAccess();
      sub_1D4EC82C0(&v45, v28);
      swift_endAccess();
      sub_1D50F3A34(&v48);
      return sub_1D50F3940(v27);
    }
  }

  else
  {
    sub_1D4E7661C(&v45, &qword_1EC7EA3F0, &qword_1D5634C00);
    *(&v49 + 1) = type metadata accessor for EditorialItem(0);
    *&v50 = sub_1D4E74DDC(&qword_1EDD57650, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    sub_1D531A3A8(v42, boxed_opaque_existential_0, type metadata accessor for EditorialItem);
    *(&v50 + 1) = 1;
    sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
    sub_1D4ED16E4(&v48, &v45);
    swift_beginAccess();
    sub_1D4EC82C0(&v45, v28);
    swift_endAccess();
    sub_1D50F3940(v27);
    return sub_1D50F3A34(&v48);
  }

  return result;
}

uint64_t sub_1D530DEF4(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a4;
  v42 = a3;
  v7 = type metadata accessor for MusicItemCache.Key(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v33 - v12);
  v43 = sub_1D560C368();
  v44 = *(v43 - 8);
  v14 = MEMORY[0x1EEE9AC00](v43);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = a2[3];
  v19 = a2[4];
  v35 = __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v20(v18, v19);
  v34 = a1;
  swift_beginAccess();
  v21 = *(a1 + 16);

  v22 = sub_1D4ED0594(v17, v21);

  v23 = *(v44 + 8);
  v44 += 8;
  v36 = v23;
  v23(v17, v43);
  v24 = MEMORY[0x1E69E7CD0];
  if (v22)
  {
    v24 = v22;
  }

  v51 = v24;
  v26 = *v42;
  v25 = v42[1];

  sub_1D560E358();
  *v13 = v26;
  v27 = v13;
  v28 = v38;
  *(v27 + 8) = v25;
  sub_1D531A3A8(v27, v39, type metadata accessor for MusicItemCache.Key);
  sub_1D52C7BE0();
  sub_1D50F3940(v28);
  v29 = v37;
  v20(v18, v19);
  v30 = v34;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v45 = *(v30 + 16);
  sub_1D4F13514();
  *(v30 + 16) = v45;
  v36(v29, v43);
  swift_endAccess();
  swift_beginAccess();

  sub_1D4ED05AC();

  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
    if (__OFADD__(*(&v47 + 1), 1))
    {
      __break(1u);
    }

    else
    {
      *(&v50 + 1) = *(&v47 + 1) + 1;
      sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
      sub_1D4ED16E4(&v48, &v45);
      swift_beginAccess();
      sub_1D4EC82C0(&v45, v28);
      swift_endAccess();
      sub_1D50F3A34(&v48);
      return sub_1D50F3940(v27);
    }
  }

  else
  {
    sub_1D4E7661C(&v45, &qword_1EC7EA3F0, &qword_1D5634C00);
    *(&v49 + 1) = type metadata accessor for CreditArtist(0);
    *&v50 = sub_1D4E74DDC(&qword_1EC7EB600, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    sub_1D531A3A8(v42, boxed_opaque_existential_0, type metadata accessor for CreditArtist);
    *(&v50 + 1) = 1;
    sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
    sub_1D4ED16E4(&v48, &v45);
    swift_beginAccess();
    sub_1D4EC82C0(&v45, v28);
    swift_endAccess();
    sub_1D50F3940(v27);
    return sub_1D50F3A34(&v48);
  }

  return result;
}

uint64_t sub_1D530E464(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v41 = a5;
  v40 = a4;
  v42 = a3;
  v7 = type metadata accessor for MusicItemCache.Key(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v39 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v38 = &v33 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v33 - v12);
  v43 = sub_1D560C368();
  v44 = *(v43 - 8);
  v14 = MEMORY[0x1EEE9AC00](v43);
  v37 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v33 - v16;
  v18 = a2[3];
  v19 = a2[4];
  v35 = __swift_project_boxed_opaque_existential_1(a2, v18);
  v20 = *(v19 + 8);
  v20(v18, v19);
  v34 = a1;
  swift_beginAccess();
  v21 = *(a1 + 16);

  v22 = sub_1D4ED0594(v17, v21);

  v23 = *(v44 + 8);
  v44 += 8;
  v36 = v23;
  v23(v17, v43);
  v24 = MEMORY[0x1E69E7CD0];
  if (v22)
  {
    v24 = v22;
  }

  v51 = v24;
  v26 = *v42;
  v25 = v42[1];

  sub_1D560E358();
  *v13 = v26;
  v27 = v13;
  v28 = v38;
  *(v27 + 8) = v25;
  sub_1D531A3A8(v27, v39, type metadata accessor for MusicItemCache.Key);
  sub_1D52C7BE0();
  sub_1D50F3940(v28);
  v29 = v37;
  v20(v18, v19);
  v30 = v34;
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v45 = *(v30 + 16);
  sub_1D4F13514();
  *(v30 + 16) = v45;
  v36(v29, v43);
  swift_endAccess();
  swift_beginAccess();

  sub_1D4ED05AC();

  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
    if (__OFADD__(*(&v47 + 1), 1))
    {
      __break(1u);
    }

    else
    {
      *(&v50 + 1) = *(&v47 + 1) + 1;
      sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
      sub_1D4ED16E4(&v48, &v45);
      swift_beginAccess();
      sub_1D4EC82C0(&v45, v28);
      swift_endAccess();
      sub_1D50F3A34(&v48);
      return sub_1D50F3940(v27);
    }
  }

  else
  {
    sub_1D4E7661C(&v45, &qword_1EC7EA3F0, &qword_1D5634C00);
    *(&v49 + 1) = type metadata accessor for Composer(0);
    *&v50 = sub_1D4E74DDC(&qword_1EDD54820, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    sub_1D531A3A8(v42, boxed_opaque_existential_0, type metadata accessor for Composer);
    *(&v50 + 1) = 1;
    sub_1D531A3A8(v27, v28, type metadata accessor for MusicItemCache.Key);
    sub_1D4ED16E4(&v48, &v45);
    swift_beginAccess();
    sub_1D4EC82C0(&v45, v28);
    swift_endAccess();
    sub_1D50F3940(v27);
    return sub_1D50F3A34(&v48);
  }

  return result;
}

uint64_t sub_1D530E9D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a5;
  v42 = a4;
  v44 = a3;
  v7 = type metadata accessor for MusicItemCache.Key(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v41 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v40 = v34 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v34 - v12);
  v14 = sub_1D560C368();
  v38 = v14;
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v39 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v34 - v18;
  v20 = a2[3];
  v21 = a2[4];
  v37 = v20;
  v34[1] = __swift_project_boxed_opaque_existential_1(a2, v20);
  v36 = v21;
  v35 = *(v21 + 8);
  v35(v20, v21);
  swift_beginAccess();
  v22 = *(a1 + 16);

  v23 = sub_1D4ED0594(v19, v22);

  v24 = *(v15 + 8);
  v24(v19, v14);
  v25 = MEMORY[0x1E69E7CD0];
  if (v23)
  {
    v25 = v23;
  }

  v51 = v25;
  GenericMusicItem.innerItem.getter(&v48);
  __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
  v26 = sub_1D560EC18();
  v28 = v27;
  __swift_destroy_boxed_opaque_existential_1(&v48);
  sub_1D560E358();
  *v13 = v26;
  v13[1] = v28;
  v29 = v13;
  v30 = v40;
  sub_1D531A3A8(v29, v41, type metadata accessor for MusicItemCache.Key);
  sub_1D52C7BE0();
  sub_1D50F3940(v30);
  v31 = v39;
  v35(v37, v36);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  *&v45 = *(a1 + 16);
  sub_1D4F13514();
  *(a1 + 16) = v45;
  v24(v31, v38);
  swift_endAccess();
  swift_beginAccess();

  sub_1D4ED05AC();

  if (*(&v46 + 1))
  {
    v48 = v45;
    v49 = v46;
    v50 = v47;
    if (__OFADD__(*(&v47 + 1), 1))
    {
      __break(1u);
    }

    else
    {
      *(&v50 + 1) = *(&v47 + 1) + 1;
      sub_1D531A3A8(v29, v30, type metadata accessor for MusicItemCache.Key);
      sub_1D4ED16E4(&v48, &v45);
      swift_beginAccess();
      sub_1D4EC82C0(&v45, v30);
      swift_endAccess();
      sub_1D50F3A34(&v48);
      return sub_1D50F3940(v29);
    }
  }

  else
  {
    sub_1D4E7661C(&v45, &qword_1EC7EA3F0, &qword_1D5634C00);
    *(&v49 + 1) = type metadata accessor for GenericMusicItem(0);
    *&v50 = sub_1D4E74DDC(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v48);
    sub_1D531A3A8(v44, boxed_opaque_existential_0, type metadata accessor for GenericMusicItem);
    *(&v50 + 1) = 1;
    sub_1D531A3A8(v29, v30, type metadata accessor for MusicItemCache.Key);
    sub_1D4ED16E4(&v48, &v45);
    swift_beginAccess();
    sub_1D4EC82C0(&v45, v30);
    swift_endAccess();
    sub_1D50F3940(v29);
    return sub_1D50F3A34(&v48);
  }

  return result;
}

void *sub_1D530EF5C()
{
  type metadata accessor for MusicServerItemDatabase();
  swift_allocObject();
  result = sub_1D530EFF4();
  off_1EDD5BC28 = result;
  return result;
}

uint64_t static MusicServerItemDatabase.shared.getter()
{
  if (qword_1EDD5BC20 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D530EFF4()
{
  *(v0 + 16) = [objc_opt_self() sharedServerObjectDatabase];
  type metadata accessor for MusicItemCache();
  swift_allocObject();
  *(v0 + 24) = sub_1D50F36F0();
  return v0;
}

uint64_t sub_1D530F05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_1D5317EDC(a1, a2, v8, a4, a5, a6, x8_0);
  return sub_1D4E7661C(v8, &qword_1EC7F0FE8, &qword_1D5652AB0);
}

uint64_t sub_1D530F0B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_1D5317900(a1, a2, v4, a3);
  return sub_1D4E7661C(v4, &qword_1EC7F0FE8, &qword_1D5652AB0);
}

uint64_t sub_1D530F0F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v44 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v9 = sub_1D5613AF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - v17;

  sub_1D53098BC(a1, a2);

  if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
  {
    v43 = a4;
    sub_1D4E7661C(v18, &qword_1EC7EEC30, &unk_1D5620CE0);
    v19 = sub_1D560EA88();
    v42 = v16;
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v9);
    v20 = sub_1D53078F4(v19);

    v21 = *(v5 + 16);
    v22 = sub_1D5614D38();
    v48 = 0;
    v23 = [v21 payloadDataForIdentifier:v22 identifierKinds:v20 error:&v48];

    v24 = v48;
    if (v23)
    {
      v41[0] = v10;
      v41[1] = a2;
      v25 = sub_1D560C198();
      v27 = v26;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7EA9B8, MEMORY[0x1E6976D28], MEMORY[0x1E6976D48]);
      v28 = v45;
      sub_1D560B948();
      sub_1D5319770(v44, &v46);
      if (v47)
      {
        sub_1D4E48324(&v46, &v48);

        sub_1D530A808(v28, &v48, MEMORY[0x1E6976D28], MEMORY[0x1E6976CD8], sub_1D53197E0);

        sub_1D4E55E1C(v25, v27);

        __swift_destroy_boxed_opaque_existential_1(&v48);
        v38 = &qword_1EC7EEC30;
        v39 = &unk_1D5620CE0;
        v37 = v42;
        v40 = v42;
      }

      else
      {
        v37 = v42;
        sub_1D4E7661C(v42, &qword_1EC7EEC30, &unk_1D5620CE0);

        sub_1D4E55E1C(v25, v27);
        v38 = &qword_1EC7F0FE8;
        v39 = &qword_1D5652AB0;
        v40 = &v46;
      }

      sub_1D4E7661C(v40, v38, v39);
      v36 = v43;
      (*(v41[0] + 32))(v37, v28, v9);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v9);
    }

    else
    {
      v30 = v24;
      v31 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D561C050;
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v33 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v33);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x6D75626C41, 0xE500000000000000);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v46 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v34 = v48;
      v35 = v49;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 32) = v34;
      *(v32 + 40) = v35;
      sub_1D56162B8();

      v37 = v42;
      v36 = v43;
    }

    return sub_1D531A288(v37, v36, &qword_1EC7EEC30, &unk_1D5620CE0);
  }

  else
  {
    (*(v10 + 32))(a4, v18, v9);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v9);
  }
}

uint64_t sub_1D530F744@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v44 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v9 = sub_1D5613EF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - v17;

  sub_1D53097A0(a1, a2);

  if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
  {
    v43 = a4;
    sub_1D4E7661C(v18, &qword_1EC7EA8A8, &qword_1D561CF10);
    v19 = sub_1D560EA88();
    v42 = v16;
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v9);
    v20 = sub_1D53078F4(v19);

    v21 = *(v5 + 16);
    v22 = sub_1D5614D38();
    v48 = 0;
    v23 = [v21 payloadDataForIdentifier:v22 identifierKinds:v20 error:&v48];

    v24 = v48;
    if (v23)
    {
      v41[0] = v10;
      v41[1] = a2;
      v25 = sub_1D560C198();
      v27 = v26;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&unk_1EDD52E00, MEMORY[0x1E6976F28], MEMORY[0x1E6976F40]);
      v28 = v45;
      sub_1D560B948();
      sub_1D5319770(v44, &v46);
      if (v47)
      {
        sub_1D4E48324(&v46, &v48);

        sub_1D530A808(v28, &v48, MEMORY[0x1E6976F28], MEMORY[0x1E6976EE0], sub_1D5319854);

        sub_1D4E55E1C(v25, v27);

        __swift_destroy_boxed_opaque_existential_1(&v48);
        v38 = &qword_1EC7EA8A8;
        v39 = &qword_1D561CF10;
        v37 = v42;
        v40 = v42;
      }

      else
      {
        v37 = v42;
        sub_1D4E7661C(v42, &qword_1EC7EA8A8, &qword_1D561CF10);

        sub_1D4E55E1C(v25, v27);
        v38 = &qword_1EC7F0FE8;
        v39 = &qword_1D5652AB0;
        v40 = &v46;
      }

      sub_1D4E7661C(v40, v38, v39);
      v36 = v43;
      (*(v41[0] + 32))(v37, v28, v9);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v9);
    }

    else
    {
      v30 = v24;
      v31 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D561C050;
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v33 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v33);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x747369747241, 0xE600000000000000);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v46 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v34 = v48;
      v35 = v49;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 32) = v34;
      *(v32 + 40) = v35;
      sub_1D56162B8();

      v37 = v42;
      v36 = v43;
    }

    return sub_1D531A288(v37, v36, &qword_1EC7EA8A8, &qword_1D561CF10);
  }

  else
  {
    (*(v10 + 32))(a4, v18, v9);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v9);
  }
}

uint64_t sub_1D530FD90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A0, &qword_1D5652B20);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;

  sub_1D5309600(a1, a2);

  if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
  {
    v42 = a4;
    sub_1D4E7661C(v17, &qword_1EC7EA8A0, &qword_1D5652B20);
    if (qword_1EC7E9100 != -1)
    {
      swift_once();
    }

    v18 = qword_1EC7F1DF0;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
    v19 = sub_1D53078F4(v18);
    v20 = *(v4 + 16);
    v21 = sub_1D5614D38();
    v46 = 0;
    v22 = [v20 payloadDataForIdentifier:v21 identifierKinds:v19 error:&v46];

    v23 = v46;
    if (v22)
    {
      v40 = a2;
      v41 = v15;
      v24 = sub_1D560C198();
      v26 = v25;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7EA9E8, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
      sub_1D560B948();
      sub_1D5319770(v43, &v44);
      if (v45)
      {
        sub_1D4E48324(&v44, &v46);

        sub_1D530A73C(v10, &v46);

        sub_1D4E55E1C(v24, v26);

        __swift_destroy_boxed_opaque_existential_1(&v46);
        v35 = &qword_1EC7EA8A0;
        v36 = &qword_1D5652B20;
        v15 = v41;
        v37 = v41;
      }

      else
      {
        v38 = v41;
        sub_1D4E7661C(v41, &qword_1EC7EA8A0, &qword_1D5652B20);

        v39 = v26;
        v15 = v38;
        sub_1D4E55E1C(v24, v39);
        v35 = &qword_1EC7F0FE8;
        v36 = &qword_1D5652AB0;
        v37 = &v44;
      }

      sub_1D4E7661C(v37, v35, v36);
      v34 = v42;
      sub_1D531A2EC(v10, v15, type metadata accessor for Composer);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
    }

    else
    {
      v28 = v23;
      v29 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D561C050;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v31 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v31);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x7265736F706D6F43, 0xE800000000000000);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v44 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v32 = v46;
      v33 = v47;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 32) = v32;
      *(v30 + 40) = v33;
      sub_1D56162B8();

      v34 = v42;
    }

    return sub_1D531A288(v15, v34, &qword_1EC7EA8A0, &qword_1D5652B20);
  }

  else
  {
    sub_1D531A2EC(v17, a4, type metadata accessor for Composer);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
  }
}

uint64_t sub_1D5310398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v44 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v9 = sub_1D56141F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - v17;

  sub_1D5309344(a1, a2);

  if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
  {
    v43 = a4;
    sub_1D4E7661C(v18, &qword_1EC7EA9A0, &qword_1D561D230);
    v19 = sub_1D560EA88();
    v42 = v16;
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v9);
    v20 = sub_1D53078F4(v19);

    v21 = *(v5 + 16);
    v22 = sub_1D5614D38();
    v48 = 0;
    v23 = [v21 payloadDataForIdentifier:v22 identifierKinds:v20 error:&v48];

    v24 = v48;
    if (v23)
    {
      v41[0] = v10;
      v41[1] = a2;
      v25 = sub_1D560C198();
      v27 = v26;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EDD52DE0, MEMORY[0x1E6977048], MEMORY[0x1E6977068]);
      v28 = v45;
      sub_1D560B948();
      sub_1D5319770(v44, &v46);
      if (v47)
      {
        sub_1D4E48324(&v46, &v48);

        sub_1D530A808(v28, &v48, MEMORY[0x1E6977048], MEMORY[0x1E6977008], sub_1D53199C8);

        sub_1D4E55E1C(v25, v27);

        __swift_destroy_boxed_opaque_existential_1(&v48);
        v38 = &qword_1EC7EA9A0;
        v39 = &qword_1D561D230;
        v37 = v42;
        v40 = v42;
      }

      else
      {
        v37 = v42;
        sub_1D4E7661C(v42, &qword_1EC7EA9A0, &qword_1D561D230);

        sub_1D4E55E1C(v25, v27);
        v38 = &qword_1EC7F0FE8;
        v39 = &qword_1D5652AB0;
        v40 = &v46;
      }

      sub_1D4E7661C(v40, v38, v39);
      v36 = v43;
      (*(v41[0] + 32))(v37, v28, v9);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v9);
    }

    else
    {
      v30 = v24;
      v31 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D561C050;
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v33 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v33);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x726F7461727543, 0xE700000000000000);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v46 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v34 = v48;
      v35 = v49;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 32) = v34;
      *(v32 + 40) = v35;
      sub_1D56162B8();

      v37 = v42;
      v36 = v43;
    }

    return sub_1D531A288(v37, v36, &qword_1EC7EA9A0, &qword_1D561D230);
  }

  else
  {
    (*(v10 + 32))(a4, v18, v9);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v9);
  }
}

uint64_t sub_1D53109E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA998, &qword_1D561D228);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;

  sub_1D53091A4(a1, a2);

  if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
  {
    v42 = a4;
    sub_1D4E7661C(v17, &qword_1EC7EA998, &qword_1D561D228);
    if (qword_1EDD57690 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDD57698;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
    v19 = sub_1D53078F4(v18);
    v20 = *(v4 + 16);
    v21 = sub_1D5614D38();
    v46 = 0;
    v22 = [v20 payloadDataForIdentifier:v21 identifierKinds:v19 error:&v46];

    v23 = v46;
    if (v22)
    {
      v40 = a2;
      v41 = v15;
      v24 = sub_1D560C198();
      v26 = v25;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7EAA18, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
      sub_1D560B948();
      sub_1D5319770(v43, &v44);
      if (v45)
      {
        sub_1D4E48324(&v44, &v46);

        sub_1D530A5A4(v10, &v46);

        sub_1D4E55E1C(v24, v26);

        __swift_destroy_boxed_opaque_existential_1(&v46);
        v35 = &qword_1EC7EA998;
        v36 = &qword_1D561D228;
        v15 = v41;
        v37 = v41;
      }

      else
      {
        v38 = v41;
        sub_1D4E7661C(v41, &qword_1EC7EA998, &qword_1D561D228);

        v39 = v26;
        v15 = v38;
        sub_1D4E55E1C(v24, v39);
        v35 = &qword_1EC7F0FE8;
        v36 = &qword_1D5652AB0;
        v37 = &v44;
      }

      sub_1D4E7661C(v37, v35, v36);
      v34 = v42;
      sub_1D531A2EC(v10, v15, type metadata accessor for EditorialItem);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
    }

    else
    {
      v28 = v23;
      v29 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D561C050;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v31 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v31);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x6169726F74696445, 0xED00006D6574496CLL);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v44 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v32 = v46;
      v33 = v47;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 32) = v32;
      *(v30 + 40) = v33;
      sub_1D56162B8();

      v34 = v42;
    }

    return sub_1D531A288(v15, v34, &qword_1EC7EA998, &qword_1D561D228);
  }

  else
  {
    sub_1D531A2EC(v17, a4, type metadata accessor for EditorialItem);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
  }
}

uint64_t sub_1D5310FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v44 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v9 = sub_1D5613C48();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA898, &unk_1D561CF00);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - v17;

  sub_1D5309088(a1, a2);

  if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
  {
    v43 = a4;
    sub_1D4E7661C(v18, &qword_1EC7EA898, &unk_1D561CF00);
    v19 = sub_1D560EA88();
    v42 = v16;
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v9);
    v20 = sub_1D53078F4(v19);

    v21 = *(v5 + 16);
    v22 = sub_1D5614D38();
    v48 = 0;
    v23 = [v21 payloadDataForIdentifier:v22 identifierKinds:v20 error:&v48];

    v24 = v48;
    if (v23)
    {
      v41[0] = v10;
      v41[1] = a2;
      v25 = sub_1D560C198();
      v27 = v26;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EDD5D240, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DE8]);
      v28 = v45;
      sub_1D560B948();
      sub_1D5319770(v44, &v46);
      if (v47)
      {
        sub_1D4E48324(&v46, &v48);

        sub_1D530A808(v28, &v48, MEMORY[0x1E6976DC8], MEMORY[0x1E6976D88], sub_1D5319ABC);

        sub_1D4E55E1C(v25, v27);

        __swift_destroy_boxed_opaque_existential_1(&v48);
        v38 = &qword_1EC7EA898;
        v39 = &unk_1D561CF00;
        v37 = v42;
        v40 = v42;
      }

      else
      {
        v37 = v42;
        sub_1D4E7661C(v42, &qword_1EC7EA898, &unk_1D561CF00);

        sub_1D4E55E1C(v25, v27);
        v38 = &qword_1EC7F0FE8;
        v39 = &qword_1D5652AB0;
        v40 = &v46;
      }

      sub_1D4E7661C(v40, v38, v39);
      v36 = v43;
      (*(v41[0] + 32))(v37, v28, v9);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v9);
    }

    else
    {
      v30 = v24;
      v31 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D561C050;
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v33 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v33);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x65726E6547, 0xE500000000000000);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v46 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v34 = v48;
      v35 = v49;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 32) = v34;
      *(v32 + 40) = v35;
      sub_1D56162B8();

      v37 = v42;
      v36 = v43;
    }

    return sub_1D531A288(v37, v36, &qword_1EC7EA898, &unk_1D561CF00);
  }

  else
  {
    (*(v10 + 32))(a4, v18, v9);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v9);
  }
}

uint64_t sub_1D5311648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;

  sub_1D5308EE8(a1, a2);

  if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
  {
    v42 = a4;
    sub_1D4E7661C(v17, &qword_1EC7EA890, &qword_1D5672D40);
    if (qword_1EDD59368 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDD59370;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
    v19 = sub_1D53078F4(v18);
    v20 = *(v4 + 16);
    v21 = sub_1D5614D38();
    v46 = 0;
    v22 = [v20 payloadDataForIdentifier:v21 identifierKinds:v19 error:&v46];

    v23 = v46;
    if (v22)
    {
      v40 = a2;
      v41 = v15;
      v24 = sub_1D560C198();
      v26 = v25;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EDD592E8, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
      sub_1D560B948();
      sub_1D5319770(v43, &v44);
      if (v45)
      {
        sub_1D4E48324(&v44, &v46);

        sub_1D530A4D8(v10, &v46);

        sub_1D4E55E1C(v24, v26);

        __swift_destroy_boxed_opaque_existential_1(&v46);
        v35 = &qword_1EC7EA890;
        v36 = &qword_1D5672D40;
        v15 = v41;
        v37 = v41;
      }

      else
      {
        v38 = v41;
        sub_1D4E7661C(v41, &qword_1EC7EA890, &qword_1D5672D40);

        v39 = v26;
        v15 = v38;
        sub_1D4E55E1C(v24, v39);
        v35 = &qword_1EC7F0FE8;
        v36 = &qword_1D5652AB0;
        v37 = &v44;
      }

      sub_1D4E7661C(v37, v35, v36);
      v34 = v42;
      sub_1D531A2EC(v10, v15, type metadata accessor for MusicMovie);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
    }

    else
    {
      v28 = v23;
      v29 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D561C050;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v31 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v31);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x766F4D636973754DLL, 0xEA00000000006569);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v44 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v32 = v46;
      v33 = v47;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 32) = v32;
      *(v30 + 40) = v33;
      sub_1D56162B8();

      v34 = v42;
    }

    return sub_1D531A288(v15, v34, &qword_1EC7EA890, &qword_1D5672D40);
  }

  else
  {
    sub_1D531A2EC(v17, a4, type metadata accessor for MusicMovie);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
  }
}

uint64_t sub_1D5311C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v44 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v9 = sub_1D560EEA8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - v17;

  sub_1D5308DCC(a1, a2);

  if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
  {
    v43 = a4;
    sub_1D4E7661C(v18, &qword_1EC7EA990, &qword_1D561D220);
    v19 = sub_1D560EA88();
    v42 = v16;
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v9);
    v20 = sub_1D53078F4(v19);

    v21 = *(v5 + 16);
    v22 = sub_1D5614D38();
    v48 = 0;
    v23 = [v21 payloadDataForIdentifier:v22 identifierKinds:v20 error:&v48];

    v24 = v48;
    if (v23)
    {
      v41[0] = v10;
      v41[1] = a2;
      v25 = sub_1D560C198();
      v27 = v26;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7EAA58, MEMORY[0x1E69754E8], MEMORY[0x1E6975500]);
      v28 = v45;
      sub_1D560B948();
      sub_1D5319770(v44, &v46);
      if (v47)
      {
        sub_1D4E48324(&v46, &v48);

        sub_1D530A808(v28, &v48, MEMORY[0x1E69754E8], MEMORY[0x1E69754A0], sub_1D5319BB0);

        sub_1D4E55E1C(v25, v27);

        __swift_destroy_boxed_opaque_existential_1(&v48);
        v38 = &qword_1EC7EA990;
        v39 = &qword_1D561D220;
        v37 = v42;
        v40 = v42;
      }

      else
      {
        v37 = v42;
        sub_1D4E7661C(v42, &qword_1EC7EA990, &qword_1D561D220);

        sub_1D4E55E1C(v25, v27);
        v38 = &qword_1EC7F0FE8;
        v39 = &qword_1D5652AB0;
        v40 = &v46;
      }

      sub_1D4E7661C(v40, v38, v39);
      v36 = v43;
      (*(v41[0] + 32))(v37, v28, v9);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v9);
    }

    else
    {
      v30 = v24;
      v31 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D561C050;
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v33 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v33);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x646956636973754DLL, 0xEA00000000006F65);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v46 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v34 = v48;
      v35 = v49;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 32) = v34;
      *(v32 + 40) = v35;
      sub_1D56162B8();

      v37 = v42;
      v36 = v43;
    }

    return sub_1D531A288(v37, v36, &qword_1EC7EA990, &qword_1D561D220);
  }

  else
  {
    (*(v10 + 32))(a4, v18, v9);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v9);
  }
}

uint64_t sub_1D53122A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v44 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v9 = sub_1D5614898();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - v17;

  sub_1D5308CB0(a1, a2);

  if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
  {
    v43 = a4;
    sub_1D4E7661C(v18, &unk_1EC7F1990, &unk_1D561CEF0);
    v19 = sub_1D560EA88();
    v42 = v16;
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v9);
    v20 = sub_1D53078F4(v19);

    v21 = *(v5 + 16);
    v22 = sub_1D5614D38();
    v48 = 0;
    v23 = [v21 payloadDataForIdentifier:v22 identifierKinds:v20 error:&v48];

    v24 = v48;
    if (v23)
    {
      v41[0] = v10;
      v41[1] = a2;
      v25 = sub_1D560C198();
      v27 = v26;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(qword_1EDD52A80, MEMORY[0x1E69773E0], MEMORY[0x1E6977400]);
      v28 = v45;
      sub_1D560B948();
      sub_1D5319770(v44, &v46);
      if (v47)
      {
        sub_1D4E48324(&v46, &v48);

        sub_1D530A808(v28, &v48, MEMORY[0x1E69773E0], MEMORY[0x1E6977388], sub_1D5319C24);

        sub_1D4E55E1C(v25, v27);

        __swift_destroy_boxed_opaque_existential_1(&v48);
        v38 = &unk_1EC7F1990;
        v39 = &unk_1D561CEF0;
        v37 = v42;
        v40 = v42;
      }

      else
      {
        v37 = v42;
        sub_1D4E7661C(v42, &unk_1EC7F1990, &unk_1D561CEF0);

        sub_1D4E55E1C(v25, v27);
        v38 = &qword_1EC7F0FE8;
        v39 = &qword_1D5652AB0;
        v40 = &v46;
      }

      sub_1D4E7661C(v40, v38, v39);
      v36 = v43;
      (*(v41[0] + 32))(v37, v28, v9);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v9);
    }

    else
    {
      v30 = v24;
      v31 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D561C050;
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v33 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v33);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x7473696C79616C50, 0xE800000000000000);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v46 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v34 = v48;
      v35 = v49;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 32) = v34;
      *(v32 + 40) = v35;
      sub_1D56162B8();

      v37 = v42;
      v36 = v43;
    }

    return sub_1D531A288(v37, v36, &unk_1EC7F1990, &unk_1D561CEF0);
  }

  else
  {
    (*(v10 + 32))(a4, v18, v9);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v9);
  }
}

uint64_t sub_1D53128F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;

  sub_1D5308B10(a1, a2);

  if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
  {
    v42 = a4;
    sub_1D4E7661C(v17, &qword_1EC7F1980, &qword_1D5642040);
    if (qword_1EC7E8D40 != -1)
    {
      swift_once();
    }

    v18 = qword_1EC7EF1D0;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
    v19 = sub_1D53078F4(v18);
    v20 = *(v4 + 16);
    v21 = sub_1D5614D38();
    v46 = 0;
    v22 = [v20 payloadDataForIdentifier:v21 identifierKinds:v19 error:&v46];

    v23 = v46;
    if (v22)
    {
      v40 = a2;
      v41 = v15;
      v24 = sub_1D560C198();
      v26 = v25;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(qword_1EDD5D190, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
      sub_1D560B948();
      sub_1D5319770(v43, &v44);
      if (v45)
      {
        sub_1D4E48324(&v44, &v46);

        sub_1D530A40C(v10, &v46);

        sub_1D4E55E1C(v24, v26);

        __swift_destroy_boxed_opaque_existential_1(&v46);
        v35 = &qword_1EC7F1980;
        v36 = &qword_1D5642040;
        v15 = v41;
        v37 = v41;
      }

      else
      {
        v38 = v41;
        sub_1D4E7661C(v41, &qword_1EC7F1980, &qword_1D5642040);

        v39 = v26;
        v15 = v38;
        sub_1D4E55E1C(v24, v39);
        v35 = &qword_1EC7F0FE8;
        v36 = &qword_1D5652AB0;
        v37 = &v44;
      }

      sub_1D4E7661C(v37, v35, v36);
      v34 = v42;
      sub_1D531A2EC(v10, v15, type metadata accessor for Playlist.Folder);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
    }

    else
    {
      v28 = v23;
      v29 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D561C050;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v31 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v31);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x7265646C6F46, 0xE600000000000000);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v44 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v32 = v46;
      v33 = v47;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 32) = v32;
      *(v30 + 40) = v33;
      sub_1D56162B8();

      v34 = v42;
    }

    return sub_1D531A288(v15, v34, &qword_1EC7F1980, &qword_1D5642040);
  }

  else
  {
    sub_1D531A2EC(v17, a4, type metadata accessor for Playlist.Folder);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
  }
}

uint64_t sub_1D5312EFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v44 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v9 = sub_1D5614B68();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA988, &qword_1D56397B0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - v17;

  sub_1D53089F4(a1, a2);

  if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
  {
    v43 = a4;
    sub_1D4E7661C(v18, &qword_1EC7EA988, &qword_1D56397B0);
    v19 = sub_1D560EA88();
    v42 = v16;
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v9);
    v20 = sub_1D53078F4(v19);

    v21 = *(v5 + 16);
    v22 = sub_1D5614D38();
    v48 = 0;
    v23 = [v21 payloadDataForIdentifier:v22 identifierKinds:v20 error:&v48];

    v24 = v48;
    if (v23)
    {
      v41[0] = v10;
      v41[1] = a2;
      v25 = sub_1D560C198();
      v27 = v26;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EDD52A30, MEMORY[0x1E6977550], MEMORY[0x1E6977570]);
      v28 = v45;
      sub_1D560B948();
      sub_1D5319770(v44, &v46);
      if (v47)
      {
        sub_1D4E48324(&v46, &v48);

        sub_1D530A808(v28, &v48, MEMORY[0x1E6977550], MEMORY[0x1E6977510], sub_1D5319D18);

        sub_1D4E55E1C(v25, v27);

        __swift_destroy_boxed_opaque_existential_1(&v48);
        v38 = &qword_1EC7EA988;
        v39 = &qword_1D56397B0;
        v37 = v42;
        v40 = v42;
      }

      else
      {
        v37 = v42;
        sub_1D4E7661C(v42, &qword_1EC7EA988, &qword_1D56397B0);

        sub_1D4E55E1C(v25, v27);
        v38 = &qword_1EC7F0FE8;
        v39 = &qword_1D5652AB0;
        v40 = &v46;
      }

      sub_1D4E7661C(v40, v38, v39);
      v36 = v43;
      (*(v41[0] + 32))(v37, v28, v9);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v9);
    }

    else
    {
      v30 = v24;
      v31 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D561C050;
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v33 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v33);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x6F68536F69646152, 0xE900000000000077);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v46 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v34 = v48;
      v35 = v49;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 32) = v34;
      *(v32 + 40) = v35;
      sub_1D56162B8();

      v37 = v42;
      v36 = v43;
    }

    return sub_1D531A288(v37, v36, &qword_1EC7EA988, &qword_1D56397B0);
  }

  else
  {
    (*(v10 + 32))(a4, v18, v9);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v9);
  }
}

uint64_t sub_1D5313558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v44 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v9 = sub_1D560F8B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA980, &unk_1D561D210);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - v17;

  sub_1D53088D8(a1, a2);

  if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
  {
    v43 = a4;
    sub_1D4E7661C(v18, &qword_1EC7EA980, &unk_1D561D210);
    v19 = sub_1D560EA88();
    v42 = v16;
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v9);
    v20 = sub_1D53078F4(v19);

    v21 = *(v5 + 16);
    v22 = sub_1D5614D38();
    v48 = 0;
    v23 = [v21 payloadDataForIdentifier:v22 identifierKinds:v20 error:&v48];

    v24 = v48;
    if (v23)
    {
      v41[0] = v10;
      v41[1] = a2;
      v25 = sub_1D560C198();
      v27 = v26;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7EAA90, MEMORY[0x1E69758A0], MEMORY[0x1E69758B0]);
      v28 = v45;
      sub_1D560B948();
      sub_1D5319770(v44, &v46);
      if (v47)
      {
        sub_1D4E48324(&v46, &v48);

        sub_1D530A808(v28, &v48, MEMORY[0x1E69758A0], MEMORY[0x1E6975860], sub_1D5319D8C);

        sub_1D4E55E1C(v25, v27);

        __swift_destroy_boxed_opaque_existential_1(&v48);
        v38 = &qword_1EC7EA980;
        v39 = &unk_1D561D210;
        v37 = v42;
        v40 = v42;
      }

      else
      {
        v37 = v42;
        sub_1D4E7661C(v42, &qword_1EC7EA980, &unk_1D561D210);

        sub_1D4E55E1C(v25, v27);
        v38 = &qword_1EC7F0FE8;
        v39 = &qword_1D5652AB0;
        v40 = &v46;
      }

      sub_1D4E7661C(v40, v38, v39);
      v36 = v43;
      (*(v41[0] + 32))(v37, v28, v9);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v9);
    }

    else
    {
      v30 = v24;
      v31 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D561C050;
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v33 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v33);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x614C64726F636552, 0xEB000000006C6562);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v46 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v34 = v48;
      v35 = v49;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 32) = v34;
      *(v32 + 40) = v35;
      sub_1D56162B8();

      v37 = v42;
      v36 = v43;
    }

    return sub_1D531A288(v37, v36, &qword_1EC7EA980, &unk_1D561D210);
  }

  else
  {
    (*(v10 + 32))(a4, v18, v9);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v9);
  }
}

uint64_t sub_1D5313BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;

  sub_1D5308738(a1, a2);

  if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
  {
    v42 = a4;
    sub_1D4E7661C(v17, &unk_1EC7ED370, &unk_1D5624FE0);
    if (qword_1EC7E9688 != -1)
    {
      swift_once();
    }

    v18 = qword_1EC7F69B0;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
    v19 = sub_1D53078F4(v18);
    v20 = *(v4 + 16);
    v21 = sub_1D5614D38();
    v46 = 0;
    v22 = [v20 payloadDataForIdentifier:v21 identifierKinds:v19 error:&v46];

    v23 = v46;
    if (v22)
    {
      v40 = a2;
      v41 = v15;
      v24 = sub_1D560C198();
      v26 = v25;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EDD5DC58, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
      sub_1D560B948();
      sub_1D5319770(v43, &v44);
      if (v45)
      {
        sub_1D4E48324(&v44, &v46);

        sub_1D530A340(v10, &v46);

        sub_1D4E55E1C(v24, v26);

        __swift_destroy_boxed_opaque_existential_1(&v46);
        v35 = &unk_1EC7ED370;
        v36 = &unk_1D5624FE0;
        v15 = v41;
        v37 = v41;
      }

      else
      {
        v38 = v41;
        sub_1D4E7661C(v41, &unk_1EC7ED370, &unk_1D5624FE0);

        v39 = v26;
        v15 = v38;
        sub_1D4E55E1C(v24, v39);
        v35 = &qword_1EC7F0FE8;
        v36 = &qword_1D5652AB0;
        v37 = &v44;
      }

      sub_1D4E7661C(v37, v35, v36);
      v34 = v42;
      sub_1D531A2EC(v10, v15, type metadata accessor for SocialProfile);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
    }

    else
    {
      v28 = v23;
      v29 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D561C050;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v31 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v31);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x72506C6169636F53, 0xED0000656C69666FLL);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v44 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v32 = v46;
      v33 = v47;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 32) = v32;
      *(v30 + 40) = v33;
      sub_1D56162B8();

      v34 = v42;
    }

    return sub_1D531A288(v15, v34, &unk_1EC7ED370, &unk_1D5624FE0);
  }

  else
  {
    sub_1D531A2EC(v17, a4, type metadata accessor for SocialProfile);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
  }
}

uint64_t sub_1D53141C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v44 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v9 = sub_1D5613838();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - v17;

  sub_1D530861C(a1, a2);

  if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
  {
    v43 = a4;
    sub_1D4E7661C(v18, &qword_1EC7EA978, &qword_1D5652B10);
    v19 = sub_1D560EA88();
    v42 = v16;
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v9);
    v20 = sub_1D53078F4(v19);

    v21 = *(v5 + 16);
    v22 = sub_1D5614D38();
    v48 = 0;
    v23 = [v21 payloadDataForIdentifier:v22 identifierKinds:v20 error:&v48];

    v24 = v48;
    if (v23)
    {
      v41[0] = v10;
      v41[1] = a2;
      v25 = sub_1D560C198();
      v27 = v26;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7EAAA8, MEMORY[0x1E6976BE8], MEMORY[0x1E6976C08]);
      v28 = v45;
      sub_1D560B948();
      sub_1D5319770(v44, &v46);
      if (v47)
      {
        sub_1D4E48324(&v46, &v48);

        sub_1D530A808(v28, &v48, MEMORY[0x1E6976BE8], MEMORY[0x1E6976BA0], sub_1D5319E80);

        sub_1D4E55E1C(v25, v27);

        __swift_destroy_boxed_opaque_existential_1(&v48);
        v38 = &qword_1EC7EA978;
        v39 = &qword_1D5652B10;
        v37 = v42;
        v40 = v42;
      }

      else
      {
        v37 = v42;
        sub_1D4E7661C(v42, &qword_1EC7EA978, &qword_1D5652B10);

        sub_1D4E55E1C(v25, v27);
        v38 = &qword_1EC7F0FE8;
        v39 = &qword_1D5652AB0;
        v40 = &v46;
      }

      sub_1D4E7661C(v40, v38, v39);
      v36 = v43;
      (*(v41[0] + 32))(v37, v28, v9);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v9);
    }

    else
    {
      v30 = v24;
      v31 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D561C050;
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v33 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v33);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](1735290707, 0xE400000000000000);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v46 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v34 = v48;
      v35 = v49;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 32) = v34;
      *(v32 + 40) = v35;
      sub_1D56162B8();

      v37 = v42;
      v36 = v43;
    }

    return sub_1D531A288(v37, v36, &qword_1EC7EA978, &qword_1D5652B10);
  }

  else
  {
    (*(v10 + 32))(a4, v18, v9);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v9);
  }
}

uint64_t sub_1D531480C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v44 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v9 = sub_1D5614408();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65A0, &unk_1D561D200);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - v17;

  sub_1D5308500(a1, a2);

  if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
  {
    v43 = a4;
    sub_1D4E7661C(v18, &unk_1EC7F65A0, &unk_1D561D200);
    v19 = sub_1D560EA88();
    v42 = v16;
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v9);
    v20 = sub_1D53078F4(v19);

    v21 = *(v5 + 16);
    v22 = sub_1D5614D38();
    v48 = 0;
    v23 = [v21 payloadDataForIdentifier:v22 identifierKinds:v20 error:&v48];

    v24 = v48;
    if (v23)
    {
      v41[0] = v10;
      v41[1] = a2;
      v25 = sub_1D560C198();
      v27 = v26;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7EAAC0, MEMORY[0x1E6977180], MEMORY[0x1E6977198]);
      v28 = v45;
      sub_1D560B948();
      sub_1D5319770(v44, &v46);
      if (v47)
      {
        sub_1D4E48324(&v46, &v48);

        sub_1D530A808(v28, &v48, MEMORY[0x1E6977180], MEMORY[0x1E6977140], sub_1D5319EF4);

        sub_1D4E55E1C(v25, v27);

        __swift_destroy_boxed_opaque_existential_1(&v48);
        v38 = &unk_1EC7F65A0;
        v39 = &unk_1D561D200;
        v37 = v42;
        v40 = v42;
      }

      else
      {
        v37 = v42;
        sub_1D4E7661C(v42, &unk_1EC7F65A0, &unk_1D561D200);

        sub_1D4E55E1C(v25, v27);
        v38 = &qword_1EC7F0FE8;
        v39 = &qword_1D5652AB0;
        v40 = &v46;
      }

      sub_1D4E7661C(v40, v38, v39);
      v36 = v43;
      (*(v41[0] + 32))(v37, v28, v9);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v9);
    }

    else
    {
      v30 = v24;
      v31 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D561C050;
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v33 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v33);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x6E6F6974617453, 0xE700000000000000);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v46 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v34 = v48;
      v35 = v49;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 32) = v34;
      *(v32 + 40) = v35;
      sub_1D56162B8();

      v37 = v42;
      v36 = v43;
    }

    return sub_1D531A288(v37, v36, &unk_1EC7F65A0, &unk_1D561D200);
  }

  else
  {
    (*(v10 + 32))(a4, v18, v9);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v9);
  }
}

uint64_t sub_1D5314E5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v44 = a3;
  v50 = *MEMORY[0x1E69E9840];
  v9 = sub_1D5613D28();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = v41 - v17;

  sub_1D53083E4(a1, a2);

  if (__swift_getEnumTagSinglePayload(v18, 1, v9) == 1)
  {
    v43 = a4;
    sub_1D4E7661C(v18, &qword_1EC7EA888, &qword_1D563B8C0);
    v19 = sub_1D560EA88();
    v42 = v16;
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v9);
    v20 = sub_1D53078F4(v19);

    v21 = *(v5 + 16);
    v22 = sub_1D5614D38();
    v48 = 0;
    v23 = [v21 payloadDataForIdentifier:v22 identifierKinds:v20 error:&v48];

    v24 = v48;
    if (v23)
    {
      v41[0] = v10;
      v41[1] = a2;
      v25 = sub_1D560C198();
      v27 = v26;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7F4290, MEMORY[0x1E6976E60], MEMORY[0x1E6976E78]);
      v28 = v45;
      sub_1D560B948();
      sub_1D5319770(v44, &v46);
      if (v47)
      {
        sub_1D4E48324(&v46, &v48);

        sub_1D530A808(v28, &v48, MEMORY[0x1E6976E60], MEMORY[0x1E6976E40], sub_1D5319F68);

        sub_1D4E55E1C(v25, v27);

        __swift_destroy_boxed_opaque_existential_1(&v48);
        v38 = &qword_1EC7EA888;
        v39 = &qword_1D563B8C0;
        v37 = v42;
        v40 = v42;
      }

      else
      {
        v37 = v42;
        sub_1D4E7661C(v42, &qword_1EC7EA888, &qword_1D563B8C0);

        sub_1D4E55E1C(v25, v27);
        v38 = &qword_1EC7F0FE8;
        v39 = &qword_1D5652AB0;
        v40 = &v46;
      }

      sub_1D4E7661C(v40, v38, v39);
      v36 = v43;
      (*(v41[0] + 32))(v37, v28, v9);
      __swift_storeEnumTagSinglePayload(v37, 0, 1, v9);
    }

    else
    {
      v30 = v24;
      v31 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1D561C050;
      v48 = 0;
      v49 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v33 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v33);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x6B63617254, 0xE500000000000000);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v46 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v34 = v48;
      v35 = v49;
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 32) = v34;
      *(v32 + 40) = v35;
      sub_1D56162B8();

      v37 = v42;
      v36 = v43;
    }

    return sub_1D531A288(v37, v36, &qword_1EC7EA888, &qword_1D563B8C0);
  }

  else
  {
    (*(v10 + 32))(a4, v18, v9);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v9);
  }
}

uint64_t sub_1D53154A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;

  sub_1D5308244(a1, a2);

  if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
  {
    v42 = a4;
    sub_1D4E7661C(v17, &qword_1EC7EA880, &unk_1D561CEE0);
    if (qword_1EC7E92E8 != -1)
    {
      swift_once();
    }

    v18 = qword_1EC7F2220;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
    v19 = sub_1D53078F4(v18);
    v20 = *(v4 + 16);
    v21 = sub_1D5614D38();
    v46 = 0;
    v22 = [v20 payloadDataForIdentifier:v21 identifierKinds:v19 error:&v46];

    v23 = v46;
    if (v22)
    {
      v40 = a2;
      v41 = v15;
      v24 = sub_1D560C198();
      v26 = v25;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7EAB00, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
      sub_1D560B948();
      sub_1D5319770(v43, &v44);
      if (v45)
      {
        sub_1D4E48324(&v44, &v46);

        sub_1D530A274(v10, &v46);

        sub_1D4E55E1C(v24, v26);

        __swift_destroy_boxed_opaque_existential_1(&v46);
        v35 = &qword_1EC7EA880;
        v36 = &unk_1D561CEE0;
        v15 = v41;
        v37 = v41;
      }

      else
      {
        v38 = v41;
        sub_1D4E7661C(v41, &qword_1EC7EA880, &unk_1D561CEE0);

        v39 = v26;
        v15 = v38;
        sub_1D4E55E1C(v24, v39);
        v35 = &qword_1EC7F0FE8;
        v36 = &qword_1D5652AB0;
        v37 = &v44;
      }

      sub_1D4E7661C(v37, v35, v36);
      v34 = v42;
      sub_1D531A2EC(v10, v15, type metadata accessor for TVEpisode);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
    }

    else
    {
      v28 = v23;
      v29 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D561C050;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v31 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v31);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x646F736970455654, 0xE900000000000065);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v44 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v32 = v46;
      v33 = v47;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 32) = v32;
      *(v30 + 40) = v33;
      sub_1D56162B8();

      v34 = v42;
    }

    return sub_1D531A288(v15, v34, &qword_1EC7EA880, &unk_1D561CEE0);
  }

  else
  {
    sub_1D531A2EC(v17, a4, type metadata accessor for TVEpisode);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
  }
}

uint64_t sub_1D5315ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;

  sub_1D53080A4(a1, a2);

  if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
  {
    v42 = a4;
    sub_1D4E7661C(v17, &qword_1EC7EA878, &unk_1D5634790);
    if (qword_1EC7E8C18 != -1)
    {
      swift_once();
    }

    v18 = qword_1EC7EE5E8;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
    v19 = sub_1D53078F4(v18);
    v20 = *(v4 + 16);
    v21 = sub_1D5614D38();
    v46 = 0;
    v22 = [v20 payloadDataForIdentifier:v21 identifierKinds:v19 error:&v46];

    v23 = v46;
    if (v22)
    {
      v40 = a2;
      v41 = v15;
      v24 = sub_1D560C198();
      v26 = v25;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7EAB20, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
      sub_1D560B948();
      sub_1D5319770(v43, &v44);
      if (v45)
      {
        sub_1D4E48324(&v44, &v46);

        sub_1D530A1A8(v10, &v46);

        sub_1D4E55E1C(v24, v26);

        __swift_destroy_boxed_opaque_existential_1(&v46);
        v35 = &qword_1EC7EA878;
        v36 = &unk_1D5634790;
        v15 = v41;
        v37 = v41;
      }

      else
      {
        v38 = v41;
        sub_1D4E7661C(v41, &qword_1EC7EA878, &unk_1D5634790);

        v39 = v26;
        v15 = v38;
        sub_1D4E55E1C(v24, v39);
        v35 = &qword_1EC7F0FE8;
        v36 = &qword_1D5652AB0;
        v37 = &v44;
      }

      sub_1D4E7661C(v37, v35, v36);
      v34 = v42;
      sub_1D531A2EC(v10, v15, type metadata accessor for TVSeason);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
    }

    else
    {
      v28 = v23;
      v29 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D561C050;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v31 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v31);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x6E6F736165535654, 0xE800000000000000);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v44 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v32 = v46;
      v33 = v47;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 32) = v32;
      *(v30 + 40) = v33;
      sub_1D56162B8();

      v34 = v42;
    }

    return sub_1D531A288(v15, v34, &qword_1EC7EA878, &unk_1D5634790);
  }

  else
  {
    sub_1D531A2EC(v17, a4, type metadata accessor for TVSeason);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
  }
}

uint64_t sub_1D53160C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;

  sub_1D5307F04(a1, a2);

  if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
  {
    v42 = a4;
    sub_1D4E7661C(v17, &qword_1EC7EA3B0, &unk_1D561C1F0);
    if (qword_1EC7E95D8 != -1)
    {
      swift_once();
    }

    v18 = qword_1EC7F5D78;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
    v19 = sub_1D53078F4(v18);
    v20 = *(v4 + 16);
    v21 = sub_1D5614D38();
    v46 = 0;
    v22 = [v20 payloadDataForIdentifier:v21 identifierKinds:v19 error:&v46];

    v23 = v46;
    if (v22)
    {
      v40 = a2;
      v41 = v15;
      v24 = sub_1D560C198();
      v26 = v25;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7EAB40, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
      sub_1D560B948();
      sub_1D5319770(v43, &v44);
      if (v45)
      {
        sub_1D4E48324(&v44, &v46);

        sub_1D530A0DC(v10, &v46);

        sub_1D4E55E1C(v24, v26);

        __swift_destroy_boxed_opaque_existential_1(&v46);
        v35 = &qword_1EC7EA3B0;
        v36 = &unk_1D561C1F0;
        v15 = v41;
        v37 = v41;
      }

      else
      {
        v38 = v41;
        sub_1D4E7661C(v41, &qword_1EC7EA3B0, &unk_1D561C1F0);

        v39 = v26;
        v15 = v38;
        sub_1D4E55E1C(v24, v39);
        v35 = &qword_1EC7F0FE8;
        v36 = &qword_1D5652AB0;
        v37 = &v44;
      }

      sub_1D4E7661C(v37, v35, v36);
      v34 = v42;
      sub_1D531A2EC(v10, v15, type metadata accessor for TVShow);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
    }

    else
    {
      v28 = v23;
      v29 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D561C050;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v31 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v31);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x776F68535654, 0xE600000000000000);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v44 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v32 = v46;
      v33 = v47;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 32) = v32;
      *(v30 + 40) = v33;
      sub_1D56162B8();

      v34 = v42;
    }

    return sub_1D531A288(v15, v34, &qword_1EC7EA3B0, &unk_1D561C1F0);
  }

  else
  {
    sub_1D531A2EC(v17, a4, type metadata accessor for TVShow);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
  }
}

uint64_t sub_1D53166C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA970, &unk_1D5652B00);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;

  sub_1D5307D64(a1, a2);

  if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
  {
    v42 = a4;
    sub_1D4E7661C(v17, &qword_1EC7EA970, &unk_1D5652B00);
    if (qword_1EC7E8F08 != -1)
    {
      swift_once();
    }

    v18 = qword_1EC7F0880;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
    v19 = sub_1D53078F4(v18);
    v20 = *(v4 + 16);
    v21 = sub_1D5614D38();
    v46 = 0;
    v22 = [v20 payloadDataForIdentifier:v21 identifierKinds:v19 error:&v46];

    v23 = v46;
    if (v22)
    {
      v40 = a2;
      v41 = v15;
      v24 = sub_1D560C198();
      v26 = v25;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7EAB60, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
      sub_1D560B948();
      sub_1D5319770(v43, &v44);
      if (v45)
      {
        sub_1D4E48324(&v44, &v46);

        sub_1D530A010(v10, &v46);

        sub_1D4E55E1C(v24, v26);

        __swift_destroy_boxed_opaque_existential_1(&v46);
        v35 = &qword_1EC7EA970;
        v36 = &unk_1D5652B00;
        v15 = v41;
        v37 = v41;
      }

      else
      {
        v38 = v41;
        sub_1D4E7661C(v41, &qword_1EC7EA970, &unk_1D5652B00);

        v39 = v26;
        v15 = v38;
        sub_1D4E55E1C(v24, v39);
        v35 = &qword_1EC7F0FE8;
        v36 = &qword_1D5652AB0;
        v37 = &v44;
      }

      sub_1D4E7661C(v37, v35, v36);
      v34 = v42;
      sub_1D531A2EC(v10, v15, type metadata accessor for UploadedAudio);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
    }

    else
    {
      v28 = v23;
      v29 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D561C050;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v31 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v31);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x646564616F6C7055, 0xED00006F69647541);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v44 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v32 = v46;
      v33 = v47;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 32) = v32;
      *(v30 + 40) = v33;
      sub_1D56162B8();

      v34 = v42;
    }

    return sub_1D531A288(v15, v34, &qword_1EC7EA970, &unk_1D5652B00);
  }

  else
  {
    sub_1D531A2EC(v17, a4, type metadata accessor for UploadedAudio);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
  }
}

uint64_t sub_1D5316CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA968, &unk_1D561D1F0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;

  sub_1D5307BC4(a1, a2);

  if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
  {
    v42 = a4;
    sub_1D4E7661C(v17, &qword_1EC7EA968, &unk_1D561D1F0);
    if (qword_1EDD574C8 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDD574D0;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
    v19 = sub_1D53078F4(v18);
    v20 = *(v4 + 16);
    v21 = sub_1D5614D38();
    v46 = 0;
    v22 = [v20 payloadDataForIdentifier:v21 identifierKinds:v19 error:&v46];

    v23 = v46;
    if (v22)
    {
      v40 = a2;
      v41 = v15;
      v24 = sub_1D560C198();
      v26 = v25;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7EAB80, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
      sub_1D560B948();
      sub_1D5319770(v43, &v44);
      if (v45)
      {
        sub_1D4E48324(&v44, &v46);

        sub_1D5309F44(v10, &v46);

        sub_1D4E55E1C(v24, v26);

        __swift_destroy_boxed_opaque_existential_1(&v46);
        v35 = &qword_1EC7EA968;
        v36 = &unk_1D561D1F0;
        v15 = v41;
        v37 = v41;
      }

      else
      {
        v38 = v41;
        sub_1D4E7661C(v41, &qword_1EC7EA968, &unk_1D561D1F0);

        v39 = v26;
        v15 = v38;
        sub_1D4E55E1C(v24, v39);
        v35 = &qword_1EC7F0FE8;
        v36 = &qword_1D5652AB0;
        v37 = &v44;
      }

      sub_1D4E7661C(v37, v35, v36);
      v34 = v42;
      sub_1D531A2EC(v10, v15, type metadata accessor for UploadedVideo);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
    }

    else
    {
      v28 = v23;
      v29 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D561C050;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v31 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v31);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x646564616F6C7055, 0xED00006F65646956);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v44 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v32 = v46;
      v33 = v47;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 32) = v32;
      *(v30 + 40) = v33;
      sub_1D56162B8();

      v34 = v42;
    }

    return sub_1D531A288(v15, v34, &qword_1EC7EA968, &unk_1D561D1F0);
  }

  else
  {
    sub_1D531A2EC(v17, a4, type metadata accessor for UploadedVideo);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
  }
}

uint64_t sub_1D53172F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4268, &qword_1D5652B18);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;

  sub_1D5309460(a1, a2);

  if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
  {
    v42 = a4;
    sub_1D4E7661C(v17, &qword_1EC7F4268, &qword_1D5652B18);
    if (qword_1EC7E9080 != -1)
    {
      swift_once();
    }

    v18 = qword_1EC7F1B00;
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
    v19 = sub_1D53078F4(v18);
    v20 = *(v4 + 16);
    v21 = sub_1D5614D38();
    v46 = 0;
    v22 = [v20 payloadDataForIdentifier:v21 identifierKinds:v19 error:&v46];

    v23 = v46;
    if (v22)
    {
      v40 = a2;
      v41 = v15;
      v24 = sub_1D560C198();
      v26 = v25;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7EE8B8, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);
      sub_1D560B948();
      sub_1D5319770(v43, &v44);
      if (v45)
      {
        sub_1D4E48324(&v44, &v46);

        sub_1D530A670(v10, &v46);

        sub_1D4E55E1C(v24, v26);

        __swift_destroy_boxed_opaque_existential_1(&v46);
        v35 = &qword_1EC7F4268;
        v36 = &qword_1D5652B18;
        v15 = v41;
        v37 = v41;
      }

      else
      {
        v38 = v41;
        sub_1D4E7661C(v41, &qword_1EC7F4268, &qword_1D5652B18);

        v39 = v26;
        v15 = v38;
        sub_1D4E55E1C(v24, v39);
        v35 = &qword_1EC7F0FE8;
        v36 = &qword_1D5652AB0;
        v37 = &v44;
      }

      sub_1D4E7661C(v37, v35, v36);
      v34 = v42;
      sub_1D531A2EC(v10, v15, type metadata accessor for CreditArtist);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
    }

    else
    {
      v28 = v23;
      v29 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D561C050;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v31 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v31);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0x7241746964657243, 0xEC00000074736974);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v44 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v32 = v46;
      v33 = v47;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 32) = v32;
      *(v30 + 40) = v33;
      sub_1D56162B8();

      v34 = v42;
    }

    return sub_1D531A288(v15, v34, &qword_1EC7F4268, &qword_1D5652B18);
  }

  else
  {
    sub_1D531A2EC(v17, a4, type metadata accessor for CreditArtist);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
  }
}

uint64_t sub_1D5317900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560CD48();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;

  sub_1D53099D8(a1, a2);

  if (__swift_getEnumTagSinglePayload(v17, 1, v8) == 1)
  {
    v42 = a4;
    sub_1D4E7661C(v17, &qword_1EC7EA608, &qword_1D561C510);
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v8);
    v18 = sub_1D53078F4(MEMORY[0x1E69E7CC0]);
    v19 = *(v4 + 16);
    v20 = sub_1D5614D38();
    v46 = 0;
    v21 = [v19 payloadDataForIdentifier:v20 identifierKinds:v18 error:&v46];

    v22 = v46;
    if (v21)
    {
      v40 = a2;
      v41 = v15;
      v23 = v10;
      v24 = sub_1D560C198();
      v26 = v25;

      sub_1D560B9C8();
      swift_allocObject();
      sub_1D560B9B8();
      _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
      sub_1D560B988();
      sub_1D4E74DDC(&qword_1EC7EAAE0, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
      sub_1D560B948();
      sub_1D5319770(v43, &v44);
      if (v45)
      {
        sub_1D4E48324(&v44, &v46);

        sub_1D530A898(v23, &v46);

        sub_1D4E55E1C(v24, v26);

        __swift_destroy_boxed_opaque_existential_1(&v46);
        v35 = &qword_1EC7EA608;
        v36 = &qword_1D561C510;
        v15 = v41;
        v37 = v41;
      }

      else
      {
        v38 = v41;
        sub_1D4E7661C(v41, &qword_1EC7EA608, &qword_1D561C510);

        v39 = v26;
        v15 = v38;
        sub_1D4E55E1C(v24, v39);
        v35 = &qword_1EC7F0FE8;
        v36 = &qword_1D5652AB0;
        v37 = &v44;
      }

      sub_1D4E7661C(v37, v35, v36);
      v34 = v42;
      sub_1D531A2EC(v23, v15, type metadata accessor for GenericMusicItem);
      __swift_storeEnumTagSinglePayload(v15, 0, 1, v8);
    }

    else
    {
      v28 = v22;
      v29 = sub_1D560BE98();

      swift_willThrow();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1D561C050;
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
      v31 = sub_1D560EEC8();
      MEMORY[0x1DA6EAC70](v31);

      MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
      MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D568ABA0);
      MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
      *&v44 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
      sub_1D5615D48();
      v32 = v46;
      v33 = v47;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 32) = v32;
      *(v30 + 40) = v33;
      sub_1D56162B8();

      v34 = v42;
    }

    return sub_1D531A288(v15, v34, &qword_1EC7EA608, &qword_1D561C510);
  }

  else
  {
    sub_1D531A2EC(v17, a4, type metadata accessor for GenericMusicItem);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
  }
}

uint64_t sub_1D5317EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v73 = a6;
  v71 = a3;
  v78 = a7;
  v83 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v74 = v15;
  v16 = sub_1D560CD48();
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  v72 = v18;
  v19 = sub_1D56158D8();
  OUTLINED_FUNCTION_1_0();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_13();
  v77 = v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = v67 - v25;
  v75 = v7;

  v27 = a1;
  v28 = a1;
  v29 = a5;
  v76 = a2;
  sub_1D50F1F7C(v28, a2, a4, a4, a5);

  if (__swift_getEnumTagSinglePayload(v26, 1, a4) != 1)
  {
    (*(v13 + 32))(v78, v26, a4);
    OUTLINED_FUNCTION_64_0();
    return __swift_storeEnumTagSinglePayload(v35, v36, v37, a4);
  }

  v30 = v78;
  v68 = v13;
  v69 = v21;
  v31 = *(v21 + 8);
  v31(v26, v19);
  v32 = type metadata accessor for GenericMusicItem(0);
  v70 = v19;
  if (v32 == a4)
  {
    v34 = MEMORY[0x1E69E7CC0];
    v33 = v27;
  }

  else
  {
    if (!dynamic_cast_existential_1_conditional(a4, a4, MEMORY[0x1E6975400]))
    {
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1D5615B68();

      v81 = 0xD00000000000001CLL;
      v82 = 0x80000001D568ABF0;
      v66 = sub_1D5616458();
      MEMORY[0x1DA6EAC70](v66);

      MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
      result = sub_1D5615E08();
      __break(1u);
      return result;
    }

    v33 = v27;
    v34 = sub_1D560EA88();
  }

  __swift_storeEnumTagSinglePayload(v77, 1, 1, a4);
  v39 = sub_1D53078F4(v34);

  v40 = *(v75 + 16);
  v41 = sub_1D5614D38();
  v81 = 0;
  v42 = [v40 payloadDataForIdentifier:v41 identifierKinds:v39 error:&v81];

  v43 = v81;
  if (v42)
  {
    v67[1] = v33;
    v67[0] = v31;
    v44 = sub_1D560C198();
    v46 = v45;

    sub_1D560B9C8();
    swift_allocObject();
    v47 = sub_1D560B9B8();
    _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
    v48 = v47;
    sub_1D560B988();
    v49 = v74;
    sub_1D560B948();
    sub_1D5319770(v71, &v79);
    if (v80)
    {
      sub_1D4E48324(&v79, &v81);
      v48 = *(v75 + 24);

      sub_1D50F2378(v49, &v81, a4, v29);

      sub_1D4E55E1C(v44, v46);

      __swift_destroy_boxed_opaque_existential_1(&v81);
      v59 = OUTLINED_FUNCTION_12_75();
      v60(v59);
    }

    else
    {
      v61 = OUTLINED_FUNCTION_12_75();
      v62(v61);

      sub_1D4E55E1C(v44, v46);
      sub_1D4E7661C(&v79, &qword_1EC7F0FE8, &qword_1D5652AB0);
    }

    (*(v68 + 32))(v48, v49, a4);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, a4);
    v52 = v78;
    v58 = v69;
  }

  else
  {
    v50 = v43;
    v51 = sub_1D560BE98();

    swift_willThrow();
    v52 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADF8, &qword_1D561DBF0);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_1D561C050;
    v81 = 0;
    v82 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000003ELL, 0x80000001D568AA90);
    v54 = sub_1D560EEC8();
    MEMORY[0x1DA6EAC70](v54);

    MEMORY[0x1DA6EAC70](0x6570797420666F20, 0xE900000000000020);
    v55 = sub_1D5616458();
    MEMORY[0x1DA6EAC70](v55);

    MEMORY[0x1DA6EAC70](0xD00000000000001CLL, 0x80000001D568AAD0);
    *&v79 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    sub_1D5615D48();
    v56 = v81;
    v57 = v82;
    *(v53 + 56) = MEMORY[0x1E69E6158];
    *(v53 + 32) = v56;
    *(v53 + 40) = v57;
    sub_1D56162B8();

    v29 = v70;
    v58 = v69;
    v48 = v77;
  }

  return (*(v58 + 32))(v52, v48, v29);
}

uint64_t sub_1D53185E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v222 = a2;
  v220 = a4;
  v221 = a1;
  v223 = a5;
  v224 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA968, &unk_1D561D1F0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v219 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA970, &unk_1D5652B00);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v218 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v217 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v216 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v215 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA888, &qword_1D563B8C0);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v214 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F65A0, &unk_1D561D200);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v213 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  v212 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED370, &unk_1D5624FE0);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  v211 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA980, &unk_1D561D210);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v210 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA988, &qword_1D56397B0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  v209 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1980, &qword_1D5642040);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  v208 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1990, &unk_1D561CEF0);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13_3();
  v44 = v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA990, &qword_1D561D220);
  OUTLINED_FUNCTION_22(v45);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v208 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_22(v49);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v208 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA898, &unk_1D561CF00);
  OUTLINED_FUNCTION_22(v53);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v208 - v55;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA998, &qword_1D561D228);
  OUTLINED_FUNCTION_22(v57);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v208 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA9A0, &qword_1D561D230);
  OUTLINED_FUNCTION_22(v61);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v208 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4268, &qword_1D5652B18);
  OUTLINED_FUNCTION_22(v65);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v208 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A0, &qword_1D5652B20);
  OUTLINED_FUNCTION_22(v69);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v208 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A8, &qword_1D561CF10);
  OUTLINED_FUNCTION_22(v73);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v208 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EEC30, &unk_1D5620CE0);
  OUTLINED_FUNCTION_22(v77);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v78);
  v80 = &v208 - v79;
  switch(*v224)
  {
    case 1:
      v135 = OUTLINED_FUNCTION_3_138();
      sub_1D530F744(v135, v136, v137, v138);
      sub_1D5613EF8();
      OUTLINED_FUNCTION_1(v76);
      if (!v85)
      {
        OUTLINED_FUNCTION_16_77(MEMORY[0x1E6976EF8]);
        OUTLINED_FUNCTION_15_1();
        v194 = *(v195 + 32);
        return v194();
      }

      v86 = &qword_1EC7EA8A8;
      v87 = &qword_1D561CF10;
      v88 = v76;
      goto LABEL_68;
    case 2:
      v118 = OUTLINED_FUNCTION_3_138();
      sub_1D530FD90(v118, v119, v120, v121);
      type metadata accessor for Composer(0);
      OUTLINED_FUNCTION_1(v72);
      if (!v85)
      {
        OUTLINED_FUNCTION_10_91();
        v185 = sub_1D4E74DDC(&qword_1EDD54820, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
        v186 = OUTLINED_FUNCTION_104_0(v185);
        v187 = type metadata accessor for Composer;
        v188 = v72;
        return sub_1D531A2EC(v188, v186, v187);
      }

      v86 = &qword_1EC7EA8A0;
      v87 = &qword_1D5652B20;
      v88 = v72;
      goto LABEL_68;
    case 3:
      v226 = 0;
      memset(v225, 0, sizeof(v225));
      sub_1D53172F0(v221, v222, v225, v68);
      sub_1D4E7661C(v225, &qword_1EC7F0FE8, &qword_1D5652AB0);
      type metadata accessor for CreditArtist(0);
      OUTLINED_FUNCTION_1(v68);
      if (!v85)
      {
        OUTLINED_FUNCTION_10_91();
        v190 = sub_1D4E74DDC(&qword_1EC7EB600, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);
        v186 = OUTLINED_FUNCTION_104_0(v190);
        v187 = type metadata accessor for CreditArtist;
        v188 = v68;
        return sub_1D531A2EC(v188, v186, v187);
      }

      result = sub_1D4E7661C(v68, &qword_1EC7F4268, &qword_1D5652B18);
      v128 = v223;
      v129 = 0uLL;
      goto LABEL_69;
    case 4:
      v104 = OUTLINED_FUNCTION_3_138();
      sub_1D5310398(v104, v105, v106, v107);
      sub_1D56141F8();
      OUTLINED_FUNCTION_1(v64);
      if (!v85)
      {
        OUTLINED_FUNCTION_16_77(MEMORY[0x1E6977018]);
        OUTLINED_FUNCTION_15_1();
        v194 = *(v184 + 32);
        return v194();
      }

      v86 = &qword_1EC7EA9A0;
      v87 = &qword_1D561D230;
      v88 = v64;
      goto LABEL_68;
    case 5:
      v149 = OUTLINED_FUNCTION_3_138();
      sub_1D53109E8(v149, v150, v151, v152);
      type metadata accessor for EditorialItem(0);
      OUTLINED_FUNCTION_1(v60);
      if (!v85)
      {
        OUTLINED_FUNCTION_10_91();
        v198 = sub_1D4E74DDC(&qword_1EDD57650, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
        v186 = OUTLINED_FUNCTION_104_0(v198);
        v187 = type metadata accessor for EditorialItem;
        v188 = v60;
        return sub_1D531A2EC(v188, v186, v187);
      }

      v86 = &qword_1EC7EA998;
      v87 = &qword_1D561D228;
      v88 = v60;
      goto LABEL_68;
    case 6:
      v159 = OUTLINED_FUNCTION_3_138();
      sub_1D5310FFC(v159, v160, v161, v162);
      sub_1D5613C48();
      OUTLINED_FUNCTION_1(v56);
      if (!v85)
      {
        OUTLINED_FUNCTION_16_77(MEMORY[0x1E6976DA0]);
        OUTLINED_FUNCTION_15_1();
        v194 = *(v201 + 32);
        return v194();
      }

      v86 = &qword_1EC7EA898;
      v87 = &unk_1D561CF00;
      v88 = v56;
      goto LABEL_68;
    case 7:
      v130 = OUTLINED_FUNCTION_2_134();
      sub_1D5311648(v130, v131, v132, v133);
      v134 = type metadata accessor for MusicMovie(0);
      OUTLINED_FUNCTION_4_91(v134);
      if (!v85)
      {
        OUTLINED_FUNCTION_10_91();
        v191 = sub_1D4E74DDC(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
        v186 = OUTLINED_FUNCTION_104_0(v191);
        v192 = type metadata accessor for MusicMovie;
        goto LABEL_73;
      }

      v86 = &qword_1EC7EA890;
      v87 = &qword_1D5672D40;
      goto LABEL_67;
    case 8:
      v173 = OUTLINED_FUNCTION_3_138();
      sub_1D5311C54(v173, v174, v175, v176);
      v177 = sub_1D560EEA8();
      if (__swift_getEnumTagSinglePayload(v48, 1, v177) == 1)
      {
        v86 = &qword_1EC7EA990;
        v87 = &qword_1D561D220;
        v88 = v48;
        goto LABEL_68;
      }

      v204 = MEMORY[0x1E69754B0];
      v205 = v223;
      v223[3] = v177;
      v205[4] = v204;
      __swift_allocate_boxed_opaque_existential_0(v205);
      OUTLINED_FUNCTION_24_0();
      v194 = *(v206 + 32);
      return v194();
    case 9:
      v52 = v44;
      v113 = OUTLINED_FUNCTION_3_138();
      sub_1D53122A8(v113, v114, v115, v116);
      v117 = sub_1D5614898();
      OUTLINED_FUNCTION_4_91(v117);
      if (!v85)
      {
        v183 = MEMORY[0x1E69773A0];
        goto LABEL_70;
      }

      v86 = &unk_1EC7F1990;
      v87 = &unk_1D561CEF0;
      goto LABEL_67;
    case 0xA:
      v52 = v208;
      v168 = OUTLINED_FUNCTION_2_134();
      sub_1D53128F8(v168, v169, v170, v171);
      v172 = type metadata accessor for Playlist.Folder(0);
      OUTLINED_FUNCTION_4_91(v172);
      if (!v85)
      {
        OUTLINED_FUNCTION_10_91();
        v203 = sub_1D4E74DDC(&unk_1EDD52B98, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
        v186 = OUTLINED_FUNCTION_104_0(v203);
        v192 = type metadata accessor for Playlist.Folder;
        goto LABEL_73;
      }

      v86 = &qword_1EC7F1980;
      v87 = &qword_1D5642040;
      goto LABEL_67;
    case 0xB:
      v52 = v209;
      v99 = OUTLINED_FUNCTION_2_134();
      sub_1D5312EFC(v99, v100, v101, v102);
      v103 = sub_1D5614B68();
      OUTLINED_FUNCTION_4_91(v103);
      if (!v85)
      {
        v183 = MEMORY[0x1E6977520];
        goto LABEL_70;
      }

      v86 = &qword_1EC7EA988;
      v87 = &qword_1D56397B0;
      goto LABEL_67;
    case 0xC:
      v52 = v210;
      v108 = OUTLINED_FUNCTION_2_134();
      sub_1D5313558(v108, v109, v110, v111);
      v112 = sub_1D560F8B8();
      OUTLINED_FUNCTION_4_91(v112);
      if (!v85)
      {
        v183 = MEMORY[0x1E6975870];
        goto LABEL_70;
      }

      v86 = &qword_1EC7EA980;
      v87 = &unk_1D561D210;
      goto LABEL_67;
    case 0xD:
      v52 = v211;
      v154 = OUTLINED_FUNCTION_2_134();
      sub_1D5313BB0(v154, v155, v156, v157);
      v158 = type metadata accessor for SocialProfile(0);
      OUTLINED_FUNCTION_4_91(v158);
      if (!v85)
      {
        OUTLINED_FUNCTION_10_91();
        v200 = sub_1D4E74DDC(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
        v186 = OUTLINED_FUNCTION_104_0(v200);
        v192 = type metadata accessor for SocialProfile;
        goto LABEL_73;
      }

      v86 = &unk_1EC7ED370;
      v87 = &unk_1D5624FE0;
      goto LABEL_67;
    case 0xE:
      v52 = v212;
      v94 = OUTLINED_FUNCTION_2_134();
      sub_1D53141C4(v94, v95, v96, v97);
      v98 = sub_1D5613838();
      OUTLINED_FUNCTION_4_91(v98);
      if (!v85)
      {
        v183 = MEMORY[0x1E6976BB0];
        goto LABEL_70;
      }

      v86 = &qword_1EC7EA978;
      v87 = &qword_1D5652B10;
      goto LABEL_67;
    case 0xF:
      v52 = v213;
      v122 = OUTLINED_FUNCTION_2_134();
      sub_1D531480C(v122, v123, v124, v125);
      v126 = sub_1D5614408();
      OUTLINED_FUNCTION_4_91(v126);
      if (!v85)
      {
        v183 = MEMORY[0x1E6977150];
        goto LABEL_70;
      }

      v86 = &unk_1EC7F65A0;
      v87 = &unk_1D561D200;
      goto LABEL_67;
    case 0x10:
      v52 = v214;
      v89 = OUTLINED_FUNCTION_2_134();
      sub_1D5314E5C(v89, v90, v91, v92);
      v93 = sub_1D5613D28();
      OUTLINED_FUNCTION_4_91(v93);
      if (v85)
      {
        v86 = &qword_1EC7EA888;
        v87 = &qword_1D563B8C0;
        goto LABEL_67;
      }

      v183 = MEMORY[0x1E6976E50];
LABEL_70:
      OUTLINED_FUNCTION_16_77(v183);
      OUTLINED_FUNCTION_15_1();
      v194 = *(v189 + 32);
      return v194();
    case 0x11:
      v52 = v215;
      v139 = OUTLINED_FUNCTION_2_134();
      sub_1D53154A8(v139, v140, v141, v142);
      v143 = type metadata accessor for TVEpisode(0);
      OUTLINED_FUNCTION_4_91(v143);
      if (!v85)
      {
        OUTLINED_FUNCTION_10_91();
        v196 = sub_1D4E74DDC(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
        v186 = OUTLINED_FUNCTION_104_0(v196);
        v192 = type metadata accessor for TVEpisode;
        goto LABEL_73;
      }

      v86 = &qword_1EC7EA880;
      v87 = &unk_1D561CEE0;
      goto LABEL_67;
    case 0x12:
      v52 = v216;
      v163 = OUTLINED_FUNCTION_2_134();
      sub_1D5315ABC(v163, v164, v165, v166);
      v167 = type metadata accessor for TVSeason(0);
      OUTLINED_FUNCTION_4_91(v167);
      if (!v85)
      {
        OUTLINED_FUNCTION_10_91();
        v202 = sub_1D4E74DDC(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
        v186 = OUTLINED_FUNCTION_104_0(v202);
        v192 = type metadata accessor for TVSeason;
        goto LABEL_73;
      }

      v86 = &qword_1EC7EA878;
      v87 = &unk_1D5634790;
      goto LABEL_67;
    case 0x13:
      v52 = v217;
      v178 = OUTLINED_FUNCTION_2_134();
      sub_1D53160C4(v178, v179, v180, v181);
      v182 = type metadata accessor for TVShow(0);
      OUTLINED_FUNCTION_4_91(v182);
      if (!v85)
      {
        OUTLINED_FUNCTION_10_91();
        v207 = sub_1D4E74DDC(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
        v186 = OUTLINED_FUNCTION_104_0(v207);
        v192 = type metadata accessor for TVShow;
        goto LABEL_73;
      }

      v86 = &qword_1EC7EA3B0;
      v87 = &unk_1D561C1F0;
      goto LABEL_67;
    case 0x14:
      v52 = v218;
      v144 = OUTLINED_FUNCTION_2_134();
      sub_1D53166C8(v144, v145, v146, v147);
      v148 = type metadata accessor for UploadedAudio(0);
      OUTLINED_FUNCTION_4_91(v148);
      if (!v85)
      {
        OUTLINED_FUNCTION_10_91();
        v197 = sub_1D4E74DDC(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
        v186 = OUTLINED_FUNCTION_104_0(v197);
        v192 = type metadata accessor for UploadedAudio;
        goto LABEL_73;
      }

      v86 = &qword_1EC7EA970;
      v87 = &unk_1D5652B00;
      goto LABEL_67;
    case 0x15:
      v52 = v219;
      sub_1D5316CDC(v221, v222, v220, v219);
      v153 = type metadata accessor for UploadedVideo(0);
      OUTLINED_FUNCTION_4_91(v153);
      if (!v85)
      {
        OUTLINED_FUNCTION_10_91();
        v199 = sub_1D4E74DDC(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
        v186 = OUTLINED_FUNCTION_104_0(v199);
        v192 = type metadata accessor for UploadedVideo;
LABEL_73:
        v187 = v192;
        v188 = v52;
        return sub_1D531A2EC(v188, v186, v187);
      }

      v86 = &qword_1EC7EA968;
      v87 = &unk_1D561D1F0;
LABEL_67:
      v88 = v52;
      goto LABEL_68;
    default:
      v81 = OUTLINED_FUNCTION_3_138();
      sub_1D530F0F8(v81, v82, v83, v84);
      sub_1D5613AF8();
      OUTLINED_FUNCTION_1(v80);
      if (v85)
      {
        v86 = &qword_1EC7EEC30;
        v87 = &unk_1D5620CE0;
        v88 = v80;
LABEL_68:
        result = sub_1D4E7661C(v88, v86, v87);
        v129 = 0uLL;
        v128 = v223;
LABEL_69:
        *v128 = v129;
        *(v128 + 1) = v129;
        v128[4] = 0;
      }

      else
      {
        OUTLINED_FUNCTION_16_77(MEMORY[0x1E6976CF0]);
        OUTLINED_FUNCTION_15_1();
        v194 = *(v193 + 32);
        return v194();
      }

      return result;
  }
}

uint64_t sub_1D5319630(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_1D50F2998(a1, a2, a3);
}

uint64_t MusicServerItemDatabase.__deallocating_deinit()
{
  MusicServerItemDatabase.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1D5319770(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0FE8, &qword_1D5652AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D531A288(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_24_0();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D531A2EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_24_0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1D531A3A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_24_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

__n128 MusicFavoriteStatusController.Item.init(id:kind:title:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 32);
  v10 = *a2;
  v11 = type metadata accessor for MusicFavoriteStatusController.Item(0);
  v12 = *(v11 + 28);
  v13 = *MEMORY[0x1E6975D50];
  sub_1D56106B8();
  OUTLINED_FUNCTION_14();
  v16 = *(a1 + 16);
  v17 = *a1;
  (*(v14 + 104))(a5 + v12, v13);
  result = v17;
  *a5 = v17;
  *(a5 + 16) = v16;
  *(a5 + 32) = v9;
  *(a5 + 33) = v10;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  *(a5 + *(v11 + 32)) = 2;
  return result;
}

uint64_t MusicFavoriteStatusController.Item.init(id:kind:title:contentRating:isLibraryAddEligible:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v10 = *(a1 + 32);
  v11 = *a2;
  v12 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v12;
  *(a7 + 32) = v10;
  *(a7 + 33) = v11;
  *(a7 + 40) = a3;
  *(a7 + 48) = a4;
  v13 = type metadata accessor for MusicFavoriteStatusController.Item(0);
  v14 = *(v13 + 28);
  sub_1D56106B8();
  OUTLINED_FUNCTION_14();
  result = (*(v15 + 32))(a7 + v14, a5);
  *(a7 + *(v13 + 32)) = a6;
  return result;
}

uint64_t type metadata accessor for MusicFavoriteStatusController.Item(uint64_t a1)
{
  result = qword_1EDD5AEF8;
  if (!qword_1EDD5AEF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double MusicFavoriteStatusController.Item.id.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1D531A63C(v2, v3, v4, v5, v6);
}

double sub_1D531A63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 >= 2 && a5 != 0)
  {
    if (a5 != 1)
    {
      return result;
    }
  }

  return result;
}

uint64_t MusicFavoriteStatusController.Item.title.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t MusicFavoriteStatusController.Item.contentRating.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicFavoriteStatusController.Item(0) + 28);
  sub_1D56106B8();
  OUTLINED_FUNCTION_14();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

BOOL static MusicFavoriteStatusController.Item.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v24 = *a1;
  v25 = v4;
  v26 = v5;
  v27 = v6;
  v28 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v19 = *a2;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  sub_1D531A63C(v24, v4, v5, v6, v7);
  sub_1D531A63C(v19, v8, v9, v10, v11);
  v12 = static MusicFavoriteStatusController.Item.ID.== infix(_:_:)(&v24, &v19);
  sub_1D531A8D0(v19, v20, v21, v22, v23);
  sub_1D531A8D0(v24, v25, v26, v27, v28);
  if ((v12 & 1) == 0 || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  v13 = *(a1 + 40) == *(a2 + 40) && *(a1 + 48) == *(a2 + 48);
  if (!v13 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for MusicFavoriteStatusController.Item(0);
  if ((sub_1D56106A8() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v14 + 32);
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 != 2)
  {
    return v17 != 2 && ((v17 ^ v16) & 1) == 0;
  }

  return v17 == 2;
}

uint64_t sub_1D531A8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 >= 2 && a5 != 0)
  {
    if (a5 != 1)
    {
      return result;
    }
  }
}

uint64_t MusicFavoriteStatusController.Item.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 32))
  {
    case 1:
      MEMORY[0x1DA6EC0D0](1);
      sub_1D5614E28();
      goto LABEL_7;
    case 2:
      v2 = 2;
      goto LABEL_5;
    case 3:
      v2 = 3;
      goto LABEL_5;
    default:
      v2 = 0;
LABEL_5:
      MEMORY[0x1DA6EC0D0](v2);
LABEL_7:
      sub_1D5614E28();
      MEMORY[0x1DA6EC0D0](*(v1 + 33));
      sub_1D5614E28();
      v3 = type metadata accessor for MusicFavoriteStatusController.Item(0);
      sub_1D56106B8();
      sub_1D531AE1C(&qword_1EC7ECCA8, MEMORY[0x1E6975D60], MEMORY[0x1E6975D70]);
      sub_1D5614CB8();
      if (*(v1 + *(v3 + 32)) != 2)
      {
        sub_1D56162F8();
      }

      return sub_1D56162F8();
  }
}

uint64_t MusicFavoriteStatusController.Item.hashValue.getter()
{
  sub_1D56162D8();
  MusicFavoriteStatusController.Item.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D531AAF4(uint64_t a1)
{
  sub_1D56162D8();
  MusicFavoriteStatusController.Item.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t sub_1D531AB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = MusicFavoriteStatusController.Item.ID.description.getter();
  MEMORY[0x1DA6EAC70](v6);

  MEMORY[0x1DA6EAC70](540697705, 0xE400000000000000);

  MEMORY[0x1DA6EAC70](0x203A646E696B202CLL, 0xE800000000000000);
  sub_1D502EDA0(*(v5 + 33));
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  MEMORY[0x1DA6EAC70](*(v5 + 40), *(v5 + 48));
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x3A656C746974202CLL, 0xEA00000000002220);

  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD000000000000011, 0x80000001D568AC30);
  type metadata accessor for MusicFavoriteStatusController.Item(0);
  sub_1D56106B8();
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  sub_1D5615B68();

  v7 = sub_1D56158C8();
  MEMORY[0x1DA6EAC70](v7);

  MEMORY[0x1DA6EAC70](0xD000000000000018, 0x80000001D568AC50);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0x286D657449;
}

unint64_t sub_1D531AD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1D531AB30(a1, a2, a3, a4, a5);
  MEMORY[0x1DA6EAC70](v5);

  return 0xD00000000000001ELL;
}

uint64_t sub_1D531AE1C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_1D531AE8C(uint64_t a1)
{
  sub_1D56106B8();
  if (v1 <= 0x3F)
  {
    sub_1D531AF38();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D531AF38()
{
  if (!qword_1EDD5F550)
  {
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5F550);
    }
  }
}

MusicKitInternal::MusicRestrictions __swiftcall MusicRestrictions.init(allowsExplicitContent:allowsMusicSubscription:allowsMusicVideos:allowsRadio:maximumMovieRating:maximumTVShowRating:)(Swift::Bool allowsExplicitContent, Swift::Bool allowsMusicSubscription, Swift::Bool allowsMusicVideos, Swift::Bool allowsRadio, Swift::Int maximumMovieRating, Swift::Int maximumTVShowRating)
{
  *v6 = allowsExplicitContent;
  *(v6 + 1) = allowsMusicSubscription;
  *(v6 + 2) = allowsMusicVideos;
  *(v6 + 3) = allowsRadio;
  *(v6 + 8) = maximumMovieRating;
  *(v6 + 16) = maximumTVShowRating;
  LOBYTE(result.maximumTVShowRating) = allowsMusicVideos;
  LOBYTE(result.maximumMovieRating) = allowsMusicSubscription;
  result.allowsExplicitContent = allowsExplicitContent;
  return result;
}

uint64_t static MusicRestrictions.current.getter()
{
  if (qword_1EDD5B420 != -1)
  {
    OUTLINED_FUNCTION_3_139(&qword_1EDD5B420);
  }

  return sub_1D528BCC0();
}

uint64_t static MusicRestrictions.updates.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F42B8, &qword_1D5652C10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v0);
  v4[16] = 0;
  (*(v2 + 104))(&v4[-v1], *MEMORY[0x1E69E8650]);
  return sub_1D56154A8();
}

uint64_t sub_1D531B118(uint64_t a1, int a2)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F42E0, &qword_1D5652E68);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for MusicRestrictionsObserver.ObservationToken(0);
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  if (qword_1EDD5B420 != -1)
  {
    OUTLINED_FUNCTION_3_139(&qword_1EDD5B420);
  }

  v15 = qword_1EDD76D38;
  (*(v5 + 16))(v8, a1, v3);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, v8, v3);
  sub_1D528C760(v23 & 1, sub_1D531C488, v17, v14);

  sub_1D528DCE0(v14, v12);
  v18 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  sub_1D528DD44(v12, v19 + v18);
  v20 = v15;
  sub_1D5615468();
  return sub_1D528DE18(v14);
}

uint64_t sub_1D531B3A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F42E8, &unk_1D5652E70);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10[-v4];
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v10[8] = *a1;
  v10[9] = v6;
  v10[10] = v7;
  v10[11] = v8;
  v11 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F42E0, &qword_1D5652E68);
  sub_1D5615478();
  return (*(v3 + 8))(v5, v2);
}

unint64_t MusicRestrictions.description.getter()
{
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_5_106();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_94();

  OUTLINED_FUNCTION_4_103();

  OUTLINED_FUNCTION_5_106();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_94();

  OUTLINED_FUNCTION_4_103();

  OUTLINED_FUNCTION_5_106();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_9_94();

  OUTLINED_FUNCTION_4_103();

  OUTLINED_FUNCTION_5_106();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_94();

  OUTLINED_FUNCTION_4_103();

  OUTLINED_FUNCTION_5_106();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v4 = v0;
  v1 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v1);

  MEMORY[0x1DA6EAC70](0xD000000000000016, v4);

  OUTLINED_FUNCTION_5_106();
  sub_1D5615B68();

  OUTLINED_FUNCTION_9_0();
  v2 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v2);

  OUTLINED_FUNCTION_4_103();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000012;
}

BOOL static MusicRestrictions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0 && ((a1[3] ^ a2[3]) & 1) == 0 && *(a1 + 1) == *(a2 + 1))
  {
    return *(a1 + 2) == *(a2 + 2);
  }

  return result;
}

uint64_t sub_1D531B7F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001D568ACF0 == a2;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x80000001D568AD10 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001D568AD30 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x615273776F6C6C61 && a2 == 0xEB000000006F6964;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x80000001D568AD50 == a2;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x80000001D568AD70 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1D5616168();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D531B9E4(char a1)
{
  result = 0x615273776F6C6C61;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      return result;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_1D531BACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D531B7F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D531BAF4(uint64_t a1)
{
  v2 = sub_1D531BEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D531BB30(uint64_t a1)
{
  v2 = sub_1D531BEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicRestrictions.hash(into:)()
{
  OUTLINED_FUNCTION_8_100();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  MEMORY[0x1DA6EC0D0](v0);
  return MEMORY[0x1DA6EC0D0](v1);
}

uint64_t MusicRestrictions.hashValue.getter()
{
  OUTLINED_FUNCTION_8_100();
  sub_1D56162D8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  MEMORY[0x1DA6EC0D0](v0);
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D531BC88(uint64_t a1)
{
  sub_1D56162D8();
  MusicRestrictions.hash(into:)();
  return sub_1D5616328();
}

uint64_t MusicRestrictions.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F42C0, &qword_1D5652C18);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  v10 = *(v1 + 1);
  v15 = *(v1 + 2);
  v16 = v10;
  v14 = *(v1 + 3);
  v11 = *(v1 + 8);
  v13[0] = *(v1 + 16);
  v13[1] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D531BEF4();
  sub_1D56163D8();
  v22 = 0;
  sub_1D5616098();
  if (!v2)
  {
    v21 = 1;
    OUTLINED_FUNCTION_2_135();
    sub_1D5616098();
    v20 = 2;
    OUTLINED_FUNCTION_2_135();
    sub_1D5616098();
    v19 = 3;
    OUTLINED_FUNCTION_2_135();
    sub_1D5616098();
    v18 = 4;
    OUTLINED_FUNCTION_2_135();
    sub_1D56160B8();
    v17 = 5;
    OUTLINED_FUNCTION_2_135();
    sub_1D56160B8();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1D531BEF4()
{
  result = qword_1EDD5EFB8;
  if (!qword_1EDD5EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EFB8);
  }

  return result;
}

uint64_t MusicRestrictions.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F42C8, &qword_1D5652C20);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D531BEF4();
  sub_1D5616398();
  if (!v2)
  {
    v25 = 0;
    OUTLINED_FUNCTION_0_181();
    v11 = sub_1D5615FA8();
    v24 = 1;
    OUTLINED_FUNCTION_0_181();
    v12 = sub_1D5615FA8();
    v23 = 2;
    OUTLINED_FUNCTION_0_181();
    v19 = sub_1D5615FA8();
    v22 = 3;
    OUTLINED_FUNCTION_0_181();
    v18 = sub_1D5615FA8();
    v21 = 4;
    OUTLINED_FUNCTION_0_181();
    v17 = sub_1D5615FC8();
    v20 = 5;
    OUTLINED_FUNCTION_0_181();
    v14 = sub_1D5615FC8();
    (*(v7 + 8))(v10, v5);
    *a2 = v11 & 1;
    v15 = v19 & 1;
    *(a2 + 1) = v12 & 1;
    v16 = v18 & 1;
    *(a2 + 2) = v15;
    *(a2 + 3) = v16;
    *(a2 + 8) = v17;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D531C180()
{
  result = qword_1EC7F42D0;
  if (!qword_1EC7F42D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F42D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicRestrictions(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[24])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicRestrictions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicRestrictions.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D531C384()
{
  result = qword_1EC7F42D8;
  if (!qword_1EC7F42D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F42D8);
  }

  return result;
}

unint64_t sub_1D531C3DC()
{
  result = qword_1EDD5EFA8;
  if (!qword_1EDD5EFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EFA8);
  }

  return result;
}

unint64_t sub_1D531C434()
{
  result = qword_1EDD5EFB0;
  if (!qword_1EDD5EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5EFB0);
  }

  return result;
}

uint64_t sub_1D531C488(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F42E0, &qword_1D5652E68);

  return sub_1D531B3A0(a1);
}

uint64_t sub_1D531C5E0()
{
  v0 = MEMORY[0x1DA6E2A70]();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1D531C628(uint64_t a1)
{
  result = sub_1D56158D8();
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

uint64_t sub_1D531C6E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v205 = a2;
  v207 = a1;
  v4 = *v2;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v194 = v6;
  v195 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v193 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4378, &qword_1D5652FF8);
  OUTLINED_FUNCTION_4();
  v192 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4380, &qword_1D5653000);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v13);
  v200 = v4;
  v14 = v4 + qword_1EDD76D48;
  v15 = *(v4 + qword_1EDD76D48 + 16);
  v206 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v196 = v16;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v18);
  v201 = v15;
  v186 = *(v15 - 8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4388, &unk_1D5653008);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v181 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF1E0, &unk_1D5630770);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v181 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4390, &qword_1D5653018);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_59_0();
  v197 = (v31 - v32);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v181 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4398, &unk_1D5653020);
  v37 = OUTLINED_FUNCTION_22(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_59_0();
  v198 = (v38 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v181 - v41;
  v43 = *(v14 + 8);
  v202 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v199 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_59_0();
  v48 = v46 - v47;
  v50 = MEMORY[0x1EEE9AC00](v49);
  v52 = &v181 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v181 - v53;
  v203 = v43;
  v55 = sub_1D560DDF8();
  sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  v57 = MEMORY[0x1EEE9AC00](v56);
  v204 = v3;
  v60 = *(v3 + qword_1EC7F42F0);
  if (v60 >> 62)
  {
    v61 = v60 & 0x3FFFFFFFFFFFFFFFLL;
    if (v60 >> 62 == 1)
    {
      swift_getAssociatedTypeWitness();
      swift_retain_n();
      v62 = sub_1D560CDF8();
      v208 = v60 & 0x3FFFFFFFFFFFFFFFLL;
      if (v62)
      {
        v211 = v62;
        v63 = sub_1D5615C78();
        v65 = OUTLINED_FUNCTION_13_78(v63, v64, v63, MEMORY[0x1E69E6938]);

        if (v65)
        {
          v66 = v204;
          v67 = v199;
          v68 = v202;
          (*(v199 + 16))(v48, v204 + *(*v204 + qword_1EDD76D48 + 64), v202);
          if (__swift_getEnumTagSinglePayload(v48, 1, v203) == 1)
          {
            (*(v67 + 8))(v48, v68);
          }

          else if (swift_dynamicCast())
          {
            v69 = v208;
            v70 = v198;
            sub_1D560CE08();
            v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0C68, &qword_1D563BBC0);
            if (__swift_getEnumTagSinglePayload(v70, 1, v71) == 1)
            {
              sub_1D4E7661C(v70, &qword_1EC7F4398, &unk_1D5653020);
            }

            else
            {
              v72 = sub_1D560DDE8();
              OUTLINED_FUNCTION_24_0();
              (*(v73 + 8))(v70, v71);
              if (((v69 ^ v72) & 1) == 0)
              {
                v74 = qword_1EDD76D48;
                OUTLINED_FUNCTION_1_138(v200 + qword_1EDD76D48);
                v75 = swift_dynamicCastClass();
                if (v75)
                {
                  v76 = *(v66 + *(*v66 + v74 + 72));
                  if (v76)
                  {
                    v77 = v75;

                    v78 = OUTLINED_FUNCTION_46_1();
                    sub_1D4EA73A4(v78, v79);
                    v76(v77);

                    v80 = OUTLINED_FUNCTION_46_1();
                    sub_1D4EA7420(v80, v81);
                  }
                }
              }
            }
          }

          v208 = 0;
          v209 = 0xE000000000000000;
          sub_1D5615B68();
          MEMORY[0x1DA6EAC70](0xD00000000000001ALL, 0x80000001D568AE60);
          v211 = v61;
          sub_1D56163E8();
          sub_1D5616138();
          OUTLINED_FUNCTION_20_68();
          while (1)
          {
LABEL_72:
            sub_1D5615E08();
            __break(1u);
LABEL_73:
            v178 = OUTLINED_FUNCTION_63_1();
            v179(v178);
LABEL_75:
            v208 = 0;
            v209 = 0xE000000000000000;
            sub_1D5615B68();
            MEMORY[0x1DA6EAC70](0xD000000000000019, 0x80000001D568AEA0);
            v211 = v182;
            sub_1D56163E8();
            sub_1D5616138();
            OUTLINED_FUNCTION_20_68();
          }
        }
      }
    }

    else
    {
      swift_retain_n();
      v100 = sub_1D560CDF8();
      v208 = v60 & 0x3FFFFFFFFFFFFFFFLL;
      if (v100)
      {
        v211 = v100;
        v101 = sub_1D5615C78();
        v103 = OUTLINED_FUNCTION_13_78(v101, v102, v101, MEMORY[0x1E69E6938]);

        if (v103)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
          v104 = v197;
          sub_1D560CE08();
          v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F43A0, &unk_1D5653030);
          if (__swift_getEnumTagSinglePayload(v104, 1, v105) == 1)
          {

            return sub_1D4E7661C(v104, &qword_1EC7F4390, &qword_1D5653018);
          }

          v111 = sub_1D560DDD8();
          OUTLINED_FUNCTION_24_0();
          (*(v112 + 8))(v104, v105);
          v113 = *(v111 + 16);
          if (v113)
          {
            v207 = v60 & 0x3FFFFFFFFFFFFFFFLL;
            v211 = MEMORY[0x1E69E7CC0];
            sub_1D4F03EEC(0, v113, 0);
            v114 = v211;
            v206 = v111;
            v115 = v111 + 32;
            v117 = v194;
            v116 = v195;
            v118 = v193;
            do
            {
              sub_1D4E628D4(v115, &v208);
              __swift_project_boxed_opaque_existential_1(&v208, *(&v210 + 1));
              sub_1D560EC98();
              __swift_destroy_boxed_opaque_existential_1(&v208);
              v211 = v114;
              v120 = *(v114 + 16);
              v119 = *(v114 + 24);
              if (v120 >= v119 >> 1)
              {
                sub_1D4F03EEC(v119 > 1, v120 + 1, 1);
                v114 = v211;
              }

              *(v114 + 16) = v120 + 1;
              v117[4](v114 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + v117[9] * v120, v118, v116);
              v115 += 40;
              --v113;
            }

            while (v113);
          }

          else
          {

            v114 = MEMORY[0x1E69E7CC0];
          }

          v141 = sub_1D56133D8();
          sub_1D4EF378C(v114);
          v141(&v208, 0);
        }
      }
    }
  }

  v184 = v59;
  v195 = &v181 - v58;
  v185 = v57;
  v193 = v24;
  v194 = v42;
  v197 = v28;
  v198 = v35;
  v183 = v52;
  v82 = v206;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  v84 = sub_1D560CDF8();
  v208 = v60;
  if (!v84)
  {
  }

  v211 = v84;
  v85 = sub_1D5615C78();
  v87 = OUTLINED_FUNCTION_13_78(v85, v86, v85, MEMORY[0x1E69E6938]);

  if ((v87 & 1) == 0)
  {
  }

  v181 = AssociatedTypeWitness;
  v182 = v60;
  v88 = *v204;
  v89 = qword_1EDD76D48;
  v90 = *(v204 + *(*v204 + qword_1EDD76D48 + 80));
  if (v90 && (OUTLINED_FUNCTION_1_138(v200 + qword_1EDD76D48), (v91 = swift_dynamicCastClass()) != 0))
  {
    v92 = v91;
    v93 = OUTLINED_FUNCTION_46_1();
    sub_1D4EA73A4(v93, v94);

    v95 = v195;
    sub_1D560CE08();
    OUTLINED_FUNCTION_1(v95);
    if (!v96)
    {
      v136 = sub_1D560DDB8();
      OUTLINED_FUNCTION_15_1();
      (*(v137 + 8))(v95, v55);
      v90(v92, v136);

      OUTLINED_FUNCTION_4_104();

      v138 = OUTLINED_FUNCTION_46_1();
      return sub_1D4EA7420(v138, v139);
    }

    v97 = OUTLINED_FUNCTION_46_1();
    sub_1D4EA7420(v97, v98);

    (*(v184 + 8))(v95, v185);
    v99 = v204;
    v88 = *v204;
    v89 = qword_1EDD76D48;
  }

  else
  {
    v99 = v204;
  }

  v106 = *(v88 + v89 + 64);
  v107 = v199;
  v108 = v202;
  v204 = *(v199 + 16);
  (v204)(v54, v99 + v106, v202);
  v109 = v203;
  if (__swift_getEnumTagSinglePayload(v54, 1, v203) == 1)
  {
    (*(v107 + 8))(v54, v108);
    v110 = v82;
LABEL_39:
    v124 = v196;
    goto LABEL_40;
  }

  v110 = v82;
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_39;
  }

  v121 = v208;
  v122 = v194;
  sub_1D560CE08();
  v123 = v122;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0C68, &qword_1D563BBC0);
  OUTLINED_FUNCTION_1(v123);
  v124 = v196;
  if (v96)
  {
    sub_1D4E7661C(v123, &qword_1EC7F4398, &unk_1D5653020);
  }

  else
  {
    v142 = sub_1D560DDE8();
    OUTLINED_FUNCTION_15_1();
    v143 = OUTLINED_FUNCTION_159();
    v144(v143);
    if (((v121 ^ v142) & 1) == 0)
    {
      v145 = qword_1EDD76D48;
      OUTLINED_FUNCTION_1_138(v200 + qword_1EDD76D48);
      v146 = swift_dynamicCastClass();
      if (v146)
      {
        v147 = *(v99 + *(*v99 + v145 + 72));
        if (v147)
        {
          goto LABEL_54;
        }
      }
    }
  }

LABEL_40:
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
  v126 = v198;
  OUTLINED_FUNCTION_12_76(v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F43A0, &unk_1D5653030);
  v127 = OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_1(v127);
  if (!v96)
  {
    sub_1D560DDD8();
    OUTLINED_FUNCTION_15_1();
    (*(v132 + 8))(v133, v109);
    sub_1D5613378();
    v134 = OUTLINED_FUNCTION_75_1();
    sub_1D4EF34E0(v134);
    v109(&v208, 0);
LABEL_47:
    OUTLINED_FUNCTION_4_104();
  }

  sub_1D4E7661C(v126, &qword_1EC7F4390, &qword_1D5653018);
  v128 = v197;
  OUTLINED_FUNCTION_12_76(MEMORY[0x1E6975528]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF1E8, &qword_1D5653040);
  v129 = OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_1(v129);
  if (!v96)
  {
    sub_1D560DDC8();
    OUTLINED_FUNCTION_15_1();
    (*(v135 + 8))(v128, v109);
    sub_1D56133C8();
    goto LABEL_47;
  }

  sub_1D4E7661C(v128, &qword_1EC7EF1E0, &unk_1D5630770);
  v130 = v193;
  OUTLINED_FUNCTION_12_76(&type metadata for Playlist.Variant);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F43A8, &unk_1D5653048);
  v131 = OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_1(v131);
  if (v96)
  {
    sub_1D4E7661C(v130, &qword_1EC7F4388, &unk_1D5653008);
LABEL_60:
    v167 = v183;
    (v204)(v183, v99 + v106, v202);
    if (__swift_getEnumTagSinglePayload(v167, 1, v203) == 1)
    {
      goto LABEL_73;
    }

    v168 = swift_dynamicCast();
    v169 = v200;
    v170 = v189;
    if ((v168 & 1) == 0)
    {
      goto LABEL_75;
    }

    v171 = v208;
    sub_1D560CE08();
    v172 = v190;
    if (__swift_getEnumTagSinglePayload(v170, 1, v190) == 1)
    {
      sub_1D4E7661C(v170, &qword_1EC7F4380, &qword_1D5653000);
      goto LABEL_75;
    }

    v173 = v192;
    v174 = v191;
    (*(v192 + 16))(v191, v170, v172);
    v175 = (*(v173 + 88))(v174, v172);
    if (v175 != *MEMORY[0x1E6975090])
    {
      if (v175 == *MEMORY[0x1E6975098])
      {
        OUTLINED_FUNCTION_2_136();
        v180 = 235;
      }

      else
      {
        if (v175 != *MEMORY[0x1E69750A0])
        {
          OUTLINED_FUNCTION_2_136();
          v181 = 239;
          goto LABEL_72;
        }

        OUTLINED_FUNCTION_2_136();
        v180 = 237;
      }

      v181 = v180;
      goto LABEL_72;
    }

    (*(v173 + 96))(v174, v172);
    v176 = *v174;
    LOBYTE(v208) = *v174;
    if (!sub_1D531E2E8(&v208))
    {
      OUTLINED_FUNCTION_2_136();
      v181 = 232;
      goto LABEL_72;
    }

    (*(v173 + 8))(v170, v172);
    if (v171 != v176)
    {
      goto LABEL_75;
    }

    v177 = qword_1EDD76D48;
    OUTLINED_FUNCTION_1_138(v169 + qword_1EDD76D48);
    v146 = swift_dynamicCastClass();
    if (!v146)
    {
      goto LABEL_75;
    }

    v147 = *(v99 + *(*v99 + v177 + 72));
    if (!v147)
    {
      goto LABEL_75;
    }

LABEL_54:
    v148 = v146;

    v149 = OUTLINED_FUNCTION_63_1();
    sub_1D4EA73A4(v149, v150);
    v147(v148);
    OUTLINED_FUNCTION_4_104();

    v151 = OUTLINED_FUNCTION_63_1();
    sub_1D4EA7420(v151, v152);
  }

  v153 = sub_1D531DCD4();
  OUTLINED_FUNCTION_15_1();
  (*(v154 + 8))(v130, v109);
  v208 = v153;
  type metadata accessor for MusicKit_SoftLinking_MPModelPlaylistVariants();
  v155 = v188;
  v156 = v201;
  v157 = swift_dynamicCast();
  if ((v157 & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v155, 1, 1, v156);
    (*(v124 + 8))(v155, v110);
    goto LABEL_60;
  }

  __swift_storeEnumTagSinglePayload(v155, 0, 1, v156);
  v158 = v186;
  v159 = v187;
  (*(v186 + 32))(v187, v155, v156);
  v160 = *(v200 + qword_1EDD76D48 + 24);
  v161 = *(v200 + qword_1EDD76D48 + 40);
  v208 = v156;
  v209 = v160;
  v210 = v161;
  type metadata accessor for LibraryRequestConfigurationParameters(0, &v208);
  v162 = swift_dynamicCastClass();
  if (!v162)
  {
    (*(v158 + 8))(v159, v156);
    goto LABEL_60;
  }

  v163 = v162;

  OUTLINED_FUNCTION_4_104();

  OUTLINED_FUNCTION_17_70();
  v165 = v158;
  v166 = *(v164 + qword_1EDD76EF0 + 32);
  swift_beginAccess();
  (*(v165 + 24))(v163 + v166, v159, v156);
  swift_endAccess();

  return (*(v165 + 8))(v159, v156);
}

uint64_t sub_1D531DCD4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F43A8, &unk_1D5653048);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  (*(v4 + 16))(&v20 - v6, v1, v2);
  v8 = OUTLINED_FUNCTION_159();
  v10 = v9(v8);
  if (v10 == *MEMORY[0x1E6975090])
  {
    goto LABEL_26;
  }

  if (v10 == *MEMORY[0x1E6975098])
  {
    v11 = OUTLINED_FUNCTION_159();
    v12(v11);
    v13 = *(*v7 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = 32;
      do
      {
        switch(*(*v7 + v15))
        {
          case 1:
            if ((v14 & 2) == 0)
            {
              v16 = 2;
              goto LABEL_22;
            }

            break;
          case 2:
            if ((v14 & 4) == 0)
            {
              v16 = 4;
              goto LABEL_22;
            }

            break;
          case 3:
            if ((v14 & 0x80) == 0)
            {
              v16 = 128;
              goto LABEL_22;
            }

            break;
          case 4:
            if ((v14 & 8) == 0)
            {
              v16 = 8;
              goto LABEL_22;
            }

            break;
          case 5:
            if ((v14 & 0x10) == 0)
            {
              v16 = 16;
              goto LABEL_22;
            }

            break;
          case 6:
            if ((v14 & 0x20) == 0)
            {
              v16 = 32;
              goto LABEL_22;
            }

            break;
          case 7:
            if ((v14 & 0x40) == 0)
            {
              v16 = 64;
              goto LABEL_22;
            }

            break;
          default:
            if ((v14 & 1) == 0)
            {
              v16 = 1;
LABEL_22:
              v14 |= v16;
            }

            break;
        }

        ++v15;
        --v13;
      }

      while (v13);
    }

    else
    {

      return 0;
    }

    return v14;
  }

  if (v10 == *MEMORY[0x1E69750A0])
  {
LABEL_26:
    v17 = OUTLINED_FUNCTION_159();
    v18(v17);
    return qword_1D5653058[*v7];
  }

  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D531DF7C()
{
  OUTLINED_FUNCTION_5_52();

  OUTLINED_FUNCTION_5_52();
  v2 = *(v1 + qword_1EDD76D48 + 64);
  sub_1D56158D8();
  OUTLINED_FUNCTION_24_0();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_5_52();
  sub_1D4EA7420(*(v0 + *(v4 + qword_1EDD76D48 + 72)), *(v0 + *(v4 + qword_1EDD76D48 + 72) + 8));
  OUTLINED_FUNCTION_5_52();
  v6 = (v0 + *(v5 + qword_1EDD76D48 + 80));
  v7 = *v6;
  v8 = v6[1];

  return sub_1D4EA7420(v7, v8);
}

uint64_t sub_1D531E0C0()
{
  v0 = MEMORY[0x1DA6E2A70]();

  OUTLINED_FUNCTION_17_70();
  v2 = *(v1 + qword_1EDD76D48 + 64);
  sub_1D56158D8();
  OUTLINED_FUNCTION_24_0();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_17_70();
  sub_1D4EA7420(*(v0 + *(v4 + qword_1EDD76D48 + 72)), *(v0 + *(v4 + qword_1EDD76D48 + 72) + 8));
  OUTLINED_FUNCTION_17_70();
  sub_1D4EA7420(*(v0 + *(v5 + qword_1EDD76D48 + 80)), *(v0 + *(v5 + qword_1EDD76D48 + 80) + 8));
  return v0;
}

uint64_t sub_1D531E208()
{
  v0 = sub_1D531E0C0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1D531E274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_1D531E2E8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 != 1)
  {
    if (qword_1EDD5D8A8 != -1)
    {
      swift_once();
    }

    v2 = sub_1D560C758();
    __swift_project_value_buffer(v2, qword_1EDD76DC8);
    v3 = sub_1D560C738();
    v4 = sub_1D56156C8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D4E3F000, v3, v4, "MusicFavoriteStatus for .neutral and .disliked is not supported as a filter option for MusicLibraryRequest.", v5, 2u);
      MEMORY[0x1DA6ED200](v5, -1, -1);
    }
  }

  return v1 == 1;
}

void OUTLINED_FUNCTION_20_68()
{

  JUMPOUT(0x1DA6EAC70);
}

void sub_1D531E3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v32 = OUTLINED_FUNCTION_22(v31);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v36 = OUTLINED_FUNCTION_22(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  v40 = *v28;
  v41 = v28[1];
  v42 = sub_1D56140F8();
  v43 = OUTLINED_FUNCTION_5_43();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  v46 = (*(v24 + 48))(v26, v24);
  if (v46)
  {
    sub_1D4ED06C8(v40, v41, v46, v39);

    sub_1D4F7B054(v39, v20, &qword_1EC7EB5B8, &unk_1D56206A0);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    if (__swift_getEnumTagSinglePayload(v20, 1, v47) == 1)
    {
      sub_1D4E6C9CC(v39, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E6C9CC(v30, &qword_1EC7E9CA0, &unk_1D561A0C0);
      sub_1D4E6C9CC(v20, &qword_1EC7EB5B8, &unk_1D56206A0);
      v48 = 1;
    }

    else
    {
      sub_1D5610758();
      sub_1D4E6C9CC(v39, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E6C9CC(v30, &qword_1EC7E9CA0, &unk_1D561A0C0);
      (*(*(v47 - 8) + 8))(v20, v47);
      v48 = 0;
    }

    __swift_storeEnumTagSinglePayload(v34, v48, 1, v42);
    sub_1D531EC24(v34, v30);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D531E684(void (*a1)(unint64_t, unint64_t))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x1EEE9AC00](v4);
  a1(0xD000000000000011, 0x80000001D567FAA0);
  OUTLINED_FUNCTION_18_73();
  v5 = sub_1D56140F8();
  return OUTLINED_FUNCTION_15_77(v5);
}

uint64_t sub_1D531E7A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  v19 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v19);
  v20 = *(v2 + *(type metadata accessor for EditorialCard(0) + 28));
  if (v20)
  {
    sub_1D4ED06C8(0xD000000000000011, 0x80000001D567FAA0, v20, v18);
    sub_1D4F7B054(v18, v16, &qword_1EC7EB5B8, &unk_1D56206A0);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    if (__swift_getEnumTagSinglePayload(v16, 1, v21) == 1)
    {
      sub_1D4E6C9CC(v18, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E6C9CC(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      sub_1D4E6C9CC(v16, &qword_1EC7EB5B8, &unk_1D56206A0);
      v22 = 1;
    }

    else
    {
      sub_1D5610758();
      sub_1D4E6C9CC(v18, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E6C9CC(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      (*(*(v21 - 8) + 8))(v16, v21);
      v22 = 0;
    }

    __swift_storeEnumTagSinglePayload(v12, v22, 1, v19);
    sub_1D531EC24(v12, a1);
  }

  sub_1D4F7B054(a1, v10, &qword_1EC7E9CA0, &unk_1D561A0C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v19);
  result = sub_1D4E6C9CC(v10, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4F5C564(v7);
    sub_1D4E6C9CC(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
    return sub_1D531EC24(v7, a1);
  }

  return result;
}

uint64_t sub_1D531EC24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D531ECD4()
{
  OUTLINED_FUNCTION_47();
  v20 = v2;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_0_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = OUTLINED_FUNCTION_12_77();
  v4(v13);
  OUTLINED_FUNCTION_20_69();
  v14 = sub_1D56140F8();
  v15 = OUTLINED_FUNCTION_21_62(v14);
  sub_1D4E6C9CC(v12, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (v15 == 1)
  {
    v16 = OUTLINED_FUNCTION_13_79();
    v4(v16);
    sub_1D4E6C9CC(v6, &qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_23_59();
  }

  sub_1D4F7B054(v6, v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v1);
  v18 = sub_1D4E6C9CC(v0, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (EnumTagSinglePayload == 1)
  {
    v20(v18);
    sub_1D4E6C9CC(v6, &qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_23_59();
  }

  OUTLINED_FUNCTION_46();
}

void sub_1D531EE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v27 = OUTLINED_FUNCTION_22(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_59_0();
  v30 = v28 - v29;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &a9 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &a9 - v35;
  v37 = OUTLINED_FUNCTION_12_77();
  v23(v37);
  sub_1D4F7B054(v25, v36, &qword_1EC7E9CA0, &unk_1D561A0C0);
  v38 = sub_1D56140F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v36, 1, v38);
  sub_1D4E6C9CC(v36, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (EnumTagSinglePayload == 1)
  {
    v40 = OUTLINED_FUNCTION_13_79();
    v23(v40);
    sub_1D4E6C9CC(v25, &qword_1EC7E9CA0, &unk_1D561A0C0);
    sub_1D531EC24(v34, v25);
  }

  sub_1D4F7B054(v25, v30, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v38) == 1)
  {
    sub_1D4E6C9CC(v25, &qword_1EC7E9CA0, &unk_1D561A0C0);
    sub_1D4E6C9CC(v30, &qword_1EC7E9CA0, &unk_1D561A0C0);
    v41 = OUTLINED_FUNCTION_5_43();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v38);
  }

  else
  {
    sub_1D4E6C9CC(v30, &qword_1EC7E9CA0, &unk_1D561A0C0);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D531F294@<X0>(void (*a1)(uint64_t, unint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x1EEE9AC00](v7);
  a1(0x6F436573776F7262, 0xEB00000000726576);
  OUTLINED_FUNCTION_18_73();
  v8 = sub_1D56140F8();
  result = OUTLINED_FUNCTION_15_77(v8);
  if (v2 == 1)
  {
    a1(0xD000000000000011, 0x80000001D567FAA0);
    sub_1D4E6C9CC(a2, &qword_1EC7E9CA0, &unk_1D561A0C0);
    return OUTLINED_FUNCTION_23_59();
  }

  return result;
}

uint64_t sub_1D531F3B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v25 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25 - v17;
  v19 = sub_1D56140F8();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v19);
  v20 = *(v2 + *(type metadata accessor for EditorialCard(0) + 28));
  if (v20)
  {
    sub_1D4ED06C8(0x6F436573776F7262, 0xEB00000000726576, v20, v18);
    sub_1D4F7B054(v18, v16, &qword_1EC7EB5B8, &unk_1D56206A0);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    if (__swift_getEnumTagSinglePayload(v16, 1, v21) == 1)
    {
      sub_1D4E6C9CC(v18, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E6C9CC(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      sub_1D4E6C9CC(v16, &qword_1EC7EB5B8, &unk_1D56206A0);
      v22 = 1;
    }

    else
    {
      sub_1D5610758();
      sub_1D4E6C9CC(v18, &qword_1EC7EB5B8, &unk_1D56206A0);
      sub_1D4E6C9CC(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
      (*(*(v21 - 8) + 8))(v16, v21);
      v22 = 0;
    }

    __swift_storeEnumTagSinglePayload(v12, v22, 1, v19);
    sub_1D531EC24(v12, a1);
  }

  sub_1D4F7B054(a1, v10, &qword_1EC7E9CA0, &unk_1D561A0C0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v19);
  result = sub_1D4E6C9CC(v10, &qword_1EC7E9CA0, &unk_1D561A0C0);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4F5C564(v7);
    sub_1D4E6C9CC(a1, &qword_1EC7E9CA0, &unk_1D561A0C0);
    return sub_1D531EC24(v7, a1);
  }

  return result;
}

uint64_t sub_1D531FB8C()
{
  if (qword_1EC7E8B78 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D53210BC(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  sub_1D53210BC(&qword_1EC7EA3C8, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  sub_1D560EC28();
  if (!v2)
  {
    return 0;
  }

  v0 = sub_1D505A910(v2);

  return v0;
}

uint64_t sub_1D531FCB0()
{
  result = *(v0 + *(type metadata accessor for EditorialCard(0) + 28));
  if (result)
  {
    return sub_1D505A910(result);
  }

  return result;
}

uint64_t sub_1D531FCDC()
{
  if (qword_1EDD53FE8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D53210BC(&qword_1EDD57650, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
  sub_1D53210BC(&qword_1EC7EB3D0, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
  sub_1D560EC28();
  if (!v2)
  {
    return 0;
  }

  v0 = sub_1D505A910(v2);

  return v0;
}

uint64_t sub_1D531FE00()
{
  if (qword_1EC7E8E68 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D53210BC(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  sub_1D53210BC(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  sub_1D560EC28();
  if (!v2)
  {
    return 0;
  }

  v0 = sub_1D505A910(v2);

  return v0;
}

uint64_t sub_1D531FF24()
{
  if (qword_1EDD54250 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D53210BC(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  sub_1D53210BC(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  sub_1D560EC28();
  if (!v2)
  {
    return 0;
  }

  v0 = sub_1D505A910(v2);

  return v0;
}

uint64_t sub_1D5320060()
{
  if (qword_1EC7E91A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D53210BC(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  sub_1D53210BC(&qword_1EC7EC490, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  sub_1D560EC28();
  if (!v2)
  {
    return 0;
  }

  v0 = sub_1D505A910(v2);

  return v0;
}

uint64_t sub_1D5320184()
{
  if (qword_1EC7E9548 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D53210BC(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  sub_1D53210BC(&qword_1EC7EC4A0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  sub_1D560EC28();
  if (!v2)
  {
    return 0;
  }

  v0 = sub_1D505A910(v2);

  return v0;
}

uint64_t sub_1D53202A8(uint64_t (*a1)(void))
{
  v1 = a1();
  if (!v1)
  {
    return 0;
  }

  v2 = sub_1D505A910(v1);

  return v2;
}

uint64_t sub_1D53202F0()
{
  if (qword_1EDD53ED0 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
  sub_1D53210BC(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  sub_1D53210BC(&qword_1EC7EC488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  sub_1D560EC28();
  if (!v2)
  {
    return 0;
  }

  v0 = sub_1D505A910(v2);

  return v0;
}

uint64_t EditorialArtworkVending.editorialArtworks.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 48))(a1);
  if (!v2)
  {
    return 0;
  }

  v3 = sub_1D505A910(v2);

  return v3;
}

uint64_t EditorialArtworkVending.mainUberArtwork.getter()
{
  sub_1D56140F8();
  v0 = OUTLINED_FUNCTION_5_43();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1D5320AC4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + *MEMORY[0x1E6974E10]);
  (*(a1 + 64))(v3, a1);
  swift_getKeyPath();
  v4 = sub_1D56140F8();
  sub_1D53210BC(&qword_1EDD52DE8, MEMORY[0x1E6976F68], MEMORY[0x1E6976F88]);
  sub_1D53651F8(v3, v4);
  sub_1D5365204();
  v5 = sub_1D560D138();

  return v5;
}

uint64_t sub_1D5320C34()
{
  OUTLINED_FUNCTION_3_140();
  v0 = OUTLINED_FUNCTION_11_91();
  return v1(v0);
}

uint64_t sub_1D53210BC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_20_69()
{

  return sub_1D4F7B054(v0, v3, v1, v2);
}

uint64_t OUTLINED_FUNCTION_23_59()
{

  return sub_1D531EC24(v1, v0);
}

uint64_t MusicAsyncPropertyOptions.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D56162F8();
  return sub_1D5616328();
}

unint64_t sub_1D5321214()
{
  result = qword_1EC7F43B0;
  if (!qword_1EC7F43B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F43B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicAsyncPropertyOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t MusicLibrarySearchResponse.composers.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F43C0, &unk_1D5653230);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F43C8, &unk_1D5658980);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16_0();
  sub_1D532154C(v2);
  v8 = type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v8) == 1)
  {
    sub_1D4E50004(v2, &qword_1EC7F43C0, &unk_1D5653230);
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA400, &unk_1D5653240);
    v10 = OUTLINED_FUNCTION_11_92(v9);
    type metadata accessor for Composer(v10);
    OUTLINED_FUNCTION_38_37();
    sub_1D5326718(v11, v12, &protocol conformance descriptor for Composer);
    OUTLINED_FUNCTION_64_24(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_10(v1);
    if (!v14)
    {
      return sub_1D4E50004(v1, &qword_1EC7F43C8, &unk_1D5658980);
    }
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA400, &unk_1D5653240);
    OUTLINED_FUNCTION_4();
    v17 = v16;
    v18 = OUTLINED_FUNCTION_46_1();
    v19(v18);
    OUTLINED_FUNCTION_1_139();
    sub_1D5326668(v2, v20);
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v15);
    return (*(v17 + 32))(a1, v1, v15);
  }

  return result;
}

uint64_t sub_1D532154C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4470, &qword_1D5653498);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  sub_1D560DFF8();
  v5 = sub_1D560CD88();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1D4E50004(v4, &qword_1EC7F4470, &qword_1D5653498);
    v6 = type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
    v7 = a1;
    v8 = 1;
  }

  else
  {
    sub_1D560CD78();
    (*(*(v5 - 8) + 8))(v4, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4478, &qword_1D56534A0);
    v9 = type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
    v8 = swift_dynamicCast() ^ 1;
    v7 = a1;
    v6 = v9;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v6);
}

uint64_t type metadata accessor for MusicLibrarySearchResponse.InternalResults(uint64_t a1)
{
  result = qword_1EDD53AF0;
  if (!qword_1EDD53AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicLibrarySearchResponse.musicMovies.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F43C0, &unk_1D5653230);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF308, &qword_1D5631048);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  sub_1D532154C(v1);
  type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
  OUTLINED_FUNCTION_10(v1);
  if (v6)
  {
    sub_1D4E50004(v1, &qword_1EC7F43C0, &unk_1D5653230);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
    v8 = OUTLINED_FUNCTION_11_92(v7);
    type metadata accessor for MusicMovie(v8);
    OUTLINED_FUNCTION_35_49();
    sub_1D5326718(v9, v10, &protocol conformance descriptor for MusicMovie);
    OUTLINED_FUNCTION_64_24(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_10(v0);
    if (!v6)
    {
      return sub_1D4E50004(v0, &qword_1EC7EF308, &qword_1D5631048);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
    OUTLINED_FUNCTION_25_0();
    v11 = OUTLINED_FUNCTION_19_66();
    v12(v11);
    OUTLINED_FUNCTION_1_139();
    sub_1D5326668(v1, v13);
    v14 = OUTLINED_FUNCTION_13_80();
    return v15(v14);
  }

  return result;
}

uint64_t MusicLibrarySearchResponse.playlistFolderItems.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F43C0, &unk_1D5653230);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF340, &qword_1D5631090);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  sub_1D532154C(v1);
  type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
  OUTLINED_FUNCTION_10(v1);
  if (v6)
  {
    sub_1D4E50004(v1, &qword_1EC7F43C0, &unk_1D5653230);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
    v8 = OUTLINED_FUNCTION_11_92(v7);
    type metadata accessor for Playlist.Folder.Item(v8);
    OUTLINED_FUNCTION_34_48();
    sub_1D5326718(v9, v10, &protocol conformance descriptor for Playlist.Folder.Item);
    OUTLINED_FUNCTION_64_24(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_10(v0);
    if (!v6)
    {
      return sub_1D4E50004(v0, &qword_1EC7EF340, &qword_1D5631090);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
    OUTLINED_FUNCTION_25_0();
    v11 = OUTLINED_FUNCTION_19_66();
    v12(v11);
    OUTLINED_FUNCTION_1_139();
    sub_1D5326668(v1, v13);
    v14 = OUTLINED_FUNCTION_13_80();
    return v15(v14);
  }

  return result;
}

uint64_t MusicLibrarySearchResponse.tvEpisodes.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F43C0, &unk_1D5653230);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECBA8, &unk_1D56223B0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  sub_1D532154C(v1);
  type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
  OUTLINED_FUNCTION_10(v1);
  if (v6)
  {
    sub_1D4E50004(v1, &qword_1EC7F43C0, &unk_1D5653230);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
    v8 = OUTLINED_FUNCTION_11_92(v7);
    type metadata accessor for TVEpisode(v8);
    OUTLINED_FUNCTION_33_46();
    sub_1D5326718(v9, v10, &protocol conformance descriptor for TVEpisode);
    OUTLINED_FUNCTION_64_24(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_10(v0);
    if (!v6)
    {
      return sub_1D4E50004(v0, &qword_1EC7ECBA8, &unk_1D56223B0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
    OUTLINED_FUNCTION_25_0();
    v11 = OUTLINED_FUNCTION_19_66();
    v12(v11);
    OUTLINED_FUNCTION_1_139();
    sub_1D5326668(v1, v13);
    v14 = OUTLINED_FUNCTION_13_80();
    return v15(v14);
  }

  return result;
}

uint64_t MusicLibrarySearchResponse.internalTopResults.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F43C0, &unk_1D5653230);
  OUTLINED_FUNCTION_22(v2);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3F8, &qword_1D5631200);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16_0();
  sub_1D532154C(v1);
  type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
  OUTLINED_FUNCTION_10(v1);
  if (v6)
  {
    sub_1D4E50004(v1, &qword_1EC7F43C0, &unk_1D5653230);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
    v8 = OUTLINED_FUNCTION_11_92(v7);
    type metadata accessor for GenericMusicItem(v8);
    OUTLINED_FUNCTION_32_46();
    sub_1D5326718(v9, v10, &protocol conformance descriptor for GenericMusicItem);
    OUTLINED_FUNCTION_64_24(MEMORY[0x1E69E7CC0]);
    result = OUTLINED_FUNCTION_10(v0);
    if (!v6)
    {
      return sub_1D4E50004(v0, &qword_1EC7EF3F8, &qword_1D5631200);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
    OUTLINED_FUNCTION_25_0();
    v11 = OUTLINED_FUNCTION_19_66();
    v12(v11);
    OUTLINED_FUNCTION_1_139();
    sub_1D5326668(v1, v13);
    v14 = OUTLINED_FUNCTION_13_80();
    return v15(v14);
  }

  return result;
}

uint64_t MusicLibrarySearchResponse.resultGroups.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F43C0, &unk_1D5653230);
  OUTLINED_FUNCTION_22(v0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v9 - v2;
  sub_1D532154C(&v9 - v2);
  v4 = type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
  OUTLINED_FUNCTION_10(v3);
  if (v5)
  {
    sub_1D4E50004(v3, &qword_1EC7F43C0, &unk_1D5653230);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = *&v3[*(v4 + 36)];

    OUTLINED_FUNCTION_1_139();
    sub_1D5326668(v3, v7);
  }

  return v6;
}

void static MusicLibrarySearchResponse.InternalResults.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_106_0();
  type metadata accessor for Composer(v0);
  sub_1D5326718(&qword_1EDD54820, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  sub_1D5326718(&qword_1EDD54808, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
  if (sub_1D560DAA8())
  {
    type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
    type metadata accessor for MusicMovie(0);
    sub_1D5326718(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    v1 = OUTLINED_FUNCTION_71_20(&qword_1EDD592F0);
    if (OUTLINED_FUNCTION_24_55(v1))
    {
      type metadata accessor for Playlist.Folder.Item(0);
      sub_1D5326718(&qword_1EDD52C90, type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
      v2 = OUTLINED_FUNCTION_71_20(&unk_1EDD52CB0);
      if (OUTLINED_FUNCTION_24_55(v2))
      {
        type metadata accessor for TVEpisode(0);
        sub_1D5326718(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
        v3 = OUTLINED_FUNCTION_71_20(&qword_1EDD54500);
        if (OUTLINED_FUNCTION_24_55(v3))
        {
          type metadata accessor for GenericMusicItem(0);
          sub_1D5326718(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
          v4 = OUTLINED_FUNCTION_71_20(&qword_1EDD5C5F8);
          if (OUTLINED_FUNCTION_24_55(v4))
          {

            sub_1D4EF6CE4();
          }
        }
      }
    }
  }
}

void MusicLibrarySearchResponse.InternalResults.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA400, &unk_1D5653240);
  sub_1D53222E4();
  sub_1D5614CB8();
  type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA410, &unk_1D561C400);
  v1 = sub_1D5218B1C();
  OUTLINED_FUNCTION_22_2(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EE410, &unk_1D56310A0);
  v2 = sub_1D5322398();
  OUTLINED_FUNCTION_22_2(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  v3 = sub_1D512BF3C();
  OUTLINED_FUNCTION_22_2(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  v4 = sub_1D4F0A558();
  OUTLINED_FUNCTION_22_2(v4);

  sub_1D4F06FD8();
}

unint64_t sub_1D53222E4()
{
  result = qword_1EC7F43D0;
  if (!qword_1EC7F43D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA400, &unk_1D5653240);
    sub_1D5326718(&qword_1EC7F43D8, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F43D0);
  }

  return result;
}

unint64_t sub_1D5322398()
{
  result = qword_1EC7F43E0;
  if (!qword_1EC7F43E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EE410, &unk_1D56310A0);
    sub_1D5326718(&qword_1EC7F43E8, type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F43E0);
  }

  return result;
}

uint64_t MusicLibrarySearchResponse.InternalResults.hashValue.getter()
{
  sub_1D56162D8();
  MusicLibrarySearchResponse.InternalResults.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5322498(uint64_t a1)
{
  sub_1D56162D8();
  MusicLibrarySearchResponse.InternalResults.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t sub_1D53224D4()
{
  v0 = type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
  result = sub_1D5326718(&qword_1EDD53B00, type metadata accessor for MusicLibrarySearchResponse.InternalResults, &protocol conformance descriptor for MusicLibrarySearchResponse.InternalResults);
  qword_1EDD53A50 = v0;
  *algn_1EDD53A58 = result;
  return result;
}

uint64_t static MusicLibrarySearchResponse.extendedResultsType.getter()
{
  if (qword_1EDD53A48 != -1)
  {
    swift_once();
  }

  return qword_1EDD53A50;
}

void static MusicLibrarySearchResponse.validateRequestedTypes(for:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_211_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v31 = v8;
  v9 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D560D968();
  sub_1D4E62A60(&unk_1EDD53A38, &qword_1EC7EB7B0, &qword_1D561EA10, MEMORY[0x1E6975308]);
  v15 = sub_1D5614FC8();
  v32 = v6;
  if (v15 == 2)
  {
    MEMORY[0x1EEE9AC00](v15);
    *(&v31 - 2) = v14;
    sub_1D4F25F74();
  }

  v16 = v15;
  (*(v11 + 8))(v14, v9);
  if (v16)
  {
    if (qword_1EDD53D98 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v9, qword_1EDD53DA0);
    v18 = sub_1D5614FC8();
    if (v18 == 2)
    {
      MEMORY[0x1EEE9AC00](v18);
      *(&v31 - 2) = v17;
      sub_1D4F25F74();
      if ((v19 & 1) == 0)
      {
        return;
      }
    }

    else if ((v18 & 1) == 0)
    {
      return;
    }

    v21 = v31;
    v20 = v32;
    if (qword_1EC7E8DE0 != -1)
    {
      swift_once();
    }

    v22 = sub_1D560C758();
    __swift_project_value_buffer(v22, qword_1EC87C110);
    (*(v20 + 16))(v21, a1, v4);
    v23 = sub_1D560C738();
    v24 = sub_1D56156C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33 = v26;
      *v25 = 136446210;
      sub_1D4E62A60(&qword_1EC7F43F8, &qword_1EC7EB7B0, &qword_1D561EA10, MEMORY[0x1E6975320]);
      v27 = sub_1D56160F8();
      v29 = v28;
      (*(v20 + 8))(v21, v4);
      v30 = sub_1D4E6835C(v27, v29, &v33);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1D4E3F000, v23, v24, "MusicLibrarySearchRequest requested invalid type values containing playlists and playlist folder items for typeValues: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1DA6ED200](v26, -1, -1);
      MEMORY[0x1DA6ED200](v25, -1, -1);
    }

    else
    {

      (*(v20 + 8))(v21, v4);
    }

    sub_1D5325F74();
    swift_allocError();
    swift_willThrow();
  }
}

void MusicLibrarySearchResponse.InternalResults.init(baseResponse:legacyModelExtendedResults:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v358 = a1;
  v343 = a3;
  v5 = sub_1D560EEA8();
  v6 = OUTLINED_FUNCTION_12_0(v5, v386);
  v338[1] = v7;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA420, &unk_1D5653250);
  OUTLINED_FUNCTION_12_0(v9, &v381);
  v342 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v12);
  v13 = sub_1D5614898();
  v14 = OUTLINED_FUNCTION_12_0(v13, v405);
  v348 = v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v16);
  v17 = sub_1D5613838();
  v18 = OUTLINED_FUNCTION_12_0(v17, v389);
  v338[2] = v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_12_0(v21, &v375);
  v344 = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v24);
  v25 = sub_1D5613AF8();
  v26 = OUTLINED_FUNCTION_12_0(v25, &v390);
  v338[3] = v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  OUTLINED_FUNCTION_12_0(v29, &v398);
  v345 = v30;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v32);
  v33 = sub_1D5613EF8();
  v34 = OUTLINED_FUNCTION_12_0(v33, &v392);
  v338[4] = v35;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3F8, &unk_1D561C3F0);
  OUTLINED_FUNCTION_12_0(v37, &v399);
  v346 = v38;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_12_0(v41, &v380);
  v347 = v42;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v44);
  v45 = sub_1D56131B8();
  v46 = OUTLINED_FUNCTION_12_0(v45, &v395);
  v368 = v47;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_2();
  v50 = OUTLINED_FUNCTION_48(v49);
  v51 = type metadata accessor for GenericMusicItem(v50);
  v52 = OUTLINED_FUNCTION_12_0(v51, &v410);
  v394 = v53;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA880, &unk_1D561CEE0);
  OUTLINED_FUNCTION_22(v64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_13_3();
  v67 = OUTLINED_FUNCTION_48(v66);
  v68 = type metadata accessor for TVEpisode(v67);
  v69 = OUTLINED_FUNCTION_12_0(v68, &v409);
  v381 = v70;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4400, &qword_1D5653260);
  OUTLINED_FUNCTION_22(v73);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_13_3();
  v76 = OUTLINED_FUNCTION_48(v75);
  v77 = type metadata accessor for Playlist.Folder.Item(v76);
  v78 = OUTLINED_FUNCTION_12_0(v77, &v411);
  v386[2] = v79;
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v82);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA890, &qword_1D5672D40);
  OUTLINED_FUNCTION_22(v83);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v84);
  v86 = v338 - v85;
  v87 = type metadata accessor for MusicMovie(0);
  OUTLINED_FUNCTION_4();
  v392 = v88;
  MEMORY[0x1EEE9AC00](v89);
  OUTLINED_FUNCTION_13();
  v397 = v90;
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_13_2();
  v396 = v92;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA8A0, &qword_1D5652B20);
  OUTLINED_FUNCTION_22(v93);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_16_0();
  v402 = type metadata accessor for Composer(0);
  OUTLINED_FUNCTION_4();
  v398 = v95;
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_13();
  v401 = v97;
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_13_2();
  v400 = v99;
  v100 = sub_1D5613158();
  v101 = OUTLINED_FUNCTION_12_0(v100, v407);
  v103 = v102;
  MEMORY[0x1EEE9AC00](v101);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v104);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4408, &qword_1D5653268);
  v106 = OUTLINED_FUNCTION_22(v105);
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v107);
  v109 = v338 - v108;
  v353 = a2;
  v110 = sub_1D560EAE8();
  v111 = 0;
  v112 = *(v110 + 64);
  v360 = v110 + 64;
  v376 = v110;
  v113 = 1 << *(v110 + 32);
  v114 = -1;
  if (v113 < 64)
  {
    v114 = ~(-1 << v113);
  }

  v115 = v114 & v112;
  v359 = (v113 + 63) >> 6;
  v372[1] = v103 + 16;
  v372[0] = v103 + 32;
  v375 = v103;
  v378 = (v103 + 8);
  v116 = v109;
  v117 = v86;
  v118 = MEMORY[0x1E69E7CC0];
  v399 = MEMORY[0x1E69E7CC0];
  v395 = MEMORY[0x1E69E7CC0];
  v349 = MEMORY[0x1E69E7CC0];
  v389[0] = MEMORY[0x1E69E7CC0];
  v403 = v87;
  v384 = v116;
  v373 = v86;
  if ((v114 & v112) == 0)
  {
LABEL_5:
    v120 = v380;
    while (1)
    {
      v119 = v111 + 1;
      if (__OFADD__(v111, 1))
      {
        break;
      }

      if (v119 >= v359)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4410, &qword_1D5653270);
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v188, v189, v190, v191);
        v383 = 0;
        goto LABEL_11;
      }

      v115 = *(v360 + 8 * v119);
      ++v111;
      if (v115)
      {
        v111 = v119;
        goto LABEL_10;
      }
    }

    __break(1u);
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_118;
  }

  while (1)
  {
    v119 = v111;
LABEL_10:
    v383 = (v115 - 1) & v115;
    v121 = __clz(__rbit64(v115)) | (v119 << 6);
    v122 = v376;
    v123 = v375;
    v124 = v374;
    v125 = v382;
    (*(v375 + 16))(v374, *(v376 + 48) + *(v375 + 72) * v121, v382);
    v126 = *(*(v122 + 56) + 8 * v121);
    v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4410, &qword_1D5653270);
    v128 = *(v127 + 48);
    v129 = *(v123 + 32);
    v130 = v380;
    v129(v380, v124, v125);
    *(v130 + v128) = v126;
    v120 = v130;
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v127);

    v117 = v373;
LABEL_11:
    v134 = v120;
    v135 = v384;
    sub_1D5325FC8(v134, v384);
    v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4410, &qword_1D5653270);
    OUTLINED_FUNCTION_10(v135);
    if (v137)
    {
      break;
    }

    v138 = *(v135 + *(v136 + 48));
    v139 = *(v138 + 16);
    if (v139)
    {
      v379 = v138;
      v140 = v138 + 32;
      do
      {
        v141 = v118;
        sub_1D4E628D4(v140, &v406);
        OUTLINED_FUNCTION_72_24();
        v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6590, &unk_1D5620CC0);
        v143 = v402;
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_64_0();
          __swift_storeEnumTagSinglePayload(v144, v145, v146, v143);
          OUTLINED_FUNCTION_31_42();
          sub_1D53266C0();
          OUTLINED_FUNCTION_43_32();
          sub_1D5326610();
          v118 = v141;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_1_13();
            sub_1D4F02A88();
            v118 = v180;
          }

          OUTLINED_FUNCTION_70_22();
          if (v148)
          {
            OUTLINED_FUNCTION_20_70(v147);
            sub_1D4F02A88();
            v118 = v181;
          }

          sub_1D5326668(v400, type metadata accessor for Composer);
          __swift_destroy_boxed_opaque_existential_1(&v406);
          *(v118 + 16) = v142;
          OUTLINED_FUNCTION_43_3();
          OUTLINED_FUNCTION_31_42();
        }

        else
        {
          OUTLINED_FUNCTION_33();
          __swift_storeEnumTagSinglePayload(v149, v150, v151, v143);
          sub_1D4E50004(v3, &qword_1EC7EA8A0, &qword_1D5652B20);
          OUTLINED_FUNCTION_72_24();
          if (swift_dynamicCast())
          {
            OUTLINED_FUNCTION_64_0();
            __swift_storeEnumTagSinglePayload(v152, v153, v154, v87);
            OUTLINED_FUNCTION_42_38();
            sub_1D53266C0();
            OUTLINED_FUNCTION_41_40();
            sub_1D5326610();
            v155 = v399;
            v118 = v141;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_1_13();
              sub_1D4F029B0();
              v155 = v182;
            }

            v399 = v155;
            OUTLINED_FUNCTION_70_22();
            if (v148)
            {
              OUTLINED_FUNCTION_20_70(v156);
              sub_1D4F029B0();
              v399 = v183;
            }

            sub_1D5326668(v396, type metadata accessor for MusicMovie);
            __swift_destroy_boxed_opaque_existential_1(&v406);
            *(v399 + 16) = v142;
            OUTLINED_FUNCTION_5_107();
            OUTLINED_FUNCTION_42_38();
          }

          else
          {
            OUTLINED_FUNCTION_33();
            __swift_storeEnumTagSinglePayload(v157, v158, v159, v87);
            v160 = v117;
            sub_1D4E50004(v117, &qword_1EC7EA890, &qword_1D5672D40);
            OUTLINED_FUNCTION_72_24();
            v161 = v391;
            v162 = v393;
            v118 = v141;
            if (swift_dynamicCast())
            {
              OUTLINED_FUNCTION_64_0();
              __swift_storeEnumTagSinglePayload(v163, v164, v165, v162);
              OUTLINED_FUNCTION_40_46();
              sub_1D53266C0();
              OUTLINED_FUNCTION_39_41();
              sub_1D5326610();
              v166 = v395;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_1_13();
                sub_1D4F028D8();
                v166 = v184;
              }

              v117 = v160;
              v395 = v166;
              OUTLINED_FUNCTION_70_22();
              if (v148)
              {
                OUTLINED_FUNCTION_20_70(v167);
                sub_1D4F028D8();
                v395 = v185;
              }

              sub_1D5326668(v389[1], type metadata accessor for Playlist.Folder.Item);
              __swift_destroy_boxed_opaque_existential_1(&v406);
              *(v395 + 16) = v142;
              OUTLINED_FUNCTION_43_3();
              OUTLINED_FUNCTION_40_46();
            }

            else
            {
              OUTLINED_FUNCTION_33();
              __swift_storeEnumTagSinglePayload(v168, v169, v170, v162);
              sub_1D4E50004(v161, &qword_1EC7F4400, &qword_1D5653260);
              OUTLINED_FUNCTION_72_24();
              v171 = v386[1];
              v172 = v387;
              if ((swift_dynamicCast() & 1) == 0)
              {
                __swift_destroy_boxed_opaque_existential_1(&v406);
                OUTLINED_FUNCTION_33();
                __swift_storeEnumTagSinglePayload(v177, v178, v179, v172);
                sub_1D4E50004(v171, &qword_1EC7EA880, &unk_1D561CEE0);
                v117 = v160;
                goto LABEL_39;
              }

              OUTLINED_FUNCTION_64_0();
              __swift_storeEnumTagSinglePayload(v173, v174, v175, v172);
              OUTLINED_FUNCTION_37_36();
              sub_1D53266C0();
              OUTLINED_FUNCTION_36_44();
              sub_1D5326610();
              v117 = v160;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_1_13();
                sub_1D4F017F0();
                v389[0] = v186;
              }

              OUTLINED_FUNCTION_70_22();
              if (v148)
              {
                OUTLINED_FUNCTION_20_70(v176);
                sub_1D4F017F0();
                v389[0] = v187;
              }

              sub_1D5326668(v385, type metadata accessor for TVEpisode);
              __swift_destroy_boxed_opaque_existential_1(&v406);
              *(v389[0] + 16) = v142;
              OUTLINED_FUNCTION_43_3();
              OUTLINED_FUNCTION_37_36();
            }
          }
        }

        sub_1D53266C0();
LABEL_39:
        v140 += 40;
        --v139;
        v87 = v403;
      }

      while (v139);
    }

    (*v378)(v384, v382);
    v115 = v383;
    if (!v383)
    {
      goto LABEL_5;
    }
  }

  v192 = sub_1D560EAD8();
  v193 = *(v192 + 16);
  if (v193)
  {
    v406 = MEMORY[0x1E69E7CC0];
    sub_1D4F048BC(0, v193, 0);
    v194 = v406;
    OUTLINED_FUNCTION_43_3();
    v396 = v192;
    v196 = v192 + v195;
    v400 = *(v197 + 56);
    v401 = v198;
    v368 = v197;
    v397 = (v197 - 8);
    v199 = v338[5];
    v200 = v198;
    v201 = v366;
    do
    {
      v202 = v365;
      v203 = v367;
      (v200)(v365, v196, v367);
      (v200)(v201, v202, v203);
      sub_1D50613D8(v201, v199);
      (*v397)(v202, v203);
      v406 = v194;
      v205 = *(v194 + 16);
      v204 = *(v194 + 24);
      if (v205 >= v204 >> 1)
      {
        v206 = OUTLINED_FUNCTION_93_1(v204);
        sub_1D4F048BC(v206, v205 + 1, 1);
        v194 = v406;
      }

      *(v194 + 16) = v205 + 1;
      OUTLINED_FUNCTION_4_106();
      OUTLINED_FUNCTION_0_182();
      sub_1D53266C0();
      v196 += v400;
      --v193;
    }

    while (v193);
  }

  else
  {

    v194 = MEMORY[0x1E69E7CC0];
  }

  v404 = MEMORY[0x1E69E7CC0];
  v391 = v194;
  sub_1D5324EC4(0, v194, &v404);
  sub_1D560E028();
  v207 = OUTLINED_FUNCTION_7_107(&qword_1EDD53BB8, &qword_1EC7EA448, &unk_1D561D110);
  v208 = sub_1D5615618();
  v209 = v357;
  v210 = v395;
  if (v208)
  {
    OUTLINED_FUNCTION_16_79(v208);
    v211 = v408;
    sub_1D5615608();
    v212 = v207;
    OUTLINED_FUNCTION_60_23(v364);
    v213 = v341;
    v396 = v212;
    v214 = v364[6];
    do
    {
      v401 = v193;
      OUTLINED_FUNCTION_59_25();
      v215 = sub_1D5615688();
      v216 = *v400;
      v217 = v364[7];
      (*v400)(v214);
      v218 = OUTLINED_FUNCTION_27_55();
      v215(v218);
      (v216)(v213, v214, v217);
      OUTLINED_FUNCTION_57_31();
      swift_storeEnumTagMultiPayload();
      (*v397)(v214, v217);
      v408 = v211;
      v220 = *(v211 + 16);
      v219 = *(v211 + 24);
      if (v220 >= v219 >> 1)
      {
        v221 = OUTLINED_FUNCTION_93_1(v219);
        sub_1D4F048BC(v221, v220 + 1, 1);
        v213 = v341;
        v211 = v408;
      }

      *(v211 + 16) = v220 + 1;
      OUTLINED_FUNCTION_4_106();
      OUTLINED_FUNCTION_0_182();
      sub_1D53266C0();
      sub_1D5615658();
      v193 = v401 - 1;
    }

    while (v401 != 1);
    v349 = v211;
    v209 = v357;
    v210 = v395;
  }

  sub_1D5324EC4(2, v349, &v404);

  OUTLINED_FUNCTION_136();
  v222(v355, v356);
  sub_1D560E018();
  v223 = OUTLINED_FUNCTION_7_107(&qword_1EDD53BC0, &qword_1EC7EA3F8, &unk_1D561C3F0);
  v224 = sub_1D5615618();
  v225 = MEMORY[0x1E69E7CC0];
  v226 = v388;
  if (v224)
  {
    OUTLINED_FUNCTION_16_79(v224);
    OUTLINED_FUNCTION_66_22();
    sub_1D5615608();
    OUTLINED_FUNCTION_50_29(&v363);
    v397 = v223;
    v226 = v364[4];
    do
    {
      OUTLINED_FUNCTION_59_25();
      v227 = sub_1D5615688();
      v228 = *v401;
      OUTLINED_FUNCTION_43_29();
      v228();
      v229 = OUTLINED_FUNCTION_27_55();
      v227(v229);
      v230 = OUTLINED_FUNCTION_211_2();
      (v228)(v230);
      OUTLINED_FUNCTION_57_31();
      swift_storeEnumTagMultiPayload();
      (*v400)(v226, v209);
      OUTLINED_FUNCTION_21_63();
      if (v148)
      {
        OUTLINED_FUNCTION_14_72(v231);
        v225 = v408;
      }

      *(v225 + 16) = v209;
      OUTLINED_FUNCTION_4_106();
      OUTLINED_FUNCTION_0_182();
      sub_1D53266C0();
      sub_1D5615658();
      --v193;
    }

    while (v193);
    OUTLINED_FUNCTION_48_34();
    v210 = v395;
  }

  v232 = v358;
  sub_1D5324EC4(1, v225, &v404);

  OUTLINED_FUNCTION_136();
  v233(v354, v371);
  sub_1D560E008();
  v401 = OUTLINED_FUNCTION_7_107(&qword_1EDD53BC8, &qword_1EC7EA428, &unk_1D561C410);
  v234 = sub_1D5615618();
  v235 = MEMORY[0x1E69E7CC0];
  if (v234)
  {
    OUTLINED_FUNCTION_16_79(v234);
    OUTLINED_FUNCTION_66_22();
    sub_1D5615608();
    OUTLINED_FUNCTION_60_23(v362);
    v226 = v364[2];
    do
    {
      OUTLINED_FUNCTION_59_25();
      v236 = sub_1D5615688();
      v237 = *v400;
      OUTLINED_FUNCTION_43_29();
      v237();
      v238 = OUTLINED_FUNCTION_27_55();
      v236(v238);
      v239 = OUTLINED_FUNCTION_211_2();
      (v237)(v239);
      OUTLINED_FUNCTION_57_31();
      swift_storeEnumTagMultiPayload();
      (*v397)(v226, v209);
      OUTLINED_FUNCTION_21_63();
      if (v148)
      {
        OUTLINED_FUNCTION_14_72(v240);
        v235 = v408;
      }

      *(v235 + 16) = v209;
      OUTLINED_FUNCTION_4_106();
      OUTLINED_FUNCTION_0_182();
      sub_1D53266C0();
      sub_1D5615658();
      --v193;
    }

    while (v193);
    OUTLINED_FUNCTION_48_34();
    v210 = v395;
    v232 = v358;
  }

  sub_1D5324EC4(6, v235, &v404);

  OUTLINED_FUNCTION_136();
  v241(v352, v370);
  sub_1D560E048();
  OUTLINED_FUNCTION_7_107(&unk_1EDD53B68, &qword_1EC7EA538, &qword_1D561C490);
  v242 = v232;
  v243 = sub_1D5615618();
  v244 = MEMORY[0x1E69E7CC0];
  v396 = v118;
  if (!v243)
  {
    v251 = v232;
    v242 = MEMORY[0x1E69E7CC0];
    goto LABEL_78;
  }

  v245 = v243;
  v408 = MEMORY[0x1E69E7CC0];
  sub_1D4F048BC(0, v243 & ~(v243 >> 63), 0);
  OUTLINED_FUNCTION_66_22();
  sub_1D5615608();
  if (v245 < 0)
  {
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  OUTLINED_FUNCTION_50_29(v372);
  v226 = v340;
  do
  {
    OUTLINED_FUNCTION_59_25();
    v246 = sub_1D5615688();
    v247 = *v401;
    v248 = v363;
    OUTLINED_FUNCTION_43_29();
    v247();
    v249 = OUTLINED_FUNCTION_27_55();
    v246(v249);
    (v247)(v226, v248, v209);
    swift_storeEnumTagMultiPayload();
    (*v400)(v248, v209);
    OUTLINED_FUNCTION_21_63();
    if (v148)
    {
      OUTLINED_FUNCTION_14_72(v250);
      v226 = v340;
      v242 = v408;
    }

    *(v242 + 16) = v209;
    OUTLINED_FUNCTION_4_106();
    OUTLINED_FUNCTION_0_182();
    sub_1D53266C0();
    sub_1D5615658();
    --v245;
  }

  while (v245);
  v251 = v358;
  OUTLINED_FUNCTION_48_34();
  v210 = v395;
  v118 = v396;
  v244 = MEMORY[0x1E69E7CC0];
LABEL_78:
  sub_1D5324EC4(5, v242, &v404);

  OUTLINED_FUNCTION_136();
  v252(v369, v351);
  v253 = *(v210 + 16);
  if (v253)
  {
    v406 = v244;

    OUTLINED_FUNCTION_55_28();
    v244 = v406;
    OUTLINED_FUNCTION_5_107();
    v255 = v210 + v254;
    v257 = *(v256 + 72);
    v258 = (v348 + 32);
    do
    {
      OUTLINED_FUNCTION_39_41();
      v259 = v364[0];
      sub_1D5326610();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*v258)(v364[1], v259, v377);
      }

      else
      {
        sub_1D53266C0();
      }

      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_69_29();
      if (v148)
      {
        v261 = OUTLINED_FUNCTION_93_1(v260);
        sub_1D4F048BC(v261, v259, 1);
        v244 = v406;
      }

      *(v244 + 16) = v259;
      OUTLINED_FUNCTION_4_106();
      OUTLINED_FUNCTION_0_182();
      sub_1D53266C0();
      v255 += v257;
      --v253;
      v210 = v395;
    }

    while (v253);
    v209 = v357;
    v251 = v358;
  }

  else
  {
  }

  sub_1D5324EC4(5, v244, &v404);

  sub_1D560DFD8();
  v262 = OUTLINED_FUNCTION_7_107(&qword_1EDD53BD0, &qword_1EC7EA420, &unk_1D5653250);
  v263 = sub_1D5615618();
  v264 = MEMORY[0x1E69E7CC0];
  if (!v263)
  {
    goto LABEL_95;
  }

  OUTLINED_FUNCTION_16_79(v263);
  OUTLINED_FUNCTION_66_22();
  sub_1D5615608();
  if (v251 < 0)
  {
LABEL_119:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_50_29(&v361);
  v265 = v339;
  v397 = v262;
  v267 = v266;
  v268 = v361;
  do
  {
    OUTLINED_FUNCTION_59_25();
    v269 = sub_1D5615688();
    v270 = *v267;
    OUTLINED_FUNCTION_43_29();
    v270();
    v271 = OUTLINED_FUNCTION_27_55();
    v269(v271);
    (v270)(v265, v268, v209);
    swift_storeEnumTagMultiPayload();
    (*v400)(v268, v209);
    OUTLINED_FUNCTION_21_63();
    if (v148)
    {
      OUTLINED_FUNCTION_14_72(v272);
      v265 = v339;
      v264 = v408;
    }

    *(v264 + 16) = v209;
    OUTLINED_FUNCTION_4_106();
    OUTLINED_FUNCTION_0_182();
    sub_1D53266C0();
    sub_1D5615658();
    --v251;
  }

  while (v251);
  v226 = v388;
  v210 = v395;
  v118 = v396;
LABEL_95:
  sub_1D5324EC4(4, v264, &v404);

  OUTLINED_FUNCTION_136();
  v273(v350, v209);
  v274 = *(v118 + 16);
  if (v274)
  {
    v406 = MEMORY[0x1E69E7CC0];

    OUTLINED_FUNCTION_55_28();
    v275 = v406;
    OUTLINED_FUNCTION_43_3();
    v277 = v118 + v276;
    v209 = *(v278 + 72);
    do
    {
      OUTLINED_FUNCTION_43_32();
      sub_1D5326610();
      OUTLINED_FUNCTION_211_2();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_69_29();
      if (v148)
      {
        v280 = OUTLINED_FUNCTION_93_1(v279);
        sub_1D4F048BC(v280, v264, 1);
        v275 = v406;
      }

      *(v275 + 16) = v264;
      OUTLINED_FUNCTION_4_106();
      OUTLINED_FUNCTION_0_182();
      sub_1D53266C0();
      v277 += v209;
      --v274;
    }

    while (v274);
    v210 = v395;
  }

  else
  {

    v275 = MEMORY[0x1E69E7CC0];
  }

  v281 = MEMORY[0x1E69E7CC0];
  sub_1D5324EC4(3, v275, &v404);

  v406 = v281;
  v282 = v389[0];
  v283 = *(v389[0] + 16);
  if (v283)
  {
    v408 = v281;

    OUTLINED_FUNCTION_55_28();
    v284 = v408;
    OUTLINED_FUNCTION_5_107();
    v286 = v282 + v285;
    v288 = *(v287 + 72);
    do
    {
      OUTLINED_FUNCTION_36_44();
      sub_1D5326610();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_68_23();
      if (v148)
      {
        OUTLINED_FUNCTION_14_72(v289);
        v284 = v408;
      }

      *(v284 + 16) = v209;
      OUTLINED_FUNCTION_4_106();
      OUTLINED_FUNCTION_0_182();
      sub_1D53266C0();
      v286 += v288;
      --v283;
    }

    while (v283);
    v282 = v389[0];
    v210 = v395;
    v281 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v284 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4EF37B8(v284);
  v290 = v399;
  v291 = *(v399 + 16);
  if (v291)
  {
    v408 = v281;

    OUTLINED_FUNCTION_55_28();
    v292 = v408;
    OUTLINED_FUNCTION_5_107();
    v294 = v290 + v293;
    v296 = *(v295 + 72);
    v297 = v396;
    do
    {
      OUTLINED_FUNCTION_41_40();
      sub_1D5326610();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_68_23();
      if (v148)
      {
        OUTLINED_FUNCTION_14_72(v298);
        v292 = v408;
      }

      *(v292 + 16) = v290;
      OUTLINED_FUNCTION_4_106();
      OUTLINED_FUNCTION_0_182();
      sub_1D53266C0();
      v294 += v296;
      --v291;
    }

    while (v291);

    v290 = v399;

    v299 = v395;
  }

  else
  {
    v297 = v396;

    v292 = MEMORY[0x1E69E7CC0];
    v389[0] = v282;
    v299 = v210;
  }

  sub_1D4EF37B8(v292);
  sub_1D5324EC4(7, v406, &v404);

  v408 = v297;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4418, &qword_1D5653278);
  OUTLINED_FUNCTION_38_37();
  sub_1D5326718(v300, v301, &protocol conformance descriptor for Composer);
  sub_1D4E62A60(&qword_1EDD52810, &qword_1EC7F4418, &qword_1D5653278, MEMORY[0x1E69E6328]);
  v302 = v343;
  sub_1D560DAD8();
  v408 = v290;
  v303 = type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
  v304 = OUTLINED_FUNCTION_46_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v304, v305);
  OUTLINED_FUNCTION_35_49();
  sub_1D5326718(v306, v307, &protocol conformance descriptor for MusicMovie);
  OUTLINED_FUNCTION_54_30(&qword_1EDD52880);
  v308 = OUTLINED_FUNCTION_47_37();
  OUTLINED_FUNCTION_74_23(v308, v403, v309, v310, v311);
  v408 = v299;
  v312 = OUTLINED_FUNCTION_46_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v312, v313);
  OUTLINED_FUNCTION_34_48();
  sub_1D5326718(v314, v315, &protocol conformance descriptor for Playlist.Folder.Item);
  OUTLINED_FUNCTION_54_30(&qword_1EDD52788);
  v316 = OUTLINED_FUNCTION_47_37();
  OUTLINED_FUNCTION_74_23(v316, v393, v317, v318, v319);
  v408 = v389[0];
  v320 = OUTLINED_FUNCTION_46_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v320, v321);
  OUTLINED_FUNCTION_33_46();
  sub_1D5326718(v322, v323, &protocol conformance descriptor for TVEpisode);
  OUTLINED_FUNCTION_54_30(&qword_1EDD527F8);
  v324 = OUTLINED_FUNCTION_47_37();
  OUTLINED_FUNCTION_74_23(v324, v387, v325, v326, v327);
  v408 = v391;
  v328 = OUTLINED_FUNCTION_46_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v328, v329);
  OUTLINED_FUNCTION_32_46();
  sub_1D5326718(v330, v331, &protocol conformance descriptor for GenericMusicItem);
  OUTLINED_FUNCTION_54_30(&qword_1EDD528A8);
  v332 = OUTLINED_FUNCTION_47_37();
  OUTLINED_FUNCTION_74_23(v332, v226, v333, v334, v335);
  sub_1D560EAF8();
  OUTLINED_FUNCTION_14();
  (*(v336 + 8))(v353);
  sub_1D560E058();
  OUTLINED_FUNCTION_14();
  (*(v337 + 8))(v358);
  *(v302 + *(v303 + 36)) = v404;
}

uint64_t sub_1D5324EC4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  v10 = type metadata accessor for MusicSearchResultGroup(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v30 - v15);
  if (*(a2 + 16))
  {
    v35 = v7;
    v36 = v6;
    v37 = v14;
    v38 = v13;
    v17 = sub_1D5325E50(v5);
    v33 = v18;
    v34 = v17;
    v19 = sub_1D5325AA0(v5);
    v31 = v20;
    v32 = v19;
    v39 = a2;
    type metadata accessor for GenericMusicItem(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3B8, &qword_1D5631140);
    sub_1D5326718(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    sub_1D4E62A60(&qword_1EDD528A8, &qword_1EC7EF3B8, &qword_1D5631140, MEMORY[0x1E69E6328]);
    sub_1D560DAD8();
    if (sub_1D5325E50(v5) == 0x6C75736552706F74 && v21 == 0xEA00000000007374)
    {

      v23 = 1;
    }

    else
    {
      v23 = sub_1D5616168();
    }

    v25 = v35;
    v24 = v36;
    v26 = v33;
    *v16 = v34;
    v16[1] = v26;
    v27 = v31;
    v16[2] = v32;
    v16[3] = v27;
    (*(v25 + 32))(v16 + *(v10 + 24), v9, v24);
    *(v16 + *(v10 + 28)) = v23 & 1;
    sub_1D5326610();
    sub_1D4EFF570();
    v28 = *(*a3 + 16);
    sub_1D4EFF7B8(v28);
    sub_1D5326668(v16, type metadata accessor for MusicSearchResultGroup);
    v29 = *a3;
    *(*a3 + 16) = v28 + 1;
    result = sub_1D53266C0();
    *a3 = v29;
  }

  return result;
}

uint64_t MusicLibrarySearchResponse.InternalResults.appendExtendedDescription(for:forDebugging:to:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  (*(v6 + 16))(&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  if (qword_1EDD53C80 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v4, qword_1EDD53C88);
  sub_1D5326718(&qword_1EDD53C20, MEMORY[0x1E6974F80], MEMORY[0x1E6974F90]);
  if (OUTLINED_FUNCTION_63_19(v9))
  {
    v10 = OUTLINED_FUNCTION_58_30();
    v11(v10);
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_6_104();
    sub_1D4E62A60(v12, v13, &unk_1D5653240, v14);
    return sub_1D56155F8();
  }

  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v4, qword_1EDD53D50);
  if (OUTLINED_FUNCTION_63_19(v15))
  {
    v16 = OUTLINED_FUNCTION_58_30();
    v17(v16);
    type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_6_104();
    sub_1D4E62A60(v18, v19, &unk_1D561C400, v20);
    return sub_1D56155F8();
  }

  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v4, qword_1EDD53C40);
  v22 = OUTLINED_FUNCTION_63_19(v21);
  v23 = OUTLINED_FUNCTION_58_30();
  result = v24(v23);
  if (v22)
  {
    type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
    OUTLINED_FUNCTION_73_21();
    OUTLINED_FUNCTION_6_104();
    sub_1D4E62A60(v26, v27, &unk_1D561C080, v28);
    return sub_1D56155F8();
  }

  return result;
}

Swift::Void __swiftcall MusicLibrarySearchResponse.InternalResults.appendExtendedDescription(forDebugging:to:)(Swift::Bool forDebugging, Swift::String *to)
{
  type metadata accessor for MusicLibrarySearchResponse.InternalResults(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA650, &qword_1D561C540);
  OUTLINED_FUNCTION_6_104();
  sub_1D4E62A60(v2, v3, &qword_1D561C540, v4);
  sub_1D56155F8();

  OUTLINED_FUNCTION_73_21();
  sub_1D4E62A60(&qword_1EC7EF2B0, &qword_1EC7EF2A8, &qword_1D5630F98, MEMORY[0x1E69E6338]);
  sub_1D56155F8();
}

uint64_t sub_1D53256DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = sub_1D560D9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D561CA30;
  v5 = v4 + v3;
  if (qword_1EDD53C80 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDD53C88);
  v7 = *(v1 + 16);
  v7(v5, v6, v0);
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDD53D50);
  v7(v5 + v2, v8, v0);
  if (qword_1EDD53D98 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EDD53DA0);
  v7(v5 + 2 * v2, v9, v0);
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_1EDD53C40);
  result = (v7)(v5 + 3 * v2, v10, v0);
  qword_1EC7F43B8 = v4;
  return result;
}

double static MusicLibrarySearchResponse.InternalResults.extendedSupportedTypeValues.getter()
{
  if (qword_1EC7E9420 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D5325988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5326718(&qword_1EDD53B08, type metadata accessor for MusicLibrarySearchResponse.InternalResults, &protocol conformance descriptor for MusicLibrarySearchResponse.InternalResults);

  return MEMORY[0x1EEDCEFF0](a1, a3, a2, a4, v8);
}

uint64_t sub_1D5325A1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D5326718(&qword_1EC7F4468, type metadata accessor for MusicLibrarySearchResponse.InternalResults, &protocol conformance descriptor for MusicLibrarySearchResponse.InternalResults);

  return MEMORY[0x1EEDCEFE8](a1, a2, a3, v6);
}

uint64_t sub_1D5325AA0(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_1EDD525B0 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 2:
      if (qword_1EDD525B0 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 3:
      if (qword_1EDD525B0 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 4:
      if (qword_1EDD525B0 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 5:
      if (qword_1EDD525B0 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 6:
      if (qword_1EDD525B0 != -1)
      {
        goto LABEL_18;
      }

      break;
    case 7:
      if (qword_1EDD525B0 != -1)
      {
        goto LABEL_18;
      }

      break;
    default:
      if (qword_1EDD525B0 != -1)
      {
LABEL_18:
        swift_once();
      }

      break;
  }

  return sub_1D560BDB8();
}

uint64_t sub_1D5325E50(char a1)
{
  result = 0x6C75736552706F74;
  switch(a1)
  {
    case 1:
      result = 0x736D75626C61;
      break;
    case 2:
      result = 0x73747369747261;
      break;
    case 3:
      result = 0x7265736F706D6F63;
      break;
    case 4:
      result = 0x646956636973756DLL;
      break;
    case 5:
      result = 0x7473696C79616C70;
      break;
    case 6:
      result = 0x73676E6F73;
      break;
    case 7:
      result = 0x766F4D646E417674;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5325F74()
{
  result = qword_1EC7F43F0;
  if (!qword_1EC7F43F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F43F0);
  }

  return result;
}

uint64_t sub_1D5325FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4408, &qword_1D5653268);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D53260A8(uint64_t a1)
{
  sub_1D532618C(319);
  if (v1 <= 0x3F)
  {
    sub_1D5326220(319);
    if (v2 <= 0x3F)
    {
      sub_1D53262B4(319);
      if (v3 <= 0x3F)
      {
        sub_1D5326348(319);
        if (v4 <= 0x3F)
        {
          sub_1D53263DC(319);
          if (v5 <= 0x3F)
          {
            sub_1D5326470(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1D532618C(uint64_t a1)
{
  if (!qword_1EDD53BE0)
  {
    type metadata accessor for Composer(255);
    sub_1D5326718(&qword_1EDD54820, type metadata accessor for Composer, &protocol conformance descriptor for Composer);
    v1 = sub_1D560DAB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD53BE0);
    }
  }
}

void sub_1D5326220(uint64_t a1)
{
  if (!qword_1EDD53BF8)
  {
    type metadata accessor for MusicMovie(255);
    sub_1D5326718(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    v1 = sub_1D560DAB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD53BF8);
    }
  }
}

void sub_1D53262B4(uint64_t a1)
{
  if (!qword_1EDD53B98)
  {
    type metadata accessor for Playlist.Folder.Item(255);
    sub_1D5326718(&qword_1EDD52C90, type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
    v1 = sub_1D560DAB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD53B98);
    }
  }
}

void sub_1D5326348(uint64_t a1)
{
  if (!qword_1EDD53BD8)
  {
    type metadata accessor for TVEpisode(255);
    sub_1D5326718(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    v1 = sub_1D560DAB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD53BD8);
    }
  }
}

void sub_1D53263DC(uint64_t a1)
{
  if (!qword_1EDD53C18)
  {
    type metadata accessor for GenericMusicItem(255);
    sub_1D5326718(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    v1 = sub_1D560DAB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD53C18);
    }
  }
}

void sub_1D5326470(uint64_t a1)
{
  if (!qword_1EDD528A0)
  {
    type metadata accessor for MusicSearchResultGroup(255);
    v1 = sub_1D56152D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD528A0);
    }
  }
}

_BYTE *_s5ErrorOwst_1(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D5326578()
{
  result = qword_1EC7F4450;
  if (!qword_1EC7F4450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4450);
  }

  return result;
}

uint64_t sub_1D5326610()
{
  v2 = OUTLINED_FUNCTION_106_0();
  v3(v2);
  OUTLINED_FUNCTION_14();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1D5326668(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D53266C0()
{
  v2 = OUTLINED_FUNCTION_106_0();
  v3(v2);
  OUTLINED_FUNCTION_14();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1D5326718(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_71_20(unint64_t *a1)
{

  return sub_1D5326718(a1, v2, v1);
}

uint64_t OUTLINED_FUNCTION_72_24()
{

  return sub_1D4E628D4(v0 - 144, v0 - 184);
}

uint64_t OUTLINED_FUNCTION_74_23(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D560DAD8();
}

uint64_t MusicLibraryPlaylistViewModel.Delta.Position.description.getter()
{
  if (*v0)
  {
    return 1684956462;
  }

  else
  {
    return 0x696E6E696765622ELL;
  }
}

uint64_t MusicLibraryPlaylistViewModel.Delta.Position.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D5326970()
{
  result = qword_1EC7F4480;
  if (!qword_1EC7F4480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4480);
  }

  return result;
}

_BYTE *_s8PositionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t MusicFavoriteStatusController.Item.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t MusicFavoriteStatusController.Item.Kind.description.getter()
{
  result = 0x676E6F732ELL;
  switch(*v0)
  {
    case 1:
      result = 0x6956636973756D2ELL;
      break;
    case 2:
    case 3:
      result = 0x6564616F6C70752ELL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5326BC8()
{
  result = qword_1EC7F4488;
  if (!qword_1EC7F4488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4488);
  }

  return result;
}

_BYTE *_s4KindOwst_3(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t static MusicFavoriteStatusController.Item.ID.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v42[0] = *a1;
  v42[1] = v3;
  v42[2] = v4;
  v42[3] = v5;
  v43 = v6;
  v44 = v8;
  v45 = v7;
  v46 = v10;
  v47 = v9;
  v48 = v11;
  switch(v6)
  {
    case 1:
      if (v11 != 1)
      {
        goto LABEL_32;
      }

      v25 = v2 == v8 && v3 == v7;
      if (!v25 && (OUTLINED_FUNCTION_3_141() & 1) == 0)
      {
        LOBYTE(v6) = 1;
        v27 = OUTLINED_FUNCTION_0_183();
        v31 = 1;
        goto LABEL_33;
      }

      if (v4 != v10 || v5 != v9)
      {
        OUTLINED_FUNCTION_1_140();
        v13 = sub_1D5616168();
        LOBYTE(v6) = 1;
        v19 = OUTLINED_FUNCTION_0_183();
        v23 = 1;
        goto LABEL_31;
      }

      LOBYTE(v6) = 1;
      v32 = v8;
      v33 = v7;
      v34 = v4;
      v35 = v5;
      v36 = 1;
      goto LABEL_38;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_32;
      }

      if (v2 != v8 || v3 != v7)
      {
        v13 = OUTLINED_FUNCTION_3_141();
        LOBYTE(v6) = 2;
        v19 = OUTLINED_FUNCTION_0_183();
        v23 = 2;
        goto LABEL_31;
      }

      LOBYTE(v6) = 2;
      OUTLINED_FUNCTION_1_140();
      v36 = 2;
      goto LABEL_38;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_32;
      }

      if (v2 != v8 || v3 != v7)
      {
        v13 = OUTLINED_FUNCTION_3_141();
        LOBYTE(v6) = 3;
        v19 = OUTLINED_FUNCTION_0_183();
        v23 = 3;
LABEL_31:
        sub_1D531A63C(v19, v20, v21, v22, v23);
        goto LABEL_40;
      }

      LOBYTE(v6) = 3;
      OUTLINED_FUNCTION_1_140();
      v36 = 3;
LABEL_38:
      sub_1D531A63C(v32, v33, v34, v35, v36);
      goto LABEL_39;
    default:
      if (v11)
      {
LABEL_32:
        v27 = OUTLINED_FUNCTION_0_183();
LABEL_33:
        sub_1D531A63C(v27, v28, v29, v30, v31);
        v13 = 0;
      }

      else if (v2 == v8 && v3 == v7)
      {
        OUTLINED_FUNCTION_1_140();
        sub_1D531A63C(v37, v38, v39, v40, 0);
        LOBYTE(v6) = 0;
LABEL_39:
        v13 = 1;
      }

      else
      {
        v13 = sub_1D5616168();
        v14 = OUTLINED_FUNCTION_0_183();
        sub_1D531A63C(v14, v15, v16, v17, 0);
        LOBYTE(v6) = 0;
      }

LABEL_40:
      sub_1D531A63C(v2, v3, v4, v5, v6);
      sub_1D5326F28(v42);
      return v13 & 1;
  }
}

uint64_t sub_1D5326F28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F4490, &qword_1D5653628);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicFavoriteStatusController.Item.ID.hash(into:)(uint64_t a1)
{
  switch(*(v1 + 32))
  {
    case 1:
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_2_59();
      sub_1D5614E28();
      goto LABEL_7;
    case 2:
      v2 = 2;
      goto LABEL_5;
    case 3:
      v2 = 3;
      goto LABEL_5;
    default:
      v2 = 0;
LABEL_5:
      MEMORY[0x1DA6EC0D0](v2);
      OUTLINED_FUNCTION_2_59();
LABEL_7:

      return sub_1D5614E28();
  }
}

uint64_t MusicFavoriteStatusController.Item.ID.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1D56162D8();
  switch(v1)
  {
    case 1:
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_2_59();
      sub_1D5614E28();
      goto LABEL_7;
    case 2:
      v2 = 2;
      goto LABEL_5;
    case 3:
      v2 = 3;
      goto LABEL_5;
    default:
      v2 = 0;
LABEL_5:
      MEMORY[0x1DA6EC0D0](v2);
      OUTLINED_FUNCTION_2_59();
LABEL_7:
      sub_1D5614E28();
      return sub_1D5616328();
  }
}

uint64_t sub_1D5327124(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_1D56162D8();
  MusicFavoriteStatusController.Item.ID.hash(into:)(v5);
  return sub_1D5616328();
}

unint64_t MusicFavoriteStatusController.Item.ID.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  switch(*(v0 + 32))
  {
    case 1:
      v7 = v0[2];
      v6 = v0[3];
      OUTLINED_FUNCTION_2_137();
      sub_1D5615B68();

      v9 = 0xD000000000000010;
      MEMORY[0x1DA6EAC70](v2, v1);
      MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D568B240);
      v4 = v7;
      v5 = v6;
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_2_137();
      sub_1D5615B68();

      v3 = 0x7972617262696C2ELL;
      goto LABEL_6;
    case 3:
      OUTLINED_FUNCTION_2_137();
      sub_1D5615B68();

      v3 = 0x736168637275702ELL;
      goto LABEL_6;
    default:
      OUTLINED_FUNCTION_2_137();
      sub_1D5615B68();

      v3 = 0x676F6C617461632ELL;
LABEL_6:
      v9 = v3;
      v4 = v2;
      v5 = v1;
LABEL_8:
      MEMORY[0x1DA6EAC70](v4, v5);
      MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
      return v9;
  }
}

unint64_t sub_1D5327300()
{
  result = qword_1EC7F4498;
  if (!qword_1EC7F4498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F4498);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D5327378(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 33))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D53273B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

id Artwork.Gradient.color.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t static Artwork.Gradient.== infix(_:_:)(double *a1, uint64_t a2)
{
  v4 = sub_1D5614028();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F44A0, &qword_1D5653798);
  OUTLINED_FUNCTION_11();
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = *a2;
  if (*a1)
  {
    if (!v18)
    {
      goto LABEL_28;
    }

    v35 = v15;
    type metadata accessor for CGColor();
    OUTLINED_FUNCTION_2_138();
    sub_1D5328124(v19, v20, &unk_1D561B944);
    v36 = v13;
    v21 = v18;
    v13 = v36;
    v22 = sub_1D560C518();

    v15 = v35;
    if ((v22 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v18)
  {
    goto LABEL_28;
  }

  v23 = *(a2 + 16);
  if (a1[2])
  {
    if (!*(a2 + 16))
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (a1[1] != *(a2 + 8))
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_28;
    }
  }

  v24 = *(a2 + 32);
  if (a1[4])
  {
    if (!*(a2 + 32))
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (a1[3] != *(a2 + 24))
    {
      v24 = 1;
    }

    if (v24)
    {
      goto LABEL_28;
    }
  }

  if (*(a1 + 33) == *(a2 + 33))
  {
    v25 = v15;
    v26 = *(type metadata accessor for Artwork.Gradient(0) + 32);
    v27 = *(v25 + 48);
    sub_1D520EBBC(a1 + v26, v17);
    sub_1D520EBBC(a2 + v26, &v17[v27]);
    OUTLINED_FUNCTION_11_2(v17);
    if (v28)
    {
      OUTLINED_FUNCTION_11_2(&v17[v27]);
      if (v28)
      {
        sub_1D4E6C9CC(v17, &qword_1EC7F1E70, &qword_1D5653790);
        goto LABEL_31;
      }
    }

    else
    {
      sub_1D520EBBC(v17, v13);
      OUTLINED_FUNCTION_11_2(&v17[v27]);
      if (!v28)
      {
        (*(v6 + 32))(v10, &v17[v27], v4);
        OUTLINED_FUNCTION_1_141();
        sub_1D5328124(v31, v32, MEMORY[0x1E6976F60]);
        v33 = sub_1D5614D18();
        v34 = *(v6 + 8);
        v34(v10, v4);
        v34(v13, v4);
        sub_1D4E6C9CC(v17, &qword_1EC7F1E70, &qword_1D5653790);
        if ((v33 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_31:
        sub_1D4F286E0();
        return v29 & 1;
      }

      (*(v6 + 8))(v13, v4);
    }

    sub_1D4E6C9CC(v17, &qword_1EC7F44A0, &qword_1D5653798);
  }

LABEL_28:
  v29 = 0;
  return v29 & 1;
}

uint64_t type metadata accessor for Artwork.Gradient(uint64_t a1)
{
  result = qword_1EC7F44D0;
  if (!qword_1EC7F44D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Artwork.Gradient.hash(into:)(uint64_t a1)
{
  v2 = sub_1D5614028();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1E70, &qword_1D5653790);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  if (*v1)
  {
    OUTLINED_FUNCTION_27();
    type metadata accessor for CGColor();
    OUTLINED_FUNCTION_2_138();
    sub_1D5328124(v12, v13, &unk_1D561B944);
    sub_1D560C528();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + 16) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v14 = *(v1 + 8);
    OUTLINED_FUNCTION_27();
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x1DA6EC100](v15);
  }

  if (*(v1 + 32) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v16 = *(v1 + 24);
    OUTLINED_FUNCTION_27();
    if ((v16 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x1DA6EC100](v17);
  }

  sub_1D56162F8();
  v18 = type metadata accessor for Artwork.Gradient(0);
  sub_1D520EBBC(v1 + *(v18 + 32), v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v2) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v4 + 32))(v8, v11, v2);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_1_141();
    sub_1D5328124(v19, v20, MEMORY[0x1E6976F58]);
    sub_1D5614CB8();
    (*(v4 + 8))(v8, v2);
  }

  sub_1D4F31AC0();
}

uint64_t Artwork.Gradient.hashValue.getter()
{
  sub_1D56162D8();
  Artwork.Gradient.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D5327B24(uint64_t a1)
{
  sub_1D56162D8();
  Artwork.Gradient.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t Artwork.Gradient.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v23 = sub_1D56140C8();
  OUTLINED_FUNCTION_4();
  v21 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F44B0, &qword_1D56537A0);
  OUTLINED_FUNCTION_4();
  v11 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - v13;
  sub_1D4E628D4(a1, v22);
  sub_1D560F978();
  v15 = MEMORY[0x1E6975950];
  sub_1D5328124(&qword_1EC7F44B8, MEMORY[0x1E6975950], MEMORY[0x1E6975960]);
  OUTLINED_FUNCTION_3_142();
  sub_1D5328124(v16, v15, v17);
  sub_1D5610768();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D5610748();
  sub_1D5327D74(v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  (*(v21 + 8))(v8, v23);
  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_1D5327D74@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D5614098();
  v3 = sub_1D5614068();
  v5 = v4;
  v6 = sub_1D5614078();
  v8 = v7;
  v9 = sub_1D5614058();
  v10 = type metadata accessor for Artwork.Gradient(0);
  sub_1D56140A8();
  result = sub_1D56140B8();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  *(a1 + 32) = v8 & 1;
  *(a1 + 33) = v9 & 1;
  *(a1 + *(v10 + 36)) = result;
  return result;
}