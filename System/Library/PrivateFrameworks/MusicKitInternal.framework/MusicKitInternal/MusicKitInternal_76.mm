uint64_t sub_1D5584A0C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = v3;
  if ([objc_opt_self() isMainThread])
  {
    v44 = type metadata accessor for TVEpisode(0);
    v45 = sub_1D55ACD00(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v41);
    v10 = *(*v5 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v5 + v10, boxed_opaque_existential_0);

    sub_1D50A911C(a1, a2, &v41, &v46, *&a3);
    v40 = v46;
    v4 = v47;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_1D560C758();
  __swift_project_value_buffer(v11, qword_1EDD76AA8);
  swift_retain_n();
  v12 = sub_1D560C738();
  v13 = sub_1D56156E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46 = *&v39;
    *v14 = 136446978;
    v15 = sub_1D4F636B4();
    v38 = a2;
    v17 = sub_1D4E6835C(v15, v16, &v46);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v41 = v40;
    LOBYTE(v42) = v4;
    v18 = MusicLibrary.DownloadStatus.description.getter();
    v20 = sub_1D4E6835C(v18, v19, &v46);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v21);
    sub_1D55ACD00(&qword_1EC7F2230, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    v23 = MusicLibrary.DownloadStatus.description.getter();
    v25 = v24;

    v26 = sub_1D4E6835C(v23, v25, &v46);

    *(v14 + 24) = v26;
    *(v14 + 32) = 2082;
    v41 = *&a1;
    v42 = v38;
    v43 = a3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v27 = sub_1D5614DB8();
    v29 = sub_1D4E6835C(v27, v28, &v46);

    *(v14 + 34) = v29;
    _os_log_impl(&dword_1D4E3F000, v12, v13, "%{public}s | Updated:\n  • Download status: %{public}s with previous status %{public}s\n  Change source: MPLibraryKeepLocalStatusObserver.statusBlock(%{public}s)", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v39, -1, -1);
    MEMORY[0x1DA6ED200](v14, -1, -1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v30);
  sub_1D55ACD00(&qword_1EC7F2230, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v31 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v31);
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v42)
  {
    if (v42 == 1)
    {
      if (v4 != 1 || *&v41 != *&v40)
      {
        return sub_1D556C258();
      }
    }

    else
    {
      switch(*&v41)
      {
        case 1:
          if (v4 != 2 || *&v40 != 1)
          {
            return sub_1D556C258();
          }

          break;
        case 2:
          if (v4 != 2 || *&v40 != 2)
          {
            return sub_1D556C258();
          }

          break;
        case 3:
          if (v4 != 2 || *&v40 != 3)
          {
            return sub_1D556C258();
          }

          break;
        case 4:
          if (v4 != 2 || *&v40 != 4)
          {
            return sub_1D556C258();
          }

          break;
        default:
          if (v4 != 2 || v40 != 0.0)
          {
            return sub_1D556C258();
          }

          break;
      }
    }
  }

  else if (v4 || v41 != v40)
  {
    return sub_1D556C258();
  }

  return result;
}

uint64_t sub_1D558504C(uint64_t a1, uint64_t a2, double a3)
{
  v5 = v3;
  if ([objc_opt_self() isMainThread])
  {
    v44 = type metadata accessor for MusicMovie(0);
    v45 = sub_1D55ACD00(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v41);
    v10 = *(*v5 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v5 + v10, boxed_opaque_existential_0);

    sub_1D50A911C(a1, a2, &v41, &v46, *&a3);
    v40 = v46;
    v4 = v47;
    if (qword_1EDD54488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = sub_1D560C758();
  __swift_project_value_buffer(v11, qword_1EDD76AA8);
  swift_retain_n();
  v12 = sub_1D560C738();
  v13 = sub_1D56156E8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v46 = *&v39;
    *v14 = 136446978;
    v15 = sub_1D4F636B4();
    v38 = a2;
    v17 = sub_1D4E6835C(v15, v16, &v46);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v41 = v40;
    LOBYTE(v42) = v4;
    v18 = MusicLibrary.DownloadStatus.description.getter();
    v20 = sub_1D4E6835C(v18, v19, &v46);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2082;
    MEMORY[0x1EEE9AC00](v21);
    sub_1D55ACD00(&qword_1EC7F1078, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    v23 = MusicLibrary.DownloadStatus.description.getter();
    v25 = v24;

    v26 = sub_1D4E6835C(v23, v25, &v46);

    *(v14 + 24) = v26;
    *(v14 + 32) = 2082;
    v41 = *&a1;
    v42 = v38;
    v43 = a3;
    type metadata accessor for MusicKit_SoftLinking_MPLibraryActiveKeepLocalStatus();
    v27 = sub_1D5614DB8();
    v29 = sub_1D4E6835C(v27, v28, &v46);

    *(v14 + 34) = v29;
    _os_log_impl(&dword_1D4E3F000, v12, v13, "%{public}s | Updated:\n  • Download status: %{public}s with previous status %{public}s\n  Change source: MPLibraryKeepLocalStatusObserver.statusBlock(%{public}s)", v14, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6ED200](v39, -1, -1);
    MEMORY[0x1DA6ED200](v14, -1, -1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v30);
  sub_1D55ACD00(&qword_1EC7F1078, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v31 = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](v31);
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v42)
  {
    if (v42 == 1)
    {
      if (v4 != 1 || *&v41 != *&v40)
      {
        return sub_1D556C258();
      }
    }

    else
    {
      switch(*&v41)
      {
        case 1:
          if (v4 != 2 || *&v40 != 1)
          {
            return sub_1D556C258();
          }

          break;
        case 2:
          if (v4 != 2 || *&v40 != 2)
          {
            return sub_1D556C258();
          }

          break;
        case 3:
          if (v4 != 2 || *&v40 != 3)
          {
            return sub_1D556C258();
          }

          break;
        case 4:
          if (v4 != 2 || *&v40 != 4)
          {
            return sub_1D556C258();
          }

          break;
        default:
          if (v4 != 2 || v40 != 0.0)
          {
            return sub_1D556C258();
          }

          break;
      }
    }
  }

  else if (v4 || v41 != v40)
  {
    return sub_1D556C258();
  }

  return result;
}

void sub_1D558582C()
{
  OUTLINED_FUNCTION_269_2();
  v1 = v0;
  if ([objc_opt_self() isMainThread])
  {
    if (v1)
    {
      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_75_2();
    OUTLINED_FUNCTION_64_5();
    sub_1D5579238();
    v3 = sub_1D4F0B2E4();

    if (v3)
    {
    }

    else
    {
      OUTLINED_FUNCTION_446();
      OUTLINED_FUNCTION_273_2();
      MEMORY[0x1DA6EAC70](0x100000000000001ALL);
      v4 = MEMORY[0x1DA6EAF70](v2, &type metadata for MusicLibrary.DownloadWarning);
      MEMORY[0x1DA6EAC70](v4);

      OUTLINED_FUNCTION_273_2();
      MEMORY[0x1DA6EAC70](0xD000000000000019);
      OUTLINED_FUNCTION_75_2();
      OUTLINED_FUNCTION_64_5();
      sub_1D5579238();
      MEMORY[0x1DA6EAF70]();

      v5 = OUTLINED_FUNCTION_0_33();
      MEMORY[0x1DA6EAC70](v5);

      MEMORY[0x1DA6EAC70]();

      OUTLINED_FUNCTION_376_1();
      sub_1D556C584();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D55859E8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1D56128E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = [objc_opt_self() isMainThread];
  if (!v11)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (a1)
  {
    if (a1 < 4)
    {
      LODWORD(v4) = 0x2010000u >> (8 * a1);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = *(*v1 + 144);
  swift_beginAccess();
  v13 = sub_1D560EEA8();
  v28 = v13;
  v29 = &protocol witness table for MusicVideo;
  v14 = __swift_allocate_boxed_opaque_existential_0(&v26);
  (*(*(v13 - 8) + 16))(v14, v2 + v12, v13);
  __swift_project_boxed_opaque_existential_1(&v26, v28);
  sub_1D560ED78();
  (*(v5 + 16))(v8, v10, v4);
  v15 = (*(v5 + 88))(v8, v4);
  if (v15 == *MEMORY[0x1E69765E8])
  {
    (*(v5 + 8))(v10, v4);
    v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
LABEL_7:
    LOBYTE(v4) = 0;
    goto LABEL_8;
  }

  if (v15 == *MEMORY[0x1E69765F8])
  {
    (*(v5 + 8))(v10, v4);
    v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
    LOBYTE(v4) = 1;
    goto LABEL_8;
  }

  if (v15 != *MEMORY[0x1E69765F0])
  {
LABEL_35:
    sub_1D5615E08();
    __break(1u);
    return;
  }

  (*(v5 + 8))(v10, v4);
  v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
  LOBYTE(v4) = 2;
LABEL_8:
  MEMORY[0x1EEE9AC00](v11);
  sub_1D560EEA8();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v26 != v4)
  {
    v17 = 0x6C61727475656E2ELL;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
    if (v4)
    {
      if (v4 == 1)
      {
        v18 = 0x7469726F7661662ELL;
      }

      else
      {
        v18 = 0x656B696C7369642ELL;
      }

      if (v4 == 1)
      {
        v19 = 0xEA00000000006465;
      }

      else
      {
        v19 = 0xE900000000000064;
      }
    }

    else
    {
      v19 = 0xE800000000000000;
      v18 = 0x6C61727475656E2ELL;
    }

    MEMORY[0x1DA6EAC70](v18, v19);

    v20 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v20);
    v21 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v21);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v30)
    {
      if (v30 == 1)
      {
        v17 = 0x7469726F7661662ELL;
        v22 = 0xEA00000000006465;
      }

      else
      {
        v17 = 0x656B696C7369642ELL;
        v22 = 0xE900000000000064;
      }
    }

    else
    {
      v22 = 0xE800000000000000;
    }

    MEMORY[0x1DA6EAC70](v17, v22);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v23 = 0xD000000000000026;
    }

    else
    {
      v23 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v24 = "wnloadButtonsDidChange";
    }

    else
    {
      v24 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v23, v24 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v26, v27);

    sub_1D556C71C();
  }
}

void sub_1D558600C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1D56128E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = [objc_opt_self() isMainThread];
  if (!v11)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (a1)
  {
    if (a1 < 4)
    {
      LODWORD(v4) = 0x2010000u >> (8 * a1);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = *(*v1 + 144);
  swift_beginAccess();
  v13 = sub_1D5613838();
  v28 = v13;
  v29 = &protocol witness table for Song;
  v14 = __swift_allocate_boxed_opaque_existential_0(&v26);
  (*(*(v13 - 8) + 16))(v14, v2 + v12, v13);
  __swift_project_boxed_opaque_existential_1(&v26, v28);
  sub_1D5613698();
  (*(v5 + 16))(v8, v10, v4);
  v15 = (*(v5 + 88))(v8, v4);
  if (v15 == *MEMORY[0x1E69765E8])
  {
    (*(v5 + 8))(v10, v4);
    v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
LABEL_7:
    LOBYTE(v4) = 0;
    goto LABEL_8;
  }

  if (v15 == *MEMORY[0x1E69765F8])
  {
    (*(v5 + 8))(v10, v4);
    v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
    LOBYTE(v4) = 1;
    goto LABEL_8;
  }

  if (v15 != *MEMORY[0x1E69765F0])
  {
LABEL_35:
    sub_1D5615E08();
    __break(1u);
    return;
  }

  (*(v5 + 8))(v10, v4);
  v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
  LOBYTE(v4) = 2;
LABEL_8:
  MEMORY[0x1EEE9AC00](v11);
  sub_1D5613838();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v26 != v4)
  {
    v17 = 0x6C61727475656E2ELL;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
    if (v4)
    {
      if (v4 == 1)
      {
        v18 = 0x7469726F7661662ELL;
      }

      else
      {
        v18 = 0x656B696C7369642ELL;
      }

      if (v4 == 1)
      {
        v19 = 0xEA00000000006465;
      }

      else
      {
        v19 = 0xE900000000000064;
      }
    }

    else
    {
      v19 = 0xE800000000000000;
      v18 = 0x6C61727475656E2ELL;
    }

    MEMORY[0x1DA6EAC70](v18, v19);

    v20 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v20);
    v21 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v21);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v30)
    {
      if (v30 == 1)
      {
        v17 = 0x7469726F7661662ELL;
        v22 = 0xEA00000000006465;
      }

      else
      {
        v17 = 0x656B696C7369642ELL;
        v22 = 0xE900000000000064;
      }
    }

    else
    {
      v22 = 0xE800000000000000;
    }

    MEMORY[0x1DA6EAC70](v17, v22);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v23 = 0xD000000000000026;
    }

    else
    {
      v23 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v24 = "wnloadButtonsDidChange";
    }

    else
    {
      v24 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v23, v24 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v26, v27);

    sub_1D556C71C();
  }
}

void sub_1D5586630(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1D56128E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = [objc_opt_self() isMainThread];
  if (!v11)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (a1)
  {
    if (a1 < 4)
    {
      LODWORD(v4) = 0x2010000u >> (8 * a1);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = *(*v1 + 144);
  swift_beginAccess();
  v13 = sub_1D5613AF8();
  v28 = v13;
  v29 = &protocol witness table for Album;
  v14 = __swift_allocate_boxed_opaque_existential_0(&v26);
  (*(*(v13 - 8) + 16))(v14, v2 + v12, v13);
  __swift_project_boxed_opaque_existential_1(&v26, v28);
  sub_1D5613938();
  (*(v5 + 16))(v8, v10, v4);
  v15 = (*(v5 + 88))(v8, v4);
  if (v15 == *MEMORY[0x1E69765E8])
  {
    (*(v5 + 8))(v10, v4);
    v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
LABEL_7:
    LOBYTE(v4) = 0;
    goto LABEL_8;
  }

  if (v15 == *MEMORY[0x1E69765F8])
  {
    (*(v5 + 8))(v10, v4);
    v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
    LOBYTE(v4) = 1;
    goto LABEL_8;
  }

  if (v15 != *MEMORY[0x1E69765F0])
  {
LABEL_35:
    sub_1D5615E08();
    __break(1u);
    return;
  }

  (*(v5 + 8))(v10, v4);
  v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
  LOBYTE(v4) = 2;
LABEL_8:
  MEMORY[0x1EEE9AC00](v11);
  sub_1D5613AF8();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v26 != v4)
  {
    v17 = 0x6C61727475656E2ELL;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
    if (v4)
    {
      if (v4 == 1)
      {
        v18 = 0x7469726F7661662ELL;
      }

      else
      {
        v18 = 0x656B696C7369642ELL;
      }

      if (v4 == 1)
      {
        v19 = 0xEA00000000006465;
      }

      else
      {
        v19 = 0xE900000000000064;
      }
    }

    else
    {
      v19 = 0xE800000000000000;
      v18 = 0x6C61727475656E2ELL;
    }

    MEMORY[0x1DA6EAC70](v18, v19);

    v20 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v20);
    v21 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v21);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v30)
    {
      if (v30 == 1)
      {
        v17 = 0x7469726F7661662ELL;
        v22 = 0xEA00000000006465;
      }

      else
      {
        v17 = 0x656B696C7369642ELL;
        v22 = 0xE900000000000064;
      }
    }

    else
    {
      v22 = 0xE800000000000000;
    }

    MEMORY[0x1DA6EAC70](v17, v22);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v23 = 0xD000000000000026;
    }

    else
    {
      v23 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v24 = "wnloadButtonsDidChange";
    }

    else
    {
      v24 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v23, v24 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v26, v27);

    sub_1D556C71C();
  }
}

void sub_1D5586C54(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1D56128E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = [objc_opt_self() isMainThread];
  if (!v11)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (a1)
  {
    if (a1 < 4)
    {
      LODWORD(v4) = 0x2010000u >> (8 * a1);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = *(*v1 + 144);
  swift_beginAccess();
  v13 = sub_1D5613D28();
  v28 = v13;
  v29 = &protocol witness table for Track;
  v14 = __swift_allocate_boxed_opaque_existential_0(&v26);
  (*(*(v13 - 8) + 16))(v14, v2 + v12, v13);
  __swift_project_boxed_opaque_existential_1(&v26, v28);
  sub_1D5613CA8();
  (*(v5 + 16))(v8, v10, v4);
  v15 = (*(v5 + 88))(v8, v4);
  if (v15 == *MEMORY[0x1E69765E8])
  {
    (*(v5 + 8))(v10, v4);
    v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
LABEL_7:
    LOBYTE(v4) = 0;
    goto LABEL_8;
  }

  if (v15 == *MEMORY[0x1E69765F8])
  {
    (*(v5 + 8))(v10, v4);
    v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
    LOBYTE(v4) = 1;
    goto LABEL_8;
  }

  if (v15 != *MEMORY[0x1E69765F0])
  {
LABEL_35:
    sub_1D5615E08();
    __break(1u);
    return;
  }

  (*(v5 + 8))(v10, v4);
  v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
  LOBYTE(v4) = 2;
LABEL_8:
  MEMORY[0x1EEE9AC00](v11);
  sub_1D5613D28();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v26 != v4)
  {
    v17 = 0x6C61727475656E2ELL;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
    if (v4)
    {
      if (v4 == 1)
      {
        v18 = 0x7469726F7661662ELL;
      }

      else
      {
        v18 = 0x656B696C7369642ELL;
      }

      if (v4 == 1)
      {
        v19 = 0xEA00000000006465;
      }

      else
      {
        v19 = 0xE900000000000064;
      }
    }

    else
    {
      v19 = 0xE800000000000000;
      v18 = 0x6C61727475656E2ELL;
    }

    MEMORY[0x1DA6EAC70](v18, v19);

    v20 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v20);
    v21 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v21);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v30)
    {
      if (v30 == 1)
      {
        v17 = 0x7469726F7661662ELL;
        v22 = 0xEA00000000006465;
      }

      else
      {
        v17 = 0x656B696C7369642ELL;
        v22 = 0xE900000000000064;
      }
    }

    else
    {
      v22 = 0xE800000000000000;
    }

    MEMORY[0x1DA6EAC70](v17, v22);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v23 = 0xD000000000000026;
    }

    else
    {
      v23 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v24 = "wnloadButtonsDidChange";
    }

    else
    {
      v24 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v23, v24 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v26, v27);

    sub_1D556C71C();
  }
}

void sub_1D5587278(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1D56128E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = [objc_opt_self() isMainThread];
  if (!v11)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (a1)
  {
    if (a1 < 4)
    {
      LODWORD(v4) = 0x2010000u >> (8 * a1);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = *(*v1 + 144);
  swift_beginAccess();
  v13 = sub_1D5614898();
  v28 = v13;
  v29 = &protocol witness table for Playlist;
  v14 = __swift_allocate_boxed_opaque_existential_0(&v26);
  (*(*(v13 - 8) + 16))(v14, v2 + v12, v13);
  __swift_project_boxed_opaque_existential_1(&v26, v28);
  sub_1D5614548();
  (*(v5 + 16))(v8, v10, v4);
  v15 = (*(v5 + 88))(v8, v4);
  if (v15 == *MEMORY[0x1E69765E8])
  {
    (*(v5 + 8))(v10, v4);
    v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
LABEL_7:
    LOBYTE(v4) = 0;
    goto LABEL_8;
  }

  if (v15 == *MEMORY[0x1E69765F8])
  {
    (*(v5 + 8))(v10, v4);
    v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
    LOBYTE(v4) = 1;
    goto LABEL_8;
  }

  if (v15 != *MEMORY[0x1E69765F0])
  {
LABEL_35:
    sub_1D5615E08();
    __break(1u);
    return;
  }

  (*(v5 + 8))(v10, v4);
  v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
  LOBYTE(v4) = 2;
LABEL_8:
  MEMORY[0x1EEE9AC00](v11);
  sub_1D5614898();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v26 != v4)
  {
    v17 = 0x6C61727475656E2ELL;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
    if (v4)
    {
      if (v4 == 1)
      {
        v18 = 0x7469726F7661662ELL;
      }

      else
      {
        v18 = 0x656B696C7369642ELL;
      }

      if (v4 == 1)
      {
        v19 = 0xEA00000000006465;
      }

      else
      {
        v19 = 0xE900000000000064;
      }
    }

    else
    {
      v19 = 0xE800000000000000;
      v18 = 0x6C61727475656E2ELL;
    }

    MEMORY[0x1DA6EAC70](v18, v19);

    v20 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v20);
    v21 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v21);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v30)
    {
      if (v30 == 1)
      {
        v17 = 0x7469726F7661662ELL;
        v22 = 0xEA00000000006465;
      }

      else
      {
        v17 = 0x656B696C7369642ELL;
        v22 = 0xE900000000000064;
      }
    }

    else
    {
      v22 = 0xE800000000000000;
    }

    MEMORY[0x1DA6EAC70](v17, v22);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v23 = 0xD000000000000026;
    }

    else
    {
      v23 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v24 = "wnloadButtonsDidChange";
    }

    else
    {
      v24 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v23, v24 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v26, v27);

    sub_1D556C71C();
  }
}

