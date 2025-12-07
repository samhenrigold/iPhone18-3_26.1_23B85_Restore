@interface LSContainerAddWithNode
@end

@implementation LSContainerAddWithNode

void ___LSContainerAddWithNode_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v2 = *(a1 + 32);
  v43 = 0;
  v3 = _LSCreateContainerNodesAndFlagsForNode(v2, &v46, &v45, &v44, &v43);
  v4 = v43;
  if (v46)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v42 = v4;
    v6 = [v46 bookmarkDataRelativeToNode:0 error:&v42];
    v7 = v42;

    v3 = v6 != 0;
    v4 = v7;
  }

  else
  {
    v6 = 0;
  }

  if (!v3 || v45 == 0)
  {
    v9 = 0;
  }

  else
  {
    v41 = v4;
    v9 = [(FSNode *)v45 bookmarkDataRelativeToNode:0 error:&v41];
    v10 = v41;

    if (!v9)
    {
      v12 = _LSDefaultLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 32);
        *buf = 138478083;
        *&buf[4] = v13;
        *&buf[12] = 2113;
        *&buf[14] = v45;
        _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_INFO, "_LSContainerAddWithNode(%{private}@, failed to get bookmarkData for diskImageNode %{private}@ but registering this container anyway.", buf, 0x16u);
      }

      v9 = 0;
    }

    v4 = v10;
  }

  v40 = 0;
  v14 = v46;
  if (v46)
  {
    v15 = v3;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    v39 = v4;
    v16 = [v46 getVolumeIdentifier:&v40 error:&v39];
    v37 = v39;

    if (v16)
    {
      v14 = v46;
      v17 = v40;
LABEL_26:
      v18 = v44;
      v19 = *(a1 + 56);
      v38 = *(a1 + 40);
      v20 = v14;
      v36 = v6;
      v21 = v6;
      v22 = v9;
      v23 = v38;
      MEMORY[0x1865D7C40](v23, v24);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke;
      v50 = &unk_1E6A1B400;
      v25 = v20;
      v56 = v18;
      v51 = v25;
      v55 = v17;
      v26 = v23;
      v54 = v38;
      v27 = v21;
      v52 = v27;
      v28 = v22;
      v53 = v28;
      v29 = MEMORY[0x1865D71B0](buf);
      v6 = v36;
      v30 = v29;
      if (v19)
      {
        (*(v29 + 16))(v29);
      }

      else
      {
        v35 = +[LSDBExecutionContext sharedServerInstance];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = ___ZL15_LSContainerAddP9LSContextP6FSNodeP6NSDataS2_S4_tyhU13block_pointerFvjP7NSErrorE_block_invoke_42;
        v47[3] = &unk_1E6A1A660;
        v48 = v30;
        [(LSDBExecutionContext *)v35 performAsyncWrite:v47];
      }

      v4 = v37;
      goto LABEL_34;
    }

    v4 = v37;
  }

  else if (v3)
  {
    v17 = 0;
    v37 = v4;
    goto LABEL_26;
  }

  v31 = _LSDefaultLog(v14);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = *(a1 + 32);
    v33 = *(a1 + 56);
    *buf = 138478083;
    *&buf[4] = v32;
    *&buf[12] = 1024;
    *&buf[14] = v33;
    _os_log_impl(&dword_18162D000, v31, OS_LOG_TYPE_INFO, "_LSContainerAddWithNode(%{private}@ sync=%{BOOL}d) failed to add container.", buf, 0x12u);
  }

  v34 = (*(*(a1 + 40) + 16))();
LABEL_34:
  MEMORY[0x1865D7C50](v34);
}

@end