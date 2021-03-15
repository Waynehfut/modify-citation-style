Sub deng2etal()
'
' deng2etal macro
' English等 -> english, et al
'
    With Selection.Find
        .Forward = True
        .ClearFormatting
        .Text = "(<[A-z]@, )等"
        With .Replacement
            .ClearFormatting
            .Text = "\1et al"
        End With
        .Wrap = wdFindStop
        .Execute Replace:=wdReplaceAll, MatchWildcards:=True
    End With
End Sub