void sub_1D558789C(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() isMainThread];
  if (v7)
  {
    if (a1)
    {
      if (a1 >= 4)
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        LODWORD(v8) = 0x2010000u >> (8 * a1);
      }
    }

    else
    {
      v9 = *(*v2 + 144);
      swift_beginAccess();
      sub_1D55AC65C(v2 + v9, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v22 = 0;
        memset(v21, 0, sizeof(v21));
        sub_1D4E50004(v21, &qword_1EC7EC510, &unk_1D5621040);
        return;
      }

      sub_1D4E48324(v21, &v23);
      v8 = v25;
      v10 = v26;
      __swift_project_boxed_opaque_existential_1(&v23, v25);
      (*(v10 + 16))(v21, v8, v10);
      LOBYTE(v8) = v21[0];
      v7 = __swift_destroy_boxed_opaque_existential_1(&v23);
    }

    MEMORY[0x1EEE9AC00](v7);
    *&v21[-1] = v4;
    v11 = sub_1D55ACD00(&qword_1EC7F23B0, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
    *(&v21[-1] + 1) = v11;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v21[-1] = v4;
    *(&v21[-1] + 1) = v11;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v23 != v8)
    {
      v13 = 0x6C61727475656E2ELL;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
      if (v8)
      {
        if (v8 == 1)
        {
          v14 = 0x7469726F7661662ELL;
        }

        else
        {
          v14 = 0x656B696C7369642ELL;
        }

        if (v8 == 1)
        {
          v15 = 0xEA00000000006465;
        }

        else
        {
          v15 = 0xE900000000000064;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        v14 = 0x6C61727475656E2ELL;
      }

      MEMORY[0x1DA6EAC70](v14, v15);

      v16 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v16);
      *&v21[-1] = v4;
      *(&v21[-1] + 1) = v11;
      v17 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v17);
      *&v21[-1] = v4;
      *(&v21[-1] + 1) = v11;
      swift_getKeyPath();
      sub_1D560C8F8();

      if (LOBYTE(v21[0]))
      {
        if (LOBYTE(v21[0]) == 1)
        {
          v13 = 0x7469726F7661662ELL;
          v18 = 0xEA00000000006465;
        }

        else
        {
          v13 = 0x656B696C7369642ELL;
          v18 = 0xE900000000000064;
        }
      }

      else
      {
        v18 = 0xE800000000000000;
      }

      MEMORY[0x1DA6EAC70](v13, v18);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v19 = 0xD000000000000026;
      }

      else
      {
        v19 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v20 = "wnloadButtonsDidChange";
      }

      else
      {
        v20 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v19, v20 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v23, v24);

      sub_1D556C6A4();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D5587DE4(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() isMainThread];
  if (v7)
  {
    if (a1)
    {
      if (a1 >= 4)
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        LODWORD(v8) = 0x2010000u >> (8 * a1);
      }
    }

    else
    {
      v9 = *(*v2 + 144);
      swift_beginAccess();
      sub_1D55AC65C(v2 + v9, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v22 = 0;
        memset(v21, 0, sizeof(v21));
        sub_1D4E50004(v21, &qword_1EC7EC510, &unk_1D5621040);
        return;
      }

      sub_1D4E48324(v21, &v23);
      v8 = v25;
      v10 = v26;
      __swift_project_boxed_opaque_existential_1(&v23, v25);
      (*(v10 + 16))(v21, v8, v10);
      LOBYTE(v8) = v21[0];
      v7 = __swift_destroy_boxed_opaque_existential_1(&v23);
    }

    MEMORY[0x1EEE9AC00](v7);
    *&v21[-1] = v4;
    v11 = sub_1D55ACD00(&qword_1EC7F08D0, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
    *(&v21[-1] + 1) = v11;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v21[-1] = v4;
    *(&v21[-1] + 1) = v11;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v23 != v8)
    {
      v13 = 0x6C61727475656E2ELL;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
      if (v8)
      {
        if (v8 == 1)
        {
          v14 = 0x7469726F7661662ELL;
        }

        else
        {
          v14 = 0x656B696C7369642ELL;
        }

        if (v8 == 1)
        {
          v15 = 0xEA00000000006465;
        }

        else
        {
          v15 = 0xE900000000000064;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        v14 = 0x6C61727475656E2ELL;
      }

      MEMORY[0x1DA6EAC70](v14, v15);

      v16 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v16);
      *&v21[-1] = v4;
      *(&v21[-1] + 1) = v11;
      v17 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v17);
      *&v21[-1] = v4;
      *(&v21[-1] + 1) = v11;
      swift_getKeyPath();
      sub_1D560C8F8();

      if (LOBYTE(v21[0]))
      {
        if (LOBYTE(v21[0]) == 1)
        {
          v13 = 0x7469726F7661662ELL;
          v18 = 0xEA00000000006465;
        }

        else
        {
          v13 = 0x656B696C7369642ELL;
          v18 = 0xE900000000000064;
        }
      }

      else
      {
        v18 = 0xE800000000000000;
      }

      MEMORY[0x1DA6EAC70](v13, v18);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v19 = 0xD000000000000026;
      }

      else
      {
        v19 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v20 = "wnloadButtonsDidChange";
      }

      else
      {
        v20 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v19, v20 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v23, v24);

      sub_1D556C6A4();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D558832C(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() isMainThread];
  if (v7)
  {
    if (a1)
    {
      if (a1 >= 4)
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        LODWORD(v8) = 0x2010000u >> (8 * a1);
      }
    }

    else
    {
      v9 = *(*v2 + 144);
      swift_beginAccess();
      sub_1D55AC65C(v2 + v9, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v22 = 0;
        memset(v21, 0, sizeof(v21));
        sub_1D4E50004(v21, &qword_1EC7EC510, &unk_1D5621040);
        return;
      }

      sub_1D4E48324(v21, &v23);
      v8 = v25;
      v10 = v26;
      __swift_project_boxed_opaque_existential_1(&v23, v25);
      (*(v10 + 16))(v21, v8, v10);
      LOBYTE(v8) = v21[0];
      v7 = __swift_destroy_boxed_opaque_existential_1(&v23);
    }

    MEMORY[0x1EEE9AC00](v7);
    *&v21[-1] = v4;
    v11 = sub_1D55ACD00(qword_1EC7EE608, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    *(&v21[-1] + 1) = v11;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v21[-1] = v4;
    *(&v21[-1] + 1) = v11;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v23 != v8)
    {
      v13 = 0x6C61727475656E2ELL;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
      if (v8)
      {
        if (v8 == 1)
        {
          v14 = 0x7469726F7661662ELL;
        }

        else
        {
          v14 = 0x656B696C7369642ELL;
        }

        if (v8 == 1)
        {
          v15 = 0xEA00000000006465;
        }

        else
        {
          v15 = 0xE900000000000064;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        v14 = 0x6C61727475656E2ELL;
      }

      MEMORY[0x1DA6EAC70](v14, v15);

      v16 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v16);
      *&v21[-1] = v4;
      *(&v21[-1] + 1) = v11;
      v17 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v17);
      *&v21[-1] = v4;
      *(&v21[-1] + 1) = v11;
      swift_getKeyPath();
      sub_1D560C8F8();

      if (LOBYTE(v21[0]))
      {
        if (LOBYTE(v21[0]) == 1)
        {
          v13 = 0x7469726F7661662ELL;
          v18 = 0xEA00000000006465;
        }

        else
        {
          v13 = 0x656B696C7369642ELL;
          v18 = 0xE900000000000064;
        }
      }

      else
      {
        v18 = 0xE800000000000000;
      }

      MEMORY[0x1DA6EAC70](v13, v18);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v19 = 0xD000000000000026;
      }

      else
      {
        v19 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v20 = "wnloadButtonsDidChange";
      }

      else
      {
        v20 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v19, v20 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v23, v24);

      sub_1D556C6A4();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D5588874(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() isMainThread];
  if (v7)
  {
    if (a1)
    {
      if (a1 >= 4)
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        LODWORD(v8) = 0x2010000u >> (8 * a1);
      }
    }

    else
    {
      v9 = *(*v2 + 144);
      swift_beginAccess();
      sub_1D55AC65C(v2 + v9, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v22 = 0;
        memset(v21, 0, sizeof(v21));
        sub_1D4E50004(v21, &qword_1EC7EC510, &unk_1D5621040);
        return;
      }

      sub_1D4E48324(v21, &v23);
      v8 = v25;
      v10 = v26;
      __swift_project_boxed_opaque_existential_1(&v23, v25);
      (*(v10 + 16))(v21, v8, v10);
      LOBYTE(v8) = v21[0];
      v7 = __swift_destroy_boxed_opaque_existential_1(&v23);
    }

    MEMORY[0x1EEE9AC00](v7);
    *&v21[-1] = v4;
    v11 = sub_1D55ACD00(&qword_1EC7F2230, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    *(&v21[-1] + 1) = v11;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v21[-1] = v4;
    *(&v21[-1] + 1) = v11;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v23 != v8)
    {
      v13 = 0x6C61727475656E2ELL;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
      if (v8)
      {
        if (v8 == 1)
        {
          v14 = 0x7469726F7661662ELL;
        }

        else
        {
          v14 = 0x656B696C7369642ELL;
        }

        if (v8 == 1)
        {
          v15 = 0xEA00000000006465;
        }

        else
        {
          v15 = 0xE900000000000064;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        v14 = 0x6C61727475656E2ELL;
      }

      MEMORY[0x1DA6EAC70](v14, v15);

      v16 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v16);
      *&v21[-1] = v4;
      *(&v21[-1] + 1) = v11;
      v17 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v17);
      *&v21[-1] = v4;
      *(&v21[-1] + 1) = v11;
      swift_getKeyPath();
      sub_1D560C8F8();

      if (LOBYTE(v21[0]))
      {
        if (LOBYTE(v21[0]) == 1)
        {
          v13 = 0x7469726F7661662ELL;
          v18 = 0xEA00000000006465;
        }

        else
        {
          v13 = 0x656B696C7369642ELL;
          v18 = 0xE900000000000064;
        }
      }

      else
      {
        v18 = 0xE800000000000000;
      }

      MEMORY[0x1DA6EAC70](v13, v18);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v19 = 0xD000000000000026;
      }

      else
      {
        v19 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v20 = "wnloadButtonsDidChange";
      }

      else
      {
        v20 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v19, v20 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v23, v24);

      sub_1D556C6A4();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D5588DBC(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_opt_self() isMainThread];
  if (v7)
  {
    if (a1)
    {
      if (a1 >= 4)
      {
        LOBYTE(v8) = 0;
      }

      else
      {
        LODWORD(v8) = 0x2010000u >> (8 * a1);
      }
    }

    else
    {
      v9 = *(*v2 + 144);
      swift_beginAccess();
      sub_1D55AC65C(v2 + v9, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC508, &unk_1D5633D40);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v22 = 0;
        memset(v21, 0, sizeof(v21));
        sub_1D4E50004(v21, &qword_1EC7EC510, &unk_1D5621040);
        return;
      }

      sub_1D4E48324(v21, &v23);
      v8 = v25;
      v10 = v26;
      __swift_project_boxed_opaque_existential_1(&v23, v25);
      (*(v10 + 16))(v21, v8, v10);
      LOBYTE(v8) = v21[0];
      v7 = __swift_destroy_boxed_opaque_existential_1(&v23);
    }

    MEMORY[0x1EEE9AC00](v7);
    *&v21[-1] = v4;
    v11 = sub_1D55ACD00(&qword_1EC7F1078, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    *(&v21[-1] + 1) = v11;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v21[-1] = v4;
    *(&v21[-1] + 1) = v11;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v23 != v8)
    {
      v13 = 0x6C61727475656E2ELL;
      v23 = 0;
      v24 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
      if (v8)
      {
        if (v8 == 1)
        {
          v14 = 0x7469726F7661662ELL;
        }

        else
        {
          v14 = 0x656B696C7369642ELL;
        }

        if (v8 == 1)
        {
          v15 = 0xEA00000000006465;
        }

        else
        {
          v15 = 0xE900000000000064;
        }
      }

      else
      {
        v15 = 0xE800000000000000;
        v14 = 0x6C61727475656E2ELL;
      }

      MEMORY[0x1DA6EAC70](v14, v15);

      v16 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v16);
      *&v21[-1] = v4;
      *(&v21[-1] + 1) = v11;
      v17 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v17);
      *&v21[-1] = v4;
      *(&v21[-1] + 1) = v11;
      swift_getKeyPath();
      sub_1D560C8F8();

      if (LOBYTE(v21[0]))
      {
        if (LOBYTE(v21[0]) == 1)
        {
          v13 = 0x7469726F7661662ELL;
          v18 = 0xEA00000000006465;
        }

        else
        {
          v13 = 0x656B696C7369642ELL;
          v18 = 0xE900000000000064;
        }
      }

      else
      {
        v18 = 0xE800000000000000;
      }

      MEMORY[0x1DA6EAC70](v13, v18);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v19 = 0xD000000000000026;
      }

      else
      {
        v19 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v20 = "wnloadButtonsDidChange";
      }

      else
      {
        v20 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v19, v20 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v23, v24);

      sub_1D556C6A4();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D5589304(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1D56128E8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = [objc_opt_self() isMainThread];
  if (!v11)
  {
    __break(1u);
    goto LABEL_35;
  }

  if (a1)
  {
    if (a1 < 4)
    {
      LODWORD(v4) = 0x2010000u >> (8 * a1);
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = *(*v1 + 144);
  swift_beginAccess();
  v13 = sub_1D5613EF8();
  v28 = v13;
  v29 = &protocol witness table for Artist;
  v14 = __swift_allocate_boxed_opaque_existential_0(&v26);
  (*(*(v13 - 8) + 16))(v14, v2 + v12, v13);
  __swift_project_boxed_opaque_existential_1(&v26, v28);
  sub_1D5613DB8();
  (*(v5 + 16))(v8, v10, v4);
  v15 = (*(v5 + 88))(v8, v4);
  if (v15 == *MEMORY[0x1E69765E8])
  {
    (*(v5 + 8))(v10, v4);
    v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
LABEL_7:
    LOBYTE(v4) = 0;
    goto LABEL_8;
  }

  if (v15 == *MEMORY[0x1E69765F8])
  {
    (*(v5 + 8))(v10, v4);
    v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
    LOBYTE(v4) = 1;
    goto LABEL_8;
  }

  if (v15 != *MEMORY[0x1E69765F0])
  {
LABEL_35:
    sub_1D5615E08();
    __break(1u);
    return;
  }

  (*(v5 + 8))(v10, v4);
  v11 = __swift_destroy_boxed_opaque_existential_1(&v26);
  LOBYTE(v4) = 2;
LABEL_8:
  MEMORY[0x1EEE9AC00](v11);
  sub_1D5613EF8();
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v26 != v4)
  {
    v17 = 0x6C61727475656E2ELL;
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000018, 0x80000001D567FD50);
    if (v4)
    {
      if (v4 == 1)
      {
        v18 = 0x7469726F7661662ELL;
      }

      else
      {
        v18 = 0x656B696C7369642ELL;
      }

      if (v4 == 1)
      {
        v19 = 0xEA00000000006465;
      }

      else
      {
        v19 = 0xE900000000000064;
      }
    }

    else
    {
      v19 = 0xE800000000000000;
      v18 = 0x6C61727475656E2ELL;
    }

    MEMORY[0x1DA6EAC70](v18, v19);

    v20 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v20);
    v21 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v21);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v30)
    {
      if (v30 == 1)
      {
        v17 = 0x7469726F7661662ELL;
        v22 = 0xEA00000000006465;
      }

      else
      {
        v17 = 0x656B696C7369642ELL;
        v22 = 0xE900000000000064;
      }
    }

    else
    {
      v22 = 0xE800000000000000;
    }

    MEMORY[0x1DA6EAC70](v17, v22);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v23 = 0xD000000000000026;
    }

    else
    {
      v23 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v24 = "wnloadButtonsDidChange";
    }

    else
    {
      v24 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v23, v24 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v26, v27);

    sub_1D556C71C();
  }
}

void sub_1D5589928(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() isMainThread];
  if (v4)
  {
    if (a1)
    {
      v5 = a1 == 1;
    }

    else
    {
      v6 = *(*v1 + 136);
      swift_beginAccess();
      v7 = sub_1D560EEA8();
      v30 = v7;
      v31 = &protocol witness table for MusicVideo;
      v8 = __swift_allocate_boxed_opaque_existential_0(&v27);
      (*(*(v7 - 8) + 16))(v8, v2 + v6, v7);
      v9 = __swift_project_boxed_opaque_existential_1(&v27, v30);
      sub_1D4E5A1CC();
      sub_1D5329168();

      sub_1D55950B8(v9, MEMORY[0x1E69754E8], &protocol witness table for MusicVideo, sub_1D55ACE98, v10, v11, v12, v13, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);

      v5 = HIBYTE(v32);
      v4 = __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    MEMORY[0x1EEE9AC00](v4);
    sub_1D560EEA8();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v5 != v27)
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
      if (v5)
      {
        v15 = 0x64656E6E69702ELL;
      }

      else
      {
        v15 = 0x6E6E6950746F6E2ELL;
      }

      if (v5)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v15, v16);

      v17 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v17);
      v18 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v18);
      swift_getKeyPath();
      sub_1D560C8F8();

      if (HIBYTE(v32))
      {
        v19 = 0x64656E6E69702ELL;
      }

      else
      {
        v19 = 0x6E6E6950746F6E2ELL;
      }

      if (HIBYTE(v32))
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v19, v20);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v21 = 0xD000000000000026;
      }

      else
      {
        v21 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v22 = "wnloadButtonsDidChange";
      }

      else
      {
        v22 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v21, v22 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v27, v28);

      sub_1D556C830();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D5589D84(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() isMainThread];
  if (v4)
  {
    if (a1)
    {
      v5 = a1 == 1;
    }

    else
    {
      v6 = *(*v1 + 136);
      swift_beginAccess();
      v7 = sub_1D5613838();
      v30 = v7;
      v31 = &protocol witness table for Song;
      v8 = __swift_allocate_boxed_opaque_existential_0(&v27);
      (*(*(v7 - 8) + 16))(v8, v2 + v6, v7);
      v9 = __swift_project_boxed_opaque_existential_1(&v27, v30);
      sub_1D4E5A1CC();
      sub_1D5329168();

      sub_1D55950B8(v9, MEMORY[0x1E6976BE8], &protocol witness table for Song, sub_1D55ACE98, v10, v11, v12, v13, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);

      v5 = HIBYTE(v32);
      v4 = __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    MEMORY[0x1EEE9AC00](v4);
    sub_1D5613838();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v5 != v27)
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
      if (v5)
      {
        v15 = 0x64656E6E69702ELL;
      }

      else
      {
        v15 = 0x6E6E6950746F6E2ELL;
      }

      if (v5)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v15, v16);

      v17 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v17);
      v18 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v18);
      swift_getKeyPath();
      sub_1D560C8F8();

      if (HIBYTE(v32))
      {
        v19 = 0x64656E6E69702ELL;
      }

      else
      {
        v19 = 0x6E6E6950746F6E2ELL;
      }

      if (HIBYTE(v32))
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v19, v20);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v21 = 0xD000000000000026;
      }

      else
      {
        v21 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v22 = "wnloadButtonsDidChange";
      }

      else
      {
        v22 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v21, v22 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v27, v28);

      sub_1D556C830();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D558A1E0(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() isMainThread];
  if (v4)
  {
    if (a1)
    {
      v5 = a1 == 1;
    }

    else
    {
      v6 = *(*v1 + 136);
      swift_beginAccess();
      v7 = sub_1D5613AF8();
      v30 = v7;
      v31 = &protocol witness table for Album;
      v8 = __swift_allocate_boxed_opaque_existential_0(&v27);
      (*(*(v7 - 8) + 16))(v8, v2 + v6, v7);
      v9 = __swift_project_boxed_opaque_existential_1(&v27, v30);
      sub_1D4E5A1CC();
      sub_1D5329168();

      sub_1D55950B8(v9, MEMORY[0x1E6976D28], &protocol witness table for Album, sub_1D55ACE98, v10, v11, v12, v13, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);

      v5 = HIBYTE(v32);
      v4 = __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    MEMORY[0x1EEE9AC00](v4);
    sub_1D5613AF8();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v5 != v27)
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
      if (v5)
      {
        v15 = 0x64656E6E69702ELL;
      }

      else
      {
        v15 = 0x6E6E6950746F6E2ELL;
      }

      if (v5)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v15, v16);

      v17 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v17);
      v18 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v18);
      swift_getKeyPath();
      sub_1D560C8F8();

      if (HIBYTE(v32))
      {
        v19 = 0x64656E6E69702ELL;
      }

      else
      {
        v19 = 0x6E6E6950746F6E2ELL;
      }

      if (HIBYTE(v32))
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v19, v20);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v21 = 0xD000000000000026;
      }

      else
      {
        v21 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v22 = "wnloadButtonsDidChange";
      }

      else
      {
        v22 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v21, v22 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v27, v28);

      sub_1D556C830();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D558A63C(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() isMainThread];
  if (v4)
  {
    if (a1)
    {
      v5 = a1 == 1;
    }

    else
    {
      v6 = *(*v1 + 136);
      swift_beginAccess();
      v7 = sub_1D5613D28();
      v20 = v7;
      v21 = &protocol witness table for Track;
      v8 = __swift_allocate_boxed_opaque_existential_0(&v18);
      (*(*(v7 - 8) + 16))(v8, v2 + v6, v7);
      __swift_project_boxed_opaque_existential_1(&v18, v20);
      sub_1D4E5A1CC();
      sub_1D5329168();

      sub_1D5594FEC(&v22);

      v5 = v22;
      v4 = __swift_destroy_boxed_opaque_existential_1(&v18);
    }

    MEMORY[0x1EEE9AC00](v4);
    sub_1D5613D28();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v5 != v18)
    {
      v18 = 0;
      v19 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
      if (v5)
      {
        v10 = 0x64656E6E69702ELL;
      }

      else
      {
        v10 = 0x6E6E6950746F6E2ELL;
      }

      if (v5)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v10, v11);

      v12 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v12);
      v13 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v13);
      swift_getKeyPath();
      sub_1D560C8F8();

      if (v22)
      {
        v14 = 0x64656E6E69702ELL;
      }

      else
      {
        v14 = 0x6E6E6950746F6E2ELL;
      }

      if (v22)
      {
        v15 = 0xE700000000000000;
      }

      else
      {
        v15 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v14, v15);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v16 = 0xD000000000000026;
      }

      else
      {
        v16 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v17 = "wnloadButtonsDidChange";
      }

      else
      {
        v17 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v16, v17 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v18, v19);

      sub_1D556C830();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D558AA6C(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() isMainThread];
  if (v4)
  {
    if (a1)
    {
      v5 = a1 == 1;
    }

    else
    {
      v6 = *(*v1 + 136);
      swift_beginAccess();
      v7 = sub_1D5614898();
      v30 = v7;
      v31 = &protocol witness table for Playlist;
      v8 = __swift_allocate_boxed_opaque_existential_0(&v27);
      (*(*(v7 - 8) + 16))(v8, v2 + v6, v7);
      v9 = __swift_project_boxed_opaque_existential_1(&v27, v30);
      sub_1D4E5A1CC();
      sub_1D5329168();

      sub_1D55950B8(v9, MEMORY[0x1E69773E0], &protocol witness table for Playlist, sub_1D55ACE98, v10, v11, v12, v13, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);

      v5 = HIBYTE(v32);
      v4 = __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    MEMORY[0x1EEE9AC00](v4);
    sub_1D5614898();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v5 != v27)
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
      if (v5)
      {
        v15 = 0x64656E6E69702ELL;
      }

      else
      {
        v15 = 0x6E6E6950746F6E2ELL;
      }

      if (v5)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v15, v16);

      v17 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v17);
      v18 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v18);
      swift_getKeyPath();
      sub_1D560C8F8();

      if (HIBYTE(v32))
      {
        v19 = 0x64656E6E69702ELL;
      }

      else
      {
        v19 = 0x6E6E6950746F6E2ELL;
      }

      if (HIBYTE(v32))
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v19, v20);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v21 = 0xD000000000000026;
      }

      else
      {
        v21 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v22 = "wnloadButtonsDidChange";
      }

      else
      {
        v22 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v21, v22 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v27, v28);

      sub_1D556C830();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D558AEC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() isMainThread];
  if (!v9)
  {
    __break(1u);
    return;
  }

  if (a1)
  {
    v10 = a1 == 1;
  }

  else
  {
    v11 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      sub_1D4E50004(v23, &qword_1EC7EC500, &unk_1D5621030);
      return;
    }

    sub_1D4E48324(v23, &v25);
    __swift_project_boxed_opaque_existential_1(&v25, v27);
    sub_1D4E5A1CC();
    sub_1D5329168();

    sub_1D5200C94(v23);

    v10 = LOBYTE(v23[0]);
    v9 = __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  MEMORY[0x1EEE9AC00](v9);
  v22[-2] = v6;
  v12 = sub_1D55ACD00(&qword_1EC7F23B0, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  v22[-1] = v12;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v22[-2] = v6;
  v22[-1] = v12;
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v10 != v25)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
    v22[1] = a2;
    if (v10)
    {
      v14 = 0x64656E6E69702ELL;
    }

    else
    {
      v14 = 0x6E6E6950746F6E2ELL;
    }

    if (v10)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v14, v15);

    v16 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v16);
    v22[-2] = v6;
    v22[-1] = v12;
    v17 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v17);
    v22[-2] = v6;
    v22[-1] = v12;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (LOBYTE(v23[0]))
    {
      v18 = 0x64656E6E69702ELL;
    }

    else
    {
      v18 = 0x6E6E6950746F6E2ELL;
    }

    if (LOBYTE(v23[0]))
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v18, v19);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v20 = 0xD000000000000026;
    }

    else
    {
      v20 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v21 = "wnloadButtonsDidChange";
    }

    else
    {
      v21 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v20, v21 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v25, v26);

    sub_1D556C7A8();
  }
}

