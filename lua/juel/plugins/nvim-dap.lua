local setup, dap = pcall(require, "dap")

if not setup then
	return
end

dap.adapters.java = {
	type = "server",
	host = "127.0.0.1",
	port = 5005,
}

--dap.adapters.java = {
--	type = "executable",
--	command = "java",
--	args = {
--		"-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,quiet=y,address=*:5005",
--		"-jar",
--		"/Users/juel/.m2/repository/com/microsoft/java/com.microsoft.java.debug.core/0.52.0/com.microsoft.java.debug.core-0.52.0.jar",
--	},
--}

dap.configurations.java = {
	{
		type = "java",
		request = "launch",
		name = "Debug (Attach) - Remote",
		hostName = "127.0.0.1",
		port = 5005,
	},
}

require("dapui").setup()
