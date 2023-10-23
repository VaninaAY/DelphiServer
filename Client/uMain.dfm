object frmMain: TfrmMain
  Left = 0
  Top = 0
  Caption = 'Client'
  ClientHeight = 175
  ClientWidth = 380
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label2: TLabel
    Left = 68
    Top = 5
    Width = 221
    Height = 21
    Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1080' '#1086#1090#1082#1083#1102#1095#1077#1085#1080#1077' '#1086#1090' '#1089#1077#1088#1074#1077#1088#1072
  end
  object Label3: TLabel
    Left = 8
    Top = 83
    Width = 113
    Height = 15
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1087#1086#1090#1086#1082#1086#1074
  end
  object edtCountFlows: TSpinEdit
    Left = 136
    Top = 80
    Width = 129
    Height = 24
    MaxValue = 0
    MinValue = 0
    TabOrder = 0
    Value = 1
  end
  object btnStart: TButton
    Left = 8
    Top = 32
    Width = 161
    Height = 25
    Caption = 'Connect to Server'
    TabOrder = 1
    OnClick = btnStartClick
  end
  object btnStop: TButton
    Left = 183
    Top = 32
    Width = 153
    Height = 25
    Caption = 'Disconnect from server'
    TabOrder = 2
    OnClick = btnStopClick
  end
  object btnSend: TButton
    Left = 8
    Top = 129
    Width = 129
    Height = 25
    Caption = 'Send'
    TabOrder = 3
    OnClick = btnSendClick
  end
  object btnStopSend: TButton
    Left = 152
    Top = 129
    Width = 113
    Height = 25
    Caption = 'Stop Send'
    TabOrder = 4
    OnClick = btnStopSendClick
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 0
    Left = 304
    Top = 112
  end
end