void sub_1D558B3D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() isMainThread];
  if (!v9)
  {
    __break(1u);
    return;
  }

  if (a1)
  {
    v10 = a1 == 1;
  }

  else
  {
    v11 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      sub_1D4E50004(v23, &qword_1EC7EC500, &unk_1D5621030);
      return;
    }

    sub_1D4E48324(v23, &v25);
    __swift_project_boxed_opaque_existential_1(&v25, v27);
    sub_1D4E5A1CC();
    sub_1D5329168();

    sub_1D5200C94(v23);

    v10 = LOBYTE(v23[0]);
    v9 = __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  MEMORY[0x1EEE9AC00](v9);
  v22[-2] = v6;
  v12 = sub_1D55ACD00(&qword_1EC7F08D0, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  v22[-1] = v12;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v22[-2] = v6;
  v22[-1] = v12;
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v10 != v25)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
    v22[1] = a2;
    if (v10)
    {
      v14 = 0x64656E6E69702ELL;
    }

    else
    {
      v14 = 0x6E6E6950746F6E2ELL;
    }

    if (v10)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v14, v15);

    v16 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v16);
    v22[-2] = v6;
    v22[-1] = v12;
    v17 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v17);
    v22[-2] = v6;
    v22[-1] = v12;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (LOBYTE(v23[0]))
    {
      v18 = 0x64656E6E69702ELL;
    }

    else
    {
      v18 = 0x6E6E6950746F6E2ELL;
    }

    if (LOBYTE(v23[0]))
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v18, v19);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v20 = 0xD000000000000026;
    }

    else
    {
      v20 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v21 = "wnloadButtonsDidChange";
    }

    else
    {
      v21 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v20, v21 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v25, v26);

    sub_1D556C7A8();
  }
}

void sub_1D558B8E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() isMainThread];
  if (!v9)
  {
    __break(1u);
    return;
  }

  if (a1)
  {
    v10 = a1 == 1;
  }

  else
  {
    v11 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      sub_1D4E50004(v23, &qword_1EC7EC500, &unk_1D5621030);
      return;
    }

    sub_1D4E48324(v23, &v25);
    __swift_project_boxed_opaque_existential_1(&v25, v27);
    sub_1D4E5A1CC();
    sub_1D5329168();

    sub_1D5200C94(v23);

    v10 = LOBYTE(v23[0]);
    v9 = __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  MEMORY[0x1EEE9AC00](v9);
  v22[-2] = v6;
  v12 = sub_1D55ACD00(qword_1EC7EE608, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v22[-1] = v12;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v22[-2] = v6;
  v22[-1] = v12;
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v10 != v25)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
    v22[1] = a2;
    if (v10)
    {
      v14 = 0x64656E6E69702ELL;
    }

    else
    {
      v14 = 0x6E6E6950746F6E2ELL;
    }

    if (v10)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v14, v15);

    v16 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v16);
    v22[-2] = v6;
    v22[-1] = v12;
    v17 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v17);
    v22[-2] = v6;
    v22[-1] = v12;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (LOBYTE(v23[0]))
    {
      v18 = 0x64656E6E69702ELL;
    }

    else
    {
      v18 = 0x6E6E6950746F6E2ELL;
    }

    if (LOBYTE(v23[0]))
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v18, v19);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v20 = 0xD000000000000026;
    }

    else
    {
      v20 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v21 = "wnloadButtonsDidChange";
    }

    else
    {
      v21 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v20, v21 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v25, v26);

    sub_1D556C7A8();
  }
}

void sub_1D558BDF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() isMainThread];
  if (!v9)
  {
    __break(1u);
    return;
  }

  if (a1)
  {
    v10 = a1 == 1;
  }

  else
  {
    v11 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      sub_1D4E50004(v23, &qword_1EC7EC500, &unk_1D5621030);
      return;
    }

    sub_1D4E48324(v23, &v25);
    __swift_project_boxed_opaque_existential_1(&v25, v27);
    sub_1D4E5A1CC();
    sub_1D5329168();

    sub_1D5200C94(v23);

    v10 = LOBYTE(v23[0]);
    v9 = __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  MEMORY[0x1EEE9AC00](v9);
  v22[-2] = v6;
  v12 = sub_1D55ACD00(&qword_1EC7F2230, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v22[-1] = v12;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v22[-2] = v6;
  v22[-1] = v12;
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v10 != v25)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
    v22[1] = a2;
    if (v10)
    {
      v14 = 0x64656E6E69702ELL;
    }

    else
    {
      v14 = 0x6E6E6950746F6E2ELL;
    }

    if (v10)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v14, v15);

    v16 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v16);
    v22[-2] = v6;
    v22[-1] = v12;
    v17 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v17);
    v22[-2] = v6;
    v22[-1] = v12;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (LOBYTE(v23[0]))
    {
      v18 = 0x64656E6E69702ELL;
    }

    else
    {
      v18 = 0x6E6E6950746F6E2ELL;
    }

    if (LOBYTE(v23[0]))
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v18, v19);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v20 = 0xD000000000000026;
    }

    else
    {
      v20 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v21 = "wnloadButtonsDidChange";
    }

    else
    {
      v21 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v20, v21 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v25, v26);

    sub_1D556C7A8();
  }
}

void sub_1D558C308(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() isMainThread];
  if (!v9)
  {
    __break(1u);
    return;
  }

  if (a1)
  {
    v10 = a1 == 1;
  }

  else
  {
    v11 = *(*v3 + 136);
    swift_beginAccess();
    sub_1D55AC65C(v3 + v11, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      sub_1D4E50004(v23, &qword_1EC7EC500, &unk_1D5621030);
      return;
    }

    sub_1D4E48324(v23, &v25);
    __swift_project_boxed_opaque_existential_1(&v25, v27);
    sub_1D4E5A1CC();
    sub_1D5329168();

    sub_1D5200C94(v23);

    v10 = LOBYTE(v23[0]);
    v9 = __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  MEMORY[0x1EEE9AC00](v9);
  v22[-2] = v6;
  v12 = sub_1D55ACD00(&qword_1EC7F1078, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v22[-1] = v12;
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v22[-2] = v6;
  v22[-1] = v12;
  swift_getKeyPath();
  sub_1D560C8F8();

  if (v10 != v25)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
    v22[1] = a2;
    if (v10)
    {
      v14 = 0x64656E6E69702ELL;
    }

    else
    {
      v14 = 0x6E6E6950746F6E2ELL;
    }

    if (v10)
    {
      v15 = 0xE700000000000000;
    }

    else
    {
      v15 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v14, v15);

    v16 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
    MEMORY[0x1EEE9AC00](v16);
    v22[-2] = v6;
    v22[-1] = v12;
    v17 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v17);
    v22[-2] = v6;
    v22[-1] = v12;
    swift_getKeyPath();
    sub_1D560C8F8();

    if (LOBYTE(v23[0]))
    {
      v18 = 0x64656E6E69702ELL;
    }

    else
    {
      v18 = 0x6E6E6950746F6E2ELL;
    }

    if (LOBYTE(v23[0]))
    {
      v19 = 0xE700000000000000;
    }

    else
    {
      v19 = 0xEA00000000006465;
    }

    MEMORY[0x1DA6EAC70](v18, v19);

    MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
    if (a1)
    {
      v20 = 0xD000000000000026;
    }

    else
    {
      v20 = 0xD00000000000001ALL;
    }

    if (a1)
    {
      v21 = "wnloadButtonsDidChange";
    }

    else
    {
      v21 = "ocalStatus=qQd}8";
    }

    MEMORY[0x1DA6EAC70](v20, v21 | 0x8000000000000000);

    MEMORY[0x1DA6EAC70](v25, v26);

    sub_1D556C7A8();
  }
}

