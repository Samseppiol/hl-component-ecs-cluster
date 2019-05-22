CfhighlanderTemplate do

    DependsOn 'vpc'
    Parameters do
      ComponentParam 'EnvironmentName', 'dev', isGlobal: true
      ComponentParam 'EnvironmentType', 'development', isGlobal: true
    end

end