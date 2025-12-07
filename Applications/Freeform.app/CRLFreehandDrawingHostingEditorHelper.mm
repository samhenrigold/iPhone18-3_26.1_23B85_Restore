@interface CRLFreehandDrawingHostingEditorHelper
+ (id)makeCopyOfSelectedDrawingItemsFromHostingEditor:(id)editor;
@end

@implementation CRLFreehandDrawingHostingEditorHelper

+ (id)makeCopyOfSelectedDrawingItemsFromHostingEditor:(id)editor
{
  editorCopy = editor;
  v61 = +[NSMutableArray array];
  interactiveCanvasController = [editorCopy interactiveCanvasController];
  canvasEditor = [interactiveCanvasController canvasEditor];
  v3 = interactiveCanvasController;
  if (!interactiveCanvasController)
  {
    v4 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101367EA0();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101367EB4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101367F64();
    }

    v5 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101367F8C(v5, v4);
    }

    v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:]");
    v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingHostingEditorHelper.m"];
    [CRLAssertionHandler handleFailureInFunction:v6 file:v7 lineNumber:19 isFatal:0 description:"invalid nil value for '%{public}s'", "icc"];

    v3 = 0;
  }

  editorController = [v3 editorController];
  selectionPath = [editorController selectionPath];

  selectionModelTranslator = [interactiveCanvasController selectionModelTranslator];
  v56 = [selectionModelTranslator boardItemsForSelectionPath:selectionPath];

  v58 = [editorCopy drawingRepresetativeItemsFromBoardItems:v56];
  v10 = [interactiveCanvasController topLevelZOrderedSiblingsOfInfos:v58];
  v11 = [v10 crl_arrayWithObjectsInSet:v58];

  v68 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v11 count]);
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v80 objects:v96 count:16];
  if (v12)
  {
    v13 = *v81;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v81 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v80 + 1) + 8 * i);
        v16 = objc_opt_class();
        v17 = sub_100014370(v16, v15);
        if (v17)
        {
          [v68 addObject:v17];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v80 objects:v96 count:16];
    }

    while (v12);
  }

  if ([v68 count])
  {
    editingCoordinator = [interactiveCanvasController editingCoordinator];
    boardItemFactory = [editingCoordinator boardItemFactory];

    drawingItemsFromCurrentSelectionPath = [editorCopy drawingItemsFromCurrentSelectionPath];
    v19 = [interactiveCanvasController topLevelZOrderedSiblingsOfInfos:drawingItemsFromCurrentSelectionPath];
    v20 = [v19 crl_arrayWithObjectsInSet:drawingItemsFromCurrentSelectionPath];

    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v60 = v20;
    v64 = [v60 countByEnumeratingWithState:&v76 objects:v95 count:16];
    if (v64)
    {
      v21 = 0;
      v62 = *v77;
      do
      {
        v66 = 0;
        do
        {
          if (*v77 != v62)
          {
            objc_enumerationMutation(v60);
          }

          v22 = *(*(&v76 + 1) + 8 * v66);
          *v84 = 0;
          *v85 = v84;
          *&v85[8] = 0x3032000000;
          *&v85[16] = sub_1003DB9AC;
          *&v85[24] = sub_1003DB9BC;
          *&v85[32] = 0;
          v23 = [canvasEditor selectionPathWithInfo:v22];
          v75[0] = _NSConcreteStackBlock;
          v75[1] = 3221225472;
          v75[2] = sub_1003DB9C4;
          v75[3] = &unk_101857988;
          v75[4] = v22;
          v75[5] = v84;
          [interactiveCanvasController forLayoutNearestVisibleRectForInfosForSelectionPath:v23 performBlock:v75];

          v69 = [boardItemFactory makeFreehandDrawingItemWithGeometry:*(*v85 + 40)];
          v24 = +[NSMutableArray array];
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v25 = v68;
          v26 = [v25 countByEnumeratingWithState:&v71 objects:v94 count:16];
          if (v26)
          {
            v27 = *v72;
            do
            {
              for (j = 0; j != v26; j = j + 1)
              {
                if (*v72 != v27)
                {
                  objc_enumerationMutation(v25);
                }

                v29 = *(*(&v71 + 1) + 8 * j);
                parentInfo = [v29 parentInfo];
                v31 = parentInfo == v22;

                if (v31)
                {
                  v32 = objc_opt_class();
                  v33 = [boardItemFactory makeDuplicateOfBoardItem:v29];
                  v34 = sub_100013F00(v32, v33);

                  [v24 addObject:v34];
                  ++v21;
                }
              }

              v26 = [v25 countByEnumeratingWithState:&v71 objects:v94 count:16];
            }

            while (v26);
          }

          board = [interactiveCanvasController board];
          [v69 beforeInsertionAddNewItems:v24 board:board error:0];

          childItems = [v69 childItems];
          v37 = [childItems count] == 0;

          if (v37)
          {
            v38 = +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (qword_101AD5A10 != -1)
            {
              sub_10136803C();
            }

            v39 = off_1019EDA68;
            if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109890;
              v87 = v38;
              v88 = 2082;
              v89 = "+[CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:]";
              v90 = 2082;
              v91 = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingHostingEditorHelper.m";
              v92 = 1024;
              v93 = 75;
              _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Every freehand info should have at least one child!", buf, 0x22u);
            }

            if (qword_101AD5A10 != -1)
            {
              sub_101368064();
            }

            v40 = off_1019EDA68;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              v45 = +[CRLAssertionHandler packedBacktraceString];
              *buf = 67109378;
              v87 = v38;
              v88 = 2114;
              v89 = v45;
              _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: Assertion backtrace: >>%{public}@<<", buf, 0x12u);
            }

            v41 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:]");
            v42 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingHostingEditorHelper.m"];
            [CRLAssertionHandler handleFailureInFunction:v41 file:v42 lineNumber:75 isFatal:0 description:"Every freehand info should have at least one child!"];
          }

          childItems2 = [v69 childItems];
          v44 = [childItems2 count] == 0;

          if (!v44)
          {
            [v61 addObject:v69];
          }

          _Block_object_dispose(v84, 8);
          v66 = v66 + 1;
        }

        while (v66 != v64);
        v64 = [v60 countByEnumeratingWithState:&v76 objects:v95 count:16];
      }

      while (v64);
    }

    else
    {
      v21 = 0;
    }

    if (v21 != [v68 count])
    {
      v46 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10136808C();
      }

      v47 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        v53 = v47;
        v54 = [v68 count];
        *v84 = 67110402;
        *&v84[4] = v46;
        *v85 = 2082;
        *&v85[2] = "+[CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:]";
        *&v85[10] = 2082;
        *&v85[12] = "/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingHostingEditorHelper.m";
        *&v85[20] = 1024;
        *&v85[22] = 81;
        *&v85[26] = 2048;
        *&v85[28] = v54;
        *&v85[36] = 2048;
        *&v85[38] = v21;
        _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "#Assert *** Assertion failure #%u: %{public}s %{public}s:%d Expected to handle %zi shapes but instead did %zi", v84, 0x36u);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013680B4();
      }

      v48 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_1013680DC(v48, v46);
      }

      v49 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[CRLFreehandDrawingHostingEditorHelper makeCopyOfSelectedDrawingItemsFromHostingEditor:]");
      v50 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/BoardItems/CRLFreehandDrawingHostingEditorHelper.m"];
      +[CRLAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](CRLAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v49, v50, 81, 0, "Expected to handle %zi shapes but instead did %zi", [v68 count], v21);
    }
  }

  v51 = [v61 copy];

  return v51;
}

@end