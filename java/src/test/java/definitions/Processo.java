package definitions;

public class Processo {
    private static String processoId;

    public static void setProcessoId (String id)
    {
        processoId = id;
    }

    public static String getProcessoId ()
    {
        return processoId;
    }

}