void sub_1D558C818(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() isMainThread];
  if (v4)
  {
    if (a1)
    {
      v5 = a1 == 1;
    }

    else
    {
      v6 = *(*v1 + 136);
      swift_beginAccess();
      v7 = sub_1D5613EF8();
      v30 = v7;
      v31 = &protocol witness table for Artist;
      v8 = __swift_allocate_boxed_opaque_existential_0(&v27);
      (*(*(v7 - 8) + 16))(v8, v2 + v6, v7);
      v9 = __swift_project_boxed_opaque_existential_1(&v27, v30);
      sub_1D4E5A1CC();
      sub_1D5329168();

      sub_1D55950B8(v9, MEMORY[0x1E6976F28], &protocol witness table for Artist, sub_1D55ACE98, v10, v11, v12, v13, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);

      v5 = HIBYTE(v32);
      v4 = __swift_destroy_boxed_opaque_existential_1(&v27);
    }

    MEMORY[0x1EEE9AC00](v4);
    sub_1D5613EF8();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    swift_getKeyPath();
    sub_1D560C8F8();

    if (v5 != v27)
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      sub_1D5615B68();
      MEMORY[0x1DA6EAC70](0x1000000000000013, 0x80000001D567FD10);
      if (v5)
      {
        v15 = 0x64656E6E69702ELL;
      }

      else
      {
        v15 = 0x6E6E6950746F6E2ELL;
      }

      if (v5)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v15, v16);

      v17 = MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567FD30);
      MEMORY[0x1EEE9AC00](v17);
      v18 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v18);
      swift_getKeyPath();
      sub_1D560C8F8();

      if (HIBYTE(v32))
      {
        v19 = 0x64656E6E69702ELL;
      }

      else
      {
        v19 = 0x6E6E6950746F6E2ELL;
      }

      if (HIBYTE(v32))
      {
        v20 = 0xE700000000000000;
      }

      else
      {
        v20 = 0xEA00000000006465;
      }

      MEMORY[0x1DA6EAC70](v19, v20);

      MEMORY[0x1DA6EAC70](0x6F73206D6F726620, 0xEE00203A65637275);
      if (a1)
      {
        v21 = 0xD000000000000026;
      }

      else
      {
        v21 = 0xD00000000000001ALL;
      }

      if (a1)
      {
        v22 = "wnloadButtonsDidChange";
      }

      else
      {
        v22 = "ocalStatus=qQd}8";
      }

      MEMORY[0x1DA6EAC70](v21, v22 | 0x8000000000000000);

      MEMORY[0x1DA6EAC70](v27, v28);

      sub_1D556C830();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D558CC74(char a1)
{
  v2 = v1;
  v4 = sub_1D560EEA8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *&v1[*(*v1 + 152)];
  if (v9)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    v10 = *(v8 + 144);
    swift_beginAccess();
    v11 = *(v5 + 16);
    v11(v7, &v2[v10], v4);
    v33 = v4;
    v34 = &protocol witness table for MusicVideo;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    v11(boxed_opaque_existential_0, v7, v4);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v13 = v9;
    sub_1D5590088();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v32);
    (*(v5 + 8))(v7, v4);
    sub_1D558568C(v15, &v35, MEMORY[0x1E69754E8], &protocol witness table for MusicVideo);

    v16 = *&v2[*(*v2 + 184)];
    sub_1D55859E8([v16 transientFavoriteStateForModelObject_]);
    sub_1D5589928([v16 transientPinStateForModelObject_]);
    v18 = v35;
    v17 = v36;
    v19 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v19 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      if (qword_1EDD54488 != -1)
      {
        swift_once();
      }

      v20 = sub_1D560C758();
      __swift_project_value_buffer(v20, qword_1EDD76AA8);

      v21 = sub_1D560C738();
      v22 = sub_1D56156E8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v32[0] = v24;
        *v23 = 136446722;
        v25 = sub_1D4F636B4();
        v27 = sub_1D4E6835C(v25, v26, v32);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2082;
        v28 = sub_1D4E6835C(v18, v17, v32);

        *(v23 + 14) = v28;
        *(v23 + 22) = 2082;
        if (a1)
        {
          if (a1 == 1)
          {
            v29 = "nge Notifications";
            v30 = 0xD000000000000036;
          }

          else
          {
            v29 = "ntrollerObserver";
            v30 = 0xD000000000000021;
          }
        }

        else
        {
          v30 = 0xD000000000000026;
          v29 = "wnloadButtonsDidChange";
        }

        v31 = sub_1D4E6835C(v30, v29 | 0x8000000000000000, v32);

        *(v23 + 24) = v31;
        _os_log_impl(&dword_1D4E3F000, v21, v22, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v24, -1, -1);
        MEMORY[0x1DA6ED200](v23, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D558D0E8(char a1)
{
  v2 = v1;
  v4 = sub_1D5613838();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *&v1[*(*v1 + 152)];
  if (v9)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    v10 = *(v8 + 144);
    swift_beginAccess();
    v11 = *(v5 + 16);
    v11(v7, &v2[v10], v4);
    v33 = v4;
    v34 = &protocol witness table for Song;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    v11(boxed_opaque_existential_0, v7, v4);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v13 = v9;
    sub_1D5590088();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v32);
    (*(v5 + 8))(v7, v4);
    sub_1D558568C(v15, &v35, MEMORY[0x1E6976BE8], &protocol witness table for Song);

    v16 = *&v2[*(*v2 + 184)];
    sub_1D558600C([v16 transientFavoriteStateForModelObject_]);
    sub_1D5589D84([v16 transientPinStateForModelObject_]);
    v18 = v35;
    v17 = v36;
    v19 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v19 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      if (qword_1EDD54488 != -1)
      {
        swift_once();
      }

      v20 = sub_1D560C758();
      __swift_project_value_buffer(v20, qword_1EDD76AA8);

      v21 = sub_1D560C738();
      v22 = sub_1D56156E8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v32[0] = v24;
        *v23 = 136446722;
        v25 = sub_1D4F636B4();
        v27 = sub_1D4E6835C(v25, v26, v32);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2082;
        v28 = sub_1D4E6835C(v18, v17, v32);

        *(v23 + 14) = v28;
        *(v23 + 22) = 2082;
        if (a1)
        {
          if (a1 == 1)
          {
            v29 = "nge Notifications";
            v30 = 0xD000000000000036;
          }

          else
          {
            v29 = "ntrollerObserver";
            v30 = 0xD000000000000021;
          }
        }

        else
        {
          v30 = 0xD000000000000026;
          v29 = "wnloadButtonsDidChange";
        }

        v31 = sub_1D4E6835C(v30, v29 | 0x8000000000000000, v32);

        *(v23 + 24) = v31;
        _os_log_impl(&dword_1D4E3F000, v21, v22, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v24, -1, -1);
        MEMORY[0x1DA6ED200](v23, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D558D55C(char a1)
{
  v2 = v1;
  v4 = sub_1D5613AF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *&v1[*(*v1 + 152)];
  if (v9)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    v10 = *(v8 + 144);
    swift_beginAccess();
    v11 = *(v5 + 16);
    v11(v7, &v2[v10], v4);
    v33 = v4;
    v34 = &protocol witness table for Album;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    v11(boxed_opaque_existential_0, v7, v4);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v13 = v9;
    sub_1D5590088();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v32);
    (*(v5 + 8))(v7, v4);
    sub_1D558568C(v15, &v35, MEMORY[0x1E6976D28], &protocol witness table for Album);

    v16 = *&v2[*(*v2 + 184)];
    sub_1D5586630([v16 transientFavoriteStateForModelObject_]);
    sub_1D558A1E0([v16 transientPinStateForModelObject_]);
    v18 = v35;
    v17 = v36;
    v19 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v19 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      if (qword_1EDD54488 != -1)
      {
        swift_once();
      }

      v20 = sub_1D560C758();
      __swift_project_value_buffer(v20, qword_1EDD76AA8);

      v21 = sub_1D560C738();
      v22 = sub_1D56156E8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v32[0] = v24;
        *v23 = 136446722;
        v25 = sub_1D4F636B4();
        v27 = sub_1D4E6835C(v25, v26, v32);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2082;
        v28 = sub_1D4E6835C(v18, v17, v32);

        *(v23 + 14) = v28;
        *(v23 + 22) = 2082;
        if (a1)
        {
          if (a1 == 1)
          {
            v29 = "nge Notifications";
            v30 = 0xD000000000000036;
          }

          else
          {
            v29 = "ntrollerObserver";
            v30 = 0xD000000000000021;
          }
        }

        else
        {
          v30 = 0xD000000000000026;
          v29 = "wnloadButtonsDidChange";
        }

        v31 = sub_1D4E6835C(v30, v29 | 0x8000000000000000, v32);

        *(v23 + 24) = v31;
        _os_log_impl(&dword_1D4E3F000, v21, v22, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v24, -1, -1);
        MEMORY[0x1DA6ED200](v23, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D558D9D0(char a1)
{
  v2 = v1;
  v4 = sub_1D5613D28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *&v1[*(*v1 + 152)];
  if (v9)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    v10 = *(v8 + 144);
    swift_beginAccess();
    v11 = *(v5 + 16);
    v11(v7, &v2[v10], v4);
    v33 = v4;
    v34 = &protocol witness table for Track;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    v11(boxed_opaque_existential_0, v7, v4);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v13 = v9;
    sub_1D5590088();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v32);
    (*(v5 + 8))(v7, v4);
    sub_1D558568C(v15, &v35, MEMORY[0x1E6976E60], &protocol witness table for Track);

    v16 = *&v2[*(*v2 + 184)];
    sub_1D5586C54([v16 transientFavoriteStateForModelObject_]);
    sub_1D558A63C([v16 transientPinStateForModelObject_]);
    v18 = v35;
    v17 = v36;
    v19 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v19 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      if (qword_1EDD54488 != -1)
      {
        swift_once();
      }

      v20 = sub_1D560C758();
      __swift_project_value_buffer(v20, qword_1EDD76AA8);

      v21 = sub_1D560C738();
      v22 = sub_1D56156E8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v32[0] = v24;
        *v23 = 136446722;
        v25 = sub_1D4F636B4();
        v27 = sub_1D4E6835C(v25, v26, v32);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2082;
        v28 = sub_1D4E6835C(v18, v17, v32);

        *(v23 + 14) = v28;
        *(v23 + 22) = 2082;
        if (a1)
        {
          if (a1 == 1)
          {
            v29 = "nge Notifications";
            v30 = 0xD000000000000036;
          }

          else
          {
            v29 = "ntrollerObserver";
            v30 = 0xD000000000000021;
          }
        }

        else
        {
          v30 = 0xD000000000000026;
          v29 = "wnloadButtonsDidChange";
        }

        v31 = sub_1D4E6835C(v30, v29 | 0x8000000000000000, v32);

        *(v23 + 24) = v31;
        _os_log_impl(&dword_1D4E3F000, v21, v22, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v24, -1, -1);
        MEMORY[0x1DA6ED200](v23, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D558DE44(char a1)
{
  v2 = v1;
  v4 = sub_1D5614898();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *&v1[*(*v1 + 152)];
  if (v9)
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    v10 = *(v8 + 144);
    swift_beginAccess();
    v11 = *(v5 + 16);
    v11(v7, &v2[v10], v4);
    v33 = v4;
    v34 = &protocol witness table for Playlist;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
    v11(boxed_opaque_existential_0, v7, v4);
    __swift_project_boxed_opaque_existential_1(v32, v33);
    v13 = v9;
    sub_1D5590088();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v32);
    (*(v5 + 8))(v7, v4);
    sub_1D558568C(v15, &v35, MEMORY[0x1E69773E0], &protocol witness table for Playlist);

    v16 = *&v2[*(*v2 + 184)];
    sub_1D5587278([v16 transientFavoriteStateForModelObject_]);
    sub_1D558AA6C([v16 transientPinStateForModelObject_]);
    v18 = v35;
    v17 = v36;
    v19 = HIBYTE(v36) & 0xF;
    if ((v36 & 0x2000000000000000) == 0)
    {
      v19 = v35 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      if (qword_1EDD54488 != -1)
      {
        swift_once();
      }

      v20 = sub_1D560C758();
      __swift_project_value_buffer(v20, qword_1EDD76AA8);

      v21 = sub_1D560C738();
      v22 = sub_1D56156E8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v32[0] = v24;
        *v23 = 136446722;
        v25 = sub_1D4F636B4();
        v27 = sub_1D4E6835C(v25, v26, v32);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2082;
        v28 = sub_1D4E6835C(v18, v17, v32);

        *(v23 + 14) = v28;
        *(v23 + 22) = 2082;
        if (a1)
        {
          if (a1 == 1)
          {
            v29 = "nge Notifications";
            v30 = 0xD000000000000036;
          }

          else
          {
            v29 = "ntrollerObserver";
            v30 = 0xD000000000000021;
          }
        }

        else
        {
          v30 = 0xD000000000000026;
          v29 = "wnloadButtonsDidChange";
        }

        v31 = sub_1D4E6835C(v30, v29 | 0x8000000000000000, v32);

        *(v23 + 24) = v31;
        _os_log_impl(&dword_1D4E3F000, v21, v22, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v24, -1, -1);
        MEMORY[0x1DA6ED200](v23, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D558E2B8(int a1)
{
  v3 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + *(*v1 + 152));
  if (v7)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    v8 = *(v6 + 144);
    swift_beginAccess();
    sub_1D55AC65C(v1 + v8, v5);
    v32 = v3;
    v33 = &protocol witness table for UploadedVideo;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    sub_1D55AC65C(v5, boxed_opaque_existential_0);
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v10 = v7;
    sub_1D5590918();
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_1D55AC6B4();
    sub_1D558582C();

    v11 = *(v1 + *(*v1 + 184));
    sub_1D558789C([v11 transientFavoriteStateForModelObject_]);
    sub_1D558AEC8([v11 transientPinStateForModelObject_], &v34);
    v13 = v34;
    v12 = v35;
    v14 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v14 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {

LABEL_18:

      return;
    }

    if (qword_1EDD54488 != -1)
    {
      swift_once();
    }

    v15 = sub_1D560C758();
    __swift_project_value_buffer(v15, qword_1EDD76AA8);

    v16 = sub_1D560C738();
    v17 = sub_1D56156E8();

    if (!os_log_type_enabled(v16, v17))
    {

LABEL_17:

      goto LABEL_18;
    }

    v18 = 0xD000000000000021;
    v19 = swift_slowAlloc();
    v30 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31[0] = v21;
    *v20 = 136446722;
    v22 = sub_1D4F636B4();
    v24 = sub_1D4E6835C(v22, v23, v31);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v25 = sub_1D4E6835C(v13, v12, v31);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2082;
    if (v30)
    {
      if (v30 == 1)
      {
        v26 = "nge Notifications";
        v18 = 0xD000000000000036;
LABEL_16:
        v28 = sub_1D4E6835C(v18, v26 | 0x8000000000000000, v31);

        *(v20 + 24) = v28;
        _os_log_impl(&dword_1D4E3F000, v16, v17, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v21, -1, -1);
        MEMORY[0x1DA6ED200](v20, -1, -1);
        goto LABEL_17;
      }

      v27 = "MediaLibrary Change Notifications";
    }

    else
    {
      v18 = 0xD000000000000026;
      v27 = "MPModelLibraryTransientStateController";
    }

    v26 = (v27 - 32);
    goto LABEL_16;
  }
}

void sub_1D558E6FC(int a1)
{
  v3 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + *(*v1 + 152));
  if (v7)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    v8 = *(v6 + 144);
    swift_beginAccess();
    sub_1D55AC65C(v1 + v8, v5);
    v32 = v3;
    v33 = &protocol witness table for UploadedAudio;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    sub_1D55AC65C(v5, boxed_opaque_existential_0);
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v10 = v7;
    sub_1D5591510();
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_1D55AC6B4();
    sub_1D558582C();

    v11 = *(v1 + *(*v1 + 184));
    sub_1D5587DE4([v11 transientFavoriteStateForModelObject_]);
    sub_1D558B3D8([v11 transientPinStateForModelObject_], &v34);
    v13 = v34;
    v12 = v35;
    v14 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v14 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {

LABEL_18:

      return;
    }

    if (qword_1EDD54488 != -1)
    {
      swift_once();
    }

    v15 = sub_1D560C758();
    __swift_project_value_buffer(v15, qword_1EDD76AA8);

    v16 = sub_1D560C738();
    v17 = sub_1D56156E8();

    if (!os_log_type_enabled(v16, v17))
    {

LABEL_17:

      goto LABEL_18;
    }

    v18 = 0xD000000000000021;
    v19 = swift_slowAlloc();
    v30 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31[0] = v21;
    *v20 = 136446722;
    v22 = sub_1D4F636B4();
    v24 = sub_1D4E6835C(v22, v23, v31);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v25 = sub_1D4E6835C(v13, v12, v31);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2082;
    if (v30)
    {
      if (v30 == 1)
      {
        v26 = "nge Notifications";
        v18 = 0xD000000000000036;
LABEL_16:
        v28 = sub_1D4E6835C(v18, v26 | 0x8000000000000000, v31);

        *(v20 + 24) = v28;
        _os_log_impl(&dword_1D4E3F000, v16, v17, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v21, -1, -1);
        MEMORY[0x1DA6ED200](v20, -1, -1);
        goto LABEL_17;
      }

      v27 = "MediaLibrary Change Notifications";
    }

    else
    {
      v18 = 0xD000000000000026;
      v27 = "MPModelLibraryTransientStateController";
    }

    v26 = (v27 - 32);
    goto LABEL_16;
  }
}

void sub_1D558EB40(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  v8 = *(v2 + *(*v2 + 152));
  if (v8)
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    v9 = *(v7 + 144);
    swift_beginAccess();
    sub_1D55AC65C(v2 + v9, v6);
    v10 = v8;
    sub_1D556C2F4();
    sub_1D55AC6B4();
    sub_1D558582C();

    v11 = *(v2 + *(*v2 + 184));
    sub_1D558832C([v11 transientFavoriteStateForModelObject_]);
    sub_1D558B8E8([v11 transientPinStateForModelObject_], &v28);
    v13 = v28;
    v12 = v29;
    v14 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v14 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v14)
    {
      if (qword_1EDD54488 != -1)
      {
        swift_once();
      }

      v15 = sub_1D560C758();
      __swift_project_value_buffer(v15, qword_1EDD76AA8);

      v16 = sub_1D560C738();
      v17 = sub_1D56156E8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v27 = v19;
        *v18 = 136446722;
        v20 = sub_1D4F636B4();
        v22 = sub_1D4E6835C(v20, v21, &v27);

        *(v18 + 4) = v22;
        *(v18 + 12) = 2082;
        v23 = sub_1D4E6835C(v13, v12, &v27);

        *(v18 + 14) = v23;
        *(v18 + 22) = 2082;
        if (a1)
        {
          if (a1 == 1)
          {
            v24 = 0xD000000000000036;
          }

          else
          {
            v24 = 0xD000000000000021;
          }

          if (a1 == 1)
          {
            v25 = "nge Notifications";
          }

          else
          {
            v25 = "ntrollerObserver";
          }
        }

        else
        {
          v24 = 0xD000000000000026;
          v25 = "wnloadButtonsDidChange";
        }

        v26 = sub_1D4E6835C(v24, v25 | 0x8000000000000000, &v27);

        *(v18 + 24) = v26;
        _os_log_impl(&dword_1D4E3F000, v16, v17, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v18, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v19, -1, -1);
        MEMORY[0x1DA6ED200](v18, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1D558EF3C(int a1)
{
  v3 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + *(*v1 + 152));
  if (v7)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    v8 = *(v6 + 144);
    swift_beginAccess();
    sub_1D55AC65C(v1 + v8, v5);
    v32 = v3;
    v33 = &protocol witness table for TVEpisode;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    sub_1D55AC65C(v5, boxed_opaque_existential_0);
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v10 = v7;
    sub_1D5592108();
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_1D55AC6B4();
    sub_1D558582C();

    v11 = *(v1 + *(*v1 + 184));
    sub_1D5588874([v11 transientFavoriteStateForModelObject_]);
    sub_1D558BDF8([v11 transientPinStateForModelObject_], &v34);
    v13 = v34;
    v12 = v35;
    v14 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v14 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {

LABEL_18:

      return;
    }

    if (qword_1EDD54488 != -1)
    {
      swift_once();
    }

    v15 = sub_1D560C758();
    __swift_project_value_buffer(v15, qword_1EDD76AA8);

    v16 = sub_1D560C738();
    v17 = sub_1D56156E8();

    if (!os_log_type_enabled(v16, v17))
    {

LABEL_17:

      goto LABEL_18;
    }

    v18 = 0xD000000000000021;
    v19 = swift_slowAlloc();
    v30 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31[0] = v21;
    *v20 = 136446722;
    v22 = sub_1D4F636B4();
    v24 = sub_1D4E6835C(v22, v23, v31);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v25 = sub_1D4E6835C(v13, v12, v31);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2082;
    if (v30)
    {
      if (v30 == 1)
      {
        v26 = "nge Notifications";
        v18 = 0xD000000000000036;
LABEL_16:
        v28 = sub_1D4E6835C(v18, v26 | 0x8000000000000000, v31);

        *(v20 + 24) = v28;
        _os_log_impl(&dword_1D4E3F000, v16, v17, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v21, -1, -1);
        MEMORY[0x1DA6ED200](v20, -1, -1);
        goto LABEL_17;
      }

      v27 = "MediaLibrary Change Notifications";
    }

    else
    {
      v18 = 0xD000000000000026;
      v27 = "MPModelLibraryTransientStateController";
    }

    v26 = (v27 - 32);
    goto LABEL_16;
  }
}

void sub_1D558F380(int a1)
{
  v3 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(v1 + *(*v1 + 152));
  if (v7)
  {
    v34 = 0;
    v35 = 0xE000000000000000;
    v8 = *(v6 + 144);
    swift_beginAccess();
    sub_1D55AC65C(v1 + v8, v5);
    v32 = v3;
    v33 = &protocol witness table for MusicMovie;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
    sub_1D55AC65C(v5, boxed_opaque_existential_0);
    __swift_project_boxed_opaque_existential_1(v31, v32);
    v10 = v7;
    sub_1D5592D00();
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_1D55AC6B4();
    sub_1D558582C();

    v11 = *(v1 + *(*v1 + 184));
    sub_1D5588DBC([v11 transientFavoriteStateForModelObject_]);
    sub_1D558C308([v11 transientPinStateForModelObject_], &v34);
    v13 = v34;
    v12 = v35;
    v14 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v14 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {

LABEL_18:

      return;
    }

    if (qword_1EDD54488 != -1)
    {
      swift_once();
    }

    v15 = sub_1D560C758();
    __swift_project_value_buffer(v15, qword_1EDD76AA8);

    v16 = sub_1D560C738();
    v17 = sub_1D56156E8();

    if (!os_log_type_enabled(v16, v17))
    {

LABEL_17:

      goto LABEL_18;
    }

    v18 = 0xD000000000000021;
    v19 = swift_slowAlloc();
    v30 = a1;
    v20 = v19;
    v21 = swift_slowAlloc();
    v31[0] = v21;
    *v20 = 136446722;
    v22 = sub_1D4F636B4();
    v24 = sub_1D4E6835C(v22, v23, v31);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v25 = sub_1D4E6835C(v13, v12, v31);

    *(v20 + 14) = v25;
    *(v20 + 22) = 2082;
    if (v30)
    {
      if (v30 == 1)
      {
        v26 = "nge Notifications";
        v18 = 0xD000000000000036;
LABEL_16:
        v28 = sub_1D4E6835C(v18, v26 | 0x8000000000000000, v31);

        *(v20 + 24) = v28;
        _os_log_impl(&dword_1D4E3F000, v16, v17, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v21, -1, -1);
        MEMORY[0x1DA6ED200](v20, -1, -1);
        goto LABEL_17;
      }

      v27 = "MediaLibrary Change Notifications";
    }

    else
    {
      v18 = 0xD000000000000026;
      v27 = "MPModelLibraryTransientStateController";
    }

    v26 = (v27 - 32);
    goto LABEL_16;
  }
}

void sub_1D558F7C4(char a1)
{
  v2 = v1;
  v4 = sub_1D5613EF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  v9 = *(v2 + *(*v2 + 152));
  if (v9)
  {
    v30 = 0;
    v31 = 0xE000000000000000;
    v10 = *(v8 + 144);
    swift_beginAccess();
    (*(v5 + 16))(v7, v2 + v10, v4);
    v11 = v9;
    v12 = sub_1D556C428();
    (*(v5 + 8))(v7, v4);
    sub_1D558568C(v12, &v30, MEMORY[0x1E6976F28], &protocol witness table for Artist);

    v13 = *(v2 + *(*v2 + 184));
    sub_1D5589304([v13 transientFavoriteStateForModelObject_]);
    sub_1D558C818([v13 transientPinStateForModelObject_]);
    v15 = v30;
    v14 = v31;
    v16 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v16 = v30 & 0xFFFFFFFFFFFFLL;
    }

    if (v16)
    {
      if (qword_1EDD54488 != -1)
      {
        swift_once();
      }

      v17 = sub_1D560C758();
      __swift_project_value_buffer(v17, qword_1EDD76AA8);

      v18 = sub_1D560C738();
      v19 = sub_1D56156E8();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29 = v21;
        *v20 = 136446722;
        v22 = sub_1D4F636B4();
        v24 = sub_1D4E6835C(v22, v23, &v29);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2082;
        v25 = sub_1D4E6835C(v15, v14, &v29);

        *(v20 + 14) = v25;
        *(v20 + 22) = 2082;
        if (a1)
        {
          if (a1 == 1)
          {
            v26 = 0xD000000000000036;
          }

          else
          {
            v26 = 0xD000000000000021;
          }

          if (a1 == 1)
          {
            v27 = "nge Notifications";
          }

          else
          {
            v27 = "ntrollerObserver";
          }
        }

        else
        {
          v26 = 0xD000000000000026;
          v27 = "wnloadButtonsDidChange";
        }

        v28 = sub_1D4E6835C(v26, v27 | 0x8000000000000000, &v29);

        *(v20 + 24) = v28;
        _os_log_impl(&dword_1D4E3F000, v18, v19, "%{public}s | Updated:%{public}s\n  Change source: %{public}s", v20, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v21, -1, -1);
        MEMORY[0x1DA6ED200](v20, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1D558FC40()
{
  OUTLINED_FUNCTION_272_3();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_116_9();
  v7(v6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9();
  (*(v9 + 16))(v3, v2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v1);
  OUTLINED_FUNCTION_2_19(v10);
  OUTLINED_FUNCTION_38_50();

  v11 = OUTLINED_FUNCTION_131();
  return v0(v11);
}

uint64_t sub_1D558FDCC()
{
  v0 = OUTLINED_FUNCTION_64_1();
  v1 = type metadata accessor for MusicMovie(v0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_2_199();
  v3 = OUTLINED_FUNCTION_128();
  sub_1D55AC65C(v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2340, &qword_1D5647B08);
  OUTLINED_FUNCTION_2_19(v5);
  OUTLINED_FUNCTION_107_5();

  v6 = OUTLINED_FUNCTION_228_5();
  return sub_1D55678C4(v6, v7);
}

uint64_t sub_1D558FE58()
{
  v0 = OUTLINED_FUNCTION_64_1();
  v1 = type metadata accessor for TVEpisode(v0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_3_205();
  v3 = OUTLINED_FUNCTION_128();
  sub_1D55AC65C(v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2370, &qword_1D5647B28);
  OUTLINED_FUNCTION_2_19(v5);
  OUTLINED_FUNCTION_107_5();

  v6 = OUTLINED_FUNCTION_228_5();
  return sub_1D55662E8(v6, v7);
}

uint64_t sub_1D558FEE4()
{
  v0 = OUTLINED_FUNCTION_64_1();
  v1 = type metadata accessor for TVSeason(v0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_4_160();
  v3 = OUTLINED_FUNCTION_128();
  sub_1D55AC65C(v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2380, &qword_1D5647B30);
  OUTLINED_FUNCTION_2_19(v5);
  OUTLINED_FUNCTION_107_5();

  v6 = OUTLINED_FUNCTION_228_5();
  return sub_1D5564D74(v6, v7);
}

uint64_t sub_1D558FF70()
{
  v0 = OUTLINED_FUNCTION_64_1();
  v1 = type metadata accessor for UploadedAudio(v0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_25_71();
  v3 = OUTLINED_FUNCTION_128();
  sub_1D55AC65C(v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2390, &qword_1D5647B38);
  OUTLINED_FUNCTION_2_19(v5);
  OUTLINED_FUNCTION_107_5();

  v6 = OUTLINED_FUNCTION_228_5();
  return sub_1D556368C(v6, v7);
}

uint64_t sub_1D558FFFC()
{
  v0 = OUTLINED_FUNCTION_64_1();
  v1 = type metadata accessor for UploadedVideo(v0);
  v2 = OUTLINED_FUNCTION_22(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_26_82();
  v3 = OUTLINED_FUNCTION_128();
  sub_1D55AC65C(v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F23A0, &unk_1D5647B40);
  OUTLINED_FUNCTION_2_19(v5);
  OUTLINED_FUNCTION_107_5();

  v6 = OUTLINED_FUNCTION_228_5();
  return sub_1D5561FA4(v6, v7);
}

void sub_1D5590088()
{
  OUTLINED_FUNCTION_47();
  v107 = v1;
  v3 = v2;
  v4 = sub_1D5613198();
  OUTLINED_FUNCTION_4();
  v110 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v104 = v8 - v7;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v101 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v109 = v14 - v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v101 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v101 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v21);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v101 - v23;
  v25 = sub_1D56134E8();
  OUTLINED_FUNCTION_4();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_59_0();
  v31 = v29 - v30;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v101 - v34;
  v106 = v0;
  v3(v33);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    v36 = sub_1D4E50004(v24, &qword_1EC7EC528, &unk_1D5621070);
    v37 = MEMORY[0x1E69E7CC0];
LABEL_45:
    v63 = v108;
    v67 = v109;
    goto LABEL_46;
  }

  v102 = v11;
  v103 = v4;
  (*(v27 + 32))(v35, v24, v25);
  sub_1D5613478();
  sub_1D55ACD00(&qword_1EDD52EB8, MEMORY[0x1E6976A18], MEMORY[0x1E6976A38]);
  v38 = OUTLINED_FUNCTION_146_11();
  v39 = *(v27 + 8);
  v39(v31, v25);
  v40 = v19;
  if (v38)
  {
    sub_1D4F0051C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v37 = v41;
    v43 = *(v41 + 16);
    v42 = *(v41 + 24);
    v38 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      OUTLINED_FUNCTION_264_0(v42 > 1);
      v37 = v88;
    }

    OUTLINED_FUNCTION_325_2();
    *(v44 + 32) = 0;
    v19 = v40;
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  sub_1D56134A8();
  OUTLINED_FUNCTION_146_11();
  v45 = OUTLINED_FUNCTION_163_10();
  (v39)(v45);
  if (v38)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_103_18();
      v37 = v89;
    }

    OUTLINED_FUNCTION_214_3();
    if (v47)
    {
      OUTLINED_FUNCTION_264_0(v46 > 1);
      v37 = v90;
    }

    OUTLINED_FUNCTION_325_2();
    OUTLINED_FUNCTION_6_113(v48);
  }

  sub_1D5613488();
  OUTLINED_FUNCTION_146_11();
  v49 = OUTLINED_FUNCTION_163_10();
  (v39)(v49);
  if (v38)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_103_18();
      v37 = v91;
    }

    OUTLINED_FUNCTION_214_3();
    if (v47)
    {
      OUTLINED_FUNCTION_264_0(v50 > 1);
      v37 = v92;
    }

    OUTLINED_FUNCTION_325_2();
    OUTLINED_FUNCTION_6_113(v51);
  }

  sub_1D56134D8();
  OUTLINED_FUNCTION_146_11();
  v52 = OUTLINED_FUNCTION_163_10();
  (v39)(v52);
  if (v38)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_103_18();
      v37 = v93;
    }

    OUTLINED_FUNCTION_214_3();
    if (v47)
    {
      OUTLINED_FUNCTION_264_0(v53 > 1);
      v37 = v94;
    }

    OUTLINED_FUNCTION_325_2();
    OUTLINED_FUNCTION_6_113(v54);
  }

  sub_1D56134C8();
  OUTLINED_FUNCTION_146_11();
  v55 = OUTLINED_FUNCTION_163_10();
  (v39)(v55);
  if (v38)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_103_18();
      v37 = v95;
    }

    OUTLINED_FUNCTION_214_3();
    if (v47)
    {
      OUTLINED_FUNCTION_264_0(v56 > 1);
      v37 = v96;
    }

    OUTLINED_FUNCTION_325_2();
    OUTLINED_FUNCTION_6_113(v57);
  }

  sub_1D56134B8();
  OUTLINED_FUNCTION_146_11();
  v58 = OUTLINED_FUNCTION_163_10();
  (v39)(v58);
  if (v38)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_103_18();
      v37 = v97;
    }

    OUTLINED_FUNCTION_214_3();
    if (v47)
    {
      OUTLINED_FUNCTION_264_0(v59 > 1);
      v37 = v98;
    }

    OUTLINED_FUNCTION_325_2();
    OUTLINED_FUNCTION_6_113(v60);
  }

  sub_1D5613498();
  OUTLINED_FUNCTION_146_11();
  v61 = OUTLINED_FUNCTION_163_10();
  (v39)(v61);
  v11 = v102;
  if ((v38 & 1) == 0)
  {
    v68 = OUTLINED_FUNCTION_75_2();
    v36 = (v39)(v68);
    v4 = v103;
    goto LABEL_45;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = v108;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_103_18();
    v37 = v99;
  }

  v65 = *(v37 + 16);
  v64 = *(v37 + 24);
  if (v65 >= v64 >> 1)
  {
    OUTLINED_FUNCTION_264_0(v64 > 1);
    v37 = v100;
  }

  v66 = OUTLINED_FUNCTION_75_2();
  v36 = (v39)(v66);
  *(v37 + 16) = v65 + 1;
  *(v37 + v65 + 32) = 6;
  v4 = v103;
  v67 = v109;
