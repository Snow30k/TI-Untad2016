object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Created By Snow30k'
  ClientHeight = 517
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Century Gothic'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Panel1: TPanel
    Left = 522
    Top = 0
    Width = 352
    Height = 517
    Align = alRight
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object PC1: TPageControl
      Left = 0
      Top = 0
      Width = 352
      Height = 517
      ActivePage = sS
      Align = alClient
      TabOrder = 0
      object sS: TTabSheet
        Caption = 'Main'
        object Label2: TLabel
          Left = 11
          Top = 13
          Width = 88
          Height = 20
          Caption = 'Max Iterasi :'
        end
        object Memo1: TMemo
          Left = 0
          Top = 104
          Width = 344
          Height = 378
          Align = alBottom
          ScrollBars = ssVertical
          TabOrder = 0
        end
        object btnProses: TBitBtn
          Left = 3
          Top = 44
          Width = 75
          Height = 25
          Caption = 'Proses'
          TabOrder = 1
          OnClick = btnProsesClick
        end
        object btnBersihkan: TBitBtn
          Left = 84
          Top = 44
          Width = 85
          Height = 25
          Caption = 'Bersihkan'
          TabOrder = 2
          OnClick = btnBersihkanClick
        end
        object btnGenerate: TBitBtn
          Left = 175
          Top = 44
          Width = 135
          Height = 25
          Caption = 'Generate Edge'
          TabOrder = 3
          OnClick = btnGenerateClick
        end
        object Edit1: TEdit
          Left = 105
          Top = 10
          Width = 144
          Height = 28
          TabOrder = 4
          Text = '1'
        end
        object BitBtn1: TBitBtn
          Left = 3
          Top = 73
          Width = 75
          Height = 25
          Caption = 'Help'
          TabOrder = 5
          OnClick = BitBtn1Click
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Matrix'
        ImageIndex = 1
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object Matrix: TStringGrid
          Left = 0
          Top = 0
          Width = 344
          Height = 482
          Align = alClient
          ColCount = 2
          DefaultColWidth = 40
          DefaultRowHeight = 25
          DrawingStyle = gdsGradient
          RowCount = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Century Gothic'
          Font.Style = []
          GradientStartColor = clWindow
          ParentFont = False
          TabOrder = 0
          ColWidths = (
            40
            40)
          RowHeights = (
            25
            25)
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 522
    Height = 517
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Canvas: TImage
      Left = 0
      Top = 0
      Width = 522
      Height = 517
      Align = alClient
      OnClick = CanvasClick
      OnDblClick = CanvasDblClick
      OnMouseMove = CanvasMouseMove
      ExplicitLeft = 496
      ExplicitTop = 248
      ExplicitWidth = 105
      ExplicitHeight = 105
    end
    object Label3: TLabel
      Left = 11
      Top = 13
      Width = 130
      Height = 20
      Caption = 'Buat Grapgh Disin'
    end
  end
end
