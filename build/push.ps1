. .\version.ps1

If ($Version.EndsWith('-dev')) {
	$host.ui.WriteErrorLine("Cannot push development version '$Version' to NuGet.")
	Exit 1
}

..\System.Net.Http\.nuget\NuGet.exe 'push' ".\nuget\Rackspace.HttpClient35.$Version.nupkg"
