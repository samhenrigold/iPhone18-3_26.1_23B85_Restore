@interface SIActivityDump
@end

@implementation SIActivityDump

void ___SIActivityDump_block_invoke(uint64_t a1, int *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  memset(v57, 0, 256);
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v4 = *a2;
  v5 = *a2 - 1;
  *v41 = 0u;
  v42 = 0u;
  v6 = "CreateIndex";
  switch(v5)
  {
    case 0:
    case 36:
      break;
    case 1:
    case 32:
    case 37:
      v6 = "OpenIndex";
      break;
    case 2:
    case 33:
    case 38:
      v6 = "OpenIndexShadow";
      break;
    case 3:
    case 6:
    case 7:
    case 34:
    case 35:
LABEL_15:
      v15 = *(a1 + 48);
      get_date_string(*(a1 + 56), v57, *(a2 + 3));
      fprintf(v15, "%s time: %s\n");
      return;
    case 4:
    case 39:
      v6 = "SyncIndex";
      break;
    case 5:
LABEL_26:
      v40 = *(a2 + 4);
      v17 = localtime(&v40);
      strftime(v41, 0x100uLL, "%F %T", v17);
      v18 = *(a1 + 48);
      get_date_string(*(a1 + 56), v57, *(a2 + 3));
      fprintf(v18, "%s time: %s recoverTimeStamp:%s (%ld)\n");
      goto LABEL_41;
    case 8:
    case 9:
    case 15:
    case 31:
    case 40:
    case 41:
    case 42:
    case 43:
      return;
    case 10:
    case 27:
    case 28:
      v6 = "AddItem";
      break;
    case 11:
    case 13:
    case 14:
    case 59:
    case 60:
LABEL_13:
      v14 = *(a1 + 48);
      if (a2[3])
      {
        fprintf(v14, "%s oid: 0x%llx %lld transaction: %d\n");
      }

      else
      {
        fprintf(v14, "%s oid: 0x%llx %lld\n");
      }

LABEL_52:
      ++*(*(*(a1 + 32) + 8) + 40);
      return;
    case 12:
    case 29:
    case 30:
      v6 = "UpdateItem";
      break;
    case 16:
    case 17:
    case 18:
    case 53:
LABEL_16:
      v16 = *(a2 + 3);
      if ((HIDWORD(v16) == 716189596 || HIDWORD(v16) == 510259174) && (v16 & 0x80000000) == 0 && v16)
      {
        fprintf(*(a1 + 48), "%s id: %d oid: 0x%llx %lld\n");
      }

      else
      {
        fprintf(*(a1 + 48), "%s oid: 0x%llx %lld\n");
      }

      ++*(*(*(a1 + 32) + 8) + 48);
      return;
    case 19:
LABEL_35:
      fprintf(*(a1 + 48), "NewLiveIndex position: %d base: %lld\n");
      return;
    case 20:
    case 21:
LABEL_25:
      fprintf(*(a1 + 48), "%s position: %d count: %d\n");
      return;
    case 22:
LABEL_43:
      fprintf(*(a1 + 48), "NewBundleGroup %d 0x%x %s\n");
      return;
    case 23:
    case 24:
    case 51:
    case 52:
LABEL_21:
      fprintf(*(a1 + 48), "%s journal.%d\n");
      return;
    case 25:
LABEL_36:
      v24 = *(a1 + 48);
      v25 = "Playback start\n";
      v26 = 15;
      goto LABEL_37;
    case 26:
LABEL_34:
      v24 = *(a1 + 48);
      v25 = "Playback end\n";
      v26 = 13;
LABEL_37:

      fwrite(v25, v26, 1uLL, v24);
      return;
    case 44:
    case 46:
    case 49:
      v6 = "AddMailItem";
      break;
    case 45:
    case 47:
    case 48:
    case 50:
      v6 = "UpdateMailItem";
      break;
    case 54:
LABEL_40:
      v27 = *(a1 + 48);
      get_date_string(*(a1 + 56), v57, *(a2 + 3));
      fprintf(v27, "Journal was reset at time %s, size before reset: %llu, size after reset: %llu\n");
LABEL_41:
      v28 = *(a2 + 3);
      goto LABEL_46;
    case 55:
LABEL_42:
      v29 = *(a1 + 48);
      get_date_string(*(a1 + 56), v57, *(a2 + 4));
      fprintf(v29, "%s pid: %d time: %s build: %s\n");
      goto LABEL_45;
    case 57:
LABEL_32:
      v23 = *(a1 + 48);
      if (a2[13])
      {
        fprintf(v23, "%s[%u] id: %llu hash: %llx sz: %lu %s\n");
      }

      else
      {
        fprintf(v23, "%s[%u] id: %llu hash: %llx sz: %lu\n");
      }

      return;
    case 58:
LABEL_58:
      fprintf(*(a1 + 48), "%s[%u] %s/%s cnt:%u\n");
      return;
    default:
      v6 = "Unknown";
      break;
  }

  v7 = v6;
  switch(v5)
  {
    case 0:
    case 1:
    case 2:
    case 32:
    case 33:
    case 36:
    case 37:
    case 38:
      if ((v4 - 37) <= 2)
      {
        v40 = *(a2 + 9);
        v8 = v40;
        v9 = localtime(&v40);
        strftime(v41, 0x100uLL, "%F %T", v9);
        v10 = *(a1 + 48);
        v11 = a2[6];
        date_string = get_date_string(*(a1 + 56), v57, *(a2 + 4));
        v38 = v41;
        v39 = v8;
        v36 = *(a2 + 7);
        v37 = *(a2 + 8);
        v34 = a2[11];
        v35 = a2[12];
        v32 = date_string;
        v33 = a2[10];
        v13 = "%s pid: %d time: %s syncCount: %d scanCount: %d liveCount: %d serialNumber: %lld consumedSerialNumber: %lld recoverTimeStamp:%s (%ld)\n";
        v31 = v11;
LABEL_29:
        fprintf(v10, v13, v7, v31, v32, v33, v34, v35, v36, v37, v38, v39);
        goto LABEL_45;
      }

      v19 = v4 - 33;
      v20 = a2[6];
      v10 = *(a1 + 48);
      v21 = get_date_string(*(a1 + 56), v57, *(a2 + 4));
      if (v19 <= 1)
      {
        v36 = *(a2 + 7);
        v37 = *(a2 + 8);
        v34 = a2[11];
        v35 = a2[12];
        v32 = v21;
        v33 = a2[10];
        v13 = "%s pid: %d time: %s syncCount: %d scanCount: %d liveCount: %d serialNumber: %lld consumedSerialNumber: %lld\n";
        v31 = v20;
        goto LABEL_29;
      }

      fprintf(v10, "%s pid: %d time: %s syncCount: %d scanCount: %d liveCount: %d\n");
LABEL_45:
      v28 = *(a2 + 4);
LABEL_46:
      *(*(*(a1 + 32) + 8) + 32) = v28;
      write_timeline(*(*(a1 + 32) + 8) + 24);
      *(*(*(a1 + 40) + 8) + 24) = write_timeline_result;
      return;
    case 3:
    case 4:
    case 6:
    case 7:
    case 34:
    case 35:
      goto LABEL_15;
    case 5:
    case 39:
      goto LABEL_26;
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 59:
    case 60:
      goto LABEL_13;
    case 16:
    case 17:
    case 18:
    case 53:
      goto LABEL_16;
    case 19:
      goto LABEL_35;
    case 20:
    case 21:
      goto LABEL_25;
    case 22:
      goto LABEL_43;
    case 23:
    case 24:
    case 51:
    case 52:
      goto LABEL_21;
    case 25:
      goto LABEL_36;
    case 26:
      goto LABEL_34;
    case 27:
    case 28:
    case 29:
    case 30:
      v22 = *(a1 + 48);
      if (a2[3])
      {
        fprintf(v22, "%s transaction: %d id: %s oid: 0x%llx serial: %lld\n");
      }

      else
      {
        fprintf(v22, "%s id: %s oid: 0x%llx serial: %lld\n");
      }

      goto LABEL_52;
    case 44:
    case 45:
      v30 = *(a1 + 48);
      if (a2[3])
      {
        fprintf(v30, "%s transaction: %d id: %s oid: 0x%llx serial: %lld read: %d\n");
      }

      else
      {
        fprintf(v30, "%s id: %s oid: 0x%llx serial: %lld read: %d\n");
      }

      goto LABEL_55;
    case 46:
    case 47:
      fprintf(*(a1 + 48), "%s transaction: %d id: %s oid: 0x%llx serial: %lld read: %d flagged: %d\n", v6);
      goto LABEL_55;
    case 48:
      fprintf(*(a1 + 48), "%s transaction: %d id: %s oid: 0x%llx serial: %lld read: %d flagged: %d color: <null>\n", v6);
      goto LABEL_55;
    case 49:
    case 50:
      fprintf(*(a1 + 48), "%s transaction: %d id: %s oid: 0x%llx serial: %lld read: %d flagged: %d color: %d\n", v6);
LABEL_55:
      ++*(*(*(a1 + 32) + 8) + 44);
      return;
    case 54:
      goto LABEL_40;
    case 55:
      goto LABEL_42;
    case 56:
      fprintf(*(a1 + 48), "%s\n");
      return;
    case 57:
      goto LABEL_32;
    case 58:
      goto LABEL_58;
    default:
      return;
  }
}

@end