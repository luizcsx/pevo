const std = @import("std");

pub fn main() !void {
    var gpa_state = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa_state.allocator();
    defer _ = gpa_state.deinit();

    const args = try std.process.argsAlloc(allocator);
    defer std.process.argsFree(allocator, args);

    const stdout = std.io.getStdOut().writer();

    if (args.len < 2) {
        try stdout.print(
            \\Criado por: Luiz Miguel
            \\Codificador: Luiz Miguel
            \\Créditos: Equipe SATURNO
            \\
            \\—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—
            \\██████╗░░░░███████╗░░░██╗░░░██╗░░░░█████╗░░░░
            \\██╔══██╗░░░██╔════╝░░░██║░░░██║░░░██╔══██╗░░░
            \\██████╔╝░░░█████╗░░░░░╚██╗░██╔╝░░░██║░░██║░░░
            \\██╔═══╝░░░░██╔══╝░░░░░░╚████╔╝░░░░██║░░██║░░░
            \\██║░░░░░██╗███████╗██╗░░╚██╔╝░░██╗╚█████╔╝██╗
            \\╚═╝░░░░░╚═╝╚══════╝╚═╝░░░╚═╝░░░╚═╝░╚════╝░╚═╝
            \\—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—
            \\
            \\Instalação concluída com sucesso!
            \\Para começar a usar o PEVO, use os comandos abaixo:
            \\
        , .{});
        try exibirHelp(stdout);
        return;
    }

    const comando = args[1];

    if (std.mem.eql(u8, comando, "help")) {
        try stdout.print("\nCOMANDOS DISPONÍVEIS\n", .{});
        try exibirHelp(stdout);
    } else {
        try stdout.print("\nATENÇÃO: Comando '{s}' em desenvolvimento. Digite 'pevo help'.\n", .{comando});
    }
}

fn exibirHelp(writer: anytype) !void {
    try writer.print(
        \\-•-•- MATÉRIAS -•-•-
        \\  pevo --port = Língua Portuguesa
        \\  pevo --math = Matématica
        \\  pevo --sci = Ciências
        \\  pevo --hist = História
        \\  pevo --geo = Geografia
        \\
        \\-•-•- AJUDA -•-•-
        \\  pevo help = Ajuda e comandos.
        \\  pevo fund = Ensino Fundamental.
        \\  pevo medio = Ensino Médio.
        \\
        \\Feito pela equipe do Projeto Educaboraí.
        \\—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—•—
        \\
    , .{});
}
