using {logaliGroup as services} from '../service';

annotate services.Items with {
    idItems          @title: 'Id Item';
    idHeader         @title: 'Id Header';
    name             @title: 'Name';
    description      @title: 'description';
    releaseDate      @title: 'Release Date';
    discontinuedDate @title: 'Discontinued Date';
    price            @title: 'Price';
    height           @title: 'Heigth';
    width            @title: 'width';
    depth            @title: 'width';
    quantity         @title: 'width';
    unitofmeasure    @title: 'width';
};

annotate services.Items with @(
        UI.FieldGroup #Items : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : idItems
            },
                        {
                $Type : 'UI.DataField',
                Value : idHeader_idHeader
            }
        ],
    },    
UI.LineItem               : [
        {
            $Type: 'UI.DataField',
            Value: idItems
        },
        {
            $Type: 'UI.DataField',
            Value: name
        },
        {
            $Type: 'UI.DataField',
            Value: idHeader_idHeader
        },
        {
            $Type: 'UI.DataField',
            Value: description
        },
        {
            $Type: 'UI.DataField',
            Value: releaseDate
        },
        {
            $Type: 'UI.DataField',
            Value: discontinuedDate
        },
        {
            $Type: 'UI.DataField',
            Value: height
        },
        {
            $Type: 'UI.DataField',
            Value: width
        }
    ],
);