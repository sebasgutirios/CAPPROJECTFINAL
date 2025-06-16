using {logaliGroup as services} from '../service';

annotate services.Header with {
    idHeader     @title: 'Id Header';
    email        @title: 'Email';
    firstName    @title: 'First Name';
    lastName     @title: 'Last Name';
    country      @title: 'Country';
    createon     @title: 'Createon';
    deliveryDate @title: 'Delivery Date';
    orderStatus  @title: 'Status';
    imageUrl     @title: 'Image Url';
};

annotate services.Header with {
    orderStatus @Common : { 
        Text : orderStatus.name,
        TextArrangement : #TextOnly,
     }
};

annotate services.Header with @(
    Common.SemanticKey : [
        idHeader
    ],
    UI.HeaderInfo     : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : 'Sales Order',
        TypeNamePlural: 'Sales Orders',
    },

    UI.SelectionFields: [
        idHeader,
        orderStatus_code
    ],
    UI.LineItem       : [
        {
            $Type: 'UI.DataField',
            Value: idHeader
        },
        {
            $Type: 'UI.DataField',
            Value: email
        },
        {
            $Type: 'UI.DataField',
            Value: firstName
        },
        {
            $Type: 'UI.DataField',
            Value: lastName
        },
        {
            $Type: 'UI.DataField',
            Value: country
        },
        {
            $Type: 'UI.DataField',
            Value: createon
        },
        {
            $Type: 'UI.DataField',
            Value: deliveryDate
        },
        {
            $Type: 'UI.DataField',
            Value: orderStatus_code,
            Criticality:orderStatus.criticality
        },
        {
            $Type: 'UI.DataField',
            Value: imageUrl
        }
    ],
);
