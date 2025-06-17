using {logaliGroup as services} from '../service';

annotate services.Status with {
    code  @title: 'Status'  @Common: {
        Text           : name,
        TextArrangement: #TextOnly,
    };
};