LABEL_46:
  v107(v36);
  v69 = v110;
  (*(v110 + 104))(v19, *MEMORY[0x1E69768D8], v4);
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v4);
  v70 = *(v105 + 48);
  sub_1D4E69970(v63, v11, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E69970(v19, &v11[v70], &qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_9_25(v11);
  if (!v75)
  {
    sub_1D4E69970(v11, v67, &qword_1EC7EC530, &unk_1D5632150);
    OUTLINED_FUNCTION_9_25(&v11[v70]);
    if (!v75)
    {
      v80 = v104;
      (*(v69 + 32))(v104, &v11[v70], v4);
      sub_1D55ACD00(&qword_1EDD52EE0, MEMORY[0x1E69768E8], MEMORY[0x1E69768F8]);
      LODWORD(v109) = sub_1D5614D18();
      v81 = *(v69 + 8);
      v81(v80, v4);
      v82 = OUTLINED_FUNCTION_46_1();
      sub_1D4E50004(v82, v83, &unk_1D5632150);
      sub_1D4E50004(v63, &qword_1EC7EC530, &unk_1D5632150);
      v81(v67, v4);
      sub_1D4E50004(v11, &qword_1EC7EC530, &unk_1D5632150);
      if ((v109 & 1) == 0)
      {
        goto LABEL_61;
      }

      goto LABEL_56;
    }

    v76 = OUTLINED_FUNCTION_71();
    sub_1D4E50004(v76, v77, &unk_1D5632150);
    v78 = OUTLINED_FUNCTION_117_6();
    sub_1D4E50004(v78, v79, &unk_1D5632150);
    (*(v69 + 8))(v67, v4);
LABEL_54:
    sub_1D4E50004(v11, &qword_1EC7EF628, &unk_1D5632440);
    goto LABEL_61;
  }

  v71 = OUTLINED_FUNCTION_71();
  sub_1D4E50004(v71, v72, &unk_1D5632150);
  v73 = OUTLINED_FUNCTION_117_6();
  sub_1D4E50004(v73, v74, &unk_1D5632150);
  OUTLINED_FUNCTION_9_25(&v11[v70]);
  if (!v75)
  {
    goto LABEL_54;
  }

  sub_1D4E50004(v11, &qword_1EC7EC530, &unk_1D5632150);
LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_103_18();
    v37 = v86;
  }

  v85 = *(v37 + 16);
  v84 = *(v37 + 24);
  if (v85 >= v84 >> 1)
  {
    sub_1D4F0051C(v84 > 1, v85 + 1, 1, v37);
    v37 = v87;
  }

  *(v37 + 16) = v85 + 1;
  *(v37 + v85 + 32) = 7;
LABEL_61:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5590918()
{
  v1 = sub_1D5613198();
  v85 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v76 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  MEMORY[0x1EEE9AC00](v81);
  v4 = &v74 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v78 = &v74 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v74 - v12;
  v14 = sub_1D56134E8();
  v77 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v74 - v18;
  if (qword_1EDD53EA0 != -1)
  {
    swift_once();
  }

  v20 = sub_1D55ACD00(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  v79 = sub_1D55ACD00(&qword_1EC7EC488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  v80 = v20;
  v82 = v0;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1D4E50004(v13, &qword_1EC7EC528, &unk_1D5621070);
    v21 = MEMORY[0x1E69E7CC0];
    v22 = v84;
    v23 = v78;
  }

  else
  {
    v74 = v1;
    v75 = v4;
    v24 = v77;
    v25 = v19;
    (*(v77 + 32))(v19, v13, v14);
    sub_1D5613478();
    sub_1D55ACD00(&qword_1EDD52EB8, MEMORY[0x1E6976A18], MEMORY[0x1E6976A38]);
    v26 = sub_1D56159C8();
    v27 = *(v24 + 8);
    v27(v17, v14);
    v23 = v78;
    v28 = v78;
    if (v26)
    {
      sub_1D4F0051C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v21 = v29;
      v31 = *(v29 + 16);
      v30 = *(v29 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D4F0051C(v30 > 1, v31 + 1, 1, v29);
        v21 = v61;
      }

      *(v21 + 16) = v31 + 1;
      *(v21 + v31 + 32) = 0;
      v23 = v28;
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    sub_1D56134A8();
    v32 = sub_1D56159C8();
    v27(v17, v14);
    if (v32)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v62;
      }

      v34 = *(v21 + 16);
      v33 = *(v21 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D4F0051C(v33 > 1, v34 + 1, 1, v21);
        v21 = v63;
      }

      *(v21 + 16) = v34 + 1;
      *(v21 + v34 + 32) = 1;
      v23 = v28;
    }

    sub_1D5613488();
    v35 = sub_1D56159C8();
    v27(v17, v14);
    if (v35)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v64;
      }

      v37 = *(v21 + 16);
      v36 = *(v21 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D4F0051C(v36 > 1, v37 + 1, 1, v21);
        v21 = v65;
      }

      *(v21 + 16) = v37 + 1;
      *(v21 + v37 + 32) = 2;
      v23 = v28;
    }

    sub_1D56134D8();
    v38 = sub_1D56159C8();
    v27(v17, v14);
    if (v38)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v66;
      }

      v40 = *(v21 + 16);
      v39 = *(v21 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D4F0051C(v39 > 1, v40 + 1, 1, v21);
        v21 = v67;
      }

      *(v21 + 16) = v40 + 1;
      *(v21 + v40 + 32) = 3;
      v23 = v28;
    }

    sub_1D56134C8();
    v41 = sub_1D56159C8();
    v27(v17, v14);
    if (v41)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v68;
      }

      v43 = *(v21 + 16);
      v42 = *(v21 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1D4F0051C(v42 > 1, v43 + 1, 1, v21);
        v21 = v69;
      }

      *(v21 + 16) = v43 + 1;
      *(v21 + v43 + 32) = 4;
      v23 = v28;
    }

    sub_1D56134B8();
    v44 = sub_1D56159C8();
    v27(v17, v14);
    if (v44)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v70;
      }

      v46 = *(v21 + 16);
      v45 = *(v21 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1D4F0051C(v45 > 1, v46 + 1, 1, v21);
        v21 = v71;
      }

      *(v21 + 16) = v46 + 1;
      *(v21 + v46 + 32) = 5;
      v23 = v28;
    }

    sub_1D5613498();
    v47 = sub_1D56159C8();
    v27(v17, v14);
    v1 = v74;
    if (v47)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v84;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v72;
      }

      v50 = *(v21 + 16);
      v49 = *(v21 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1D4F0051C(v49 > 1, v50 + 1, 1, v21);
        v21 = v73;
      }

      v27(v25, v14);
      *(v21 + 16) = v50 + 1;
      *(v21 + v50 + 32) = 6;
      v4 = v75;
    }

    else
    {
      v27(v25, v14);
      v4 = v75;
      v22 = v84;
    }
  }

  v51 = v85;
  v52 = v83;
  if (qword_1EDD53EA8 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  (*(v51 + 104))(v23, *MEMORY[0x1E69768D8], v1);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v1);
  v53 = *(v81 + 48);
  sub_1D4E69970(v52, v4, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E69970(v23, &v4[v53], &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(v4, 1, v1) != 1)
  {
    sub_1D4E69970(v4, v22, &qword_1EC7EC530, &unk_1D5632150);
    if (__swift_getEnumTagSinglePayload(&v4[v53], 1, v1) != 1)
    {
      v54 = v76;
      (*(v51 + 32))(v76, &v4[v53], v1);
      sub_1D55ACD00(&qword_1EDD52EE0, MEMORY[0x1E69768E8], MEMORY[0x1E69768F8]);
      LODWORD(v84) = sub_1D5614D18();
      v55 = *(v51 + 8);
      v55(v54, v1);
      sub_1D4E50004(v23, &qword_1EC7EC530, &unk_1D5632150);
      sub_1D4E50004(v52, &qword_1EC7EC530, &unk_1D5632150);
      v55(v22, v1);
      sub_1D4E50004(v4, &qword_1EC7EC530, &unk_1D5632150);
      if ((v84 & 1) == 0)
      {
        return v21;
      }

      goto LABEL_56;
    }

    sub_1D4E50004(v23, &qword_1EC7EC530, &unk_1D5632150);
    sub_1D4E50004(v52, &qword_1EC7EC530, &unk_1D5632150);
    (*(v51 + 8))(v22, v1);
LABEL_54:
    sub_1D4E50004(v4, &qword_1EC7EF628, &unk_1D5632440);
    return v21;
  }

  sub_1D4E50004(v23, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E50004(v52, &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(&v4[v53], 1, v1) != 1)
  {
    goto LABEL_54;
  }

  sub_1D4E50004(v4, &qword_1EC7EC530, &unk_1D5632150);
LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
    v21 = v59;
  }

  v57 = *(v21 + 16);
  v56 = *(v21 + 24);
  if (v57 >= v56 >> 1)
  {
    sub_1D4F0051C(v56 > 1, v57 + 1, 1, v21);
    v21 = v60;
  }

  *(v21 + 16) = v57 + 1;
  *(v21 + v57 + 32) = 7;
  return v21;
}

uint64_t sub_1D5591510()
{
  v1 = sub_1D5613198();
  v85 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v76 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  MEMORY[0x1EEE9AC00](v81);
  v4 = &v74 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v78 = &v74 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v74 - v12;
  v14 = sub_1D56134E8();
  v77 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v74 - v18;
  if (qword_1EC7E8E98 != -1)
  {
    swift_once();
  }

  v20 = sub_1D55ACD00(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  v79 = sub_1D55ACD00(&qword_1EC7EC498, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
  v80 = v20;
  v82 = v0;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1D4E50004(v13, &qword_1EC7EC528, &unk_1D5621070);
    v21 = MEMORY[0x1E69E7CC0];
    v22 = v84;
    v23 = v78;
  }

  else
  {
    v74 = v1;
    v75 = v4;
    v24 = v77;
    v25 = v19;
    (*(v77 + 32))(v19, v13, v14);
    sub_1D5613478();
    sub_1D55ACD00(&qword_1EDD52EB8, MEMORY[0x1E6976A18], MEMORY[0x1E6976A38]);
    v26 = sub_1D56159C8();
    v27 = *(v24 + 8);
    v27(v17, v14);
    v23 = v78;
    v28 = v78;
    if (v26)
    {
      sub_1D4F0051C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v21 = v29;
      v31 = *(v29 + 16);
      v30 = *(v29 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D4F0051C(v30 > 1, v31 + 1, 1, v29);
        v21 = v61;
      }

      *(v21 + 16) = v31 + 1;
      *(v21 + v31 + 32) = 0;
      v23 = v28;
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    sub_1D56134A8();
    v32 = sub_1D56159C8();
    v27(v17, v14);
    if (v32)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v62;
      }

      v34 = *(v21 + 16);
      v33 = *(v21 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D4F0051C(v33 > 1, v34 + 1, 1, v21);
        v21 = v63;
      }

      *(v21 + 16) = v34 + 1;
      *(v21 + v34 + 32) = 1;
      v23 = v28;
    }

    sub_1D5613488();
    v35 = sub_1D56159C8();
    v27(v17, v14);
    if (v35)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v64;
      }

      v37 = *(v21 + 16);
      v36 = *(v21 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D4F0051C(v36 > 1, v37 + 1, 1, v21);
        v21 = v65;
      }

      *(v21 + 16) = v37 + 1;
      *(v21 + v37 + 32) = 2;
      v23 = v28;
    }

    sub_1D56134D8();
    v38 = sub_1D56159C8();
    v27(v17, v14);
    if (v38)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v66;
      }

      v40 = *(v21 + 16);
      v39 = *(v21 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D4F0051C(v39 > 1, v40 + 1, 1, v21);
        v21 = v67;
      }

      *(v21 + 16) = v40 + 1;
      *(v21 + v40 + 32) = 3;
      v23 = v28;
    }

    sub_1D56134C8();
    v41 = sub_1D56159C8();
    v27(v17, v14);
    if (v41)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v68;
      }

      v43 = *(v21 + 16);
      v42 = *(v21 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1D4F0051C(v42 > 1, v43 + 1, 1, v21);
        v21 = v69;
      }

      *(v21 + 16) = v43 + 1;
      *(v21 + v43 + 32) = 4;
      v23 = v28;
    }

    sub_1D56134B8();
    v44 = sub_1D56159C8();
    v27(v17, v14);
    if (v44)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v70;
      }

      v46 = *(v21 + 16);
      v45 = *(v21 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1D4F0051C(v45 > 1, v46 + 1, 1, v21);
        v21 = v71;
      }

      *(v21 + 16) = v46 + 1;
      *(v21 + v46 + 32) = 5;
      v23 = v28;
    }

    sub_1D5613498();
    v47 = sub_1D56159C8();
    v27(v17, v14);
    v1 = v74;
    if (v47)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v84;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v72;
      }

      v50 = *(v21 + 16);
      v49 = *(v21 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1D4F0051C(v49 > 1, v50 + 1, 1, v21);
        v21 = v73;
      }

      v27(v25, v14);
      *(v21 + 16) = v50 + 1;
      *(v21 + v50 + 32) = 6;
      v4 = v75;
    }

    else
    {
      v27(v25, v14);
      v4 = v75;
      v22 = v84;
    }
  }

  v51 = v85;
  v52 = v83;
  if (qword_1EC7E8E90 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  (*(v51 + 104))(v23, *MEMORY[0x1E69768D8], v1);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v1);
  v53 = *(v81 + 48);
  sub_1D4E69970(v52, v4, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E69970(v23, &v4[v53], &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(v4, 1, v1) != 1)
  {
    sub_1D4E69970(v4, v22, &qword_1EC7EC530, &unk_1D5632150);
    if (__swift_getEnumTagSinglePayload(&v4[v53], 1, v1) != 1)
    {
      v54 = v76;
      (*(v51 + 32))(v76, &v4[v53], v1);
      sub_1D55ACD00(&qword_1EDD52EE0, MEMORY[0x1E69768E8], MEMORY[0x1E69768F8]);
      LODWORD(v84) = sub_1D5614D18();
      v55 = *(v51 + 8);
      v55(v54, v1);
      sub_1D4E50004(v23, &qword_1EC7EC530, &unk_1D5632150);
      sub_1D4E50004(v52, &qword_1EC7EC530, &unk_1D5632150);
      v55(v22, v1);
      sub_1D4E50004(v4, &qword_1EC7EC530, &unk_1D5632150);
      if ((v84 & 1) == 0)
      {
        return v21;
      }

      goto LABEL_56;
    }

    sub_1D4E50004(v23, &qword_1EC7EC530, &unk_1D5632150);
    sub_1D4E50004(v52, &qword_1EC7EC530, &unk_1D5632150);
    (*(v51 + 8))(v22, v1);
LABEL_54:
    sub_1D4E50004(v4, &qword_1EC7EF628, &unk_1D5632440);
    return v21;
  }

  sub_1D4E50004(v23, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E50004(v52, &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(&v4[v53], 1, v1) != 1)
  {
    goto LABEL_54;
  }

  sub_1D4E50004(v4, &qword_1EC7EC530, &unk_1D5632150);
LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
    v21 = v59;
  }

  v57 = *(v21 + 16);
  v56 = *(v21 + 24);
  if (v57 >= v56 >> 1)
  {
    sub_1D4F0051C(v56 > 1, v57 + 1, 1, v21);
    v21 = v60;
  }

  *(v21 + 16) = v57 + 1;
  *(v21 + v57 + 32) = 7;
  return v21;
}

uint64_t sub_1D5592108()
{
  v1 = sub_1D5613198();
  v85 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v76 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  MEMORY[0x1EEE9AC00](v81);
  v4 = &v74 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v78 = &v74 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v74 - v12;
  v14 = sub_1D56134E8();
  v77 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v74 - v18;
  if (qword_1EC7E91E8 != -1)
  {
    swift_once();
  }

  v20 = sub_1D55ACD00(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v79 = sub_1D55ACD00(&qword_1EC7EC490, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  v80 = v20;
  v82 = v0;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1D4E50004(v13, &qword_1EC7EC528, &unk_1D5621070);
    v21 = MEMORY[0x1E69E7CC0];
    v22 = v84;
    v23 = v78;
  }

  else
  {
    v74 = v1;
    v75 = v4;
    v24 = v77;
    v25 = v19;
    (*(v77 + 32))(v19, v13, v14);
    sub_1D5613478();
    sub_1D55ACD00(&qword_1EDD52EB8, MEMORY[0x1E6976A18], MEMORY[0x1E6976A38]);
    v26 = sub_1D56159C8();
    v27 = *(v24 + 8);
    v27(v17, v14);
    v23 = v78;
    v28 = v78;
    if (v26)
    {
      sub_1D4F0051C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v21 = v29;
      v31 = *(v29 + 16);
      v30 = *(v29 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D4F0051C(v30 > 1, v31 + 1, 1, v29);
        v21 = v61;
      }

      *(v21 + 16) = v31 + 1;
      *(v21 + v31 + 32) = 0;
      v23 = v28;
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    sub_1D56134A8();
    v32 = sub_1D56159C8();
    v27(v17, v14);
    if (v32)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v62;
      }

      v34 = *(v21 + 16);
      v33 = *(v21 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D4F0051C(v33 > 1, v34 + 1, 1, v21);
        v21 = v63;
      }

      *(v21 + 16) = v34 + 1;
      *(v21 + v34 + 32) = 1;
      v23 = v28;
    }

    sub_1D5613488();
    v35 = sub_1D56159C8();
    v27(v17, v14);
    if (v35)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v64;
      }

      v37 = *(v21 + 16);
      v36 = *(v21 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D4F0051C(v36 > 1, v37 + 1, 1, v21);
        v21 = v65;
      }

      *(v21 + 16) = v37 + 1;
      *(v21 + v37 + 32) = 2;
      v23 = v28;
    }

    sub_1D56134D8();
    v38 = sub_1D56159C8();
    v27(v17, v14);
    if (v38)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v66;
      }

      v40 = *(v21 + 16);
      v39 = *(v21 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D4F0051C(v39 > 1, v40 + 1, 1, v21);
        v21 = v67;
      }

      *(v21 + 16) = v40 + 1;
      *(v21 + v40 + 32) = 3;
      v23 = v28;
    }

    sub_1D56134C8();
    v41 = sub_1D56159C8();
    v27(v17, v14);
    if (v41)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v68;
      }

      v43 = *(v21 + 16);
      v42 = *(v21 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1D4F0051C(v42 > 1, v43 + 1, 1, v21);
        v21 = v69;
      }

      *(v21 + 16) = v43 + 1;
      *(v21 + v43 + 32) = 4;
      v23 = v28;
    }

    sub_1D56134B8();
    v44 = sub_1D56159C8();
    v27(v17, v14);
    if (v44)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v70;
      }

      v46 = *(v21 + 16);
      v45 = *(v21 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1D4F0051C(v45 > 1, v46 + 1, 1, v21);
        v21 = v71;
      }

      *(v21 + 16) = v46 + 1;
      *(v21 + v46 + 32) = 5;
      v23 = v28;
    }

    sub_1D5613498();
    v47 = sub_1D56159C8();
    v27(v17, v14);
    v1 = v74;
    if (v47)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v84;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v72;
      }

      v50 = *(v21 + 16);
      v49 = *(v21 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1D4F0051C(v49 > 1, v50 + 1, 1, v21);
        v21 = v73;
      }

      v27(v25, v14);
      *(v21 + 16) = v50 + 1;
      *(v21 + v50 + 32) = 6;
      v4 = v75;
    }

    else
    {
      v27(v25, v14);
      v4 = v75;
      v22 = v84;
    }
  }

  v51 = v85;
  v52 = v83;
  if (qword_1EC7E91E0 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  (*(v51 + 104))(v23, *MEMORY[0x1E69768D8], v1);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v1);
  v53 = *(v81 + 48);
  sub_1D4E69970(v52, v4, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E69970(v23, &v4[v53], &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(v4, 1, v1) != 1)
  {
    sub_1D4E69970(v4, v22, &qword_1EC7EC530, &unk_1D5632150);
    if (__swift_getEnumTagSinglePayload(&v4[v53], 1, v1) != 1)
    {
      v54 = v76;
      (*(v51 + 32))(v76, &v4[v53], v1);
      sub_1D55ACD00(&qword_1EDD52EE0, MEMORY[0x1E69768E8], MEMORY[0x1E69768F8]);
      LODWORD(v84) = sub_1D5614D18();
      v55 = *(v51 + 8);
      v55(v54, v1);
      sub_1D4E50004(v23, &qword_1EC7EC530, &unk_1D5632150);
      sub_1D4E50004(v52, &qword_1EC7EC530, &unk_1D5632150);
      v55(v22, v1);
      sub_1D4E50004(v4, &qword_1EC7EC530, &unk_1D5632150);
      if ((v84 & 1) == 0)
      {
        return v21;
      }

      goto LABEL_56;
    }

    sub_1D4E50004(v23, &qword_1EC7EC530, &unk_1D5632150);
    sub_1D4E50004(v52, &qword_1EC7EC530, &unk_1D5632150);
    (*(v51 + 8))(v22, v1);
LABEL_54:
    sub_1D4E50004(v4, &qword_1EC7EF628, &unk_1D5632440);
    return v21;
  }

  sub_1D4E50004(v23, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E50004(v52, &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(&v4[v53], 1, v1) != 1)
  {
    goto LABEL_54;
  }

  sub_1D4E50004(v4, &qword_1EC7EC530, &unk_1D5632150);
LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
    v21 = v59;
  }

  v57 = *(v21 + 16);
  v56 = *(v21 + 24);
  if (v57 >= v56 >> 1)
  {
    sub_1D4F0051C(v56 > 1, v57 + 1, 1, v21);
    v21 = v60;
  }

  *(v21 + 16) = v57 + 1;
  *(v21 + v57 + 32) = 7;
  return v21;
}

uint64_t sub_1D5592D00()
{
  v1 = sub_1D5613198();
  v85 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v76 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF628, &unk_1D5632440);
  MEMORY[0x1EEE9AC00](v81);
  v4 = &v74 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v84 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v78 = &v74 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v74 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v74 - v12;
  v14 = sub_1D56134E8();
  v77 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v74 - v18;
  if (qword_1EDD54200 != -1)
  {
    swift_once();
  }

  v20 = sub_1D55ACD00(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v79 = sub_1D55ACD00(&qword_1EDD59300, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  v80 = v20;
  v82 = v0;
  sub_1D560EC28();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_1D4E50004(v13, &qword_1EC7EC528, &unk_1D5621070);
    v21 = MEMORY[0x1E69E7CC0];
    v22 = v84;
    v23 = v78;
  }

  else
  {
    v74 = v1;
    v75 = v4;
    v24 = v77;
    v25 = v19;
    (*(v77 + 32))(v19, v13, v14);
    sub_1D5613478();
    sub_1D55ACD00(&qword_1EDD52EB8, MEMORY[0x1E6976A18], MEMORY[0x1E6976A38]);
    v26 = sub_1D56159C8();
    v27 = *(v24 + 8);
    v27(v17, v14);
    v23 = v78;
    v28 = v78;
    if (v26)
    {
      sub_1D4F0051C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v21 = v29;
      v31 = *(v29 + 16);
      v30 = *(v29 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1D4F0051C(v30 > 1, v31 + 1, 1, v29);
        v21 = v61;
      }

      *(v21 + 16) = v31 + 1;
      *(v21 + v31 + 32) = 0;
      v23 = v28;
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    sub_1D56134A8();
    v32 = sub_1D56159C8();
    v27(v17, v14);
    if (v32)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v62;
      }

      v34 = *(v21 + 16);
      v33 = *(v21 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D4F0051C(v33 > 1, v34 + 1, 1, v21);
        v21 = v63;
      }

      *(v21 + 16) = v34 + 1;
      *(v21 + v34 + 32) = 1;
      v23 = v28;
    }

    sub_1D5613488();
    v35 = sub_1D56159C8();
    v27(v17, v14);
    if (v35)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v64;
      }

      v37 = *(v21 + 16);
      v36 = *(v21 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D4F0051C(v36 > 1, v37 + 1, 1, v21);
        v21 = v65;
      }

      *(v21 + 16) = v37 + 1;
      *(v21 + v37 + 32) = 2;
      v23 = v28;
    }

    sub_1D56134D8();
    v38 = sub_1D56159C8();
    v27(v17, v14);
    if (v38)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v66;
      }

      v40 = *(v21 + 16);
      v39 = *(v21 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D4F0051C(v39 > 1, v40 + 1, 1, v21);
        v21 = v67;
      }

      *(v21 + 16) = v40 + 1;
      *(v21 + v40 + 32) = 3;
      v23 = v28;
    }

    sub_1D56134C8();
    v41 = sub_1D56159C8();
    v27(v17, v14);
    if (v41)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v68;
      }

      v43 = *(v21 + 16);
      v42 = *(v21 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_1D4F0051C(v42 > 1, v43 + 1, 1, v21);
        v21 = v69;
      }

      *(v21 + 16) = v43 + 1;
      *(v21 + v43 + 32) = 4;
      v23 = v28;
    }

    sub_1D56134B8();
    v44 = sub_1D56159C8();
    v27(v17, v14);
    if (v44)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v70;
      }

      v46 = *(v21 + 16);
      v45 = *(v21 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1D4F0051C(v45 > 1, v46 + 1, 1, v21);
        v21 = v71;
      }

      *(v21 + 16) = v46 + 1;
      *(v21 + v46 + 32) = 5;
      v23 = v28;
    }

    sub_1D5613498();
    v47 = sub_1D56159C8();
    v27(v17, v14);
    v1 = v74;
    if (v47)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v84;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
        v21 = v72;
      }

      v50 = *(v21 + 16);
      v49 = *(v21 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1D4F0051C(v49 > 1, v50 + 1, 1, v21);
        v21 = v73;
      }

      v27(v25, v14);
      *(v21 + 16) = v50 + 1;
      *(v21 + v50 + 32) = 6;
      v4 = v75;
    }

    else
    {
      v27(v25, v14);
      v4 = v75;
      v22 = v84;
    }
  }

  v51 = v85;
  v52 = v83;
  if (qword_1EDD54208 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  (*(v51 + 104))(v23, *MEMORY[0x1E69768D8], v1);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v1);
  v53 = *(v81 + 48);
  sub_1D4E69970(v52, v4, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E69970(v23, &v4[v53], &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(v4, 1, v1) != 1)
  {
    sub_1D4E69970(v4, v22, &qword_1EC7EC530, &unk_1D5632150);
    if (__swift_getEnumTagSinglePayload(&v4[v53], 1, v1) != 1)
    {
      v54 = v76;
      (*(v51 + 32))(v76, &v4[v53], v1);
      sub_1D55ACD00(&qword_1EDD52EE0, MEMORY[0x1E69768E8], MEMORY[0x1E69768F8]);
      LODWORD(v84) = sub_1D5614D18();
      v55 = *(v51 + 8);
      v55(v54, v1);
      sub_1D4E50004(v23, &qword_1EC7EC530, &unk_1D5632150);
      sub_1D4E50004(v52, &qword_1EC7EC530, &unk_1D5632150);
      v55(v22, v1);
      sub_1D4E50004(v4, &qword_1EC7EC530, &unk_1D5632150);
      if ((v84 & 1) == 0)
      {
        return v21;
      }

      goto LABEL_56;
    }

    sub_1D4E50004(v23, &qword_1EC7EC530, &unk_1D5632150);
    sub_1D4E50004(v52, &qword_1EC7EC530, &unk_1D5632150);
    (*(v51 + 8))(v22, v1);
LABEL_54:
    sub_1D4E50004(v4, &qword_1EC7EF628, &unk_1D5632440);
    return v21;
  }

  sub_1D4E50004(v23, &qword_1EC7EC530, &unk_1D5632150);
  sub_1D4E50004(v52, &qword_1EC7EC530, &unk_1D5632150);
  if (__swift_getEnumTagSinglePayload(&v4[v53], 1, v1) != 1)
  {
    goto LABEL_54;
  }

  sub_1D4E50004(v4, &qword_1EC7EC530, &unk_1D5632150);
LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D4F0051C(0, *(v21 + 16) + 1, 1, v21);
    v21 = v59;
  }

  v57 = *(v21 + 16);
  v56 = *(v21 + 24);
  if (v57 >= v56 >> 1)
  {
    sub_1D4F0051C(v56 > 1, v57 + 1, 1, v21);
    v21 = v60;
  }

  *(v21 + 16) = v57 + 1;
  *(v21 + v57 + 32) = 7;
  return v21;
}

uint64_t sub_1D5593998@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = a1(0);
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_0(a3);
  OUTLINED_FUNCTION_24_0();
  v6 = *(v5 + 16);

  return v6();
}

uint64_t sub_1D5593A1C(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1EC7F0070;
  *(v1 + qword_1EC7F0070) = 0;
  sub_1D560EEA8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v17 = v15;
  sub_1D534329C(&v13);
  v5 = v13;
  swift_beginAccess();
  v17 = v5;
  sub_1D560C8B8();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v6 = v16;
  if (v16 == 1)
  {
    v7 = v15 & 7;
  }

  else
  {
    v7 = v15;
  }

  swift_beginAccess();
  v13 = v7;
  v14 = v6;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2350, &unk_1D5647B10);
  sub_1D4E62A60(qword_1EDD53478, &qword_1EC7F2350, &unk_1D5647B10, &protocol conformance descriptor for MusicLibrary.ItemState<A>);
  v15 = sub_1D560C838();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D55A91C0;
  *(v10 + 24) = v9;
  sub_1D560C898();

  v11 = sub_1D560C948();

  *(v2 + v4) = v11;

  return v2;
}

uint64_t sub_1D5593D08(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1EC7F0070;
  *(v1 + qword_1EC7F0070) = 0;
  sub_1D5613838();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v17 = v15;
  sub_1D534329C(&v13);
  v5 = v13;
  swift_beginAccess();
  v17 = v5;
  sub_1D560C8B8();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v6 = v16;
  if (v16 == 1)
  {
    v7 = v15 & 7;
  }

  else
  {
    v7 = v15;
  }

  swift_beginAccess();
  v13 = v7;
  v14 = v6;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2368, &qword_1D5647B20);
  sub_1D4E62A60(&qword_1EDD53470, &qword_1EC7F2368, &qword_1D5647B20, &protocol conformance descriptor for MusicLibrary.ItemState<A>);
  v15 = sub_1D560C838();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D55A96F4;
  *(v10 + 24) = v9;
  sub_1D560C898();

  v11 = sub_1D560C948();

  *(v2 + v4) = v11;

  return v2;
}

uint64_t sub_1D5593FF4(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1EC7F0070;
  *(v1 + qword_1EC7F0070) = 0;
  sub_1D5613AF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v17 = v15;
  sub_1D534329C(&v13);
  v5 = v13;
  swift_beginAccess();
  v17 = v5;
  sub_1D560C8B8();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v6 = v16;
  if (v16 == 1)
  {
    v7 = v15 & 7;
  }

  else
  {
    v7 = v15;
  }

  swift_beginAccess();
  v13 = v7;
  v14 = v6;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2330, &qword_1D5672B30);
  sub_1D4E62A60(&qword_1EDD53468, &qword_1EC7F2330, &qword_1D5672B30, &protocol conformance descriptor for MusicLibrary.ItemState<A>);
  v15 = sub_1D560C838();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D55A9C28;
  *(v10 + 24) = v9;
  sub_1D560C898();

  v11 = sub_1D560C948();

  *(v2 + v4) = v11;

  return v2;
}

uint64_t sub_1D55942E0(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1EC7F0070;
  *(v1 + qword_1EC7F0070) = 0;
  sub_1D5613D28();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v17 = v15;
  sub_1D534329C(&v13);
  v5 = v13;
  swift_beginAccess();
  v17 = v5;
  sub_1D560C8B8();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v6 = v16;
  if (v16 == 1)
  {
    v7 = v15 & 7;
  }

  else
  {
    v7 = v15;
  }

  swift_beginAccess();
  v13 = v7;
  v14 = v6;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8420, &unk_1D56725A8);
  sub_1D4E62A60(&qword_1EC7F8428, &qword_1EC7F8420, &unk_1D56725A8, &protocol conformance descriptor for MusicLibrary.ItemState<A>);
  v15 = sub_1D560C838();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D55A7B9C;
  *(v10 + 24) = v9;
  sub_1D560C898();

  v11 = sub_1D560C948();

  *(v2 + v4) = v11;

  return v2;
}

uint64_t sub_1D55945CC(uint64_t a1)
{
  v2 = v1;
  v4 = qword_1EC7F0070;
  *(v1 + qword_1EC7F0070) = 0;
  sub_1D5614898();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v17 = v15;
  sub_1D534329C(&v13);
  v5 = v13;
  swift_beginAccess();
  v17 = v5;
  sub_1D560C8B8();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D560C8F8();

  v6 = v16;
  if (v16 == 1)
  {
    v7 = v15 & 7;
  }

  else
  {
    v7 = v15;
  }

  swift_beginAccess();
  v13 = v7;
  v14 = v6;
  sub_1D560C8B8();
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2358, &qword_1D5672860);
  sub_1D4E62A60(&qword_1EC7F2360, &qword_1EC7F2358, &qword_1D5672860, &protocol conformance descriptor for MusicLibrary.ItemState<A>);
  v15 = sub_1D560C838();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1D55A8C8C;
  *(v10 + 24) = v9;
  sub_1D560C898();

  v11 = sub_1D560C948();

  *(v2 + v4) = v11;

  return v2;
}

uint64_t sub_1D5594928()
{
  OUTLINED_FUNCTION_269_2();
  v0(0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_449();
  OUTLINED_FUNCTION_64_5();
  return sub_1D560C908();
}

void sub_1D55949B8()
{
  OUTLINED_FUNCTION_47();
  v22 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1D560C988();
  OUTLINED_FUNCTION_4();
  v24 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v23 = sub_1D560C9B8();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  sub_1D4ECC7A8(0, &qword_1EDD5F060, 0x1E69E9610);
  v19 = sub_1D5615738();
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v4;
  v25[4] = v2;
  v25[5] = v20;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 1107296256;
  v25[2] = sub_1D4E735E0;
  v25[3] = v22;
  v21 = _Block_copy(v25);

  sub_1D560C9A8();
  v25[0] = MEMORY[0x1E69E7CC0];
  sub_1D55ACD00(&qword_1EDD5D840, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0108, &unk_1D563C2C0);
  sub_1D4E62A60(&qword_1EDD5D060, &qword_1EC7F0108, &unk_1D563C2C0, MEMORY[0x1E69E6328]);
  sub_1D56159E8();
  MEMORY[0x1DA6EB530](0, v18, v12, v21);
  _Block_release(v21);

  (*(v24 + 8))(v12, v7);
  (*(v14 + 8))(v18, v23);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5594C78()
{
  OUTLINED_FUNCTION_269_2();
  OUTLINED_FUNCTION_146();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_103_13();
    OUTLINED_FUNCTION_376_1();
    sub_1D5594D14();
  }

  return result;
}

uint64_t sub_1D5594D14()
{
  OUTLINED_FUNCTION_272_3();
  v0 = OUTLINED_FUNCTION_116_9();
  v1(v0);
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_109();
  sub_1D560C8F8();

  v4 = v5;
  sub_1D534329C(&v3);
  sub_1D55948B8();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_109();
  sub_1D560C8F8();

  OUTLINED_FUNCTION_64_5();
  return sub_1D5594928();
}

double sub_1D5594E74@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MusicPin.Item(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3_8();
  MusicPin.item.getter(v1);
  MusicPin.Item.innerItem.getter(v6);
  sub_1D55AC6B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_1D5594F58@<D0>(uint64_t a1@<X8>)
{
  sub_1D5613D28();
  sub_1D560D078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D5594FEC@<X0>(BOOL *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D88, &unk_1D5643CB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1D559529C(&v9 - v4);
  v6 = type metadata accessor for MusicPin(0);
  v7 = __swift_getEnumTagSinglePayload(v5, 1, v6) != 1;
  result = sub_1D4E50004(v5, &qword_1EC7F1D88, &unk_1D5643CB0);
  *a2 = v7;
  return result;
}

void sub_1D55950B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  OUTLINED_FUNCTION_352_1();
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D88, &unk_1D5643CB0);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  OUTLINED_FUNCTION_75_2();
  OUTLINED_FUNCTION_64_5();
  sub_1D5595180(v28, v29, v30, v31);
  v32 = type metadata accessor for MusicPin(0);
  v33 = __swift_getEnumTagSinglePayload(v27, 1, v32) != 1;
  v34 = OUTLINED_FUNCTION_130();
  sub_1D4E50004(v34, v35, &unk_1D5643CB0);
  *v23 = v33;
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D5595180(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v16[3] = a2(0);
  v16[4] = a3;
  __swift_allocate_boxed_opaque_existential_0(v16);
  OUTLINED_FUNCTION_24_0();
  (*(v11 + 16))();
  sub_1D51FEC44(v10);
  v15 = v16;
  v12 = sub_1D5595458(a4, v14);
  sub_1D4EC9F84(v12);

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_1D559529C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - v3;
  sub_1D5613D28();
  sub_1D560D078();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC4F8, &unk_1D562AA60);
  if (swift_dynamicCast())
  {
    if (*(&v11 + 1))
    {
      sub_1D4E48324(&v10, v13);
      v5 = sub_1D51FEC44(v4);
      MEMORY[0x1EEE9AC00](v5);
      *(&v9 - 2) = v13;
      v6 = sub_1D5595458(sub_1D5205C14, (&v9 - 4));
      sub_1D4EC9F84(v6);

      return __swift_destroy_boxed_opaque_existential_1(v13);
    }
  }

  else
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  sub_1D4E50004(&v10, &qword_1EC7EC500, &unk_1D5621030);
  v8 = type metadata accessor for MusicPin(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v8);
}

unint64_t sub_1D5595458(uint64_t (*a1)(char *), uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v3 = type metadata accessor for MusicPin(0);
  v4 = OUTLINED_FUNCTION_69(v3);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v36 = v6 - v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D90, &qword_1D5643CC0) - 8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v34 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1D28, &qword_1D5643A60);
  OUTLINED_FUNCTION_163_0();
  sub_1D4E62A60(v18, &qword_1EC7F1D28, &qword_1D5643A60, v19);
  sub_1D5614F98();
  v20 = *(v14 + 44);
  OUTLINED_FUNCTION_14_1();
  sub_1D4E62A60(v21, &qword_1EC7F1D28, &qword_1D5643A60, v22);
  v37 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D5615648();
    if (*&v17[v20] == v40[0])
    {
      sub_1D4E50004(v17, &qword_1EC7F1D90, &qword_1D5643CC0);
      return v37;
    }

    v23 = sub_1D5615688();
    sub_1D55AC65C(v24, v11);
    v23(v40, 0);
    sub_1D5615658();
    sub_1D55AC9B8(v11, v13);
    v25 = v38(v13);
    if (v2)
    {
      break;
    }

    if (v25)
    {
      sub_1D55AC9B8(v13, v36);
      v26 = v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D4F03DB4(0, *(v26 + 16) + 1, 1);
        v26 = v41;
      }

      v29 = *(v26 + 16);
      v28 = *(v26 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        v37 = v29 + 1;
        sub_1D4F03DB4(v28 > 1, v29 + 1, 1);
        v30 = v37;
        v26 = v41;
      }

      *(v26 + 16) = v30;
      v31 = (*(v35 + 80) + 32) & ~*(v35 + 80);
      v37 = v26;
      sub_1D55AC9B8(v36, v26 + v31 + *(v35 + 72) * v29);
    }

    else
    {
      sub_1D55AC6B4();
    }
  }

  sub_1D55AC6B4();
  sub_1D4E50004(v17, &qword_1EC7F1D90, &qword_1D5643CC0);
  v32 = v37;

  return v32;
}

uint64_t sub_1D559581C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v5 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_304_3(v5);
  v6 = sub_1D560EEA8();
  v0[24] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[25] = v7;
  v8 = OUTLINED_FUNCTION_167();
  v0[27] = OUTLINED_FUNCTION_454(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8450, &qword_1D5672A00);
  v0[28] = v9;
  OUTLINED_FUNCTION_22(v9);
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D5595B70()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5595D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_409(v13);
  sub_1D4E50004(v10, &qword_1EC7F8450, &qword_1D5672A00);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D5595E10()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v5 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_304_3(v5);
  v6 = sub_1D5613838();
  v0[24] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[25] = v7;
  v8 = OUTLINED_FUNCTION_167();
  v0[27] = OUTLINED_FUNCTION_454(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8460, &qword_1D5672AF0);
  v0[28] = v9;
  OUTLINED_FUNCTION_22(v9);
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D5596164()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5596364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_409(v13);
  sub_1D4E50004(v10, &qword_1EC7F8460, &qword_1D5672AF0);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D5596404()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v5 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_304_3(v5);
  v6 = sub_1D5613AF8();
  v0[24] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[25] = v7;
  v8 = OUTLINED_FUNCTION_167();
  v0[27] = OUTLINED_FUNCTION_454(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8470, &qword_1D5672BE0);
  v0[28] = v9;
  OUTLINED_FUNCTION_22(v9);
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D5596758()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5596958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_409(v13);
  sub_1D4E50004(v10, &qword_1EC7F8470, &qword_1D5672BE0);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D55969F8(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D560C368();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = sub_1D5613D28();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8430, &unk_1D5672818);
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5596B60, 0, 0);
}

uint64_t sub_1D5596D98()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5596F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_409(v13);
  sub_1D4E50004(v10, &qword_1EC7F8430, &unk_1D5672818);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D5597038()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v5 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_304_3(v5);
  v6 = sub_1D5614898();
  v0[24] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[25] = v7;
  v8 = OUTLINED_FUNCTION_167();
  v0[27] = OUTLINED_FUNCTION_454(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8440, &qword_1D5672910);
  v0[28] = v9;
  OUTLINED_FUNCTION_22(v9);
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D559738C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559758C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_409(v13);
  sub_1D4E50004(v10, &qword_1EC7F8440, &qword_1D5672910);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D559762C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v5 = OUTLINED_FUNCTION_127();
  v6 = OUTLINED_FUNCTION_304_3(v5);
  v7 = type metadata accessor for MusicMovie(v6);
  v0[24] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[25] = OUTLINED_FUNCTION_167();
  v0[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8478, &qword_1D5672C20);
  v0[27] = v8;
  OUTLINED_FUNCTION_22(v8);
  v0[28] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D559796C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 272) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5597B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_159_12();
  swift_willThrow();
  sub_1D4E50004(v10, &qword_1EC7F8478, &qword_1D5672C20);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D5597C24()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v5 = OUTLINED_FUNCTION_127();
  v6 = OUTLINED_FUNCTION_304_3(v5);
  v7 = type metadata accessor for TVEpisode(v6);
  v0[24] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[25] = OUTLINED_FUNCTION_167();
  v0[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8480, &qword_1D5672C30);
  v0[27] = v8;
  OUTLINED_FUNCTION_22(v8);
  v0[28] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5597F64()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 272) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5598170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_159_12();
  swift_willThrow();
  sub_1D4E50004(v10, &qword_1EC7F8480, &qword_1D5672C30);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D559821C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560C368();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v5 = OUTLINED_FUNCTION_127();
  v6 = OUTLINED_FUNCTION_304_3(v5);
  v7 = type metadata accessor for TVSeason(v6);
  v0[24] = v7;
  OUTLINED_FUNCTION_22(v7);
  v0[25] = OUTLINED_FUNCTION_167();
  v0[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8488, &qword_1D5672C40);
  v0[27] = v8;
  OUTLINED_FUNCTION_22(v8);
  v0[28] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D559855C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 272) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5598768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_159_12();
  swift_willThrow();
  sub_1D4E50004(v10, &qword_1EC7F8488, &qword_1D5672C40);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D5598814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8450, &qword_1D5672A00);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  v13 = sub_1D560EEA8();
  v20 = *(v13 - 8);
  (*(v20 + 16))(a5, a1, v13);
  *(a5 + v10[13]) = v7;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A03B0(a1);
  sub_1D55A1670(v7);
  sub_1D55A1990();

  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (a4 + 32);
    do
    {
      v17 = *v16++;
      v15 |= qword_1D5673030[v17];
      --v14;
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  [v12 setConstraints_];
  v18 = *(v20 + 8);

  return v18(a1, v13);
}

uint64_t sub_1D55989CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8460, &qword_1D5672AF0);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  v13 = sub_1D5613838();
  v20 = *(v13 - 8);
  (*(v20 + 16))(a5, a1, v13);
  *(a5 + v10[13]) = v7;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A0608(a1);
  sub_1D55A16D4(v7);
  sub_1D55A1990();

  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (a4 + 32);
    do
    {
      v17 = *v16++;
      v15 |= qword_1D5673030[v17];
      --v14;
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  [v12 setConstraints_];
  v18 = *(v20 + 8);

  return v18(a1, v13);
}

uint64_t sub_1D5598B84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8470, &qword_1D5672BE0);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  v13 = sub_1D5613AF8();
  v20 = *(v13 - 8);
  (*(v20 + 16))(a5, a1, v13);
  *(a5 + v10[13]) = v7;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A0860(a1);
  sub_1D55A1738(v7);
  sub_1D55A1990();

  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (a4 + 32);
    do
    {
      v17 = *v16++;
      v15 |= qword_1D5673030[v17];
      --v14;
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  [v12 setConstraints_];
  v18 = *(v20 + 8);

  return v18(a1, v13);
}

uint64_t sub_1D5598D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8430, &unk_1D5672818);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  v13 = sub_1D5613D28();
  v20 = *(v13 - 8);
  (*(v20 + 16))(a5, a1, v13);
  *(a5 + v10[13]) = v7;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A0AB8(a1);
  sub_1D55A179C(v7);
  sub_1D55A1990();

  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (a4 + 32);
    do
    {
      v17 = *v16++;
      v15 |= qword_1D5673030[v17];
      --v14;
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  [v12 setConstraints_];
  v18 = *(v20 + 8);

  return v18(a1, v13);
}

uint64_t sub_1D5598EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8440, &qword_1D5672910);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  v13 = sub_1D5614898();
  v20 = *(v13 - 8);
  (*(v20 + 16))(a5, a1, v13);
  *(a5 + v10[13]) = v7;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A0D10(a1);
  sub_1D55A1800(v7);
  sub_1D55A1990();

  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (a4 + 32);
    do
    {
      v17 = *v16++;
      v15 |= qword_1D5673030[v17];
      --v14;
    }

    while (v14);
  }

  else
  {
    v15 = 0;
  }

  [v12 setConstraints_];
  v18 = *(v20 + 8);

  return v18(a1, v13);
}

uint64_t sub_1D55990AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8488, &qword_1D5672C40);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  sub_1D55AC65C(a1, a5);
  *(a5 + v10[13]) = v7;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A0F68(a1);
  sub_1D55A1864(v7);
  sub_1D55A1990();

  v13 = *(a4 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (a4 + 32);
    do
    {
      v16 = *v15++;
      v14 |= qword_1D5673030[v16];
      --v13;
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  [v12 setConstraints_];
  return sub_1D55AC6B4();
}

uint64_t sub_1D559921C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8480, &qword_1D5672C30);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  sub_1D55AC65C(a1, a5);
  *(a5 + v10[13]) = v7;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A11C0(a1);
  sub_1D55A18C8(v7);
  sub_1D55A1990();

  v13 = *(a4 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (a4 + 32);
    do
    {
      v16 = *v15++;
      v14 |= qword_1D5673030[v16];
      --v13;
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  [v12 setConstraints_];
  return sub_1D55AC6B4();
}

uint64_t sub_1D559938C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8478, &qword_1D5672C20);
  v11 = v10[16];
  v12 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryKeepLocalChangeRequest) init];
  *(a5 + v11) = v12;
  sub_1D55AC65C(a1, a5);
  *(a5 + v10[13]) = v7;
  *(a5 + v10[14]) = a3;
  *(a5 + v10[15]) = a4;

  sub_1D55A1418(a1);
  sub_1D55A192C(v7);
  sub_1D55A1990();

  v13 = *(a4 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = (a4 + 32);
    do
    {
      v16 = *v15++;
      v14 |= qword_1D5673030[v16];
      --v13;
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

  [v12 setConstraints_];
  return sub_1D55AC6B4();
}

uint64_t sub_1D55994FC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_131_8(v1, v2);
  v3 = sub_1D560EEA8();
  v0[33] = v3;
  OUTLINED_FUNCTION_69(v3);
  v0[34] = v4;
  v5 = OUTLINED_FUNCTION_167();
  v6 = OUTLINED_FUNCTION_456(v5);
  v7 = OUTLINED_FUNCTION_457(v6);
  v0[37] = v7;
  OUTLINED_FUNCTION_69(v7);
  v0[38] = v8;
  v0[39] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5599858()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 360) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5599958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 336);

  v12 = sub_1D560C738();
  LOBYTE(v11) = sub_1D56156E8();

  if (os_log_type_enabled(v12, v11))
  {
    v13 = OUTLINED_FUNCTION_142();
    a10 = swift_slowAlloc();
    *v13 = 136446210;
    v14 = OUTLINED_FUNCTION_93();
    v17 = sub_1D4E6835C(v14, v15, v16);

    *(v13 + 4) = v17;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v18, v19, "[%{public}s] Completed remove from library operation.");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  sub_1D534045C(v10 + 144);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_14_47();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1D5599A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 352);
  v12 = *(v10 + 336);
  swift_willThrow();
  sub_1D534045C(v10 + 144);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_47();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D5599B2C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_131_8(v1, v2);
  v3 = sub_1D5613838();
  v0[33] = v3;
  OUTLINED_FUNCTION_69(v3);
  v0[34] = v4;
  v5 = OUTLINED_FUNCTION_167();
  v6 = OUTLINED_FUNCTION_456(v5);
  v7 = OUTLINED_FUNCTION_457(v6);
  v0[37] = v7;
  OUTLINED_FUNCTION_69(v7);
  v0[38] = v8;
  v0[39] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D5599E88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 360) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D5599F88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_131_8(v1, v2);
  v3 = sub_1D5613AF8();
  v0[33] = v3;
  OUTLINED_FUNCTION_69(v3);
  v0[34] = v4;
  v5 = OUTLINED_FUNCTION_167();
  v6 = OUTLINED_FUNCTION_456(v5);
  v7 = OUTLINED_FUNCTION_457(v6);
  v0[37] = v7;
  OUTLINED_FUNCTION_69(v7);
  v0[38] = v8;
  v0[39] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D559A2E4(uint64_t a1, uint64_t a2)
{
  v3[31] = a2;
  v3[32] = v2;
  v3[30] = a1;
  v4 = sub_1D5613D28();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v5 = sub_1D560C368();
  v3[37] = v5;
  v3[38] = *(v5 - 8);
  v3[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D559A410, 0, 0);
}

uint64_t sub_1D559A680()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_131_8(v1, v2);
  v3 = sub_1D5614898();
  v0[33] = v3;
  OUTLINED_FUNCTION_69(v3);
  v0[34] = v4;
  v5 = OUTLINED_FUNCTION_167();
  v6 = OUTLINED_FUNCTION_456(v5);
  v7 = OUTLINED_FUNCTION_457(v6);
  v0[37] = v7;
  OUTLINED_FUNCTION_69(v7);
  v0[38] = v8;
  v0[39] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D559A9DC()
{
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_131_8(v1, v2);
  v4 = type metadata accessor for MusicMovie(v3);
  v0[33] = v4;
  OUTLINED_FUNCTION_22(v4);
  v0[34] = OUTLINED_FUNCTION_167();
  v0[35] = swift_task_alloc();
  v5 = sub_1D560C368();
  v0[36] = v5;
  OUTLINED_FUNCTION_69(v5);
  v0[37] = v6;
  v0[38] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D559AAB0()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_270_4(v6, v7, v8, v9);
  v10 = sub_1D560C338();
  v12 = OUTLINED_FUNCTION_160_11(v10, v11);
  v13(v12);
  sub_1D55AC65C(v4, v2);
  sub_1D526EBEC(v3);
  v15 = v14;
  v1[28] = v5;
  OUTLINED_FUNCTION_86_27();
  v1[29] = sub_1D55ACD00(v16, v17, &protocol conformance descriptor for MusicMovie);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 25);
  OUTLINED_FUNCTION_321_1(boxed_opaque_existential_0);
  v19 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init];
  v1[41] = v19;
  OUTLINED_FUNCTION_248_2(v19);
  v1[23] = v15;
  v19;

  sub_1D5341AB8();
  sub_1D5358624(v15);

  OUTLINED_FUNCTION_6_159();
  sub_1D55AC6B4();
  __swift_destroy_boxed_opaque_existential_1(v1 + 25);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v20 = OUTLINED_FUNCTION_385_0();
  v1[42] = OUTLINED_FUNCTION_231_4(v20, qword_1EC87C110);
  OUTLINED_FUNCTION_2_199();
  v21 = OUTLINED_FUNCTION_131();
  sub_1D55AC65C(v21, v22);

  v23 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_302_1())
  {
    OUTLINED_FUNCTION_242_2();
    OUTLINED_FUNCTION_142_10();
    *v15 = 136446466;
    v24 = OUTLINED_FUNCTION_93();
    v27 = sub_1D4E6835C(v24, v25, v26);
    OUTLINED_FUNCTION_42_39(v27);
    OUTLINED_FUNCTION_2_199();
    v28 = OUTLINED_FUNCTION_161();
    sub_1D55AC65C(v28, v29);
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_218_0();
    OUTLINED_FUNCTION_6_159();
    sub_1D55AC6B4();
    v30 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v30, v31, v32);
    OUTLINED_FUNCTION_221_2();
    *(v15 + 14) = v0;
    OUTLINED_FUNCTION_132_14(&dword_1D4E3F000, v33, v34, "[%{public}s] Removing %{public}s from the user’s library.");
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {

    OUTLINED_FUNCTION_6_159();
    sub_1D55AC6B4();
  }

  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_112_11();
  v1[43] = v35;
  v36 = v35;
  OUTLINED_FUNCTION_107_5();

  OUTLINED_FUNCTION_114_6();
  v1[2] = v37;
  OUTLINED_FUNCTION_99_14();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v38);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_12_78();
  OUTLINED_FUNCTION_237_2(v39, sel_performDeleteEntityWithRequest_completionHandler_);
  OUTLINED_FUNCTION_89();

  return MEMORY[0x1EEE6DEC8](v40);
}

uint64_t sub_1D559AD88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 352) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559AE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 328);

  v12 = sub_1D560C738();
  LOBYTE(v11) = sub_1D56156E8();

  if (os_log_type_enabled(v12, v11))
  {
    v13 = OUTLINED_FUNCTION_142();
    a10 = swift_slowAlloc();
    *v13 = 136446210;
    v14 = OUTLINED_FUNCTION_93();
    v17 = sub_1D4E6835C(v14, v15, v16);

    *(v13 + 4) = v17;
    OUTLINED_FUNCTION_163(&dword_1D4E3F000, v18, v19, "[%{public}s] Completed remove from library operation.");
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_83();
  }

  else
  {
  }

  sub_1D534045C(v10 + 144);

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_14_47();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_1D559AFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 344);
  v12 = *(v10 + 328);
  swift_willThrow();
  sub_1D534045C(v10 + 144);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_47();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_1D559B05C()
{
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_131_8(v1, v2);
  v4 = type metadata accessor for TVEpisode(v3);
  v0[33] = v4;
  OUTLINED_FUNCTION_22(v4);
  v0[34] = OUTLINED_FUNCTION_167();
  v0[35] = swift_task_alloc();
  v5 = sub_1D560C368();
  v0[36] = v5;
  OUTLINED_FUNCTION_69(v5);
  v0[37] = v6;
  v0[38] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D559B130()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_270_4(v6, v7, v8, v9);
  v10 = sub_1D560C338();
  v12 = OUTLINED_FUNCTION_160_11(v10, v11);
  v13(v12);
  sub_1D55AC65C(v4, v2);
  sub_1D526EBEC(v3);
  v15 = v14;
  v1[28] = v5;
  OUTLINED_FUNCTION_87_23();
  v1[29] = sub_1D55ACD00(v16, v17, &protocol conformance descriptor for TVEpisode);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 25);
  OUTLINED_FUNCTION_321_1(boxed_opaque_existential_0);
  v19 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init];
  v1[41] = v19;
  OUTLINED_FUNCTION_248_2(v19);
  v1[23] = v15;
  v19;

  sub_1D5341860();
  sub_1D5358624(v15);

  OUTLINED_FUNCTION_7_148();
  sub_1D55AC6B4();
  __swift_destroy_boxed_opaque_existential_1(v1 + 25);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v20 = OUTLINED_FUNCTION_385_0();
  v1[42] = OUTLINED_FUNCTION_231_4(v20, qword_1EC87C110);
  OUTLINED_FUNCTION_3_205();
  v21 = OUTLINED_FUNCTION_131();
  sub_1D55AC65C(v21, v22);

  v23 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_302_1())
  {
    OUTLINED_FUNCTION_242_2();
    OUTLINED_FUNCTION_142_10();
    *v15 = 136446466;
    v24 = OUTLINED_FUNCTION_93();
    v27 = sub_1D4E6835C(v24, v25, v26);
    OUTLINED_FUNCTION_42_39(v27);
    OUTLINED_FUNCTION_3_205();
    v28 = OUTLINED_FUNCTION_161();
    sub_1D55AC65C(v28, v29);
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_218_0();
    OUTLINED_FUNCTION_7_148();
    sub_1D55AC6B4();
    v30 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v30, v31, v32);
    OUTLINED_FUNCTION_221_2();
    *(v15 + 14) = v0;
    OUTLINED_FUNCTION_132_14(&dword_1D4E3F000, v33, v34, "[%{public}s] Removing %{public}s from the user’s library.");
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {

    OUTLINED_FUNCTION_7_148();
    sub_1D55AC6B4();
  }

  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_112_11();
  v1[43] = v35;
  v36 = v35;
  OUTLINED_FUNCTION_107_5();

  OUTLINED_FUNCTION_114_6();
  v1[2] = v37;
  OUTLINED_FUNCTION_99_14();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v38);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_12_78();
  OUTLINED_FUNCTION_237_2(v39, sel_performDeleteEntityWithRequest_completionHandler_);
  OUTLINED_FUNCTION_89();

  return MEMORY[0x1EEE6DEC8](v40);
}

uint64_t sub_1D559B408()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 352) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559B508()
{
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_131_8(v1, v2);
  v4 = type metadata accessor for TVSeason(v3);
  v0[33] = v4;
  OUTLINED_FUNCTION_22(v4);
  v0[34] = OUTLINED_FUNCTION_167();
  v0[35] = swift_task_alloc();
  v5 = sub_1D560C368();
  v0[36] = v5;
  OUTLINED_FUNCTION_69(v5);
  v0[37] = v6;
  v0[38] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D559B5DC()
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  OUTLINED_FUNCTION_270_4(v6, v7, v8, v9);
  v10 = sub_1D560C338();
  v12 = OUTLINED_FUNCTION_160_11(v10, v11);
  v13(v12);
  sub_1D55AC65C(v4, v2);
  sub_1D526EBEC(v3);
  v15 = v14;
  v1[28] = v5;
  OUTLINED_FUNCTION_89_22();
  v1[29] = sub_1D55ACD00(v16, v17, &protocol conformance descriptor for TVSeason);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 25);
  OUTLINED_FUNCTION_321_1(boxed_opaque_existential_0);
  v19 = [objc_allocWithZone(MusicKit_SoftLinking_MPModelLibraryDeleteEntityChangeRequest) init];
  v1[41] = v19;
  OUTLINED_FUNCTION_248_2(v19);
  v1[23] = v15;
  v19;

  sub_1D5341608();
  sub_1D5358624(v15);

  OUTLINED_FUNCTION_8_137();
  sub_1D55AC6B4();
  __swift_destroy_boxed_opaque_existential_1(v1 + 25);
  if (qword_1EC7E8DE0 != -1)
  {
    OUTLINED_FUNCTION_2_140(&qword_1EC7E8DE0);
  }

  v20 = OUTLINED_FUNCTION_385_0();
  v1[42] = OUTLINED_FUNCTION_231_4(v20, qword_1EC87C110);
  OUTLINED_FUNCTION_4_160();
  v21 = OUTLINED_FUNCTION_131();
  sub_1D55AC65C(v21, v22);

  v23 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_302_1())
  {
    OUTLINED_FUNCTION_242_2();
    OUTLINED_FUNCTION_142_10();
    *v15 = 136446466;
    v24 = OUTLINED_FUNCTION_93();
    v27 = sub_1D4E6835C(v24, v25, v26);
    OUTLINED_FUNCTION_42_39(v27);
    OUTLINED_FUNCTION_4_160();
    v28 = OUTLINED_FUNCTION_161();
    sub_1D55AC65C(v28, v29);
    OUTLINED_FUNCTION_394();
    OUTLINED_FUNCTION_218_0();
    OUTLINED_FUNCTION_8_137();
    sub_1D55AC6B4();
    v30 = OUTLINED_FUNCTION_128();
    sub_1D4E6835C(v30, v31, v32);
    OUTLINED_FUNCTION_221_2();
    *(v15 + 14) = v0;
    OUTLINED_FUNCTION_132_14(&dword_1D4E3F000, v33, v34, "[%{public}s] Removing %{public}s from the user’s library.");
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_41_1();
  }

  else
  {

    OUTLINED_FUNCTION_8_137();
    sub_1D55AC6B4();
  }

  OUTLINED_FUNCTION_241_2();
  OUTLINED_FUNCTION_112_11();
  v1[43] = v35;
  v36 = v35;
  OUTLINED_FUNCTION_107_5();

  OUTLINED_FUNCTION_114_6();
  v1[2] = v37;
  OUTLINED_FUNCTION_99_14();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3D8, &unk_1D5666190);
  OUTLINED_FUNCTION_35_7(v38);
  OUTLINED_FUNCTION_42_14(COERCE_DOUBLE(1107296256));
  OUTLINED_FUNCTION_12_78();
  OUTLINED_FUNCTION_237_2(v39, sel_performDeleteEntityWithRequest_completionHandler_);
  OUTLINED_FUNCTION_89();

  return MEMORY[0x1EEE6DEC8](v40);
}

uint64_t sub_1D559B8B4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D560EEA8();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v5 = OUTLINED_FUNCTION_167();
  v0[24] = OUTLINED_FUNCTION_297_1(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8450, &qword_1D5672A00);
  v0[25] = v6;
  OUTLINED_FUNCTION_22(v6);
  v7 = OUTLINED_FUNCTION_127();
  v8 = OUTLINED_FUNCTION_453(v7);
  v0[27] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[28] = v9;
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D559BBE8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559BDE8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D5613838();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v5 = OUTLINED_FUNCTION_167();
  v0[24] = OUTLINED_FUNCTION_297_1(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8460, &qword_1D5672AF0);
  v0[25] = v6;
  OUTLINED_FUNCTION_22(v6);
  v7 = OUTLINED_FUNCTION_127();
  v8 = OUTLINED_FUNCTION_453(v7);
  v0[27] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[28] = v9;
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D559C11C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559C31C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D5613AF8();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v5 = OUTLINED_FUNCTION_167();
  v0[24] = OUTLINED_FUNCTION_297_1(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8470, &qword_1D5672BE0);
  v0[25] = v6;
  OUTLINED_FUNCTION_22(v6);
  v7 = OUTLINED_FUNCTION_127();
  v8 = OUTLINED_FUNCTION_453(v7);
  v0[27] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[28] = v9;
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D559C650()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559C850(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D5613D28();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8430, &unk_1D5672818);
  v3[26] = swift_task_alloc();
  v5 = sub_1D560C368();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D559C9B8, 0, 0);
}

uint64_t sub_1D559CBD4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559CDD4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_66_29(v1, v2);
  v3 = sub_1D5614898();
  OUTLINED_FUNCTION_44_45(v3);
  v0[22] = v4;
  v5 = OUTLINED_FUNCTION_167();
  v0[24] = OUTLINED_FUNCTION_297_1(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8440, &qword_1D5672910);
  v0[25] = v6;
  OUTLINED_FUNCTION_22(v6);
  v7 = OUTLINED_FUNCTION_127();
  v8 = OUTLINED_FUNCTION_453(v7);
  v0[27] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[28] = v9;
  v0[29] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D559D108()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559D308()
{
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_66_29(v1, v2);
  v4 = type metadata accessor for MusicMovie(v3);
  v0[21] = v4;
  OUTLINED_FUNCTION_22(v4);
  v0[22] = OUTLINED_FUNCTION_167();
  v0[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8478, &qword_1D5672C20);
  v0[24] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[25] = OUTLINED_FUNCTION_127();
  v6 = sub_1D560C368();
  v0[26] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[27] = v7;
  v0[28] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D559D648()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 272) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559D858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_159_12();
  v13 = *(v10 + 200);
  swift_willThrow();
  sub_1D4E50004(v13, &qword_1EC7F8478, &qword_1D5672C20);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D559D904()
{
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_66_29(v1, v2);
  v4 = type metadata accessor for TVEpisode(v3);
  v0[21] = v4;
  OUTLINED_FUNCTION_22(v4);
  v0[22] = OUTLINED_FUNCTION_167();
  v0[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8480, &qword_1D5672C30);
  v0[24] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[25] = OUTLINED_FUNCTION_127();
  v6 = sub_1D560C368();
  v0[26] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[27] = v7;
  v0[28] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D559DC44()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 272) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559DE54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_159_12();
  v13 = *(v10 + 200);
  swift_willThrow();
  sub_1D4E50004(v13, &qword_1EC7F8480, &qword_1D5672C30);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D559DF00()
{
  OUTLINED_FUNCTION_60();
  v3 = OUTLINED_FUNCTION_66_29(v1, v2);
  v4 = type metadata accessor for TVSeason(v3);
  v0[21] = v4;
  OUTLINED_FUNCTION_22(v4);
  v0[22] = OUTLINED_FUNCTION_167();
  v0[23] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8488, &qword_1D5672C40);
  v0[24] = v5;
  OUTLINED_FUNCTION_22(v5);
  v0[25] = OUTLINED_FUNCTION_127();
  v6 = sub_1D560C368();
  v0[26] = v6;
  OUTLINED_FUNCTION_69(v6);
  v0[27] = v7;
  v0[28] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D559E240()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 272) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559E450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_159_12();
  v13 = *(v10 + 200);
  swift_willThrow();
  sub_1D4E50004(v13, &qword_1EC7F8488, &qword_1D5672C40);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D559E4FC(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D560EEA8();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8450, &qword_1D5672A00);
  v3[26] = swift_task_alloc();
  v5 = sub_1D560C368();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D559E664, 0, 0);
}

uint64_t sub_1D559E880()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559EA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_407(v13);
  sub_1D4E50004(v10, &qword_1EC7F8450, &qword_1D5672A00);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D559EB20(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D5613838();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8460, &qword_1D5672AF0);
  v3[26] = swift_task_alloc();
  v5 = sub_1D560C368();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D559EC88, 0, 0);
}

uint64_t sub_1D559EEA4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559F0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_407(v13);
  sub_1D4E50004(v10, &qword_1EC7F8460, &qword_1D5672AF0);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D559F144(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D5613AF8();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8470, &qword_1D5672BE0);
  v3[26] = swift_task_alloc();
  v5 = sub_1D560C368();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D559F2AC, 0, 0);
}

uint64_t sub_1D559F4C8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559F6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_407(v13);
  sub_1D4E50004(v10, &qword_1EC7F8470, &qword_1D5672BE0);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D559F768(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D5613D28();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8430, &unk_1D5672818);
  v3[26] = swift_task_alloc();
  v5 = sub_1D560C368();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D559F8D0, 0, 0);
}

uint64_t sub_1D559FAEC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D559FCEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_407(v13);
  sub_1D4E50004(v10, &qword_1EC7F8430, &unk_1D5672818);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D559FD8C(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = sub_1D5614898();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8440, &qword_1D5672910);
  v3[26] = swift_task_alloc();
  v5 = sub_1D560C368();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D559FEF4, 0, 0);
}

uint64_t sub_1D55A0110()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_130_12();
  OUTLINED_FUNCTION_24_1();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 280) = v4;
  if (v4)
  {
  }

  OUTLINED_FUNCTION_25_16();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D55A0310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_101_17();
  OUTLINED_FUNCTION_407(v13);
  sub_1D4E50004(v10, &qword_1EC7F8440, &qword_1D5672910);

  OUTLINED_FUNCTION_85_26();
  OUTLINED_FUNCTION_25_3();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1D55A03B0(uint64_t a1)
{
  v3 = sub_1D560EEA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D56131C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22[-1] - v12;
  v23 = v3;
  v24 = MEMORY[0x1E69754E0];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  v15 = *(v4 + 16);
  v15(boxed_opaque_existential_0, a1, v3);
  v16 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8450, &qword_1D5672A00) + 64));
  v17 = __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v8 + 104))(v13, *MEMORY[0x1E6976988], v7);
  (*(v8 + 16))(v11, v13, v7);
  v15(v6, v17, v3);
  sub_1D4ECB998(v6, v11);
  v19 = v18;
  (*(v8 + 8))(v13, v7);
  [v16 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D55A0608(uint64_t a1)
{
  v3 = sub_1D5613838();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D56131C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22[-1] - v12;
  v23 = v3;
  v24 = MEMORY[0x1E6976BE0];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  v15 = *(v4 + 16);
  v15(boxed_opaque_existential_0, a1, v3);
  v16 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8460, &qword_1D5672AF0) + 64));
  v17 = __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v8 + 104))(v13, *MEMORY[0x1E6976988], v7);
  (*(v8 + 16))(v11, v13, v7);
  v15(v6, v17, v3);
  sub_1D4ECB9C0(v6, v11);
  v19 = v18;
  (*(v8 + 8))(v13, v7);
  [v16 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D55A0860(uint64_t a1)
{
  v3 = sub_1D5613AF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D56131C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22[-1] - v12;
  v23 = v3;
  v24 = MEMORY[0x1E6976D20];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  v15 = *(v4 + 16);
  v15(boxed_opaque_existential_0, a1, v3);
  v16 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8470, &qword_1D5672BE0) + 64));
  v17 = __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v8 + 104))(v13, *MEMORY[0x1E6976988], v7);
  (*(v8 + 16))(v11, v13, v7);
  v15(v6, v17, v3);
  sub_1D4ECB9E8(v6, v11);
  v19 = v18;
  (*(v8 + 8))(v13, v7);
  [v16 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D55A0AB8(uint64_t a1)
{
  v3 = sub_1D5613D28();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D56131C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22[-1] - v12;
  v23 = v3;
  v24 = MEMORY[0x1E6976E58];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  v15 = *(v4 + 16);
  v15(boxed_opaque_existential_0, a1, v3);
  v16 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8430, &unk_1D5672818) + 64));
  v17 = __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v8 + 104))(v13, *MEMORY[0x1E6976988], v7);
  (*(v8 + 16))(v11, v13, v7);
  v15(v6, v17, v3);
  sub_1D4ECADC8(v6, v11);
  v19 = v18;
  (*(v8 + 8))(v13, v7);
  [v16 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D55A0D10(uint64_t a1)
{
  v3 = sub_1D5614898();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D56131C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v22[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22[-1] - v12;
  v23 = v3;
  v24 = MEMORY[0x1E69773D8];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v22);
  v15 = *(v4 + 16);
  v15(boxed_opaque_existential_0, a1, v3);
  v16 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8440, &qword_1D5672910) + 64));
  v17 = __swift_project_boxed_opaque_existential_1(v22, v23);
  (*(v8 + 104))(v13, *MEMORY[0x1E6976988], v7);
  (*(v8 + 16))(v11, v13, v7);
  v15(v6, v17, v3);
  sub_1D4ECAE6C(v6, v11);
  v19 = v18;
  (*(v8 + 8))(v13, v7);
  [v16 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1D55A0F68(uint64_t a1)
{
  v3 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D56131C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-1] - v11;
  v21 = v3;
  v22 = sub_1D55ACD00(&qword_1EC7EA480, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  sub_1D55AC65C(a1, boxed_opaque_existential_0);
  v14 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8488, &qword_1D5672C40) + 64));
  v15 = __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v7 + 104))(v12, *MEMORY[0x1E6976988], v6);
  (*(v7 + 16))(v10, v12, v6);
  sub_1D55AC65C(v15, v5);
  sub_1D4ECC300();
  v17 = v16;
  (*(v7 + 8))(v12, v6);
  [v14 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1D55A11C0(uint64_t a1)
{
  v3 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D56131C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-1] - v11;
  v21 = v3;
  v22 = sub_1D55ACD00(&qword_1EC7EA578, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  sub_1D55AC65C(a1, boxed_opaque_existential_0);
  v14 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8480, &qword_1D5672C30) + 64));
  v15 = __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v7 + 104))(v12, *MEMORY[0x1E6976988], v6);
  (*(v7 + 16))(v10, v12, v6);
  sub_1D55AC65C(v15, v5);
  sub_1D4ECB77C();
  v17 = v16;
  (*(v7 + 8))(v12, v6);
  [v14 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_1D55A1418(uint64_t a1)
{
  v3 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D56131C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-1] - v11;
  v21 = v3;
  v22 = sub_1D55ACD00(&qword_1EC7EA580, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v20);
  sub_1D55AC65C(a1, boxed_opaque_existential_0);
  v14 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8478, &qword_1D5672C20) + 64));
  v15 = __swift_project_boxed_opaque_existential_1(v20, v21);
  (*(v7 + 104))(v12, *MEMORY[0x1E6976988], v6);
  (*(v7 + 16))(v10, v12, v6);
  sub_1D55AC65C(v15, v5);
  sub_1D4ECB560();
  v17 = v16;
  (*(v7 + 8))(v12, v6);
  [v14 setModelObject_];

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

id sub_1D55A1670(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8450, &qword_1D5672A00) + 64));

  return [v3 setEnableState_];
}

id sub_1D55A16D4(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8460, &qword_1D5672AF0) + 64));

  return [v3 setEnableState_];
}

id sub_1D55A1738(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8470, &qword_1D5672BE0) + 64));

  return [v3 setEnableState_];
}

id sub_1D55A179C(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8430, &unk_1D5672818) + 64));

  return [v3 setEnableState_];
}

id sub_1D55A1800(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8440, &qword_1D5672910) + 64));

  return [v3 setEnableState_];
}

id sub_1D55A1864(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8488, &qword_1D5672C40) + 64));

  return [v3 setEnableState_];
}

id sub_1D55A18C8(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8480, &qword_1D5672C30) + 64));

  return [v3 setEnableState_];
}

id sub_1D55A192C(char a1)
{
  v2 = qword_1D5673058[a1];
  v3 = *(v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F8478, &qword_1D5672C20) + 64));

  return [v3 setEnableState_];
}

void sub_1D55A1990()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1D555AB38();
  if (v12)
  {
    v13 = v12;
    v14 = *(v12 + 16);
    if (v14)
    {
      v23 = v4;
      v24 = v2;
      v28 = MEMORY[0x1E69E7CC0];
      sub_1D5615CB8();
      v15 = v13 + 32;
      v16 = *MEMORY[0x1E6976988];
      v17 = (v7 + 104);
      v18 = (v7 + 8);
      do
      {
        sub_1D4E62938(v15, v25);
        v19 = v26;
        v20 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        (*v17)(v11, v16, v5);
        sub_1D5159364(v11, v19, v20);
        (*v18)(v11, v5);
        __swift_destroy_boxed_opaque_existential_1(v25);
        sub_1D5615C88();
        sub_1D5615CC8();
        OUTLINED_FUNCTION_98();
        sub_1D5615CD8();
        sub_1D5615C98();
        v15 += 40;
        --v14;
      }

      while (v14);

      v2 = v24;
      v4 = v23;
    }

    else
    {
    }

    v21 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v4, v2) + 64));
    sub_1D4ECC7A8(0, &qword_1EDD52630, 0x1E6977640);
    v22 = sub_1D5615158();

    [v21 setRelatedModelObjects_];

    OUTLINED_FUNCTION_46();
  }

  else
  {
    OUTLINED_FUNCTION_53_9();
    OUTLINED_FUNCTION_11_28();
    sub_1D5615E08();
    __break(1u);
  }
}

uint64_t sub_1D55A1C0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D55ACF54;

  return static Presto_MusicLibraryAddable.add<A>(_:)();
}

uint64_t sub_1D55A1CA8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7(v0, v1, v2, 94, v3, v4);
}

uint64_t sub_1D55A1D0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D514A678;

  return static Presto_MusicLibraryAddable.add<A, B, C>(_:referralItem:relatedItems:)();
}

uint64_t sub_1D55A1DA8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7(v0, v1, v2, 120, v3, v4);
}

uint64_t sub_1D55A1E0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return static Presto_MusicLibraryAddable.remove(_:)();
}

uint64_t sub_1D55A1EA8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7(v0, v1, v2, 97, v3, v4);
}

uint64_t sub_1D55A1F0C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return static Presto_MusicLibraryAddable.remove<A>(_:relatedItems:)();
}

uint64_t sub_1D55A1FA8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7(v0, v1, v2, 110, v3, v4);
}

uint64_t sub_1D55A200C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return static Presto_MusicLibraryAddable.download(_:)();
}

uint64_t sub_1D55A20A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7(v0, v1, v2, 99, v3, v4);
}

uint64_t sub_1D55A210C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return static Presto_MusicLibraryAddable.download<A>(_:relatedItems:)();
}

uint64_t sub_1D55A21A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7(v0, v1, v2, 112, v3, v4);
}

uint64_t sub_1D55A220C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return static Presto_MusicLibraryAddable.removeDownload(_:)();
}

uint64_t sub_1D55A22A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7(v0, v1, v2, 105, v3, v4);
}

uint64_t sub_1D55A230C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return static Presto_MusicLibraryAddable.removeDownload<A>(_:relatedItems:)();
}

uint64_t sub_1D55A23A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7(v0, v1, v2, 118, v3, v4);
}

uint64_t sub_1D55A240C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E73560;

  return static Presto_MusicLibraryAddable.cancelDownload(_:)();
}

uint64_t sub_1D55A24A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7(v0, v1, v2, 105, v3, v4);
}

uint64_t sub_1D55A250C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E6ED20;

  return static Presto_MusicLibraryAddable.cancelDownload<A>(_:relatedItems:)();
}

uint64_t sub_1D55A25A8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  return OUTLINED_FUNCTION_202_7(v0, v1, v2, 118, v3, v4);
}

void static Presto_MusicLibraryAddable.itemState(_:)()
{
  OUTLINED_FUNCTION_95_1();
  OUTLINED_FUNCTION_11_28();
  OUTLINED_FUNCTION_202_7(v0, v1, v2, 100, v3, v4);
  __break(1u);
}

uint64_t static Presto_MusicLibraryAddable<>.add<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a4;
  v6[6] = a6;
  v6[3] = a2;
  v6[4] = a3;
  v6[2] = a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D55A268C()
{
  OUTLINED_FUNCTION_60();
  sub_1D560F0D8();
  *(v0 + 56) = _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1D55A2740;

  return MusicLibrary.add<A, B>(_:)();
}

uint64_t sub_1D55A2740()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_437();

    return v11(v10);
  }
}

uint64_t static Presto_MusicLibraryAddable<>.add<A, B, C>(_:referralItem:relatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  *(v11 + 96) = a11;
  *(v11 + 80) = a10;
  *(v11 + 64) = a7;
  *(v11 + 72) = a8;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  return OUTLINED_FUNCTION_238_4();
}

uint64_t sub_1D55A289C()
{
  OUTLINED_FUNCTION_60();
  sub_1D560F0D8();
  *(v0 + 104) = _s8MusicKit0A7LibraryC0aB8InternalE6deviceACvgZ_0();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1D55A2968;

  return MusicLibrary.add<A, B, C, D>(_:referralItem:relatedItems:)();
}

uint64_t sub_1D55A2968()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  *(v3 + 120) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_73_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = OUTLINED_FUNCTION_437();

    return v11(v10);
  }
}

uint64_t sub_1D55A2A94()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}